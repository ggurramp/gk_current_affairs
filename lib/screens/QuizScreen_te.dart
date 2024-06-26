//guru// Dart imports
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gk_current_affairs/screens/HomePage.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
// External package imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:share_plus/share_plus.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart'; // Import the google_mobile_ads package
// Your app's imports
import 'package:gk_current_affairs/screens/CurrentAffairs.dart';
import 'package:gk_current_affairs/screens/GenaralKnowledgeMenu.dart';
import 'package:gk_current_affairs/screens/LoginPage.dart';
import 'package:gk_current_affairs/screens/SettingsPage.dart';
import 'package:gk_current_affairs/screens/StateExamsPage.dart';


import '../admob/MyInterstitialAdWidget.dart';
import '../admob/MyNativeAdWidget.dart';
import '../path_to_my_banner_ad_widget.dart';
import 'favorite_questions_screen_te.dart';
import 'gmail_login_page.dart';
import 'ExplanationPage.dart';

class QuizScreen_te extends StatefulWidget {
  final String questionIndex;
  final Key? key;  // Add this line to include the key parameter
  QuizScreen_te({required this.questionIndex, this.questionId,  this.key, this.userIdentifier});

  // Add the 'questionId' property
  final String? questionId;
  final String? userIdentifier; // Add this line
 // QuizScreen_te({Key? key, this.userIdentifier,}) : super(key: key);
  @override
  State<QuizScreen_te> createState() => _QuizScreen_teState();
}
class _QuizScreen_teState extends State<QuizScreen_te> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  TextEditingController correctAnswerController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController explanationController = TextEditingController();
  String? selectedCategory;
  String _formattedTimestamp = DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now());

  String? _currentQuestionId;
  final VerticalDragGestureRecognizer _gestureRecognizer =
  VerticalDragGestureRecognizer();
  String? _userIdentifier;
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  BannerAd? _bannerAd;
  List<String> _formattedTimestamps = []; // Changed to a list
  List<int> _favoriteQuestions = [];


  String? questionId;



  bool _isQuestionFavorite(int questionIndex) {
    return _favoriteQuestions.contains(questionIndex);
  }
  List<String> _questions_te = [];

  List<List<String>> _answers = [
    [],
  ];
  String? selectedLanguage;
  List<String> languages = ['english', 'telugu', 'hindi'];

  List<int> _correctAnswers = [];

  List<String> _explanations = [];
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _currentQuestionId = widget.questionId;
    //fetchAndSetQuestions();
    _requestNotificationPermission();
    //_gestureRecognizer.onEnd = _onSwipe;
    _getUserIdentifier(); // Call this method to retrieve user's identifier
    _initSharedPreferences();
    // Initialize Firebase Messaging
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle when the app is in the foreground

    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // Handle when the user taps the notification and the app is in the background
      print('onMessageOpenedApp: $message');
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message.notification?.title ?? "New Message"),
            content: Text(message.notification?.body ?? ""),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    });
    // Initialize AdMob
    MobileAds.instance.initialize();

    // Load the banner ad
    _loadBannerAd();

  }
  @override
  void dispose() {
    // Dispose of the banner ad when the screen is disposed
    _bannerAd?.dispose();
    super.dispose();
  }
  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-8650911541008756/4254521923', // Replace with your actual banner ad unit ID
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {});
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );

    // Load the ad
    _bannerAd?.load();
  }


  Future<List<String>> fetchCategoriesFromFirestore() async {
    final firestore = FirebaseFirestore.instance;

    // Fetch all the documents from the 'questions_te' collection
    final querySnapshot = await firestore.collection('questions_te').get();

    // Extract the unique categories using a Set to avoid duplicates
    Set<String> uniqueCategories = {};

    for (var doc in querySnapshot.docs) {
      final data = doc.data() as Map<String, dynamic>;
      if (data.containsKey('category')) {
        String category = data['category'];

        // Capitalize the first letter and make the rest lowercase to ensure uniqueness and consistent formatting
        uniqueCategories.add(category[0].toUpperCase() + category.substring(1).toLowerCase());
      }
    }

    return uniqueCategories.toList();
  }

  Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    // Handle the message when the app is in the background or terminated
    print('onBackgroundMessage: $message');
  }
  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _loadFavoriteQuestions();
  }
  void _loadFavoriteQuestions() {
    final favorites = _prefs.getStringList('FavoriteQuestions_te');
    if (favorites != null) {
      setState(() {
        _favoriteQuestions = favorites.map(int.parse).toList();
      });
    }
  }

  Future<void> _requestNotificationPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false, // Set to true for provisional authorization on iOS 12+
    );

    print('User granted permission: ${settings.authorizationStatus == AuthorizationStatus.authorized}');
  }
  Future<void> _likeQuestion() async {
    final firestore = FirebaseFirestore.instance;

    // Assuming _questions_te[_currentQuestionIndex] gives a unique identifier for each question.
    final docRef = firestore.collection('questions_te').doc(_questions_te[_currentQuestionIndex]);

    await docRef.update({'likes': FieldValue.increment(1)});
  }

  Future<void> _dislikeQuestion() async {
    final firestore = FirebaseFirestore.instance;
    final docRef = firestore.collection('questions_te').doc(_questions_te[_currentQuestionIndex]);

    await docRef.update({'dislikes': FieldValue.increment(1)});
  }
  Future<void> _commentOnQuestion() async {
    final firestore = FirebaseFirestore.instance;
    final docRef = firestore.collection('questions_te').doc(_questions_te[_currentQuestionIndex]);

    // This will add a new comment to an array. You can structure it differently based on your needs.
    await docRef.update({'comments': FieldValue.arrayUnion(["Static comment for the example"])});
  }


  void _postQuestion() {
    // Get the values entered in the text fields
    String question = questionController.text.trim();
    String answers = answerController.text.trim();
    String correctAnswerIndexText = correctAnswerController.text.trim();
    String explanation = explanationController.text.trim();
    String category = selectedCategory ?? ''; // Get the selected category value

    // Check if any field is empty
    if (question.isEmpty ||
        answers.isEmpty ||
        correctAnswerIndexText.isEmpty ||
        explanation.isEmpty ||
        category.isEmpty) {
      // Display specific error message for empty fields
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('All fields are mandatory'),
        ),
      );
      return; // Exit function if any field is empty
    }

    // Convert correctAnswerIndex to int
    int correctAnswerIndex = int.tryParse(correctAnswerIndexText) ?? 0;

    // Split the answers string into a list of answers
    List<String> answerList = answers.split(',');

    // Write the data to Firestore
    FirebaseFirestore.instance.collection('questions_te').add({
      'question': question,
      'answers': answerList,
      'correctAnswerIndex': correctAnswerIndex,
      'explanation': explanation,
      'category': category,
      'timestamp': Timestamp.now(), // Set the timestamp to the current time
    }).then((value) {
      // If the data is successfully written to Firestore, clear the text fields
      questionController.clear();
      answerController.clear();
      correctAnswerController.clear();
      explanationController.clear();
      categoryController.clear(); // Clear the category field
      // Close the alert dialog
      Navigator.pop(context);
      // Show a snackbar to indicate successful posting
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Question posted successfully'),
      ));
    }).catchError((error) {
      // If an error occurs while writing to Firestore, display an error message
      print('Error posting question: $error');
      // Optionally, you can show a toast or snackbar to indicate the error
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('An error occurred while posting the question'),
      ));
    });
  }



  void _openInputDialog() {
    List<String> categories = ['పాలిటి', 'ఆర్థిక వ్యవస్థ', 'చరిత్ర', 'భూగోళశాస్త్రం', 'అంతర్జాతీయ సంబంధాలు', 'సైన్స్ & టెక్నాలజీ', 'అవార్డులు', 'పర్యావరణం', 'క్రీడలు', 'అపాయింట్‌మెంట్‌లు', 'ముఖ్యమైన తేదీలు',' రాష్ట్ర వార్తలు','పథకాలు', 'సమాజం', 'సంఘటనలు', 'సమావేశాలు', 'ఇతరులు'];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Post Question', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  TextField(
                    controller: questionController,
                    decoration: InputDecoration(labelText: 'Question'),
                  ),
                  TextField(
                    controller: answerController,
                    decoration: InputDecoration(labelText: 'Answers (Comma separated)'),
                  ),
                  TextField(
                    controller: correctAnswerController,
                    decoration: InputDecoration(
                      labelText: 'Correct Answer Index',
                      hintText: '0 = A, 1 = B, 2 = C, 3 = D, 4 = E',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [CorrectAnswerInputFormatter()],
                  ),



                  DropdownButtonFormField(
                    value: selectedCategory, // Provide a default value if needed
                    items: categories.map((String category) {
                      return DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCategory = newValue!;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Category'),
                  ),
                  TextField(
                    controller: explanationController,
                    decoration: InputDecoration(labelText: 'Explanation'),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: _postQuestion,
                        child: Text('Post'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }




  void _showCategoryModal(List<String> categories) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext bc) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: SingleChildScrollView(
            child: Column(
              children: categories.map((category) {return ListTile(
                    title: Text(category),
                    onTap: () async {
                      Navigator.pop(context);

                      // Convert category value to lowercase before querying.
                      final standardizedCategoryValue = category.toLowerCase();
                      final questions_teData = await fetchQuestionsFromFirestoreByCategory(standardizedCategoryValue);

                      // Fetch questions_te based on category.

                      //final questions_teData = await fetchQuestionsFromFirestore(category);

                      setState(() {
                        _questions_te = questions_teData.map((data) => data['question'] as String).toList();
                        _answers = questions_teData.map((data) => List<String>.from(data['answers'])).toList();
                        _correctAnswers = questions_teData.map((data) => data['correctAnswerIndex'] as int).toList();
                        _explanations = questions_teData.map((data) => data['explanation'] as String).toList();
                      });

                      // Navigate to a new screen where all questions_te, correct answers, and explanations are shown.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailScreen(
                            questions_te: _questions_te,
                            answers: _answers,
                            correctAnswers: _correctAnswers,
                            explanations: _explanations,
                          ),
                        ),
                      );
                    });


              }).toList(),
            ),
          ),
        );
      },
    );
  }

  Future<void> addFavoriteQuestion(String userId, List<int> FavoriteQuestions_te) async {
    final firestore = FirebaseFirestore.instance;
    final userFavoritesRef = firestore.collection('userFavorites').doc(userId);

    await userFavoritesRef.set({
      'FavoriteQuestions_te': FavoriteQuestions_te,
    });
  }


  void _onSwipe(DragEndDetails details) {
    final swipeThreshold = 200; // Experiment with this value
    if (details.velocity.pixelsPerSecond.dy < -swipeThreshold) {
      // Swipe up detected, move to the next question
      _nextQuestion();
    } else if (details.velocity.pixelsPerSecond.dy > swipeThreshold) {
      // Swipe down detected, move to the previous question
      _previousQuestion();
    }
  }
//gurumohan
  void _showFavoriteQuestions() {
    // Pass the favorite questions_te and explanations to the FavoriteQuestionsScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoriteQuestionsScreen_te(
          FavoriteQuestions_te: _favoriteQuestions.map((index) => _questions_te[index]).toList(),
          explanations: _favoriteQuestions.map((index) => _explanations[index]).toList(),
        ),
      ),
    );
  }
  Future<void> fetchUserFavorites(String userId) async {
    final firestore = FirebaseFirestore.instance;
    final userFavoritesRef = firestore.collection('userFavorites').doc(userId);

    final userData = await userFavoritesRef.get();
    if (userData.exists) {
      final data = userData.data() as Map<String, dynamic>;
      final FavoriteQuestions_te = data['FavoriteQuestions_te'] as List<dynamic>;
      setState(() {
        _favoriteQuestions = FavoriteQuestions_te.cast<int>().toList();
      });
    }
  }

  Future<void> fetchAndSetQuestions() async {
    final questions_teData = await fetchQuestionsFromFirestore();

    setState(() {
      _questions_te = questions_teData.map((data) => data['question'] as String).toList();
      _answers = questions_teData.map((data) => List<String>.from(data['answers'])).toList();
      _correctAnswers = questions_teData.map((data) => data['correctAnswerIndex'] as int).toList();
      _explanations = questions_teData.map((data) => data['explanation'] as String).toList();

      _formattedTimestamps = questions_teData.map((data) {
        final timestamp = data['timestamp'] as Timestamp?;
        if (timestamp != null) {
          return DateFormat('dd-MM-yyyy').format(timestamp.toDate());
        } else {
          return '';
        }
      }).toList();
    });
  }

  Future<List<Map<String, dynamic>>> fetchQuestionsFromFirestoreByCategory([String? category]) async {
    final firestore = FirebaseFirestore.instance;

    try {
      Query query = firestore.collection('questions_te').orderBy('timestamp', descending: true);
      if (category != null) {
        query = query.where('category', isEqualTo: category);  // Use the category field for querying
      }

      final querySnapshot = await query.get();
      return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error fetching questions_te: $e');
      return []; // Return empty list in case of an error
    }
  }

  Future<List<Map<String, dynamic>>> fetchQuestionsFromFirestore([String? category]) async {
    final firestore = FirebaseFirestore.instance;

    try {
      Query query = firestore.collection('questions_te').orderBy('timestamp', descending: true);
      if (category != null) {
        query = query.where('category', isEqualTo: category);
      }

      final querySnapshot = await query.get();
      return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error fetching questions_te: $e');
      return []; // Return empty list in case of an error
    }
  }
  Future<List<String>> fetchUniqueTimestamps() async {
    final firestore = FirebaseFirestore.instance;
    final querySnapshot = await firestore
        .collection('questions_te')
        .orderBy('timestamp', descending: true) // Order by timestamp in descending order (latest first)
        .get(GetOptions(source: Source.serverAndCache));

    final timestamps = querySnapshot.docs.map((doc) {
      final timestamp = doc['timestamp'] as Timestamp?;
      if (timestamp != null) {
        return DateFormat('dd-MM-yyyy').format(timestamp.toDate()); // Change the date format here
      } else {
        return ''; // Provide a default value or handle null timestamps as needed
      }
    }).toSet().toList(); // Use a Set to ensure uniqueness

    return timestamps;
  }

  void _getUserIdentifier() {
    // Retrieve the user's identifier (e.g., email) from Firebase authentication
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        if (user.providerData.any((userInfo) =>
        userInfo.providerId == 'google.com')) {
          _userIdentifier = user.email ?? user.phoneNumber;
        } else if (user.email != null) {
          _userIdentifier = user.email;
        } else if (user.phoneNumber != null) {
          _userIdentifier =
              user.phoneNumber; // Change this to fit your identifier format
        }
      });
    }
  }
  void _selectAnswer(int? index) {
    setState(() {
      if (_selectedAnswerIndex == index) {
        // Unselect the option
        _selectedAnswerIndex = null;
      } else {
        _selectedAnswerIndex = index;
      }
    });
  }
  void _signOut() async {
    await FirebaseAuth.instance.signOut();
    setState(() {
      _userIdentifier = null;
    });
  }
  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions_te.length - 1) {
        _currentQuestionIndex++;
        _selectedAnswerIndex = null;

      }
    });

  }
  void _previousQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        _selectedAnswerIndex = null;
      }
    });

  }

  void _shareApp() async {
    final String appLink =
        'https://play.google.com/store/apps/details?id=com.gurug.gk_current_affairs&pcampaignid=web_share';
    final String questionText = _questions_te[_currentQuestionIndex]; // Get the current question text

    final String message = 'Check out this amazing app!\n'
        'Question: $questionText\n'
        'App Link: $appLink\n';

    try {
      await Share.share(message);
    } catch (e) {
      print('Error sharing app: $e');
    }
  }

  void _refreshQuestions() async {
    await fetchAndSetQuestions();
    setState(() {
      _currentQuestionIndex = 0;
      _selectedAnswerIndex = null;
    });

  }

  void _toggleFavorite(int questionIndex) {
    setState(() {
      if (_isQuestionFavorite(questionIndex)) {
        _favoriteQuestions.remove(questionIndex);
      } else {
        _favoriteQuestions.add(questionIndex);
      }
    });
    _prefs.setStringList('FavoriteQuestions_te', _favoriteQuestions.map((index) => index.toString()).toList());

    // Update Firestore with the new favorite list
    if (_userIdentifier != null) {
      addFavoriteQuestion(_userIdentifier!, _favoriteQuestions);
    }
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    fetchAndSetQuestions(); // Refresh data when the page is visible again
  }

  void _updateExplanation(int questionIndex, String newExplanation) async {
    final firestore = FirebaseFirestore.instance;
    final questionDoc = firestore.collection('questions_te').doc(questionIndex.toString());

    await questionDoc.update({'explanation': newExplanation});
  }

  Color _getAnswerTileColor(int answerIndex) {
    if (_selectedAnswerIndex != null && answerIndex == _selectedAnswerIndex) {
      if (answerIndex == _correctAnswers[_currentQuestionIndex]) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else if (_selectedAnswerIndex != null &&
        answerIndex == _correctAnswers[_currentQuestionIndex]) {
      return Colors.green;
    }
    return Colors.transparent;
  }

  void _showExplanation() {
    if (_selectedAnswerIndex != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExplanationPage(
            explanation: _explanations[_currentQuestionIndex],
          ),
        ),
      );
    }
  }


  Widget _buildExplanation() {
    if (_selectedAnswerIndex != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                GestureDetector(
                  onTap: () {
                    _showExplanation(); // Show explanation on a new page
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.black,
                        width: 4.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)), // Use BorderRadius.all for a rounded rectangle
                      color: Colors.pink[100],
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Explanation',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {

    // Check to ensure _currentQuestionIndex is within range
    if (_currentQuestionIndex >= _questions_te.length ||
        _currentQuestionIndex >= _answers.length ||
        _currentQuestionIndex >= _correctAnswers.length ||
        _currentQuestionIndex >= _explanations.length ||
        _currentQuestionIndex >= _formattedTimestamps.length) {

      // Reset _currentQuestionIndex to a safe value, like 0
      _currentQuestionIndex = 0;
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          automaticallyImplyLeading: false, // Add this line to remove the back icon
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );

                  },
                ),
                Text(
                  'Daily Current Affairs Quizzes', // Text to be placed after the menu icon
                  style: TextStyle(
                    fontSize: 18, // Customize the font size as needed
                    color: Colors.white, // Customize the text color as needed
                  ),
                ),

              ]),
          actions: [


            IconButton(
              icon: Icon(Icons.favorite, color: Colors.red),
              onPressed: () {
                _showFavoriteQuestions();
              },
            ),


          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Drawer header
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                  ),
                ),

              ),

              // Sign out button
            ],
          ),
        ),


        body:GestureDetector(
          dragStartBehavior: DragStartBehavior.start,
          onHorizontalDragEnd: (details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              // Swipe right detected, move to the next question
              _previousQuestion();
            } else if (details.velocity.pixelsPerSecond.dx < 0) {
              // Swipe left detected, move to the previous question

              _nextQuestion();
            }
          },
          //gurumohan 10/01/2023
          child: Stack(
            children: [
           //   MyNativeAdWidget(adUnitId: 'ca-app-pub-8650911541008756/3458304135'),
              MyInterstitialAdWidget(
                adUnitId: 'ca-app-pub-8650911541008756/7410489682',
                // Provide your interstitial ad unit ID here
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), // Add padding to all four sides
                child: Container(
                  color: Colors.white, // Set your desired background color
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Flexible(
                            child: Text(
                              _questions_te[_currentQuestionIndex],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink, // Change the color to your desired color
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // When the user clicks on the timestamp, fetch and display previous dates
                              _showPreviousDates();
                            },
                            child: Row(
                              children: [

                                Text(
                                  '[ ${_formattedTimestamps[_currentQuestionIndex]} ] ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.deepPurple,
                                  size: 50,
                                ),
                                ElevatedButton(
                                    onPressed: () async {
                                      List<String> categories = await fetchCategoriesFromFirestore();
                                      _showCategoryModal(categories);
                                    },
                                    child: Text("Categories")
                                ),


                              ],
                            ),
                          ),


                          IconButton(
                            padding: EdgeInsets.zero, // Set padding to zero to reduce the padding area
                            icon: _isQuestionFavorite(_currentQuestionIndex)
                                ? Icon(Icons.star, color: Colors.redAccent)
                                : Icon(Icons.star_border, color: Colors.green),
                            onPressed: () {
                              _toggleFavorite(_currentQuestionIndex);
                            },
                          ),

                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            _answers[_currentQuestionIndex].length,
                                (index) {
                              final optionLabel = String.fromCharCode(65 + index);

                              // Determine whether the current option is the correct answer.
                              final isCorrectAnswer = index == _correctAnswers[_currentQuestionIndex];

                              // Determine the color for the current answer tile.
                              final color = _selectedAnswerIndex != null
                                  ? isCorrectAnswer
                                  ? Colors.green // Correct answer, selected by user.
                                  : _selectedAnswerIndex == index
                                  ? Colors.red // Wrong answer, selected by user.
                                  : Colors.black // Other options.
                                  : Colors.green; // Default color when nothing is selected.

                              return ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                title: Text('($optionLabel) ${_answers[_currentQuestionIndex][index]}'),
                                leading: Container(
                                  width: 1,
                                  child: Icon(
                                    _selectedAnswerIndex != null
                                        ? isCorrectAnswer
                                        ? Icons.check_circle
                                        : Icons.close_outlined
                                        : Icons.radio_button_unchecked,
                                    color: color, // Set the determined color here.
                                  ),
                                ),
                                onTap: () {
                                  _selectAnswer(index);
                                },
                              );
                            },
                          ),

                        ),

                      ),
//Guru10

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyBannerAdWidget(), // Add the banner ad here
                            _buildExplanation(),
                            // Display the banner ad widget
                            // if (_bannerAd != null && _bannerAd!.size != null)
                            //   Container(
                            //     width: _bannerAd!.size.width.toDouble(),
                            //     height: _bannerAd!.size.height.toDouble(),
                            //     child: AdWidget(ad: _bannerAd!),
                            //   ),


                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _openInputDialog,
          tooltip: 'Add Question',
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        bottomNavigationBar: Container(
          color: Colors.white, // Set your desired background color here
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white70, // Set the same color as the container
            ),


            // Set your desired background color here
            child:BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.menu, color: Colors.red , size: 40),
                //   label: '',
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_back, color: Colors.blue, size: 40),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.share, color: Colors.blue , size: 20,),
                  label: 'share',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.refresh, color: Colors.blue , size: 35),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_forward_rounded, color: Colors.blue , size: 40),
                  label: '',
                ),

              ],
              onTap: (index) {
                if (index == 0) {
                  _previousQuestion();
                } else if (index == 1) {
                  _shareApp();
                } else if (index == 2) {
                  _refreshQuestions(); // Handle refresh button tap
                } else if (index == 3) {
                  _nextQuestion() ;
                }

              },
            ),
          ),
        )

    );
  }

  void _showPreviousDates() async {
    final List<String> timestamps = await fetchUniqueTimestamps();

    final selectedTimestamp = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Previous Dates'),
          content: SingleChildScrollView(
            child: Column(
              children: timestamps
                  .map((timestamp) => ListTile(
                title: Text(timestamp),
                onTap: () {
                  Navigator.pop(context, timestamp); // Return the selected timestamp
                },
              ))
                  .toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, null); // Close the dialog without selecting
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );

    if (selectedTimestamp != null) {
      final int selectedTimestampIndex = _formattedTimestamps.indexOf(selectedTimestamp);
      if (selectedTimestampIndex != -1) {
        setState(() {
          _currentQuestionIndex = selectedTimestampIndex; // Update the current question index
        });
      } else {
        print('Timestamp not found in _formattedTimestamp.');
      }
    } else {
      print('No timestamp selected.');
    }
  }


  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        final menuItems = <Widget>[
          if (_userIdentifier == null) // Show "Login" only when the user is not logged in
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Create An Account or Login '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(onLoginSuccess: () {  },)));
              },
            ),
          if (_userIdentifier != null) // Show user's identifier when logged in
            ListTile(
              leading: Icon(Icons.person),
              title: Text('User: $_userIdentifier'), // Display the user's identifier here
              onTap: () {
                // Handle tapping on the user's identifier, if needed
                Navigator.pop(context); // Close the bottom sheet
              },
            ),
          if (_userIdentifier != null)
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                _logout();
                Navigator.pop(context); // Close the bottom sheet
                // _showMenu(context); // Refresh the menu options
              },
            ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              _openSettingsPage(); // Open the settings page
            },
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Give Rating On Playstore'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              _rateUs(); // Open the settings page
            },
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              _openAboutPage(); // Open the about page
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.quiz),
          //   title: Text('Test'), // Add a new ListTile for the "Test" option
          //   onTap: () {
          //     Navigator.pop(context); // Close the bottom sheet
          //     // Handle the "Test" option, e.g., navigate to the test screen
          //     // Replace 'TestScreen' with the actual screen you want to navigate to
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => ExamScreen()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.info),
          //   title: Text('Old Question Papers'),
          //   onTap: () {
          //     Navigator.pop(context); // Close the bottom sheet
          //
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => ScrollableTabsScreen()));
          //   },
          // ),


        ];
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: menuItems,
          ),
        );
      },
    );
  }
  void _logout() async {
    await FirebaseAuth.instance.signOut();
    setState(() {
      _userIdentifier = null;
      // Reset any other necessary state variables here
    });
  }

  void _rateUs() async {
    final playStoreLink = 'https://play.google.com/store/apps/details?id=com.gurug.gk_current_affairs&pcampaignid=web_share';

    if (await canLaunch(playStoreLink)) {
      await launch(playStoreLink);
    } else {
      // Handle the case where the URL can't be launched, e.g., display an error message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Could not open Play Store link.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    }
  }

  void _openAboutPage() {
    //Navigator.pop(context); // Close the bottom sheet
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About Us'),
          content: Text(
              'Discover a comprehensive platform dedicated to enhancing your knowledge and preparing you for success. Our app offers a diverse range of content, including current affairs, general knowledge, online exams, competitive exams, and state-specific exams conducted across India. Whether you\'re seeking to stay informed or excel in your studies, our app provides the resources you need to excel and stay ahead in your academic and competitive journey. please give your valuable feedback reddyguru122@gmail.com'
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _openSettingsPage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Settings'),
          content: Text(
              'Will Update Soon'
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }



}





class CategoryDetailScreen extends StatelessWidget {
  final List<String> questions_te;
  final List<List<String>> answers;
  final List<int> correctAnswers;
  final List<String> explanations;

  CategoryDetailScreen({
    required this.questions_te,
    required this.answers,
    required this.correctAnswers,
    required this.explanations,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Details'),
      ),
      body: ListView.builder(
        itemCount: questions_te.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Q: ${questions_te[index]}',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Answer: ${answers[index][correctAnswers[index]]}',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                ExplanationDropdown(explanation: explanations[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExplanationDropdown extends StatefulWidget {
  final String explanation;

  ExplanationDropdown({required this.explanation});

  @override
  _ExplanationDropdownState createState() => _ExplanationDropdownState();
}

class _ExplanationDropdownState extends State<ExplanationDropdown> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text("Explanation"),
      trailing: IconButton(
        icon: Icon(_isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
      ),
      subtitle: _isExpanded ? Text(widget.explanation, style: TextStyle(color: Colors.blue)) : null,
    );
  }
}

class CorrectAnswerInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int? parsed = int.tryParse(newValue.text);

    if (parsed != null && newValue.text.length <= 1 && parsed >= 0 && parsed <= 5) {
      return newValue;
    }
    // Return empty value if the input is invalid
    return TextEditingValue.empty;
  }
}
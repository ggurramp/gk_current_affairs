import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gk_current_affairs/screens/CurrentAffairs_te.dart';
import 'package:gk_current_affairs/screens/FactStories_hi.dart';
// import 'package:gk_current_affairs/screens/CurrentAffairs_te.dart';
import 'package:gk_current_affairs/screens/QuizScreen_hi.dart';
import 'package:gk_current_affairs/screens/QuizScreen_te.dart';
import 'package:gk_current_affairs/screens/SubjectWiseBits_te.dart';
import 'package:gk_current_affairs/screens/premiumTables.dart';
import 'package:gk_current_affairs/screens/subjectWiseBits.dart';
import 'package:gk_current_affairs/screens/teluguBooks.dart';
import 'package:gk_current_affairs/screens/teluguOldQuestionPapers.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';
import '../monthlyQuizzes/monthlyQuizzes.dart';
import '../monthlyQuizzes/monthlyQuizzes_te.dart';
import 'CurrentAffairs.dart';
import 'CurrentAffairs_hi.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'FactStories.dart';
import 'FactStories_te.dart';
import 'GenaralKnowledgeMenu.dart';
import 'LoginPage.dart';
import 'QuizScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dataTables_countryWise.dart';
import 'indianMultipleMedals.dart'; // Add this import
enum TileType {
  CurrentAffairsQuizzes,
  CurrentAffairsStories,
  GeneralKnowledgeQuizzes,
  PremiumTables,
  AmazingFacts,
  subjectWiseBits,
  MonthlyQuizzes,
  MyHomePage,
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Square Widgets App',
      theme: ThemeData(primarySwatch: Colors.lightBlue),

      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  String _currentLanguage = 'english';



  bool _shareIconHighlighted = false;
  TileType getTileType(int index) {
    switch (index) {
      case 0:
        return TileType.CurrentAffairsQuizzes;
      case 1:
        return TileType.CurrentAffairsStories;
      case 7:
        return TileType.GeneralKnowledgeQuizzes;
      case 3:
        return TileType.PremiumTables;
      case 4:
        return TileType.AmazingFacts;
      case 5:
        return TileType.subjectWiseBits;
      case 6:
        return TileType.MyHomePage;
      case 2:
        return TileType.MonthlyQuizzes;

      default:
      // Handle unknown tile type more gracefully or return a default value MonthlyQuizzes
        return TileType.MyHomePage; // or another appropriate default
    }
  }



  // Create a list of labels to be displayed in the square widgets MonthlyQuizzes
  List<String> get labels {
    String amazingFactsLabel = 'Amazing \n Facts';
    String subjectWiseBitsLabel = 'Subject Wise Bits';
    String currentAffairsQuizzesLabel = 'Current Affairs Quizzes';
    String currentAffairsStoriesLabel = 'Current Affairs';
    String generalKnowledgeQuizzesLabel = 'General Knowledge Quizzes';
    String PremiumTablesLabel = "Premium Tables \n(Updated)";
    String MonthlyQuizzesLabel = "Monthly Top Current Affairs bits";

    if (_currentLanguage == 'తెలుగు') {
      amazingFactsLabel = 'మీకు తెలుసా!';
      currentAffairsQuizzesLabel = 'కరెంట్ అఫైర్స్ క్విజ్‌లు';
      currentAffairsStoriesLabel = 'కరెంట్ అఫైర్స్';
      generalKnowledgeQuizzesLabel = 'జనరల్ నాలెడ్జ్ క్విజ్‌లు';
      PremiumTablesLabel = "విలువైన పట్టికలు \n(Updated)";
      subjectWiseBitsLabel = "సబ్జెక్ట్‌వైజ్ \nబిట్స్";
      MonthlyQuizzesLabel = "నెలవారీ టాప్  కరెంట్ అఫైర్స్ బిట్స్";
    } else if (_currentLanguage == 'हिंदी') {
      amazingFactsLabel = 'अद्भुत \n तथ्य';
      currentAffairsQuizzesLabel = 'करेंट अफेयर्स प्रश्नोत्तरी';
      currentAffairsStoriesLabel = 'करेंट अफेयर्स ';
      generalKnowledgeQuizzesLabel = 'सामान्य ज्ञान प्रश्नोत्तरी';

    }

    return [

      currentAffairsQuizzesLabel,
      currentAffairsStoriesLabel,
      MonthlyQuizzesLabel,
      PremiumTablesLabel,
      amazingFactsLabel,
      subjectWiseBitsLabel,
      "Text Books \n & \n E-Paper's",
      generalKnowledgeQuizzesLabel,



      //'Updates Are Loading ......',
      // Add more labels if you want...
    ];
  }

  String? _userIdentifier;

  Color getTextColor(Color borderColor) {
    double brightness = borderColor.red * 0.299 + borderColor.green * 0.587 + borderColor.blue * 0.114;
    return brightness < 128 ? Colors.white : Colors.black;
  }
  // Different colors for each square widget
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.lightGreenAccent,
    Colors.pinkAccent,
    // Add more colors if you have more labels...
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: _userIdentifier != null
              ? Text('Welcome ${_userIdentifier?.substring(0, min(5, _userIdentifier?.length ?? 0))}')
              : InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              "Click Here For Login",
              style: TextStyle(color: Colors.white), // Optional, to ensure the text color matches AppBar's title style
            ),
          ),


      automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<String>(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),  // Padding around the text and icon
              decoration: BoxDecoration(
                color: Colors.yellowAccent,  // Highlight color
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _currentLanguage ?? 'Select Language',  // Display 'Select Language' if _currentLanguage is null
                    style: TextStyle(color: Colors.pinkAccent, fontSize: 18),
                  ),
                  SizedBox(width: 5),  // Gap between text and icon
                  Icon(Icons.arrow_drop_down, color: Colors.red,size: 30),  // Dropdown icon
                ],
              ),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'english',
                child: Text('English'),
              ),
              PopupMenuItem<String>(
                value: 'తెలుగు',
                child: Text('తెలుగు'),
              ),
              // PopupMenuItem<String>(
              //   value: 'हिंदी',
              //   child: Text('हिंदी'),
              // ),
            ],
            onSelected: (String value) async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString('selectedLanguage', value);

              setState(() {
                _currentLanguage = value;
              });
            },
          ),
        ],
      ),




        body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
          itemCount: min(labels.length, colors.length),

          itemBuilder: (BuildContext context, int index) {
            Color borderColor = colors[index];
            return GestureDetector(
              onTap: () {
                switch (getTileType(index)) {
                  case TileType.CurrentAffairsQuizzes:
                    if (_currentLanguage == 'english') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => QuizScreen()));
                    } else if (_currentLanguage == 'తెలుగు') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => QuizScreen_te()));
                    } else if (_currentLanguage == 'हिंदी') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => QuizScreen_hi()));
                    }
                    break;

                  case TileType.CurrentAffairsStories:
                    if (_currentLanguage == 'english') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CurrentAffairsScreen()));
                    } else if (_currentLanguage == 'తెలుగు') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CurrentAffairsScreen_te()));
                    } else if (_currentLanguage == 'हिंदी') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CurrentAffairsScreen_hi()));
                    }
                    break;

                  case TileType.GeneralKnowledgeQuizzes:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GeneralKnowledgeMenu()),
                    );
                    break;

                  case TileType.PremiumTables:
                    if (_currentLanguage == 'english') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumTables()),
                      );
                    } else if (_currentLanguage == 'తెలుగు') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PremiumTables()),
                      );
                    }

                    break;

                  case TileType.AmazingFacts:
                    if (_currentLanguage == 'english') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FactStories()));
                    } else if (_currentLanguage == 'తెలుగు') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FactStoriesTe()));
                    } else if (_currentLanguage == 'हिंदी') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FactStories_hi()));
                    }
                    break;
                  case TileType.MonthlyQuizzes:
                    if (_currentLanguage == 'english') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MonthlyQuizzes()));
                    } else if (_currentLanguage == 'తెలుగు') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MonthlyQuizzes_te()));
                    } else if (_currentLanguage == 'हिंदी') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MonthlyQuizzes()));
                    }
                    break;


                  case TileType.subjectWiseBits:
                    if (_currentLanguage == 'english') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SubjectsList()));
                    } else if (_currentLanguage == 'తెలుగు') {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SubjectsList_te()));
                    }

                    // else if (_currentLanguage == 'हिंदी') {
                    //   Navigator.push(context, MaterialPageRoute(
                    //       builder: (context) => FactStories_hi()));
                    // }
                    break;
                  case TileType.MyHomePage:

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                    break;
                  // case TileType.MonthlyQuizzes:
                  //   if (_currentLanguage == 'english') {
                  //     Navigator.push(context, MaterialPageRoute(
                  //         builder: (context) => MonthlyQuizzes()));
                  //   } else if (_currentLanguage == 'తెలుగు') {
                  //     Navigator.push(context, MaterialPageRoute(
                  //         builder: (context) => MonthlyQuizzes()));
                  //   }
                    // else if (_currentLanguage == 'हिंदी') {
                    //   Navigator.push(context, MaterialPageRoute(
                    //       builder: (context) => FactStories_hi()));
                    // }
                    // break;

                }
              },
              child: GridTile(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: colors[index], width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      labels[index],
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            );
          },
      ),
        bottomNavigationBar: Container(
          color: Colors.blue, // Set your desired background color here
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white70, // Set the same color as the container
            ),


            // Set your desired background color here
            child:BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu, color: Colors.pinkAccent , size: 40),
                  label: '',
                ),


                BottomNavigationBarItem(
                  icon: Icon(Icons.share, color: Colors.redAccent , size: 30,),
                  label: 'share',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.connect_without_contact_rounded, color: Colors.pinkAccent , size: 40),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_rounded, color: Colors.pinkAccent , size: 40),
                  label: '',

                ),
              ],
              onTap: (index) {
                if (index == 0) {
                  _showMenu(context);
                } else if (index == 1) {
                  _shareApp();
                } else if (index == 2) {
                  _showFeedbackDialog();
                }

              },
            ),
          ),
        )

    );
  }
  void _showFeedbackDialog() {
    String titleText, feedbackNote, feedbackImportance, emailText, phoneText, okText;

    switch (_currentLanguage) {
      case 'తెలుగు':
        titleText = 'మేము మీ అభిప్రాయానికి విలువనిస్తాము!';
        feedbackImportance = 'మేము మా అప్లికేషన్‌ను మెరుగుపరచడానికి నిరంతరం కృషి చేస్తున్నాము మరియు ఈ ప్రక్రియలో మీ అభిప్రాయం కీలక పాత్ర పోషిస్తుంది.';
        feedbackNote = 'మీకు ఏవైనా అభిప్రాయం, సూచనలు లేదా సమస్యలు ఉంటే, దయచేసి మమ్మల్ని ఇక్కడ సంప్రదించండి:';
        emailText = 'ఇమెయిల్: reddyguru122@gmail.com';
        phoneText = 'ఫోన్: 7893305330';
        okText = 'సరే';
        break;

      case 'हिंदी':
        titleText = 'हम आपकी प्रतिक्रिया को महत्व देते हैं!';
        feedbackImportance = 'हम अपने एप्लिकेशन को बेहतर बनाने के लिए लगातार काम कर रहे हैं और आपकी प्रतिक्रिया इस प्रक्रिया में महत्वपूर्ण भूमिका निभाती है।';
        feedbackNote = 'यदि आपके पास कोई प्रतिक्रिया, सुझाव या समस्या है, तो कृपया हमसे यहां संपर्क करें:';
        emailText = 'ईमेल: reddyguru122@gmail.com';
        phoneText = 'फ़ोन: 7893305330';
        okText = 'ठीक है';
        break;

      default:
        titleText = 'We Value Your Feedback!';
        feedbackImportance = 'We are continuously working to improve our application, and your feedback plays a crucial role in this process.';
        feedbackNote = 'If you have any feedback, suggestions, or issues, please reach out to us at:';
        emailText = 'Email: reddyguru122@gmail.com';
        phoneText = 'Phone: 7893305330';
        okText = 'OK';
        break;
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(titleText),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(feedbackImportance),
              SizedBox(height: 16.0),
              Text(feedbackNote),
              SizedBox(height: 10.0),
              Text(emailText, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5.0),
              Text(phoneText, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(okText),
              onPressed: () {
                Navigator.of(context).pop();  // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }


  void _shareApp() async {
    final String appLink = 'https://play.google.com/store/apps/details?id=com.gurug.gk_current_affairs&pcampaignid=web_share';
    final String message = 'Check out this amazing app!\nApp Link: $appLink';

    try {
      Share.share(message);
    } catch (e) {
      print('Error sharing app: $e');
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
              title: Text('Sign Out'),
              onTap: () {
                _logout();
                Navigator.pop(context);
                _showMenu(context);
              },
            ),

          if (_userIdentifier != null)
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Delete Account'),
              onTap: () {
                _showDeleteAccountConfirmation(context);
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
  void _showDeleteAccountConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Account'),
          content: Text('Are you sure you want to delete your account? This action is irreversible.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _deleteAccount();
                Navigator.pop(context);
                _showMenu(context);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
  Future<void> _deleteAccount() async {
    try {
      await FirebaseAuth.instance.currentUser?.delete();
      _toggleLoggedIn(false);
      _getUserIdentifier();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account deleted successfully. Close & Reopen App'),
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete account: $e'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _loadLanguagePreference();
    _loadSavedLanguage();
    _getUserIdentifier(); // Call this method to retrieve user's identifier

  }
  _loadLanguagePreference() async {
    final prefs = await SharedPreferences.getInstance();
    String? language = prefs.getString('selectedLanguage');
    if (language != null && language.isNotEmpty) {
      setState(() {
        _currentLanguage = language;
      });
    }
  }
  void _loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString('selectedLanguage') ?? 'english';

    setState(() {
      _currentLanguage = savedLanguage;
    });
  }

  void _logout() async {
    await FirebaseAuth.instance.signOut();
    setState(() {
      _userIdentifier = null;
    });
  }

  void _getUserIdentifier() {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      if (user.providerData.any((userInfo) => userInfo.providerId == 'google.com')) {
        setState(() {
          _userIdentifier = user.email ?? user.phoneNumber;
        });
      } else if (user.email != null) {
        setState(() {
          _userIdentifier = user.email;
        });
      } else if (user.phoneNumber != null) {
        setState(() {
          _userIdentifier = user.phoneNumber;
        });
      }
    }
  }
  void _toggleLoggedIn(bool isLoggedIn) {
    setState(() {
      // Update the state variable that tracks the user's login status
      // For example:
      // _isLoggedIn = isLoggedIn;
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



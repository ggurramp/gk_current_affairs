import 'package:flutter/material.dart';
import 'dart:async';

import '../path_to_my_banner_ad_widget.dart'; // Import the dart:async package

class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;
  final String explanation;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
  });
}

class adl_te extends StatefulWidget {
  final String? userIdentifier;

  adl_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<adl_te> createState() => _adl_teState();
}

class _adl_teState extends State<adl_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//85. వ్యతిరేక - ఫిరాయింపు చట్టం

    Question(
      questionText: "సాధారణంగా 'ఫిరాయింపుల నిరోధక చట్టం'గా పిలువబడే 52వ సవరణ చట్టం 1965 ద్వారా భారత రాజ్యాంగానికి ఏ షెడ్యూల్ జోడించబడింది?",
      options:["మొదటి షెడ్యూల్", "పదో షెడ్యూల్", "ఐదవ షెడ్యూల్", "ఇరవై-రెండవ షెడ్యూల్"],
      correctAnswerIndex: 1,
      explanation:"1965 నాటి 52వ సవరణ చట్టం భారత రాజ్యాంగంలో పదవ షెడ్యూల్‌ను జోడించింది, దీనిని సాధారణంగా 'ఫిరాయింపుల నిరోధక చట్టం' అని పిలుస్తారు.",
    ),

    Question(
      questionText: "ఫిరాయింపు సందర్భంలో, ఒక సభలో నామినేట్ చేయబడిన సభ్యుడు ఎప్పుడు అనర్హుడవుతాడు?",
      options:[
        "ఏదైనా రాజకీయ పార్టీలో చేరిన వెంటనే",
        "సభలో సీటు తీసుకున్న ఆరు నెలల గడువు ముగిసిన తర్వాత",
        "పార్టీ అనర్హత నోటీసు జారీ చేస్తే",
        "పార్టీ అధినేత అనర్హత వేటు వేయమని కోరితే మాత్రమే"
      ],
      correctAnswerIndex: 1,
      explanation:"సభలో నామినేట్ చేయబడిన సభ్యుడు ఏదైనా రాజకీయ పార్టీలో చేరినట్లయితే, సభలో కూర్చోవడానికి ఆరు నెలల గడువు ముగిసిన తర్వాత అనర్హులు అవుతారు.",
    ),

    Question(
      questionText: "పదో షెడ్యూల్ ప్రకారం, ఒక సభ్యుడు తమ రాజకీయ పార్టీ సభ్యత్వాన్ని స్వచ్ఛందంగా వదులుకుంటే ఏమి జరుగుతుంది?",
      options:[
        "ఫలితాలు లేవు",
        "తక్షణ అనర్హత",
        "అనర్హత నుండి మినహాయింపు",
        "ఆటోమేటిక్ సస్పెన్షన్"
      ],
      correctAnswerIndex: 1,
      explanation:"ఒక సభ్యుడు తమ రాజకీయ పార్టీ సభ్యత్వాన్ని స్వచ్ఛందంగా వదులుకుంటే, పదవ షెడ్యూల్ ప్రకారం సభలో సభ్యుడిగా ఉండటానికి అనర్హులు అవుతారు.",
    ),

    Question(
      questionText: "ఫిరాయింపుల నిరోధక చట్టం యొక్క మూల్యాంకనం ప్రకారం, రాజ్యాంగంలో పదవ షెడ్యూల్‌ను ప్రవేశపెట్టిన ముఖ్య ఉద్దేశ్యం ఏమిటి?",
      options:[
        "మరింత చైతన్యవంతమైన ప్రజాస్వామ్యం కోసం రాజకీయ ఫిరాయింపులను ప్రోత్సహించడం",
        "రాజకీయ స్థాయిలో అవినీతిని నిరోధించడానికి",
        "పార్టీ విలీనాల కోసం చట్టపరమైన ఫ్రేమ్‌వర్క్‌ను ఏర్పాటు చేయడానికి",
        "నిర్ధారణ మరియు అనైతిక రాజకీయ ఫిరాయింపులను అరికట్టడానికి"
      ],
      correctAnswerIndex: 3,
      explanation:"పదో షెడ్యూల్, లేదా ఫిరాయింపు నిరోధక చట్టం, భారత పార్లమెంటరీ ప్రజాస్వామ్యాన్ని బలోపేతం చేయడానికి సూత్రప్రాయమైన మరియు అనైతిక రాజకీయ ఫిరాయింపులను నిరోధించడానికి రూపొందించబడింది.",
    ),

    Question(
      questionText: "అప్పటి ప్రధానమంత్రి రాజీవ్ గాంధీ పదవ షెడ్యూల్ (ఫిరాయింపుల నిరోధక చట్టం)ని ఏ విధంగా వర్ణించారు?",
      options:[
        "ప్రజాస్వామ్యానికి ముప్పు"
            "అసమ్మతి వైపు ఒక సాహసోపేతమైన అడుగు",
        "ప్రజా జీవితాన్ని శుభ్రపరచడానికి మొదటి అడుగు",
        "పార్టీ డైనమిక్స్‌లో అనవసర జోక్యం"
      ],
      correctAnswerIndex: 2,
      explanation:"రాజీవ్ గాంధీ పదవ షెడ్యూల్ (ఫిరాయింపుల నిరోధక చట్టం)ని 'ప్రజా జీవితాన్ని శుభ్రపరిచే దిశగా మొదటి అడుగు'గా అభివర్ణించారు.",
    ),

    Question(
      questionText: "శాసనసభలో పార్టీల ప్రజాస్వామ్య పునర్విభజనను సులభతరం చేసేందుకు ఫిరాయింపుల నిరోధక చట్టం యొక్క ఏ ప్రయోజనం టెక్స్ట్‌లో ప్రస్తావించబడింది?",
      options:[
        "శరీరంలో స్థిరత్వం",
        "రాజకీయ పార్టీల గుర్తింపు",
        "అవినీతి నిరోధం",
        "పార్టీ విలీనాల ద్వారా ప్రజాస్వామ్య పునర్నిర్మాణం"
      ],
      correctAnswerIndex: 3,
      explanation:"పార్టీల విలీనం ద్వారా శాసనసభలో పార్టీల ప్రజాస్వామ్య పునర్విభజనను ఫిరాయింపు నిరోధక చట్టం సులభతరం చేస్తుంది.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగంలో 2003 91వ సవరణ చట్టాన్ని ప్రవేశపెట్టడానికి ఉదహరించిన కారణాలలో ఒకటి ఏమిటి?",
      options:[
        "సెంట్రల్ కౌన్సిల్ ఆఫ్ మినిస్టర్స్‌లో మొత్తం మంత్రుల సంఖ్యను పెంచడానికి",
        "ఫిరాయింపుల నిరోధక చట్టాన్ని బలోపేతం చేయడానికి మరియు సవరించడానికి",
        "రాజకీయ పార్టీలలో భారీ ఫిరాయింపులను అనుమతించడం",
        "అసాధారణంగా పెద్ద మంత్రుల మండలిలను ప్రోత్సహించడానికి"
      ],
      correctAnswerIndex: 1,
      explanation:"2003 91వ సవరణ చట్టం ఫిరాయింపుల నిరోధక చట్టాన్ని బలోపేతం చేయడానికి మరియు సవరించడానికి ప్రవేశపెట్టబడింది, ఎందుకంటే ఫిరాయింపులను తనిఖీ చేయడంలో ప్రస్తుత నిబంధనలు సరిపోవు.",
    ),

    Question(
      questionText: "ఫిరాయింపుల శిక్షకు సంబంధించి రాజ్యాంగ పనితీరును సమీక్షించడానికి జాతీయ కమిషన్ (NCRWC) ఏ సిఫార్సు చేసింది?",
      options:[
        "ఫిరాయింపుదారులు ఏ ప్రభుత్వ కార్యాలయాన్ని నిర్వహించకుండా నిషేధించడం",
        "ఫిరాయింపుదారులకు ఆర్థిక ప్రోత్సాహకాలు అందించడం",
        "ఫిరాయింపుదారులకు హెచ్చరికలు జారీ చేయడం",
        "ఫిరాయింపుదారులకు క్షమాభిక్ష మంజూరు"
      ],
      correctAnswerIndex: 0,
      explanation:"ఎన్‌సిఆర్‌డబ్ల్యుసి ఫిరాయింపుదారులను మంత్రిగా లేదా మరేదైనా ఇతర రాజకీయ పదవిని కలిగి ఉండకుండా కనీసం ప్రస్తుత శాసనసభ వ్యవధిలో లేదా తదుపరి తాజా ఎన్నికల వరకు, ఏది ముందుగా అయితే అది డిబార్ చేయాలని సిఫార్సు చేసింది.",
    ),

    Question(
      questionText: "2003 యొక్క 91వ సవరణ చట్టం శాసనసభ పార్టీలలో చీలికలకు సంబంధించి పదో షెడ్యూల్ (ఫిరాయింపుల నిరోధక చట్టం)కి ఏ మార్పు చేసింది?",
      options:[
        "ఇది విభజనలకు మినహాయింపును ప్రవేశపెట్టింది",
        "ఇది విభజనలలో ఫిరాయింపుదారులకు రక్షణను బలపరిచింది",
        "విభజనల సందర్భంలో అనర్హత నుండి మినహాయింపు కోసం ఇది నిబంధనను తొలగించింది",
        "ఇది పరిణామాలు లేకుండా అపరిమిత విభజనలను అనుమతించింది"
      ],
      correctAnswerIndex: 2,
      explanation:"2003 91వ సవరణ చట్టం శాసనసభ పక్షంలో మూడింట ఒక వంతు సభ్యులు చీలిపోయిన సందర్భంలో అనర్హత నుండి మినహాయింపుకు సంబంధించిన పదవ షెడ్యూల్‌లోని నిబంధనను తొలగించింది.",
    ),




  ];
  int _elapsedTimeInSeconds = 0; // Elapsed exam time in seconds

  late Timer _examTimer;

  @override
  void initState() {
    super.initState();
    _loadLikedData();
    //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
    _startriversTimer();
  }
  void _startriversTimer() {
    _examTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTimeInSeconds++;
      });
    });
  }

  Future<void> _loadLikedData() async {
    // Load liked questions data here
    // ...
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _selectedAnswerIndex = null;
      } else {
        // All questions have been answered, navigate to results screen
        _navigateToResults();
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

  void _navigateToResults() {
    // Navigate to results screen
    _examTimer.cancel(); // Cancel the exam timer before navigating
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ResultsScreen(
          userAnswers: _userAnswers,
          questions: _questions,
          elapsedTimeInSeconds: _elapsedTimeInSeconds,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'), // Set the title to 'Quiz' using Text widget
        backgroundColor: Colors.blueAccent,
      ),
      body: GestureDetector(
        onVerticalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dy < 0) {
            // Swipe up detected, move to the next question
            _nextQuestion();
          } else if (details.velocity.pixelsPerSecond.dy > 0) {
            // Swipe down detected, move to the previous question
            _previousQuestion();
          }
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            _previousQuestion();
          } else if (details.primaryVelocity! < 0) {
            _nextQuestion();
          }
        },
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            MyBannerAdWidget(), // Add the banner ad here
            Text(
              "Question ${_currentQuestionIndex + 1}:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              _questions[_currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            ..._questions[_currentQuestionIndex].options.asMap().entries.map((entry) {
              final optionIndex = entry.key;
              final optionText = entry.value;
              return InkWell( // Added this InkWell
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex; // Store user's answer
                  });
                },
                child: ListTile(
                  title: Text(optionText),
                  leading: Radio<int>(
                    value: optionIndex,
                    groupValue: _selectedAnswerIndex,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedAnswerIndex = value;
                        _userAnswers[_currentQuestionIndex] = value; // Store user's answer
                      });
                    },
                  ),
                ),
              );
            }).toList(),
            // Show correct answer if an option is selected
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Set your desired color here
                ),
              ),

            MyBannerAdWidget(), // Add the banner ad here

          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.red[400],
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.blueAccent[200],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back, color: Colors.red, size: 40),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_forward_rounded, color: Colors.red, size: 40),
                label: '',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                _previousQuestion();
              } else if (index == 1) {
                _nextQuestion();
              }
            },
          ),
        ),
      ),
      // Overall exam timer display

      // Overall exam timer display
      // Overall exam timer display
      persistentFooterButtons: [
        Text(
          'Elapsed Time: ${_elapsedTimeInSeconds ~/ 60}:${(_elapsedTimeInSeconds % 60).toString().padLeft(2, '0')}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],

    );
  }
  @override
  void dispose() {
    // Dispose of the exam timer when the widget is disposed
    _examTimer.cancel();
    super.dispose();
  }
}

class ResultsScreen extends StatelessWidget {
  final int elapsedTimeInSeconds;
  final List<int?> userAnswers;
  final List<Question> questions;

  ResultsScreen({required this.userAnswers, required this.questions, required this.elapsedTimeInSeconds});


  int calculateScore() {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] != null && userAnswers[i] == questions[i].correctAnswerIndex) {
        score++;
      }
    }
    return score;
  }
  String formatElapsedTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }
  @override
  Widget build(BuildContext context) {
    final int score = calculateScore();
    final String completedTime = formatElapsedTime(elapsedTimeInSeconds);
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
        actions: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Completed Time: $completedTime" ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          MyBannerAdWidget(), // Add the banner ad here
          Text(
            "Your Score: $score/${questions.length}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          for (int i = 0; i < questions.length; i++) ...[
            Text(
              "Question ${i + 1}:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              questions[i].questionText,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              "Your Answer: ${userAnswers[i] != null ? questions[i].options[userAnswers[i]!] : 'Not answered'}",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "Correct Answer: ${questions[i].options[questions[i].correctAnswerIndex]}",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              "Explanation: ${questions[i].explanation}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),

          ],
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: adl_te(),
  ));
}

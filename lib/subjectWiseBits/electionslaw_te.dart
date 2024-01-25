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

class electionslaw_te extends StatefulWidget {
  final String? userIdentifier;

  electionslaw_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<electionslaw_te> createState() => _electionslaw_teState();
}

class _electionslaw_teState extends State<electionslaw_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    //81.ఎన్నికల చట్టాలు

    Question(
      questionText: "ప్రజా ప్రాతినిధ్య చట్టం, 1950 ఏ సంవత్సరంలో రూపొందించబడింది?",
      options:["1947", "1950", "1955", "1960"],
      correctAnswerIndex: 1,
      explanation:"హౌస్ ఆఫ్ ది పీపుల్ మరియు లెజిస్లేటివ్ అసెంబ్లీలు మరియు కౌన్సిల్స్ ఆఫ్ స్టేట్స్‌లో సీట్ల కేటాయింపు కోసం 1950లో ప్రజాప్రాతినిధ్య చట్టం, 1950 రూపొందించబడింది.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగం ప్రకారం, పార్లమెంటు మరియు శాసన సభలలో గరిష్ట సంఖ్యలో సీట్లను ఏ ఆర్టికల్‌లు నిర్దేశిస్తాయి?",
      options:["ఆర్టికల్ 81 మరియు 170", "ఆర్టికల్ 171", "ఆర్టికల్ 50", "ఆర్టికల్ 101"],
      correctAnswerIndex: 0,
      explanation:"భారత రాజ్యాంగంలోని 81 మరియు 170 అధికరణలు పార్లమెంటు మరియు శాసన సభలలో గరిష్ట స్థానాల సంఖ్యను పేర్కొంటాయి.",
    ),

    Question(
      questionText: "ప్రజల ప్రాతినిధ్య చట్టం, 1950 రాష్ట్రపతికి ఏ అధికారాన్ని అందిస్తుంది?",
      options:[
        "ఎన్నికల అధికారులను నియమించే అధికారం",
        "ప్రజల సభలో సీట్లను కేటాయించే అధికారం",
        "ఎన్నికల సంఘంతో సంప్రదించిన తర్వాత నియోజకవర్గాల డీలిమిట్ అధికారం",
        "పార్లమెంటును రద్దు చేసే అధికారం",
      ],
      correctAnswerIndex: 2,
      explanation:"ఎన్నికల ప్రయోజనం కోసం ఎన్నికల సంఘంతో సంప్రదించిన తర్వాత నియోజకవర్గాల విభజన చేసే అధికారాన్ని ఈ చట్టం రాష్ట్రపతికి అందిస్తుంది.",
    ),

    Question(
      questionText: "ప్రజా ప్రాతినిధ్య చట్టం, 1950 ఎన్నికల పరంగా ఏమి అందిస్తుంది?",
      options:[
        "సీట్ల కేటాయింపు మాత్రమే",
        "ఓటర్ల నమోదు మరియు నియోజకవర్గాల విభజన",
        "రాష్ట్రాల మండలిలో సీట్లను నింపే విధానం",
        "స్థానిక అధికారుల ఏర్పాటు",
      ],
      correctAnswerIndex: 1,
      explanation:"ఈ చట్టం పార్లమెంటరీ నియోజకవర్గాలకు మరియు అసెంబ్లీ మరియు కౌన్సిల్ నియోజకవర్గాలకు ఓటర్ల నమోదు, అలాగే నియోజకవర్గాల విభజన కోసం అందిస్తుంది.",
    ),
    Question(
      questionText: "ఎన్నికల వాస్తవ నిర్వహణ, అర్హతలు మరియు సభ్యత్వం, అవినీతి పద్ధతులు మరియు ఇతర ఎన్నికల నేరాలకు సంబంధించిన అనర్హతలకు సంబంధించిన నిబంధనలను అందించడానికి ఏ చట్టం రూపొందించబడింది?",
      options:["ప్రజల ప్రాతినిధ్య చట్టం, 1950", "ప్రజల ప్రాతినిధ్యం చట్టం, 1951", "భారత రాజ్యాంగం, 1950", "ఎన్నికల ప్రవర్తన చట్టం, 1955"],
      correctAnswerIndex: 1,
      explanation:"ప్రజల ప్రాతినిధ్య చట్టం, 1951, ఎన్నికల వాస్తవ ప్రవర్తన, అర్హతలు, అనర్హతలు, అవినీతి పద్ధతులు మరియు ఇతర ఎన్నికల నేరాలకు సంబంధించిన నిబంధనలను పరిష్కరించడానికి రూపొందించబడింది.",
    ),

    Question(
      questionText: "ప్రజా ప్రాతినిధ్య చట్టం, 1951లోని 'ఎన్నికల నిర్వహణ' సెక్షన్‌లో ఏది ముఖ్యమైనది?",
      options:[
        "అభ్యర్థులు, అభ్యర్థులు మరియు వారి ఏజెంట్ల నామినేషన్, ఎన్నికలలో సాధారణ విధానం",
        "ఆస్తులు మరియు అప్పుల ప్రకటన, ఎన్నికల ఖర్చులు",
        "ఎన్నికల ఫలితాలు మరియు నామినేషన్ల ప్రచురణ",
        "పైన ఉన్నవన్నీ",
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రజా ప్రాతినిధ్య చట్టం, 1951లోని 'ఎన్నికల ప్రవర్తన' సెక్షన్ అభ్యర్థులు, అభ్యర్థులు మరియు వారి ఏజెంట్ల నామినేషన్, ఎన్నికల సాధారణ ప్రక్రియ, ఆస్తులు మరియు అప్పుల ప్రకటన, ఎన్నికల ఖర్చులు, ఎన్నికల ఫలితాల ప్రచురణ వంటి అంశాలను కవర్ చేస్తుంది. మరియు నామినేషన్లు.",
    ),

    Question(
      questionText: "ఎన్నికల వివాదాల సందర్భంలో, ప్రజాప్రాతినిధ్య చట్టం, 1951లోని నిబంధనల ద్వారా ఏ విషయాలు కవర్ చేయబడతాయి?",
      options:[
        "హైకోర్టుకు ఎన్నికల పిటిషన్ల సమర్పణ",
        "ఎన్నికల పిటిషన్ల విచారణ",
        "ఎన్నికల పిటిషన్ల ఉపసంహరణ మరియు తగ్గింపు",
        "పైన ఉన్నవన్నీ",
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రజా ప్రాతినిధ్య చట్టం, 1951, ఎన్నికల వివాదాలకు సంబంధించి హైకోర్టుకు ఎన్నికల పిటిషన్లను సమర్పించడం, ఎన్నికల పిటిషన్ల విచారణ, ఎన్నికల పిటిషన్ల ఉపసంహరణ మరియు ఉపసంహరణ వంటి అంశాలను కవర్ చేస్తుంది.",
    ),

    Question(
      questionText: "ప్రజా ప్రాతినిధ్య చట్టం, 1951 విచారణలకు సంబంధించి ఎన్నికల కమిషన్ అధికారాలకు సంబంధించి ఏమి అందిస్తుంది?",
      options:[
        "ఎన్నికల ఫలితాలు ప్రకటించే అధికారాలు",
        "అభ్యర్థులను అనర్హులుగా ప్రకటించే అధికారాలు",
        "సభ్యుల అనర్హతలకు సంబంధించిన విచారణలకు సంబంధించి అధికారాలు",
        "ఎన్నికలు నిర్వహించే అధికారాలు",
      ],
      correctAnswerIndex: 2,
      explanation:"ప్రజల ప్రాతినిధ్య చట్టం, 1951, సభ్యుల అనర్హతలకు సంబంధించిన విచారణలకు సంబంధించి ఎన్నికల కమిషన్‌కు అధికారాలను అందిస్తుంది.",
    ),

    Question(
      questionText: "2001 జనాభా లెక్కల ఆధారంగా ప్రతి రాష్ట్రాన్ని ప్రాదేశిక నియోజకవర్గాలుగా పునర్ సర్దుబాటు చేయడం మరియు విభజించడం కోసం భారత రాజ్యాంగంలోని ఏ ఆర్టికల్‌లు అందిస్తాయి?",
      options:["ఆర్టికల్స్ 330 మరియు 332", "ఆర్టికల్స్ 82 మరియు 170", "ఆర్టికల్స్ 50 మరియు 101", "ఆర్టికల్స్ 171 మరియు 330"],
      correctAnswerIndex: 1,
      explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 82 మరియు 170 2001 జనాభా లెక్కల ఆధారంగా ప్రతి రాష్ట్రాన్ని ప్రాదేశిక నియోజకవర్గాలుగా పునర్వ్యవస్థీకరించడం మరియు విభజించడం కోసం అందిస్తోంది.",
    ),

    Question(
      questionText: "డీలిమిటేషన్ చట్టం, 2002 యొక్క ప్రాథమిక ప్రయోజనం ఏమిటి?",
      options:[
        "ఎన్నికల నిర్వహణ కోసం డీలిమిటేషన్ కమిషన్‌ను ఏర్పాటు చేయడం",
        "ప్రభుత్వం క్రింద లాభదాయకమైన కొన్ని కార్యాలయాలను ప్రకటించడం",
        "భారత రాష్ట్రపతి మరియు ఉపరాష్ట్రపతి కార్యాలయాలకు ఎన్నికలకు సంబంధించిన విషయాలను నియంత్రించడానికి",
        "2001 జనాభా లెక్కల ఆధారంగా ఎన్నికల నియోజకవర్గాల పరిమాణాలలో వక్రీకరణలను సరిచేయడానికి",
      ],
      correctAnswerIndex: 3,
      explanation:"డీలిమిటేషన్ చట్టం, 2002 యొక్క ప్రాథమిక ఉద్దేశ్యం, 2001 జనాభా లెక్కల ఆధారంగా ఎన్నికల నియోజకవర్గాల పరిమాణాలలో వక్రీకరణలను సరిచేయడానికి డీలిమిటేషన్ కమిషన్‌ను ఏర్పాటు చేయడం.",
    ),

    Question(
      questionText: "ప్రభుత్వం ఆధ్వర్యంలోని కొన్ని లాభదాయక కార్యాలయాలు పార్లమెంటు సభ్యులుగా ఎంపిక కావడానికి వాటి హోల్డర్‌లను అనర్హులుగా ప్రకటించరాదని ఏ చట్టం ప్రకటించింది?",
      options:[
        "డిలిమిటేషన్ చట్టం, 2002",
        "పార్లమెంట్ (అనర్హత నిరోధక) చట్టం, 1959",
        "షెడ్యూల్డ్ కులాలు మరియు షెడ్యూల్డ్ తెగల ఉత్తర్వుల (సవరణ) చట్టం, 1976",
        "అధ్యక్ష మరియు ఉపరాష్ట్రపతి ఎన్నికల చట్టం, 1952",
      ],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటు (అనర్హత నిరోధక) చట్టం, 1959 ప్రభుత్వం క్రింద లాభదాయకమైన కొన్ని కార్యాలయాలు పార్లమెంటు సభ్యులుగా ఎన్నుకోబడటానికి వాటి హోల్డర్లను అనర్హులుగా ప్రకటించవని ప్రకటించింది.",
    ),

    Question(
      questionText: "ఎన్నికల జాబితాల తయారీ మరియు ప్రచురణ కోసం ఏ నియమాలు అందిస్తాయి?",
      options:[
        "ఎన్నికల నియమాల ప్రవర్తన, 1961",
        "లోక్ సభ సభ్యులు (ఆస్తులు మరియు అప్పుల ప్రకటన) నియమాలు, 2004",
        "ఎన్నికల నమోదు నియమాలు, 1960",
        "రాజ్యసభ సభ్యులు (ఫిరాయింపు కారణంగా అనర్హత) నియమాలు, 1985",
      ],
      correctAnswerIndex: 2,
      explanation:"ది రిజిస్ట్రేషన్ ఆఫ్ ఎలెక్టర్స్ రూల్స్, 1960, ఎలక్టోరల్ రోల్స్ తయారీ మరియు ప్రచురణ కోసం అందజేస్తుంది.",
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
    home: electionslaw_te(),
  ));
}

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

class rrp_te extends StatefulWidget {
  final String? userIdentifier;

  rrp_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<rrp_te> createState() => _rrp_teState();
}

class _rrp_teState extends State<rrp_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//79.ప్రాంతీయ పార్టీల పాత్ర

    Question(
        questionText: "భారత రాజకీయ వ్యవస్థలో ప్రాంతీయ పార్టీల ప్రధాన లక్షణాలు ఏమిటి?",
        options:[
          "ఒకే ప్రాంతానికి పరిమితమైన ఎన్నికల పునాది.",
          "ప్రధానంగా స్థానిక అసంతృప్తిని ఉపయోగించుకోవడం లేదా ఆదిమ డిమాండ్లను కాపాడుకోవడం.",
          "రాష్ట్ర స్థాయిలో రాజకీయ అధికారాన్ని చేజిక్కించుకోవడంపై దృష్టి కేంద్రీకరించారు.",
          "ఇండియన్ యూనియన్‌లోని రాష్ట్రాలకు ఎక్కువ ప్రాంతీయ స్వయంప్రతిపత్తి కోసం కోరిక."
        ],
        correctAnswerIndex: 0,
        explanation:"భారత రాజకీయ వ్యవస్థలోని ప్రాంతీయ పార్టీలు సాధారణంగా ఒక నిర్దిష్ట రాష్ట్రం లేదా నిర్దిష్ట ప్రాంతంలో, ఒకే ప్రాంతానికి పరిమిత ఎన్నికల పునాదితో పనిచేస్తాయి."
    ),

    Question(
        questionText: "శిరోమణి అకాలీదళ్, నేషనల్ కాన్ఫరెన్స్ మరియు శివసేన వంటి ఉదాహరణలు ఏ ప్రాంతీయ పార్టీలను కలిగి ఉన్నాయి?",
        options:["ప్రాంతీయ సంస్కృతి లేదా జాతి ఆధారంగా", "జాతీయ ఎన్నికల స్థావరం లేని అఖిల భారత దృక్పథం", "జాతీయ పార్టీలలో చీలికతో ఏర్పడినది", "చరిష్మా ఆధారంగా వ్యక్తిగత నాయకులచే ఏర్పాటు చేయబడింది"],
        correctAnswerIndex: 0,
        explanation:"ప్రాంతీయ సంస్కృతి లేదా జాతిపై ఆధారపడిన ప్రాంతీయ పార్టీలలో శిరోమణి అకాలీదళ్, నేషనల్ కాన్ఫరెన్స్ మరియు శివసేన వంటి ఉదాహరణలు ఉన్నాయి."
    ),

    Question(
        questionText: "భారతదేశంలో ప్రాంతీయ పార్టీల ఆవిర్భావానికి కొన్ని కారణాలు ఏమిటి?",
        options:[
          "భారతీయ సమాజం యొక్క సాంస్కృతిక మరియు జాతి బహువచనం.",
          "అభివృద్ధిలో ఆర్థిక అసమానతలు మరియు ప్రాంతీయ అసమానతలు.",
          "ప్రత్యేక గుర్తింపును కొనసాగించాలనే నిర్దిష్ట విభాగాలు లేదా ప్రాంతాల కోరిక.",
          "పైన ఉన్నవన్నీ."
        ],
        correctAnswerIndex: 3,
        explanation:"భారతదేశంలో ప్రాంతీయ పార్టీల ఆవిర్భావం సాంస్కృతిక మరియు జాతి బహువచనం, ఆర్థిక అసమానతలు, ప్రాంతీయ అసమతుల్యతలు మరియు కొన్ని విభాగాలు లేదా ప్రాంతాల మధ్య ప్రత్యేక గుర్తింపులను కొనసాగించాలనే కోరిక ద్వారా ప్రభావితమవుతుంది."
    ),

    Question(
        questionText: "భారత రాజకీయాల్లో ప్రాంతీయ పార్టీలు ఎలాంటి పాత్ర పోషిస్తాయి?",
        options:[
          "ప్రాంతీయ స్థాయిలో మెరుగైన పాలన అందించడం.",
          "ఒక-పార్టీ ఆధిపత్య వ్యవస్థను సవాలు చేయడం.",
          "కేంద్ర-రాష్ట్ర సంబంధాలపై బలమైన ప్రభావం చూపడం.",
          "పైన ఉన్నవన్నీ."
        ],
        correctAnswerIndex: 3,
        explanation:"ప్రాంతీయ పార్టీలు ప్రాంతీయ స్థాయిలో మెరుగైన పాలన అందించడం, ఏక-పార్టీ ఆధిపత్య వ్యవస్థను సవాలు చేయడం మరియు కేంద్ర-రాష్ట్ర సంబంధాలపై బలమైన ప్రభావం చూపడం వంటి వివిధ పాత్రలను భారత రాజకీయాల్లో పోషిస్తాయి."
    ),

    Question(
      questionText: "పార్లమెంటరీ ప్రజాస్వామ్యానికి ప్రాంతీయ పార్టీలు ఎలా దోహదపడ్డాయి?",
      options:[
        "రాజకీయ స్పృహ మరియు రాజకీయాలపై ఆసక్తిని పెంచడం.",
        "కీలక నియామకాలలో గవర్నర్ల పక్షపాత పాత్రను బహిర్గతం చేయడం.",
        "సంకీర్ణ రాజకీయాల యుగంలో ముఖ్యమైన పాత్ర పోషిస్తోంది.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రాంతీయ పార్టీలు రాజకీయ స్పృహను పెంచడం, పక్షపాత పాత్రలను బహిర్గతం చేయడం మరియు సంకీర్ణ రాజకీయాల యుగంలో ముఖ్యమైన పాత్ర పోషించడం ద్వారా పార్లమెంటరీ ప్రజాస్వామ్యానికి దోహదపడ్డాయి.",
    ),

    Question(
        questionText: "భారత రాజకీయాల్లో ప్రాంతీయ పార్టీలు పోషించే పాత్రలో కొన్ని ప్రతికూల అంశాలు ఏమిటి?",
        options:[
          "ప్రాంతీయ ప్రయోజనాల కంటే జాతీయ ప్రయోజనాలకే ఎక్కువ ప్రాధాన్యత ఇవ్వడం.",
          "ప్రాంతీయత, కులతత్వం, భాషావాదం, మతతత్వం మరియు గిరిజనవాదాన్ని ప్రోత్సహించడం.",
          "అంతర్ రాష్ట్ర నీటి వివాదాలు మరియు సరిహద్దు సమస్యలను విజయవంతంగా పరిష్కరించడం.",
          "జనాదరణ లేని చర్యల ద్వారా ఆర్థిక అభివృద్ధిని ప్రోత్సహించడం."
        ],
        correctAnswerIndex: 1,
        explanation:"ప్రాంతీయ పార్టీల పాత్ర యొక్క ప్రతికూల అంశాలు ప్రాంతీయవాదం, కులతత్వం, భాషావాదం, మతతత్వం మరియు గిరిజనవాదాన్ని ప్రోత్సహించడం, ఇవి జాతీయ సమైక్యతకు అడ్డంకులుగా మారతాయి."
    ),

    Question(
        questionText: "ప్రాంతీయ పార్టీలు తమ ఎన్నికల స్థావరాన్ని విస్తరించుకోవడానికి ప్రజాకర్షక పథకాలపై ఎక్కువ దృష్టి పెట్టడం వల్ల ఒక పర్యవసానం ఏమిటి?",
        options:[
          "రాష్ట్ర ఆర్థిక వ్యవస్థ మరియు అభివృద్ధిని మెరుగుపరచడం.",
          "రాష్ట్ర ఆర్థిక వ్యవస్థ మరియు అభివృద్ధిని ప్రతికూలంగా ప్రభావితం చేస్తుంది.",
          "జాతీయ సమైక్యతకు తోడ్పడుతోంది.",
          "జనాల్లో రాజకీయ చైతన్యాన్ని పెంపొందించడం."
        ],
        correctAnswerIndex: 1,
        explanation:"తమ ఎన్నికల స్థావరాన్ని విస్తరించుకోవడానికి ప్రజాకర్షక పథకాలపై ఎక్కువ దృష్టి కేంద్రీకరించడం రాష్ట్ర ఆర్థిక వ్యవస్థ మరియు అభివృద్ధిని ప్రతికూలంగా ప్రభావితం చేస్తుంది, ఇది టెక్స్ట్ ప్రకారం."
    ),

    Question(
        questionText: "కేంద్రంలో సంకీర్ణ ప్రభుత్వాలలో ప్రాంతీయ పార్టీలు నిర్ణయం తీసుకోవడం మరియు విధాన రూపకల్పనను ఎలా ప్రభావితం చేశాయి?",
        options:[
          "జాతీయ ప్రయోజనాలకు ప్రాధాన్యత ఇవ్వడం ద్వారా.",
          "ప్రాంతీయ కారకాల పరిశీలనను నిరుత్సాహపరచడం ద్వారా.",
          "తమ డిమాండ్లకు లొంగిపోయేలా కేంద్ర నాయకత్వాన్ని బలవంతం చేయడం ద్వారా.",
          "నిష్పాక్షికమైన మరియు సమ్మిళిత విధానాలను ప్రచారం చేయడం ద్వారా."
        ],
        correctAnswerIndex: 2,
        explanation:"ప్రాంతీయ పార్టీలు తమ డిమాండ్లకు లొంగిపోయేలా కేంద్ర నాయకత్వాన్ని బలవంతం చేయడం, ప్రాంతీయ అంశాలను ప్రవేశపెట్టడం ద్వారా సంకీర్ణ ప్రభుత్వాలలో నిర్ణయం తీసుకోవడం మరియు విధాన రూపకల్పనను ప్రభావితం చేస్తాయి."
    ),

    Question(
      questionText: "భారతదేశంలో కొన్ని సమస్యల పరిష్కారంలో ప్రాంతీయ పార్టీలు ఏ పాత్ర పోషిస్తాయి?",
      options:[
        "అంతర్-రాష్ట్ర జల వివాదాల పరిష్కారానికి అవి సహకరిస్తాయి.",
        "అంతర్-రాష్ట్ర సరిహద్దు వివాదాల పరిష్కారానికి వారు బాధ్యత వహిస్తారు.",
        "జాతీయ సమస్యలను పరిష్కరించడంలో వారు తటస్థ పాత్ర పోషిస్తారు.",
        "అంతర్-రాష్ట్ర జల వివాదాలు, సరిహద్దు వివాదాలు మరియు ఇతర సమస్యల పరిష్కారానికి అవి దోహదం చేస్తాయి."
      ],
      correctAnswerIndex: 3,
      explanation:"పాఠ్యాంశం ప్రకారం అంతర్-రాష్ట్ర జల వివాదాలు, సరిహద్దు వివాదాలు మరియు ఇతర అంతర్-రాష్ట్ర సమస్యల పరిష్కారం కాకపోవడానికి ప్రాంతీయ పార్టీలు బాధ్యత వహిస్తాయి.",
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
    home: rrp_te(),
  ));
}

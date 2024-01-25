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

class vbr_te extends StatefulWidget {
  final String? userIdentifier;

  vbr_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<vbr_te> createState() => _vbr_teState();
}

class _vbr_teState extends State<vbr_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//83.ఓటింగ్ ప్రవర్తన

    Question(
      questionText: "ప్లానో మరియు రిగ్స్ ప్రకారం ఓటింగ్ ప్రవర్తన ఎలా నిర్వచించబడింది?",
      options:[
        "రాజకీయ ప్రవర్తన యొక్క ఒక రూపం",
        "ఓటు వేసే చర్య",
        "రాజకీయ ప్రచారాల అధ్యయనం",
        "రాజకీయ ప్రసంగాల విశ్లేషణ"
      ],
      correctAnswerIndex: 0,
      explanation:"ప్లానో మరియు రిగ్స్ ప్రకారం, ఓటింగ్ ప్రవర్తన అనేది రాజకీయ ప్రవర్తన యొక్క ఒక రూపంగా నిర్వచించబడింది. పబ్లిక్ ఎన్నికల్లో ప్రజలు ఎలా ఓటు వేస్తారు మరియు వారి ఓటింగ్ నిర్ణయాల వెనుక కారణాలను అధ్యయనం చేయడం ఇందులో ఉంటుంది.",
    ),

    Question(
      questionText: "ఓటింగ్ ప్రవర్తన యొక్క అధ్యయనంలో 'సెఫాలజీ' అనే పదాన్ని ప్రాచుర్యంలోకి తెచ్చిన ఘనత ఎవరు?",
      options:[
        "ఓయినం కులబిధు",
        "గోర్డాన్ మార్షల్",
        "NGS కిని",
        "అమెరికన్ రాజకీయ శాస్త్రవేత్తలు"
      ],
      correctAnswerIndex: 1,
      explanation:"ఓటింగ్ ప్రవర్తన యొక్క అధ్యయనంలో 'సెఫాలజీ' అనే పదాన్ని అమెరికన్ రాజకీయ శాస్త్రవేత్తలు మరియు రాజకీయ సామాజిక శాస్త్రవేత్తలు పాఠ్యాంశం ప్రకారం ప్రాచుర్యం పొందారు.",
    ),

    Question(
      questionText: "ఓటింగ్ ప్రవర్తనను అధ్యయనం చేయడం యొక్క ప్రాముఖ్యత ఏమిటి?",
      options:[
        "ఓటింగ్ చరిత్రను అర్థం చేసుకోవడం",
        "రాజకీయ ప్రచారాలను విశ్లేషించడం",
        "రాజకీయ సాంఘికీకరణ ప్రక్రియను అర్థం చేసుకోవడం",
        "ఎన్నికల మీద సోషల్ మీడియా ప్రభావాన్ని అన్వేషించడం"
      ],
      correctAnswerIndex: 2,
      explanation:"ఓటింగ్ ప్రవర్తనను అధ్యయనం చేయడం ముఖ్యమైనది, ఎందుకంటే ఇది రాజకీయ సాంఘికీకరణ ప్రక్రియను అర్థం చేసుకోవడం, ప్రజాస్వామ్యం యొక్క అంతర్గతీకరణను పరిశీలించడం, విప్లవాత్మక బ్యాలెట్ బాక్స్ యొక్క ప్రభావాన్ని నొక్కి చెప్పడం మరియు రాజకీయ అభివృద్ధి సందర్భంలో ఎన్నికల రాజకీయాల స్వభావాన్ని కొలవడంలో సహాయపడుతుంది.",
    ),

    Question(
      questionText: "రజనీ కొఠారి ప్రకారం, భారత రాజకీయాలలో ఒక విశేషమైన లక్షణం ఏమిటి?",
      options:[
        "ప్రాంతీయత",
        "సెక్యులరిజం",
        "కులతత్వం",
        "కమ్యూనలిజం"
      ],
      correctAnswerIndex: 2,
      explanation:"రజనీ కొఠారి ప్రకారం, భారత రాజకీయాలలో చెప్పుకోదగ్గ లక్షణం కులతత్వం. భారతీయ రాజకీయాలు తరచుగా కుల రాజకీయీకరణ, ఓటర్ల ప్రవర్తనను ప్రభావితం చేయడం ద్వారా వర్గీకరించబడతాయి.",
    ),

    Question(
      questionText: "భారతదేశంలో ఎన్నికల ప్రవర్తనను ప్రభావితం చేయడంలో మతం ఏ పాత్ర పోషిస్తుంది?",
      options:[
    "ఇది ఓటర్లపై ఎలాంటి ప్రభావం చూపదు.",
      "ఇది రాజకీయ పార్టీలు ఉపయోగించుకునే ముఖ్యమైన అంశం.",
      "ఓటింగ్ ప్రవర్తన యొక్క ప్రాథమిక నిర్ణయాధికారం మతం.",
      "రాజకీయ పార్టీలు మతం యొక్క ప్రభావాన్ని విస్మరిస్తాయి."
      ],
      correctAnswerIndex: 1,
      explanation:"భారతదేశంలో ఎన్నికల ప్రవర్తనను ప్రభావితం చేసే ముఖ్యమైన అంశం మతం. భారతదేశం లౌకిక దేశంగా ఉన్నప్పటికీ, రాజకీయ పార్టీలు తరచూ మతపరమైన ప్రచారంలో పాల్గొంటాయి మరియు ఓటర్ల మతపరమైన మనోభావాలను దోపిడీ చేస్తాయి.",
    ),

    Question(
      questionText: "పార్టీ నాయకుల ఆకర్షణీయమైన వ్యక్తిత్వం ఓటింగ్ ప్రవర్తనను ఎలా ప్రభావితం చేస్తుంది?",
      options:[
    "ఇది ఓటర్లపై ఎలాంటి ప్రభావం చూపదు.",
      "ఓటర్లు పార్టీ నాయకులచే ప్రభావితం చేయబడరు.",
      "ఆకర్షణీయ నాయకులు ఓటర్లపై గణనీయమైన ప్రభావాన్ని చూపుతారు.",
      "ఓటర్లు పార్టీ సిద్ధాంతాలను మాత్రమే పరిగణిస్తారు."
      ],
      correctAnswerIndex: 2,
      explanation:"జవహర్‌లాల్ నెహ్రూ, ఇందిరా గాంధీ, రాజీవ్ గాంధీ మరియు ఇతరుల వంటి పార్టీ నాయకుల ఆకర్షణీయమైన వ్యక్తిత్వం ఓటింగ్ ప్రవర్తనపై గణనీయమైన ప్రభావాన్ని చూపుతుంది. నాయకుల మహోన్నతమైన ఇమేజ్ ఓటర్లను వారి పార్టీలకు అనుకూలంగా మార్చగలదు.",
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
    home: vbr_te(),
  ));
}

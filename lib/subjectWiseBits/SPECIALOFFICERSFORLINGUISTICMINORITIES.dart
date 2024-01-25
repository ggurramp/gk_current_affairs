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

class SPECIALOFFICERSFORLINGUISTICMINORITIES extends StatefulWidget {
  final String? userIdentifier;

  SPECIALOFFICERSFORLINGUISTICMINORITIES({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<SPECIALOFFICERSFORLINGUISTICMINORITIES> createState() => _SPECIALOFFICERSFORLINGUISTICMINORITIESState();
}

class _SPECIALOFFICERSFORLINGUISTICMINORITIESState extends State<SPECIALOFFICERSFORLINGUISTICMINORITIES> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//51.SPECIAL OFFICERS FOR LINGUISTIC MINORITIES

    Question(
        questionText: "When was the provision for a Special Officer for Linguistic Minorities added to the Constitution?",
        options: ["1956", "1957", "1992", "2005"],
        correctAnswerIndex: 0,
        explanation: "The provision for a Special Officer for Linguistic Minorities was added to the Constitution in 1956 through the Seventh Constitutional Amendment Act."
    ),

    Question(
        questionText: "What duty is assigned to the Special Officer for Linguistic Minorities?",
        options: [
          "To investigate matters related to linguistic majorities.",
          "To monitor constitutional safeguards for linguistic minorities.",
          "To implement safeguards for linguistic minorities.",
          "To report to the Parliament on linguistic minorities' issues."
        ],
        correctAnswerIndex: 1,
        explanation: "The duty assigned to the Special Officer for Linguistic Minorities is to investigate matters related to the safeguards provided for linguistic minorities and report to the President."
    ),

    Question(
        questionText: "What role does the Commissioner for Linguistic Minorities (CLM) play?",
        options: [
          "Implementing educational policies.",
          "Monitoring the status of linguistic majorities.",
          "Interacting with states on issues related to linguistic minorities.",
          "Supervising the Commissioner for Backward Classes."
        ],
        correctAnswerIndex: 2,
        explanation: "The Commissioner for Linguistic Minorities (CLM) interacts with states and UTs on matters related to the implementation of Constitutional and Nationally Agreed Safeguards for linguistic minorities."
    ),

    Question(
        questionText: "What is mentioned in the vision of the CLM?",
        options: [
          "Equal opportunities for all linguistic minorities.",
          "Strengthening machinery for majority languages.",
          "Providing exclusive development for linguistic minorities.",
          "Ensuring protection of the rights of majority speakers."
        ],
        correctAnswerIndex: 0,
        explanation: "The vision of the CLM includes streamlining and strengthening machinery for effective implementation of Constitutional safeguards for linguistic minorities, providing them equal opportunities for inclusive development."
    ),

    Question(
        questionText: "Under which Constitutional Amendment Act was Article 350-B inserted, leading to the provision for a Special Officer for Linguistic Minorities?",
        options: ["First Amendment Act", "Seventh Amendment Act", "Fifteenth Amendment Act", "Twenty-Second Amendment Act"],
        correctAnswerIndex: 1,
        explanation: "Article 350-B, providing for a Special Officer for Linguistic Minorities, was inserted under the Seventh Amendment Act of 1956."
    ),

    Question(
        questionText: "What was the duty assigned to the Special Officer for Linguistic Minorities according to Article 350-B?",
        options: [
          "Regulate educational institutions.",
          "Investigate matters related to tribal rights.",
          "Investigate matters related to safeguards for linguistic minorities.",
          "Coordinate international relations."
        ],
        correctAnswerIndex: 2,
        explanation: "The duty of the Special Officer for Linguistic Minorities was to investigate matters related to the safeguards provided for linguistic minorities."
    ),

    Question(
        questionText: "Who appoints the Commissioner for Linguistic Minorities (CLM) and the regional officers?",
        options: [
          "Prime Minister",
          "Governor of each state",
          "President of India",
          "Union Minister for Minority Affairs"
        ],
        correctAnswerIndex: 2,
        explanation: "The Commissioner for Linguistic Minorities (CLM) and regional officers are appointed by the President of India."
    ),

    Question(
        questionText: "What role does the CLM play in interacting with states and union territories?",
        options: [
          "Financial regulation",
          "Law enforcement",
          "Implementing foreign policies",
          "Dealing with matters concerning the implementation of Constitutional safeguards for linguistic minorities."
        ],
        correctAnswerIndex: 3,
        explanation: "The CLM interacts with states/union territories on matters concerning the implementation of Constitutional safeguards for linguistic minorities."
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
    home: SPECIALOFFICERSFORLINGUISTICMINORITIES(),
  ));
}

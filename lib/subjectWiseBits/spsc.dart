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

class spsc extends StatefulWidget {
  final String? userIdentifier;

  spsc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<spsc> createState() => _spscState();
}

class _spscState extends State<spsc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//45.STATE PUBLIC SERVICE COMMISION

    Question(
      questionText: "What is the term limit for the chairman and members of a State Public Service Commission?",
      options: ["4 years", "6 years", "8 years", "10 years"],
      correctAnswerIndex: 1,
      explanation: "The chairman and members of a State Public Service Commission hold office for a term of six years or until they attain the age of 62 years, whichever is earlier.",
    ),
    Question(
      questionText: "What functions does the State Public Service Commission (SPSC) perform in relation to state services?",
      options: [
        "Conducts examinations for appointments to central services",
        "Conducts examinations for appointments to state services",
        "Advises only on matters related to civil services",
        "Handles matters related to cadre management and training"
      ],
      correctAnswerIndex: 2,
      explanation: "The State Public Service Commission (SPSC) conducts examinations for appointments to the services of the state and advises on matters related to methods of recruitment and principles for appointments to civil services.",
    ),

    Question(
      questionText: "What are the two main matters on which the SPSC is consulted and provides advice?",
      options: [
        "Matters related to foreign policy and economic policies",
        "Methods of recruitment and principles for appointments to civil services",
        "Classification of services and pay and service conditions",
        "Cadre management and training"
      ],
      correctAnswerIndex: 1,
      explanation: "The State Public Service Commission (SPSC) is consulted on matters related to methods of recruitment and principles for appointments to civil services.",
    ),
    Question(
        questionText: "What functions does the State Public Service Commission (SPSC) perform in relation to state services?",
        options: [
          "Conducts examinations for appointments to central services",
          "Conducts examinations for appointments to state services",
          "Advises only on matters related to civil services",
          "Handles matters related to cadre management and training"
        ],
        correctAnswerIndex: 1,
        explanation: "The State Public Service Commission (SPSC) conducts examinations for appointments to the services of the state and advises on matters related to methods of recruitment, principles for appointments, promotions, transfers, disciplinary matters, legal expenses, pension awards, and other matters referred by the governor."
    ),

    Question(
        questionText: "What limitations are mentioned regarding the matters on which the SPSC is not consulted?",
        options: [
          "Matters related to methods of recruitment",
          "Matters related to promotions",
          "Reservations of appointments or posts in favor of any backward class",
          "Appointments to Group C and Group D services"
        ],
        correctAnswerIndex: 2,
        explanation: "The SPSC is not consulted on matters related to reservations of appointments or posts in favor of any backward class, and certain other matters such as appointments to Group C and Group D services."
    ),

    Question(
        questionText: "What is the role of the State Public Service Commission (SPSC) in relation to the 'watchdog of merit system'?",
        options: [
          "Handles classification of services and pay conditions",
          "Advises on recruitment to state services",
          "Manages cadre and training of civil servants",
          "Consulted on matters related to disciplinary actions"
        ],
        correctAnswerIndex: 1,
        explanation: "The SPSC plays the role of the 'watchdog of merit system' in the state. It is concerned with the recruitment to the state services and advises the government on promotion and disciplinary matters."
    ),

    Question(
        questionText: "How are recommendations made by the SPSC treated by the state government?",
        options: [
          "Binding and must be followed",
          "Not considered by the government",
          "Only of advisory nature",
          "Mandatory for all state departments"
        ],
        correctAnswerIndex: 2,
        explanation: "Recommendations made by the State Public Service Commission (SPSC) are only of advisory nature and are not binding on the state government. The government can choose to accept or reject the advice."
    ),

    Question(
        questionText: "How does the emergence of the State Vigilance Commission (SVC) impact the role of the SPSC?",
        options: [
          "SPSC gains more authority",
          "SPSC's role becomes irrelevant",
          "Both bodies work independently",
          "SPSC has an edge over SVC"
        ],
        correctAnswerIndex: 3,
        explanation: "The emergence of the State Vigilance Commission (SVC) affects the role of the SPSC in disciplinary matters. However, being an independent constitutional body, the SPSC has an edge over the SVC."
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
    home: spsc(),
  ));
}

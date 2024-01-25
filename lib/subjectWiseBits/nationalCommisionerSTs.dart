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

class nationalCommisionerSTs extends StatefulWidget {
  final String? userIdentifier;

  nationalCommisionerSTs({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nationalCommisionerSTs> createState() => _nationalCommisionerSTsState();
}

class _nationalCommisionerSTsState extends State<nationalCommisionerSTs> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//49.NATIONAL COMMISSION FOR ST’S

    Question(
        questionText: "What constitutional article directly establishes the National Commission for Scheduled Tribes (STs)?",
        options: [
          "Article 342",
          "Article 337",
          "Article 338-A",
          "Article 340"
        ],
        correctAnswerIndex: 2,
        explanation: "The National Commission for Scheduled Tribes (STs) is directly established by Article 338-A of the Constitution."
    ),

    Question(
        questionText: "Why was a separate National Commission for STs established, distinct from the National Commission for SCs?",
        options: [
          "Geographical and cultural differences between the communities.",
          "Administrative feasibility of coordinating activities.",
          "Inadequacy of the Ministry of Tribal Affairs.",
          "The need to include SCs and STs under a single commission."
        ],
        correctAnswerIndex: 0,
        explanation: "Geographically and culturally different from the Scheduled Castes (SCs), the Scheduled Tribes (STs) required a separate commission. This distinction arose due to their distinct problems and the necessity for focused welfare and development efforts."
    ),

    Question(
        questionText: "What role does the Ministry of Tribal Affairs play in coordinating activities related to Scheduled Tribes (STs)?",
        options: [
          "It focuses on Scheduled Castes (SCs) only.",
          "It performs administrative functions for SCs and STs.",
          "It has no role in coordinating activities for SCs and STs.",
          "It coordinates all activities related to Scheduled Tribes (STs)."
        ],
        correctAnswerIndex: 3,
        explanation: "The Ministry of Tribal Affairs coordinates all activities related to the Scheduled Tribes (STs)."
    ),
    Question(
        questionText: "What are the functions specified by the President for the National Commission for Scheduled Tribes (STs) in relation to the protection, welfare, development, and advancement of the STs?",
        options: [
          "Only measures for conferring ownership rights in minor forest produce.",
          "Measures for safeguarding tribal rights over mineral resources only.",
          "Measures for tribal development and more viable livelihood strategies.",
          "Measures solely focused on preventing alienation of tribal people from land."
        ],
        correctAnswerIndex: 2,
        explanation: "The functions specified by the President for the National Commission for Scheduled Tribes (STs) include measures for tribal development and more viable livelihood strategies."
    ),

    Question(
        questionText: "What are the measures specified for the National Commission for Scheduled Tribes (STs) to ensure the full implementation of the Provisions of Panchayats (Extension to the Scheduled Areas) Act, 1996?",
        options: [
          "Enhancing tribal representation in panchayats.",
          "Strengthening tribal representation in state legislatures.",
          "Ensuring financial assistance to tribal panchayats.",
          "Coordinating social afforestation programs in tribal areas."
        ],
        correctAnswerIndex: 0,
        explanation: "Measures specified for the National Commission for Scheduled Tribes (STs) include ensuring the full implementation of the Provisions of Panchayats (Extension to the Scheduled Areas) Act, 1996, by enhancing tribal representation in panchayats."
    ),

    Question(
        questionText: "What powers does the National Commission for Scheduled Tribes (STs) have while investigating matters or inquiring into complaints?",
        options: [
          "Summoning and enforcing attendance of people only.",
          "Issuing summons for the examination of witnesses and documents only.",
          "Receiving evidence on affidavits and issuing summons only.",
          "All of the above powers."
        ],
        correctAnswerIndex: 3,
        explanation: "The National Commission for Scheduled Tribes (STs) has the power to summon and enforce attendance, issue summons for the examination of witnesses and documents, receive evidence on affidavits, and more."
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
    home: nationalCommisionerSTs(),
  ));
}

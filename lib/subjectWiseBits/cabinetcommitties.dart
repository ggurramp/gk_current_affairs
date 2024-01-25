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

class cabinetcommitties extends StatefulWidget {
  final String? userIdentifier;

  cabinetcommitties({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cabinetcommitties> createState() => _cabinetcommittiesState();
}

class _cabinetcommittiesState extends State<cabinetcommitties> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "What role do Groups of Ministers (GoMs) play in the Indian government?",
        options: [
          "They are permanent bodies responsible for decision-making on behalf of the Cabinet.",
          "They make recommendations to the Cabinet on emergent issues and critical problem areas.",
          "They have the authority to disband Cabinet committees.",
          "They are exclusively focused on administrative reforms."
        ],
        correctAnswerIndex: 1,
        explanation: "Groups of Ministers (GoMs) in the Indian government make recommendations to the Cabinet on emergent issues and critical problem areas."
    ),

    Question(
        questionText: "According to the Second Administrative Reforms Commission of India, what was one of the observations regarding the working of GoMs?",
        options: [
          "GoMs meet regularly, leading to prompt decision-making.",
          "The large number of GoMs has resulted in significant delays on major issues.",
          "GoMs are permanent bodies with a clear mandate.",
          "The use of GoMs is not recommended for effective coordination."
        ],
        correctAnswerIndex: 1,
        explanation: "The Commission observed that the constitution of a large number of GoMs has resulted in many not being able to meet regularly, leading to significant delays on major issues."
    ),

    Question(
        questionText: "What recommendation did the Second Administrative Reforms Commission make regarding the functioning of GoMs?",
        options: [
          "Form more GoMs to address various issues.",
          "Ensure GoMs have a permanent status for ongoing coordination.",
          "Use GoMs selectively and empower them to arrive at decisions on behalf of the Cabinet with prescribed time limits.",
          "Disband all existing GoMs to streamline coordination mechanisms."
        ],
        correctAnswerIndex: 2,
        explanation: "The Commission recommended more selective use of GoMs, empowering them to arrive at decisions on behalf of the Cabinet with prescribed time limits for effective coordination."
    ),
    Question(
        questionText: "What is the primary function of the Cabinet Committee on Political Affairs?",
        options: [
          "Coordinate economic activities.",
          "Decide higher-level appointments.",
          "Deal with policy matters concerning domestic and foreign affairs.",
          "Look after the progress of government business in Parliament."
        ],
        correctAnswerIndex: 2,
        explanation: "The Cabinet Committee on Political Affairs deals with all policy matters concerning domestic and foreign affairs."
    ),
    Question(
        questionText: "What is a notable feature of Cabinet Committees regarding their emergence?",
        options: [
          "They are explicitly mentioned in the Constitution.",
          "They are established through constitutional amendments.",
          "They are extra-constitutional and not mentioned in the Constitution.",
          "They are created by a separate constitutional body."
        ],
        correctAnswerIndex: 2,
        explanation: "Cabinet Committees are extra-constitutional in emergence and are not mentioned in the Constitution."
    ),

    Question(
        questionText: "How are Cabinet Committees classified based on their nature?",
        options: [
          "Permanent and temporary",
          "Standing and ad hoc",
          "Constitutional and non-constitutional",
          "Central and state"
        ],
        correctAnswerIndex: 1,
        explanation: "Cabinet Committees are classified into two types: standing (permanent) and ad hoc (temporary)."
    ),

    Question(
        questionText: "Who sets up Cabinet Committees, and why does their number, nomenclature, and composition vary?",
        options: [
          "Established by Parliament for specific tasks.",
          "Set up by the President based on constitutional provisions.",
          "Set up by the Prime Minister according to the exigencies of the time and requirements of the situation.",
          "Formed by the Chief Justice to address legal issues."
        ],
        correctAnswerIndex: 2,
        explanation: "Cabinet Committees are set up by the Prime Minister according to the exigencies of the time and requirements of the situation, leading to variations in their number, nomenclature, and composition."
    ),

    Question(
        questionText: "Who typically heads Cabinet Committees?",
        options: [
          "Senior Cabinet Ministers",
          "Non-Cabinet Ministers",
          "Prime Minister",
          "Chairman of the ruling party"
        ],
        correctAnswerIndex: 2,
        explanation: "Cabinet Committees are mostly headed by the Prime Minister, and sometimes other senior Cabinet Ministers act as their Chairman."
    ),

    Question(
        questionText: "What is the primary function of Cabinet Committees?",
        options: [
          "Formulate proposals for the consideration of the Cabinet.",
          "Examine policy issues in detail.",
          "Take final decisions without Cabinet review.",
          "Review decisions made by the Cabinet."
        ],
        correctAnswerIndex: 0,
        explanation: "Cabinet Committees not only formulate proposals for the consideration of the Cabinet but also take decisions, although the Cabinet can review their decisions."
    ),

    Question(
        questionText: "How do Cabinet Committees contribute to the functioning of the Cabinet?",
        options: [
          "They increase the workload of the Cabinet.",
          "They replace the Cabinet in decision-making.",
          "They facilitate in-depth examination of policy issues and effective coordination.",
          "They operate independently of the Cabinet."
        ],
        correctAnswerIndex: 2,
        explanation: "Cabinet Committees are an organizational device to reduce the enormous workload of the Cabinet. They also facilitate in-depth examination of policy issues and effective coordination."
    ),

    Question(
        questionText: "How many Cabinet Committees are currently functional?",
        options: ["5", "7", "8", "10"],
        correctAnswerIndex: 2,
        explanation: "At present, there are 8 functional Cabinet Committees."
    ),

    Question(
        questionText: "Which Cabinet Committee is often described as a 'Super-Cabinet' and considered the most powerful?",
        options: [
          "Cabinet Committee on Political Affairs",
          "Cabinet Committee on Employment and Skill Development",
          "Cabinet Committee on Security",
          "Cabinet Committee on Economic Affairs"
        ],
        correctAnswerIndex: 0,
        explanation: "Of all the Cabinet Committees, the most powerful is the Political Affairs Committee, often described as a Super-Cabinet."
    ),

    Question(
        questionText: "Which Cabinet Committee directs and coordinates governmental activities in the economic sphere?",
        options: [
          "Cabinet Committee on Accommodation",
          "Cabinet Committee on Parliamentary Affairs",
          "Cabinet Committee on Economic Affairs",
          "Cabinet Committee on Investment and Growth"
        ],
        correctAnswerIndex: 2,
        explanation: "The Cabinet Committee on Economic Affairs directs and coordinates governmental activities in the economic sphere."
    ),

    Question(
        questionText: "What does the Appointments Committee of the Cabinet decide?",
        options: [
          "Allotment of government accommodation",
          "Higher-level appointments in the economic sector",
          "Appointments in the Central Secretariat, Public Enterprises, Banks, and Financial Institutions",
          "Policy matters aimed at accelerating capital inflows"
        ],
        correctAnswerIndex: 2,
        explanation: "The Appointments Committee of the Cabinet decides all higher-level appointments in the Central Secretariat, Public Enterprises, Banks, and Financial Institutions."
    ),

    Question(
        questionText: "Which Cabinet Committee is responsible for dealing with issues related to defence, law and order, internal security, and atomic energy?",
        options: [
          "Cabinet Committee on Political Affairs",
          "Cabinet Committee on Security",
          "Cabinet Committee on Investment and Growth",
          "Cabinet Committee on Accommodation"
        ],
        correctAnswerIndex: 1,
        explanation: "The Cabinet Committee on Security deals with all issues relating to defence, law and order, internal security, and atomic energy."
    ),

    Question(
        questionText: "What is the focus of the Cabinet Committee on Investment and Growth?",
        options: [
          "Allotment of government accommodation",
          "Enhancing employability of the workforce",
          "Improving ease of doing business",
          "Developing skills and increasing women workforce participation"
        ],
        correctAnswerIndex: 2,
        explanation: "The Cabinet Committee on Investment and Growth deals with all policy matters aimed at accelerating capital inflows, export promotion, import substitution, and improving ease of doing business."
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
    home: cabinetcommitties(),
  ));
}

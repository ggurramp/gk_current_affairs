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

class constitution extends StatefulWidget {
  final String? userIdentifier;

  constitution({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<constitution> createState() => _constitutionState();
}

class _constitutionState extends State<constitution> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What is the Latin origin of the term 'constitution' and what does it mean?",
      options: ["Constituo", "Constitutus", "Constituere", "Constitutionem"],
      correctAnswerIndex: 2,
      explanation: "The Latin origin of the term 'constitution' is 'Constituere,' which means 'to establish' or 'to set up.'",
    ),

    Question(
      questionText: "According to Gilchrist, how does he define the constitution?",
      options: ["A set of laws", "A body of rules determining government organization", "Principles governing individual rights", "A foundation for political ideologies"],
      correctAnswerIndex: 1,
      explanation: "According to Gilchrist, the constitution consists of rules or laws determining the organization of government and the distribution of powers.",
    ),

    Question(
      questionText: "What are the functions identified by Elliot Bulmer regarding a constitution?",
      options: [
        "Define the boundaries of the political community",
        "Express the identity and values of a national community",
        "Establish and regulate political institutions",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Elliot Bulmer identified functions of a constitution, including defining boundaries, expressing identity and values, and establishing/regulating political institutions.",
    ),

    Question(
      questionText: "What qualities are considered essential for a good constitution?",
      options: ["Lengthiness", "Ambiguity", "Stability", "Rigidity"],
      correctAnswerIndex: 2,
      explanation: "Qualities of a good constitution include stability, clarity, definiteness, and suitability to the needs of the people.",
    ),

    Question(
      questionText: "How are constitutions classified based on the method of amendment?",
      options: ["Rigid and Flexible", "Evolved and Enacted", "Federal and Unitary", "Written and Unwritten"],
      correctAnswerIndex: 0,
      explanation: "Constitutions are classified as rigid or flexible based on the method of amendment.",
    ),

    Question(
      questionText: "What is the distinction between a written constitution and an unwritten constitution?",
      options: ["Length of the document", "Incorporation of provisions", "Method of amendment", "Enactment process"],
      correctAnswerIndex: 1,
      explanation: "The distinction between a written and unwritten constitution is based on the incorporation of provisions, with written having a documented form.",
    ),

    Question(
      questionText: "How did Lord James Bryce classify constitutions based on the method of amendment?",
      options: ["Rigid and Flexible", "Evolved and Enacted", "Federal and Unitary", "Procedural and Prescriptive"],
      correctAnswerIndex: 3,
      explanation: "Lord James Bryce classified constitutions as procedural and prescriptive based on the method of amendment.",
    ),

    Question(
      questionText: "What is the classification of constitutions based on the relationship between national and regional governments?",
      options: ["Evolved and Enacted", "Federal and Unitary", "Rigid and Flexible", "Procedural and Prescriptive"],
      correctAnswerIndex: 1,
      explanation: "Constitutions are classified as federal or unitary based on the relationship between national and regional governments.",
    ),

    Question(
      questionText: "According to Louis Henkin, what are the eight elements of constitutionalism?",
      options: [
        "Authoritarian rule",
        "Civilian control of the military",
        "Popular sovereignty",
        "Unlimited government power"
      ],
      correctAnswerIndex: 2,
      explanation: "Louis Henkin identified eight elements of constitutionalism, including popular sovereignty, rule of law, and civilian control of the military.",
    ),

    Question(
        questionText: "What is the difference between constitution and constitutionalism?",
        options: [
          "Constitution focuses on government organization, while constitutionalism emphasizes limitations on government power.",
          "Constitutionalism is about unlimited government power, while constitution is about democratic governance.",
          "Both terms have the same meaning.",
          "Constitutionalism is the Latin origin of the term 'constitution.'"
        ],
        correctAnswerIndex: 0,
        explanation: "Constitution focuses on government organization, while constitutionalism emphasizes limitations on government power."
    )



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
    home: constitution(),
  ));
}

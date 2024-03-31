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

class erd extends StatefulWidget {
  final String? userIdentifier;

  erd({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<erd> createState() => _erdState();
}

class _erdState extends State<erd> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What is the main determinant of exchange rates between currencies according to the text?",
      options: [
        "Government policies",
        "Income levels in different countries",
        "Demand and supply of currencies",
        "International trade agreements"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the text, exchange rates are primarily determined by the demand and supply of currencies.",
    ),

    Question(
      questionText: "What is the term used to describe economies that predominantly use a foreign currency for transaction-related purposes and are relatively small, depending on the US? ",
      options: ["Dollarized economies", "Pegged economies", "Convertibility economies", "Managed exchange rate economies"],
      correctAnswerIndex: 0,
      explanation: "Economies that predominantly use a foreign currency for transaction-related purposes and are relatively small, dependent on the US are known as 'dollarized economies' such as Panama, El Salvador, and Ecuador.",
    ),

    Question(
      questionText: "What was the initial exchange rate mechanism adopted by post-Independence India?",
      options: ["Managed exchange rate", "Full float and full convertibility", "Fixed exchange rate system with pound sterling", "Pegged exchange rates and full convertibility"],
      correctAnswerIndex: 2,
      explanation: "Post-Independence India initially adopted a fixed exchange rate mechanism with rupee exchanged to pound sterling and vice versa at a 'fixed rate' as determined by the RBI, being the central bank of the country.",
    ),

    Question(
      questionText: "What term describes the interference of the central bank in free markets to influence exchange rates?",
      options: ["Dirty floating", "Pure floating", "Market-oriented exchange rate", "Stable exchange rate"],
      correctAnswerIndex: 0,
      explanation: "The interference of the central bank in free markets to influence exchange rates is referred to as 'dirty floating'.",
    ),

    Question(
      questionText: "What concept implies letting the exchange rate be determined outside the central bank level and accepting it as a variable?",
      options: ["Market manipulation", "Centralized determination", "Managed exchange rate", "Fixed exchange rate"],
      correctAnswerIndex: 2,
      explanation: "The concept of letting the exchange rate be determined outside the central bank level and accepting it as a variable is known as 'managed exchange rate'.",
    ),

    Question(
      questionText: "How does an appreciating currency impact a country's exports?",
      options: ["Boosts exports", "Makes exports more expensive", "Has no effect on exports", "Reduces export volume"],
      correctAnswerIndex: 1,
      explanation: "An appreciating currency makes a country's exports more expensive in the international market, potentially reducing their competitiveness.",
    ),

    Question(
      questionText: "What is the term used to describe economies that predominantly use a foreign currency for transaction-related purposes and are relatively small, depending on the US? ",
      options: ["Dollarized economies", "Pegged economies", "Convertibility economies", "Managed exchange rate economies"],
      correctAnswerIndex: 0,
      explanation: "Economies that predominantly use a foreign currency for transaction-related purposes and are relatively small, dependent on the US are known as 'dollarized economies' such as Panama, El Salvador, and Ecuador.",
    ),

    Question(
      questionText: "What was the initial exchange rate mechanism adopted by post-Independence India?",
      options: ["Managed exchange rate", "Full float and full convertibility", "Fixed exchange rate system with pound sterling", "Pegged exchange rates and full convertibility"],
      correctAnswerIndex: 2,
      explanation: "Post-Independence India initially adopted a fixed exchange rate mechanism with rupee exchanged to pound sterling and vice versa at a 'fixed rate' as determined by the RBI, being the central bank of the country.",
    ),

   Question(
      questionText: "What term describes the interference of the central bank in free markets to influence exchange rates?",
      options: ["Dirty floating", "Pure floating", "Market-oriented exchange rate", "Stable exchange rate"],
      correctAnswerIndex: 0,
      explanation: "The interference of the central bank in free markets to influence exchange rates is referred to as 'dirty floating'.",
    ),

     Question(
      questionText: "What concept implies letting the exchange rate be determined outside the central bank level and accepting it as a variable?",
      options: ["Market manipulation", "Centralized determination", "Managed exchange rate", "Fixed exchange rate"],
      correctAnswerIndex: 2,
      explanation: "The concept of letting the exchange rate be determined outside the central bank level and accepting it as a variable is known as 'managed exchange rate'.",
    ),

   Question(
      questionText: "How does an appreciating currency impact a country's exports?",
      options: ["Boosts exports", "Makes exports more expensive", "Has no effect on exports", "Reduces export volume"],
      correctAnswerIndex: 1,
      explanation: "An appreciating currency makes a country's exports more expensive in the international market, potentially reducing their competitiveness.",
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
              final isCorrectAnswer = optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8.0), // Add space between boxes
                  decoration: BoxDecoration(
                    color: _selectedAnswerIndex == optionIndex
                        ? (isCorrectAnswer ? Colors.green[200] : Colors.red[300])
                        : Colors.white,
                    border: Border.all(
                      color: _selectedAnswerIndex == optionIndex ? Colors.blue : Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(optionText),
                    leading: Radio<int>(
                      value: optionIndex,
                      groupValue: _selectedAnswerIndex,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedAnswerIndex = value;
                          _userAnswers[_currentQuestionIndex] = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
    home: erd(),
  ));
}

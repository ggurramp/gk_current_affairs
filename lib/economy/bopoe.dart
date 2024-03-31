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

class bope extends StatefulWidget {
  final String? userIdentifier;

  bope({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<bope> createState() => _bopeState();
}

class _bopeState extends State<bope> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What is the fundamental aspect of an open economy's ability with regard to foreign currencies?",
      options: ["Ability to earn foreign currencies through exports", "Ability to earn foreign currencies through imports", "Dependence on foreign currencies for imports", "Dependence on foreign currencies for exports"],
      correctAnswerIndex: 0,
      explanation: "The ability of an open economy relates to earning foreign currencies through exports to cover import needs.",
    ),

    Question(
      questionText: "Which account in the Balance of Payments (BOP) records transactions related to foreign currencies from exports and imports of services?",
      options: ["Balance of trade (BOT)", "Balance on invisibles (BOI)", "Balance on current account (BCA)", "Balance of services (BOS)"],
      correctAnswerIndex: 1,
      explanation: "The Balance on invisibles (BOI) accounts for transactions in foreign currencies from exports and imports of services.",
    ),

    Question(
      questionText: "What is encompassed within the Balance of Invisibles (BOI) in the Balance of Payments (BOP)?",
      options: ["Only inward and outward tourism", "Transactions for inward and outward remittances only", "Transactions related to inward and outward education, remittances, tourism, and medical treatment", "Transactions involving import and export of goods"],
      correctAnswerIndex: 2,
      explanation: "The BOI includes transactions in foreign currencies related to inward and outward education, remittances, tourism, and medical treatment.",
    ),

    Question(
      questionText: "How are Current Account Surplus (CAS) and Current Account Deficit (CAD) determined within the Balance of Payments?",
      options: ["CAS arises from a deficit on BOT and BOI, while CAD results from a deficit on BOT and a surplus on BOI", "CAS arises from a surplus on BOT and BOI, while CAD results from a deficit on BOT and BOI", "CAS occurs from a surplus on BOT and a deficit on BOI, while CAD results from a surplus on BOT and a deficit on BOI", "CAS occurs from a deficit on BOT and a surplus on BOI, while CAD results from a surplus on BOT and a deficit on BOI"],
      correctAnswerIndex: 0,
      explanation: "Current Account Surplus (CAS) emerges from a deficit on BOT and BOI, while Current Account Deficit (CAD) results from a deficit on BOT and a surplus on BOI.",
    ),

    Question(
      questionText: "What constitutes the Balance of Payments (BOP) in an economy?",
      options: ["Inflows and outflows of foreign currencies", "Inflows of foreign currencies only", "Outflows of foreign currencies only", "Exchange rates between currencies"],
      correctAnswerIndex: 0,
      explanation: "The Balance of Payments (BOP) encompasses the inflows and outflows of foreign currencies in an economy.",
    ),

    Question(
      questionText: "How is the Balance of Payments (BOP) maintained to achieve a balance?",
      options: ["By having a surplus on both the current account and capital account", "By ensuring there is a deficit on both the current account and capital account", "By matching inflows and outflows of foreign currencies", "By ignoring capital account transactions"],
      correctAnswerIndex: 2,
      explanation: "The BOP is maintained by ensuring there is a match between inflows and outflows of foreign currencies.",
    ),

    Question(
      questionText: "What does a Current Account Surplus (CAS) represent in an economy?",
      options: ["Idle money that does not contribute to the economy's growth", "Deficit in foreign currencies", "Borrowings for investments", "Inflows exceeding outflows of foreign currencies"],
      correctAnswerIndex: 0,
      explanation: "A Current Account Surplus (CAS) represents idle money that does not contribute to the economy's growth.",
    ),

    Question(
      questionText: "What distinguishes a crisis in an economy with a Current Account Deficit (CAD) from a manageable situation?",
      options: ["CAD met by borrowings is a crisis; CAD met by other inflows is manageable", "CAD met by inflows is a crisis; CAD met by borrowings is manageable", "CAD is always a crisis regardless of how it's met", "CAD is never a cause for concern"],
      correctAnswerIndex: 0,
      explanation: "A crisis occurs when a Current Account Deficit (CAD) is met through borrowings, while a CAD met by other inflows is manageable.",
    ),


    Question(
      questionText: "What is the primary responsibility of the Reserve Bank of India (RBI) in an open economy?",
      options: ["Regulating imports and exports", "Maintaining the Balance of Payments (BOP)", "Determining exchange rates", "Implementing fiscal policies"],
      correctAnswerIndex: 1,
      explanation: "The Reserve Bank of India (RBI) is responsible for maintaining the Balance of Payments (BOP) in an open economy.",
    ),

    Question(
      questionText: "What are some examples of transactions recorded in the Balance of Invisibles (BOI)?",
      options: ["Imports and exports of goods", "Inward and outward tourism, remittances, education", "Foreign investment and capital flows", "Government borrowings and grants"],
      correctAnswerIndex: 1,
      explanation: "The BOI records transactions related to inward and outward tourism, remittances, education, and medical treatment in foreign currencies.",
    ),

    Question(
      questionText: "In the context of the Balance of Payments (BOP), what does a deficit on the Current Account imply?",
      options: ["More inflows of foreign currencies than outflows", "More outflows of foreign currencies than inflows", "A surplus of inflows over outflows", "A balanced state of inflows and outflows"],
      correctAnswerIndex: 1,
      explanation: "A deficit on the Current Account means that outflows of foreign currencies exceed the inflows in an economy.",
    ),

    Question(
      questionText: "Why is a high Current Account Deficit (CAD) considered a concern in open economies?",
      options: ["It indicates a lack of government intervention", "It leads to excessive inflation", "It might result in economic crisis if not managed well", "It suggests a surplus in the capital account"],
      correctAnswerIndex: 2,
      explanation: "A high CAD can be a concern as it might lead to economic crisis if not managed well due to potential issues with repayment of borrowings.",
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
    home: bope(),
  ));
}

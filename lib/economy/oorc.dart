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

class oorcs extends StatefulWidget {
  final String? userIdentifier;

  oorcs({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<oorcs> createState() => _oorcsState();
}

class _oorcsState extends State<oorcs> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What were the primary causes of the US crisis in 2008?",
      options: ["Financial sector crisis and over-leveraging", "Fiscal crisis and tax regulations", "Lack of trade integration and unemployment", "Global financial collapse and sub-prime lending"],
      correctAnswerIndex: 0,
      explanation: "The primary causes of the US crisis in 2008 were the financial sector crisis and over-leveraging.",
    ),

    Question(
      questionText: "What characterized the US crisis of 2011?",
      options: ["Fiscal surplus and increased spending", "Monetary stability and reduced deficit", "Austerity measures and government spending", "Tax revisions and fiscal reforms"],
      correctAnswerIndex: 2,
      explanation: "The US crisis of 2011 was characterized by austerity measures and government spending challenges.",
    ),

    Question(
        questionText: "What structural issues plagued the Euro zone according to the text?",
        options: ["Uniform economic development and stable currency", "Diverse economies and differing monetary strengths", "Unified fiscal policies and current account surplus", "High GDP ratios and fiscal stability"],
        correctAnswerIndex: 1,
        explanation: "The Euro zone faced structural issues such as diverse economies and differing monetary strengths among member countries."
    ),

    Question(
      questionText: "What led to the Euro zone crisis as described in the text?",
      options: ["Sovereign debt and trade imbalance", "Government debt and fiscal union", "High borrowing and monetary surplus", "Current account deficit and fiscal excesses"],
      correctAnswerIndex: 1,
      explanation: "The Euro zone crisis stemmed from sovereign debt and the absence of a fiscal union.",
    ),

    Question(
      questionText: "What distinguished the Euro zone economies in terms of monetary strengths?",
      options: ["Common currency acceptance and stable economic growth", "Uniform economic activities and resource levels", "Strong and weak currency histories pre-Euro adoption", "Fiscal stability and debt management strategies"],
      correctAnswerIndex: 2,
      explanation: "The Euro zone economies differed in terms of monetary strengths due to some having strong pre-Euro currencies while others had weaker ones.",
    ),

    Question(
      questionText: "What complex financial products contributed to the US crisis of 2008?",
      options: ["Securities and mutual funds", "Over-leveraged bonds and derivatives", "Stock options and government securities", "Currency swaps and international bonds"],
      correctAnswerIndex: 1,
      explanation: "The crisis in 2008 was fueled by over-leveraged bonds and derivatives in the financial sector.",
    ),

    Question(
      questionText: "What measure did the US government take to combat the crisis in 2011?",
      options: ["Raising tax rates and fiscal surplus", "Monetary tightening and austerity measures", "Quantitative easing and increased deficit", "Tax cuts and fiscal stimulus"],
      correctAnswerIndex: 3,
      explanation: "During the 2011 crisis, the US government resorted to tax cuts and fiscal stimulus as a measure to address the situation.",
    ),

    Question(
      questionText: "What characterized the fiscal crisis in the US during 2011?",
      options: ["Reduced spending and lower taxes", "Increased borrowing and fiscal discipline", "Monetary stability and surplus budgets", "Austerity measures and debt ceiling"],
      correctAnswerIndex: 3,
      explanation: "The fiscal crisis in the US during 2011 was marked by austerity measures and concerns over the debt ceiling.",
    ),

    Question(
      questionText: "What distinguished the Euro zone economies in terms of fiscal stability?",
      options: ["Similar fiscal policies and budgetary discipline", "Unified debt management and surplus budgets", "Diverse fiscal strategies and structural imbalance", "Harmonized deficit-to-GDP ratios and reduced borrowing"],
      correctAnswerIndex: 2,
      explanation: "The Euro zone economies varied in terms of fiscal stability due to diverse fiscal strategies and structural imbalances.",
    ),

    Question(
      questionText: "What issue did the Euro zone face due to differing monetary strengths among member countries?",
      options: ["Currency surplus and trade imbalance", "Reduced debt levels and fiscal stability", "Current account deficit and fiscal austerity", "Challenges in creating a uniform monetary union"],
      correctAnswerIndex: 3,
      explanation: "Differing monetary strengths among Euro zone countries posed challenges in creating a uniform monetary union.",
    ),

    Question(
      questionText: "What type of crisis did Cyprus face?",
      options: ["Fiscal crisis", "Banking sector crisis", "Sovereign debt crisis", "Economic downturn"],
      correctAnswerIndex: 1,
      explanation: "Cyprus encountered a banking sector crisis due to unregulated business volumes far exceeding its GDP.",
    ),

    Question(
      questionText: "What was the cause of Greece's debt crisis?",
      options: ["Huge government subsidies", "Rapid economic growth", "Excessive spending on infrastructure", "High sovereign debt levels"],
      correctAnswerIndex: 3,
      explanation: "Greece faced a debt crisis due to its excessively high levels of sovereign debt, leading to a possible default.",
    ),

    Question(
      questionText: "What measures did Greece take to address its debt crisis?",
      options: ["Increased subsidies and reduced austerity measures", "Tax cuts and increased public spending", "Austerity measures and privatization", "Reduced tax rates and early retirement incentives"],
      correctAnswerIndex: 2,
      explanation: "Greece implemented austerity measures and privatization, along with tax reforms, to combat its debt crisis.",
    ),

    Question(
      questionText: "What is the abbreviation 'Brexit' referring to?",
      options: ["British immigration policy", "British currency crisis", "British economic reform", "British exit from the European Union"],
      correctAnswerIndex: 3,
      explanation: "'Brexit' stands for 'British exit,' representing the decision of the UK to leave the European Union.",
    ),

    Question(
      questionText: "What impact did Brexit have on global markets?",
      options: ["Stabilized global economies", "Resulted in higher stock prices", "Caused a surge in the British pound", "Caused disruption and turmoil in global markets"],
      correctAnswerIndex: 3,
      explanation: "Brexit caused disruption and turmoil in global markets, leading to fluctuations in the British pound and global instability.",
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


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

class global_consensus extends StatefulWidget {
  final String? userIdentifier;

  global_consensus({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<global_consensus> createState() => _global_consensusState();
}

class _global_consensusState extends State<global_consensus> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What should the recovery of economies following a global crisis be seen from?",
      options: ["Global perspective", "Country perspective", "Regional perspective", "Economic perspective"],
      correctAnswerIndex: 0,
      explanation: "Recovery of economies post-global crisis should be viewed from a global perspective rather than a country-specific viewpoint.",
    ),

    Question(
      questionText: "What shape is mentioned to represent the nature of recovery post-crisis?",
      options: ["V-shaped", "W-shaped", "L-shaped", "U-shaped"],
      correctAnswerIndex: 3,
      explanation: "The nature of recovery is suggested to be U-shaped, depicting a more elongated bottom and a slower process of recovery.",
    ),

    Question(
      questionText: "What is the importance emphasized for the global economy in the troubled times?",
      options: ["Return to neo-protectionism", "Increased trade across countries", "Market failure resolution", "Strict government regulations"],
      correctAnswerIndex: 1,
      explanation: "Increased trade across countries is stressed upon as crucial for the revival of economies in challenging times.",
    ),

    Question(
      questionText: "What structural issues need to be addressed for strengthening the global financial system?",
      options: ["Political regulations", "Ethical reforms", "Risk assessment capabilities", "Trade barriers"],
      correctAnswerIndex: 2,
      explanation: "Structural issues like enhancing risk assessment capabilities are highlighted as essential for strengthening the global financial system.",
    ),

    Question(
      questionText: "What role should the IMF be encouraged to play in relation to the global financial system?",
      options: ["Providing cure", "Addressing political differences", "Playing a larger role in global supervision", "Regulating trade policies"],
      correctAnswerIndex: 2,
      explanation: "The IMF is suggested to play a larger role in global supervision rather than solely providing a cure for financial crises.",
    ),

    Question(
      questionText: "What characterizes the crisis faced by Cyprus?",
      options: ["Fiscal crisis", "Sovereign debt crisis", "Banking sector crisis", "Monetary policy crisis"],
      correctAnswerIndex: 2,
      explanation: "The crisis in Cyprus is classified as a 'banking sector crisis' due to the high business volume in comparison to its GDP.",
    ),

    Question(
      questionText: "What was the impact of the Greek debt crisis on the country's economy?",
      options: ["Stagnant growth", "Economic expansion", "Rising employment", "Decrease in debt-to-GDP ratio"],
      correctAnswerIndex: 0,
      explanation: "The Greek debt crisis led to a significant reduction in the country's economic growth, resulting in a 25 percent contraction.",
    ),

    Question(
      questionText: "What does 'Brexit' stand for?",
      options: ["Benevolent exit", "Breakthrough exit", "British exit", "Betterment exit"],
      correctAnswerIndex: 2,
      explanation: "Brexit stands for 'British exit,' referring to the United Kingdom's decision to leave the European Union.",
    ),

    Question(
      questionText: "Which perspective is recommended to address any crisis with global implications?",
      options: ["Country-specific view", "Local viewpoint", "Regional stance", "Global perspective"],
      correctAnswerIndex: 3,
      explanation: "To tackle crises with global implications, a 'global perspective' is suggested rather than a localized or country-specific approach.",
    ),

    Question(
      questionText: "What is highlighted as an essential factor in the resolution of any crisis with global implications?",
      options: ["Return to protectionism", "Collective leadership", "Market failure acceptance", "Strict government interventions"],
      correctAnswerIndex: 1,
      explanation: "Effective 'collective leadership' is emphasized as crucial in addressing crises with global implications.",
    ),

    Question(
      questionText: "What is the suggested approach towards stimulus and bailout packages in the post-crisis scenario?",
      options: ["Short-term and permanent", "Long-term and withdrawable", "Temporary and indefinite", "Seasonal and flexible"],
      correctAnswerIndex: 1,
      explanation: "The text recommends viewing stimulus and bailout packages as 'short-term and withdrawable,' to be replaced by sustained long-term reforms.",
    ),

    Question(
      questionText: "What is the anticipated shape of the recovery for economies post-crisis?",
      options: ["L-shaped", "W-shaped", "V-shaped", "U-shaped"],
      correctAnswerIndex: 3,
      explanation: "The text suggests that the nature of recovery for economies post-crisis would be 'U-shaped,' with a prolonged bottom, indicating a longer recovery period.",
    ),

    Question(
      questionText: "What aspect of the crisis does the text emphasize was not seen as a market failure?",
      options: ["Return to public sector dominance", "Questioning the merits of the market mechanism", "Market ethics and responsibilities", "Acceptance of societal responsibilities"],
      correctAnswerIndex: 2,
      explanation: "The text highlights that the crisis should not be viewed as a 'market failure' but underscores the importance of market ethics and responsibilities.",
    ),

    Question(
      questionText: "What is the primary objective proposed for the major economies like the US, EU, Japan, India, and China in resurrecting the global economies?",
      options: ["Political dominance", "Economic growth and expansion", "Regional isolation", "Financial market regulation"],
      correctAnswerIndex: 1,
      explanation: "The text suggests that the fundamental and primary objective for major economies in resurrecting the global economies is 'economic growth and expansion.'",
    ),

    Question(
      questionText: "What critical role does the text highlight for multilateral trade in the current scenario?",
      options: ["Regional economic dominance", "Market consolidation", "Economic globalization", "Economic revival"],
      correctAnswerIndex: 3,
      explanation: "The text emphasizes that multilateral trade is crucial for 'economic revival' in the current troubled times.",
    ),

    Question(
      questionText: "What role is suggested for the IMF to play in strengthening the global financial system?",
      options: ["Provide economic cures", "Focus on prevention", "Monitor trade deficits", "Implement fiscal policies"],
      correctAnswerIndex: 1,
      explanation: "The text proposes that the IMF should focus on prevention rather than providing economic cures to strengthen the global financial system.",
    ),

    Question(
      questionText: "What mechanism is recommended to oversee the global financial system?",
      options: ["Financial Stability Board", "Global Economic Council", "Bankers Committee", "Trade Regulation Board"],
      correctAnswerIndex: 0,
      explanation: "The text suggests the need for a 'Financial Stability Board' to provide oversight to the global financial system.",
    ),

    Question(
      questionText: "What is highlighted as the potential shape of the recovery post-crisis?",
      options: ["V-shaped", "L-shaped", "W-shaped", "U-shaped"],
      correctAnswerIndex: 3,
      explanation: "The text mentions that the nature of recovery post-crisis would likely be 'U-shaped' with a prolonged bottom, indicating a longer recovery period.",
    ),

    Question(
      questionText: "What is emphasized as a critical aspect for global economies to focus on amidst the crisis?",
      options: ["Regional isolation", "Market dominance", "Increased trade", "Economic independence"],
      correctAnswerIndex: 2,
      explanation: "The text emphasizes the significance of 'increased trade' for global economies to focus on amidst the crisis.",
    ),

    Question(
      questionText: "What is highlighted as an imperative for the post-crisis scenario in terms of government cooperation?",
      options: ["Intergovernmental discord", "Monetary competition", "Greater intergovernmental monetary cooperation", "Political isolation"],
      correctAnswerIndex: 2,
      explanation: "The text underlines the necessity for 'greater intergovernmental monetary cooperation' in the post-crisis scenario.",
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



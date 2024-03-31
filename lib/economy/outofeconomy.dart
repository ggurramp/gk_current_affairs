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

class opoae extends StatefulWidget {
  final String? userIdentifier;

  opoae({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<opoae> createState() => _opoaeState();
}

class _opoaeState extends State<opoae> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "Why is it important to consider only final goods in the concept of output?",
      options: [
        "To simplify calculations.",
        "To avoid double counting and inflation of the economy's output.",
        "To include intermediate goods for accurate measurement.",
        "To prioritize the production of raw materials."
      ],
      correctAnswerIndex: 1,
      explanation: "Considering only final goods in the concept of output helps avoid double counting, preventing inflation of the economy's output. It ensures a more accurate representation of the actual value of goods and services produced.",
    ),

    Question(
      questionText: "Who are the producers of goods and services in an economy?",
      options: [
        "Individuals only.",
        "Government only.",
        "Foreign companies only.",
        "A mix of individuals, businesses, government, and foreign companies."
      ],
      correctAnswerIndex: 3,
      explanation: "Producers in an economy can be individuals, businesses (small and large), government entities, and foreign companies. It's a diverse mix of contributors to economic activities.",
    ),

    Question(
      questionText: "What is Net Factor Income From Abroad (NFIAD) in the context of an economy's output?",
      options: [
        "The total income of foreign nationals in the country.",
        "The total income of domestic producers abroad.",
        "The difference between income of Indian nationals abroad and income of foreign nationals in India.",
        "The sum of income of Indian and foreign nationals abroad."
      ],
      correctAnswerIndex: 2,
      explanation: "Net Factor Income From Abroad (NFIAD) is the difference between the income of Indian nationals abroad and the income of foreign nationals in India. It reflects the impact on national product.",
    ),

    Question(
      questionText: "What does the concept of 'depreciation' refer to in the output of an economy?",
      options: [
        "Increase in the monetary value of goods and services.",
        "Decrease in the monetary value of final goods.",
        "Consumption or replacement of machines and machineries used in production.",
        "Sales of second-hand goods."
      ],
      correctAnswerIndex: 2,
      explanation: "Depreciation in the output of an economy refers to the consumption or replacement of machines and machineries used in production. It is a factor considered in net concepts like Net National Product (NNP).",
    ),

    Question(
      questionText: "What is the difference between GDP at market prices and GDP at factor cost?",
      options: [
        "GDP at factor cost includes taxes and subsidies, while GDP at market prices does not.",
        "GDP at factor cost excludes taxes and subsidies, while GDP at market prices includes them.",
        "GDP at factor cost is adjusted for inflation, while GDP at market prices is not.",
        "GDP at market prices is used for international comparisons, while GDP at factor cost is used for domestic analysis."
      ],
      correctAnswerIndex: 1,
      explanation: "The difference between GDP at market prices and GDP at factor cost lies in the inclusion of taxes and subsidies. GDP at factor cost excludes them, while GDP at market prices includes them.",
    ),
    Question(
      questionText: "What is the concept of output in an economy?",
      options: [
        "The total land area of a country.",
        "The population of a country.",
        "The aggregation of monetary value of all goods and services produced in an economy.",
        "The raw materials used in manufacturing."
      ],
      correctAnswerIndex: 2,
      explanation: "Output in an economy refers to the aggregation of monetary value of all goods and services produced in a given time period, including both goods and services exchanged for money.",
    ),
    Question(
      questionText: "What was the approach to assigning weights to workers in the earlier method, and how does the new method differ?",
      options: [
        "Equal weights for all workers in both methods.",
        "Different weights based on productivity in both methods.",
        "Equal weights in the earlier method, different weights based on productivity in the new method.",
        "Different weights based on productivity in the earlier method, equal weights in the new method."
      ],
      correctAnswerIndex: 2,
      explanation: "The earlier method assigned equal weights to all types of workers, while the new method assigns different weights based on productivity.",
    ),

    Question(
      questionText: "Why does the inclusion of production tax less subsidies affect the Gross Value Added (GVA) in different sectors?",
      options: [
        "It has no impact on GVA.",
        "It increases GVA in manufacturing and decreases it in agriculture and electricity sectors.",
        "It decreases GVA in manufacturing and increases it in agriculture and electricity sectors.",
        "It decreases GVA in all sectors."
      ],
      correctAnswerIndex: 1,
      explanation: "The net of production tax and production subsidies is positive in manufacturing and negative in agriculture and electricity sectors, affecting GVA accordingly.",
    ),

    Question(
      questionText: "What is emphasized by the concept of 'Gross National Happiness'?",
      options: [
        "Materialistic enhancements and economic parameters.",
        "Sustainable development with a holistic approach to progress.",
        "Economic growth at any cost.",
        "Non-economic aspects without considering materialistic enhancements."
      ],
      correctAnswerIndex: 1,
      explanation: "Gross National Happiness emphasizes sustainable development with a holistic approach to progress, giving equal importance to non-economic aspects of wellbeing.",
    ),

    Question(
      questionText: "What factors does the Gross National Happiness (GNH) Index consider?",
      options: [
        "Only economic parameters.",
        "Living standards, health, and education.",
        "Traditional aspects of culture and psychological wellbeing.",
        "Socio-economic concern and non-economic aspects of wellbeing."
      ],
      correctAnswerIndex: 3,
      explanation: "The GNH Index includes areas of socio-economic concern such as living standards, health, education, and less traditional aspects of culture and psychological wellbeing.",
    ),

    Question(
      questionText: "Why are the new GDP numbers likely to change in the future?",
      options: [
        "Due to changes in methodology.",
        "Because of an update in the database.",
        "Change in data source and revisions in base years of key indices.",
        "Only due to a change in policy."
      ],
      correctAnswerIndex: 2,
      explanation: "The new GDP numbers will be liable to changes based on a change in the data source and revisions in the base years of key indices like IIP, WPI, and CPI series.",
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
    home: opoae(),
  ));
}

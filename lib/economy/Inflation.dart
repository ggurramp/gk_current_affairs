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

class inflation extends StatefulWidget {
  final String? userIdentifier;

  inflation({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<inflation> createState() => _inflationState();
}

class _inflationState extends State<inflation> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "What is the primary purpose of measuring the Wholesale Price Index (WPI) and the Consumer Price Index (CPI) in India?",
      options: [
        "To determine the growth rate of different industry groups",
        "To monitor price changes of goods and services at the consumer level",
        "To calculate the rate of increase in income",
        "To track the demand-supply gap in the economy"
      ],
      correctAnswerIndex: 1,
      explanation: "WPI and CPI are used to monitor price changes of goods and services at the consumer level, making them crucial for assessing inflation rates.",
    ),


    Question(
        questionText: "What are the major components included in the Index of Eight Core Industries in India?",
        options: [
          "Basic Goods, Intermediate Goods, Consumer Goods",
          "Mining, Manufacturing, Agriculture",
          "Coal, Crude Oil, Natural Gas, Refinery Products, Fertilizers, Steel, Cement, Electricity",
          "Primary Articles, Fuel & Power, Manufactured Products"
        ],
        correctAnswerIndex: 2,
        explanation: "The Index of Eight Core Industries includes Coal, Crude Oil, Natural Gas, Refinery Products, Fertilizers, Steel, Cement, and Electricity."
    ),

    Question(
      questionText: "Explain the concept of 'dis-inflation' as mentioned in the text.",
      options: [
        "A gradual increase in prices seen as beneficial for economies",
        "A situation where inflation rates exceed 100% in three years",
        "Reduced rates of increase in prices, signaling a slowdown in inflation",
        "A scenario where inflation turns negative, causing prices to fall"
      ],
      correctAnswerIndex: 2,
      explanation: "'Dis-inflation' refers to reduced rates of increase in prices, indicating a slowdown in the inflationary trend.",
    ),

    Question(
        questionText: "What measures are suggested in the text to tackle inflation in India?",
        options: [
          "Primarily through fiscal measures and monetary policies",
          "Mainly focusing on controlling money supply and increasing taxes",
          "Primarily addressing supply-side issues in agriculture and production bottlenecks",
          "Only through increased government expenditure and lowering interest rates"
        ],
        correctAnswerIndex: 2,
        explanation: "The text suggests tackling inflation through addressing supply-side issues in agriculture and production bottlenecks."),

    Question(
        questionText: "What is the primary reason stated in the text for the revision of the Wholesale Price Index (WPI) in India?",
        options: [
          "To align the WPI with international practices",
          "To update the index basket and weighting structure to reflect changes in the economy",
          "To increase the number of items from 676 to 697",
          "To compile a new 'WPI Food Index' to monitor food inflation"
        ],
        correctAnswerIndex: 1,
        explanation: "The primary reason for revising the WPI was to update the index basket and weighting structure to mirror changes in the economy."
    ),

    Question(
        questionText: "Explain the term 'core inflation' as mentioned in the text.",
        options: [
          "It refers to inflation that includes volatile fluctuations in prices of food and energy",
          "It denotes inflation excluding volatile price fluctuations of food and energy",
          "It signifies inflation driven solely by imported goods",
          "It indicates a scenario where inflation reaches 100% in three years"
        ],
        correctAnswerIndex: 1,
        explanation: "'Core inflation' signifies inflation excluding volatile price fluctuations of food and energy."
    ),

    Question(
        questionText: "What are the potential consequences of prolonged periods of inflation, as mentioned in the text?",
        options: [
          "Increased income levels and greater consumer spending",
          "A decline in production and income in the economy",
          "Enhanced standards of living and improved economic stability",
          "Difficulty in affording essential items and economic damage"
        ],
        correctAnswerIndex: 3,
        explanation: "Prolonged periods of inflation can lead to difficulty in affording essential items and economic damage in the form of decreased purchasing power."
    ),

    Question(
      questionText: "What are the key differences between WPI and CPI in terms of the items they cover?",
      options: [
        "WPI covers manufactured products primarily, while CPI focuses on primary articles like fruits and vegetables.",
        "WPI measures prices at the wholesale level, while CPI measures prices at the retail level.",
        "WPI includes 19 items in its index, while CPI encompasses 555 items.",
        "WPI represents prices related to agriculture, while CPI concentrates on industrial goods."
      ],
      correctAnswerIndex: 0,
      explanation: "WPI emphasizes manufactured products (82% weight) compared to CPI, which covers primary articles like fruits and vegetables.",
    ),

    Question(
      questionText: "Define 'demand-pull inflation' and 'cost-push inflation' based on the provided information.",
      options: [
        "Demand-pull inflation occurs due to increased production costs, while cost-push inflation arises from excess demand.",
        "Demand-pull inflation results from excessive demand surpassing supply, while cost-push inflation stems from increased production costs.",
        "Demand-pull inflation is driven by reduced demand, whereas cost-push inflation arises from reduced production costs.",
        "Demand-pull inflation is due to rising prices of imports, while cost-push inflation results from increased domestic demand."
      ],
      correctAnswerIndex: 1,
      explanation: "Demand-pull inflation arises when demand exceeds supply, while cost-push inflation occurs due to increased production costs.",
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
    home: inflation(),
  ));
}

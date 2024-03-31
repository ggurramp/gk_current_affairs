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

class eboi extends StatefulWidget {
  final String? userIdentifier;

  eboi({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<eboi> createState() => _eboiState();
}

class _eboiState extends State<eboi> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What is the primary concern associated with external debt as highlighted in the text?",
      options: [
        "Quantum of borrowings",
        "Utilization of borrowings",
        "Valuation loss due to currency depreciation",
        "Servicing and repayment of debt"
      ],
      correctAnswerIndex: 3,
      explanation: "The primary concern associated with external debt is servicing and repayment, ensuring that the borrowings are manageable and serviceable.",
    ),

    Question(
      questionText: "How is external debt serviceability measured?",
      options: [
        "Through currency reserves",
        "Through current account inflows",
        "Through commercial borrowings",
        "Through inward tourism"
      ],
      correctAnswerIndex: 1,
      explanation: "External debt serviceability is measured through current account inflows, including exports of goods and services, remittances, and non-debt creating inflows.",
    ),

    Question(
      questionText: "What was the change in India's external debt from March 2018 to September 2018?",
      options: [
        "Increased by US\$ 19.3 billion",
        "Decreased by US\$ 3.6 billion",
        "Increased by US\$ 6.1 billion",
        "Decreased by US\$ 25.4 billion"
      ],
      correctAnswerIndex: 1,
      explanation: "India's external debt decreased by US\$ 3.6 billion from March 2018 to September 2018.",
    ),

    Question(
      questionText: "Which component forms the largest share of India's external debt at end-September 2018?",
      options: [
        "Short-term trade credit",
        "Non-Resident Indian (NRI) deposits",
        "Commercial borrowings",
        "Long-term debt"
      ],
      correctAnswerIndex: 2,
      explanation: "Commercial borrowings constitute the largest share (37.1%) of India's external debt at end-September 2018.",
    ),

    Question(
      questionText: "What does the text suggest regarding India's external debt position compared to other countries?",
      options: [
        "India has the highest debt to GNI ratio",
        "India's debt indicators compare well with other developing countries",
        "India's foreign exchange cover for external debt is weaker than other developing countries",
        "India's external debt indicators are less favorable than other less vulnerable nations"
      ],
      correctAnswerIndex: 1,
      explanation: "The text indicates that India's key external debt indicators compare well with other developing countries.",
    ),

    Question(
      questionText: "What are the major components contributing to India's external debt decline at end-September 2018?",
      options: [
        "Decrease in non-resident Indian (NRI) deposits",
        "Decrease in commercial borrowings",
        "Valuation gains due to currency appreciation",
        "Increase in short-term trade credit"
      ],
      correctAnswerIndex: 2,
      explanation: "The decline in India's external debt at end-September 2018 was primarily due to valuation gains resulting from the appreciation of the US dollar against major currencies.",
    ),

    Question(
      questionText: "Which sector experienced a decrease in outstanding debt at end-September 2018?",
      options: [
        "Non-Government sectors",
        "Government sector",
        "Both non-Government and Government sectors",
        "There was no decrease in outstanding debt for any sector"
      ],
      correctAnswerIndex: 2,
      explanation: "Both the government and non-government sectors experienced a decrease in outstanding debt at end-September 2018.",
    ),

    Question(
      questionText: "What is the ratio of short-term debt to foreign exchange reserves at end-September 2018?",
      options: [
        "24.1%",
        "26.1%",
        "42.0%",
        "55.8%"
      ],
      correctAnswerIndex: 1,
      explanation: "The ratio of short-term debt to foreign exchange reserves was 26.1% at end-September 2018.",
    ),

    Question(
      questionText: "Which currency denominated debt formed the largest share of India's external debt at end-September 2018?",
      options: [
        "Indian rupee",
        "US dollar",
        "Euro",
        "Japanese yen"
      ],
      correctAnswerIndex: 1,
      explanation: "US dollar denominated debt constituted the largest share (49.7%) of India's external debt at end-September 2018.",
    ),

    Question(
      questionText: "What does the text reveal about India's public debt composition in comparison to other economies?",
      options: [
        "India has a lower internal debt component compared to other similar economies",
        "India's external debt constitutes 90% of public debt",
        "India's internal debt is higher than external debt, unlike other similar economies",
        "India's debt composition is similar to other economies"
      ],
      correctAnswerIndex: 2,
      explanation: "In India, internal debt accounts for 90% of public debt, while external debt constitutes only 10%, a different composition compared to other similar economies.",
    ),


    Question(
      questionText: "At end-March 2018, what was India's external debt to GDP ratio?",
      options: [
        "20.5%",
        "20.0%",
        "20.8%",
        "19.9%"
      ],
      correctAnswerIndex: 0,
      explanation: "India's external debt to GDP ratio stood at 20.5% at end-March 2018.",
    ),

    Question(
      questionText: "What was the major reason for the decrease in India's external debt at end-September 2018?",
      options: [
        "Decrease in NRI deposits",
        "Decrease in commercial borrowings",
        "Valuation gains due to currency appreciation",
        "Increase in short-term trade credit"
      ],
      correctAnswerIndex: 2,
      explanation: "The decrease in India's external debt at end-September 2018 was mainly due to valuation gains resulting from the appreciation of the US dollar against major currencies.",
    ),

    Question(
      questionText: "Which component of India's external debt constituted 37.1% at end-September 2018?",
      options: [
        "Short-term trade credit",
        "NRI deposits",
        "Commercial borrowings",
        "Long-term debt"
      ],
      correctAnswerIndex: 2,
      explanation: "Commercial borrowings formed the largest component, contributing to 37.1% of India's external debt at end-September 2018.",
    ),

    Question(
      questionText: "What was the share of long-term debt in India's total external debt at end-September 2018?",
      options: [
        "80.7%",
        "79.6%",
        "19.9%",
        "42.0%"
      ],
      correctAnswerIndex: 1,
      explanation: "The share of long-term debt in India's total external debt at end-September 2018 was 79.6%.",
    ),

    Question(
      questionText: "What currency denominated debt constituted the second-largest share of India's external debt at end-September 2018?",
      options: [
        "Euro",
        "Indian rupee",
        "Japanese yen",
        "SDR"
      ],
      correctAnswerIndex: 0,
      explanation: "Euro-denominated debt constituted the second-largest share (3.2%) of India's external debt at end-September 2018.",
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
    home: eboi(),
  ));
}

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

class rtb extends StatefulWidget {
  final String? userIdentifier;

  rtb({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<rtb> createState() => _rtbState();
}

class _rtbState extends State<rtb> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What distinguishes regional trading from trading with the Rest of the World (ROW)?",
      options: ["Regional trading focuses on product lines, while ROW trading focuses on geography", "Regional trading emphasizes cultural factors, while ROW trading emphasizes economic criteria", "Regional trading allows for deeper economic cooperation, while ROW trading promotes competition", "Regional trading involves multilateral agreements, while ROW trading involves bilateral agreements"],
      correctAnswerIndex: 0,
      explanation: "Regional trading is based on regions rather than products, whereas ROW trading is based on economic criteria across different geographies.",
    ),

    Question(
      questionText: "What is the primary reason for economies moving towards regional trading despite the acknowledged benefits of trading with the Rest of the World?",
      options: ["To foster economic cooperation within regions", "To boost trade with non-member countries", "To establish a common currency across regions", "To eliminate import duties altogether"],
      correctAnswerIndex: 0,
      explanation: "Economies opt for regional trading due to domestic needs for newer markets, competitiveness assessment, and achieving a collective voice in global issues.",
    ),

    Question(
      questionText: "What are the different levels of trade agreements in the context of regional trading?",
      options: ["Multilateral, Bilateral, and Trilateral", "Level 1, Level 2, Level 3, and Level 4", "Trade Creation, Trade Diversion, and Trading to a Negative List", "Preferential Tariff Agreements, Free Trade Agreements, and Customs Union"],
      correctAnswerIndex: 3,
      explanation: "The levels of trade agreements in regional trading include Preferential Tariff Agreements, Free Trade Agreements, and Customs Union, each indicating different levels of tariff preferences among member countries.",
    ),



    Question(
        questionText: "What primary reason is stated to promote regional trading despite concerns about welfare gains?",
        options: ["Global trend conformity", "Market penetration", "Enhanced economic cooperation", "Competitive ability building"],
        correctAnswerIndex: 0,
        explanation: "The text asserts that regional trading should be promoted because it aligns with the global trend, presenting an opportunity that cannot be overlooked."
    ),

 Question(
        questionText: "How does the text describe the relationship between regional and multilateral trading?",
        options: ["They are mutually exclusive approaches", "Regional trading conflicts with multilateral trading", "Both complement each other", "Regional trading supersedes multilateral trading"],
        correctAnswerIndex: 2,
        explanation: "The text suggests that regional and multilateral trading can coexist and complement each other, with each playing a distinct role."
    ),

  Question(
        questionText: "What differentiates regional trading from multilateral trading concerning tariffs?",
        options: ["Regional trading focuses on maximum tariff rates while multilateral trading considers applied rates", "Regional trading emphasizes product-specific tariffs while multilateral trading addresses region-specific tariffs", "Regional trading involves bound rates while multilateral trading involves sensitive tariffs", "Multilateral trading revolves around preferential tariffs while regional trading focuses on collective tariffs"],
        correctAnswerIndex: 0,
        explanation: "The text highlights that regional trading primarily focuses on 'applied' rates of tariffs, while multilateral trading revolves around 'bound' rates or the maximum tariffs."
    ),

   Question(
        questionText: "What major initiatives has India taken in regional trading, especially concerning agreements?",
        options: ["Focused mainly on bilateral trade with South Asian nations", "Established numerous agreements with African countries", "Signed agreements encompassing trade in services and broader economic cooperation", "Primarily engaged in horizontal trading"],
        correctAnswerIndex: 2,
        explanation: "India has undertaken agreements focused on trade in services and broader economic cooperation, signifying a shift from conventional global 'vertical trading' to 'horizontal' or deeper levels of regional trading."
    ),

     Question(
      questionText: "What has been India's experience with Regional Trade Agreements (RTAs) according to the text?",
      options: ["RTAs have resulted in exponential export growth for India", "FTAs have led to a significant reduction in India's trade deficit with ASEAN countries", "India's utilization of RTAs by exporters has been relatively high", "FTAs have amplified imports more than exports, widening the trade deficit"],
      correctAnswerIndex: 3,
      explanation: "The text mentions that India's experience with FTAs has led to increased imports more than exports, contributing to a widened trade deficit with ASEAN, Korea, and Japan.",
    ),

    Question(
      questionText: "What does the Economic Survey 2016-17 reveal about India's exports concerning tariff reductions?",
      options: ["Exports increased substantially after tariff reductions", "Export growth was minimal despite tariff reductions", "Reducing tariffs caused a decline in India's exports", "India's exports were responsive to income changes rather than tariff reductions"],
      correctAnswerIndex: 3,
      explanation: "According to the Economic Survey, India's exports were more responsive to income changes than price changes, implying that tariff reductions did not significantly boost exports.",
    ),

    Question(
      questionText: "What is a challenge in establishing the 'Rules of Origin' in regional trading agreements?",
      options: ["Determining the domestic input costs", "Defining the sensitive list for traded goods", "Identifying the origin of goods traded within the member countries", "Maintaining tariff preferences for specific product lines"],
      correctAnswerIndex: 2,
      explanation: "Establishing the 'Rules of Origin' in regional trading agreements involves identifying the origin of goods traded among member countries, which becomes complex due to global companies operating from multiple locations.",
    ),

    Question(
      questionText: "What has been established about the impact of regional trading on overall trade and its comparison with multilateral trading?",
      options: ["Regional trading is always better than multilateral trading", "Countries with large intra-regional trade experience decreased multilateral trade", "Regional trading has no impact on multilateral trade", "Regional trading may facilitate increased multilateral trade"],
      correctAnswerIndex: 3,
      explanation: "It has been established that countries with large intra-regional trade have also witnessed increased multilateral trade, indicating that regional trading may facilitate increased multilateral trade.",
    ),

    Question(
      questionText: "What aspect of regional trading remains inconclusive despite various experiences?",
      options: ["The expansion of trade compared to ROW trading", "The impact on overall economic cooperation", "The effectiveness in resolving trade diversion", "The superiority of regional trading over multilateral trading"],
      correctAnswerIndex: 3,
      explanation: "The text indicates that it's unclear whether regional trading is a better option compared to trading on a multilateral platform.",
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
    home: rtb(),
  ));
}

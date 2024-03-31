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

class mlfi extends StatefulWidget {
  final String? userIdentifier;

  mlfi({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<mlfi> createState() => _mlfiState();
}

class _mlfiState extends State<mlfi> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What was the primary initial objective of establishing the International Monetary Fund (IMF) and the World Bank Group (WB) following the Bretton Wood Conference in 1944?",
      options: [
        "To focus on eradication of poverty in developing countries",
        "To provide long-term loans for infrastructure development",
        "To achieve greater economic cooperation among nations",
        "To fund education and public health programs globally"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary objective of establishing the IMF and WB after the Bretton Wood Conference in 1944 was to achieve greater economic cooperation among countries.",
    ),

    Question(
      questionText: "What are the key differences between the functions of the International Monetary Fund (IMF) and the World Bank Group (WB)?",
      options: [
        "The IMF focuses on infrastructure, while the WB deals with poverty eradication.",
        "The IMF provides concessional assistance, whereas the WB provides commercial loans.",
        "The IMF addresses issues of poverty and education, while the WB deals with currency stability.",
        "The IMF offers long-term loans, whereas the WB provides short-term financial assistance."
      ],
      correctAnswerIndex: 1,
      explanation: "The IMF primarily provides short-term loans and focuses on currency-related issues, while the WB offers concessional assistance and concentrates on poverty eradication.",
    ),

    Question(
      questionText: "What factors contributed to the International Monetary Fund's (IMF) role shifting from post-war reconstruction to maintaining exchange rate stability?",
      options: [
        "The emergence of BRICS economies",
        "The collapse of the fixed exchange rates system",
        "The shift towards global integration",
        "The rise in oil shocks"
      ],
      correctAnswerIndex: 1,
      explanation: "The IMF's role transitioned to maintaining exchange rate stability due to the collapse of the fixed exchange rates system.",
    ),

    Question(
      questionText: "Which entity is solely focused on providing assistance to developing countries through concessional means and interest-free support for infrastructure and social sectors?",
      options: [
        "International Monetary Fund (IMF)",
        "International Bank for Reconstruction and Development (IBRD)",
        "International Development Agency (IDA)",
        "International Finance Corporation (IFC)"
      ],
      correctAnswerIndex: 2,
      explanation: "The International Development Agency (IDA) focuses on providing assistance to the poorest economies through interest-free support for infrastructure and social sectors.",
    ),

    Question(
      questionText: "What significant change occurred at the IMF in October 2016 regarding the valuation basket and the inclusion of a new currency?",
      options: [
        "The inclusion of the Indian Rupee in the valuation basket",
        "The addition of Chinese Renminbi (RMB) as the fifth currency in the SDR basket",
        "The removal of the Euro from the SDR basket",
        "The replacement of the US Dollar as the primary reserve currency"
      ],
      correctAnswerIndex: 1,
      explanation: "The significant change at the IMF in October 2016 was the addition of the Chinese Renminbi (RMB) as the fifth currency in the Special Drawing Right (SDR) basket.",
    ),

    Question(
      questionText: "What is the primary purpose of availing loan facilities from the International Monetary Fund (IMF)?",
      options: [
        "Post-war reconstruction",
        "Global economic cooperation",
        "Providing long-term loans",
        "Addressing balance of payments issues"
      ],
      correctAnswerIndex: 3,
      explanation: "The primary purpose of availing loan facilities from the IMF is to address balance of payments issues faced by economies.",
    ),

    Question(
      questionText: "Which institution within the World Bank Group focuses on providing guarantees against political risks for overseas investments?",
      options: [
        "International Bank for Reconstruction and Development (IBRD)",
        "International Finance Corporation (IFC)",
        "International Development Agency (IDA)",
        "Multilateral Investment Guarantee Agency (MIGA)"
      ],
      correctAnswerIndex: 3,
      explanation: "The Multilateral Investment Guarantee Agency (MIGA) within the World Bank Group provides guarantees against political risks for overseas investments.",
    ),

    Question(
      questionText: "What significant shift has the International Monetary Fund (IMF) witnessed regarding the inclusion of Chinese Renminbi (RMB)?",
      options: [
        "Becoming the primary reserve currency",
        "Exclusion from the Special Drawing Right (SDR) basket",
        "Being classified as a freely usable currency",
        "Becoming the largest quota holder"
      ],
      correctAnswerIndex: 2,
      explanation: "The IMF witnessed a significant shift with the Chinese Renminbi (RMB) being classified as a freely usable currency and included in the Special Drawing Right (SDR) basket.",
    ),

    Question(
      questionText: "Which initiative within the World Bank aims at providing fast track financial assistance for emergent social needs of low-income economies?",
      options: [
        "Vulnerability Financing Facility (VFF)",
        "Rapid Social Response Fund (RSRF)",
        "Catastrophe Risk Deferred Draw Down (CRDD) option",
        "Poverty Reduction Growth Fund (PRGF)"
      ],
      correctAnswerIndex: 1,
      explanation: "The Rapid Social Response Fund (RSRF) within the World Bank Group aims at providing fast track financial assistance for emergent social needs of low-income economies.",
    ),

    Question(
      questionText: "What factors led to the delayed ratification of governance quota reforms at the International Monetary Fund (IMF)?",
      options: [
        "Congressional reluctance in the United States",
        "Economic crises in BRICS economies",
        "Unanimous rejection from G8 countries",
        "Resistance from low-income economies"
      ],
      correctAnswerIndex: 0,
      explanation: "The delayed ratification of governance quota reforms at the IMF was due to Congressional reluctance in the United States, which was hesitant to ratify the proposal fearing a decline in its hold over the institution.",
    ),

    Question(
      questionText: "Which multilateral development bank primarily focuses on regional cooperation among Asian and Pacific regions?",
      options: [
        "International Monetary Fund (IMF)",
        "World Bank Group (WB)",
        "Asian Development Bank (ADB)",
        "New Development Bank (NDB)"
      ],
      correctAnswerIndex: 2,
      explanation: "The Asian Development Bank (ADB) focuses on regional cooperation among Asian and Pacific regions.",
    ),

    Question(
      questionText: "What was the main purpose behind establishing the New Development Bank (NDB) by BRICS nations?",
      options: [
        "Supporting global poverty eradication",
        "Enhancing regional political alliances",
        "Financing infrastructure and sustainable development projects",
        "Stabilizing international financial markets"
      ],
      correctAnswerIndex: 2,
      explanation: "The main purpose behind establishing the New Development Bank (NDB) by BRICS nations was to finance infrastructure and sustainable development projects.",
    ),

    Question(
      questionText: "What is the primary objective of the Asian Infrastructure Investment Bank (AIIB)?",
      options: [
        "Supporting West-dominated financial institutions",
        "Fostering cultural exchanges among Asian nations",
        "Providing finances for infrastructure development in the Asia-Pacific region",
        "Promoting regional environmental sustainability"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary objective of the Asian Infrastructure Investment Bank (AIIB) is to provide finances for infrastructure development in the Asia-Pacific region.",
    ),

    Question(
        questionText: "Where is the headquarters of the New Development Bank (NDB) located?",
        options: [
          "Manila, Philippines",
          "Fortaleza, Brazil",
          "Shanghai, China",
          "Durban, South Africa"
        ],
        correctAnswerIndex: 2,
        explanation: "The headquarters of the New Development Bank (NDB) is located in Shanghai, China."
    ),

    Question(
      questionText: "Which country hosts the Asian Infrastructure Investment Bank (AIIB)?",
      options: [
        "India",
        "China",
        "Russia",
        "South Africa"
      ],
      correctAnswerIndex: 1,
      explanation: "China hosts the Asian Infrastructure Investment Bank (AIIB).",
    ),

    Question(
      questionText: "What is the main objective of the Asian Development Bank (ADB)?",
      options: [
        "Enhancing global economic stability",
        "Fostering cooperation among African nations",
        "Eradication of poverty in Asian countries",
        "Supporting political integration in South America"
      ],
      correctAnswerIndex: 2,
      explanation: "The main objective of the Asian Development Bank (ADB) is the eradication of poverty in Asian countries.",
    ),

    Question(
      questionText: "What was the inaugural capital of the New Development Bank (NDB) as agreed upon by the BRICS nations?",
      options: [
        "US\$ 200 billion",
        "US\$ 50 billion",
        "US\$ 100 billion",
        "US\$ 20 billion"
      ],
      correctAnswerIndex: 1,
      explanation: "The inaugural capital of the New Development Bank (NDB) agreed upon by the BRICS nations was US\$ 50 billion.",
    ),

    Question(
      questionText: "Where was the inaugural meeting of the Board of Governors of the New Development Bank (NDB) held?",
      options: [
        "New Delhi",
        "Durban",
        "Fortaleza",
        "Ufa"
      ],
      correctAnswerIndex: 3,
      explanation: "The inaugural meeting of the Board of Governors of the New Development Bank (NDB) was held in Ufa.",
    ),

    Question(
      questionText: "Which nation hosted the fourth BRICS Summit where the possibility of establishing the New Development Bank (NDB) was discussed?",
      options: [
        "India",
        "Russia",
        "China",
        "South Africa"
      ],
      correctAnswerIndex: 0,
      explanation: "The fourth BRICS Summit where the possibility of establishing the New Development Bank (NDB) was discussed was hosted by India.",
    ),

    Question(
      questionText: "Which organization is seen as Asia's response to the dominance of the Asian Development Bank (ADB) and World Bank (WB)?",
      options: [
        "International Monetary Fund (IMF)",
        "New Development Bank (NDB)",
        "World Trade Organization (WTO)",
        "Asian Infrastructure Investment Bank (AIIB)"
      ],
      correctAnswerIndex: 3,
      explanation: "The Asian Infrastructure Investment Bank (AIIB) is seen as Asia's response to the dominance of the Asian Development Bank (ADB) and World Bank (WB).",
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
    home: mlfi(),
  ));
}

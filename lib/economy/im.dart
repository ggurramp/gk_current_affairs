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

class im extends StatefulWidget {
  final String? userIdentifier;

  im({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<im> createState() => _imState();
}

class _imState extends State<im> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What was the primary investment model followed by India post-independence?",
      options: [
        "Top-down investment",
        "Bottom-up investment",
        "Private sector-led investment",
        "Foreign Direct Investment (FDI)"
      ],
      correctAnswerIndex: 0,
      explanation: "India primarily followed the 'top-down investment' model post-independence, focusing on investing in basic, capital, and core industries.",
    ),

    Question(
      questionText: "What were the limitations of the earlier public sector-led investment in India?",
      options: [
        "Excessive reliance on foreign investments",
        "Lack of government subsidies",
        "Low savings leading to low investment and growth",
        "Over-investment in technology-intensive industries"
      ],
      correctAnswerIndex: 2,
      explanation: "The limitations of earlier public sector-led investment in India included low savings resulting in low levels of investment and consequently, low growth.",
    ),

    Question(
      questionText: "What is the aim of the 'leveraged investment' model used in infrastructure projects in India?",
      options: [
        "To encourage foreign investment",
        "To promote government-driven infrastructure development",
        "To utilize strengths of both government and private sector",
        "To focus solely on technology-driven investments"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'leveraged investment' model, particularly in infrastructure projects, aims to take advantage of the strengths of both the government and the private sector for execution and operations.",
    ),

    Question(
      questionText: "What investment model is exemplified by the establishment of National Manufacturing Investment Zones (NMIZs)?",
      options: [
        "Sector Specific Investment",
        "Private Sector Investment",
        "Venture Capital",
        "Cluster Investment"
      ],
      correctAnswerIndex: 0,
      explanation: "The establishment of National Manufacturing Investment Zones (NMIZs) aligns with the 'Sector Specific Investment' model, aiming to boost the manufacturing sector's output and employment.",
    ),

    Question(
      questionText: "What percentage of savings in India is primarily accounted for by the household sector?",
      options: [
        "Less than 50%",
        "Around 60%",
        "Approximately 70%",
        "More than 80%"
      ],
      correctAnswerIndex: 2,
      explanation: "More than 70% of savings in India are accounted for by the household sector, making India a 'household sector savings-driven economy.'",
    ),

    Question(
      questionText: "What type of investment model emphasizes a shift from quantitative to qualitative and from traditional to technology and knowledge-intensive investments?",
      options: [
        "Private Sector Investment",
        "Leveraged Investment",
        "Foreign Direct Investment (FDI)",
        "Venture Capital"
      ],
      correctAnswerIndex: 0,
      explanation: "The 'Private Sector Investment' model emphasizes a transition from traditional to technology-driven and knowledge-intensive investments.",
    ),

    Question(
      questionText: "What advantage does Foreign Direct Investment (FDI) provide to an economy?",
      options: [
        "Reduces capital formation",
        "Increases fiscal deficit",
        "Supplements domestic investment",
        "Impedes current account deficit (CAD)"
      ],
      correctAnswerIndex: 2,
      explanation: "FDI supplements domestic investment and assists in meeting the current account deficit (CAD) of an economy.",
    ),

    Question(
      questionText: "What investment model primarily involves financing startup companies and small businesses?",
      options: [
        "Sector Specific Investment",
        "Leveraged Investment",
        "Foreign Direct Investment (FDI)",
        "Venture Capital"
      ],
      correctAnswerIndex: 3,
      explanation: "Venture Capital involves providing financing to startup companies and small businesses, often along with technical or managerial expertise.",
    ),

    Question(
      questionText: "What does the 'Hybrid Annuity Model' entail in terms of government and developer contributions?",
      options: [
        "Government provides the entire project cost",
        "Developer bears the entire project cost",
        "Government provides a percentage, while the developer contributes the remaining investment",
        "There's no need for any investment from either party"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the 'Hybrid Annuity Model,' the government provides a percentage of the project cost to the developer to commence work, while the remaining investment is to be made by the developer.",
    ),

    Question(
      questionText: "What is the fundamental purpose of the 'Viability Gap Funding (VGF)' mechanism in infrastructure projects?",
      options: [
        "To ensure projects remain economically unviable",
        "To provide funding for projects with short gestation periods",
        "To bridge the financial viability gap in infrastructure projects",
        "To restrict private investment in infrastructure"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Viability Gap Funding (VGF)' mechanism aims to bridge the financial viability gap in infrastructure projects that are economically justified but fall short of financial viability.",
    ),

    Question(
      questionText: "What is the approach suggested to create an enabling environment for investment in India?",
      options: [
        "Preventing natural flow of investment",
        "Removing policy frameworks",
        "Facilitating natural flow of investment",
        "Curtailing investment at all levels"
      ],
      correctAnswerIndex: 2,
      explanation: "The suggested approach is to facilitate the natural flow of investment by creating an enabling environment, not by preventing it or curtailing investment.",
    ),

    Question(
      questionText: "What is the key role proposed for the government regarding investment in India?",
      options: [
        "Acting as the sole investor in all projects",
        "Creating hurdles for private investment",
        "Facilitating a partnership approach and providing policy support",
        "Discouraging foreign investment"
      ],
      correctAnswerIndex: 2,
      explanation: "The proposed role for the government is to facilitate a partnership approach and provide policy support to encourage private and foreign investment in India.",
    ),

    Question(
      questionText: "What are some examples of Project Finance Schemes mentioned in the text?",
      options: [
        "BOT, BOOT, DBFO",
        "BOO, BLT, DCMF",
        "DBOT, DCMF, VGF",
        "BOT, BLT, VGF"
      ],
      correctAnswerIndex: 0,
      explanation: "Examples of Project Finance Schemes mentioned in the text include BOT (Build-Operate-Transfer), BOOT (Build-Own-Operate-Transfer), and DBFO (Design-Build-Finance-Operate).",
    ),

    Question(
      questionText: "What is the Swiss Challenge Model aimed at?",
      options: [
        "Awarding projects only to government bodies",
        "Rewarding private players without proposals",
        "Selecting projects through competitive proposals",
        "Rejecting all unsolicited proposals"
      ],
      correctAnswerIndex: 2,
      explanation: "The Swiss Challenge Model is intended to award projects to a private player based on an unsolicited proposal through competitive negotiations with the government.",
    ),

    Question(
      questionText: "What is the primary role of the government in creating an enabling environment for investments?",
      options: [
        "Impeding investment growth",
        "Providing policy support and partnership approach",
        "Avoiding all interventions",
        "Encouraging financial restrictions"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary role of the government is to provide policy support and a partnership approach to foster an environment conducive to investments.",
    ),

    Question(
      questionText: "What is the objective of the 'Hybrid Annuity Model' regarding project cost?",
      options: [
        "Developer bears the entire project cost",
        "Government provides full project cost upfront",
        "Government provides a percentage, developer covers the remaining investment",
        "Both parties contribute equally to the project cost"
      ],
      correctAnswerIndex: 2,
      explanation: "The objective of the 'Hybrid Annuity Model' is that the government provides a percentage of the project cost to the developer, while the remaining investment needs to be made by the developer.",
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
    home: im(),
  ));
}

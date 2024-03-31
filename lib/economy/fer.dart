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

class fer extends StatefulWidget {
  final String? userIdentifier;

  fer({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fer> createState() => _ferState();
}

class _ferState extends State<fer> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What comprises India's Foreign Exchange Reserves (FEX)?",
      options: ["Gold reserves only", "IMF contributions and FTP only", "Foreign currency assets in USD only", "A combination of gold reserves, IMF contributions, FTP, and foreign currency assets in USD"],
      correctAnswerIndex: 3,
      explanation: "India's FEX includes a combination of gold reserves, IMF contributions, FTP, and foreign currency assets denominated in USD held by the RBI.",
    ),

    Question(
      questionText: "What is the significance of Foreign Exchange Reserves (FEX) for open economies?",
      options: ["To manage inflation rates", "To provide import cover for smooth imports", "To regulate interest rates", "To control trade deficits"],
      correctAnswerIndex: 1,
      explanation: "FEX provides import cover for open economies, ensuring smooth imports in terms of domestic requirements despite large cross-border inflows and outflows.",
    ),

    Question(
      questionText: "How does the build-up of reserves differ between emerging economies and stronger economies like the US or Europe?",
      options: ["Stronger economies print their hard currency, while emerging economies cannot print hard currency", "Emerging economies have market-determined exchange rates, while stronger economies do not", "Stronger economies have higher capital account surpluses than emerging economies", "Emerging economies discourage foreign currency inflows"],
      correctAnswerIndex: 0,
      explanation: "Unlike stronger economies like the US or Europe that can print hard currency in adverse situations, emerging economies cannot, leading to the necessity for reserves in the latter.",
    ),

    Question(
      questionText: "What benchmarks are used to gauge the sufficiency of reserves for emerging economies like India?",
      options: ["Import cover, External Debt Cover, and Guidotti Rule", "Liquidity at Risk (LaR) and External Debt Cover", "Import Cover and Liquidity at Risk (LaR)", "Guidotti Rule and External Debt Cover"],
      correctAnswerIndex: 0,
      explanation: "The benchmarks used for gauging the sufficiency of reserves for emerging economies include Import Cover, External Debt Cover, and the Guidotti Rule.",
    ),

    Question(
      questionText: "What limitations hinder the direct use of reserves for domestic purposes in India?",
      options: ["Reserves can only be used in foreign currency, not converted to the home currency", "The RBI cannot lend to non-bank entities", "Reserves can only be utilized for external debt repayment", "Reserves are heavily regulated by international bodies"],
      correctAnswerIndex: 0,
      explanation: "Reserves can only be used in foreign currency and cannot be converted into the home currency, preventing direct use for domestic purposes and avoiding potential inflationary pressures.",
    ),

    Question(
      questionText: "What steps did India take to utilize its reserves for infrastructure development?",
      options: ["Investing in sovereign wealth funds", "Creating subsidiaries overseas to facilitate infrastructure funding", "Utilizing reserves for domestic infrastructure directly", "Increasing domestic production"],
      correctAnswerIndex: 1,
      explanation: "India set up subsidiaries overseas, borrowing from RBI to facilitate infrastructure funding through loans to Indian companies and investments in global companies' bonds.",
    ),

    Question(
      questionText: "What potential options were suggested for the utilization of reserves, besides infrastructure funding?",
      options: ["Investing in strategic oil reserves and setting up Asian Development Fund (ADF)", "Deploying reserves in high-risk assets and increasing import duties", "Lending to commercial entities and creating domestic sovereign wealth funds", "Establishing subsidiaries in emerging markets for diversification"],
      correctAnswerIndex: 0,
      explanation: "The potential options suggested for reserves utilization include setting up Strategic Oil Reserves (SOR), forming an Asian Development Fund (ADF), among others.",
    ),

    Question(
      questionText: "What role do Foreign Exchange Reserves (FEX) play in an economy's stability, particularly for open economies?",
      options: ["Buffering against global fallouts and preventing currency crises", "Maintaining fixed exchange rates with other economies", "Boosting domestic production and exports", "Generating higher interest rates on foreign investments"],
      correctAnswerIndex: 0,
      explanation: "FEX act as a buffer against global fallouts and prevent currency crises by providing stability amid large cross-border inflows and outflows.",
    ),

    Question(
      questionText: "Why do stronger economies like the US or Europe generally not require foreign exchange reserves as much as emerging economies?",
      options: ["They have market-determined exchange rates and convertible currencies", "They discourage foreign currency inflows", "They primarily rely on borrowing for any additional currency needs", "They have lower current account deficits compared to emerging economies"],
      correctAnswerIndex: 0,
      explanation: "Stronger economies often have market-determined exchange rates and convertible currencies, reducing the necessity for foreign exchange reserves.",
    ),

    Question(
      questionText: "What does the sufficiency of reserves for emerging economies like India encompass?",
      options: ["Providing a cover for external debt and import requirements", "Maintaining a high level of reserves compared to developed nations", "Eliminating current account deficits", "Avoiding any form of foreign borrowing"],
      correctAnswerIndex: 0,
      explanation: "The sufficiency of reserves for emerging economies involves providing a cover for external debt and import requirements.",
    ),

    Question(
      questionText: "How are Foreign Exchange Reserves (FEX) utilized to ensure liquidity without causing inflation?",
      options: ["Utilizing reserves for external debt repayment only", "Investing in high-risk assets abroad", "Lending reserves to non-bank entities", "Deploying reserves in foreign currency assets like US Treasury bills and global sovereign bonds"],
      correctAnswerIndex: 3,
      explanation: "FEX is deployed in foreign currency assets like US Treasury bills and global sovereign bonds to ensure liquidity without causing inflation by converting into the home currency.",
    ),

    Question(
      questionText: "What measures did India take to leverage its reserves for infrastructure development?",
      options: ["Investing in overseas infrastructure projects", "Creating subsidiaries abroad for infrastructure funding", "Directly funding domestic infrastructure projects", "Increasing domestic production capabilities"],
      correctAnswerIndex: 1,
      explanation: "India established subsidiaries overseas, borrowing from the RBI, to facilitate infrastructure funding through loans to Indian companies and investments in global companies' bonds.",
    ),

    Question(
      questionText: "What potential alternatives were proposed for utilizing reserves apart from infrastructure funding?",
      options: ["Deploying reserves in non-transparent sovereign wealth funds", "Establishing subsidiaries in emerging markets", "Setting up strategic oil reserves and an Asian Development Fund (ADF)", "Creating investment funds for domestic projects"],
      correctAnswerIndex: 2,
      explanation: "The suggested alternatives for utilizing reserves included setting up Strategic Oil Reserves (SOR) and forming an Asian Development Fund (ADF).",
    ),

    Question(
      questionText: "How has India's approach towards Foreign Exchange Reserves evolved over time?",
      options: ["India has consistently relied on reserves for domestic investment", "India initially faced a deficit in reserves, now achieving a surplus", "India has continuously increased its reserves without utilizing them", "India has learned to set international benchmarks for reserve adequacy"],
      correctAnswerIndex: 3,
      explanation: "Over time, India has developed international benchmarks to gauge reserve sufficiency, indicating an evolving approach towards managing reserves.",
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
    home: fer(),
  ));
}

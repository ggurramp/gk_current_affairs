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

class fiii extends StatefulWidget {
  final String? userIdentifier;

  fiii({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fiii> createState() => _fiiiState();
}

class _fiiiState extends State<fiii> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What are the two components that constitute foreign investment?",
      options: [
        "Foreign Direct Investment (FDI) and Foreign Institutional Investors (FII)",
        "Foreign Equity Investment and Foreign Debt Investment",
        "Foreign Government Investment and Foreign Corporate Investment",
        "Foreign Portfolio Investor (FPI) and Foreign Direct Investor (FDI)"
      ],
      correctAnswerIndex: 0,
      explanation: "Foreign investment comprises Foreign Direct Investment (FDI) which involves managing businesses and Foreign Institutional Investors (FII) now referred to as Foreign Portfolio Investors (FPI) primarily dealing with stock markets.",
    ),

    Question(
      questionText: "What are the objectives of Foreign Direct Investment (FDI) in India?",
      options: [
        "Short-term investments with immediate profits",
        "Strictly limited to new companies",
        "To directly manage businesses with a long-term commercial motive",
        "Exclusively focused on trading shares in stock markets"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary objective of FDI in India is to directly manage businesses with a long-term commercial motive, providing a blend of resources, technology, and professionalism.",
    ),

    Question(
      questionText: "What changes have occurred in India's policy towards foreign investment over time?",
      options: [
        "Complete restriction to FDI in select areas",
        "Liberalization of FDI with gradual opening of the economy",
        "Shift from FII to FDI as the dominant investment",
        "Exclusion of FDI in all sectors except high-priority areas"
      ],
      correctAnswerIndex: 1,
      explanation: "India's foreign investment policy has shifted gradually from strict selectivity to gradual liberalization, permitting FDI in numerous sectors over time.",
    ),

    Question(
      questionText: "What are the conditions set for Foreign Direct Investment (FDI) in multi-brand retail in India?",
      options: [
        "No restrictions on investment size or locations",
        "At least 51% equity with a minimum investment of USD 100 million, subject to back-end investment and certain sourcing requirements",
        "Only allowed in cities with populations over 10 million",
        "Limited to investments in single products or brands"
      ],
      correctAnswerIndex: 1,
      explanation: "FDI in multi-brand retailing in India requires a minimum of 51% equity, a minimum investment of USD 100 million, with 50% to be invested in back-end activities and a mandatory sourcing percentage from small-scale industries.",
    ),

    Question(
      questionText: "What factors contribute to India not being a preferred destination for FDI despite its advantages?",
      options: [
        "Overly flexible labor laws",
        "Transparency in reforms",
        "Effective single window clearance",
        "Comparative disadvantages in infrastructure and regulatory factors"
      ],
      correctAnswerIndex: 3,
      explanation: "India faces challenges in infrastructure, labor laws, imperfect markets, and lack of ease in doing business, contributing to it not being a preferred destination for FDI despite its advantages.",
    ),

    Question(
      questionText: "What is the predominant focus of Foreign Institutional Investors (FII), now known as Foreign Portfolio Investors (FPI), in their investment approach?",
      options: [
        "Long-term business management",
        "Trading in shares, corporate debt, and government securities",
        "Directly managing businesses in India",
        "Participating only in high-priority areas"
      ],
      correctAnswerIndex: 1,
      explanation: "Foreign Institutional Investors (FII) or Foreign Portfolio Investors (FPI) primarily focus on trading in shares, corporate debt, and government securities as part of their investment approach.",
    ),

    Question(
      questionText: "What is the primary concern associated with Foreign Portfolio Investors (FPI) investments according to the provided text?",
      options: [
        "Short-term volatility and potential sudden outflows",
        "Direct interference in domestic businesses",
        "Lack of interest in Indian stock markets",
        "Strict adherence to long-term investment plans"
      ],
      correctAnswerIndex: 0,
      explanation: "The primary concern related to Foreign Portfolio Investors (FPI) investments is their short-term and volatile nature, with the potential for sudden outflows from the market.",
    ),

    Question(
      questionText: "What has been the trend of Foreign Direct Investment (FDI) in India since 2008?",
      options: [
        "Consistent increase in investments",
        "Drastic decline in investments",
        "Fluctuating investments",
        "Steady rise in investments"
      ],
      correctAnswerIndex: 3,
      explanation: "Since 2008, there has been a steady rise in Foreign Direct Investment (FDI) in India, with an increase witnessed over the years.",
    ),

    Question(
      questionText: "What are some of the key reasons outlined in the text for India not being a preferred destination for Foreign Direct Investment (FDI)?",
      options: [
        "Low population density in major cities",
        "Lack of transparency in policy reforms",
        "Strict labor regulations and inflexible markets",
        "Overwhelming interest from foreign investors"
      ],
      correctAnswerIndex: 2,
      explanation: "The text mentions that India faces challenges such as strict labor regulations, market inflexibility, and lack of ease in doing business, contributing to it not being a preferred destination for FDI.",
    ),

    Question(
      questionText: "What are the proposed benefits of allowing Foreign Direct Investment (FDI) in organized retailing?",
      options: [
        "Reduction in the number of kirana stores",
        "Promotion of consumerism",
        "Enhanced supply chain management and employment creation",
        "Monopolization of consumer goods markets"
      ],
      correctAnswerIndex: 2,
      explanation: "Allowing FDI in organized retailing is proposed to bring benefits such as enhanced supply chain management, employment creation, and offering better quality goods at competitive prices.",
    ),
    Question(
      questionText: "What distinguishes Foreign Direct Investment (FDI) from Foreign Portfolio Investment (FPI) with regard to investor involvement?",
      options: [
        "FDI investors assume a passive role in company affairs, while FPI investors play an active role.",
        "FDI investors have ownership rights only, while FPI investors have both ownership and management control.",
        "FDI investors aim for short-term interests, while FPI investors pursue long-term interests.",
        "FDI investors assume an active role in company management, while FPI investors play a passive role."
      ],
      correctAnswerIndex: 3,
      explanation: "Foreign Direct Investment (FDI) investors assume an active role in company management, while Foreign Portfolio Investment (FPI) investors play a passive role.",
    ),

    Question(
      questionText: "What has been a notable concern associated with 'participatory notes (PN)' in the context of Foreign Portfolio Investment (FPI)?",
      options: [
        "Exposing the stock market to unregistered FPIs",
        "A decrease in FPI investments through PNs",
        "The reliability of Indian stock markets through PN investments",
        "Reducing government restrictions on FPI inflows"
      ],
      correctAnswerIndex: 0,
      explanation: "Participatory notes (PNs) have raised concerns by exposing the Indian stock market to unregistered Foreign Portfolio Investors (FPIs), whose identity and purpose of investment remain unknown.",
    ),

    Question(
      questionText: "How do Foreign Direct Investment (FDI) and Foreign Portfolio Investment (FPI) differ in terms of investment nature?",
      options: [
        "FDI is more volatile and reversible compared to FPI.",
        "FDI involves investments in financial assets only, unlike FPI.",
        "FPI involves substantial interest and control in enterprises, unlike FDI.",
        "FDI has more long-term interests compared to FPI."
      ],
      correctAnswerIndex: 3,
      explanation: "Foreign Direct Investment (FDI) has more long-term interests in the company invested, while Foreign Portfolio Investment (FPI) may not have such long-term interests.",
    ),

    Question(
        questionText: "What are the significant areas of foreign investment restrictions or concerns highlights ?",
        options: [
          "The limitations in the repatriation process of FPI investments",
          "The use of round tripping to avoid tax incidence on profits",
          "The lack of restrictions on FPI inflows in stock markets",
          "The decrease in FDI and FPI investments"
        ],
        correctAnswerIndex: 1,
        explanation: "The above question highlights concerns about 'round tripping' used to avoid tax on profits in Foreign Portfolio Investment (FPI)."
    ),

    Question(
      questionText: "What is the primary reason for FDI in the agriculture sector?",
      options: [
        "To create employment opportunities",
        "To enhance the country's service sector",
        "To increase investment in foreign bonds",
        "To promote consumerism in agriculture"
      ],
      correctAnswerIndex: 0,
      explanation: "Foreign Direct Investment (FDI) in the agriculture sector aims to create employment opportunities and enhance infrastructure.",
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
    home: fiii(),
  ));
}

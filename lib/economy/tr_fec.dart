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

class tf_fem extends StatefulWidget {
  final String? userIdentifier;

  tf_fem({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<tf_fem> createState() => _tf_femState();
}

class _tf_femState extends State<tf_fem> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What were some main features of India's trade reform policies post-1991?",
      options: [
        "Increase in import tariffs",
        "Strict enforcement of Quantitative Restrictions on Imports",
        "Creation of Special Economic Zones (SEZ)",
        "Imposition of restrictions on service exports"
      ],
      correctAnswerIndex: 2,
      explanation: "India's trade reform policies post-1991 included various measures such as the removal of Quantitative Restrictions on Imports, reduction in import tariffs, establishment of Special Economic Zones (SEZ), and promotion of service exports.",
    ),

    Question(
      questionText: "What was the purpose of repealing the Foreign Exchange Regulation Act (FERA) in India?",
      options: [
        "To encourage foreign currency in the domestic economy",
        "To enforce more stringent regulations on foreign currency transactions",
        "To restrict cross-border inflows and outflows",
        "To promote a closed economy"
      ],
      correctAnswerIndex: 0,
      explanation: "The repeal of FERA in India aimed to encourage foreign currency in the domestic economy by replacing it with the Foreign Exchange Management Act (FEMA) in 1999, which allowed more liberal foreign exchange transactions.",
    ),

    Question(
      questionText: "What does 'convertibility' mean in the context of open economies?",
      options: [
        "Strict regulations on currency exchange",
        "Unrestricted conversion of foreign currency into the domestic currency",
        "Limited access to global stock markets",
        "Fixed exchange rates"
      ],
      correctAnswerIndex: 1,
      explanation: "'Convertibility' in open economies refers to the unrestricted conversion of foreign currency into the domestic currency for various purposes such as transactions, investments, and savings.",
    ),

    Question(
      questionText: "What are some potential benefits of convertibility for open economies?",
      options: [
        "Increased transaction costs",
        "Greater global competitiveness",
        "Limited foreign investment",
        "Economic isolation"
      ],
      correctAnswerIndex: 1,
      explanation: "Convertibility in open economies leads to greater global competitiveness, allowing smoother inflows and outflows, enhanced efficiency, and global integration.",
    ),

    Question(
      questionText: "What are some possible risks or challenges associated with currency convertibility?",
      options: [
        "Limited liquidity",
        "Stable economic growth",
        "Flight of capital",
        "Decreased inflation"
      ],
      correctAnswerIndex: 2,
      explanation: "Currency convertibility risks include the potential flight of capital, which can destabilize an economy, alongside issues of liquidity, inflationary pressures, and economic growth concerns.",
    ),

    Question(
      questionText: "What were the key areas addressed by the Foreign Exchange Management Act (FEMA) enacted in 1999?",
      options: [
        "Rupee convertibility, agriculture reforms, and fiscal policy",
        "Sectoral deregulation, market access initiative, and trade liberalization",
        "Setting up of a separate enforcement directorate, rupee convertibility, and borrowings by the corporate sector",
        "Imposition of quantitative restrictions on imports and exports"
      ],
      correctAnswerIndex: 2,
      explanation: "FEMA covered areas such as rupee convertibility, the establishment of a separate enforcement directorate, and borrowings by the corporate sector, among other aspects, to manage foreign exchange transactions.",
    ),

    Question(
      questionText: "What is the significance of the term 'convertibility' in the context of foreign exchange management?",
      options: [
        "It indicates strict regulations on currency usage",
        "It allows free movement of capital across borders",
        "It limits access to global financial markets",
        "It promotes fixed exchange rates"
      ],
      correctAnswerIndex: 1,
      explanation: "In foreign exchange management, 'convertibility' implies the unrestricted movement and conversion of capital across borders without stringent regulations.",
    ),

    Question(
      questionText: "Why do economies with convertible currencies generally exhibit greater efficiency?",
      options: [
        "Due to increased inflation rates",
        "Because of limited capital flows",
        "They have lower levels of competitiveness",
        "They offer depth to the financial sector and are globally competitive"
      ],
      correctAnswerIndex: 3,
      explanation: "Economies with convertible currencies demonstrate greater efficiency as they provide depth to the financial sector and are considered globally competitive, offering various advantages in capital flows and market competitiveness.",
    ),

    Question(
      questionText: "What potential risk is associated with currency convertibility that is considered destabilizing for an economy?",
      options: [
        "Increased liquidity",
        "Flight of capital",
        "Strengthening of economic growth",
        "Limited inflation"
      ],
      correctAnswerIndex: 1,
      explanation: "The flight of capital is a potential risk associated with currency convertibility that can significantly destabilize an economy by causing abrupt outflows of capital.",
    ),

    Question(
      questionText: "What measures were taken under India's Foreign Exchange Management Act (FEMA) to ease restrictions on corporate borrowing?",
      options: [
        "Imposing limitations on borrowing from international markets",
        "Placing stringent controls on borrowing by Indian companies",
        "Allowing companies to borrow only in domestic currency",
        "Easing restrictions on borrowing from international markets based on specified limits and end-use declarations"
      ],
      correctAnswerIndex: 3,
      explanation: "Under FEMA, India eased restrictions on corporate borrowing from international markets by allowing borrowing within specified limits and requiring end-use declarations.",
    ),

    Question(
      questionText: "What are ADRs and GDRs in the context of Indian corporate fundraising?",
      options: [
        "Types of bonds issued by Indian companies",
        "Financial instruments issued by the Indian government",
        "Quasi-debt instruments for global investors",
        "Methods for issuing shares in the domestic market"
      ],
      correctAnswerIndex: 2,
      explanation: "ADRs and GDRs are depository receipts issued by international depositories against shares held by them, enabling Indian companies to raise funds in foreign currency from global markets without directly selling shares.",
    ),

    Question(
      questionText: "What distinguishes ADRs and GDRs from ordinary shares?",
      options: [
        "They offer voting rights to the holders",
        "They are not traded in the global stock markets",
        "They do not confer voting rights to holders",
        "They can only be issued in the domestic market"
      ],
      correctAnswerIndex: 2,
      explanation: "ADRs and GDRs do not confer voting rights to holders, even though they possess similar features to shares and can be traded in global stock markets.",
    ),

    Question(
      questionText: "What role does Ministry of Finance, Government of India play in the issuance of ADRs and GDRs?",
      options: [
        "They automatically approve all ADR and GDR offerings",
        "They regulate the listing process of domestic companies",
        "They require prior approval for ADR and GDR offerings",
        "They oversee the domestic market for share issuance"
      ],
      correctAnswerIndex: 2,
      explanation: "The Ministry of Finance, Government of India, requires prior approval for ADRs and GDRs offerings by Indian companies wanting to access international capital markets.",
    ),

    Question(
      questionText: "What are Foreign Currency Convertible Bonds (FCCBs) and their features?",
      options: [
        "They are debt instruments issued by foreign entities",
        "They are equity instruments without conversion options",
        "They are debt instruments with the option to convert into shares",
        "They are similar to ADRs and GDRs in nature"
      ],
      correctAnswerIndex: 2,
      explanation: "FCCBs are quasi-debt instruments issued by Indian companies in foreign currency, with the option for investors to convert them into shares at predetermined rates, offering flexibility in financing.",
    ),

    Question(
      questionText: "Under which route can Indian private corporate sectors access the international market?",
      options: [
        "Automatic route only",
        "Prior approval route only",
        "Both automatic and prior approval routes",
        "Not allowed to access international markets"
      ],
      correctAnswerIndex: 2,
      explanation: "Indian private corporate sectors can access the international market through various routes such as ECBs, ADRs, GDRs, FCCBs, or a combination, subject to both automatic and prior approval routes as per FEMA regulations.",
    ),

    Question(
      questionText: "What purpose do ADRs and GDRs serve for Indian companies in global markets?",
      options: [
        "Direct sale of shares in overseas markets",
        "Issuance of voting rights to holders",
        "Access to global capital markets without direct share sales",
        "Exclusive trading of shares in the domestic market"
      ],
      correctAnswerIndex: 2,
      explanation: "ADRs and GDRs allow Indian companies to raise funds from global markets without directly selling shares, providing access to international capital without conferring voting rights to holders.",
    ),

    Question(
      questionText: "What differentiates ADRs and GDRs from ordinary shares regarding voting rights?",
      options: [
        "ADRs and GDRs grant voting rights",
        "Ordinary shares are exclusively traded in domestic markets",
        "Neither ADRs nor GDRs confer voting rights",
        "Only ADRs confer voting rights"
      ],
      correctAnswerIndex: 2,
      explanation: "ADRs and GDRs, unlike ordinary shares, do not confer voting rights to holders even though they possess similarities and can be traded globally.",
    ),

    Question(
      questionText: "What is the regulatory requirement for Indian companies intending to issue ADRs and GDRs?",
      options: [
        "Mandatory approval from SEBI",
        "Automatic approval without regulatory oversight",
        "Prior approval from Ministry of Finance, Government of India",
        "No regulatory oversight required"
      ],
      correctAnswerIndex: 2,
      explanation: "Indian companies planning to issue ADRs and GDRs need prior approval from the Ministry of Finance, Government of India, to access global capital markets.",
    ),

    Question(
      questionText: "Describe the nature and flexibility offered by Foreign Currency Convertible Bonds (FCCBs).",
      options: [
        "Purely debt instruments with fixed interest rates",
        "Equity instruments without any conversion options",
        "Debt instruments with the option for conversion into shares",
        "Similar to ADRs in terms of features"
      ],
      correctAnswerIndex: 2,
      explanation: "FCCBs are quasi-debt instruments issued by Indian companies in foreign currency, providing the option for investors to convert them into shares at predetermined rates, offering both debt and equity characteristics.",
    ),

    Question(
      questionText: "What are the avenues available to Indian private corporate sectors to access the international market?",
      options: [
        "Automatic route exclusively",
        "Prior approval route exclusively",
        "Both automatic and prior approval routes",
        "Not permitted to access international markets"
      ],
      correctAnswerIndex: 2,
      explanation: "Indian private corporate sectors can access international markets through various channels like ECBs, ADRs, GDRs, FCCBs, or a combination, subject to both automatic and prior approval routes as per FEMA regulations.",
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
    home: tf_fem(),
  ));
}

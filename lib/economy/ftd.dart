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

class ftp extends StatefulWidget {
  final String? userIdentifier;

  ftp({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ftp> createState() => _ftpState();
}

class _ftpState extends State<ftp> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What is the main objective of the Merchandise Exports from India Scheme (MEIS) as per the Foreign Trade Policy 2015-2020?",
      options: ["To promote import of goods/products in India", "To facilitate infrastructure development for export of goods", "To offset infrastructural inefficiencies in exporting goods/products from India", "To restrict the export of high-value products"],
      correctAnswerIndex: 2,
      explanation: "The main objective of MEIS is to offset infrastructural inefficiencies and associated costs involved in the export of goods/products manufactured in India, particularly those with high export intensity and employment potential.",
    ),

    Question(
      questionText: "Under the Service Exports from India Scheme (SEIS) in the Foreign Trade Policy 2015-2020, what does SEIS provide rewards for?",
      options: ["Only goods exported from India", "Net foreign exchange earned on services provided from India", "Capital goods imported under EPCG scheme", "Imports from DTA units to SEZ units"],
      correctAnswerIndex: 1,
      explanation: "SEIS rewards service providers of notified services based on the net foreign exchange earned on services provided from India, regardless of the constitution or profile of the service provider.",
    ),

    Question(
      questionText: "What is the Export Promotion Capital Goods Scheme (EPCG) primarily focused on according to the Foreign Trade Policy?",
      options: ["Promoting capital goods imports at high import duties", "Boosting service exports", "Allowing duty-free import of goods for domestic consumption", "Encouraging import of capital goods for export purposes with specified obligations"],
      correctAnswerIndex: 3,
      explanation: "EPCG facilitates the import of capital goods and machines at zero or concessional import duty for sectors like engineering and pharmaceuticals, subject to an export obligation, to support exports.",
    ),

    Question(
      questionText: "What concessions are available to exporters operating in the Domestic Tariff Area (DTA) according to the Foreign Trade Policy?",
      options: ["Advance Authorization Scheme (AAS)", "Duty Drawback Scheme", "Exchange Earners Foreign Currency Account (EEFC)", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "Exporters in DTA are eligible for concessions such as Advance Authorization Scheme (AAS), Duty Drawback Scheme, and Exchange Earners Foreign Currency Account (EEFC).",
    ),

    Question(
      questionText: "What is the purpose of the Exchange Earners Foreign Currency Account (EEFC) as mentioned in the Foreign Trade Policy?",
      options: ["To earn interest on foreign currency holdings", "To limit the retention of export proceeds", "To prevent exchange rate fluctuations for exporters", "To restrict foreign currency transactions by Indian residents"],
      correctAnswerIndex: 2,
      explanation: "EEFC allows exporters or professionals earning foreign currency in India to maintain foreign currency accounts to retain 100% of export proceeds, helping them avoid exchange rate fluctuations and use foreign currency for export promotion activities.",
    ),

    Question(
      questionText: "What is the objective behind the incorporation of the Merchant Export From India Scheme (MEIS) in the Foreign Trade Policy 2015-2020?",
      options: ["To simplify the export process for merchants", "To encourage direct tax benefits for exporters", "To address infrastructural inefficiencies and costs in exporting Indian goods", "To promote imports of high-value products"],
      correctAnswerIndex: 2,
      explanation: "MEIS aims to offset infrastructural inefficiencies and associated costs in exporting goods/products manufactured in India, particularly those with high export intensity and employment potential.",
    ),

    Question(
      questionText: "What are the specific exclusions or ineligible categories for Duty Credit Scrip entitlement under MEIS as per the FTP 2015-20?",
      options: ["Exports through trans-shipment and exports of ores and concentrates", "Exports of precious metals and diamonds", "Exports of cereals and sugar", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The ineligible categories for Duty Credit Scrip entitlement under MEIS include various products such as precious metals, cereals, sugar, ores, concentrates, etc.",
    ),

    Question(
      questionText: "In the context of the Foreign Trade Policy, what is the purpose of the Service Exports from India Scheme (SEIS)?",
      options: ["To restrict services provided from India", "To provide duty credit scrips for importing services", "To reward service providers based on net foreign exchange earned on services from India", "To promote export of physical goods only"],
      correctAnswerIndex: 2,
      explanation: "SEIS aims to reward service providers based on the net foreign exchange earned on services provided from India, irrespective of the service provider's profile.",
    ),

    Question(
      questionText: "What are the benefits provided under the Export Oriented Units and Software Technology Park Scheme according to the Foreign Trade Policy?",
      options: ["Access to duty-free imports for domestic consumption", "Facilitation of infrastructural development for each unit", "Allowing units to share infrastructural facilities and inter-unit transfer of goods and services", "Strict regulations for de-bonding or exit of EOUs and STPs"],
      correctAnswerIndex: 2,
      explanation: "The benefits include allowing EOUs and STPs to share infrastructural facilities, facilitate inter-unit transfer of goods/services, and the provision for EOUs to set up warehouses near the port of export.",
    ),

    Question(
      questionText: "What is the purpose of the Exchange Earners Foreign Currency Account (EEFC) mentioned in the Foreign Trade Policy?",
      options: ["To earn interest on foreign currency holdings", "To limit the retention of export proceeds", "To prevent exchange rate fluctuations for exporters", "To restrict foreign currency transactions by Indian residents"],
      correctAnswerIndex: 2,
      explanation: "EEFC allows exporters or professionals earning foreign currency in India to maintain foreign currency accounts to retain 100% of export proceeds, helping them avoid exchange rate fluctuations and use foreign currency for export promotion activities.",
    ),

    Question(
      questionText: "Which country has overtaken India to become the largest exporter of manufactured goods globally?",
      options: ["United States", "China", "European Union", "United Kingdom"],
      correctAnswerIndex: 1,
      explanation: "China has become the largest exporter of manufactured goods globally, surpassing India and even the United States.",
    ),

    Question(
      questionText: "What percentage of India's exports is accounted for by manufactured goods according to the text?",
      options: ["Over 50%", "Around 40%", "Approximately 25%", "Over 75%"],
      correctAnswerIndex: 0,
      explanation: "Manufactured goods now account for over 69% of India's total exports, marking a shift from traditional and agricultural-based products.",
    ),

    Question(
      questionText: "Which countries have emerged as India's top two trading partners according to the text?",
      options: ["United States and European Union", "China and United Kingdom", "UAE and Singapore", "China and UAE"],
      correctAnswerIndex: 3,
      explanation: "China and UAE have emerged as India's top two trading partner countries, reflecting a shift from the dominance of the US economy.",
    ),

    Question(
      questionText: "What is the need identified in the text regarding government regulations concerning exports?",
      options: ["The need for stricter regulations to control exports", "The requirement for a more complex regulatory framework", "Simplified procedures and documentation for exporters", "Increased government control over export activities"],
      correctAnswerIndex: 2,
      explanation: "The text highlights the need for simplified procedures, documentation, and single window clearances for exporters, similar to those in the private manufacturing sector, to reduce impediments to exports.",
    ),

    Question(
      questionText:  "what aspect should the government focus on to promote stable and sustainable export growth?",
    options: ["Competitive pricing strategies", "Increased monetary incentives", "Quality improvement and moving up the value chain", "Market diversification"],
      correctAnswerIndex: 2,
      explanation: "The focus for stable and sustainable export growth should be on quality improvement, moving up the value chain, greater sophistication, and diversified markets, rather than competitive pricing strategies.",
    ),

    Question(
      questionText: "What has been the trend in India's trade growth in recent times compared to the growth of the Indian economy?",
      options: ["Trade growth has surpassed the growth of the Indian economy", "Trade growth has stagnated", "Trade growth has lagged behind the overall growth of the Indian economy", "Trade growth has declined sharply"],
      correctAnswerIndex: 2,
      explanation: "The text mentions that the growth of the Indian economy in recent times has outpaced trade growth or that trade growth has lagged behind the overall growth.",
    ),

    Question(
      questionText: "Which sectors are highlighted as notable among India's manufactured exports?",
      options: ["Agricultural goods and textiles", "Engineering goods, chemicals, and petroleum products", "Precious metals and stones", "Electronics and machinery"],
      correctAnswerIndex: 1,
      explanation: "Notable among India's manufactured exports are engineering goods, chemicals, petroleum oil and lubricants (POL) products, textiles, leather products, handicrafts, and gems and jewellery.",
    ),

    Question(
      questionText: "What change has been observed in India's exports with regards to markets and products, according to the text?",
      options: ["Decline in exports of manufactured goods", "Decreased market diversification", "Shift from traditional and agricultural-based products to increased exports of manufactured goods", "Increased dependency on the US market"],
      correctAnswerIndex: 2,
      explanation: "India's exports have diversified from traditional and agricultural-based products to increased exports of manufactured goods, which now account for over 69% of total exports.",
    ),

    Question(
      questionText: "What is identified as a requirement to bridge the apparent 'trust deficit' between the government and exporters?",
      options: ["Increased government regulations", "A change in government policies", "Closer collaboration and partnership between government and exporters", "Reducing government involvement in export activities"],
      correctAnswerIndex: 2,
      explanation: "To bridge the 'trust deficit,' closer collaboration and partnership between the government and exporters are essential, moving away from a micro-regulation approach.",
    ),

    Question(
      questionText: "According to the text, what is suggested to be the focus of India's export promotion efforts in terms of competitiveness?",
      options: ["Primarily based on prices", "Quality improvement and moving up the value chain", "Government subsidies and incentives", "Focused on reducing transaction costs"],
      correctAnswerIndex: 1,
      explanation: "The text emphasizes that the focus for export promotion efforts should be on quality improvement, moving up the value chain, greater sophistication, and diversified markets.",
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
    home: ftp(),
  ));
}

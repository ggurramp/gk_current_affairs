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

class iage extends StatefulWidget {
  final String? userIdentifier;

  iage({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<iage> createState() => _iageState();
}

class _iageState extends State<iage> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What is the importance of Purchasing Power Parity (PPP) in global comparisons of economies?",
      options: ["PPP reflects market-determined exchange rates", "PPP highlights differentials in purchasing power", "PPP establishes maximum tariff rates", "PPP focuses on GDP denominations"],
      correctAnswerIndex: 1,
      explanation: "Purchasing Power Parity (PPP) is crucial in global comparisons as it captures differentials in purchasing power for meaningful comparisons of economies.",
    ),

    Question(
      questionText: "How does India's output rank globally differ based on conventional exchange rate and PPP basis?",
      options: ["India ranks sixth based on conventional exchange rate and fourth based on PPP", "India ranks second based on conventional exchange rate and sixth based on PPP", "India ranks fourth based on conventional exchange rate and second based on PPP", "India ranks third based on conventional exchange rate and seventh based on PPP"],
      correctAnswerIndex: 0,
      explanation: "India ranks sixth globally based on conventional exchange rate but jumps to fourth position based on PPP, indicating a significant difference in global rankings.",
    ),

    Question(
      questionText: "What does India's low GNI per capita rank suggest, considering its substantial output?",
      options: ["India has an overpopulated workforce", "India lags behind due to insufficient output", "Population size impacts India's low GNI per capita rank", "India faces economic challenges despite a vast population"],
      correctAnswerIndex: 2,
      explanation: "India's low GNI per capita rank, despite substantial output, indicates that population size significantly affects its rank, contributing to the lower GNI per capita.",
    ),

    Question(
      questionText: "Explain the significance of India's position in the Human Development Index (HDI).",
      options: ["India leads in HDI among South Asian countries", "India's HDI saw a 50% decrease between 1990 and 2017", "India's HDI improved but inequality remains a challenge", "India ranks higher in HDI due to substantial output"],
      correctAnswerIndex: 2,
      explanation: "India's position in the HDI indicates significant improvement between 1990 and 2017 but highlights persisting challenges related to inequalities despite the rise in HDI.",
    ),

    Question(
      questionText: "What is the implication of the large population base on India's GNI per capita and HDI?",
      options: ["Large population leads to higher GNI per capita", "Population size adversely impacts India's GNI per capita and HDI rank", "Population size has no impact on GNI per capita or HDI", "Population size favors India's GNI per capita and HDI"],
      correctAnswerIndex: 1,
      explanation: "The large population base adversely affects India's GNI per capita and HDI rank, impacting its global standing despite substantial output.",
    ),

    Question(
      questionText: "What is the importance of Purchasing Power Parity (PPP) in global comparisons of economies?",
      options: ["PPP reflects market-determined exchange rates", "PPP highlights differentials in purchasing power", "PPP establishes maximum tariff rates", "PPP focuses on GDP denominations"],
      correctAnswerIndex: 1,
      explanation: "Purchasing Power Parity (PPP) is crucial in global comparisons as it captures differentials in purchasing power for meaningful comparisons of economies.",
    ),

    Question(
      questionText: "How does India's output rank globally differ based on conventional exchange rate and PPP basis?",
      options: ["India ranks sixth based on conventional exchange rate and fourth based on PPP", "India ranks second based on conventional exchange rate and sixth based on PPP", "India ranks fourth based on conventional exchange rate and second based on PPP", "India ranks third based on conventional exchange rate and seventh based on PPP"],
      correctAnswerIndex: 0,
      explanation: "India ranks sixth globally based on conventional exchange rate but jumps to fourth position based on PPP, indicating a significant difference in global rankings.",
    ),

    Question(
      questionText: "What does India's low GNI per capita rank suggest, considering its substantial output?",
      options: ["India has an overpopulated workforce", "India lags behind due to insufficient output", "Population size impacts India's low GNI per capita rank", "India faces economic challenges despite a vast population"],
      correctAnswerIndex: 2,
      explanation: "India's low GNI per capita rank, despite substantial output, indicates that population size significantly affects its rank, contributing to the lower GNI per capita.",
    ),

    Question(
      questionText: "Explain the significance of India's position in the Human Development Index (HDI).",
      options: ["India leads in HDI among South Asian countries", "India's HDI saw a 50% decrease between 1990 and 2017", "India's HDI improved but inequality remains a challenge", "India ranks higher in HDI due to substantial output"],
      correctAnswerIndex: 2,
      explanation: "India's position in the HDI indicates significant improvement between 1990 and 2017 but highlights persisting challenges related to inequalities despite the rise in HDI.",
    ),

    Question(
      questionText: "What is the implication of the large population base on India's GNI per capita and HDI?",
      options: ["Large population leads to higher GNI per capita", "Population size adversely impacts India's GNI per capita and HDI rank", "Population size has no impact on GNI per capita or HDI", "Population size favors India's GNI per capita and HDI"],
      correctAnswerIndex: 1,
      explanation: "The large population base adversely affects India's GNI per capita and HDI rank, impacting its global standing despite substantial output.",
    ),

    Question(
      questionText: "What is the Human Development Index (HDI), and who were the notable economists behind its formulation?",
      options: ["HDI measures economic growth; it was formulated by Dr. Mahbub Ul Haq and Dr. Amartya Sen", "HDI tracks social development; it was created by Dr. Amartya Sen and Dr. Manmohan Singh", "HDI evaluates educational progress; it was developed by Dr. Mahbub Ul Haq and Dr. Manmohan Singh", "HDI assesses human development; it was conceived by Dr. Mahbub Ul Haq and Dr. Amartya Sen"],
      correctAnswerIndex: 3,
      explanation: "The Human Development Index (HDI) gauges human development; it was conceptualized by Dr. Mahbub Ul Haq and Dr. Amartya Sen.",
    ),

    Question(
      questionText: "Why is the Human Development Index (HDI) considered a crucial metric for countries?",
      options: ["It measures economic output per capita", "It evaluates market exchange rates", "It ranks countries based on population size", "It assesses governmental efforts towards basic human development"],
      correctAnswerIndex: 3,
      explanation: "The HDI is pivotal as it assesses governmental endeavors aimed at fundamental human development, offering a means to rank countries based on these efforts.",
    ),

    Question(
      questionText: "Explain the implication of inequalities on India's Human Development Index (HDI) rank.",
      options: ["Inequalities have no impact on HDI rank", "HDI rank is higher due to inequalities", "HDI rank is lower due to inequalities", "Inequalities positively impact HDI"],
      correctAnswerIndex: 2,
      explanation: "Inequalities significantly affect India's HDI rank, causing a notable decrease, indicating that the HDI rank is lower due to prevailing inequalities.",
    ),

    Question(
      questionText: "How does India's HDI compare globally, and what does this signify for India's development efforts?",
      options: ["India ranks 80th globally, indicating robust development efforts", "India's HDI is higher than the South Asian average, highlighting remarkable development strides", "India ranks 189th globally, signifying substantial developmental challenges", "India's HDI is the highest in Asia, showcasing superior development strategies"],
      correctAnswerIndex: 2,
      explanation: "India's 130th rank globally in HDI reflects significant developmental challenges, despite a higher HDI value than the South Asian average, pointing to continued efforts required for improvement.",
    ),

    Question(
      questionText: "What message does India's HDI ranking convey for the government's policy orientation?",
      options: ["India's rank signifies effective government policies", "HDI ranking doesn't reflect governmental efforts", "It highlights the need for government policy realignment toward basic human development", "HDI ranking underscores the government's success in human development"],
      correctAnswerIndex: 2,
      explanation: "India's HDI ranking emphasizes the necessity for the government to recalibrate policies focusing on fundamental human development to improve living standards and enhance the HDI ranking.",
    ),

    Question(
      questionText: "Explain the difference between the conventional exchange rate and Purchasing Power Parity (PPP) in the context of global economic comparisons.",
      options: ["Conventional exchange rate is determined by goods' market values, while PPP accounts for price differentials of a set of traded goods", "PPP relies on market-determined rates, while conventional exchange rates consider purchasing power variations", "Conventional exchange rates capture market fluctuations, while PPP measures standardized goods' costs across economies", "PPP is based on local currency valuations, whereas conventional rates rely on international currency exchange"],
      correctAnswerIndex: 0,
      explanation: "The conventional exchange rate reflects goods' market values, whereas Purchasing Power Parity (PPP) adjusts for price variations of a standardized set of traded goods among economies.",
    ),

    Question(
      questionText: "How does India's Gross National Income (GNI) per capita compare to other nations, and what are the implications of this comparison?",
      options: ["India's GNI per capita is high, indicating robust income levels", "India's GNI per capita is similar to the global average, signifying a balanced economic standing", "India's GNI per capita is low, suggesting economic challenges despite significant output", "India's GNI per capita surpasses that of major economies, indicating prosperity"],
      correctAnswerIndex: 2,
      explanation: "India's GNI per capita is relatively low compared to other nations, indicating economic challenges despite its substantial output.",
    ),

    Question(
      questionText: "How does India's ranking in the Human Development Index (HDI) vary concerning the conventional exchange rate and PPP basis?",
      options: ["India's HDI ranking is higher on conventional exchange rate basis", "India's HDI ranking is better on PPP basis", "India's HDI ranking is lower on both conventional exchange rate and PPP basis", "India's HDI ranking is the same on both conventional exchange rate and PPP basis"],
      correctAnswerIndex: 1,
      explanation: "India's HDI ranking is superior on a PPP basis compared to the conventional exchange rate, indicating a better standing concerning human development measures.",
    ),

    Question(
      questionText: "What factors contribute to India's relatively low Human Development Index (HDI) rank, and how can these challenges be addressed?",
      options: ["India's HDI is low due to low GNI per capita, which can be improved by reducing population", "India's HDI is affected by inequalities and large population, requiring focus on education, skill development, and better governance", "India's HDI is impacted by the GDP, necessitating a change in economic policies", "India's HDI is influenced by high poverty rates, necessitating foreign investment for improvement"],
      correctAnswerIndex: 1,
      explanation: "India's relatively low HDI is due to inequalities and a large population, necessitating concentrated efforts on education, skill development, and improved governance to address these challenges.",
    ),

    Question(
      questionText: "What role does the Human Development Index (HDI) play in evaluating a country's progress, and what message does India's HDI rank convey?",
      options: ["HDI evaluates only economic growth, indicating India's strong economic progress", "HDI assesses governmental efforts towards basic human development, indicating India's comprehensive developmental challenges", "HDI measures population size, showing India's enormous demographic potential", "HDI analyzes technological advancements, showcasing India's technological strides"],
      correctAnswerIndex: 1,
      explanation: "The HDI assesses governmental efforts towards basic human development, signifying India's considerable challenges in ensuring fundamental human development despite its economic progress.",
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



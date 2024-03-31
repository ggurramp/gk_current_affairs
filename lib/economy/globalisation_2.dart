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

class globalisation_2 extends StatefulWidget {
  final String? userIdentifier;

  globalisation_2({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<globalisation_2> createState() => _globalisation_2State();
}

class _globalisation_2State extends State<globalisation_2> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What were the two primary export strategies discussed in the context of economic reforms in India?",
      options: [
        "Export-driven and import-focused strategy",
        "Growth-led export and export-driven growth strategy",
        "Domestic-focused and international-oriented strategy",
        "Liberalized growth and protectionist strategy"
      ],
      correctAnswerIndex: 1,
      explanation: "The two primary export strategies discussed were the 'export-led growth' strategy and the 'growth-led exports' strategy.",
    ),

    Question(
        questionText: "What characterized the crisis experienced by the Southeast Asian economies in the late nineties?",
        options: [
          "A surge in export demands",
          "A boom in foreign investments",
          "A currency crisis and erosion of faith in home currency",
          "A sudden increase in domestic production"
        ],
        correctAnswerIndex: 2,
        explanation: "The crisis in the late nineties led to a currency crisis, resulting in the erosion of faith in the home currency of Southeast Asian economies."
    ),

    Question(
      questionText: "What is the primary objective of India's 'Make in India' initiative?",
      options: [
        "To encourage imports from other nations",
        "To promote a service-oriented economy",
        "To boost the manufacturing sector and make India a global manufacturing hub",
        "To increase the export of raw materials"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary goal of 'Make in India' is to boost the manufacturing sector and position India as a global manufacturing hub.",
    ),

    Question(
      questionText: "Which strategy is deemed more appropriate for larger economies like India, considering their socio-economic complexities?",
      options: [
        "Purely export-driven growth strategy",
        "Growth-led export strategy",
        "Isolationist economic approach",
        "Foreign investment-centric strategy"
      ],
      correctAnswerIndex: 1,
      explanation: "For larger economies like India, the 'growth-led export strategy' is considered more appropriate, given their socio-economic complexities.",
    ),

    Question(
      questionText: "What reforms have been implemented to ease the process of starting a business in India?",
      options: [
        "Reducing the power connection time to 18 days",
        "Increasing the number of documents for imports and exports",
        "Extending the validity of industrial license to 10 years",
        "Incorporating a company within 1 day instead of 10 days"
      ],
      correctAnswerIndex: 3,
      explanation: "One of the reforms includes incorporating a company within 1 day instead of the previous 10 days to ease the process of starting a business in India.",
    ),

    Question(
      questionText: "What sectors have witnessed major Foreign Direct Investment (FDI) reforms ?",
      options: [
        "Manufacturing and agriculture only",
        "Information Technology and Energy",
        "Healthcare and Tourism",
        "Banking, Construction, and Retail among others"
      ],
      correctAnswerIndex: 3,
      explanation: "Several sectors including Banking, Construction, Retail, Pharmaceuticals, Telecom, and others have seen major FDI reforms.",
    ),

    Question(
      questionText: "What is the significance of the Semiconductor Integrated Circuits Layout-Design Act 2000?",
      options: [
        "It aims to protect intellectual property rights related to literary and artistic works.",
        "It provides protection in the area of semiconductor integrated circuit layout-designs.",
        "It focuses on plant variety protection and encourages new plant varieties.",
        "It deals with the protection of geographical indications."
      ],
      correctAnswerIndex: 1,
      explanation: "The Semiconductor Integrated Circuits Layout-Design Act 2000 aims to provide protection of Intellectual Property Right (IPR) in the area of Semiconductor Integrated Circuit Layout-Designs.",
    ),

    Question(
        questionText: "What was the major objective behind the adoption of the National IPR Policy in 2016?",
        options: [
          "To create an exclusive environment for large corporations",
          "To protect traditional knowledge and biodiversity resources",
          "To limit the role of educational institutions in innovation",
          "To reduce the influence of corporate entities including MSMEs"
        ],
        correctAnswerIndex: 1,
        explanation: "The major objective of the National IPR Policy was to create an innovation-conducive environment, stimulating creativity and innovation across sectors, and protect traditional knowledge and biodiversity resources."
    ),

    Question(
      questionText: "What has been an achievement of the National IPR Policy regarding IP application processing?",
      options: [
        "An increase in pendency of patent applications",
        "A reduction in the issuance of patent and trademark certificates",
        "A drastic reduction in pendency of IP applications",
        "No significant change in the processing of IP applications"
      ],
      correctAnswerIndex: 2,
      explanation: "One achievement has been a drastic reduction in pendency in IP applications, especially in patent applications.",
    ),

    Question(
      questionText: "What initiative has been undertaken to promote IPR awareness among different sectors of society?",
      options: [
        "Including IPR content only in university curriculums",
        "Conducting IPR awareness programs solely for industry stakeholders",
        "Conducting IPR awareness programs in academic institutions, industry, police, customs, and judiciary",
        "Exclusively establishing Technology and Innovation Support Centres (TISCs)"
      ],
      correctAnswerIndex: 2,
      explanation: "IPR awareness programs have been conducted in over 200 academic institutions, including rural schools through satellite communication, and for industry, police, customs, and judiciary.",
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
    home: globalisation_2(),
  ));
}

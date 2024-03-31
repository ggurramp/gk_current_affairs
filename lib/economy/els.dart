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

class els extends StatefulWidget {
  final String? userIdentifier;

  els({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<els> createState() => _elsState();
}

class _elsState extends State<els> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What is the main objective behind the establishment of Special Economic Zones (SEZs) in India and China?",
      options: ["To promote domestic market growth", "To provide tax exemptions to local businesses", "To encourage exports and attract foreign investment", "To improve agricultural productivity"],
      correctAnswerIndex: 2,
      explanation: "SEZs in India and China aim to foster export-oriented growth, attract foreign investment, and facilitate increased exports by providing various incentives and infrastructure facilities.",
    ),

    Question(
      questionText: "What does SEZ stand for in the context of economic development?",
      options: ["State Economic Zone", "Special Economic Zone", "Strategic Export Zone", "Service Enhancement Zone"],
      correctAnswerIndex: 1,
      explanation: "SEZ stands for Special Economic Zone, which refers to a designated geographical area within a country focused on promoting exports by offering various incentives and facilities to businesses.",
    ),

    Question(
      questionText: "What distinguishes SEZs from the Domestic Tariff Area (DTA) and the Rest of the World (ROW)?",
      options: ["SEZs have higher taxation", "SEZs are exclusively for service sectors", "SEZs enjoy tax benefits and exemption from duties", "SEZs are entirely government-owned"],
      correctAnswerIndex: 2,
      explanation: "SEZs differentiate themselves by providing tax benefits and exemption from duties for goods produced within their boundaries, attracting both domestic and foreign investment.",
    ),

    Question(
      questionText: "What is the primary aim of establishing Agricultural Export Zones (AEZs) in India?",
      options: ["To prioritize agricultural imports", "To limit agricultural exports for domestic consumption", "To boost agricultural exports and increase farmers' income", "To encourage urbanization in rural areas"],
      correctAnswerIndex: 2,
      explanation: "AEZs are designed to stimulate agricultural exports, offering farmers opportunities to export their produce, improve income, and reduce dependence on intermediaries.",
    ),

    Question(
      questionText: "What role do Export-oriented Units (EOUs) play in the context of economic development?",
      options: ["They focus solely on domestic market expansion", "They enhance infrastructure in Special Economic Zones", "They facilitate export growth with tax benefits", "They manage agricultural export zones"],
      correctAnswerIndex: 2,
      explanation: "EOUs contribute to export growth by enjoying benefits similar to SEZs, encouraging businesses with export potential to thrive.",
    ),

    Question(
      questionText: "What is the purpose of the Technology Parks detailed in the text?",
      options: ["To support domestic trade exclusively", "To promote agricultural research", "To facilitate export growth in specific sectors like software and biotechnology", "To provide tax exemptions for local businesses"],
      correctAnswerIndex: 2,
      explanation: "Technology Parks such as STPI and EHTP are dedicated to promoting exports in sectors like software, hardware, and biotechnology, contributing significantly to India's export performance in these areas.",
    ),

    Question(
      questionText: "What significant tax benefits are enjoyed by units operating within Special Economic Zones (SEZs)?",
      options: ["Full exemption from income tax for 10 years", "Partial tax exemption for 5 years followed by a 50% tax rate for the next 5 years", "Exemption from import duties only", "No tax benefits are provided"],
      correctAnswerIndex: 1,
      explanation: "Units in SEZs enjoy a tax holiday for 5 years on profits earned, followed by a 50% tax rate for the subsequent 5 years, along with other duty exemptions.",
    ),

    Question(
      questionText: "How does the concept of SEZs differ between China and India based on their governance and development?",
      options: ["China has more SEZs than India", "China's SEZs are primarily government-driven while India's are driven by the private sector", "India has larger SEZs compared to China", "Both countries have identical SEZ development models"],
      correctAnswerIndex: 1,
      explanation: "China's SEZs are largely government-driven and strategically located, while India's SEZs are driven by the private sector and are smaller in size with diverse locations.",
    ),

    Question(
      questionText: "What are some of the concerns or criticisms associated with the Special Economic Zones (SEZs) model?",
      options: ["Excessive government control", "Limited tax benefits", "Potential adverse effects on food security", "Lack of infrastructure in SEZs"],
      correctAnswerIndex: 2,
      explanation: "Critics worry that acquiring land for SEZs could affect arable land, threatening food security, although the impact would be minimal given the small percentage of land occupied by SEZs.",
    ),

    Question(
      questionText: "What is the significance of Export-oriented Units (EOUs) in the context of export-driven growth?",
      options: ["EOUs cater to domestic market demands", "EOUs are tax-exempt zones within SEZs", "EOUs focus on enhancing agricultural exports", "EOUs contribute to export growth similar to SEZs"],
      correctAnswerIndex: 3,
      explanation: "EOUs are not location-specific and contribute to export growth, availing benefits akin to SEZs to boost exports.",
    ),

    Question(
      questionText: "What recommendations were made by the Baba Kalyani committee regarding Special Economic Zones (SEZs) in India?",
      options: ["Enforcing stricter regulations for SEZ development", "Shift focus from export growth to employment and economic growth", "Eliminate tax benefits for SEZs", "Reduce the number of SEZs in India"],
      correctAnswerIndex: 1,
      explanation: "The committee suggested shifting focus towards employment and economic growth, creating a demand-driven approach, and enhancing ease of doing business within SEZs.",
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
    home: els(),
  ));
}

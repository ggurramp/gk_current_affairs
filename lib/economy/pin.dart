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

class pin extends StatefulWidget {
  final String? userIdentifier;

  pin({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<pin> createState() => _pinState();
}

class _pinState extends State<pin> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What were the core objectives of the Twelfth Five-Year Plan in India?",
      options: [
        "Primarily focusing on industrial growth",
        "Aiming to boost agricultural production only",
        "Encouraging inclusive growth through development in agriculture, education, health, and social welfare",
        "Promoting urban infrastructure development"
      ],
      correctAnswerIndex: 2,
      explanation: "The Twelfth Five-Year Plan aimed to encourage inclusive growth by developing agriculture, education, health, and social welfare sectors.",
    ),

    Question(
      questionText: "What significant challenges did the Twelfth Five-Year Plan face according to the provided text?",
      options: [
        "Limited central government interventions in agriculture",
        "Decreased emphasis on poverty alleviation programs",
        "Lack of focus on labor sector reforms",
        "Failure to bridge the divide across regions"
      ],
      correctAnswerIndex: 0,
      explanation: "According to the text, one of the challenges faced by the Twelfth Five-Year Plan was limited central government interventions in the domain of agriculture.",
    ),

    Question(
      questionText: "What prompted the establishment of NITI Aayog in place of the Planning Commission?",
      options: [
        "Increasing emphasis on rural infrastructure development",
        "A shift towards centralized planning",
        "A desire to better meet the needs of the people of India",
        "Inadequate cooperation among the states"
      ],
      correctAnswerIndex: 2,
      explanation: "NITI Aayog was established to better meet the needs and aspirations of the people of India, representing an important evolutionary change from the Planning Commission.",
    ),

    Question(
      questionText: "What is the primary responsibility of the Planning Commission in India's developmental planning process?",
      options: [
        "Approval of budget allocations",
        "Implementation of welfare schemes",
        "Formulation of five-year plans",
        "Conducting mid-term evaluations"
      ],
      correctAnswerIndex: 2,
      explanation: "The Planning Commission in India is primarily responsible for the formulation of five-year plans aimed at the country's developmental progress.",
    ),

    Question(
      questionText: "What significant change led to the establishment of NITI Aayog, replacing the Planning Commission?",
      options: [
        "Shift from directed planning to indicative planning",
        "Enhanced participation of the private sector in planning",
        "Fostering Cooperative Federalism",
        "Focus on poverty eradication"
      ],
      correctAnswerIndex: 3,
      explanation: "The establishment of NITI Aayog was a significant change aimed at better serving the needs and aspirations of the people of India, particularly focusing on poverty eradication and fostering Cooperative Federalism.",
    ),

    Question(
      questionText: "Which plan introduced the concept of 'Inclusive Growth' and emphasized the need for growth benefits to reach the masses?",
      options: [
        "Seventh Plan",
        "Tenth Plan",
        "Eleventh Plan",
        "Eighth Plan"
      ],
      correctAnswerIndex: 2,
      explanation: "The concept of 'Inclusive Growth' was introduced in the Eleventh Plan, emphasizing that growth benefits should reach the masses, ensuring equitable development.",
    ),

    Question(
      questionText: "What are some of the functions of NITI Aayog as mentioned in the text?",
      options: [
        "Strictly monitoring the implementation of existing government programmes",
        "Encouraging a siloed approach among government departments",
        "Fostering cooperative federalism through support initiatives with States",
        "Ignoring the interests of national security in economic strategy and policy"
      ],
      correctAnswerIndex: 2,
      explanation: "As per the text, one of the functions of NITI Aayog is to foster cooperative federalism through support initiatives with States.",
    ),

    Question(
      questionText: "What significant role has NITI Aayog been entrusted with in India?",
      options: [
        "Exclusively focusing on central government schemes",
        "Executing the Millennium Development Goals (MDGs)",
        "Implementing state-specific development agendas",
        "Coordinating and executing the 2030 Agenda for Sustainable Development (SDGs)"
      ],
      correctAnswerIndex: 3,
      explanation: "NITI Aayog has been entrusted with coordinating and executing the 2030 Agenda for Sustainable Development (SDGs) as mentioned in the text.",
    ),

    Question(
      questionText: "What future documents and strategies is NITI Aayog working on?",
      options: [
        "A two-year Action Agenda from 2019-2021",
        "A seven-year National Development Agenda",
        "A six-year strategy for economic growth",
        "A plan for disengaging the centre from state government implementations"
      ],
      correctAnswerIndex: 1,
      explanation: "NITI Aayog is working on a seven-year National Development Agenda as mentioned in the text.",
    ),

    Question(
      questionText: "What is the objective of the 'Ek Bharat Shrestha Bharat' initiative undertaken by NITI Aayog?",
      options: [
        "To promote competitive federalism among Indian states",
        "To transform identified aspirational districts across India",
        "To foster cultural exchanges and education for national unity and excellence",
        "To measure and monitor states' progress in sectors like health and education"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Ek Bharat Shrestha Bharat' initiative by NITI Aayog aims to foster cultural exchanges and education for national unity and excellence.",
    ),

    Question(
      questionText: "What is the focus of the 'Sustainable Action for Transforming Human Capital (SATH)' initiative initiated by NITI Aayog?",
      options: [
        "Improving infrastructure development across Indian states",
        "Measuring incremental annual outcomes in critical social sectors",
        "Transforming health and education sectors in states",
        "Developing indices for efficient management of water resources"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Sustainable Action for Transforming Human Capital (SATH)' initiative aims at transforming health and education sectors in states.",
    ),

    Question(
      questionText: "What is the primary goal of the 'Development Support Services to States (DSSS)' initiative launched by NITI Aayog?",
      options: [
        "Resolving pending issues with Central Ministries",
        "Improving the performance of hospitals across districts",
        "Building institutional capacities and addressing structural issues in project development",
        "Preparing State Human Development Reports"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary goal of the 'Development Support Services to States (DSSS)' initiative is to build institutional capacities and address structural issues in project development.",
    ),

    Question(
      questionText: "What is the objective of NITI Aayog's 'Public-Private Partnership in Health' initiative?",
      options: [
        "Developing indices for efficient management of water resources",
        "Improving infrastructure development across Indian states",
        "Aiding states in achieving health goals for select non-communicable diseases",
        "Transforming identified aspirational districts across India"
      ],
      correctAnswerIndex: 2,
      explanation: "The objective of NITI Aayog's 'Public-Private Partnership in Health' initiative is to aid states in achieving health goals for select non-communicable diseases.",
    ),

    Question(
      questionText: "What is the aim of NITI Aayog's 'Competitive Federalism' initiatives?",
      options: [
        "To measure and monitor states' progress in sectors like health and education",
        "To promote competitive federalism among Indian states",
        "To develop indices for efficient management of water resources",
        "To foster cultural exchanges and education for national unity and excellence"
      ],
      correctAnswerIndex: 1,
      explanation: "The aim of NITI Aayog's 'Competitive Federalism' initiatives is to promote competitive federalism among Indian states.",
    ),

    Question(
      questionText: "What is the purpose of the 'Transforming of 115 Identified Aspirational Districts' programme initiated by NITI Aayog?",
      options: [
        "To measure and monitor states' progress in sectors like health and education",
        "To foster cultural exchanges and education for national unity and excellence",
        "To rapidly transform districts showing lesser progress in key social areas",
        "To aid states in achieving health goals for select non-communicable diseases"
      ],
      correctAnswerIndex: 2,
      explanation: "The purpose of the 'Transforming of 115 Identified Aspirational Districts' programme initiated by NITI Aayog is to rapidly transform districts that have shown lesser progress in key social areas.",
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
    home: pin(),
  ));
}

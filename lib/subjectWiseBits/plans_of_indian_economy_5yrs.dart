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

class plans_indian_economy extends StatefulWidget {
  final String? userIdentifier;

  plans_indian_economy({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<plans_indian_economy> createState() => _plans_indian_economyState();
}

class _plans_indian_economyState extends State<plans_indian_economy> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "Who proposed the Visvesvaraya Plan, and what was its objective?",
      options: [
        "Sir M. Visvesvaraya; Double the national income in a decade through industrialization",
        "Jawahar Lal Nehru; Rapid agricultural growth",
        "Purushottamdas Thakurdas; Import substitution and export pessimism",
        "M. N. Roy; Nationalization of agriculture and production activities"
      ],
      correctAnswerIndex: 0,
      explanation: "The Visvesvaraya Plan was proposed by Sir M. Visvesvaraya, aiming to double the national income in a decade through industrialization.",
    ),
    Question(
      questionText: "Which plan laid emphasis on government intervention and regulation in the economy?",
      options: [
        "National Planning Committee (NPC)",
        "Bombay Plan",
        "People’s Plan",
        "Gandhian Plan"
      ],
      correctAnswerIndex: 1,
      explanation: "The Bombay Plan emphasized government intervention and regulation in the economy for growth, despite not being officially accepted.",
    ),
    Question(
      questionText: "Who drafted the People's Plan, and what were its key principles?",
      options: [
        "M. N. Roy; Primacy to agriculture and nationalization of all production activities",
        "S. N. Aggarwal; Decentralized economic structure and self-contained villages",
        "Jai Prakash Narayan; Inspired by Gandhi Plan and Vinoba Bhave’s principles",
        "Pandit J.L. Nehru; Formulation of five-year plans through the Planning Commission"
      ],
      correctAnswerIndex: 0,
      explanation: "M. N. Roy drafted the People's Plan, which gave primacy to agriculture and advocated for the nationalization of agriculture and all production activities.",
    ),
    Question(
      questionText: "What were the key principles of the Gandhian Plan?",
      options: [
        "Decentralized economic structure and self-contained villages",
        "Rapid industrialization and democratic capitalism",
        "Self-sufficiency through foreign technology and land reforms",
        "Import substitution and export pessimism"
      ],
      correctAnswerIndex: 0,
      explanation: "The Gandhian Plan emphasized a decentralized economic structure with self-contained villages, placing more emphasis on agriculture.",
    ),
    Question(
      questionText: "Who drafted the Sarvodaya Plan, and what were its key focus areas?",
      options: [
        "Jawahar Lal Nehru; Industrialization and urbanization",
        "M. N. Roy; Agriculture and nationalization",
        "S. N. Aggarwal; Decentralized participatory planning and self-sufficiency",
        "Jai Prakash Narayan; Growth with justice and equity"
      ],
      correctAnswerIndex: 2,
      explanation: "Jai Prakash Narayan drafted the Sarvodaya Plan, which focused on agriculture, small and cotton industries, and self-sufficiency through land reforms.",
    ),
    Question(
      questionText: "What was the objective of the Fourth Five-Year Plan?",
      options: [
        "Rapid industrialization and import substitution",
        "Self-sufficiency in food and saying no to foreign aid",
        "Poverty eradication and productivity enhancement",
        "Growth with justice and equity"
      ],
      correctAnswerIndex: 1,
      explanation: "The Fourth Five-Year Plan aimed at achieving self-sufficiency in food and rejecting foreign aid.",
    ),
    Question(
      questionText: "What was the focus of the Eighth Five-Year Plan, and what new economic policy was launched during this plan?",
      options: [
        "Growth with justice and equity; Import substitution",
        "Plan with a human face; Liberalization, Privatization, and Globalization (LPG)",
        "Faster, more inclusive growth; Self-reliance",
        "Removal of poverty; Modernization of technology"
      ],
      correctAnswerIndex: 1,
      explanation: "The Eighth Five-Year Plan focused on 'Plan with a human face' and launched the new economic policy with Liberalization, Privatization, and Globalization (LPG).",
    ),
    Question(
      questionText: "What were the key dimensions stressed upon in the Ninth Five-Year Plan?",
      options: [
        "Poverty eradication and productivity enhancement",
        "Growth with justice and equity",
        "Faster growth and more inclusive growth",
        "Self-sufficiency and import substitution"
      ],
      correctAnswerIndex: 1,
      explanation: "The Ninth Five-Year Plan stressed on four dimensions: quality of life; generation of productive employment; regional balance, and self-reliance.",
    ),
    Question(
      questionText: "What were the objectives of the Tenth Five-Year Plan?",
      options: [
        "Double the per capita income and reduce poverty ratio by 15%",
        "Faster growth and more inclusive growth",
        "Growth with justice and equity",
        "Self-sufficiency in food and saying no to foreign aid"
      ],
      correctAnswerIndex: 0,
      explanation: "The Tenth Five-Year Plan aimed to double the per capita income and reduce the poverty ratio by 15%.",
    ),
    Question(
      questionText: "What was the focus of the Twelfth Five-Year Plan?",
      options: [
        "Faster, more inclusive growth and sustainable growth",
        "Growth with justice and equity",
        "Double the per capita income and reduce poverty ratio",
        "Rapid industrialization and import substitution"
      ],
      correctAnswerIndex: 0,
      explanation: "The Twelfth Five-Year Plan focused on faster, more inclusive growth, and sustainable growth.",
    ),
    Question(
      questionText: "What institution replaced the Planning Commission in 2015, and what are its dual objectives?",
      options: [
        "National Development Council (NDC); Economic development and regional balance",
        "NITI Aayog; Achieving sustainable development goals and cooperative federalism",
        "Economic Programme Committee (EPC); Human resource development and privatization",
        "People’s Plan; Agriculture and nationalization"
      ],
      correctAnswerIndex: 1,
      explanation: "NITI Aayog replaced the Planning Commission in 2015, with dual objectives of achieving sustainable development goals and enhancing cooperative federalism.",
    ),

    Question(
      questionText: "What initiatives are included in NITI Aayog's objectives?",
      options: [
        "Action Plan- 3 Years",
        "Strategy Plan- 7 Years",
        "Vision Plan- 15 Years",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "NITI Aayog's initiatives include Action Plan- 3 Years, Strategy Plan- 7 Years, and Vision Plan- 15 Years.",
    ),
    Question(
      questionText: "What was the Harrod Domer model, and which Five-Year Plan was based on it?",
      options: [
        "Growth rate depends on investment rate and productivity of capital; First Five-Year Plan",
        "Rapid industrialization; Second Five-Year Plan",
        "Self-sufficiency in food; Fourth Five-Year Plan",
        "Quality of life and regional balance; Ninth Five-Year Plan"
      ],
      correctAnswerIndex: 0,
      explanation: "The Harrod Domer model states that the growth rate depends on the investment rate and productivity of capital. The First Five-Year Plan was based on this model.",
    ),
    Question(
      questionText: "What is the Mahalanobis Plan, and which Five-Year Plan is also known by this name?",
      options: [
        "Advocates planning shift from agriculture to industries; Second Five-Year Plan",
        "Emphasizes self-sufficiency in food; Fourth Five-Year Plan",
        "Stresses on human resource development; Eighth Five-Year Plan",
        "Focus on faster growth and more inclusive growth; Eleventh Five-Year Plan"
      ],
      correctAnswerIndex: 0,
      explanation: "The Mahalanobis Plan advocates planning shift from agriculture to industries. It is also known as the Second Five-Year Plan.",
    ),
    Question(
      questionText: "Which plan marked the launch of the new economic policy with Liberalization, Privatization, and Globalization (LPG)?",
      options: [
        "Seventh Five-Year Plan",
        "Eighth Five-Year Plan",
        "Ninth Five-Year Plan",
        "Tenth Five-Year Plan"
      ],
      correctAnswerIndex: 1,
      explanation: "The new economic policy with Liberalization, Privatization, and Globalization (LPG) was launched during the Eighth Five-Year Plan.",
    ),
    Question(
      questionText: "Why were there two annual plans in 1990-1991 and 1991-1992 during the Seventh Five-Year Plan?",
      options: [
        "Focus on productivity and work",
        "Private sector priority over the public sector",
        "Volatility in political situations",
        "Global economic recession"
      ],
      correctAnswerIndex: 2,
      explanation: "Due to volatile political situations at the center, two annual plans were commenced for the year 1990-1991 and 1991-1992 during the Seventh Five-Year Plan.",
    ),
    Question(
      questionText: "What were the key dimensions stressed upon in the Eleventh Five-Year Plan?",
      options: [
        "Quality of life and regional balance",
        "Faster growth and more inclusive growth",
        "Human resource development",
        "Growth with justice and equity"
      ],
      correctAnswerIndex: 1,
      explanation: "The Eleventh Five-Year Plan stressed on faster growth and more inclusive growth.",
    ),



    Question(
      questionText: "What is the focus of the Twelfth Five-Year Plan?",
      options: [
        "Faster, more inclusive growth and sustainable growth",
        "Growth with justice and equity",
        "Double the per capita income and reduce poverty ratio",
        "Rapid industrialization and import substitution"
      ],
      correctAnswerIndex: 0,
      explanation: "The Twelfth Five-Year Plan focused on faster, more inclusive growth, and sustainable growth.",
    ),
    Question(
      questionText: "What institution replaced the Planning Commission in 2015, and what are its dual objectives?",
      options: [
        "National Development Council (NDC); Economic development and regional balance",
        "NITI Aayog; Achieving sustainable development goals and cooperative federalism",
        "Economic Programme Committee (EPC); Human resource development and privatization",
        "People’s Plan; Agriculture and nationalization"
      ],
      correctAnswerIndex: 1,
      explanation: "NITI Aayog replaced the Planning Commission in 2015, with dual objectives of achieving sustainable development goals and enhancing cooperative federalism.",
    ),
    Question(
      questionText: "What initiatives are included in NITI Aayog's objectives?",
      options: [
        "Action Plan- 3 Years",
        "Strategy Plan- 7 Years",
        "Vision Plan- 15 Years",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "NITI Aayog's initiatives include Action Plan- 3 Years, Strategy Plan- 7 Years, and Vision Plan- 15 Years.",
    ),
    Question(
      questionText: "What was the Harrod Domer model, and which Five-Year Plan was based on it?",
      options: [
        "Growth rate depends on investment rate and productivity of capital; First Five-Year Plan",
        "Rapid industrialization; Second Five-Year Plan",
        "Self-sufficiency in food; Fourth Five-Year Plan",
        "Quality of life and regional balance; Ninth Five-Year Plan"
      ],
      correctAnswerIndex: 0,
      explanation: "The Harrod Domer model states that the growth rate depends on the investment rate and productivity of capital. The First Five-Year Plan was based on this model.",
    ),
    Question(
      questionText: "What is the Mahalanobis Plan, and which Five-Year Plan is also known by this name?",
      options: [
        "Advocates planning shift from agriculture to industries; Second Five-Year Plan",
        "Emphasizes self-sufficiency in food; Fourth Five-Year Plan",
        "Stresses on human resource development; Eighth Five-Year Plan",
        "Focus on faster growth and more inclusive growth; Eleventh Five-Year Plan"
      ],
      correctAnswerIndex: 0,
      explanation: "The Mahalanobis Plan advocates planning shift from agriculture to industries. It is also known as the Second Five-Year Plan.",
    ),
    Question(
      questionText: "Which plan marked the launch of the new economic policy with Liberalization, Privatization, and Globalization (LPG)?",
      options: [
        "Seventh Five-Year Plan",
        "Eighth Five-Year Plan",
        "Ninth Five-Year Plan",
        "Tenth Five-Year Plan"
      ],
      correctAnswerIndex: 1,
      explanation: "The new economic policy with Liberalization, Privatization, and Globalization (LPG) was launched during the Eighth Five-Year Plan.",
    ),
    Question(
      questionText: "Why were there two annual plans in 1990-1991 and 1991-1992 during the Seventh Five-Year Plan?",
      options: [
        "Focus on productivity and work",
        "Private sector priority over the public sector",
        "Volatility in political situations",
        "Global economic recession"
      ],
      correctAnswerIndex: 2,
      explanation: "Due to volatile political situations at the center, two annual plans were commenced for the year 1990-1991 and 1991-1992 during the Seventh Five-Year Plan.",
    ),
    Question(
      questionText: "What were the key dimensions stressed upon in the Eleventh Five-Year Plan?",
      options: [
        "Quality of life and regional balance",
        "Faster growth and more inclusive growth",
        "Human resource development",
        "Growth with justice and equity"
      ],
      correctAnswerIndex: 1,
      explanation: "The Eleventh Five-Year Plan stressed on faster growth and more inclusive growth.",
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
              return InkWell( // Added this InkWell
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex; // Store user's answer
                  });
                },
                child: ListTile(
                  title: Text(optionText),
                  leading: Radio<int>(
                    value: optionIndex,
                    groupValue: _selectedAnswerIndex,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedAnswerIndex = value;
                        _userAnswers[_currentQuestionIndex] = value; // Store user's answer
                      });
                    },
                  ),
                ),
              );
            }).toList(),
            // Show correct answer if an option is selected
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Set your desired color here
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
    home: plans_indian_economy(),
  ));
}

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

class consumerCommission extends StatefulWidget {
  final String? userIdentifier;

  consumerCommission({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<consumerCommission> createState() => _consumerCommissionState();
}

class _consumerCommissionState extends State<consumerCommission> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    //37.CONSUMER COMMISSIONS

    Question(
      questionText: "What is the prescribed jurisdiction of the District Commission regarding the value of goods or services in consumer complaints?",
      options: ["Up to rupees one crore", "Up to rupees fifty lakhs", "Up to rupees two crores", "Up to rupees ten crores"],
      correctAnswerIndex: 1,
      explanation: "The District Commission has jurisdiction to entertain complaints where the value of the goods or services paid as consideration does not exceed rupees fifty lakhs, as prescribed in 2021.",
    ),

    Question(
      questionText: "How many members, at a minimum, does each District Consumer Disputes Redressal Commission consist of?",
      options: ["One", "Two", "Three", "Four"],
      correctAnswerIndex: 2,
      explanation: "Each District Consumer Disputes Redressal Commission consists of a President and not less than two members, as may be prescribed.",
    ),

    Question(
      questionText: "What is the maximum value of goods or services for which the District Commission has jurisdiction?",
      options: ["Up to rupees two crores", "Up to rupees one crore", "Up to rupees fifty lakhs", "Up to rupees ten crores"],
      correctAnswerIndex: 2,
      explanation: "The District Commission has jurisdiction for complaints where the value of goods or services paid as consideration does not exceed rupees fifty lakhs, as prescribed in 2021.",
    ),

    Question(
      questionText: "What power does the District Commission have regarding its orders?",
      options: ["It can only pass orders and cannot review them", "It cannot review any orders", "It can review orders if there is an error apparent on the face of the record", "It can review orders only on its own motion"],
      correctAnswerIndex: 2,
      explanation: "The District Commission has the power to review any of its orders if there is an error apparent on the face of the record, either on its own motion or on an application made by any of the parties within 30 days of such order.",
    ),
    Question(
        questionText: "What is the pecuniary jurisdiction of the State Commission for entertaining complaints?",
        options: ["Above rupees two crores", "Above rupees ten crores", "Above rupees one crore but up to rupees ten crores", "Above rupees fifty lakhs but up to rupees two crores"],
        correctAnswerIndex: 3,
        explanation: "The State Commission has jurisdiction to entertain complaints where the value of the goods or services paid as consideration exceeds rupees one crore but does not exceed rupees ten crores, as prescribed in 2021."
    ),

    Question(
      questionText: "What is the appellate jurisdiction of the State Commission?",
      options: ["Entertain appeals against the orders of the National Commission", "Entertain appeals against the orders of any District Commission within the state", "Entertain appeals against the orders of the President", "Entertain appeals against the orders of the Central Government"],
      correctAnswerIndex: 1,
      explanation: "The State Commission has appellate jurisdiction to entertain appeals against the orders of any District Commission within the state.",
    ),

    Question(
      questionText: "Under what circumstances does the State Commission have revisional jurisdiction?",
      options: ["If the National Commission requests", "If the District Commission has exercised a jurisdiction not vested in it by law", "If the Central Government requests", "If the State Government requests"],
      correctAnswerIndex: 1,
      explanation: "The State Commission has revisional jurisdiction in circumstances where the District Commission has exercised a jurisdiction not vested in it by law, failed to exercise a jurisdiction so vested, or acted in the exercise of its jurisdiction illegally or with material irregularity.",
    ),
    Question(
      questionText: "What replaced the Consumer Protection Act, 1986?",
      options: ["Consumer Protection Act, 2000", "Consumer Protection Act, 2010", "Consumer Protection Act, 2019", "Consumer Protection Act, 2020"],
      correctAnswerIndex: 2,
      explanation: "The Consumer Protection Act, 2019, repealed and replaced the earlier Consumer Protection Act, 1986.",
    ),

    Question(
      questionText: "How many levels are there in the Consumer dispute redressal machinery?",
      options: ["Two", "Three", "Four", "Five"],
      correctAnswerIndex: 1,
      explanation: "The Consumer dispute redressal machinery consists of three levels: the District Consumer Disputes Redressal Commission, the State Consumer Disputes Redressal Commission, and the National Consumer Disputes Redressal Commission.",
    ),

    Question(
      questionText: "Who establishes the District Consumer Disputes Redressal Commission?",
      options: ["Central Government", "State Government", "Local Authorities", "Consumer Forums"],
      correctAnswerIndex: 1,
      explanation: "The District Consumer Disputes Redressal Commission is established in each district of the state by the state government.",
    ),

    Question(
      questionText: "What is the pecuniary jurisdiction of the National Commission?",
      options: ["Above rupees five crores", "Above rupees ten crores", "Above rupees two crores", "Above rupees one crore but up to rupees ten crores"],
      correctAnswerIndex: 3,
      explanation: "The National Commission has jurisdiction to entertain complaints where the value of the goods or services paid as consideration exceeds rupees ten crores, as per 2021.",
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
    home: consumerCommission(),
  ));
}

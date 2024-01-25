import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async package

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

class presidentsOfIndiaScreen extends StatefulWidget {
  final String? userIdentifier;

  presidentsOfIndiaScreen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<presidentsOfIndiaScreen> createState() => _presidentsOfIndiaScreenState();
}

class _presidentsOfIndiaScreenState extends State<presidentsOfIndiaScreen> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Who was the third president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 2,
      explanation: "Zakir Hussain was the third president of India.",
    ),

    Question(
      questionText: "Who was the first president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 0,
      explanation: "Rajendra Prasad was the first president of India.",
    ),
    Question(
      questionText: "Who was the second president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 1,
      explanation: "Sarvepalli Radhakrishnan was the second president of India.",
    ),

    Question(
      questionText: "Who was the fourth president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 3,
      explanation: "V. V. Giri was the fourth president of India.",
    ),
    Question(
      questionText: "Who was the fifth president of India?",
      options: ["Fakhruddin Ali Ahmed", "V. V. Giri", "Sanjiva Reddy", "N. Sanjiva Reddy"],
      correctAnswerIndex: 0,
      explanation: "Fakhruddin Ali Ahmed was the fifth president of India.",
    ),
    Question(
      questionText: "Who was the sixth president of India?",
      options: ["Fakhruddin Ali Ahmed", "V. V. Giri", "N. Sanjiva Reddy", "M Sanjiva Reddy"],
      correctAnswerIndex: 2,
      explanation: "N Sanjiva Reddy was the sixth president of India.",
    ),
    Question(
      questionText: "Who was the seventh president of India?",
      options: ["Fakhruddin Ali Ahmed", "V. V. Giri", "Sanjiva Reddy", "Giani Zail Singh"],
      correctAnswerIndex: 3,
      explanation: "Giani Zail Singh was the seventh president of India.",
    ),
    Question(
      questionText: "Who was the eighth president of India?",
      options: ["R. Venkataraman", "N. Sanjiva Reddy", "R. Venkataraman", "Ramaswamy Venkataraman"],
      correctAnswerIndex: 0,
      explanation: "R. Venkataraman was the eighth president of India.",
    ),
    Question(
      questionText: "Who was the 13th president of India?",
      options: ["Gyani Zail Singh", "N. Sanjiva Reddy", "R. Venkataraman", "Pranab Mukherjee"],
      correctAnswerIndex: 3,
      explanation: "Pranab Mukherjee was the ninth president of India.",
    ),
    Question(
      questionText: "Who was the eighth president of India?",
      options: ["Shankar Dayal Sharma", "Ramaswamy Venkataraman", "K. R. Narayanan", "Kocheril Raman Narayanan"],
      correctAnswerIndex: 0,
      explanation: "Shankar Dayal Sharma was the tenth president of India.",
    ),
    Question(
      questionText: "Who was the tenth president of India?",
      options: ["Shankar Dayal Sharma", "Ramaswamy Venkataraman", "M. R. Narayanan", "Kocheril Raman Narayanan"],
      correctAnswerIndex: 3,
      explanation: "Kocheril Raman Narayanan was the eleventh president of India.",
    ),
    Question(
      questionText: "Who is the fifteenth president of India?",
      options: ["Pranab Mukherjee", "Ram Nath Kovind", "Draupadi Murmu", "Droupadi Murmu"],
      correctAnswerIndex: 2,
      explanation: "Draupadi Murmu is the fifteenth and current president of India.",
    ),

    Question(
      questionText: "Who was the eleventh president of India?",
      options: ["A. P. J. Abdul Kalam", "K. R. Narayanan", "R. C. Prasad", "Abdul Kalam"],
      correctAnswerIndex: 0,
      explanation: "A. P. J. Abdul Kalam was the twelfth president of India.",
    ),
    Question(
      questionText: "Who was the twelfth  president of India?",
      options: ["A. P. J. Abdul Kalam", "Pratibha Patil", "Pranab Mukherjee", "A. P. J. Abdul Kalam"],
      correctAnswerIndex: 1,
      explanation: "Pratibha Patil was the thirteenth president of India.",
    ),
    Question(
      questionText: "Who was the fourteenth president of India?",
      options: ["Pratibha Patil", "Pranab Mukherjee", "Ram Nath Kovind", "Draupadi Murmu"],
      correctAnswerIndex: 2,
      explanation: "Ram Nath Kovind was the fourteenth president of India.",
    ),

    // Add your questions here
    // ...
  ];
  int _elapsedTimeInSeconds = 0; // Elapsed exam time in seconds

  late Timer _examTimer;

  @override
  void initState() {
    super.initState();
    _loadLikedData();
    //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
    _startpresidentsOfIndiaTimer();
  }
  void _startpresidentsOfIndiaTimer() {
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
    home: presidentsOfIndiaScreen(),
  ));
}

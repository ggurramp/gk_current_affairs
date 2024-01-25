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

class chiefMinistersScreen extends StatefulWidget {
  final String? userIdentifier;

  chiefMinistersScreen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<chiefMinistersScreen> createState() => _chiefMinistersScreenState();
}

class _chiefMinistersScreenState extends State<chiefMinistersScreen> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Who is the chief minister of Andhra Pradesh?",
      options: ["Y. S. Jagan Mohan Reddy", "K. Chandrashekar Rao", "Pinarayi Vijayan", "Mamata Banerjee"],
      correctAnswerIndex: 0,
      explanation: "Y. S. Jagan Mohan Reddy is the chief minister of Andhra Pradesh.",
    ),
    Question(
      questionText: "Who is the chief minister of Arunachal Pradesh?",
      options: ["Himanta Biswa Sarma", "Shri Pema Khandu", "Bhupesh Baghel", "Pinarayi Vijayan"],
      correctAnswerIndex: 1,
      explanation: "Shri Pema Khandu is the chief minister of ACP.",
    ),
    Question(
      questionText: "Who is the chief minister of Assam?",
      options: ["Himanta Biswa Sarma", "Manik Saha", "Bhupesh Baghel", "Pinarayi Vijayan"],
      correctAnswerIndex: 0,
      explanation: "Himanta Biswa Sarma is the chief minister of Assam.",
    ),
    Question(
      questionText: "Who is the chief minister of Bihar?",
      options: ["Nitish Kumar", "Uddhav Thackeray", "Eknath Shinde", "M. K. Stalin"],
      correctAnswerIndex: 0,
      explanation: "Nitish Kumar is the chief minister of Bihar.",
    ),
    Question(
      questionText: "Who is the chief minister of Chhattisgarh?",
      options: ["Uddhav", "Hemant Soren", "Bhupesh Baghel", "Mamata Banerjee"],
      correctAnswerIndex: 2,
      explanation: "Bhupesh Baghel is the chief minister of Chhattisgarh.",
    ),
    Question(
      questionText: "Who is the chief minister of Delhi?",
      options: ["Arvind Kejriwal", "Manohar Lal Khattar", "Jai Ram Thakur", "Hemant Soren"],
      correctAnswerIndex: 0,
      explanation: "Arvind Kejriwal is the chief minister of Delhi.",
    ),
    Question(
      questionText: "Who is the chief minister of Goa?",
      options: ["Khattar", "Bhupendra Patel", "Manohar Lal Khattar", "Pramod Sawant"],
      correctAnswerIndex: 3,
      explanation: "Pramod Sawant is the chief minister of Goa.",
    ),
    Question(
      questionText: "Who is the chief minister of Gujarat?",
      options: ["Bhupendra Patel", "Yogi Adityanath", "M. K. Stalin", "K. Chandrashekar Rao"],
      correctAnswerIndex: 0,
      explanation: "Bhupendra Patel is the chief minister of Gujarat.",
    ),
    Question(
      questionText: "Who is the chief minister of Haryana?",
      options: ["Manohar Lal Khattar", "Jai Ram Thakur", "Pramod Sawant", "Bhupendra Patel"],
      correctAnswerIndex: 0,
      explanation: "Manohar Lal Khattar is the chief minister of Haryana.",
    ),
    Question(
      questionText: "Who is the chief minister of Himachal Pradesh?",
      options: ["Jai Ram Thakur", "Hemant Soren", "Shri Sukhvinder Singh Sukhu", "Mamata Banerjee"],
      correctAnswerIndex: 2,
      explanation: "Shri Sukhvinder Singh Sukhu is the chief minister of Himachal Pradesh.",
    ),
    Question(
      questionText: "Who is the chief minister of Jharkhand?",
      options: ["Hemant Soren", "Naveen Patnaik", "Mamata Banerjee", "Arvind Kejriwal"],
      correctAnswerIndex: 0,
      explanation: "Hemant Soren is the chief minister of Jharkhand.",
    ),
    Question(
      questionText: "Who is the chief minister of Karnataka?",
      options: ["Basavaraj Bommai", "Shri Siddaramaiah", "Uddhav Thackeray", "M. K. Stalin"],
      correctAnswerIndex: 1,
      explanation: "Shri Siddaramaiah is the chief minister of Karnataka.",
    ),
    Question(
      questionText: "Who is the chief minister of Kerala?",
      options: ["Pinarayi Vijayan", "Mamata Banerjee", "Yogi Adityanath", "Bhupesh Baghel"],
      correctAnswerIndex: 0,
      explanation: "Pinarayi Vijayan is the chief minister of Kerala.",
    ),
    Question(
      questionText: "Who is the chief minister of Madhya Pradesh?",
      options: ["Shivraj Singh Chouhan", "Basavaraj Bommai", "Eknath Shinde", "Uddhav Thackeray"],
      correctAnswerIndex: 0,
      explanation: "Shivraj Singh Chouhan is the chief minister of Madhya Pradesh.",
    ),
    Question(
      questionText: "Who is the chief minister of Maharashtra?",
      options: ["Eknath Shinde", "Uddhav Thackeray", "M. K. Stalin", "Yogi Adityanath"],
      correctAnswerIndex: 0,
      explanation: "Eknath Shinde is the chief minister of Maharashtra.",
    ),
    Question(
      questionText: "Who is the chief minister of Manipur?",
      options: ["Thackeray", "Eknath Shinde", "Uddhav Thackeray", "N. Biren Singh"],
      correctAnswerIndex: 3,
      explanation: "N. Biren Singh is the chief minister of Manipur.",
    ),
    Question(
      questionText: "Who is the chief minister of Meghalaya?",
      options: ["Conrad K. Sangma", "N. Biren Singh", "Eknath Shinde", "Uddhav Thackeray"],
      correctAnswerIndex: 0,
      explanation: "Conrad K. Sangma is the chief minister of Meghalaya.",
    ),
    Question(
      questionText: "Who is the chief minister of Mizoram?",
      options: ["Zoramthanga", "Conrad K. Sangma", "N. Biren Singh", "Eknath Shinde"],
      correctAnswerIndex: 0,
      explanation: "Zoramthanga is the chief minister of Mizoram.",
    ),
    Question(
      questionText: "Who is the chief minister of Nagaland?",
      options: ["Neiphiu Rio", "Zoramthanga", "Conrad K. Sangma", "N. Biren Singh"],
      correctAnswerIndex: 0,
      explanation: "Neiphiu Rio is the chief minister of Nagaland.",
    ),
    Question(
      questionText: "Who is the chief minister of Odisha?",
      options: ["Naveen Patnaik", "Neiphiu Rio", "Zoramthanga", "Conrad K. Sangma"],
      correctAnswerIndex: 0,
      explanation: "Naveen Patnaik is the chief minister of Odisha.",
    ),
    Question(
      questionText: "Who is the chief minister of Punjab?",
      options: ["	Shri PS Golay", "Naveen Patnaik", "Neiphiu Rio", "Bhagwant Mann"],
      correctAnswerIndex: 3,
      explanation: "Bhagwant Mann is the chief minister of Punjab.",
    ),
    Question(
      questionText: "Who is the chief minister of Rajasthan?",
      options: ["Ashok Gehlot", "Bhagwant Mann", "Naveen Patnaik", "Neiphiu Rio"],
      correctAnswerIndex: 0,
      explanation: "Ashok Gehlot is the chief minister of Rajasthan.",
    ),
    Question(
      questionText: "Who is the chief minister of Sikkim?",
      options: ["Tamang", "Pema Khandu", "Shri PS Golay", "Conrad K. Sangma"],
      correctAnswerIndex: 2,
      explanation: "Shri PS Golay is the chief minister of Sikkim.",
    ),
    Question(
      questionText: "Who is the chief minister of Tamil Nadu?",
      options: ["M. K. Stalin", "Prem Singh Tamang", "Pema Khandu", "A. N. Reddy"],
      correctAnswerIndex: 0,
      explanation: "M. K. Stalin is the chief minister of Tamil Nadu.",
    ),
    Question(
      questionText: "Who is the chief minister of Telangana?",
      options: ["K. Chandrashekar Rao", "M. K. Stalin", "Prem Singh Tamang", "Pema Khandu"],
      correctAnswerIndex: 0,
      explanation: "K. Chandrashekar Rao is the chief minister of Telangana.",
    ),
    Question(
      questionText: "Who is the chief minister of Tripura?",
      options: ["Chandrashekar", "K. Chandrashekar Rao", "M. K. Stalin", "Manik Saha"],
      correctAnswerIndex: 3,
      explanation: "Manik Saha is the chief minister of Tripura.",
    ),
    Question(
      questionText: "Who is the chief minister of Uttar Pradesh?",
      options: ["Yogi Adityanath", "Manik Saha", "K. Chandrashekar Rao", "M. K. Stalin"],
      correctAnswerIndex: 0,
      explanation: "Yogi Adityanath is the chief minister of Uttar Pradesh.",
    ),
    Question(
      questionText: "Who is the chief minister of Uttarakhand?",
      options: ["Pushkar Singh Dhami", "Yogi Adityanath", "Manik Saha", "K. Chandrashekar Rao"],
      correctAnswerIndex: 0,
      explanation: "Pushkar Singh Dhami is the chief minister of Uttarakhand.",
    ),
    Question(
      questionText: "Who is the chief minister of West Bengal?",
      options: ["Mamata Banerjee", "Pushkar Singh Dhami", "Yogi Adityanath", "Manik Saha"],
      correctAnswerIndex: 0,
      explanation: "Mamata Banerjee is the chief minister of West Bengal.",
    ),
    Question(
      questionText: "Who is the lieutenant governor of Delhi?",
      options: ["Vinai Kumar Saxena", "Mamata Banerjee", "Pushkar Singh Dhami", "Yogi Adityanath"],
      correctAnswerIndex: 0,
      explanation: "Vinai Kumar Saxena is the lieutenant governor of Delhi.",
    ),
    Question(
      questionText: "Who is the administrator of Chandigarh?",
      options: ["Saxena", "Vinai Kumar Saxena", "Banwarilal Purohit", "Pushkar Singh Dhami"],
      correctAnswerIndex: 2,
      explanation: "Banwarilal Purohit is the administrator of Chandigarh.",
    ),
    Question(
      questionText: "Who is the administrator of Dadra and Nagar Haveli and Daman and Diu?",
      options: ["Praful Khoda Patel", "Banwarilal Purohit", "Vinai Kumar Saxena", "Mamata Banerjee"],
      correctAnswerIndex: 0,
      explanation: "Praful Khoda Patel is the administrator of Dadra and Nagar Haveli and Daman and Diu.",
    ),
    Question(
      questionText: "Who is the administrator of Lakshadweep?",
      options: ["Praful Khoda Patel", "Banwarilal Purohit", "Vinai Kumar Saxena", "Prafulla Kumar Patel"],
      correctAnswerIndex: 0,
      explanation: "Prafulla Kumar Patel is the administrator of Lakshadweep.",
    ),




    // Add your questions here
    // ...
  ];
  int _elapsedTimeInSeconds = 0; // Elapsed chiefMinisters time in seconds

  late Timer _chiefMinistersTimer;

  @override
  void initState() {
    super.initState();
    _loadLikedData();
    //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
    _startExamTimer();
  }
  void _startExamTimer() {
    _chiefMinistersTimer = Timer.periodic(Duration(seconds: 1), (timer) {
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
    _chiefMinistersTimer.cancel(); // Cancel the chiefMinisters timer before navigating
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
      // Overall chiefMinisters timer display

      // Overall chiefMinisters timer display
      // Overall chiefMinisters timer display
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
    // Dispose of the chiefMinisters timer when the widget is disposed
    _chiefMinistersTimer.cancel();
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
    home: chiefMinistersScreen(),
  ));
}

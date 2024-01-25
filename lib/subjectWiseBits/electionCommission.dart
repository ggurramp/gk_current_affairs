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

class electionCommission extends StatefulWidget {
  final String? userIdentifier;

  electionCommission({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<electionCommission> createState() => _electionCommissionState();
}

class _electionCommissionState extends State<electionCommission> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//43.ELECTION COMMISSION


    Question(
      questionText: "According to Article 324 of the Constitution of India, which body is vested with the power of superintendence, direction, and control of elections to parliament, state legislatures, the office of President, and the office of Vice-President?",
      options: ["Central government", "State Election Commission", "Election Commission", "Regional Commissioners"],
      correctAnswerIndex: 2,
      explanation: "Article 324 of the Constitution vests the power of superintendence, direction, and control of elections in the Election Commission of India.",
    ),
    Question(
      questionText: "What constitutional provision safeguards and ensures the independent and impartial functioning of the Election Commission?",
      options: ["Article 61", "Article 324", "Article 1988", "Article 2018"],
      correctAnswerIndex: 1,
      explanation: "Article 324 of the Constitution provides provisions to safeguard and ensure the independent and impartial functioning of the Election Commission.",
    ),

    Question(
      questionText: "According to the 61st Constitutional Amendment Act of 1988, what security of tenure is provided to the Chief Election Commissioner?",
      options: [
        "Lifetime tenure",
        "Tenure until retirement age",
        "Security until a resolution by Parliament",
        "Fixed term of 5 years"
      ],
      correctAnswerIndex: 2,
      explanation: "The 61st Constitutional Amendment Act of 1988 ensures the security of tenure for the Chief Election Commissioner, subject to a resolution by both Houses of Parliament.",
    ),

    Question(
      questionText: "What is the procedure for the removal of the Chief Election Commissioner from office?",
      options: [
        "By the President's pleasure",
        "By a resolution passed by both Houses of Parliament with a special majority",
        "By the Prime Minister's recommendation",
        "By a simple majority vote in the Lok Sabha"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Election Commissioner can be removed by the President on the basis of a resolution passed by both Houses of Parliament with a special majority.",
    ),

    Question(
      questionText: "What protection (security of tenure) is available to the Chief Election Commissioner but not to other election commissioners?",
      options: [
        "Lifetime tenure",
        "Fixed term of 5 years",
        "Tenure until retirement age",
        "Removal on recommendation of Chief Election Commissioner"
      ],
      correctAnswerIndex: 0,
      explanation: "The Chief Election Commissioner enjoys security of tenure, which is not available to other election commissioners.",
    ),

    Question(
      questionText: "In the Anoop Baranwal case (2023), what directions did the Supreme Court give to ensure the independence and neutrality of the Election Commission?",
      options: [
        "Appointment by the President",
        "Recommendations by a three-member committee",
        "Appointment by the Chief Justice of India",
        "Removal by the Prime Minister"
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court directed that the appointment of the Chief Election Commissioner and other Election Commissioners should be made on the recommendations of a three-member committee.",
    ),
    Question(
      questionText: "What are the three categories into which the powers and functions of the Election Commission are classified?",
      options: ["Legislative, Executive, Judicial", "Administrative, Advisory, Quasi-Judicial", "Territorial, Electoral, Parliamentary", "Constitutional, Legal, Ethical"],
      correctAnswerIndex: 1,
      explanation: "The powers and functions of the Election Commission are classified into three categories: Administrative, Advisory, and Quasi-Judicial.",
    ),

    Question(
      questionText: "According to the Delimitation Commission Act of Parliament, what power does the Election Commission have regarding the determination of electoral constituencies?",
      options: [
        "To fix constituencies based on population density",
        "To determine territorial areas of electoral constituencies throughout the country",
        "To redraw constituencies based on political affiliations",
        "To delegate this power to state governments"
      ],
      correctAnswerIndex: 1,
      explanation: "The Election Commission has the power to determine the territorial areas of electoral constituencies throughout the country based on the Delimitation Commission Act of Parliament.",
    ),

    Question(
      questionText: "What is one of the functions of the Election Commission regarding political parties and election symbols?",
      options: [
        "To determine party ideologies",
        "To grant recognition to political parties",
        "To fund political campaigns",
        "To appoint leaders for political parties"
      ],
      correctAnswerIndex: 1,
      explanation: "The Election Commission has the function to grant recognition to political parties and allot election symbols to them.",
    ),

    Question(
      questionText: "What advisory role does the Election Commission play in relation to the President and the governor?",
      options: [
        "Advising on foreign policy",
        "Advising on economic matters",
        "Advising on disqualifications of members of Parliament",
        "Advising on military strategies"
      ],
      correctAnswerIndex: 2,
      explanation: "The Election Commission advises the President on matters relating to the disqualifications of the members of Parliament and the governor on matters relating to the disqualifications of the members of state legislature.",
    ),

    Question(
      questionText: "What principles of good governance has the Election Commission laid down for itself?",
      options: [
        "Economic growth and development",
        "Environmental sustainability",
        "Equality, equity, impartiality, independence, and rule of law",
        "Technological advancement"
      ],
      correctAnswerIndex: 2,
      explanation: "The Election Commission has laid down guiding principles of good governance, including upholding values such as equality, equity, impartiality, independence, and the rule of law.",
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
    home: electionCommission(),
  ));
}

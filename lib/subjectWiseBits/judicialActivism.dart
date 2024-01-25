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

class judicialActivism extends StatefulWidget {
  final String? userIdentifier;

  judicialActivism({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<judicialActivism> createState() => _judicialActivismState();
}

class _judicialActivismState extends State<judicialActivism> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//28.JUDICIAL ACTIVISM
    Question(
      questionText: "Which article declares that laws inconsistent with or in derogation of Fundamental Rights shall be null and void?",
      options: ["Article 32", "Article 131", "Article 13", "Article 136"],
      correctAnswerIndex: 2,
      explanation: "Article 13 declares that laws inconsistent with or in derogation of Fundamental Rights shall be null and void.",
    ),

    Question(
      questionText: "According to Article 32, what right does it guarantee and to which court can one move for the enforcement of Fundamental Rights?",
      options: ["Right to property, move the High Court", "Right to equality, move the Supreme Court", "Right to education, move the District Court", "Right to privacy, move the Constitutional Court"],
      correctAnswerIndex: 1,
      explanation: "Article 32 guarantees the right to move the Supreme Court for the enforcement of Fundamental Rights.",
    ),

    Question(
      questionText: "Which article empowers the President to seek the opinion of the Supreme Court on any question of law or fact?",
      options: ["Article 131", "Article 132", "Article 136", "Article 143"],
      correctAnswerIndex: 3,
      explanation: "Article 143 empowers the President to seek the opinion of the Supreme Court on any question of law or fact.",
    ),
    Question(
      questionText: "When was Article 31B along with the Ninth Schedule added to the Constitution?",
      options: ["1951", "1955", "1964", "1972"],
      correctAnswerIndex: 0,
      explanation: "Article 31B along with the Ninth Schedule was added to the Constitution by the 1st Constitutional Amendment Act of 1951.",
    ),

    Question(
      questionText: "In which case did the Supreme Court rule that acts and regulations included in the Ninth Schedule are open to challenge if they violate the basic structure of the constitution?",
      options: ["Kesavananda Bharati case (1973)", "Waman Rao case (1980)", "I.R. Coelho case (2007)", "Indira Gandhi case (1975)"],
      correctAnswerIndex: 0,
      explanation: "In the Kesavananda Bharati case (1973), the Supreme Court ruled that acts and regulations included in the Ninth Schedule are open to challenge if they violate the basic structure of the constitution.",
    ),

    Question(
      questionText: "According to the Supreme Court, when can a law placed under the Ninth Schedule after April 24, 1973, be open to challenge in court?",
      options: ["If it violates fundamental rights guaranteed under Articles 14, 15, 19, and 21", "If it damages the basic structure of the constitution", "If it is not approved by the President", "If it contradicts state laws"],
      correctAnswerIndex: 1,
      explanation: "According to the Supreme Court, a law placed under the Ninth Schedule after April 24, 1973, can be open to challenge in court if it damages the basic structure of the constitution.",
    ),
    Question(
      questionText: "In which case did the Supreme Court declare both the 99th Constitutional Amendment, 2014, and the National Judicial Appointments Commission (NJAC) Act, 2014, as unconstitutional and null and void?",
      options: ["Golaknath case (1967)", "Bank Nationalisation case (1970)", "Privy Purses Abolition case (1971)", "2015"],
      correctAnswerIndex: 3,
      explanation: "In 2015, the Supreme Court declared both the 99th Constitutional Amendment, 2014, and the National Judicial Appointments Commission (NJAC) Act, 2014, as unconstitutional and null and void.",
    ),

    Question(
      questionText: "What are the three categories into which Justice Syed Shah Mohamed Quadri classified judicial review?",
      options: ["Judicial review of constitutional amendments, Judicial review of legislation, Judicial review of administrative action", "Legislation review, Administrative review, Constitutional review", "Constitutional amendments review, Legislative review, Administrative action review", "Quadri review, Marshall review, Madison review"],
      correctAnswerIndex: 0,
      explanation: "Justice Syed Shah Mohamed Quadri classified judicial review into three categories: 1) Judicial review of constitutional amendments, 2) Judicial review of legislation, 3) Judicial review of administrative action.",
    ),

    Question(
      questionText: "What is the significance of the power of judicial review in India?",
      options: ["To increase executive power", "To undermine Fundamental Rights", "To uphold the principle of the supremacy of the Constitution, maintain federal equilibrium, and protect citizens' Fundamental Rights", "To support unconstitutional amendments"],
      correctAnswerIndex: 2,
      explanation: "The power of judicial review in India is significant to uphold the principle of the supremacy of the Constitution, maintain federal equilibrium, and protect the Fundamental Rights of the citizens.",
    ),
    Question(
      questionText: "Who first coined the term 'judicial activism' in 1947?",
      options: ["Justice V.R. Krishna Iyer", "Justice P.N. Bhagwati", "Justice O. Chinnappa Reddy", "Arthur Schlesinger Jr."],
      correctAnswerIndex: 3,
      explanation: "The term 'judicial activism' was first coined in 1947 by Arthur Schlesinger Jr., an American historian and educator.",
    ),

    Question(
      questionText: "How is judicial activism defined in terms of law-making by judges?",
      options: [
        "It is a way of exercising judicial power that strictly adheres to judicial precedent.",
        "It is a practice in the judiciary of protecting or expanding individual rights through decisions that depart from established precedent.",
        "It is the process of law-making by judges to enhance the utility of existing legislation for social betterment.",
        "It is a philosophy of judicial decision-making whereby judges allow their personal views about public policy to guide their decisions."
      ],
      correctAnswerIndex: 2,
      explanation: "Judicial activism is defined as the process of law-making by judges, involving an active interpretation of existing legislation to enhance its utility for social betterment.",
    ),

    Question(
      questionText: "What is the antithesis of judicial activism?",
      options: ["Judicial restraint", "Judicial review", "Judicial intervention", "Judicial interpretation"],
      correctAnswerIndex: 0,
      explanation: "The antithesis of judicial activism is 'judicial restraint', which means the self-control exercised by the judiciary.",
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
    home: judicialActivism(),
  ));
}

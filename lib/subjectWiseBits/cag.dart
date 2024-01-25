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

class cag extends StatefulWidget {
  final String? userIdentifier;

  cag({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cag> createState() => _cagState();
}

class _cagState extends State<cag> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//52.COMPTROLLER AND AUDITOR GENERAL OF INDIA

    Question(
        questionText: "Who appoints the Comptroller and Auditor General of India (CAG)?",
        options: [
          "Prime Minister",
          "Governor of each state",
          "President of India",
          "Union Finance Minister"
        ],
        correctAnswerIndex: 2,
        explanation: "The Comptroller and Auditor General of India (CAG) is appointed by the President of India."
    ),

    Question(
        questionText: "What oath or affirmation does the CAG take before assuming office?",
        options: [
          "To bear true faith and allegiance to the Constitution of India.",
          "To uphold the sovereignty and integrity of India.",
          "To perform duties without fear or favor.",
          "All of the above."
        ],
        correctAnswerIndex: 3,
        explanation: "The CAG takes an oath or affirmation to bear true faith and allegiance to the Constitution of India, uphold the sovereignty and integrity of India, and perform duties without fear or favor."
    ),

    Question(
        questionText: "How long does the Comptroller and Auditor General of India (CAG) hold office?",
        options: [
          "10 years",
          "8 years",
          "6 years or until the age of 65, whichever is earlier",
          "4 years"
        ],
        correctAnswerIndex: 2,
        explanation: "The CAG holds office for a period of six years or until the age of 65, whichever is earlier."
    ),

    Question(
        questionText: "Under what circumstances can the President remove the CAG from office?",
        options: [
          "On any grounds",
          "Upon the request of the CAG",
          "On the basis of a resolution passed by both Houses of Parliament with special majority",
          "At the discretion of the Prime Minister"
        ],
        correctAnswerIndex: 2,
        explanation: "The President can remove the CAG on the basis of a resolution passed by both Houses of Parliament with special majority, either on the ground of proved misbehavior or incapacity."
    ),
    Question(
        questionText: "What is the primary duty of the Comptroller and Auditor General of India (CAG)?",
        options: [
          "To execute financial transactions on behalf of the government",
          "To audit the accounts related to all expenditure from the Consolidated Fund of India and state funds",
          "To frame economic policies for the country",
          "To represent India at international financial forums"
        ],
        correctAnswerIndex: 1,
        explanation: "The primary duty of the CAG is to audit the accounts related to all expenditure from the Consolidated Fund of India, state funds, and other related financial matters."
    ),

    Question(
        questionText: "What is included in the duties and functions of the CAG?",
        options: [
          "Auditing only the central government's accounts",
          "Auditing accounts of bodies and authorities receiving grants and loans",
          "Auditing private companies",
          "Advising the President on foreign policy matters"
        ],
        correctAnswerIndex: 2,
        explanation: "The duties and functions of the CAG include auditing accounts of bodies and authorities receiving grants and loans, among other responsibilities."
    ),

    Question(
        questionText: "Who does the Comptroller and Auditor General of India (CAG) submit audit reports to?",
        options: [
          "Union Finance Minister",
          "Public Accounts Committee",
          "Prime Minister",
          "Governor of each state"
        ],
        correctAnswerIndex: 1,
        explanation: "The CAG submits audit reports to the Public Accounts Committee of the Parliament."
    ),

    Question(
        questionText: "What is the finality of the Comptroller and Auditor General's certification of the net proceeds of any tax or duty?",
        options: [
          "Subject to review by the Supreme Court",
          "Can be challenged by the President",
          "Final and conclusive",
          "Needs approval from the Parliament"
        ],
        correctAnswerIndex: 2,
        explanation: "The certification by the CAG of the net proceeds of any tax or duty is final and conclusive."
    ),
    Question(
        questionText: "What is the primary role of the Comptroller and Auditor General of India (CAG)?",
        options: [
          "To control the issue of money from the consolidated fund",
          "To execute financial transactions on behalf of the government",
          "To conduct propriety audits on government expenditure",
          "To uphold the Constitution and laws of Parliament in the field of financial administration"
        ],
        correctAnswerIndex: 3,
        explanation: "The primary role of the CAG is to uphold the Constitution of India and the laws of Parliament in the field of financial administration."
    ),

    Question(
        questionText: "What is the purpose of the three audit reports submitted by the CAG to the President?",
        options: [
          "To facilitate executive control over financial matters",
          "To guide the President in foreign policy decisions",
          "To inform the Parliament about government financial matters",
          "To initiate legal action against financial irregularities"
        ],
        correctAnswerIndex: 2,
        explanation: "The three audit reports submitted by the CAG to the President are intended to inform the Parliament about government financial matters."
    ),

    Question(
        questionText: "What is the discretionary audit conducted by the CAG?",
        options: [
          "Audit of financial procedures",
          "Propriety audit",
          "Performance audit",
          "Audit of government stores and stock"
        ],
        correctAnswerIndex: 1,
        explanation: "The discretionary audit conducted by the CAG is the propriety audit, which assesses the 'wisdom, faithfulness, and economy' of government expenditure."
    ),

    Question(
        questionText: "What did Paul H. Appleby criticize about the role of the CAG?",
        options: [
          "The CAG's lack of knowledge about good administration",
          "The importance of auditing to Parliamentary responsibility",
          "The inherited function of the CAG from colonial rule",
          "The absence of executive control over financial matters"
        ],
        correctAnswerIndex: 2,
        explanation: "Paul H. Appleby criticized the role of the CAG, considering it largely inherited from colonial rule and suggested its abolition."
    ),
    Question(
      questionText: "What is one of the challenges identified by the Second Administrative Reforms Commission regarding external audit by the CAG?",
      options: [
        "The extensive physical verification conducted by the CAG",
        "The unduly positive focus of audit reports",
        "The poor response to external audit by government officials",
        "The effective synergy between external and internal audits"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the challenges identified is the poor response to external audit by government officials, which seriously reduces the effectiveness of audit.",
    ),

    Question(
      questionText: "Why does the Second Administrative Reforms Commission express concern about the timing of CAG's reports?",
      options: [
        "The reports focus on already known problems",
        "There is substantial time gap between irregularities and reporting",
        "The reports lack constructive suggestions",
        "The reports do not cover a macro-level view of department functioning"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission is concerned about the timing of CAG's reports as there is a substantial time gap between the occurrence of irregularities and their reporting, making corrective action difficult.",
    ),

    Question(
      questionText: "What is a criticism mentioned about the relationship between the auditor and auditee in the context of external audit?",
      options: [
        "The harmonious interaction between them",
        "The lack of informed media coverage",
        "The poor response from government officials",
        "The absence of a valuable aid to management"
      ],
      correctAnswerIndex: 2,
      explanation: "A criticism is that the relationship between the auditor and auditee is not always harmonious, with poor/inadequate response to external audit from government officials.",
    ),

    Question(
        questionText: "What is a challenge related to the presentation of audit findings according to the Second Administrative Reforms Commission?",
        options: [
          "The lack of audit assurance on financial statements",
          "The qunduly negative focus of audit reports",
          "The extensive physical verification conducted by the CAG",
          "The focus on known problems without identifying systemic issues"
        ],
        correctAnswerIndex: 1,
        explanation: "The challenge mentioned is that audit reports are not always presented in a sufficiently constructive manner, with a focus on known problems rather than identifying systemic issues."
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
    home: cag(),
  ));
}

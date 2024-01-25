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

class bci extends StatefulWidget {
  final String? userIdentifier;

  bci({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<bci> createState() => _bciState();
}

class _bciState extends State<bci> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//69.BAR COUNCIL OF INDIA

    Question(
      questionText: "What legislation led to the establishment of the Bar Council of India (BCI)?",
      options: [
        "The Indian Constitution",
        "The Legal Practitioners (Regulation) Act, 1879",
        "The Advocates Act, 1961",
        "The Lawyers and Legal Practitioners Act, 1955"],
      correctAnswerIndex: 3,
      explanation: "The Bar Council of India (BCI) was established under the Advocates Act, 1961.",
    ),

    Question(
      questionText: "Who are the ex-officio members of the Bar Council of India (BCI)?",
      options: [
        "Elected members from State Bar Councils",
        "The Attorney-General of India and the Solicitor-General of India",
        "Members nominated by the Chief Justice of India",
        "Representatives from law universities"],
      correctAnswerIndex: 2,
      explanation: "The Attorney-General of India and the Solicitor-General of India are the ex-officio members of the Bar Council of India (BCI).",
    ),

    Question(
      questionText: "What is one of the functions of the Disciplinary Committee of the Bar Council of India (BCI)?",
      options: [
        "Promotion of legal education",
        "Recognition of foreign universities",
        "Laying down standards of professional conduct and etiquette for advocates",
        "Investment of funds"],
      correctAnswerIndex: 3,
      explanation: "One of the functions of the Disciplinary Committee of the BCI is to lay down standards of professional conduct and etiquette for advocates.",
    ),

    Question(
      questionText: "Who elects the Chairman and Vice-Chairman of the Bar Council of India (BCI)?",
      options: [
        "The Chief Justice of India",
        "Elected members of State Bar Councils",
        "Members nominated by the President of India",
        "The Prime Minister"],
      correctAnswerIndex: 2,
      explanation: "The Chairman and Vice-Chairman of the BCI are elected by the Council from amongst its members.",
    ),

    Question(
      questionText: "What is one of the functions of the Bar Council of India (BCI) related to legal education?",
      options: [
        "Providing legal aid to the poor",
        "Promoting law reform",
        "Managing and investing funds",
        "Laying down standards of legal education in consultation with universities"],
      correctAnswerIndex: 9,
      explanation: "One of the functions of the BCI related to legal education is to lay down standards of legal education in consultation with universities in India.",
    ),
    Question(
      questionText: "How many members are elected to a State Bar Council (SBC) with an electorate of more than ten thousand advocates?",
      options: [
        "10 members",
        "15 members",
        "20 members",
        "25 members"],
      correctAnswerIndex: 3,
      explanation: "In the case of a State Bar Council (SBC) with an electorate of more than ten thousand advocates, 25 members are elected.",
    ),

    Question(
      questionText: "Who is the ex-officio member of a State Bar Council (SBC)?",
      options: [
        "Chairman of the Bar Council of India (BCI)",
        "Additional Solicitor-General of India",
        "Chief Justice of the High Court",
        "Advocate-General of the state"],
      correctAnswerIndex: 3,
      explanation: "In the case of any State Bar Council (SBC), the Advocate-General of the state is the ex-officio member.",
    ),

    Question(
      questionText: "How long is the term of office for an elected member of any State Bar Council (SBC)?",
      options: [
        "Two years",
        "Three years",
        "Four years",
        "Five years"],
      correctAnswerIndex: 3,
      explanation: "The term of office for an elected member of any State Bar Council (SBC) is five years.",
    ),

    Question(
      questionText: "What committee of a State Bar Council (SBC) entertains and determines cases of misconduct against advocates?",
      options: [
        "Legal Aid Committee",
        "Executive Committee",
        "Disciplinary Committee",
        "Enrolment Committee"],
      correctAnswerIndex: 2,
      explanation: "The Disciplinary Committee of a State Bar Council (SBC) entertains and determines cases of misconduct against advocates.",
    ),

    Question(
      questionText: "What is one of the functions of a State Bar Council (SBC) related to law reform?",
      options: [
        "Laying down standards of professional conduct",
        "Providing legal aid to the poor",
        "Conducting seminars on legal topics",
        "Promoting and supporting law reform"],
      correctAnswerIndex: 3,
      explanation: "One of the functions of a State Bar Council (SBC) is to promote and support law reform.",
    ),
    Question(
      questionText: "What category of advocates is entitled to practice law before the Supreme Court without an Advocate-on-Record?",
      options: [
        "Advocate-on-Record",
        "Senior Advocate",
        "Other Advocates",
        "Advocates designated by the Bar Council"],
      correctAnswerIndex: 1,
      explanation: "Senior Advocates are entitled to practice law before the Supreme Court but cannot appear without an Advocate-on-Record.",
    ),

    Question(
      questionText: "Who is entitled to file an appearance or act for a party in the Supreme Court?",
      options: [
        "Advocate designated by the Chief Justice",
        "Any practicing advocate",
        "Advocate-on-Record",
        "Advocate designated as Senior Advocate"],
      correctAnswerIndex: 2,
      explanation: "Only an Advocate-on-Record is entitled to file an appearance or act for a party in the Supreme Court.",
    ),

    Question(
      questionText: "What committee is responsible for dealing with matters related to the designation of Senior Advocates in the Supreme Court?",
      options: [
        "Senior Advocates Committee",
        "Advocate-on-Record Committee",
        "Supreme Court Rules Committee",
        "Permanent Committee constituted by the Chief Justice"],
      correctAnswerIndex: 3,
      explanation: "A Permanent Committee constituted by the Chief Justice of India deals with matters related to the designation of Senior Advocates in the Supreme Court.",
    ),

    Question(
      questionText: "Who conducts the Advocate-on-Record Examination for the Supreme Court?",
      options: [
        "Chief Justice of India",
        "Bar Council of India",
        "Examination Committee",
        "Board of Examiners"],
      correctAnswerIndex: 2,
      explanation: "The Advocate-on-Record Examination for the Supreme Court is conducted by the Registry of the Supreme Court with the approval of the Examination Committee.",
    ),

    Question(
      questionText: "What category of advocates cannot appear, plead, and address the Court in any matter in the Supreme Court without the instruction of an Advocate-on-Record?",
      options: [
        "Advocate designated as Senior Advocate",
        "Advocate-on-Record",
        "Senior Advocates",
        "Other Advocates"],
      correctAnswerIndex: 3,
      explanation: "Other Advocates cannot appear, plead, and address the Court in the Supreme Court without the instruction of an Advocate-on-Record.",
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
    home: bci(),
  ));
}

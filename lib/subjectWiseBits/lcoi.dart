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

class lci extends StatefulWidget {
  final String? userIdentifier;

  lci({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<lci> createState() => _lciState();
}

class _lciState extends State<lci> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//70 .LAW COMMISSION OF INDIA

    Question(
      questionText: "What is the primary function of the Law Commission of India?",
      options: [
        "Enforcing laws",
        "Recommending legislative measures",
        "Adjudicating legal disputes",
        "Implementing government policies"],
      correctAnswerIndex: 1,
      explanation: "The primary function of the Law Commission of India is to recommend legislative measures for the consolidation and codification of laws.",
    ),

    Question(
      questionText: "Are the recommendations of the Law Commission of India binding on the government?",
      options: [
        "Yes",
        "No",
      ],
      correctAnswerIndex: 1,
      explanation: "No, the recommendations of the Law Commission of India are not binding on the government.",
    ),

    Question(
      questionText: "During the British regime, how many Law Commissions were established in the 19th century?",
      options: ["Two", "Three", "Four", "Five"],
      correctAnswerIndex: 2,
      explanation: "Four Law Commissions were established during the British regime in the 19th century.",
    ),

    Question(
      questionText: "Who was the Chairman of the First Law Commission of independent India established in 1955?",
      options: [
        "Me Setalvad",
        "Attorney-General of India",
        "Chief Justice of India",
        "Prime Minister of India"
      ],
      correctAnswerIndex: 0,
      explanation: "Me Setalvad was the Chairman of the First Law Commission of independent India established in 1955.",
    ),

    Question(
      questionText: "How long is the term of each Law Commission in India?",
      options: [
        "One year",
        "Two years",
        "Three years",
        "Five years"
      ],
      correctAnswerIndex: 2,
      explanation: "The term of each Law Commission in India is three years.",
    ),
    Question(
      questionText: "What is the composition of the Law Commission of India?",
      options: [
        "Fixed composition with a fixed number of members",
        "It varies from one Commission to another",
        "Always consists of judges only",
        "Completely independent of government influence"
      ],
      correctAnswerIndex: 1,
      explanation: "The composition of the Law Commission of India varies from one Commission to another.",
    ),

    Question(
      questionText: "Who can serve as the Chairman or full-time members of the Law Commission of India?",
      options: [
        "Only retired judges",
        "Serving or retired judges, legal experts, jurists, or professors of law",
        "Only legal experts",
        "Members of the Indian Legal Service"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chairman and full-time members of the Law Commission of India can be serving or retired judges, legal experts, jurists, or professors of law.",
    ),

    Question(
      questionText: "What is the rank of the Member-Secretary of the Law Commission of India?",
      options: [
        "Judge",
        "Additional Secretary or Secretary to the Government of India",
        "Attorney General",
        "Professor of Law"
      ],
      correctAnswerIndex: 1,
      explanation: "The Member-Secretary of the Law Commission of India belongs to the Indian Legal Service and holds the rank of either Additional Secretary or Secretary to the Government of India.",
    ),

    Question(
      questionText: "Who are the part-time members of the Law Commission of India?",
      options: [
        "Only judges",
        "Members of the Indian Legal Service",
        "Eminent members of the bar, eminent scholars, or persons with specialized knowledge in law",
        "Politicians"
      ],
      correctAnswerIndex: 2,
      explanation: "The part-time members of the Law Commission of India are appointed from among the eminent members of the bar, eminent scholars, or persons having specialized knowledge in a particular branch of law.",
    ),

    Question(
      questionText: "What is one of the functions of the Law Commission of India?",
      options: [
        "Enforce existing laws",
        "Identify and repeal obsolete laws",
        "Adjudicate legal disputes",
        "Implement government policies"
      ],
      correctAnswerIndex: 1,
      explanation: "One of the functions of the Law Commission of India is to identify laws that are no longer needed or relevant and can be immediately repealed.",
    ),
    Question(
      questionText: "What is the typical process of working for the Law Commission of India?",
      options: [
        "Projects are initiated by the government, and the Commission merely reviews them.",
        "The Commission discusses priorities, identifies topics, assigns preparatory work, and circulates working papers for feedback.",
        "The Commission has fixed working procedures and doesn't adapt to the nature of the topics.",
        "The Commission relies solely on public opinions for its working process."
      ],
      correctAnswerIndex: 1,
      explanation: "The working process of the Law Commission of India involves discussing priorities, identifying topics, assigning preparatory work, and circulating working papers for feedback.",
    ),

    Question(
      questionText: "What happens after the working paper is circulated to the public and interested groups?",
      options: [
        "It is immediately finalized and forwarded to the government.",
        "Responses are evaluated, and the information is discarded.",
        "Responses are evaluated, and the information is incorporated into the final report.",
        "The Commission ignores the responses from the public."
      ],
      correctAnswerIndex: 2,
      explanation: "After the working paper is circulated, responses are evaluated, and the information is incorporated into the final report.",
    ),

    Question(
      questionText: "How are the reports of the Law Commission of India considered by the government?",
      options: [
        "They are ignored by the government.",
        "They are considered without any consultation.",
        "They are considered by the Ministry of Law and Justice in consultation with concerned administrative ministries.",
        "They are immediately implemented without any consideration."
      ],
      correctAnswerIndex: 2,
      explanation: "The reports of the Law Commission of India are considered by the Ministry of Law and Justice in consultation with concerned administrative ministries.",
    ),

    Question(
      questionText: "What role does the Law Commission of India play in the justice delivery system?",
      options: [
        "It only studies the existing laws.",
        "It has no role in the justice delivery system.",
        "It undertakes studies and research for bringing reforms in the justice delivery systems.",
        "It enforces laws directly in the courts."
      ],
      correctAnswerIndex: 3,
      explanation: "The Law Commission of India undertakes studies and research for bringing reforms in the justice delivery systems.",
    ),

    Question(
      questionText: "How many reports were submitted by the 21st Law Commission of India (2015-2018)?",
      options: ["15", "21", "25", "12"],
      correctAnswerIndex: 15,
      explanation: "The 21st Law Commission of India (2015-2018) submitted a total of 15 reports on various subjects.",
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
    home: lci(),
  ));
}

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

class nationalCommisionerBCs extends StatefulWidget {
  final String? userIdentifier;

  nationalCommisionerBCs({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nationalCommisionerBCs> createState() => _nationalCommisionerBCsState();
}

class _nationalCommisionerBCsState extends State<nationalCommisionerBCs> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//50.NATIONAL COMMISSION FOR BC’S

    Question(
        questionText: "What constitutional status was conferred on the National Commission for Backward Classes (NCBC) by the 102nd Amendment Act of 2018?",
        options: [
          "It remained a statutory body.",
          "It became a constitutional body.",
          "It was dissolved.",
          "Its functions were expanded without any change in status."
        ],
        correctAnswerIndex: 1,
        explanation: "The 102nd Amendment Act of 2018 conferred constitutional status on the National Commission for Backward Classes (NCBC), elevating it from a statutory body to a constitutional body."
    ),

    Question(
        questionText: "What are the functions specified for the National Commission for Backward Classes (NCBC) in relation to the socially and educationally backward classes?",
        options: [
          "Only evaluating progress of development.",
          "Participating in socio-economic development.",
          "Investigating matters related to constitutional safeguards only.",
          "All of the above functions."
        ],
        correctAnswerIndex: 3,
        explanation: "The functions of the National Commission for Backward Classes (NCBC) include evaluating progress, participating in socio-economic development, investigating constitutional safeguards matters, and more."
    ),

    Question(
        questionText: "Which amendment exempted state governments from consulting the NCBC on matters related to the preparation and maintenance of the list of socially and educationally backward classes for their own purposes?",
        options: [
          "89th Amendment Act of 2003.",
          "102nd Amendment Act of 2018.",
          "101st Amendment Act of 2016.",
          "105th Amendment Act of 2021."
        ],
        correctAnswerIndex: 3,
        explanation: "The 105th Amendment Act of 2021 exempted state governments from consulting the NCBC on matters related to the preparation and maintenance of the list of socially and educationally backward classes for their own purposes."
    ),
    Question(
        questionText: "In the Mandal case judgment (1992), what directive did the Supreme Court give to the central government?",
        options: [
          "Constitute a permanent statutory body.",
          "Create a special commission for SCs and STs.",
          "Establish a separate commission for OBCs.",
          "No directive was given in the Mandal case."
        ],
        correctAnswerIndex: 0,
        explanation: "In the Mandal case judgment (1992), the Supreme Court directed the central government to constitute a permanent statutory body to examine complaints related to backward classes."
    ),

    Question(
        questionText: "What change did the 102nd Amendment Act of 2018 bring to the National Commission for Backward Classes (NCBC)?",
        options: [
          "It dissolved the NCBC.",
          "It conferred constitutional status on the NCBC.",
          "It made NCBC a statutory body.",
          "It expanded NCBC's functions without any change in status."
        ],
        correctAnswerIndex: 1,
        explanation: "The 102nd Amendment Act of 2018 conferred constitutional status on the National Commission for Backward Classes (NCBC)."
    ),

    Question(
        questionText: "What functions were added to the National Commission for Backward Classes (NCBC) in 2005?",
        options: [
          "Measures for protecting forests.",
          "Relief and rehabilitation for displaced tribal groups.",
          "Preventing alienation of tribal people from land.",
          "Conferring ownership rights in minor forest produce."
        ],
        correctAnswerIndex: 3,
        explanation: "In 2005, additional functions were specified for the NCBC, including measures related to conferring ownership rights in minor forest produce to Scheduled Tribes (STs) living in forest areas."
    ),

    Question(
        questionText: "What powers does the National Commission for Backward Classes (NCBC) have while investigating any matter or complaint?",
        options: [
          "Only the power to summon witnesses.",
          "Powers of a civil court, including issuing summons and receiving evidence.",
          "No specific powers.",
          "Powers limited to enforcing attendance of persons."
        ],
        correctAnswerIndex: 1,
        explanation: "The NCBC, while investigating any matter or complaint, has all the powers of a civil court, including issuing summons, receiving evidence on affidavits, and more."
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
    home: nationalCommisionerBCs(),
  ));
}

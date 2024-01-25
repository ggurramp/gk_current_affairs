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

class sprcc extends StatefulWidget {
  final String? userIdentifier;

  sprcc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<sprcc> createState() => _sprccState();
}

class _sprccState extends State<sprcc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//76.SPECIAL PROVISION RELATING TO CERTAIN CLASSES

    Question(
      questionText: "Which part of the Constitution contains special provisions for scheduled castes (SCs), scheduled tribes (STs), backward classes (BCs), and Anglo-Indians?",
      options: ["Part I", "Part II", "Part III", "Part XVI"],
      correctAnswerIndex: 3,
      explanation: "Special provisions for SCs, STs, BCs, and Anglo-Indians are contained in Part XVI of the Constitution.",
    ),

    Question(
      questionText: "What are the broad categories in which the special provisions for certain classes can be classified?",
      options: ["Permanent and Temporary", "Protective and Developmental", "Both A and B", "Neither A nor B"],
      correctAnswerIndex: 2,
      explanation: "The special provisions can be classified into both Permanent and Temporary, as well as Protective and Developmental categories.",
    ),

    Question(
      questionText: "Who has the power to specify the castes or tribes to be treated as scheduled castes (SCs) and scheduled tribes (STs) in each state and union territory?",
      options: ["Governor of the state", "President", "Prime Minister", "Parliament"],
      correctAnswerIndex: 1,
      explanation: "The President has the power to specify the castes or tribes as SCs and STs after consulting the governor of the concerned state.",
    ),

    Question(
      questionText: "According to the 105th Amendment Act of 2021, what does the expression 'Central List' mean?",
      options: ["List maintained by the central government", "List prepared by the Parliament", "List maintained by the President", "List prepared by the Prime Minister"],
      correctAnswerIndex: 0,
      explanation: "The expression 'Central List' means the list of socially and educationally backward classes prepared and maintained by and for the central government.",
    ),

    Question(
      questionText: "Under the 102nd Amendment Act of 2018, which Article was inserted into the Constitution regarding the reservation for Scheduled Castes (SCs) and Scheduled Tribes (STs) in legislatures?",
      options: ["Article 330", "Article 332", "Article 342A", "Article 345"],
      correctAnswerIndex: 2,
      explanation: "The 102nd Amendment Act of 2018 inserted Article 342A into the Constitution, which was later amended by the 105th Amendment Act of 2021.",
    ),

    Question(
      questionText: "Originally, how long was the provision of reservation for SCs and STs in legislatures supposed to operate?",
      options: ["5 years", "10 years", "20 years", "30 years"],
      correctAnswerIndex: 1,
      explanation: "Originally, the provision of reservation for SCs and STs in legislatures was supposed to operate for ten years, but it has been continuously extended and now lasts until 2030 under the 104th Amendment Act of 2019.",
    ),

    Question(
      questionText: "According to the 82nd Amendment Act of 2000, what provision was made for the relaxation in qualifying marks or lowering the standards of evaluation for SCs and STs in matters of promotion to public services?",
      options: ["Provision for direct promotions", "Provision for reservation in promotions", "Provision for additional attempts in exams", "Provision for skill-based evaluations"],
      correctAnswerIndex: 1,
      explanation: "The 82nd Amendment Act of 2000 provides for making provisions in favor of SCs and STs for relaxation in qualifying marks or lowering the standards of evaluation, specifically for reservation in matters of promotion to public services.",
    ),

    Question(
      questionText: "Under which Article of the Constitution should the President set up a National Commission for Scheduled Castes (SCs) to investigate matters relating to constitutional safeguards for SCs?",
      options: ["Article 338", "Article 338-A", "Article 339", "Article 340"],
      correctAnswerIndex: 0,
      explanation: "The President should set up a National Commission for SCs under Article 338 of the Constitution to investigate matters relating to constitutional safeguards for SCs.",
    ),

    Question(
      questionText: "Which amendment act of 2019 discontinued the provision of special representation for Anglo-Indians in legislatures?",
      options: ["95th Amendment Act", "102nd Amendment Act", "104th Amendment Act", "2019th Amendment Act"],
      correctAnswerIndex: 2,
      explanation: "The 104th Amendment Act, 2019, discontinued the provision of special representation for Anglo-Indians in legislatures by nomination.",
    ),

    Question(
      questionText: "Who chaired the first Backward Classes Commission appointed in 1953?",
      options: ["V.P. Singh", "Kaka Kalelkar", "B.P. Mandal", "Kaka Kinlekar"],
      correctAnswerIndex: 1,
      explanation: "The first Backward Classes Commission appointed in 1953 was chaired by Kaka Kalelkar.",
    ),

    Question(
      questionText: "What was the primary reason for not implementing the recommendations of the first Backward Classes Commission in 1955?",
      options: ["Lack of government support", "Vagueness and impracticality", "Sharp division among members", "Financial constraints"],
      correctAnswerIndex: 2,
      explanation: "The recommendations of the first Backward Classes Commission in 1955 were not implemented due to their perceived vagueness and impracticality, along with a sharp division among commission members on the criterion of backwardness.",
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
    home: sprcc(),
  ));
}

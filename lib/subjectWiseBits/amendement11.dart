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

class amendement11 extends StatefulWidget {
  final String? userIdentifier;

  amendement11({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<amendement11> createState() => _amendement11State();
}

class _amendement11State extends State<amendement11> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    //Chapter 11 Amendment of the constitution
    Question(
      questionText: "Which case ruled that Parliament cannot amend provisions forming the 'basic structure' of the Constitution?",
      options: ["Kesavananda Bharati case (1973)", "Waman Rao case (1981)", "Indira Gandhi case (1975)", "Maneka Gandhi case (1978)"],
      correctAnswerIndex: 0,
      explanation: "The Kesavananda Bharati case (1973) ruled that Parliament cannot amend provisions forming the 'basic structure' of the Constitution.",
    ),

    Question(
      questionText: "What is the special majority required for passing a constitutional amendment bill in each house of Parliament?",
      options: ["Simple majority", "Two-thirds of the total membership", "One-third of the total membership", "Half of the members present and voting"],
      correctAnswerIndex: 1,
      explanation: "A special majority for passing a constitutional amendment bill in each house of Parliament requires two-thirds of the total membership.",
    ),

    Question(
      questionText: "Which provisions in the Constitution can be amended by a simple majority of Parliament?",
      options: ["Fundamental Rights", "Directive Principles of State Policy", "Quorum in Parliament", "Distribution of legislative powers between Union and states"],
      correctAnswerIndex: 2,
      explanation: "Provisions like Quorum in Parliament can be amended by a simple majority of both Houses of Parliament.",
    ),

    Question(
      questionText: "What criticism has been raised regarding the amendment procedure of the Indian Constitution?",
      options: ["Lack of flexibility", "Inclusion of a Constitutional Convention", "Prescribing a time frame for state ratification", "Too detailed provisions"],
      correctAnswerIndex: 0,
      explanation: "Critics have criticized the amendment procedure for lacking flexibility, neither being too rigid nor too flexible according to some.",
    ),
    Question(
      questionText: "What does Article 368 in Part XX of the Indian Constitution deal with?",
      options: ["Directive Principles of State Policy", "Amendment procedure of the Constitution", "Fundamental Rights", "Election of the President"],
      correctAnswerIndex: 1,
      explanation: "Article 368 in Part XX of the Indian Constitution deals with the powers of Parliament to amend the Constitution and its procedure.",
    ),
    Question(
      questionText: "How many ways are mentioned in the Constitution for amending it?",
      options: ["One", "Two", "Three", "Four"],
      correctAnswerIndex: 2,
      explanation: "The Constitution mentions three ways for amending it: Amendment by simple majority of Parliament, Amendment by special majority of Parliament, and Amendment by special majority of Parliament and consent of half of the state legislatures.",
    ),


    Question(
      questionText: "Which provisions of the Constitution require a special majority of Parliament and consent of half of the state legislatures for amendment?",
      options: [
        "Supreme Court and high courts",
        "Goods and Services Tax Council",
        "Representation of states in Parliament",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Provisions like Supreme Court and high courts, Goods and Services Tax Council, and Representation of states in Parliament require a special majority of Parliament and consent of half of the state legislatures for amendment.",
    ),
    Question(
      questionText: "What criticism has been raised regarding the amendment procedure of the Indian Constitution?",
      options: [
        "Lack of flexibility",
        "Absence of Constitutional Convention or Assembly",
        "Prescribing a time frame for state ratification",
        "Detailed provisions leading to rigidity"
      ],
      correctAnswerIndex: 1,
      explanation: "Critics have raised concerns about the absence of a special body like Constitutional Convention or Assembly for amending the Constitution, and instead, the constituent power being vested primarily in Parliament.",
    ),

    Question(
      questionText: "According to critics, what power does the Parliament have in initiating an amendment to the Constitution?",
      options: [
        "Exclusive power without any limitations",
        "Shared power with state legislatures",
        "Limited power with the need for a joint resolution",
        "No power, as it requires state legislatures' initiation"
      ],
      correctAnswerIndex: 0,
      explanation: "According to critics, the power to initiate an amendment to the Constitution lies primarily with the Parliament, without significant involvement of state legislatures.",
    ),

    Question(
      questionText: "What concern has been raised about the majority of the Constitution being amendable by Parliament alone?",
      options: [
        "States having too much influence",
        "Lack of central authority",
        "Need for a two-thirds majority",
        "Limited role of state legislatures"
      ],
      correctAnswerIndex: 3,
      explanation: "Critics express concern about a major part of the Constitution being amendable by Parliament alone, with limited involvement of state legislatures and only in specific cases.",
    ),

    Question(
      questionText: "What issue regarding the time frame is criticized in the amendment procedure?",
      options: [
        "Excessive time limits for ratification",
        "Lack of time limits for state legislatures to ratify or reject amendments",
        "Inconsistency in time frames",
        "Strict adherence to time limits"
      ],
      correctAnswerIndex: 1,
      explanation: "Critics point out that the Constitution does not prescribe a time frame within which state legislatures should ratify or reject an amendment, leading to potential delays or uncertainties.",
    ),

    Question(
      questionText: "What is criticized regarding the provision for holding a joint sitting of both Houses of Parliament in case of a deadlock?",
      options: [
        "Lack of provision for a joint sitting",
        "Need for joint sitting in all cases",
        "Presence of a joint sitting in ordinary bills but not in constitutional amendments",
        "Equal representation in a joint sitting"
      ],
      correctAnswerIndex: 2,
      explanation: "Critics criticize the absence of a provision for holding a joint sitting of both Houses of Parliament in case of a deadlock over the passage of a constitutional amendment bill, while such a provision exists for ordinary bills.",
    ),

    Question(
      questionText: "What has K.C. Wheare praised regarding the variety of amendment procedures in the Indian Constitution?",
      options: [
        "The rigidity of the procedures",
        "The absence of variety",
        "The variety in the amending process",
        "The complexity of the procedures"
      ],
      correctAnswerIndex: 2,
      explanation: "K.C. Wheare has admired the variety of amendment procedures contained in the Constitution of India, considering it wise and rarely found.",
    ),

    Question(
      questionText: "According to Granville Austin, what aspect of the Constitution has proved itself ably conceived?",
      options: [
        "Distribution of legislative powers",
        "The procedure for amending the Constitution",
        "Directive Principles of State Policy",
        "The structure of Parliament"
      ],
      correctAnswerIndex: 1,
      explanation: "Granville Austin states that the amending process has proved itself one of the most ably conceived aspects of the Constitution, even though it may appear complicated.",
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
    home: amendement11(),
  ));
}

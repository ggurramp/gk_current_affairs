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

class adl extends StatefulWidget {
  final String? userIdentifier;

  adl({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<adl> createState() => _adlState();
}

class _adlState extends State<adl> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

   // 85.ANTI - DEFECTION LAW

    Question(
      questionText: "What schedule was added to the Indian Constitution by the 52nd Amendment Act of 1965, commonly known as the 'anti-defection law'?",
      options: ["First Schedule", "Tenth Schedule", "Fifth Schedule", "Twenty-Second Schedule"],
      correctAnswerIndex: 1,
      explanation: "The 52nd Amendment Act of 1965 added the Tenth Schedule to the Indian Constitution, which is commonly known as the 'anti-defection law.'",
    ),

    Question(
      questionText: "In the context of defection, when does a nominated member of a House become disqualified?",
      options: [
        "Immediately after joining any political party",
        "After the expiry of six months from taking the seat in the House",
        "If the party issues a disqualification notice",
        "Only if the party leader requests disqualification"
      ],
      correctAnswerIndex: 1,
      explanation: "A nominated member of a House becomes disqualified after the expiry of six months from taking the seat in the House if they join any political party.",
    ),

    Question(
      questionText: "Under the Tenth Schedule, what happens if a member voluntarily gives up their membership of a political party?",
      options: [
        "No consequences",
        "Immediate disqualification",
        "Exemption from disqualification",
        "Automatic suspension"
      ],
      correctAnswerIndex: 1,
      explanation: "If a member voluntarily gives up their membership of a political party, they become disqualified for being a member of the House under the Tenth Schedule.",
    ),

    Question(
      questionText: "According to the evaluation of the anti-defection law, what was the main purpose of introducing the Tenth Schedule in the Constitution?",
      options: [
        "To encourage political defections for a more dynamic democracy",
        "To prevent corruption at the political level",
        "To establish a legal framework for party mergers",
        "To curb unprincipled and unethical political defections"
      ],
      correctAnswerIndex: 3,
      explanation: "The Tenth Schedule, or anti-defection law, was designed to prevent unprincipled and unethical political defections in order to strengthen Indian parliamentary democracy.",
    ),

    Question(
      questionText: "What did Rajiv Gandhi, the then Prime Minister, describe the Tenth Schedule (anti-defection law) as?",
      options: [
        "A threat to democracy",
        "A bold step towards dissent",
        "The first step towards cleaning up public life",
        "An unnecessary interference in party dynamics"
      ],
      correctAnswerIndex: 2,
      explanation: "Rajiv Gandhi described the Tenth Schedule (anti-defection law) as the 'first step towards cleaning up public life.'",
    ),

    Question(
      questionText: "What advantage of the anti-defection law is mentioned in the text as facilitating democratic realignment of parties in the legislature?",
      options: [
        "Stability in the body politic",
        "Recognition of political parties",
        "Prevention of corruption",
        "Democratic realignment through party mergers"
      ],
      correctAnswerIndex: 3,
      explanation: "The anti-defection law facilitates democratic realignment of parties in the legislature through the merger of parties.",
    ),

    Question(
      questionText: "What was one of the reasons cited for introducing the 91st Amendment Act of 2003 to the Indian Constitution?",
      options: [
        "To increase the total number of ministers in the Central Council of Ministers",
        "To strengthen and amend the Anti-defection Law",
        "To allow bulk defections in political parties",
        "To promote abnormally large Councils of Ministers"
      ],
      correctAnswerIndex: 1,
      explanation: "The 91st Amendment Act of 2003 was introduced to strengthen and amend the Anti-defection Law, as the existing provisions were seen as insufficient in checking defections.",
    ),

    Question(
      questionText: "What recommendation did the National Commission to Review the Working of the Constitution (NCRWC) make regarding the punishment for defection?",
      options: [
        "Debarring defectors from holding any public office",
        "Providing financial incentives for defectors",
        "Issuing warnings to defectors",
        "Granting amnesty to defectors"
      ],
      correctAnswerIndex: 0,
      explanation: "The NCRWC recommended debarring defectors from holding any public office as a minister or any other remunerative political post for at least the remaining term of the existing Legislature or until the next fresh elections, whichever is earlier.",
    ),

    Question(
      questionText: "What change did the 91st Amendment Act of 2003 make to the Tenth Schedule (anti-defection law) regarding splits in legislature parties?",
      options: [
        "It introduced an exemption for splits",
        "It strengthened protection for defectors in splits",
        "It deleted the provision for exemption from disqualification in case of splits",
        "It allowed unlimited splits without consequences"
      ],
      correctAnswerIndex: 2,
      explanation: "The 91st Amendment Act of 2003 deleted the provision of the Tenth Schedule pertaining to exemption from disqualification in case of a split by one-third members of the legislature party.",
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
          MyBannerAdWidget(), // Add the banner ad here
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
    home: adl(),
  ));
}

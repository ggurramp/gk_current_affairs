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

class rbi_mpc extends StatefulWidget {
  final String? userIdentifier;

  rbi_mpc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<rbi_mpc> createState() => _rbi_mpcState();
}

class _rbi_mpcState extends State<rbi_mpc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "According to the Act, what makes an act or proceeding of the Monetary Policy Committee (MPC) invalid?",
      options: [
        "Any irregularity in the procedure of the MPC affecting the merits of the case",
        "Any vacancy in the MPC",
        "Any defect in the appointment of a person acting as a Member of the MPC",
        "Any defect in the constitution of the MPC"
      ],
      correctAnswerIndex: 0,
      explanation: "As per the Act, no act or proceeding of the Monetary Policy Committee (MPC) shall be invalid merely by reason of irregularity in the procedure not affecting the merits of the case.",
    ),

    Question(
      questionText: "How many meetings is the Reserve Bank of India (RBI) mandated to organize for the Monetary Policy Committee (MPC) in a year?",
      options: [
        "Three",
        "Four",
        "Five",
        "Six"
      ],
      correctAnswerIndex: 1,
      explanation: "As per the Act, the RBI is mandated to organize at least four meetings of the Monetary Policy Committee (MPC) in a year.",
    ),

    Question(
      questionText: "What is the purpose of transitioning to the decision process of the Monetary Policy Committee (MPC) as mentioned in the text?",
      options: [
        "To reduce the frequency of meetings",
        "To centralize the decision-making process",
        "To facilitate independence of opinion and improve representativeness",
        "To limit the information provided to the RBI"
      ],
      correctAnswerIndex: 2,
      explanation: "Transitioning to the decision process of the Monetary Policy Committee (MPC) aims to impart diversity of views, specialised experience, and independence of opinion, thereby improving representativeness in the overall decision-making process.",
    ),




    Question(
      questionText: "According to the text, what does the Reserve Bank of India (RBI) have to provide if any member of the Monetary Policy Committee (MPC) requests additional information?",
      options: [
        "Data, models, and analysis only to the requesting member",
        "Data, models, and analysis to all members",
        "Data and analysis only to the requesting member",
        "Models and analysis only to the requesting member"
      ],
      correctAnswerIndex: 1,
      explanation: "As mentioned, if any member of the MPC requests additional information from the RBI, including any data, models, or analysis, the same have to be provided not just to that member but to all members.",
    ),

    Question(
      questionText: "What is the primary aim of the newly constituted Monetary Policy Committee (MPC) in India?",
      options: [
        "To manage fiscal policy",
        "To regulate banks and financial institutions",
        "To improve the representativeness in monetary policy decisions",
        "To oversee the government's budgetary processes"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary aim of the newly constituted Monetary Policy Committee (MPC) is to bring diversity of views, specialized experience, and independence of opinion to improve the representativeness in monetary policy decisions.",
    ),

    Question(
        questionText: "What happens if there is a tie in voting among the members of the Monetary Policy Committee (MPC)?",
        options: [
          "The RBI Governor gets the deciding vote",
          "The committee chairperson gets the deciding vote",
          "The decision is postponed to the next meeting",
          "An external expert casts the deciding vote"
        ],
        correctAnswerIndex: 0,
        explanation: "In case of a tie in voting among the members of the Monetary Policy Committee (MPC), the RBI Governor gets the deciding vote",
    ),

    Question(
      questionText: "What is 'monetization of deficit' in the context of government financing?",
      options: [
        "Government borrowing from international markets",
        "Printing of money to meet the deficit",
        "Reduction of government spending",
        "Using gold reserves to cover the deficit"
      ],
      correctAnswerIndex: 1,
      explanation: "'Monetization of deficit' refers to financing the deficit by printing money, which can lead to inflationary pressures.",
    ),

    Question(
      questionText: "What role does the Monetary Policy Committee (MPC) play in setting monetary policy?",
      options: [
        "It sets the fiscal policy targets",
        "It determines interest rates based on majority voting",
        "It oversees government spending",
        "It manages international trade policies"
      ],
      correctAnswerIndex: 1,
      explanation: "The Monetary Policy Committee (MPC) decides on changes to the policy rate (repo rate) to maintain inflation within the target level specified by the Central Government, using a majority voting system.",
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
              final isCorrectAnswer = optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8.0), // Add space between boxes
                  decoration: BoxDecoration(
                    color: _selectedAnswerIndex == optionIndex
                        ? (isCorrectAnswer ? Colors.green[200] : Colors.red[300])
                        : Colors.white,
                    border: Border.all(
                      color: _selectedAnswerIndex == optionIndex ? Colors.blue : Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(optionText),
                    leading: Radio<int>(
                      value: optionIndex,
                      groupValue: _selectedAnswerIndex,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedAnswerIndex = value;
                          _userAnswers[_currentQuestionIndex] = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
    home: rbi_mpc(),
  ));
}

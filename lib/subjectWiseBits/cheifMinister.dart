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

class cheifMinister extends StatefulWidget {
  final String? userIdentifier;

  cheifMinister({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cheifMinister> createState() => _cheifMinisterState();
}

class _cheifMinisterState extends State<cheifMinister> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//31.CHIEF MINISTER
    Question(
      questionText: "In the parliamentary system, what is the role of the governor?",
      options: [
        "Nominal executive authority (de jure executive)",
        "Real executive authority (de facto executive)",
        "Head of the government",
        "Leader of the majority party"
      ],
      correctAnswerIndex: 0,
      explanation: "In the parliamentary system, the governor serves as the nominal executive authority (de jure executive).",
    ),

    Question(
      questionText: "How is the Chief Minister appointed according to the Constitution?",
      options: [
        "By the President",
        "By the Chief Justice",
        "By the Governor",
        "By the state legislature"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the Constitution, the Chief Minister is appointed by the Governor.",
    ),

    Question(
      questionText: "Under what circumstances may the governor exercise personal discretion in appointing the Chief Minister?",
      options: [
        "When a party has a clear majority",
        "When no party has a clear majority",
        "When the Chief Minister resigns",
        "When the state legislature is dissolved"
      ],
      correctAnswerIndex: 1,
      explanation: "The governor may exercise personal discretion in appointing the Chief Minister when no party has a clear majority in the state legislative assembly.",
    ),

    Question(
      questionText: "What recommendations did the Sarkaria Commission make regarding the selection and appointment of a Chief Minister?",
      options: [
        "The governor should pursue policies he/she approves.",
        "The leader of the largest party should always be appointed.",
        "The governor should select a leader likely to command a majority.",
        "The Chief Minister should serve a fixed term."
      ],
      correctAnswerIndex: 2,
      explanation: "The Sarkaria Commission recommended that the governor should select a leader who, in his/her judgment, is most likely to command a majority in the Legislative Assembly.",
    ),

    Question(
      questionText: "Before entering office, what oaths does the Chief Minister take?",
      options: [
        "Oath of loyalty to the governor",
        "Oath of allegiance to the President",
        "Oath of office and secrecy",
        "Oath of party loyalty"
      ],
      correctAnswerIndex: 2,
      explanation: "Before entering office, the Chief Minister takes the oath of office and secrecy.",
    ),

    Question(
      questionText: "What does the Chief Minister swear to in the oath of office?",
      options: [
        "To follow party directives",
        "To uphold the sovereignty and integrity of India",
        "To prioritize personal interests",
        "To pursue policies approved by the governor"
      ],
      correctAnswerIndex: 1,
      explanation: "In the oath of office, the Chief Minister swears to uphold the sovereignty and integrity of India.",
    ),

    Question(
      questionText: "How is the term of the Chief Minister determined?",
      options: [
        "Fixed term of five years",
        "Holds office at the pleasure of the President",
        "Determines own term",
        "Holds office at the pleasure of the governor"
      ],
      correctAnswerIndex: 3,
      explanation: "The term of the Chief Minister is not fixed and he/she holds office at the pleasure of the governor.",
    ),

    Question(
      questionText: "Under what condition can the governor dismiss the Chief Minister?",
      options: [
        "At any time",
        "If the Chief Minister disagrees with the governor",
        "If the Chief Minister loses majority support in the legislative assembly",
        "If the Chief Minister is involved in a legal dispute"
      ],
      correctAnswerIndex: 2,
      explanation: "The governor can dismiss the Chief Minister if he/she loses majority support in the legislative assembly.",
    ),

    Question(
      questionText: "Who determines the salary and allowances of the Chief Minister?",
      options: [
        "President",
        "Prime Minister",
        "State legislature",
        "Chief Justice"
      ],
      correctAnswerIndex: 2,
      explanation: "The salary and allowances of the Chief Minister are determined by the state legislature.",
    ),
    Question(
      questionText: "What powers does the Chief Minister have in relation to the Council of Ministers?",
      options: [
        "Appoint ministers recommended by the President",
        "Allocate and reshuffle portfolios among ministers",
        "Dismiss ministers without consulting the governor",
        "Preside over the meetings of the Legislative Assembly"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Minister has the power to allocate and reshuffle portfolios among ministers in the Council of Ministers.",
    ),

    Question(
      questionText: "What happens if the Chief Minister resigns or dies?",
      options: [
        "The Legislative Assembly automatically dissolves.",
        "A new Chief Minister is appointed immediately.",
        "The Governor becomes the new Chief Minister.",
        "A by-election is held to fill the vacancy."
      ],
      correctAnswerIndex: 0,
      explanation: "If the Chief Minister resigns or dies, the Legislative Assembly automatically dissolves, as the Chief Minister is the head of the Council of Ministers.",
    ),

    Question(
      questionText: "What duty does the Chief Minister have in relation to the Governor?",
      options: [
        "To appoint important officials without consultation",
        "To communicate decisions of the Council of Ministers to the Governor",
        "To dismiss the Governor at will",
        "To make legislative decisions without Governor's approval"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Minister's duty is to communicate decisions of the Council of Ministers to the Governor and provide information as required.",
    ),

    Question(
      questionText: "What power does the Chief Minister have in relation to the State Legislature?",
      options: [
        "Can dissolve the Legislative Assembly at any time",
        "Can summon and prorogue sessions of the State Legislature",
        "Can make legislative decisions without assembly approval",
        "Can recommend the appointment of judges"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Minister has the power to advise the Governor regarding the summoning and proroguing of sessions of the State Legislature.",
    ),

    Question(
      questionText: "What role does the Chief Minister play in emergencies?",
      options: [
        "Handles medical emergencies",
        "Acts as the crisis manager-in-chief at the political level",
        "Declares a state of emergency independently",
        "Leads the state army during emergencies"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Minister acts as the crisis manager-in-chief at the political level during emergencies.",
    ),

    Question(
      questionText: "What is the Chief Minister's role in the State Planning Board?",
      options: [
        "Secretary",
        "Chairman",
        "Treasurer",
        "Advisor"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Minister is the chairman of the State Planning Board.",
    ),

    Question(
      questionText: "How are other ministers appointed according to Article 164 of the Constitution?",
      options: [
        "By the Chief Minister without consultation",
        "By the President",
        "By the Governor on the advice of the Chief Minister",
        "By direct election from the public"
      ],
      correctAnswerIndex: 2,
      explanation: "According to Article 164, other ministers are appointed by the Governor on the advice of the Chief Minister.",
    ),

    Question(
      questionText: "What happens if the Chief Minister loses majority support in the Legislative Assembly?",
      options: [
        "Can continue in office until the next election",
        "Must resign or can be dismissed by the Governor",
        "Can dissolve the Legislative Assembly immediately",
        "Can appoint new ministers without assembly approval"
      ],
      correctAnswerIndex: 1,
      explanation: "If the Chief Minister loses majority support in the Legislative Assembly, he/she must resign or can be dismissed by the Governor.",
    ),

    Question(
      questionText: "What is the Chief Minister's role in the Inter-State Council and NITI Aayog?",
      options: [
        "Chairman",
        "Observer",
        "Member",
        "Secretary"
      ],
      correctAnswerIndex: 2,
      explanation: "The Chief Minister is a member of the Inter-State Council and the Governing Council of NITI Aayog, both headed by the Prime Minister.",
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
    home: cheifMinister(),
  ));
}

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

class stateLegislative extends StatefulWidget {
  final String? userIdentifier;

  stateLegislative({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<stateLegislative> createState() => _stateLegislativeState();
}

class _stateLegislativeState extends State<stateLegislative> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//33.STATE LEGISLATURE

    Question(
      questionText: "Why are privileges of a state legislature considered necessary?",
      options: [
        "To increase the authority of the governor",
        "To secure the independence and effectiveness of legislative actions",
        "To limit the powers of individual members",
        "To promote secrecy in legislative proceedings"
      ],
      correctAnswerIndex: 1,
      explanation: "Privileges of a state legislature are considered necessary to secure the independence and effectiveness of their actions and to maintain authority, dignity, and honor.",
    ),

    Question(
      questionText: "To whom are the privileges of the state legislature extended?",
      options: [
        "Only members of the legislative assembly",
        "Advocate-General of the state and state ministers",
        "Governor",
        "Only the presiding officer"
      ],
      correctAnswerIndex: 1,
      explanation: "The privileges of the state legislature are extended to persons entitled to speak and take part in its proceedings, including the Advocate-General of the state and state ministers.",
    ),

    Question(
      questionText: "Do privileges of the state legislature extend to the governor?",
      options: [
        "Yes",
        "No",
        "Partially",
        "Only during secret sittings"
      ],
      correctAnswerIndex: 1,
      explanation: "No, the privileges of the state legislature do not extend to the governor who is considered an integral part of the legislature.",
    ),

    Question(
      questionText: "What is one of the collective privileges of each House of the state legislature?",
      options: [
        "Freedom of speech",
        "Right to arrest",
        "Right to publish reports, debates, and proceedings",
        "Exemption from jury service"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the collective privileges of each House of the state legislature is the right to publish its reports, debates, and proceedings, and to prohibit others from publishing the same.",
    ),

    Question(
      questionText: "What is an individual privilege of members during the session of the state legislature?",
      options: [
        "Exemption from arrest in criminal cases",
        "Freedom of speech",
        "Exemption from jury service",
        "Right to arrest"
      ],
      correctAnswerIndex: 0,
      explanation: "An individual privilege of members during the session is that they cannot be arrested, but this is limited to civil cases and not applicable to criminal cases or preventive detention cases.",
    ),

    Question(
      questionText: "What is the scope of the freedom of speech for members in the state legislature?",
      options: [
        "Unlimited, with no restrictions",
        "Subject to the provisions of the Constitution and rules of the legislature",
        "Restricted to specific topics",
        "Allowed only during secret sittings"
      ],
      correctAnswerIndex: 1,
      explanation: "The freedom of speech for members in the state legislature is subject to the provisions of the Constitution and the rules and standing orders regulating the procedure of the state legislature.",
    ),
    Question(
      questionText: "What are the two angles from which the constitutional position of the legislative council can be studied?",
      options: ["Political and Administrative", "Executive and Legislative", "Equal and Unequal with the Assembly", "Federal and Unitary"],
      correctAnswerIndex: 2,
      explanation: "The constitutional position of the legislative council can be studied from two angles: (A) Spheres where council is equal to assembly, and (B) Spheres where council is unequal to assembly.",
    ),

    Question(
      questionText: "In which matters are the powers and status of the legislative council broadly equal to that of the legislative assembly?",
      options: ["Introduction of Money Bills", "Approval of ordinances", "Approval of constitutional amendments", "Approval of budget"],
      correctAnswerIndex: 1,
      explanation: "In matters like the introduction and passage of ordinary bills, approval of ordinances, selection of ministers, and consideration of reports of constitutional bodies, the powers of the legislative council are broadly equal to that of the legislative assembly.",
    ),

    Question(
      questionText: "What is one of the unequal powers of the legislative council compared to the legislative assembly?",
      options: [
        "Initiating Money Bills",
        "Amending or rejecting a Money Bill",
        "Participating in the election of the President",
        "Removing the council of ministers by passing a no-confidence motion"
      ],
      correctAnswerIndex: 1,
      explanation: "The legislative council cannot amend or reject a Money Bill. It can only return the bill to the assembly with or without recommendations, and the final power to decide whether a bill is a Money Bill rests with the Speaker of the assembly.",
    ),

    Question(
      questionText: "What is the final power of passing an ordinary bill?",
      options: [
        "Legislative council",
        "Legislative assembly",
        "Governor",
        "President"
      ],
      correctAnswerIndex: 1,
      explanation: "The final power of passing an ordinary bill lies with the legislative assembly. The council can only discuss the budget but cannot vote on the demands for grants, making it a weaker revising body compared to the Rajya Sabha.",
    ),

    Question(
      questionText: "What is a unique power of the legislative council in relation to the election of the President and representatives of the state in the Rajya Sabha?",
      options: [
        "Equal participation",
        "Exclusive participation",
        "Advisory role",
        "No participation"
      ],
      correctAnswerIndex: 3,
      explanation: "The legislative council does not participate in the election of the President of India and representatives of the state in the Rajya Sabha.",
    ),

    Question(
      questionText: "What is the fate of an ordinary bill that originated in the legislative council if it is rejected by the legislative assembly?",
      options: [
        "Sent back to the council for reconsideration",
        "Becomes dead",
        "Reviewed by the governor",
        "Sent to the President for approval"
      ],
      correctAnswerIndex: 1,
      explanation: "When an ordinary bill originating in the legislative council is rejected by the legislative assembly, the bill becomes dead.",
    ),

    Question(
      questionText: "Why is the legislative council considered weaker compared to the Rajya Sabha?",
      options: [
        "Due to its composition",
        "Due to federal significance",
        "Due to stronger revising powers",
        "Due to the nomination of members"
      ],
      correctAnswerIndex: 0,
      explanation: "The legislative council is considered weaker due to its heterogeneous composition, representing different interests and including nominated members, making it less effective as a revising body compared to the Rajya Sabha.",
    ),

    Question(
      questionText: "What is the ultimate fate of the legislative council according to the Constitution?",
      options: [
        "Permanent existence",
        "Abolishment by Parliament on the recommendation of the assembly",
        "Autonomous decision",
        "Extension of powers"
      ],
      correctAnswerIndex: 1,
      explanation: "The ultimate fate of the legislative council is that it can be abolished by the Parliament on the recommendation of the assembly.",
    ),

    Question(
      questionText: "What role does the legislative council play in checking legislative actions of the assembly?",
      options: [
        "Promotes hasty legislation",
        "Delays legislation for revision and thought",
        "Accelerates legislation",
        "Participates in all legislative actions"
      ],
      correctAnswerIndex: 1,
      explanation: "The legislative council plays a role in checking hasty, defective, careless, and ill-considered legislation made by the assembly by providing for revision and thought.",
    ),
    Question(
        questionText: "In the legislative procedure, what distinguishes a Money Bill from other bills?",
        options: [
          "It can be introduced in either house of the legislature.",
          "It requires the recommendation of the governor for introduction.",
          "It can be rejected or amended by the legislative council.",
          "It undergoes a joint sitting of both houses in case of a deadlock."
        ],
        correctAnswerIndex: 1,
        explanation: "A Money Bill can only be introduced in the legislative assembly and requires the recommendation of the governor for its introduction."
    ),
    Question(
      questionText: "What powers does the legislative council have with regard to a Money Bill?",
      options: [
        "It can reject or amend a Money Bill.",
        "It can only make recommendations within 14 days.",
        "It has the authority to pass a Money Bill independently.",
        "It can detain or delay a Money Bill for up to 30 days."
      ],
      correctAnswerIndex: 1,
      explanation: "The legislative council can only make recommendations on a Money Bill within 14 days but cannot reject or amend it.",
    ),

    Question(
      questionText: "What happens if the legislative council does not return a Money Bill within 14 days?",
      options: [
        "The bill is deemed to have been passed by both houses.",
        "The bill is considered rejected by the legislative council.",
        "The legislative assembly can override the council's decision.",
        "The bill is sent to the president for consideration."
      ],
      correctAnswerIndex: 0,
      explanation: "If the legislative council does not return the Money Bill within 14 days, it is deemed to have been passed by both houses in the form originally passed by the legislative assembly.",
    ),

    Question(
      questionText: "How does the legislative assembly handle the recommendations made by the legislative council on a Money Bill?",
      options: [
        "It must accept all recommendations without any changes.",
        "It can either accept or reject all or any of the recommendations.",
        "It is required to reject all recommendations to maintain consistency.",
        "It has no authority to consider or respond to the recommendations."
      ],
      correctAnswerIndex: 1,
      explanation: "The legislative assembly can either accept or reject all or any of the recommendations made by the legislative council on a Money Bill.",
    ),

    Question(
      questionText: "What powers does the governor have when presented with a Money Bill?",
      options: [
        "The governor can reject the Money Bill.",
        "The governor can amend the Money Bill.",
        "The governor can reserve the Money Bill for presidential assent.",
        "The governor can return the Money Bill for reconsideration."
      ],
      correctAnswerIndex: 2,
      explanation: "The governor can give assent, withhold assent, or reserve the Money Bill for presidential assent, but cannot return it for reconsideration of the state legislature.",
    ),

    Question(
      questionText: "According to the Sarkaria Commission, which category of State Bills must be reserved for the President's consideration?",
      options: [
        "Bills related to acquisition of estates",
        "Bills imposing restrictions on trade and commerce",
        "Bills derogating from the powers of the High Court",
        "Bills relating to subjects in the Concurrent List"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the Sarkaria Commission, Bills derogating from the powers of the High Court must be reserved for President's consideration.",
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
    home: stateLegislative(),
  ));
}

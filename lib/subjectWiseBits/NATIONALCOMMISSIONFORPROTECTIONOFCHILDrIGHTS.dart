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

class ncpchildren extends StatefulWidget {
  final String? userIdentifier;

  ncpchildren({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ncpchildren> createState() => _ncpchildrenState();
}

class _ncpchildrenState extends State<ncpchildren> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//60.NATIONAL COMMISSION FOR PROTECTION OF CHILD RIGHTS

    Question(
      questionText: "When did the Commission for Protection of Child Rights Act, 2005, come into force?",
      options: ["11 December 1992", "20 November 1989", "5th February 2007", "11 December 2023"],
      correctAnswerIndex: 2,
      explanation: "The Commission for Protection of Child Rights Act, 2005, came into force on 5th February 2007.",
    ),

    Question(
      questionText: "How many members make up the National Commission for Protection of Child Rights?",
      options: ["Five", "Six", "Seven", "Eight"],
      correctAnswerIndex: 1,
      explanation: "The National Commission for Protection of Child Rights is a multi-member body consisting of a Chairperson and six members.",
    ),

    Question(
      questionText: "What is the term of office for the Chairperson and members of the Commission?",
      options: ["Two years", "Three years", "Four years", "Five years"],
      correctAnswerIndex: 1,
      explanation: "The Chairperson and members hold office for a term of three years and are not eligible for appointment for more than two terms.",
    ),

    Question(
      questionText: "Under what circumstances can the Central Government remove the Chairperson or a member from office?",
      options: ["Adjudged as insolvent", "Convicted and sentenced to imprisonment", "Refuses to act or becomes incapable of acting", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The Central Government can remove the Chairperson or a member under various circumstances, including refusal to act, conviction, or incapacity.",
    ),

    Question(
      questionText: "Who appoints the Chairperson of the Commission, and how is it done?",
      options: ["Appointed by the President", "Appointed by the Prime Minister", "Appointed by the Chief Justice", "Appointed by the Central Government based on a selection committee recommendation"],
      correctAnswerIndex: 3,
      explanation: "The Chairperson is appointed by the Central Government based on the recommendation of a three-member selection committee constituted by the Central Government.",
    ),

    Question(
      questionText: "What is one of the functions of the National Commission for Protection of Child Rights?",
      options: [
        "Regulating child labor laws",
        "Inspecting and promoting awareness in juvenile custodial homes",
        "Enforcing traffic rules for children",
        "Managing domestic violence cases"
      ],
      correctAnswerIndex: 1,
      explanation: "One of the functions of the Commission is to inspect juvenile custodial homes and promote awareness of safeguards for children.",
    ),

    Question(
      questionText: "What powers does the Commission have while inquiring into any matter?",
      options: [
        "Enforcing traffic regulations",
        "Summoning and examining persons on oath",
        "Issuing parking tickets",
        "Conducting criminal investigations"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission, while inquiring into any matter, has powers like summoning and examining persons on oath, among other legal powers.",
    ),

    Question(
      questionText: "What is the Commission prohibited from inquiring into?",
      options: [
        "Matters related to child labor",
        "Cases pending before a State Commission for Protection of Child Rights",
        "International treaties on child rights",
        "Juvenile justice matters"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission is prohibited from inquiring into matters pending before a State Commission for Protection of Child Rights or any other Statutory Commission.",
    ),

    Question(
      questionText: "What is one of the specific matters the Commission is empowered to inquire into?",
      options: [
        "Land disputes",
        "Child rights violations in cases of terrorism",
        "Tax evasion",
        "Corporate mergers"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission is empowered to inquire into violations of child rights, including cases related to terrorism, among other factors inhibiting children's rights.",
    ),

    Question(
      questionText: "What is one of the powers of the Commission in respect of summoning witnesses or documents?",
      options: [
        "Issuing arrest warrants",
        "Summoning and enforcing attendance of persons",
        "Overturning legal decisions",
        "Imposing fines"
      ],
      correctAnswerIndex: 1,
      explanation: "One of the powers of the Commission is summoning and enforcing the attendance of persons during the inquiry process.",
    ),

    Question(
      questionText: "What steps can the Commission take upon the completion of an inquiry?",
      options: [
        "Approach the Supreme Court for direct orders",
        "Recommend proceedings for prosecution",
        "Enforce interim relief to the victim",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Upon the completion of an inquiry, the Commission can recommend proceedings for prosecution, approach the courts for orders, or recommend interim relief to the victim.",
    ),

    Question(
      questionText: "Where does the Commission submit its annual or special reports?",
      options: [
        "To the State Government only",
        "To the Central Government and the State Government concerned",
        "To the Supreme Court",
        "To the Prime Minister"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission submits its annual or special reports to both the Central Government and the State Government concerned, which are then laid before the respective legislatures.",
    ),

    Question(
      questionText: "What additional functions does the Commission have under the Right of Children to Free and Compulsory Education (RTE) Act, 2009?",
      options: [
        "Monitoring implementation of the Protection of Children from Sexual Offences (POCSO) Act",
        "Ensuring child safety in schools",
        "Examining and reviewing safeguards under the RTE Act",
        "Managing child labor issues"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the RTE Act, the Commission's additional functions include examining and reviewing safeguards for rights and inquiring into complaints related to a child's right to free and compulsory education.",
    ),

    Question(
      questionText: "What powers does the Commission have while inquiring into any matter under the POCSO Act, 2012?",
      options: [
        "Enforcing traffic rules",
        "Issuing arrest warrants",
        "Same powers as under the Commissions for the Protection of Child Rights Act, 2005",
        "Conducting criminal investigations"
      ],
      correctAnswerIndex: 2,
      explanation: "While inquiring into any matter under the POCSO Act, the Commission has the same powers as assigned to it under the Commissions for the Protection of Child Rights Act, 2005.",
    ),

    Question(
      questionText: "What does the Commission monitor under the Juvenile Justice (Care and Protection) Act, 2015?",
      options: [
        "Implementation of traffic regulations",
        "Implementation of the POCSO Act",
        "Implementation of the Juvenile Justice Act",
        "Enforcement of child labor laws"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the Juvenile Justice Act, the Commission monitors the implementation of its provisions in such a manner as may be prescribed.",
    ),

    Question(
      questionText: "How many members make up the State Commission for Protection of Child Rights?",
      options: ["Four", "Five", "Six", "Seven"],
      correctAnswerIndex: 2,
      explanation: "The State Commission for Protection of Child Rights is a multi-member body consisting of a chairperson and six members.",
    ),

    Question(
      questionText: "What is the minimum number of women members required in the State Commission for Protection of Child Rights?",
      options: ["One", "Two", "Three", "Four"],
      correctAnswerIndex: 1,
      explanation: "Out of the six members of the State Commission for Protection of Child Rights, at least two should be women.",
    ),

    Question(
      questionText: "How long is the term of office for the chairperson and members of the State Commission for Protection of Child Rights?",
      options: ["Two years", "Three years", "Four years", "Five years"],
      correctAnswerIndex: 1,
      explanation: "The chairperson and members of the State Commission for Protection of Child Rights hold office for a term of three years.",
    ),

    Question(
      questionText: "Under what circumstances can the state government remove the chairperson or any member from their office?",
      options: [
        "If they engage in any paid employment outside the duties of their office.",
        "If they are adjudged an insolvent.",
        "If they refuse to act or become incapable of acting.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The state government can remove the chairperson or any member from their office under various circumstances, including engaging in paid employment, being adjudged an insolvent, refusing to act, etc.",
    ),
    Question(
      questionText: "What are the functions of the State Commission for Protection of Child Rights?",
      options: [
        "To examine and review safeguards for child rights, present annual reports to the state government, and inquire into child rights violations.",
        "To spread child rights literacy, promote awareness, and inspect juvenile custodial homes.",
        "To study international instruments on child rights, undertake research, and take suo-motu notice of matters related to child rights violations.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The State Commission for Protection of Child Rights has various functions, including examining safeguards, presenting reports, inquiring into violations, spreading literacy, promoting awareness, studying international instruments, and more.",
    ),

    Question(
      questionText: "What powers does the State Commission have while inquiring into a matter?",
      options: [
        "Issuing summons for the examination of witnesses or documents.",
        "Summoning and enforcing the attendance of any person and examining them on oath.",
        "Receiving evidence on affidavits and requiring the discovery and production of any document.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The State Commission, while inquiring into a matter, has various powers, including summoning individuals, examining them on oath, receiving evidence, and requiring the production of documents.",
    ),

    Question(
      questionText: "What steps can the State Commission take upon the completion of an inquiry?",
      options: [
        "Recommend initiation of proceedings for prosecution or other suitable action.",
        "Approach the Supreme Court or State High Court for necessary directions, orders, or writs.",
        "Recommend interim relief to the victim.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "Upon completing an inquiry, the State Commission can recommend prosecution, approach higher courts for directions, and recommend interim relief to the victim.",
    ),

    Question(
      questionText: "What is the purpose of Children's Courts as mentioned in the Commissions for Protection of Child Rights Act (2005)?",
      options: [
        "To establish courts for the protection of child rights.",
        "For the speedy trial of offences against children or violation of child rights.",
        "To appoint public prosecutors for all legal cases involving children.",
        "All of the above."
      ],
      correctAnswerIndex: 1,
      explanation: "Children's Courts, as per the Act, are established for the speedy trial of offences against children or violations of child rights.",
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
    home: ncpchildren(),
  ));
}

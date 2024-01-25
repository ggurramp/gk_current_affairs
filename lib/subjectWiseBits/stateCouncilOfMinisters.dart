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

class stateCouncilOfMinisters extends StatefulWidget {
  final String? userIdentifier;

  stateCouncilOfMinisters({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<stateCouncilOfMinisters> createState() => _stateCouncilOfMinistersState();
}

class _stateCouncilOfMinistersState extends State<stateCouncilOfMinisters> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//32.STATE COUNCIL OF MINISTERS

    Question(
      questionText: "What is the role of the cabinet in the politico-administrative system of a state?",
      options: [
        "Advisory body to the governor",
        "Highest decision-making authority",
        "Supreme legislative authority",
        "Chief coordinator of the state bureaucracy"
      ],
      correctAnswerIndex: 1,
      explanation: "The cabinet is the highest decision-making authority in the politico-administrative system of a state.",
    ),

    Question(
      questionText: "What function does the cabinet perform in the state government?",
      options: [
        "Enforces laws",
        "Chief crisis manager",
        "Advises the President",
        "Conducts elections"
      ],
      correctAnswerIndex: 2,
      explanation: "The cabinet is the chief policy-formulating body and supreme executive authority of the state government.",
    ),

    Question(
      questionText: "What is the role of the cabinet during emergency situations?",
      options: [
        "Delegates crisis management to the governor",
        "Acts as the chief coordinator of the state administration",
        "Seeks assistance from the military",
        "Serves as an advisory body to the opposition"
      ],
      correctAnswerIndex: 1,
      explanation: "The cabinet acts as the chief crisis manager and deals with all emergency situations.",
    ),

    Question(
      questionText: "How does the cabinet exercise control over higher appointments?",
      options: [
        "By directly appointing officials",
        "Through constitutional amendments",
        "By advising the governor",
        "By conducting public elections"
      ],
      correctAnswerIndex: 2,
      explanation: "The cabinet exercises control over higher appointments, including constitutional authorities, by advising the governor.",
    ),

    Question(
      questionText: "What are cabinet committees, and how are they categorized?",
      options: [
        "Permanent bodies reviewing legislative matters",
        "Temporary bodies handling financial matters",
        "Advisory committees appointed by the President",
        "Committees dealing with emergency situations"
      ],
      correctAnswerIndex: 3,
      explanation: "Cabinet committees are categorized into standing (permanent) and ad hoc (temporary) committees, dealing with various issues and situations.",
    ),

    Question(
      questionText: "Who sets up cabinet committees, and how is their composition determined?",
      options: [
        "President, with fixed composition",
        "Chief Minister, with changing composition",
        "Governor, with fixed composition",
        "Prime Minister, with changing composition"
      ],
      correctAnswerIndex: 1,
      explanation: "Cabinet committees are set up by the Chief Minister according to the exigencies of the time, and their composition varies based on the situation.",
    ),
    Question(
      questionText: "What principle underlies the working of the parliamentary system of government concerning the responsibility of ministers?",
      options: [
        "Principle of individual responsibility",
        "Principle of legal responsibility",
        "Principle of collective responsibility",
        "Principle of executive responsibility"
      ],
      correctAnswerIndex: 2,
      explanation: "The fundamental principle underlying the working of the parliamentary system of government is the principle of collective responsibility.",
    ),

    Question(
      questionText: "What does Article 163 of the Constitution emphasize regarding the advice tendered by ministers to the governor?",
      options: [
        "Ministers are accountable to the courts for their advice.",
        "The nature of advice is subject to court inquiry.",
        "Intimate and confidential relationship between the governor and ministers.",
        "The governor has discretion in following ministerial advice."
      ],
      correctAnswerIndex: 2,
      explanation: "Article 163 emphasizes the intimate and confidential relationship between the governor and ministers, and the nature of advice cannot be inquired by any court.",
    ),

    Question(
      questionText: "In the context of ministerial appointments, who can the governor appoint as ministers?",
      options: [
        "Any eligible citizen of the state",
        "Anyone with a recommendation from the opposition party",
        "Persons recommended by the Chief Minister",
        "Members of the legislative council only"
      ],
      correctAnswerIndex: 2,
      explanation: "The governor can appoint only those persons as ministers who are recommended by the Chief Minister.",
    ),

    Question(
      questionText: "What does the principle of collective responsibility mean in the context of the council of ministers?",
      options: [
        "Ministers are individually responsible for their actions.",
        "Cabinet decisions are not binding on all ministers.",
        "Cabinet decisions do not require support outside the legislature.",
        "All ministers jointly own responsibility for their acts to the legislative assembly."
      ],
      correctAnswerIndex: 3,
      explanation: "The principle of collective responsibility means that all ministers jointly own responsibility to the legislative assembly for their acts of omission and commission.",
    ),

    Question(
      questionText: "What is the role of deputy ministers in the council of ministers?",
      options: [
        "Head important departments and attend cabinet meetings.",
        "Assist cabinet ministers but do not attend cabinet meetings.",
        "Are members of the cabinet and make policy decisions.",
        "Have independent charge of departments."
      ],
      correctAnswerIndex: 1,
      explanation: "Deputy ministers are attached to cabinet ministers, assist them in their duties, but do not attend cabinet meetings unless specially invited when related to their departments.",
    ),
    Question(
      questionText: "What is the final authority in determining matters falling within the governor's discretion, according to Article 163?",
      options: [
        "Council of Ministers",
        "Chief Minister",
        "Governor",
        "Supreme Court"
      ],
      correctAnswerIndex: 2,
      explanation: "According to Article 163, the decision of the governor is final in determining matters falling within the governor's discretion.",
    ),

    Question(
      questionText: "What does Article 164 state regarding the appointment of ministers?",
      options: [
        "Governor appoints ministers independently.",
        "Ministers are elected by the legislative assembly.",
        "Chief Minister recommends ministers, and the Governor appoints based on that.",
        "Ministers are appointed by the President."
      ],
      correctAnswerIndex: 2,
      explanation: "Article 164 states that the other ministers are appointed by the governor on the advice of the chief minister, meaning the governor can appoint only those recommended by the chief minister.",
    ),

    Question(
      questionText: "Which states were initially obligated to have a tribal welfare minister, and how did the 94th Amendment Act of 2006 impact this obligation?",
      options: [
        "Bihar, Madhya Pradesh, and Odisha; It extended the obligation to other states.",
        "Chhattisgarh, Jharkhand, Madhya Pradesh, and Odisha; It freed Bihar from the obligation and extended it to Chhattisgarh and Jharkhand.",
        "Chhattisgarh, Jharkhand, and Odisha; It freed Bihar from the obligation.",
        "Chhattisgarh, Madhya Pradesh, and Jharkhand; It extended the obligation to other states."
      ],
      correctAnswerIndex: 1,
      explanation: "Initially, Bihar, Madhya Pradesh, and Odisha were obligated. The 94th Amendment Act of 2006 freed Bihar and extended the obligation to Chhattisgarh and Jharkhand.",
    ),

    Question(
      questionText: "What does the oath of office for ministers involve, as per the text?",
      options: [
        "Allegiance to the Governor",
        "Swearing to carry out personal decisions",
        "Allegiance to the Constitution, upholding sovereignty, faithfully discharging duties, and doing right by the Constitution and law.",
        "Swearing to follow party decisions"
      ],
      correctAnswerIndex: 2,
      explanation: "The oath of office involves allegiance to the Constitution, upholding sovereignty, faithfully discharging duties, and doing right by the Constitution and law.",
    ),

    Question(
      questionText: "According to Article 164, under what circumstances can a minister be removed?",
      options: [
        "Whenever the Governor desires.",
        "Only when the Governor has personal dissatisfaction.",
        "On the advice of the Chief Minister.",
        "By a majority vote in the legislative assembly."
      ],
      correctAnswerIndex: 2,
      explanation: "Article 164 states that ministers hold office during the pleasure of the governor and can be removed only on the advice of the chief minister.",
    ),
    Question(
      questionText: "Under the parliamentary system of government in states, who is the real executive authority?",
      options: [
        "Governor",
        "Chief Minister",
        "Council of Ministers",
        "Legislative Assembly"
      ],
      correctAnswerIndex: 2,
      explanation: "In the parliamentary system, the council of ministers headed by the chief minister is the real executive authority in states.",
    ),

    Question(
      questionText: "Which articles in the Constitution deal with the principles of the parliamentary system of government in states?",
      options: [
        "Articles 160 and 161",
        "Articles 162 and 163",
        "Articles 163 and 164",
        "Articles 165 and 166"
      ],
      correctAnswerIndex: 2,
      explanation: "Articles 163 and 164 deal with the principles of the parliamentary system of government in states.",
    ),

    Question(
      questionText: "What does Article 164(1) specify about the appointment of the Chief Minister?",
      options: [
        "Appointed by the President",
        "Appointed by the Legislative Assembly",
        "Appointed by the Governor on the advice of the Chief Minister",
        "Elected by the Council of Ministers"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 164(1) specifies that the Chief Minister shall be appointed by the Governor on the advice of the Chief Minister.",
    ),

    Question(
      questionText: "What percentage of the total strength of the legislative assembly does Article 164(2) specify as the maximum number of ministers in a state?",
      options: [
        "10%",
        "12%",
        "15%",
        "20%"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 164(2) specifies that the total number of ministers, including the chief minister, shall not exceed 15% of the total strength of the legislative assembly, but not less than 12%.",
    ),

    Question(
      questionText: "What is the tenure of ministers according to Article 164(4)?",
      options: [
        "Lifetime",
        "5 years",
        "During the pleasure of the Governor",
        "10 years"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 164(4) states that ministers shall hold office during the pleasure of the Governor.",
    ),

    Question(
      questionText: "What is the duty of the Chief Minister as per Article 167?",
      options: [
        "To administer oaths to ministers",
        "To communicate decisions of the council of ministers and proposals for legislation to the Governor",
        "To dissolve the legislative assembly",
        "To appoint ministers"
      ],
      correctAnswerIndex: 1,
      explanation: "According to Article 167, the duty of the Chief Minister includes communicating decisions of the council of ministers and proposals for legislation to the Governor.",
    ),

    Question(
      questionText: "What rights do ministers have with respect to the legislative assembly, as mentioned in Article 177?",
      options: [
        "Right to vote only",
        "Right to speak and take part in proceedings",
        "Right to dissolve the assembly",
        "Right to appoint committees"
      ],
      correctAnswerIndex: 1,
      explanation: "Article 177 states that every minister has the right to speak and take part in the proceedings of the assembly (and also the council where it exists) and any committee of the State Legislature of which he/she may be named a member.",
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
    home: stateCouncilOfMinisters(),
  ));
}

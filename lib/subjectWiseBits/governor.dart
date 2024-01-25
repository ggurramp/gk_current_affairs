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

class governor extends StatefulWidget {
  final String? userIdentifier;

  governor({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<governor> createState() => _governorState();
}

class _governorState extends State<governor> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//30.GOVERNOR

    Question(
      questionText: "According to the Sarkaria Commission, what issue arises in the selection and appointment of a Chief Minister when no single party or group commands an absolute majority?",
      options: [
        "The issue of legislative assembly dissolution",
        "The issue of unfairness or partisanship by the Governor",
        "The issue of physical verification by counting heads",
        "The issue of dismissing the Chief Minister"
      ],
      correctAnswerIndex: 1,
      explanation: "In the selection and appointment of a Chief Minister when no single party or group commands absolute majority, the issue of unfairness or partisanship by the Governor may arise.",
    ),

    Question(
      questionText: "What has been criticized in situations of political instability where Governors recommended President's rule under Article 356?",
      options: [
        "Accepting the Chief Minister's advice",
        "Dissolving the Legislative Assembly",
        "Behaving in a partisan manner",
        "Not giving a fair chance to contending parties"
      ],
      correctAnswerIndex: 3,
      explanation: "In situations of political instability, Governors recommending President's rule have been criticized for not giving a fair chance to contending parties and behaving in a partisan manner.",
    ),

    Question(
      questionText: "What controversy has arisen regarding the Governors' reservation of Bills for the consideration of the President?",
      options: [
        "The physical verification by counting heads",
        "The dismissal of Chief Ministers",
        "The nomination of members to Legislative Council",
        "The exercise of discretion in university matters"
      ],
      correctAnswerIndex: 6,
      explanation: "Controversy has arisen regarding the Governors' reservation of Bills for the consideration of the President.",
    ),

    Question(
      questionText: "What has been criticized regarding the Governors' use of discretion in nominating members to the Legislative Council?",
      options: [
        "Refusing to dissolve the Legislative Assembly",
        "The physical verification by counting heads",
        "Accepting the Chief Minister's advice",
        "Exercising discretion when they have none"
      ],
      correctAnswerIndex: 7,
      explanation: "The use of discretion by Governors in nominating members to the Legislative Council has been criticized.",
    ),

    Question(
      questionText: "In what capacity have Governors exercised discretion in nominating members of a University Council or University functionary?",
      options: [
        "As a representative of the ruling party",
        "As a representative of the opposition",
        "As Chancellor of the University",
        "As Chief Minister of the State"
      ],
      correctAnswerIndex: 8,
      explanation: "Governors have exercised discretion in nominating members of a University Council or University functionary in their capacity as Chancellor of the University.",
    ),
    Question(
      questionText: "What is the constitutional position of the governor in the parliamentary form of government?",
      options: [
        "The governor is the real executive of the state.",
        "The governor exercises executive power independently of the council of ministers.",
        "The governor is a nominal executive, and the real executive is the council of ministers.",
        "The governor has veto power over the decisions of the council of ministers."
      ],
      correctAnswerIndex: 2,
      explanation: "In the parliamentary form of government, the governor is a nominal executive, and the real executive is the council of ministers.",
    ),

    Question(
      questionText: "What distinguishes the constitutional position of the governor from that of the President?",
      options: [
        "The governor acts independently of ministerial advice.",
        "The President may act in his discretion, but the governor may not.",
        "The governor's discretion is binding, while the President must follow ministerial advice.",
        "The President may act in his discretion, but the governor may not."
      ],
      correctAnswerIndex: 1,
      explanation: "While the Constitution envisages the possibility of the governor acting at times in his discretion, no such possibility has been envisaged for the President.",
    ),

    Question(
      questionText: "In what matters does the governor have constitutional discretion?",
      options: [
        "Appointment of Chief Minister and dismissal of the council of ministers.",
        "Dissolution of the state legislative assembly and appointment of Chief Minister.",
        "Reservation of a bill for the consideration of the President and recommending President's Rule.",
        "Appointment of Chief Minister and dissolution of the state legislative assembly."
      ],
      correctAnswerIndex: 2,
      explanation: "The governor has constitutional discretion in matters like reservation of a bill for the consideration of the President and recommending President's Rule.",
    ),

    Question(
      questionText: "What is an example of the governor's situational discretion?",
      options: [
        "Appointment of Chief Minister when a party has a clear majority.",
        "Dissolution of the state legislative assembly when the council of ministers has majority support.",
        "Dismissal of the council of ministers when it cannot prove the confidence of the state legislative assembly.",
        "Establishment of separate development boards in certain states."
      ],
      correctAnswerIndex: 3,
      explanation: "An example of the governor's situational discretion is the dismissal of the council of ministers when it cannot prove the confidence of the state legislative assembly.",
    ),

    Question(
      questionText: "What special responsibilities does the governor have according to directions issued by the President?",
      options: [
        "Establishment of separate development boards in certain states.",
        "Administration of tribal areas in Assam.",
        "Ensuring social and economic advancement in Sikkim.",
        "Appointment of Chief Minister in Maharashtra."
      ],
      correctAnswerIndex: 1,
      explanation: "The governor has special responsibilities according to directions issued by the President, such as the administration of tribal areas in Assam.",
    ),
    Question(
      questionText: "What are the two alternatives available to the President when a money bill is presented for his/her assent?",
      options: [
        "Return the bill for reconsideration or withhold assent.",
        "Withhold assent or send the bill to the Prime Minister for approval.",
        "Return the bill for reconsideration or give assent.",
        "Withhold assent or request amendments to the bill."
      ],
      correctAnswerIndex: 0,
      explanation: "The President cannot return a money bill for reconsideration; the alternatives are giving assent or withholding assent.",
    ),

    Question(
      questionText: "What is the President's role when a money bill is reserved by the Governor for consideration?",
      options: [
        "The President can return the bill for reconsideration by the Parliament.",
        "The President can request amendments to the bill.",
        "The President can only give assent or withhold assent.",
        "The President has the power to amend the bill before giving assent."
      ],
      correctAnswerIndex: 2,
      explanation: "The President can only give assent or withhold assent when a money bill is reserved by the Governor.",
    ),

    Question(
      questionText: "How many alternatives does the Governor have when a money bill is presented to him/her?",
      options: [
        "Two",
        "Three",
        "Four",
        "One"
      ],
      correctAnswerIndex: 1,
      explanation: "The Governor has three alternatives when a money bill is presented: assent, withhold assent, or reserve for President's consideration.",
    ),

    Question(
      questionText: "In the ordinance-making powers, what is a similarity between the President and the Governor?",
      options: [
        "They can both issue ordinances without any restrictions.",
        "They can only issue ordinances when the legislature is not in session.",
        "They can issue ordinances on any subject.",
        "They can issue ordinances at any time without the need for immediate action."
      ],
      correctAnswerIndex: 1,
      explanation: "Both the President and the Governor can issue ordinances when the legislature is not in session.",
    ),

    Question(
      questionText: "How does the duration of an ordinance issued by the Governor compare to that issued by the President?",
      options: [
        "Both cease to operate after six weeks from reassembly.",
        "The Governor's ordinance can last longer than six weeks.",
        "The President's ordinance may continue even after six weeks.",
        "Both can be extended beyond six weeks without any limitations."
      ],
      correctAnswerIndex: 0,
      explanation: "Both the President's and Governor's ordinances cease to operate after six weeks from reassembly, with certain conditions.",
    ),
    Question(
      questionText: "What is one of the financial powers of the governor?",
      options: [
        "Appointing judges to the state high court.",
        "Making appointments, postings, and promotions of district judges.",
        "Laying the Annual Financial Statement (state budget) before the state legislature.",
        "Consulting with the President while appointing the judges of the state high court."
      ],
      correctAnswerIndex: 2,
      explanation: "One of the financial powers of the governor is laying the Annual Financial Statement (state budget) before the state legislature.",
    ),

    Question(
      questionText: "Which power allows the governor to grant pardons, reprieves, and remissions of punishment?",
      options: [
        "Financial Power",
        "Ordinance-making Power",
        "Judicial Power",
        "Veto Power"
      ],
      correctAnswerIndex: 2,
      explanation: "The governor's judicial power allows him/her to grant pardons, reprieves, and remissions of punishment.",
    ),

    Question(
      questionText: "What alternative does the President have when a state bill is returned for reconsideration by the governor?",
      options: [
        "Give assent to the bill.",
        "Withhold assent to the bill.",
        "Return the bill for reconsideration again.",
        "Directly enact the bill without reconsideration."
      ],
      correctAnswerIndex: 2,
      explanation: "When a state bill is returned for reconsideration, the President can either give assent, withhold assent, or return the bill for reconsideration again.",
    ),

    Question(
      questionText: "What role does the governor play when a bill is returned for reconsideration by the President?",
      options: [
        "The governor must reconsider the bill within six months.",
        "The governor has no further role in the enactment of the bill.",
        "The governor can veto the bill directly.",
        "The governor becomes the final authority for the bill."
      ],
      correctAnswerIndex: 1,
      explanation: "When a bill is returned for reconsideration by the President, the governor has no further role in the enactment of the bill.",
    ),

    Question(
      questionText: "What does the governor do every five years in relation to the financial position of panchayats and municipalities?",
      options: [
        "Appoint a Finance Minister.",
        "Conduct a financial audit.",
        "Constitute a Finance Commission.",
        "Prepare a state budget."
      ],
      correctAnswerIndex: 2,
      explanation: "Every five years, the governor constitutes a Finance Commission to review the financial position of panchayats and municipalities.",
    ),
    Question(
      questionText: "What is the governor's role in the dissolution of the state legislative assembly?",
      options: [
        "He/she can summon or prorogue the state legislature.",
        "He/she can appoint a member to preside over the assembly proceedings.",
        "He/she can dissolve the state legislative assembly.",
        "He/she can address the state legislature at the commencement of each year."
      ],
      correctAnswerIndex: 2,
      explanation: "The governor has the power to dissolve the state legislative assembly.",
    ),

    Question(
      questionText: "Who can the governor appoint to preside over the proceedings when both the Speaker and Deputy Speaker positions are vacant?",
      options: [
        "Any member of the State legislative council.",
        "Any member of the state legislative assembly.",
        "Any member of the state executive council.",
        "Any member from the Anglo-Indian community."
      ],
      correctAnswerIndex: 1,
      explanation: "The governor can appoint any member of the State legislative assembly to preside when both the Speaker and Deputy Speaker positions are vacant.",
    ),

    Question(
      questionText: "What legislative power does the governor have regarding bills passed by the state legislature?",
      options: [
        "Can only give assent to the bill.",
        "Can withhold assent to the bill.",
        "Can return the bill for reconsideration.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The governor can give assent, withhold assent, or return the bill for reconsideration. If passed again, the governor must give assent, or in certain cases, reserve it for the President's consideration.",
    ),

    Question(
      questionText: "Under what circumstances can the governor reserve a bill for the consideration of the President?",
      options: [
        "If the bill is ultra-vires.",
        "If the bill is opposed to the Directive Principles of State Policy.",
        "If the bill is against the larger interest of the country.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The governor can reserve a bill for the President if it falls under various circumstances, including being ultra-vires, opposed to Directive Principles, against national interest, or dealing with compulsory acquisition of property.",
    ),

    Question(
      questionText: "What is the significance of the governor's power to promulgate ordinances?",
      options: [
        "It allows the governor to appoint members of the state legislative council.",
        "It enables the governor to dissolve the state legislative assembly.",
        "It gives the governor authority to make laws when the legislature is not in session.",
        "It allows the governor to nominate members with special knowledge or experience."
      ],
      correctAnswerIndex: 2,
      explanation: "The governor can make laws through ordinances when the state legislature is not in session, but these ordinances must be approved by the legislature within six weeks.",
    ),
    Question(
      questionText: "What powers does the governor possess, which are analogous to the President of India?",
      options: [
        "Diplomatic powers.",
        "Military powers.",
        "Emergency powers.",
        "Executive, legislative, financial, and judicial powers."
      ],
      correctAnswerIndex: 3,
      explanation: "The governor possesses executive, legislative, financial, and judicial powers analogous to the President of India but lacks diplomatic, military, or emergency powers.",
    ),

    Question(
      questionText: "What is the governor's role in the appointment of the Chief Minister and other ministers?",
      options: [
        "He/she recommends candidates for the positions.",
        "He/she appoints them during his/her pleasure.",
        "He/she only approves appointments made by the President.",
        "He/she has no role in the appointment process."
      ],
      correctAnswerIndex: 1,
      explanation: "The governor appoints the Chief Minister and other ministers, and they hold office during his/her pleasure.",
    ),

    Question(
      questionText: "What powers does the governor have in relation to the Advocate General of a state?",
      options: [
        "He/she determines the remuneration of the Advocate General.",
        "He/she appoints the Advocate General.",
        "The Advocate General holds office during the pleasure of the governor.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The governor appoints the Advocate General, determines their remuneration, and the Advocate General holds office during the pleasure of the governor.",
    ),

    Question(
      questionText: "Who has the authority to remove the chairman and members of the state public service commission?",
      options: [
        "The governor.",
        "The President.",
        "The Chief Minister.",
        "The state legislature."
      ],
      correctAnswerIndex: 1,
      explanation: "The Chairman and members of the state public service commission can only be removed by the President, not by the governor.",
    ),

    Question(
      questionText: "In what capacity does the governor act during the period of President's rule in a state?",
      options: [
        "As the chief executive officer of the state.",
        "As the representative of the President.",
        "As the head of the state legislature.",
        "As the chancellor of universities."
      ],
      correctAnswerIndex: 1,
      explanation: "During the period of President's rule in a state, the governor acts as an agent of the President, enjoying extensive executive powers.",
    ),
    Question(
      questionText: "What is the constitutional role of the governor in the state executive?",
      options: [
        "To act as the head of the government.",
        "To exercise diplomatic powers.",
        "To hold emergency powers like the President.",
        "To appoint the Chief Minister and Advocate General."
      ],
      correctAnswerIndex: 3,
      explanation: "The governor plays a constitutional role in the state executive, including appointing the Chief Minister and Advocate General, but lacks diplomatic and emergency powers like the President.",
    ),

    Question(
      questionText: "How is the governor appointed, and who appoints them?",
      options: [
        "Directly elected by the people.",
        "Indirectly elected by a specially constituted electoral college.",
        "Appointed by the Prime Minister.",
        "Appointed by the President by warrant under his/her hand and seal."
      ],
      correctAnswerIndex: 3,
      explanation: "The governor is appointed by the President by warrant under his/her hand and seal.",
    ),

    Question(
      questionText: "Why did the Constituent Assembly opt for the appointment of the governor by the President instead of direct election?",
      options: [
        "Direct election is compatible with the parliamentary system.",
        "Direct election is likely to create conflicts between the governor and the chief minister.",
        "Direct election is cost-effective.",
        "Direct election promotes national unity."
      ],
      correctAnswerIndex: 2,
      explanation: "The Constituent Assembly opted for the appointment by the President over direct election, considering the cost-effectiveness and avoiding conflicts between the governor and the chief minister.",
    ),

    Question(
      questionText: "What are the qualifications for the appointment of a person as governor?",
      options: [
        "Citizen of India and completed the age of 40 years.",
        "Citizen of India and completed the age of 30 years.",
        "Citizen of India and completed the age of 35 years.",
        "Citizen of any country and completed the age of 35 years."
      ],
      correctAnswerIndex: 2,
      explanation: "To be appointed as governor, a person must be a citizen of India and have completed the age of 35 years.",
    ),

    Question(
      questionText: "How long does a governor hold office, and can they be removed?",
      options: [
        "A term of 5 years, and they can only be removed by impeachment.",
        "A term of 7 years, and they can be removed by the President.",
        "A term of 5 years, and they can be removed by the President at any time.",
        "A term of 4 years, and they can only be removed by the state legislature."
      ],
      correctAnswerIndex: 2,
      explanation: "A governor holds office for a term of 5 years, subject to the pleasure of the President, who can remove them at any time.",
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
    home: governor(),
  ));
}

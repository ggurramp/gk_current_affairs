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

class parlimentary_committie extends StatefulWidget {
  final String? userIdentifier;

  parlimentary_committie({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parlimentary_committie> createState() => _parlimentary_committieState();
}

class _parlimentary_committieState extends State<parlimentary_committie> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//24.Parlimentary Committee

    Question(
      questionText: "What are the two broad categories of parliamentary committees mentioned in the text?",
      options: ["Financial Committees and Advisory Committees", "Standing Committees and Ad Hoc Committees", "Inquiry Committees and Business Advisory Committees", "Department-Related Standing Committees and House-Keeping Committees"],
      correctAnswerIndex: 1,
      explanation: "The text mentions two broad categories of parliamentary committees: Standing Committees and Ad Hoc Committees.",
    ),

    Question(
      questionText: "Which committee is not considered a parliamentary committee based on the mentioned conditions?",
      options: ["Public Accounts Committee", "Estimates Committee", "Committee on Petitions", "Business Advisory Committee"],
      correctAnswerIndex: 2,
      explanation: "Consultative committees, including the Committee on Petitions, are not considered parliamentary committees as they do not fulfill the specified conditions.",
    ),

    Question(
      questionText: "What is the distinguishing feature between Standing Committees and Ad Hoc Committees?",
      options: ["Standing Committees are permanent, while Ad Hoc Committees are temporary.", "Standing Committees deal with financial matters, while Ad Hoc Committees focus on day-to-day business.", "Ad Hoc Committees work under the Speaker/Chairman, while Standing Committees present reports to the House.", "Ad Hoc Committees are appointed by the President, while Standing Committees are elected by members."],
      correctAnswerIndex: 0,
      explanation: "Standing Committees are permanent, constituted regularly, and work continuously, whereas Ad Hoc Committees are temporary and cease to exist upon completing their assigned tasks.",
    ),

    Question(
      questionText: "Which committee is concerned with the provision of facilities and services to members of Parliament?",
      options: ["Committee on Subordinate Legislation", "Committee on Public Undertakings", "House Committee", "Committee on Welfare of SCs and STh"],
      correctAnswerIndex: 2,
      explanation: "The House Committee is a House-Keeping Committee concerned with the provision of facilities and services to members of Parliament.",
    ),

    Question(
      questionText: "What is the purpose of Inquiry Committees mentioned in the text?",
      options: ["To consider and report on particular bills", "To inquire into and report on specific subjects", "To review the functioning of the Parliament", "To investigate the conduct of government officers"],
      correctAnswerIndex: 1,
      explanation: "Inquiry Committees are constituted to inquire into and report on specific subjects, as mentioned in the text.",
    ),

    Question(
      questionText: "When can a Bill be referred to a Select Committee of the House or a Joint Committee of the two Houses?",
      options: ["During general discussion on the Bill", "After the Bill has been passed by both Houses", "If the President recommends it", "Only if the Prime Minister proposes it"],
      correctAnswerIndex: 0,
      explanation: "A Bill can be referred to a Select Committee of the House or a Joint Committee of the two Houses during the general discussion on the Bill.",
    ),
    Question(
      questionText: "What is the role of the Business Advisory Committee in the Parliament?",
      options: [
        "It classifies bills and allocates time for their discussion.",
        "It regulates the program and timetable of the House.",
        "It considers matters of procedure and conduct of business.",
        "It deals with residential accommodation and amenities for members."
      ],
      correctAnswerIndex: 1,
      explanation: "The Business Advisory Committee regulates the program and timetable of the House, allocating time for legislative and other business brought before the House by the government.",
    ),

    Question(
      questionText: "How does the Committee on Private Members' Bills and Resolutions function differently in the Lok Sabha and the Rajya Sabha?",
      options: [
        "It consists of 15 members in both Houses.",
        "It classifies bills in the Lok Sabha but not in the Rajya Sabha.",
        "It is a special committee in the Lok Sabha but not in the Rajya Sabha.",
        "It includes the Deputy Speaker as its chairman in both Houses."
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Private Members' Bills and Resolutions is a special committee in the Lok Sabha and consists of 15 members, including the Deputy Speaker as its chairman. The Rajya Sabha handles similar functions through its Business Advisory Committee.",
    ),

    Question(
      questionText: "What is the responsibility of the Rules Committee in Parliament?",
      options: [
        "It allocates time for legislative business.",
        "It deals with members' absence from sittings.",
        "It considers matters of procedure and business conduct.",
        "It advises on matters concerning the House's affairs."
      ],
      correctAnswerIndex: 2,
      explanation: "The Rules Committee considers matters of procedure and conduct of business in the House, recommending necessary amendments or additions to the rules of the House.",
    ),

    Question(
      questionText: "How is the Committee on Absence of Members from the Sittings of the House structured in the Lok Sabha and the Rajya Sabha?",
      options: [
        "It consists of 15 members in both Houses.",
        "It deals with applications for leave in both Houses.",
        "It is a special committee in the Lok Sabha but not in the Rajya Sabha.",
        "It examines cases of absence in both Houses."
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Absence of Members from the Sittings of the House is a special committee in the Lok Sabha and consists of 15 members. There is no such committee in the Rajya Sabha, and all such matters are dealt with by the House itself.",
    ),

    Question(
      questionText: "What is the role of the General Purposes Committee in Parliament?",
      options: [
        "It considers matters of procedure and conduct.",
        "It regulates the program and timetable of the House.",
        "It advises on matters concerning the House's affairs.",
        "It classifies bills and allocates time for their discussion."
      ],
      correctAnswerIndex: 2,
      explanation: "The General Purposes Committee considers and advises on matters concerning the affairs of the House that do not fall within the jurisdiction of any other parliamentary committee.",
    ),

    Question(
      questionText: "What is the primary responsibility of the House Committee in Parliament?",
      options: [
        "It allocates time for legislative business.",
        "It deals with members' absence from sittings.",
        "It considers matters of procedure and business conduct.",
        "It handles residential accommodation and amenities for members."
      ],
      correctAnswerIndex: 3,
      explanation: "The House Committee in Parliament deals with residential accommodation of members and other amenities like food, medical aid, etc., accorded to them in their houses and hostels in Delhi.",
    ),

    Question(
      questionText: "How is the Library Committee structured, and what matters does it consider?",
      options: [
        "It consists of 6 members from the Lok Sabha and 3 from the Rajya Sabha, considering matters related to the library.",
        "It consists of 15 members in both Houses, dealing with residential accommodation.",
        "It is a special committee in the Lok Sabha, considering matters related to the library.",
        "It is an advisory committee for members on policies and programs of the government."
      ],
      correctAnswerIndex: 0,
      explanation: "The Library Committee consists of 9 members (6 from Lok Sabha and 3 from Rajya Sabha) and considers all matters relating to the library of the Parliament, assisting members in utilizing the library's services.",
    ),

    Question(
      questionText: "Under what act was the Joint Committee on Salaries and Allowances of Members of Parliament constituted?",
      options: [
        "Parliamentary Affairs Act, 1962",
        "Members' Salaries and Allowances Act, 1978",
        "Salary, Allowances and Pension of Members of Parliament Act, 1954",
        "Committees on Members' Benefits Act, 1985"
      ],
      correctAnswerIndex: 2,
      explanation: "The Joint Committee on Salaries and Allowances of Members of Parliament was constituted under the Salary, Allowances and Pension of Members of Parliament Act, 1954.",
    ),

    Question(
      questionText: "What is the role of Consultative Committees in Parliament?",
      options: [
        "They allocate time for legislative business.",
        "They regulate the program and timetable of the House.",
        "They provide a forum for informal discussions between ministers and members on government policies.",
        "They consider matters of procedure and conduct of business."
      ],
      correctAnswerIndex: 2,
      explanation: "Consultative committees attached to various ministries/departments provide a forum for informal discussions between ministers and members of Parliament on policies and programs of the government and their implementation.",
    ),

    Question(
        questionText: "How is the membership of Consultative Committees determined?",
        options: [
          "It is appointed by the President.",
          "It is nominated by the Prime Minister.",
          "It is voluntary and left to the choice of members and party leaders.",
          "It is elected by the members of the Lok Sabha."
        ],
        correctAnswerIndex: 2,
        explanation: "The membership of Consultative Committees is voluntary and left to the choice of the members and the leaders of their parties."
    ),
    Question(
      questionText: "What is the primary role of the Committee on Petitions in Parliament?",
      options: [
        "To examine assurances given by ministers",
        "To scrutinize and control government assurances",
        "To examine petitions on bills and matters of general public importance",
        "To enforce the code of conduct of members of Parliament"
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Petitions examines petitions on bills and matters of general public importance, as well as entertains representations from individuals and associations on matters pertaining to Union subjects.",
    ),

    Question(
      questionText: "What is the semi-judicial nature of the functions performed by the Committee of Privileges?",
      options: [
        "Enforcing the code of conduct of members",
        "Examining cases of breach of privileges and recommending appropriate action",
        "Examining assurances and reporting on their implementation",
        "Considering matters of welfare of SCs and STs"
      ],
      correctAnswerIndex: 1,
      explanation: "The Committee of Privileges performs semi-judicial functions by examining cases of breach of privileges of the House and its members, recommending appropriate action.",
    ),

    Question(
      questionText: "What is the purpose of the Ethics Committee in Parliament?",
      options: [
        "Enforcing the code of conduct of members",
        "Examining cases of breach of privileges",
        "Examining government assurances",
        "Reviewing the functioning of parliamentary committees"
      ],
      correctAnswerIndex: 0,
      explanation: "The Ethics Committee enforces the code of conduct of members of Parliament, examining cases of misconduct and recommending appropriate action to maintain discipline and decorum in Parliament.",
    ),

    Question(
      questionText: "What does the Committee on Government Assurances primarily focus on?",
      options: [
        "Reviewing the functioning of parliamentary committees",
        "Examining cases of breach of privileges",
        "Examining government assurances and reporting on their implementation",
        "Considering matters of welfare of SCs and STs"
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Government Assurances primarily focuses on examining the assurances, promises, and undertakings given by ministers and reporting on the extent to which they have been carried through.",
    ),

    Question(
      questionText: "What is the responsibility of the Committee on Subordinate Legislation?",
      options: [
        "Reviewing the functioning of parliamentary committees",
        "Examining government assurances and reporting on their implementation",
        "Examining and reporting on the proper exercise of powers to make regulations, rules, etc.",
        "Considering matters of welfare of SCs and STs"
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Subordinate Legislation examines and reports to the House on whether the powers to make regulations, rules, etc., are being properly exercised by the Executive.",
    ),

    Question(
      questionText: "What does the Committee on Papers Laid on the Table primarily examine?",
      options: [
        "Statutory notifications and orders",
        "Papers laid on the table of the House",
        "Reports of National Commission for SCs and STs",
        "Measures taken by the Union Government for women empowerment"
      ],
      correctAnswerIndex: 1,
      explanation: "The Committee on Papers Laid on the Table primarily examines all papers laid on the table of the House by ministers to ensure compliance with provisions of the Constitution, related Act, or Rule.",
    ),

    Question(
      questionText: "What functions does the Committee on Welfare of SCs and STs perform?",
      options: [
        "Reviewing the functioning of parliamentary committees",
        "Examining government assurances and reporting on their implementation",
        "Considering reports of National Commission for SCs and STs, and examining matters related to their welfare",
        "Examining cases of breach of privileges"
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Welfare of SCs and STs considers reports of the National Commission for SCs and STs, examining all matters related to their welfare, including the implementation of constitutional and statutory safeguards.",
    ),

    Question(
      questionText: "What is the focus of the Committee on Empowerment of Women?",
      options: [
        "Reviewing the functioning of parliamentary committees",
        "Examining government assurances and reporting on their implementation",
        "Considering reports of National Commission for Women and examining measures for women empowerment",
        "Examining cases of breach of privileges"
      ],
      correctAnswerIndex: 2,
      explanation: "The Committee on Empowerment of Women considers reports of the National Commission for Women and examines the measures taken by the Union Government to secure status, dignity, and equality for women in all fields.",
    ),

    Question(
      questionText: "What is the role of the Joint Committee on Offices of Profit?",
      options: [
        "Reviewing the functioning of parliamentary committees",
        "Examining government assurances and reporting on their implementation",
        "Examining cases of breach of privileges",
        "Examining the composition and character of committees and bodies for possible disqualification of members"
      ],
      correctAnswerIndex: 3,
      explanation: "The Joint Committee on Offices of Profit examines the composition and character of committees and bodies appointed by the Central, state, and union territory governments, recommending whether persons holding these offices should be disqualified from being elected as members of Parliament.",
    ),
    Question(
      questionText: "What is the main objective of the Department-Related Standing Committees (DRSCs) in Parliament?",
      options: [
        "To conduct investigations into parliamentary affairs",
        "To assist the Parliament in debating the budget effectively",
        "To manage day-to-day administration of ministries/departments",
        "To make binding recommendations on parliamentary matters"
      ],
      correctAnswerIndex: 1,
      explanation: "The main objective of the DRSCs is to assist the Parliament in debating the budget more effectively and to secure more accountability of the Executive (Council of Ministers) to the Parliament, particularly financial accountability.",
    ),

    Question(
      questionText: "How many members does each Department-Related Standing Committee (DRSC) consist of?",
      options: [
        "15 members",
        "21 members",
        "24 members",
        "31 members"
      ],
      correctAnswerIndex: 3,
      explanation: "Each DRSC consists of 31 members, with 21 members from Lok Sabha and 10 from Rajya Sabha.",
    ),

    Question(
      questionText: "What is the term of office for each Department-Related Standing Committee (DRSC)?",
      options: [
        "Two years",
        "Three years",
        "One year",
        "Four years"
      ],
      correctAnswerIndex: 2,
      explanation: "The term of office for each DRSC is one year from the date of its constitution.",
    ),

    Question(
      questionText: "What is the primary limitation imposed on the functioning of Department-Related Standing Committees (DRSCs)?",
      options: [
        "They cannot consider any parliamentary matters",
        "They should not consider matters of day-to-day administration",
        "They can only consider matters related to budgetary allocation",
        "They are restricted from examining financial accountability"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary limitation on the functioning of DRSCs is that they should not consider matters of day-to-day administration of the concerned ministries/departments.",
    ),

    Question(
      questionText: "What is the nature of the recommendations made by the Department-Related Standing Committees (DRSCs)?",
      options: [
        "Legally binding on the Parliament",
        "Advisory in nature and not binding on the Parliament",
        "Subject to approval by the Executive",
        "Mandatory for the ministries/departments"
      ],
      correctAnswerIndex: 1,
      explanation: "The recommendations of the DRSCs are advisory in nature and are not binding on the Parliament.",
    ),

    Question(
      questionText: "What criteria are used to judge the effectiveness of the Department-Related Standing Committees (DRSCs)?",
      options: [
        "Success in party bias",
        "Number of bills examined",
        "Influence on government's decisions, among others",
        "Day-to-day administration effectiveness"
      ],
      correctAnswerIndex: 2,
      explanation: "The effectiveness of DRSCs is judged based on criteria such as their success in holding officials to account, publication of information, their effect on the House and the wider public, and their influence on government's decisions.",
    ),
    Question(
      questionText: "When was the first Estimates Committee in the post-independence era constituted?",
      options: ["1921", "1950", "1956", "1964"],
      correctAnswerIndex: 1,
      explanation: "The first Estimates Committee in the post-independence era was constituted in 1950 on the recommendation of John Mathai, the then finance minister.",
    ),

    Question(
      questionText: "How many members are there in the Estimates Committee, and from which house are they selected?",
      options: ["25 members from Lok Sabha", "30 members from Lok Sabha", "30 members from Rajya Sabha", "25 members from Rajya Sabha"],
      correctAnswerIndex: 1,
      explanation: "The Estimates Committee originally had 25 members from Lok Sabha. In 1956, its membership was raised to 30, and all members are from Lok Sabha.",
    ),

    Question(
      questionText: "What is the main function of the Estimates Committee?",
      options: [
        "To question parliamentary policies",
        "To examine public undertakings",
        "To suggest alternative policies",
        "To examine budget estimates and suggest economies"
      ],
      correctAnswerIndex: 3,
      explanation: "The main function of the Estimates Committee is to examine the estimates included in the budget and suggest 'economies' in public expenditure.",
    ),

    Question(
      questionText: "What is the limitation on the Estimates Committee's effectiveness?",
      options: [
        "It examines budget estimates before they are voted by Parliament",
        "It cannot question parliamentary policy",
        "Its recommendations are binding on ministries",
        "It examines all ministries every year"
      ],
      correctAnswerIndex: 1,
      explanation: "One limitation is that the Estimates Committee examines budget estimates only after they have been voted by Parliament.",
    ),

    Question(
      questionText: "When was the Committee on Public Undertakings created?",
      options: ["1921", "1950", "1964", "1974"],
      correctAnswerIndex: 2,
      explanation: "The Committee on Public Undertakings was created in 1964 on the recommendation of the Krishna Menon Committee.",
    ),

    Question(
      questionText: "How many members are there in the Committee on Public Undertakings, and from which house are they selected?",
      options: ["15 members from Lok Sabha", "22 members from Lok Sabha", "15 members from Rajya Sabha", "22 members from Rajya Sabha"],
      correctAnswerIndex: 1,
      explanation: "The Committee on Public Undertakings originally had 15 members (10 from Lok Sabha and 5 from Rajya Sabha). In 1974, its membership was raised to 22 (15 from Lok Sabha and 7 from Rajya Sabha).",
    ),

    Question(
      questionText: "What is the main function of the Committee on Public Undertakings?",
      options: [
        "To examine reports of the Comptroller and Auditor General",
        "To question major government policies",
        "To look into technical matters",
        "To examine budget estimates and suggest economies"
      ],
      correctAnswerIndex: 0,
      explanation: "The main functions of the Committee on Public Undertakings include examining reports and accounts of public undertakings and reports of the Comptroller and Auditor General on public undertakings.",
    ),

    Question(
      questionText: "What limitation affects the Committee on Public Undertakings' effectiveness?",
      options: [
        "It examines more than ten public undertakings in a year",
        "Its work is not in the nature of a post-mortem",
        "It can question major government policies",
        "Its recommendations are advisory and not binding"
      ],
      correctAnswerIndex: 3,
      explanation: "The Committee on Public Undertakings' recommendations are advisory and not binding on the ministries.",
    ),
    Question(
      questionText: "When was the Public Accounts Committee first set up?",
      options: ["1919", "1921", "1950", "1964"],
      correctAnswerIndex: 1,
      explanation: "The Public Accounts Committee was set up first in 1921 under the provisions of the Government of India Act of 1919 and has been in existence since.",
    ),

    Question(
      questionText: "How many members are there in the Public Accounts Committee, and from which house are they selected?",
      options: ["15 members from Lok Sabha", "22 members from Lok Sabha", "7 members from Rajya Sabha", "30 members from Rajya Sabha"],
      correctAnswerIndex: 1,
      explanation: "The Public Accounts Committee consists of 22 members (15 from Lok Sabha and 7 from Rajya Sabha). Members are elected by Parliament every year, and all parties get due representation in it.",
    ),

    Question(
      questionText: "What is the function of the Public Accounts Committee?",
      options: [
        "To formulate government policy",
        "To examine annual audit reports of the Comptroller and Auditor General",
        "To implement public undertakings",
        "To conduct day-to-day administration"
      ],
      correctAnswerIndex: 1,
      explanation: "The function of the Public Accounts Committee is to examine the annual audit reports of the Comptroller and Auditor General of India (CAG).",
    ),

    Question(
      questionText: "Who appoints the Chairman of the Public Accounts Committee, and what convention has developed regarding this appointment?",
      options: [
        "The Prime Minister, and the Chairman always belongs to the ruling party",
        "The Speaker, and the Chairman always belongs to the ruling party",
        "The President, and the Chairman always belongs to the ruling party",
        "The Speaker, and the Chairman is selected from the Opposition since 1967"
      ],
      correctAnswerIndex: 3,
      explanation: "The Chairman of the Public Accounts Committee is appointed by the Speaker. Since 1967, a convention has developed whereby the Chairman is selected from the Opposition.",
    ),

    Question(
      questionText: "What is the role of the Comptroller and Auditor General (CAG) in assisting the Public Accounts Committee?",
      options: [
        "Act as an executive body",
        "Act as a guide, friend, and philosopher",
        "Issue orders to ministries",
        "Make final decisions on committee findings"
      ],
      correctAnswerIndex: 1,
      explanation: "In the fulfillment of its functions, the Public Accounts Committee is assisted by the Comptroller and Auditor General (CAG), who acts as a guide, friend, and philosopher of the committee.",
    ),

    Question(
      questionText: "What limitation affects the effectiveness of the Public Accounts Committee?",
      options: [
        "It can intervene in day-to-day administration",
        "Its recommendations are binding on ministries",
        "It issues orders to departments",
        "It conducts a post-mortem examination of accounts"
      ],
      correctAnswerIndex: 3,
      explanation: "The effectiveness of the Public Accounts Committee is limited by conducting a post-mortem examination of accounts, not intervening in day-to-day administration, and having advisory, non-binding recommendations.",
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
    home: parlimentary_committie(),
  ));
}

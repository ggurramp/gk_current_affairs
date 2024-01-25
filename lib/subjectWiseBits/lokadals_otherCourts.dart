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

class lokadals_otherCourts extends StatefulWidget {
  final String? userIdentifier;

  lokadals_otherCourts({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<lokadals_otherCourts> createState() => _lokadals_otherCourtsState();
}

class _lokadals_otherCourtsState extends State<lokadals_otherCourts> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//38.LOK ADALATS AND OTHER COURTS

    Question(
      questionText: "When did the Legal Services Authorities Act come into force?",
      options: ["1980", "1987", "1995", "2000"],
      correctAnswerIndex: 2,
      explanation: "The Legal Services Authorities Act, 1987, came into force on 9th November 1995.",
    ),

    Question(
      questionText: "What is the purpose of the National Legal Services Authority (NALSA)?",
      options: [
        "To administer Lok Adalats",
        "To provide legal services in the Supreme Court",
        "To monitor and evaluate the implementation of legal aid programs",
        "To establish district legal services authorities"
      ],
      correctAnswerIndex: 2,
      explanation: "NALSA is constituted to monitor and evaluate the implementation of legal aid programs and to lay down policies and principles for making legal services available.",
    ),

    Question(
      questionText: "What is one of the main functions of the District Legal Services Authorities?",
      options: [
        "To administer the Supreme Court Legal Services Committee",
        "To lay down policies for legal services",
        "To provide free and competent legal services",
        "To implement economical schemes"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the main functions of District Legal Services Authorities is to provide free and competent legal services to eligible persons.",
    ),

    Question(
      questionText: "Who are eligible for getting free legal services?",
      options: ["Only women and children", "Only members of SC/ST", "Only industrial workmen", "Women, children, and members of SC/ST"],
      correctAnswerIndex: 3,
      explanation: "Persons eligible for getting free legal services include women, children, and members of SC/ST.",
    ),

    Question(
      questionText: "What does 'Lok Adalat' mean?",
      options: ["Legal Tribunal", "People's Court", "Alternative Court", "Judicial Forum"],
      correctAnswerIndex: 1,
      explanation: "'Lok Adalat' means 'People's Court.' It is based on Gandhian principles and is part of the Alternative Dispute Resolution (ADR) system.",
    ),

    Question(
      questionText: "Why was the Lok Adalat introduced as an alternative mode of dispute settlement?",
      options: [
        "To replace the regular court system",
        "To expedite and provide inexpensive justice",
        "To increase the number of judicial officers",
        "To handle only non-compoundable offenses"
      ],
      correctAnswerIndex: 1,
      explanation: "Lok Adalat provides an alternative resolution for expeditious and inexpensive justice, especially for cases burdening the regular court system.",
    ),

    Question(
      questionText: "What is the jurisdiction of a Lok Adalat?",
      options: [
        "Exclusively for cases pending before a court",
        "Exclusively for pre-litigation disputes",
        "Both cases pending before a court and pre-litigation disputes",
        "Only for compoundable offenses"
      ],
      correctAnswerIndex: 2,
      explanation: "A Lok Adalat has jurisdiction to determine and arrive at a compromise or settlement for both cases pending before a court and pre-litigation disputes.",
    ),

    Question(
      questionText: "What powers does a Lok Adalat have during its proceedings?",
      options: [
        "Summoning and enforcing the attendance of any witness",
        "Discovery and production of any document",
        "Requisitioning of any public record or document",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "A Lok Adalat has powers similar to a Civil Court, including summoning witnesses, discovery of documents, and requisitioning records. It can specify its own procedure for dispute resolution.",
    ),

    Question(
      questionText: "What is the legal status of an award made by a Lok Adalat?",
      options: [
        "It can be appealed in a higher court",
        "It is deemed to be a decree of a Civil Court or an order of any other court",
        "It is not binding on the parties",
        "It has limited enforceability"
      ],
      correctAnswerIndex: 1,
      explanation: "An award of a Lok Adalat is deemed to be a decree of a Civil Court or an order of any other court and is final and binding on all parties. There is no appeal against it.",
    ),
    Question(
      questionText: "What are the three types of Lok Adalats?",
      options: ["Central Lok Adalats, State Lok Adalats, District Lok Adalats", "National Lok Adalats, State Lok Adalats, Permanent Lok Adalats", "Supreme Lok Adalats, High Court Lok Adalats, District Lok Adalats", "Primary Lok Adalats, Regular Lok Adalats, Mobile Lok Adalats"],
      correctAnswerIndex: 1,
      explanation: "The three types of Lok Adalats are National Lok Adalats, State Lok Adalats, and Permanent Lok Adalats.",
    ),

    Question(
      questionText: "What is the primary focus of National Lok Adalats?",
      options: [
        "Handling cases at the Supreme Court level",
        "Resolving disputes related to specific subjects every month",
        "Organizing Mega Lok Adalats across all states",
        "Dealing with continuous Lok Adalats"
      ],
      correctAnswerIndex: 1,
      explanation: "National Lok Adalats focus on handling cases on a specific subject matter every month, resolving disputes nationwide.",
    ),

    Question(
      questionText: "What are the different types of State Lok Adalats?",
      options: [
        "Continuous Lok Adalat, Daily Lok Adalat, Yearly Lok Adalat",
        "Permanent Lok Adalat, Mobile Lok Adalat, Mega Lok Adalat",
        "Regular Lok Adalat, Weekly Lok Adalat, Annual Lok Adalat",
        "Special Lok Adalat, Quarterly Lok Adalat, Monthly Lok Adalat"
      ],
      correctAnswerIndex: 2,
      explanation: "The different types of State Lok Adalats include Continuous Lok Adalat, Daily Lok Adalat, Mobile Lok Adalat, and Mega Lok Adalat.",
    ),

    Question(
      questionText: "What benefits are mentioned by the Supreme Court under Lok Adalat?",
      options: [
        "Strict application of procedural laws",
        "Non-refundable court fees",
        "Binding awards, non-appealable status",
        "Strict adherence to the Civil Procedure Code"
      ],
      correctAnswerIndex: 2,
      explanation: "The benefits under Lok Adalat, according to the Supreme Court, include no court fees or refund if paid, procedural flexibility, speedy trial, and binding, non-appealable awards.",
    ),

    Question(
      questionText: "According to the Law Commission of India, what is an advantage of ADR (Alternative Dispute Resolution)?",
      options: [
        "It is time-consuming",
        "It is expensive",
        "It is free from technicalities",
        "Parties have a winning or losing side"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the Law Commission of India, an advantage of ADR is that it is free from technicalities in comparison to conducting cases in law courts.",
    ),
    Question(
      questionText: "What was the Legal Services Authorities Act, 1987, amended to include in 2002?",
      options: [
        "Establishment of Permanent Lok Adalats for public utility services",
        "Introduction of State Lok Adalats",
        "Creation of Central Lok Adalats",
        "Expansion of National Lok Adalats"
      ],
      correctAnswerIndex: 0,
      explanation: "The Legal Services Authorities Act, 1987, was amended in 2002 to provide for the establishment of Permanent Lok Adalats to deal with cases pertaining to public utility services.",
    ),

    Question(
      questionText: "What are the qualifications of the Chairman of the Permanent Lok Adalat?",
      options: [
        "Must be a current district judge",
        "Can be any judicial officer",
        "Has held judicial office higher than the district judge",
        "Must be a practicing lawyer"
      ],
      correctAnswerIndex: 2,
      explanation: "The Chairman of the Permanent Lok Adalat must be or has been a district judge, additional district judge, or has held a judicial office higher in rank than that of the district judge.",
    ),

    Question(
      questionText: "In which areas does the Permanent Lok Adalat exercise jurisdiction?",
      options: [
        "All criminal matters",
        "Disputes related to public utility services",
        "Family law disputes",
        "Contractual disputes"
      ],
      correctAnswerIndex: 1,
      explanation: "The Permanent Lok Adalat exercises jurisdiction in respect of one or more public utility services such as transport, postal, telegraph, telephone, power supply, healthcare services, and insurance services.",
    ),

    Question(
      questionText: "What is the pecuniary jurisdiction of the Permanent Lok Adalat, as per the Legal Services Authorities Act?",
      options: [
        "Up to Rs. One Crore",
        "Up to Rs. Ten Lakhs",
        "Up to Rs. Five Crore",
        "No pecuniary jurisdiction specified"
      ],
      correctAnswerIndex: 0,
      explanation: "The pecuniary jurisdiction of the Permanent Lok Adalat shall be up to Rs. Ten Lakhs, but the Central Government may increase it, and in 2015, it was increased to Rs. One Crore.",
    ),

    Question(
      questionText: "Once an application is made to the Permanent Lok Adalat, what is the restriction on invoking court jurisdiction?",
      options: [
        "No restriction",
        "The party can invoke jurisdiction in any court",
        "Both parties must agree to invoke court jurisdiction",
        "No party to the application can invoke jurisdiction in any court in the same dispute"
      ],
      correctAnswerIndex: 3,
      explanation: "After an application is made to the Permanent Lok Adalat, no party to that application shall invoke jurisdiction of any court in the same dispute.",
    ),

    Question(
      questionText: "What happens if parties to a dispute fail to reach an agreement in the Permanent Lok Adalat?",
      options: [
        "The dispute is dismissed",
        "Parties are referred to a regular court",
        "Permanent Lok Adalat formulates the terms of a possible settlement",
        "Permanent Lok Adalat loses jurisdiction"
      ],
      correctAnswerIndex: 6,
      explanation: "If parties to the dispute fail to reach an agreement, the Permanent Lok Adalat shall decide the dispute on merits.",
    ),

    Question(
      questionText: "What is the finality and binding status of every award made by the Permanent Lok Adalat?",
      options: [
        "It can be appealed in higher courts",
        "Binding only if both parties agree",
        "Final and binding on all parties, non-appealable",
        "Subject to review by regular courts"
      ],
      correctAnswerIndex: 2,
      explanation: "Every award made by the Permanent Lok Adalat shall be final and binding on all the parties thereto and shall be by a majority of the persons constituting the Permanent Lok Adalat.",
    ),
    Question(
      questionText: "What is the main objective of the Family Courts Act, 1984?",
      options: [
        "To establish separate Family Courts for criminal matters",
        "To eliminate conciliation in family disputes",
        "To secure speedy settlement of disputes relating to marriage and family affairs",
        "To impose rigid rules of procedure and evidence"
      ],
      correctAnswerIndex: 2,
      explanation: "The main objective of the Family Courts Act, 1984, is to provide for the establishment of Family Courts with a view to promote conciliation and secure speedy settlement of disputes relating to marriage and family affairs.",
    ),

    Question(
      questionText: "Why did the Government of India introduce the Family Courts Bill?",
      options: [
        "To emphasize strict adherence to procedural laws",
        "To establish courts for ordinary civil matters",
        "To promote conciliation and achieve socially desirable results in family disputes",
        "To eliminate the need for special procedures in family matters"
      ],
      correctAnswerIndex: 3,
      explanation: "The Government of India introduced the Family Courts Bill to set up Family Courts for the settlement of family disputes, emphasizing conciliation and achieving socially desirable results, while eliminating rigid rules of procedure and evidence.",
    ),

    Question(
      questionText: "What are the main objectives and reasons for setting up Family Courts?",
      options: [
        "To create a bureaucratic system",
        "To eliminate conciliation efforts",
        "To provide an inexpensive remedy",
        "To establish an adversarial atmosphere"
      ],
      correctAnswerIndex: 3,
      explanation: "The main objectives for setting up Family Courts include creating a specialized court with expertise, instituting a mechanism for conciliation, providing an inexpensive remedy, and fostering flexibility and an informal atmosphere in the conduct of proceedings.",
    ),

    Question(
      questionText: "Under the Family Courts Act, what matters fall within the exclusive jurisdiction of Family Courts?",
      options: [
        "Criminal matters",
        "Property disputes",
        "Civil matters unrelated to family affairs",
        "Matrimonial relief, property of spouses, declaration of legitimacy, guardianship, and maintenance"
      ],
      correctAnswerIndex: 4,
      explanation: "Under the Family Courts Act, matters exclusively falling within the jurisdiction of Family Courts include matrimonial relief, property of spouses, declaration of legitimacy, guardianship, and maintenance.",
    ),

    Question(
      questionText: "During the conciliation stage, what is the nature of proceedings before a Family Court?",
      options: [
        "Formal with strict adherence to procedural rules",
        "Informal with the application of rigid rules of procedure",
        "Formal with no flexibility",
        "Informal with no application of rigid rules of procedure"
      ],
      correctAnswerIndex: 2,
      explanation: "During the conciliation stage, the proceedings before a Family Court are informal, and rigid rules of procedure shall not apply.",
    ),

    Question(
      questionText: "What does the Family Courts Act say about the representation of parties by legal practitioners?",
      options: [
        "Parties are entitled to legal representation as of right",
        "Parties are not entitled to legal representation as of right",
        "Legal representation is mandatory",
        "Legal representation is optional"
      ],
      correctAnswerIndex: 1,
      explanation: "The Family Courts Act provides that parties to a dispute before a Family Court shall not be entitled, as of right, to be represented by a legal practitioner.",
    ),

    Question(
      questionText: "How many rights of appeal does the Family Courts Act provide for?",
      options: [
        "No right of appeal",
        "One right of appeal to the Supreme Court",
        "Two rights of appeal",
        "One right of appeal to the High Court"
      ],
      correctAnswerIndex: 4,
      explanation: "The Family Courts Act provides for only one right of appeal, which shall lie to the High Court.",
    ),
    Question(
      questionText: "What is the main objective of the Gram Nyayalayas Act, 2008?",
      options: [
        "To create regular courts at Thluka level",
        "To provide access to justice to citizens at their doorsteps",
        "To establish an adversarial system of justice",
        "To enforce rigid rules of evidence in legal proceedings"
      ],
      correctAnswerIndex: 2,
      explanation: "The main objective of the Gram Nyayalayas Act, 2008, is to provide access to justice to citizens at their doorsteps and ensure that opportunities for securing justice are not denied due to social, economic, or other disabilities.",
    ),

    Question(
      questionText: "What reasons were given by the Government of India for the establishment of Gram Nyayalayas?",
      options: [
        "To maintain an adversarial system in the legal process",
        "To create a bureaucratic system",
        "To strengthen the judicial system by simplifying procedural laws",
        "To promote justice on the basis of equal opportunity and provide free legal aid"
      ],
      correctAnswerIndex: 3,
      explanation: "The Government of India established Gram Nyayalayas to promote justice on the basis of equal opportunity, provide free legal aid, and strengthen the judicial system by simplifying procedural laws.",
    ),

    Question(
      questionText: "What recommendations of the Law Commission does the Gram Nyayalayas Act, 2008, broadly incorporate?",
      options: [
        "Establishment of regular courts at Taluk level",
        "Introduction of adversarial procedures",
        "Strengthening of alternative dispute resolution mechanisms",
        "Establishment of Gram Nyayalayas for speedy, inexpensive, and substantial justice"
      ],
      correctAnswerIndex: 4,
      explanation: "The Gram Nyayalayas Act, 2008, is broadly based on the recommendations of the Law Commission, suggesting the establishment of Gram Nyayalayas for speedy, inexpensive, and substantial justice to the common man.",
    ),

    Question(
      questionText: "What is the nature of proceedings before a Gram Nyayalaya during the conciliation stage?",
      options: [
        "Formal proceedings with strict adherence to procedural rules",
        "Informal proceedings with no flexibility",
        "Formal proceedings with no application of rigid rules of procedure",
        "Informal proceedings with no application of rigid rules of procedure"
      ],
      correctAnswerIndex: 4,
      explanation: "During the conciliation stage, the proceedings before a Gram Nyayalaya are informal, with no application of rigid rules of procedure.",
    ),

    Question(
      questionText: "What powers does a Gram Nyayalaya exercise in both criminal and civil matters?",
      options: [
        "Only civil powers",
        "Only criminal powers",
        "Powers of a Civil Court and a Criminal Court",
        "No powers in criminal matters"
      ],
      correctAnswerIndex: 3,
      explanation: "A Gram Nyayalaya exercises the powers of both a Civil Court and a Criminal Court.",
    ),

    Question(
      questionText: "What is the nature of the Gram Nyayalaya's exercise of powers in civil cases?",
      options: [
        "Adversarial procedure",
        "Summary procedure with modifications",
        "Formal procedure with no flexibility",
        "No powers in civil cases"
      ],
      correctAnswerIndex: 2,
      explanation: "The Gram Nyayalaya exercises the powers of a Civil Court with modifications and follows a special procedure, including a summary procedure in civil cases.",
    ),

    Question(
      questionText: "What is the status of judgments and orders passed by the Gram Nyayalaya?",
      options: [
        "Not considered as a decree",
        "Considered as a decree with no enforcement procedure",
        "Deemed to be a decree",
        "Considered as a temporary order"
      ],
      correctAnswerIndex: 3,
      explanation: "Judgments and orders passed by the Gram Nyayalaya are deemed to be a decree.",
    ),
    Question(
      questionText: "What is the main objective of the Commercial Courts Act, 2015?",
      options: [
        "To establish courts for criminal disputes",
        "To resolve family disputes",
        "To adjudicate commercial disputes of specified value",
        "To address disputes related to labor and employment"
      ],
      correctAnswerIndex: 3,
      explanation: "The main objective of the Commercial Courts Act, 2015, is to adjudicate commercial disputes of specified value, providing an independent mechanism for their early resolution.",
    ),

    Question(
      questionText: "How is 'commercial dispute' broadly defined under the Commercial Courts Act, 2015?",
      options: [
        "Disputes arising out of personal relationships",
        "Disputes related to criminal activities",
        "Disputes arising from ordinary transactions of merchants, bankers, financiers, and traders",
        "Disputes related to family matters"
      ],
      correctAnswerIndex: 3,
      explanation: "Under the Commercial Courts Act, 2015, a 'commercial dispute' is broadly defined as disputes arising out of ordinary transactions of merchants, bankers, financiers, and traders, including those related to mercantile documents, joint ventures, partnership agreements, intellectual property rights, insurance, and other areas.",
    ),

    Question(
      questionText: "What reasons were given by the Central Government for establishing Commercial Courts?",
      options: [
        "To create a negative image of the Indian legal system",
        "To address low-value disputes",
        "To provide an independent mechanism for the early resolution of high-value commercial disputes",
        "To discourage international investment"
      ],
      correctAnswerIndex: 3,
      explanation: "The Central Government established Commercial Courts to provide an independent mechanism for the early resolution of high-value commercial disputes, aiming to create a positive image of the Indian legal system and boost investor confidence.",
    ),

    Question(
      questionText: "What is the jurisdiction of the State Government in constituting Commercial Courts?",
      options: [
        "Constitute Commercial Courts at the Supreme Court level",
        "Constitute Commercial Courts at the District level",
        "Constitute Commercial Courts at the High Court level",
        "Constitute Commercial Courts only for criminal disputes"
      ],
      correctAnswerIndex: 2,
      explanation: "The State Government may constitute Commercial Courts at the District level for the purpose of exercising jurisdiction over commercial disputes of a specified value.",
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
    home: lokadals_otherCourts(),
  ));
}

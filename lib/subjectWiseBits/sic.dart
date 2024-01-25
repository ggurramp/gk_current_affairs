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

class sic extends StatefulWidget {
  final String? userIdentifier;

  sic({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<sic> createState() => _sicState();
}

class _sicState extends State<sic> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//63.STATE INFORMATION COMMISSION

    Question(
      questionText: "What does the Right to Information Act of 2005 provide for regarding information commissions?",
      options: [
        "Creation of only the Central Information Commission",
        "Creation of only State Information Commissions",
        "Creation of both Central and State Information Commissions",
        "No provision for information commissions"
      ],
      correctAnswerIndex: 2,
      explanation: "The Right to Information Act of 2005 provides for the creation of both the Central Information Commission and State Information Commissions at the state level.",
    ),

    Question(
      questionText: "Who appoints the members of the State Information Commission, and what is the recommended committee's composition?",
      options: [
        "Appointed by the President; committee includes the Prime Minister",
        "Appointed by the Chief Minister; committee includes the Leader of Opposition and a State Cabinet Minister",
        "Appointed by the Governor; committee includes the Chief Minister, the Chief Justice, and the Speaker",
        "Appointed by the State Legislature; committee includes the Speaker and the Chief Secretary"
      ],
      correctAnswerIndex: 1,
      explanation: "The members of the State Information Commission are appointed by the Governor on the recommendation of a committee consisting of the Chief Minister as Chairperson, the Leader of Opposition in the Legislative Assembly, and a State Cabinet Minister nominated by the Chief Minister.",
    ),

    Question(
      questionText: "What qualifications should individuals possess to be appointed as State Chief Information Commissioner or State Information Commissioner?",
      options: [
        "Must be a Member of Parliament or Member of the Legislature",
        "Must have a background in politics and hold an office of profit",
        "Persons of eminence in public life with wide knowledge and experience in various fields",
        "Must be associated with a political party"
      ],
      correctAnswerIndex: 2,
      explanation: "Individuals appointed as State Chief Information Commissioner or State Information Commissioner should be persons of eminence in public life with wide knowledge and experience in law, science and technology, social service, management, journalism, mass media, or administration and governance.",
    ),

    Question(
      questionText: "What are the grounds for the removal of the State Chief Information Commissioner or any State Information Commissioner?",
      options: [
        "Declining public popularity",
        "Inability to meet performance targets",
        "Proved misbehaviour or incapacity",
        "Personal disagreements with the Governor"
      ],
      correctAnswerIndex: 2,
      explanation: "The grounds for the removal of the State Chief Information Commissioner or any State Information Commissioner include proved misbehaviour or incapacity. The Governor can also remove them under specific circumstances such as insolvency, criminal conviction, engaging in paid employment outside office duties, unfit due to infirmity, or acquiring interests prejudicial to official functions.",
    ),

    Question(
      questionText: "Under what circumstances can the Governor remove the State Chief Information Commissioner or any State Information Commissioner without referring to the Supreme Court?",
      options: [
        "Financial irregularities",
        "Administrative errors",
        "Misjudgment of public sentiment",
        "Engaging in political activities"
      ],
      correctAnswerIndex: 0,
      explanation: "The Governor can remove the State Chief Information Commissioner or any State Information Commissioner without referring to the Supreme Court under circumstances such as financial irregularities, administrative errors, or engaging in political activities.",
    ),

    Question(
      questionText: "What is the maximum age for holding office as the State Chief Information Commissioner or a State Information Commissioner?",
      options: [
        "60 years",
        "65 years",
        "70 years",
        "No age limit"
      ],
      correctAnswerIndex: 1,
      explanation: "The State Chief Information Commissioner and a State Information Commissioner shall hold office for such term as prescribed by the Central Government or until they attain the age of 65 years, whichever is earlier.",
    ),

    Question(
      questionText: "Who decides the salary, allowances, and other service conditions of the State Chief Information Commissioner and a State Information Commissioner?",
      options: [
        "State Legislature",
        "Central Government",
        "Supreme Court",
        "Governor's Office"
      ],
      correctAnswerIndex: 1,
      explanation: "The salary, allowances, and other service conditions of the State Chief Information Commissioner and a State Information Commissioner are decided by the Central Government.",
    ),
    Question(
      questionText: "What are the duties of the State Information Commission concerning complaints?",
      options: [
        "To perform routine administrative tasks",
        "To conduct regular inquiries into government operations",
        "To receive and inquire into complaints related to information requests, refusals, delays, fees, and incomplete or false information",
        "To oversee the appointment of Public Information Officers"
      ],
      correctAnswerIndex: 2,
      explanation: "The State Information Commission has the duty to receive and inquire into complaints related to information requests, refusals, delays, fees, and incomplete or false information.",
    ),

    Question(
      questionText: "Under what circumstances can the Commission order an inquiry into any matter?",
      options: [
        "Only when requested by the government",
        "If there is public outcry",
        "If there are reasonable grounds (suo-moto power)",
        "When specifically instructed by the President"
      ],
      correctAnswerIndex: 2,
      explanation: "The Commission can order an inquiry into any matter if there are reasonable grounds, exercising its suo-moto power.",
    ),

    Question(
      questionText: "What powers does the Commission have during an inquiry, similar to those of a civil court?",
      options: [
        "Limited to summoning witnesses",
        "Summoning and enforcing attendance, requiring discovery and inspection of documents, receiving evidence on affidavit, and other specified powers",
        "Issuing summonses only",
        "Receiving evidence on affidavit and issuing summonses for examination of witnesses or documents"
      ],
      correctAnswerIndex: 1,
      explanation: "During an inquiry, the Commission has powers similar to those of a civil court, including summoning and enforcing attendance, requiring discovery and inspection of documents, receiving evidence on affidavit, and other specified powers.",
    ),

    Question(
      questionText: "What is the Commission empowered to do in securing compliance with its decisions from the public authority?",
      options: [
        "Only issue warnings",
        "Provide access to information in a particular form, direct the appointment of Public Information Officer, and impose penalties",
        "Solely recommend actions",
        "Reject applications without providing explanations"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission is empowered to secure compliance with its decisions from the public authority, including providing access to information in a particular form, directing the appointment of Public Information Officer, and imposing penalties.",
    ),

    Question(
      questionText: "What does the Commission submit to the State Government, and how is it further processed?",
      options: [
        "Daily reports for immediate action",
        "Bi-annual reports for thorough review",
        "Monthly compliance reports",
        "An annual report on the implementation of the provisions of the Act, which is then placed before the State Legislature"
      ],
      correctAnswerIndex: 3,
      explanation: "The Commission submits an annual report to the State Government on the implementation of the provisions of the Act, and the State Government places this report before the State Legislature.",
    ),

    Question(
      questionText: "In case of non-conformity by a public authority, what can the Commission recommend?",
      options: [
        "Financial penalties",
        "Immediate removal of officials",
        "Steps for promoting conformity",
        "Public hearings"
      ],
      correctAnswerIndex: 2,
      explanation: "In case of non-conformity by a public authority, the Commission may recommend steps for promoting such conformity.",
    ),

    Question(
      questionText: "What are the various powers of the Commission when it comes to securing compliance?",
      options: [
        "Only issuing warnings",
        "Seeking an annual report",
        "Compelling public authorities to compensate for losses",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The Commission has various powers when it comes to securing compliance, including issuing warnings, seeking an annual report, and compelling public authorities to compensate for losses, among others.",
    ),

    Question(
      questionText: "Under what circumstances can the Commission reject an application?",
      options: [
        "If the applicant is dissatisfied",
        "If the information is easily accessible",
        "If the application is incomplete",
        "If the public authority has not conformed to the provisions of the Act"
      ],
      correctAnswerIndex: 3,
      explanation: "The Commission can reject an application if the public authority has not conformed to the provisions of the Act.",
    ),
    Question(
      questionText: "What changes were introduced by the Right to Information (Amendment) Act, 2019, regarding the tenure of Chief Information Commissioner and Information Commissioner?",
      options: [
        "Their term remains fixed at 5 years",
        "Their term is now prescribed by the Central Government",
        "They can serve indefinitely",
        "Their term is determined by the State Government"
      ],
      correctAnswerIndex: 1,
      explanation: "The Right to Information (Amendment) Act, 2019, introduced changes that prescribe the term of the Chief Information Commissioner and Information Commissioner by the Central Government, unlike the previous fixed term of 5 years.",
    ),

    Question(
      questionText: "What modifications were made concerning the salary, allowances, and service conditions of the Chief Information Commissioner and Information Commissioner?",
      options: [
        "No changes, they remain the same",
        "Now similar to those of the Chief Election Commissioner",
        "Now similar to those of the Chief Secretary",
        "Determined by the respective state governments"
      ],
      correctAnswerIndex: 1,
      explanation: "The Right to Information (Amendment) Act, 2019, modified the salary, allowances, and service conditions of the Chief Information Commissioner and Information Commissioner, making them similar to those of the Chief Election Commissioner.",
    ),

    Question(
      questionText: "How did the amendment affect the tenure of the State Chief Information Commissioner and a State Information Commissioner?",
      options: [
        "Their term is now fixed for 5 years",
        "Their term is determined by the State Government",
        "Their term remains unchanged",
        "Their term is now prescribed by the Central Government"
      ],
      correctAnswerIndex: 3,
      explanation: "The Right to Information (Amendment) Act, 2019, affected the tenure of the State Chief Information Commissioner and a State Information Commissioner by prescribing their term to be determined by the Central Government, unlike the previous fixed term of 5 years.",
    ),

    Question(
      questionText: "What changes were introduced regarding the salary, allowances, and service conditions of the State Chief Information Commissioner and a State Information Commissioner?",
      options: [
        "No changes, they remain the same",
        "Now similar to those of the Chief Election Commissioner",
        "Now similar to those of the Chief Secretary",
        "Determined by the respective state governments"
      ],
      correctAnswerIndex: 2,
      explanation: "The Right to Information (Amendment) Act, 2019, introduced changes in the salary, allowances, and service conditions of the State Chief Information Commissioner and a State Information Commissioner, making them similar to those of the Chief Secretary.",
    ),

    Question(
      questionText: "What specific provision did the amendment remove concerning salary deductions?",
      options: [
        "Deductions for tax purposes",
        "Deductions for health insurance",
        "Deductions due to pension or retirement benefits",
        "Deductions for professional development"
      ],
      correctAnswerIndex: 2,
      explanation: "The Right to Information (Amendment) Act, 2019, removed the provisions regarding deductions in salary of the Chief Information Commissioner, an Information Commissioner, the State Chief Information Commissioner, and a State Information Commissioner due to pension or any other retirement benefits received by them for their previous government service.",
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
    home: sic(),
  ));
}

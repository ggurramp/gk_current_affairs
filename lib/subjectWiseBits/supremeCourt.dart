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

class supremeCourt extends StatefulWidget {
  final String? userIdentifier;

  supremeCourt({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<supremeCourt> createState() => _supremeCourtState();
}

class _supremeCourtState extends State<supremeCourt> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//26.SUPREME COURT

    Question(
      questionText: "When was the Supreme Court of India inaugurated?",
      options: ["January 26, 1950", "January 28, 1950", "August 15, 1947", "October 2, 1952"],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court of India was inaugurated on January 28, 1950.",
    ),

    Question(
      questionText: "What replaced the British Privy Council as the highest court of appeal in India?",
      options: ["Federal Court of India", "High Courts", "Supreme Court of India", "District Courts"],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court of India replaced the British Privy Council as the highest court of appeal.",
    ),

    Question(
      questionText: "How has the strength of the Supreme Court judges changed over time?",
      options: ["Decreased", "Remained constant", "Increased", "Fluctuated"],
      correctAnswerIndex: 2,
      explanation: "The strength of Supreme Court judges has increased over time, from the original eight to thirty-three in 2019.",
    ),

    Question(
      questionText: "Who appoints the judges of the Supreme Court, including the Chief Justice?",
      options: ["Prime Minister", "Parliament", "President", "Chief Justice"],
      correctAnswerIndex: 2,
      explanation: "The judges of the Supreme Court, including the Chief Justice, are appointed by the President.",
    ),

    Question(
      questionText: "What constitutional amendment introduced the National Judicial Appointments Commission (NJAC) for appointing judges?",
      options: ["95th Amendment", "105th Amendment", "99th Amendment", "110th Amendment"],
      correctAnswerIndex: 2,
      explanation: "The 99th Constitutional Amendment Act of 2014 introduced the National Judicial Appointments Commission (NJAC).",
    ),

    Question(
      questionText: "Which court case led to the declaration of the 99th Constitutional Amendment and the NJAC Act as unconstitutional?",
      options: ["First Judges Case", "Second Judges Case", "Third Judges Case", "Fourth Judges Case"],
      correctAnswerIndex: 3,
      explanation: "The Supreme Court declared the 99th Constitutional Amendment and the NJAC Act as unconstitutional in the Fourth Judges Case (2015).",
    ),
    Question(
      questionText: "Under which article of the Indian Constitution is the establishment and constitution of the Supreme Court defined?",
      options: ["Article 124", "Article 130", "Article 136", "Article 140"],
      correctAnswerIndex: 0,
      explanation: "The establishment and constitution of the Supreme Court are defined under Article 124 of the Indian Constitution.",
    ),

    Question(
      questionText: "Which article deals with the jurisdiction and powers of the Federal Court under existing law, exercisable by the Supreme Court?",
      options: ["Article 133", "Article 135", "Article 139", "Article 143"],
      correctAnswerIndex: 1,
      explanation: "Article 135 deals with the jurisdiction and powers of the Federal Court under existing law, exercisable by the Supreme Court.",
    ),

    Question(
      questionText: "What does Article 141 of the Indian Constitution state?",
      options: ["Supreme Court's jurisdiction in criminal matters", "Supreme Court's power to issue certain writs", "Law declared by Supreme Court binding on all courts", "Special provisions for constitutional validity of laws"],
      correctAnswerIndex: 2,
      explanation: "Article 141 states that law declared by the Supreme Court is binding on all courts.",
    ),

    Question(
      questionText: "Which article empowers the President to consult the Supreme Court on certain matters?",
      options: ["Article 143", "Article 144", "Article 145", "Article 146"],
      correctAnswerIndex: 0,
      explanation: "Article 143 empowers the President to consult the Supreme Court on certain matters.",
    ),

    Question(
      questionText: "What is the subject-matter of Article 147 of the Indian Constitution?",
      options: ["Interpretation", "Enforcement of decrees and orders", "Civil and judicial authorities acting in aid of the Supreme Court", "Rules of court"],
      correctAnswerIndex: 3,
      explanation: "Article 147 deals with interpretation in the context of the Supreme Court.",
    ),
    Question(
      questionText: "In the context of jurisdiction, what distinguishes the original jurisdiction of the Indian Supreme Court from the American Supreme Court?",
      options: ["The Indian Supreme Court covers federal and maritime cases", "The American Supreme Court covers federal and criminal cases", "The Indian Supreme Court covers federal cases only", "The American Supreme Court covers constitutional cases only"],
      correctAnswerIndex: 2,
      explanation: "The original jurisdiction of the Indian Supreme Court is confined to federal cases, while the American Supreme Court covers not only federal cases but also cases related to naval forces, maritime activities, ambassadors, etc.",
    ),

    Question(
      questionText: "Which feature is applicable to the Indian Supreme Court but not to the American Supreme Court?",
      options: ["Advisory jurisdiction", "Limited scope of judicial review", "Defending rights according to 'procedure established by law'", "Enlargement of jurisdiction by Parliament"],
      correctAnswerIndex: 0,
      explanation: "Advisory jurisdiction is a feature of the Indian Supreme Court and not the American Supreme Court.",
    ),

    Question(
      questionText: "What aspect of judicial review distinguishes the Indian Supreme Court from the American Supreme Court?",
      options: ["The Indian Supreme Court has a limited scope of judicial review", "The American Supreme Court has a limited scope of judicial review", "The Indian Supreme Court has no advisory jurisdiction", "The American Supreme Court has advisory jurisdiction"],
      correctAnswerIndex: 1,
      explanation: "The scope of judicial review is limited for the Indian Supreme Court, while it is very wide for the American Supreme Court.",
    ),

    Question(
      questionText: "Which statement is true regarding the powers of the Indian Supreme Court and the American Supreme Court?",
      options: ["The Indian Supreme Court has limited powers as per the Constitution", "The American Supreme Court can have its jurisdiction and powers enlarged by Congress", "The Indian Supreme Court has advisory jurisdiction", "The American Supreme Court has power of judicial superintendence over state high courts"],
      correctAnswerIndex: 3,
      explanation: "The Indian Supreme Court has the power of judicial superintendence and control over state high courts, while the American Supreme Court does not have such power due to the double (or separated) judicial system.",
    ),
    Question(
      questionText: "What are the six categories into which the jurisdiction and powers of the Supreme Court are classified?",
      options: [
        "Federal, State, Local, International, Constitutional, Statutory",
        "Original, Writ, Appellate, Advisory, Court of Record, Judicial Review",
        "Civil, Criminal, Constitutional, Special Leave, Advisory, Original",
        "Legislative, Executive, Judicial, Constitutional, Administrative, Advisory"
      ],
      correctAnswerIndex: 1,
      explanation: "The jurisdiction and powers of the Supreme Court are classified into Original, Writ, Appellate, Advisory, Court of Record, and Judicial Review.",
    ),

    Question(
      questionText: "What disputes fall under the exclusive original jurisdiction of the Supreme Court?",
      options: [
        "Civil disputes between individuals",
        "Disputes arising out of treaties and agreements",
        "Inter-state river water disputes",
        "Criminal disputes between states"
      ],
      correctAnswerIndex: 2,
      explanation: "Civil disputes between individuals are not under the exclusive original jurisdiction of the Supreme Court. However, disputes related to inter-state river water disputes fall under this jurisdiction.",
    ),

    Question(
      questionText: "What is the difference between the original jurisdiction of the Supreme Court regarding federal disputes and disputes relating to fundamental rights?",
      options: [
        "The first is concurrent, and the second is exclusive.",
        "The first involves private citizens, and the second involves units of the federation.",
        "The first is advisory, and the second is appellate.",
        "The first is limited to constitutional matters, and the second covers all legal disputes."
      ],
      correctAnswerIndex: 1,
      explanation: "The original jurisdiction of the Supreme Court regarding federal disputes is exclusive and involves units of the federation (Centre and states). In contrast, the original jurisdiction regarding disputes relating to fundamental rights is concurrent and involves private citizens and the government.",
    ),

    Question(
      questionText: "What is the difference between the writ jurisdiction of the Supreme Court and that of the high court?",
      options: [
        "The Supreme Court can issue writs for any purpose, while the high court is limited to fundamental rights.",
        "The high court's jurisdiction is wider than that of the Supreme Court.",
        "The Supreme Court has exclusive writ jurisdiction.",
        "The high court cannot issue writs for fundamental rights."
      ],
      correctAnswerIndex: 1,
      explanation: "The high court's writ jurisdiction is wider than that of the Supreme Court. While the Supreme Court issues writs for the enforcement of fundamental rights, the high court can issue writs for both fundamental rights and other purposes.",
    ),

    Question(
      questionText: "In which year did the first suit under the original jurisdiction of the Supreme Court take place, and what was the nature of the dispute?",
      options: [
        "1950 - Land dispute between states",
        "1961 - Constitutional validity of an Act challenged by a state",
        "1972 - Criminal case involving the Centre and a state",
        "1980 - Inter-state river water dispute"
      ],
      correctAnswerIndex: 1,
      explanation: "In 1961, the first suit under the original jurisdiction of the Supreme Court took place. It involved West Bengal challenging the constitutional validity of the Coal Bearing Areas (Acquisition and Development) Act, 1957, passed by the Parliament.",
    ),

    Question(
      questionText: "What is the monetary limit for civil cases to be appealed before the Supreme Court?",
      options: [
        "₹10,000",
        "₹50,000",
        "₹1,00,000",
        "There is no monetary limit."
      ],
      correctAnswerIndex: 3,
      explanation: "The monetary limit for civil cases to be appealed before the Supreme Court was removed by the 30th Constitutional Amendment Act of 1972. There is no monetary limit.",
    ),

    Question(
      questionText: "What is the discretionary power of the Supreme Court regarding the grant of special leave to appeal?",
      options: [
        "It is a mandatory power that must be exercised in every case.",
        "It is a power that can be claimed as a matter of right.",
        "It is a power that can only be exercised against high courts.",
        "It is a discretionary power that cannot be claimed as a matter of right."
      ],
      correctAnswerIndex: 3,
      explanation: "The discretionary power of the Supreme Court regarding the grant of special leave to appeal is not a matter of right. It is a discretionary power that the Supreme Court may choose to exercise in its discretion.",
    ),

    Question(
      questionText: "In advisory jurisdiction, when must the Supreme Court tender its opinion to the President?",
      options: [
        "The Supreme Court may tender its opinion at its discretion.",
        "The Supreme Court must tender its opinion in both cases.",
        "The Supreme Court must tender its opinion only in the first case.",
        "The Supreme Court must tender its opinion only in the second case."
      ],
      correctAnswerIndex: 1,
      explanation: "In advisory jurisdiction, the Supreme Court may tender or may refuse to tender its opinion to the President in the first case. However, the Supreme Court must tender its opinion to the President in the second case.",
    ),

    Question(
      questionText: "How many references has the President made to the Supreme Court under its advisory jurisdiction?",
      options: ["10", "15", "20", "25"],
      correctAnswerIndex: 1,
      explanation: "So far, the President has made fifteen references to the Supreme Court under its advisory jurisdiction (also known as consultative jurisdiction).",
    ),
    Question(
      questionText: "Under what circumstances can a judge of the Supreme Court be appointed as an acting Chief Justice of India?",
      options: [
        "When the judge wishes to assume the role temporarily.",
        "When the Chief Justice of India is permanently absent.",
        "When the office of Chief Justice of India is vacant, temporarily absent, or unable to perform duties.",
        "When the judge receives approval from the President."
      ],
      correctAnswerIndex: 2,
      explanation: "A judge of the Supreme Court can be appointed as an acting Chief Justice of India when the office of Chief Justice is vacant, temporarily absent, or the Chief Justice is unable to perform duties.",
    ),

    Question(
      questionText: "What is the role of an ad hoc judge in the Supreme Court?",
      options: [
        "To permanently replace a retired judge.",
        "To assist the Chief Justice in administrative duties.",
        "To act as a temporary judge when there is a lack of quorum among permanent judges.",
        "To provide legal advice to the President."
      ],
      correctAnswerIndex: 2,
      explanation: "An ad hoc judge is appointed by the Chief Justice of India to act as a temporary judge in the Supreme Court when there is a lack of quorum among permanent judges.",
    ),

    Question(
      questionText: "Under what conditions can a retired judge be requested to act as a judge of the Supreme Court?",
      options: [
        "At any time without conditions.",
        "With the President's previous consent and approval.",
        "Only in cases of emergency.",
        "If the retired judge expresses interest in returning to service."
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Justice of India can request a retired judge to act as a judge of the Supreme Court with the previous consent of the President and the person to be appointed.",
    ),

    Question(
      questionText: "What is the seat of the Supreme Court according to the Constitution?",
      options: [
        "Delhi only",
        "Any place designated by the Chief Justice with the President's approval",
        "Varanasi only",
        "Mumbai only"
      ],
      correctAnswerIndex: 1,
      explanation: "While the Constitution declares Delhi as the seat of the Supreme Court, the Chief Justice of India can appoint other places as the seat with the approval of the President. However, this provision is optional.",
    ),

    Question(
      questionText: "How are cases or references made by the President under Article 143 of the Constitution decided?",
      options: [
        "By a majority vote of the President's cabinet.",
        "By a Bench consisting of at least five judges.",
        "By a division bench.",
        "By a single judge."
      ],
      correctAnswerIndex: 1,
      explanation: "Cases or references made by the President under Article 143 are decided by a Bench consisting of at least five judges.",
    ),

    Question(
      questionText: "What provision ensures the security of tenure for judges of the Supreme Court?",
      options: [
        "Constitutional amendment",
        "Executive order",
        "The Constitution itself",
        "Parliamentary resolution"
      ],
      correctAnswerIndex: 2,
      explanation: "The security of tenure for judges of the Supreme Court is ensured by the Constitution itself.",
    ),

    Question(
      questionText: "What power does the Supreme Court have to punish any person?",
      options: [
        "Power to imprison individuals",
        "Power to impose fines",
        "Power to punish for contempt",
        "Power to issue arrest warrants"
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court has the power to punish any person for its contempt, ensuring its authority, dignity, and honor.",
    ),

    Question(
      questionText: "What is the primary role of the Supreme Court in the Indian democratic political system?",
      options: [
        "Executive oversight",
        "Legislative decision-making",
        "Guarantor of fundamental rights, highest court of appeal, guardian of the Constitution",
        "Advisory body to the President"
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court plays a crucial role as the guarantor of fundamental rights, the highest court of appeal, and the guardian of the Constitution in the Indian democratic political system.",
    ),

    Question(
      questionText: "What is the mode of appointment for judges of the Supreme Court?",
      options: [
        "Direct appointment by the Chief Justice of India",
        "Appointment by the Prime Minister",
        "Appointment by the President in consultation with the judiciary",
        "Appointment by the Parliament"
      ],
      correctAnswerIndex: 2,
      explanation: "Judges of the Supreme Court are appointed by the President in consultation with the judiciary, ensuring that the executive does not have absolute discretion in appointments.",
    ),
    Question(
      questionText: "What qualifications are required for a person to be appointed as a judge of the Supreme Court?",
      options: [
        "Indian citizenship only",
        "Citizenship and a minimum age requirement",
        "High Court judge for five years, or advocate for ten years, or distinguished jurist in the opinion of the President",
        "Political affiliation and legal background"
      ],
      correctAnswerIndex: 2,
      explanation: "To be appointed as a judge of the Supreme Court, a person should meet qualifications such as being a High Court judge for five years, an advocate for ten years, or a distinguished jurist in the opinion of the President.",
    ),

    Question(
      questionText: "What oath or affirmation does a person appointed as a judge of the Supreme Court have to make before entering office?",
      options: [
        "Political allegiance to the ruling party",
        "Pledge to follow executive orders",
        "Oath to uphold the Constitution, sovereignty, and integrity of India, and faithfully perform duties without bias",
        "Promise to prioritize personal interests over official duties"
      ],
      correctAnswerIndex: 2,
      explanation: "A person appointed as a judge of the Supreme Court has to make an oath to uphold the Constitution, sovereignty, and integrity of India, and faithfully perform duties without bias.",
    ),

    Question(
      questionText: "How are salaries, allowances, privileges, and pensions of judges of the Supreme Court determined?",
      options: [
        "By individual negotiation with each judge",
        "By the Prime Minister's office",
        "From time to time by the Parliament",
        "By the President's discretionary powers"
      ],
      correctAnswerIndex: 2,
      explanation: "The salaries, allowances, privileges, and pensions of judges of the Supreme Court are determined from time to time by the Parliament.",
    ),

    Question(
      questionText: "What is the retirement age for a judge of the Supreme Court?",
      options: [
        "60 years",
        "62 years",
        "65 years",
        "No fixed retirement age"
      ],
      correctAnswerIndex: 2,
      explanation: "A judge of the Supreme Court holds office until reaching the age of 65 years, and any question regarding their age is determined by the authority as provided by Parliament.",
    ),

    Question(
      questionText: "How can a judge of the Supreme Court be removed from office?",
      options: [
        "By the Prime Minister's order",
        "By voluntary resignation only",
        "By the President's unilateral decision",
        "By an order of the President after an address by Parliament"
      ],
      correctAnswerIndex: 3,
      explanation: "A judge of the Supreme Court can be removed from office by an order of the President after an address by Parliament, supported by a special majority of each House.",
    ),

    Question(
      questionText: "What are the grounds for the removal of a judge of the Supreme Court?",
      options: [
        "Political disagreement",
        "Proven misbehavior or incapacity",
        "Non-compliance with executive orders",
        "Age exceeding 65 years"
      ],
      correctAnswerIndex: 1,
      explanation: "A judge of the Supreme Court can be removed for proved misbehavior or incapacity, as specified in the grounds for removal.",
    ),

    Question(
      questionText: "Which Act regulates the procedure for the removal of a judge of the Supreme Court through impeachment?",
      options: [
        "Judicial Standards and Accountability Act",
        "Constitutional Amendment Act",
        "Judges Enquiry Act (1968)",
        "Judicial Code of Conduct Act"
      ],
      correctAnswerIndex: 2,
      explanation: "The procedure for the removal of a judge of the Supreme Court through impeachment is regulated by the Judges Enquiry Act (1968).",
    ),

    Question(
      questionText: "How many members are required to sign a removal motion for a judge of the Supreme Court?",
      options: [
        "10 members",
        "25 members",
        "50 members (in the case of Lok Sabha), or 30 members (in the case of Rajya Sabha)",
        "75 members"
      ],
      correctAnswerIndex: 2,
      explanation: "A removal motion for a judge of the Supreme Court must be signed by 50 members (in the case of Lok Sabha) or 30 members (in the case of Rajya Sabha).",
    ),

    Question(
      questionText: "What happened in the case of Justice V. Ramaswami, the first judge of the Supreme Court to face impeachment?",
      options: [
        "Successfully impeached",
        "Found not guilty",
        "Impeachment motion defeated in the Lok Sabha",
        "Resigned before impeachment"
      ],
      correctAnswerIndex: 2,
      explanation: "In the case of Justice V. Ramaswami, the first judge of the Supreme Court to face impeachment, the impeachment motion was defeated in the Lok Sabha.",
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
    home: supremeCourt(),
  ));
}

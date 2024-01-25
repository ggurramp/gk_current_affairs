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

class tribunals extends StatefulWidget {
  final String? userIdentifier;

  tribunals({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<tribunals> createState() => _tribunalsState();
}

class _tribunalsState extends State<tribunals> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//36.TRIBUNALS

    Question(
      questionText: "Which amendment to the Constitution added a new Part XIV-A, titled 'Tribunals,' consisting of Articles 323A and 323B?",
      options: [
        "42nd Amendment Act of 1976",
        "44th Amendment Act of 1978",
        "46th Amendment Act of 1982",
        "48th Amendment Act of 1985"
      ],
      correctAnswerIndex: 0,
      explanation: "The 42nd Amendment Act of 1976 added a new Part XIV-A to the Constitution, titled 'Tribunals,' consisting of Articles 323A and 323B.",
    ),

    Question(
      questionText: "What is the main purpose of Article 323A of the Constitution?",
      options: [
        "Dealing with tribunals for matters other than administrative issues",
        "Establishing the Central Administrative Tribunal",
        "Providing for the establishment of administrative tribunals",
        "Amending the Civil Procedure Code of 1908"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 323A empowers the Parliament to provide for the establishment of administrative tribunals for the adjudication of disputes relating to recruitment and conditions of service of persons appointed to public services.",
    ),

    Question(
      questionText: "Which Act was passed by Parliament in pursuance of Article 323A, providing for the establishment of administrative tribunals?",
      options: [
        "Administrative Tribunals Act of 1985",
        "Judicial Review Act of 1978",
        "Constitutional Amendment Act of 1982",
        "Tribunals Establishment Act of 1990"
      ],
      correctAnswerIndex: 0,
      explanation: "In pursuance of Article 323A, the Parliament passed the Administrative Tribunals Act in 1985, providing for the establishment of administrative tribunals.",
    ),

    Question(
      questionText: "Which jurisdiction does the Central Administrative Tribunal (CAT) have in relation to public servants?",
      options: [
        "Jurisdiction over all civil and criminal matters",
        "Jurisdiction over the defense forces",
        "Jurisdiction over members of the Supreme Court",
        "Jurisdiction over recruitment and service matters of public servants"
      ],
      correctAnswerIndex: 3,
      explanation: "The Central Administrative Tribunal (CAT) exercises jurisdiction in relation to recruitment and all service matters of public servants, excluding members of the defense forces, officers and servants of the Supreme Court, and the secretarial staff of the Parliament.",
    ),

    Question(
      questionText: "How is the chairman of the Central Administrative Tribunal (CAT) appointed?",
      options: [
        "Elected by public servants covered by CAT",
        "Appointed by the President of India",
        "Appointed by the Chief Justice of India",
        "Chosen by the Members of CAT"
      ],
      correctAnswerIndex: 2,
      explanation: "The chairman and members of the CAT are appointed by the central government on the basis of recommendations of a search-cum-selection committee chaired by the Chief Justice of India or a Judge of the Supreme Court nominated by the Chief Justice of India.",
    ),

    Question(
      questionText: "What age limit is set for the eligibility of a person to be appointed as Chairman or Member of the Central Administrative Tribunal (CAT)?",
      options: [
        "Age limit of 60 years",
        "Age limit of 65 years",
        "Age limit of 70 years for Chairman and 67 years for Members",
        "No specific age limit"
      ],
      correctAnswerIndex: 2,
      explanation: "A person who has not completed the age of 50 years is not eligible for appointment as Chairman or Member. They hold office for a term of four years or until they attain the age of 70 years in case of Chairman and 67 years in case of Members, whichever is earlier.",
    ),

    Question(
      questionText: "What is the guiding principle for the Central Administrative Tribunal (CAT) in its proceedings?",
      options: [
        "Strict adherence to the Civil Procedure Code of 1908",
        "Following principles of natural justice",
        "Speedy and expensive justice",
        "Applicant's personal appearance is mandatory"
      ],
      correctAnswerIndex: 1,
      explanation: "The CAT is not bound by the procedure laid down in the Civil Procedure Code of 1908. It is guided by the principles of natural justice, making it flexible in approach.",
    ),

    Question(
      questionText: "What constitutional provision was declared unconstitutional by the Supreme Court in the Chandra Kumar case (1997)?",
      options: [
        "Article 323A",
        "Article 323B",
        "Restriction on the jurisdiction of high courts",
        "Judicial review as part of the basic structure"
      ],
      correctAnswerIndex: 2,
      explanation: "In the Chandra Kumar case (1997), the Supreme Court declared the restriction on the jurisdiction of the high courts as unconstitutional, holding that judicial review is a part of the basic structure of the Constitution.",
    ),

    Question(
      questionText: "How did the Supreme Court alter the appellate procedure against the orders of the Central Administrative Tribunal (CAT) in the Chandra Kumar case (1997)?",
      options: [
        "Appeals could only be made in the Supreme Court",
        "Introduced a fee of ₹1000 for appeals",
        "Appeals shall lie before the division bench of the concerned high court",
        "Abolished the right to appeal"
      ],
      correctAnswerIndex: 2,
      explanation: "In the Chandra Kumar case (1997), the Supreme Court declared that appeals against the orders of the CAT shall lie before the division bench of the concerned high court, removing the restriction on the jurisdiction of the high courts.",
    ),

    Question(
      questionText: "What power does the Administrative Tribunals Act of 1985 give the Central government regarding State Administrative Tribunals (SATs)?",
      options: [
        "Establish SATs without any conditions",
        "Establish SATs only in union territories",
        "Establish SATs on specific request of the concerned state governments",
        "Establish SATs on its own discretion"
      ],
      correctAnswerIndex: 2,
      explanation: "The Administrative Tribunals Act of 1985 empowers the Central government to establish State Administrative Tribunals (SATs) on specific request of the concerned state governments.",
    ),
    Question(
      questionText: "What matters are covered under Article 323B for the establishment of tribunals?",
      options: [
        "Public service matters only",
        "Religion and social issues",
        "Industrial and labour disputes",
        "Environmental conservation"
      ],
      correctAnswerIndex: 2,
      explanation: "Under Article 323B, the Parliament and the state legislatures are authorized to provide for the establishment of tribunals for the adjudication of disputes relating to matters such as taxation, foreign exchange, industrial and labour disputes, land reforms, ceiling on urban property, elections, foodstuffs, rent, and tenancy rights.",
    ),

    Question(
      questionText: "How do Articles 323A and 323B differ with respect to the matters for which tribunals can be established?",
      options: [
        "Article 323B contemplates establishment of tribunals for public service matters, while Article 323A contemplates establishment of tribunals for certain other matters.",
        "Both articles contemplate establishment of tribunals for public service matters.",
        "Article 323A and 323B are identical in their scope of matters for establishing tribunals.",
        "Article 323A deals with administrative matters, while Article 323B deals with legislative matters."
      ],
      correctAnswerIndex: 0,
      explanation: "Articles 323A and 323B differ in that Article 323A contemplates the establishment of tribunals for public service matters, while Article 323B contemplates the establishment of tribunals for certain other matters, including taxation, foreign exchange, industrial and labour disputes, land reforms, and more.",
    ),

    Question(
      questionText: "Who is authorized to establish tribunals under Article 323B?",
      options: [
        "Only the Parliament",
        "Only the state legislatures",
        "Both the Parliament and state legislatures",
        "The President of India"
      ],
      correctAnswerIndex: 2,
      explanation: "Tribunals under Article 323B can be established both by Parliament and state legislatures with respect to matters falling within their legislative competence.",
    ),

    Question(
      questionText: "What is a key difference in the establishment of tribunals under Article 323A and Article 323B?",
      options: [
        "Article 323A allows the establishment of a hierarchy of tribunals, while Article 323B does not.",
        "Article 323B allows the establishment of a hierarchy of tribunals, while Article 323A does not.",
        "Both articles allow the establishment of a hierarchy of tribunals.",
        "Neither article allows the establishment of a hierarchy of tribunals."
      ],
      correctAnswerIndex: 1,
      explanation: "Under Article 323B, a hierarchy of tribunals may be created, whereas under Article 323A, there is no question of hierarchy of tribunals.",
    ),

    Question(
      questionText: "What did the Supreme Court declare in the Chandra Kumar case (1997) regarding the jurisdiction of high courts and the Supreme Court?",
      options: [
        "The jurisdiction of high courts and the Supreme Court remains excluded for all tribunal orders.",
        "The jurisdiction of high courts and the Supreme Court is retained for all tribunal orders.",
        "The jurisdiction of high courts and the Supreme Court is dependent on the specific tribunal order.",
        "The jurisdiction of high courts and the Supreme Court was declared unconstitutional and excluded."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Chandra Kumar case (1997), the Supreme Court declared the provisions of Articles 323A and 323B that excluded the jurisdiction of high courts and the Supreme Court as unconstitutional. Therefore, judicial remedies are now available against the orders of these tribunals.",
    ),
    Question(
      questionText: "Which bench of the Central Administrative Tribunal (CAT) has jurisdiction over Bihar and Jharkhand?",
      options: ["Lucknow Bench", "Patna Bench", "Chandigarh Bench", "Jabalpur Bench"],
      correctAnswerIndex: 1,
      explanation: "The Patna Bench of the Central Administrative Tribunal (CAT) has jurisdiction over Bihar and Jharkhand.",
    ),

    Question(
      questionText: "Where does the Allahabad Bench of the Central Administrative Tribunal (CAT) hold its circuit sittings?",
      options: ["Nainital", "Port Blair", "Shimla", "Puducherry"],
      correctAnswerIndex: 0,
      explanation: "The Allahabad Bench of the Central Administrative Tribunal (CAT) holds circuit sittings at Nainital.",
    ),

    Question(
      questionText: "Which states are covered by the Hyderabad Bench of the Central Administrative Tribunal (CAT)?",
      options: ["Andhra Pradesh and Telangana", "Kerala and Lakshadweep", "Maharashtra, Goa, and Dadra and Nagar Haveli", "Gujarat"],
      correctAnswerIndex: 0,
      explanation: "The Hyderabad Bench of the Central Administrative Tribunal (CAT) covers Andhra Pradesh and Telangana.",
    ),

    Question(
      questionText: "Where does the Guwahati Bench of the Central Administrative Tribunal (CAT) hold its circuit sittings?",
      options: ["Shillong, Itanagar, Kohima, Agartala, Imphal, Aizwal", "Nagpur, Aurangabad, Panaji", "Port Blair, Gangtok", "Shimla"],
      correctAnswerIndex: 0,
      explanation: "The Guwahati Bench of the Central Administrative Tribunal (CAT) holds circuit sittings at Shillong, Itanagar, Kohima, Agartala, Imphal, and Aizwal.",
    ),

    Question(
      questionText: "Which bench of the Central Administrative Tribunal (CAT) has jurisdiction over Tamil Nadu and Puducherry?",
      options: ["Chandigarh Bench", "Calcutta Bench", "Ernakulam Bench", "Madras Bench"],
      correctAnswerIndex: 3,
      explanation: "The Madras Bench of the Central Administrative Tribunal (CAT) has jurisdiction over Tamil Nadu and Puducherry.",
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
    home: tribunals(),
  ));
}

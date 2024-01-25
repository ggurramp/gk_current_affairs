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

class nationalCommisionforWomen extends StatefulWidget {
  final String? userIdentifier;

  nationalCommisionforWomen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nationalCommisionforWomen> createState() => _nationalCommisionforWomenState();
}

class _nationalCommisionforWomenState extends State<nationalCommisionforWomen> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//59.NATIONAL COMMISION FOR WOMEN

    Question(
      questionText: "When was the National Commission for Women constituted?",
      options: [
        "1974",
        "1988",
        "1990",
        "1992"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Commission for Women was constituted in 1992.",
    ),

    Question(
      questionText: "Under which legislation was the National Commission for Women established?",
      options: [
        "Constitution of India",
        "National Commission for Women Act, 1990",
        "Protection of Human Rights Act, 1993",
        "National Commission for Women Act, 1992"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Commission for Women was established under the legislation enacted by the Parliament, namely the National Commission for Women Act, 1990.",
    ),

    Question(
      questionText: "What is the specific mandate of the National Commission for Women?",
      options: [
        "To review the constitutional and legal safeguards for women",
        "To facilitate the redressal of grievances",
        "To advise the government on all policy matters affecting women",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The specific mandate of the National Commission for Women includes reviewing constitutional and legal safeguards for women, recommending remedial legislative measures, facilitating the redressal of grievances, and advising the government on all policy matters affecting women.",
    ),

    Question(
      questionText: "How is the composition of the National Commission for Women structured?",
      options: [
        "Chairperson and three members",
        "Chairperson, five members, and a member-secretary",
        "Chairperson and two members",
        "Chairperson, four members, and a secretary"
      ],
      correctAnswerIndex: 1,
      explanation: "The composition of the National Commission for Women is structured with a chairperson and five members, including a member-secretary.",
    ),

    Question(
      questionText: "Who can nominate the chairperson, members, and member-secretary of the National Commission for Women?",
      options: [
        "President of India",
        "Prime Minister",
        "Central Government (Ministry of Women and Child Development)",
        "National Human Rights Commission"
      ],
      correctAnswerIndex: 2,
      explanation: "The chairperson, members, and member-secretary of the National Commission for Women are nominated by the Central Government (Ministry of Women and Child Development).",
    ),
    Question(
      questionText: "What is the mandate of the National Commission for Women?",
      options: [
        "To investigate and examine all matters relating to the safeguards provided for women under the Constitution and other laws",
        "To review the progress of the development of women under the Union and any state",
        "To participate and advise on the planning process of socio-economic development of women",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Commission for Women has a fourteen-point mandate, including investigating matters related to safeguards for women, reviewing progress, advising on socio-economic development, and more.",
    ),

    Question(
      questionText: "How does the National Commission for Women handle complaints related to police apathy against women?",
      options: [
        "Resolving family disputes or striking compromises through counseling",
        "Sending specific cases to police authorities for investigation and monitoring",
        "Constituting an Inquiry Committee for immediate relief and justice",
        "Providing free legal aid for women"
      ],
      correctAnswerIndex: 1,
      explanation: "The National Commission for Women handles complaints related to police apathy by sending specific cases to police authorities for investigation and monitoring. Family disputes are resolved or compromises are struck through counseling.",
    ),

    Question(
      questionText: "What powers does the National Commission for Women have while investigating matters or inquiring into complaints?",
      options: [
        "Summoning and enforcing the attendance of any person",
        "Requiring the discovery and production of any document",
        "Issuing summons for the examination of witnesses and documents",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Commission for Women, while investigating matters or inquiring into complaints, has all the powers of a civil court, including summoning and enforcing attendance, requiring document production, and issuing summons for examination of witnesses and documents.",
    ),

    Question(
      questionText: "What is the mechanism through which the National Commission for Women presents reports to the Central Government?",
      options: [
        "Through annual reports only",
        "Through special reports only",
        "Through periodic reports and as and when it deems fit",
        "Through quarterly reports only"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Commission for Women presents reports to the Central Government annually and at such other times as it deems fit. It can also submit reports as and when necessary.",
    ),

    Question(
      questionText: "How are the chairperson, members, and member-secretary of the National Commission for Women appointed?",
      options: [
        "By the President of India",
        "By the Prime Minister",
        "By the Central Government (Ministry of Women and Child Development)",
        "By the Chief Justice of India"
      ],
      correctAnswerIndex: 2,
      explanation: "The chairperson, members, and member-secretary of the National Commission for Women are nominated by the Central Government (Ministry of Women and Child Development).",
    ),

    Question(
      questionText: "What is the primary objective of Parivarik Mahila Lok Adalat (PMLA)?",
      options: [
        "To provide financial assistance to NGOs",
        "To generate awareness among the public regarding conciliatory mode of dispute settlement",
        "To empower public, especially women, to participate in justice delivery mechanisms",
        "To organize Lok Adalats for speedy disposal of criminal cases"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary objectives of Parivarik Mahila Lok Adalat (PMLA) include providing speedy and cost-free dispensation of justice to women, generating awareness about conciliatory dispute settlement, encouraging the public to settle disputes outside formal setups, and empowering the public, especially women, to participate in justice delivery mechanisms.",
    ),

    Question(
      questionText: "How does the Parivarik Mahila Lok Adalat (PMLA) function?",
      options: [
        "It functions independently without any model",
        "It functions as a financial aid provider",
        "It functions on the model of the Lok Adalat",
        "It functions as a traditional court"
      ],
      correctAnswerIndex: 2,
      explanation: "The Parivarik Mahila Lok Adalat (PMLA) functions on the model of the Lok Adalat, providing speedy and cost-free dispensation of justice to women in matters related to marriage and family affairs.",
    ),

    Question(
      questionText: "Who receives financial assistance from the National Commission for Women to organize the Parivarik Mahila Lok Adalat?",
      options: [
        "District Legal Service Authority",
        "Individuals involved in family disputes",
        "State Women Commissions or State Legal Service Authority",
        "Members of Lok Adalat"
      ],
      correctAnswerIndex: 2,
      explanation: "Financial assistance for organizing the Parivarik Mahila Lok Adalat is provided to NGOs or State Women Commissions or State Legal Service Authority by the National Commission for Women.",
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
    home: nationalCommisionforWomen(),
  ));
}

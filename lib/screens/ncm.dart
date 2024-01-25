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

class ncm extends StatefulWidget {
  final String? userIdentifier;

  ncm({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ncm> createState() => _ncmState();
}

class _ncmState extends State<ncm> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//61.NATIONAL COMMISSION FOR MINORITIES

    Question(
      questionText: "In which year did the Government of India establish the Minorities Commission?",
      options: ["1975", "1978", "1980", "1982"],
      correctAnswerIndex: 1,
      explanation: "The Government of India established the Minorities Commission in 1978 through an executive resolution to safeguard the interests of minorities.",
    ),

    Question(
      questionText: "What were the reasons cited for the establishment of the Minorities Commission?",
      options: [
        "To enforce secular traditions",
        "To promote National Integration",
        "To address feelings of inequality and discrimination among minorities",
        "All of the above",
      ],
      correctAnswerIndex: 3,
      explanation: "The reasons for the establishment of the Minorities Commission included addressing feelings of inequality and discrimination among minorities, enforcing secular traditions, and promoting National Integration.",
    ),

    Question(
      questionText: "When did the Minorities Commission gain statutory status and get renamed?",
      options: ["1985", "1990", "1993", "1995"],
      correctAnswerIndex: 2,
      explanation: "The Minorities Commission gained statutory status and was renamed the National Commission for Minorities in 1993 through the National Commission for Minorities Act.",
    ),

    Question(
      questionText: "How is the term 'minority' defined in the National Commission for Minorities Act?",
      options: [
        "It is explicitly defined in the Act",
        "It is determined by the Central Government through notification",
        "It is based on religious affiliation",
        "It is left undefined intentionally",
      ],
      correctAnswerIndex: 1,
      explanation: "The National Commission for Minorities Act does not explicitly define the term 'minority.' Instead, the Central Government can notify minority communities for the purposes of the Act.",
    ),

    Question(
      questionText: "What religious communities were initially notified as minorities in 1993?",
      options: ["Muslims, Christians, Sikhs, Buddhists", "Hindus, Jains, Parsis", "Jews, Hindus, Sikhs", "Muslims, Christians, Shias, Buddhists, Parsis"],
      correctAnswerIndex: 0,
      explanation: "In 1993, the Central Government initially notified Muslims, Christians, Sikhs, Buddhists, and Parsis as minority communities.",
    ),

    Question(
      questionText: "How is the composition of the National Commission for Minorities structured?",
      options: [
        "A Chairperson, a Vice-Chairperson, and five members",
        "A Chairperson and six members",
        "A President, a Vice-President, and seven members",
        "A Chairperson, three Vice-Chairpersons, and four members",
      ],
      correctAnswerIndex: 0,
      explanation: "The National Commission for Minorities is a multi-member body consisting of a Chairperson, a Vice-Chairperson, and five members.",
    ),

    Question(
      questionText: "What are the eligibility criteria for members of the National Commission for Minorities?",
      options: [
        "Must be from the majority community",
        "Must be from any religious community",
        "Must be from minority communities",
        "Must be government officials",
      ],
      correctAnswerIndex: 2,
      explanation: "Members of the National Commission for Minorities must be from minority communities, with the Chairperson and five members selected from among persons of eminence, ability, and integrity.",
    ),

    Question(
      questionText: "How long is the term of office for the Chairperson and members of the National Commission for Minorities?",
      options: ["Two years", "Three years", "Four years", "Five years"],
      correctAnswerIndex: 1,
      explanation: "The Chairperson and members of the National Commission for Minorities hold office for a period of three years.",
    ),

    Question(
      questionText: "Under what circumstances can the Central Government remove the Chairperson or a member from office?",
      options: [
        "Refusal to act or incapacity to act",
        "Abuse of official position detrimental to the interests of minorities or public interest",
        "Conviction and imprisonment for an offence involving moral turpitude",
        "All of the above",
      ],
      correctAnswerIndex: 3,
      explanation: "The Central Government can remove the Chairperson or a member from office under circumstances such as refusal to act, abuse of official position detrimental to the interests of minorities or public interest, and conviction with imprisonment for an offence involving moral turpitude.",
    ),
    Question(
        questionText: "What is the primary mandate of the National Commission for Minorities?",
        options: [
          "To evaluate the progress of the development of minorities",
          "To conduct studies on socio-economic and educational development of minorities",
          "To monitor the working of safeguards for minorities",
          "To suggest appropriate measures for majority communities"
        ],
        correctAnswerIndex: 0,
        explanation: "The primary mandate of the National Commission for Minorities is to evaluate the progress of the development of minorities."
    ),

    Question(
        questionText: "What powers does the Commission have when evaluating or monitoring any matter?",
        options: [
          "Issuing summons for the examination of witnesses and documents",
          "Receiving evidence on affidavits",
          "Summoning and enforcing the attendance of any person from any part of India",
          "All of the above"
        ],
        correctAnswerIndex: 3,
        explanation: "The Commission, while evaluating/monitoring any matter, has powers including issuing summons, receiving evidence on affidavits, and summoning individuals from any part of India."
    ),

    Question(
        questionText: "When does the Commission present its annual report to the Central Government?",
        options: [
          "As and when it thinks necessary",
          "Biannually",
          "Quarterly",
          "Annually"
        ],
        correctAnswerIndex: 3,
        explanation: "The Commission presents its annual report to the Central Government on an annual basis."
    ),

    Question(
        questionText: "What action does the Central Government take upon receiving reports from the Commission?",
        options: [
          "Ignores the reports",
          "Places the reports before each House of Parliament",
          "Sends the reports to the President",
          "Submits the reports to the Prime Minister"
        ],
        correctAnswerIndex: 1,
        explanation: "The Central Government places the Commission's reports before each House of Parliament, along with a memorandum explaining the action taken on the recommendations made by the Commission."
    ),

    Question(
        questionText: "In case a report is related to a matter concerning a State Government, what does the Commission do?",
        options: [
          "Keeps the report confidential",
          "Forwards a copy of the report to the State Government",
          "Ignores the State Government",
          "Publishes the report independently"
        ],
        correctAnswerIndex: 1,
        explanation: "If a report is related to a matter with which any State Government is concerned, the Commission forwards a copy of such report to that State Government."
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
    home: ncm(),
  ));
}

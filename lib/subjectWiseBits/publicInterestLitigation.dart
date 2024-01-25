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

class publicInterestLitigation extends StatefulWidget {
  final String? userIdentifier;

  publicInterestLitigation({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<publicInterestLitigation> createState() => _publicInterestLitigationState();
}

class _publicInterestLitigationState extends State<publicInterestLitigation> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//29.PUBLIC INTEREST LITIGATION

    Question(
      questionText: "What does PIL stand for in the context of law?",
      options: ["Publicity Interest Litigation", "Politics Interest Litigation", "Private Interest Litigation", "Public Interest Litigation"],
      correctAnswerIndex: 3,
      explanation: "PIL stands for Public Interest Litigation in the context of law. It is a legal procedure meant to protect the basic human rights of the weak and disadvantaged.",
    ),

    Question(
      questionText: "According to the Supreme Court, what was PIL essentially meant for?",
      options: ["Providing a panacea for all wrongs", "Serving as a tool for political interests", "Protecting basic human rights of the weak and disadvantaged", "Promoting middle-class interests"],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court stated that PIL was essentially meant to protect the basic human rights of the weak and disadvantaged, providing a procedure for public-spirited individuals to file petitions on their behalf.",
    ),

    Question(
      questionText: "What guidelines did the Supreme Court lay down to prevent misuse of PIL?",
      options: ["Encouraging individual Judges to devise their own procedures", "Discouraging PIL filed for extraneous considerations", "Avoiding prima facie verification of petitioner credentials", "Giving priority to petitions with personal gains"],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court laid down guidelines to discourage the misuse of PIL, encouraging genuine and bona fide petitions while discouraging those filed for extraneous considerations.",
    ),

    Question(
      questionText: "What should the Court be fully satisfied about before entertaining a PIL?",
      options: ["Personal gain of the petitioner", "Substantial public interest involved", "Extraneous motives behind filing PIL", "Individual Judge's procedure"],
      correctAnswerIndex: 1,
      explanation: "The Court should be fully satisfied that substantial public interest is involved before entertaining a PIL, ensuring that the petition aims at the redressal of genuine public harm and injury.",
    ),

    Question(
      questionText: "What action does the Supreme Court recommend against PILs filed by busybodies for extraneous motives?",
      options: ["Imposing exemplary costs", "Encouraging such petitions", "Avoiding any action", "Granting priority to such petitions"],
      correctAnswerIndex: 0,
      explanation: "The Supreme Court recommends discouraging PILs filed by busybodies for extraneous motives by imposing exemplary costs or adopting similar novel methods to curb frivolous petitions.",
    ),
    Question(
      questionText: "What caution does the Court exercise regarding its role in policy matters?",
      options: ["It actively engages in policy decisions", "It rarely transgresses into policy matters", "It avoids jurisdiction while protecting people's rights", "It emphasizes its power akin to Article 142"],
      correctAnswerIndex: 1,
      explanation: "The Court exercises caution not to ordinarily transgress into policy matters and avoids exceeding its jurisdiction while purportedly protecting people's rights.",
    ),

    Question(
      questionText: "What is the extent of the High Court's power compared to Article 142 of the Constitution of India?",
      options: ["The High Court has greater power", "The High Court's power is equal to Article 142", "The High Court lacks power akin to Article 142", "The High Court can exceed the powers of Article 142"],
      correctAnswerIndex: 2,
      explanation: "The High Court, although able to pass orders for complete justice, does not have a power akin to Article 142 of the Constitution of India.",
    ),

    Question(
      questionText: "In what situations should the High Court ordinarily avoid entertaining a writ petition by way of PIL?",
      options: ["When questioning constitutionality of a statute", "When challenging a statutory rule", "When jurisdiction is clear", "When dealing with known areas of judicial review"],
      correctAnswerIndex: 2,
      explanation: "The High Court should ordinarily avoid entertaining a writ petition by way of PIL when questioning the constitutionality or validity of a statute or a statutory rule.",
    ),
    Question(
      questionText: "According to the Supreme Court's guidelines, which category of matters will ordinarily be entertained as PIL?",
      options: [
        "Landlord-tenant matters",
        "Petitions for early hearing of cases pending in High Courts",
        "Petitions against police for refusing to register a case",
        "Complaints against Central/State Government departments and Local Bodies"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the Supreme Court's guidelines, matters like petitions against police for refusing to register a case will ordinarily be entertained as PIL.",
    ),

    Question(
      questionText: "Which category of matters will not be entertained as PIL according to the guidelines?",
      options: [
        "Complaints against Central/State Government departments and Local Bodies",
        "Petitions against atrocities on women",
        "Petitions for family pension",
        "Admission to medical and other educational institutions"
      ],
      correctAnswerIndex: 0,
      explanation: "According to the guidelines, matters such as complaints against Central/State Government departments and Local Bodies will not be entertained as PIL.",
    ),

    Question(
      questionText: "What is one of the categories mentioned for cases that will not be entertained as PIL?",
      options: [
        "Bonded labor matters",
        "Service matters and those pertaining to pension and gratuity",
        "Petitions against police harassment",
        "Petitions for release after having completed 14 years in jail"
      ],
      correctAnswerIndex: 1,
      explanation: "Service matters and those pertaining to pension and gratuity are mentioned as one of the categories that will not be entertained as PIL.",
    ),

    Question(
      questionText: "According to the guidelines, what type of petitions will ordinarily be entertained as PIL?",
      options: [
        "Petitions for admission to medical and other educational institutions",
        "Petitions against police harassment",
        "Petitions from riot victims",
        "Petitions from landlords about tenant matters"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the guidelines, petitions from riot victims will ordinarily be entertained as PIL.",
    ),
    Question(
      questionText: "Where did the concept of Public Interest Litigation (PIL) originate and develop?",
      options: ["India in the 1980s", "USA in the 1960s", "Europe in the 1970s", "Asia in the 1990s"],
      correctAnswerIndex: 1,
      explanation: "The concept of Public Interest Litigation (PIL) originated and developed in the USA in the 1960s, designed to provide legal representation to previously unrepresented groups and interests.",
    ),

    Question(
      questionText: "Who were the pioneers of the concept of PIL in India?",
      options: ["Justice V.R. Krishna Iyer and Justice P.N. Bhagwati", "Justice V.R. Krishna Iyer and Justice P.S. Narayana", "Justice P.N. Bhagwati and Justice A.K. Sikri", "Justice A.P. Shah and Justice R.M. Lodha"],
      correctAnswerIndex: 0,
      explanation: "Justice V.R. Krishna Iyer and Justice P.N. Bhagwati were the pioneers of the concept of PIL in India.",
    ),

    Question(
      questionText: "What does PIL stand for and what is its main outcome according to the text?",
      options: [
        "Public Interest Litigation; outcome of judicial restraint",
        "Private Individual Litigation; outcome of legislative activism",
        "Public Interest Litigation; outcome of judicial activism",
        "Private Individual Litigation; outcome of legislative restraint"
      ],
      correctAnswerIndex: 2,
      explanation: "PIL stands for Public Interest Litigation, and it is the most popular form or manifestation of judicial activism in India.",
    ),

    Question(
      questionText: "What is the main purpose of PIL, as mentioned in the text?",
      options: [
        "Vindication of personal rights",
        "Facilitating access to justice for the wealthy",
        "Maintaining the rule of law and facilitating access to justice for the weaker sections",
        "Exercising judicial restraint in all matters"
      ],
      correctAnswerIndex: 2,
      explanation: "The main purposes of PIL are vindication of the rule of law, facilitating effective access to justice for the socially and economically weaker sections, and meaningful realization of fundamental rights.",
    ),

    Question(
      questionText: "What is one of the features of PIL according to the text?",
      options: [
        "Adversarial character like traditional litigation",
        "Litigation for the enforcement of individual rights",
        "Creative and assertive role of the Court",
        "Adherence to traditional dispute resolution mechanisms"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the features of PIL is the creative and assertive role of the Court, which is different from traditional litigation.",
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
    home: publicInterestLitigation(),
  ));
}

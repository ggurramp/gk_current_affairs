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

class nhrc extends StatefulWidget {
  final String? userIdentifier;

  nhrc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nhrc> createState() => _nhrcState();
}

class _nhrcState extends State<nhrc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//57.NATIONAL HUMAN RIGHTS COMMISSION

    Question(
      questionText: "In which year was the National Human Rights Commission established?",
      options: ["1993", "1952", "2016", "1979"],
      correctAnswerIndex: 0,
      explanation: "The National Human Rights Commission was established in 1993 under the Protection of Human Rights Act.",
    ),

    Question(
      questionText: "What are the specific objectives of the National Human Rights Commission?",
      options: [
        "To execute the national Plan",
        "To ensure balanced and rapid development",
        "To review the working of the national Plan",
        "To strengthen the institutional arrangements for addressing human rights issues"
      ],
      correctAnswerIndex: 3,
      explanation: "The specific objectives of the National Human Rights Commission include strengthening institutional arrangements for addressing human rights issues.",
    ),

    Question(
      questionText: "Who appoints the chairperson and members of the National Human Rights Commission?",
      options: [
        "The Chief Justice of India",
        "The Prime Minister",
        "The President",
        "The Home Minister"
      ],
      correctAnswerIndex: 2,
      explanation: "The President appoints the chairperson and members of the National Human Rights Commission on the recommendations of a six-member committee.",
    ),

    Question(
      questionText: "Under what circumstances can the President remove the chairperson or any member of the National Human Rights Commission?",
      options: [
        "Proven misbehavior or incapacity",
        "Participation in any political activity",
        "Failure to attend Commission meetings",
        "Accepting an honorary position"
      ],
      correctAnswerIndex: 0,
      explanation: "The President can remove the chairperson or any member under circumstances of proven misbehavior or incapacity, subject to inquiry by the Supreme Court.",
    ),

    Question(
      questionText: "What is one of the functions of the National Human Rights Commission?",
      options: [
        "To regulate its own procedure",
        "To provide financial compensation to victims",
        "To participate in political proceedings",
        "To establish its headquarters in Delhi"
      ],
      correctAnswerIndex: 0,
      explanation: "One of the functions of the National Human Rights Commission is to regulate its own procedure.",
    ),

    Question(
      questionText: "Under what circumstances can the National Human Rights Commission intervene in legal proceedings?",
      options: [
        "In any proceeding involving human rights violations",
        "Only in cases filed by the government",
        "When specifically ordered by the court",
        "Only in cases of terrorism"
      ],
      correctAnswerIndex: 0,
      explanation: "The National Human Rights Commission can intervene in any legal proceeding involving allegations of human rights violations.",
    ),

    Question(
      questionText: "What is the maximum time limit within which the National Human Rights Commission can inquire into a matter after the alleged violation?",
      options: [
        "One month",
        "One year",
        "Six months",
        "Two years"
      ],
      correctAnswerIndex: 1,
      explanation: "The National Human Rights Commission can inquire into a matter within one year from the date on which the act constituting the violation is alleged to have been committed.",
    ),

    Question(
      questionText: "What steps can the National Human Rights Commission take during or upon the completion of an inquiry?",
      options: [
        "Only recommend financial compensation",
        "Only recommend prosecution",
        "Only recommend interim relief",
        "Any of the mentioned options"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Human Rights Commission may recommend compensation, prosecution, interim relief, or approach the Supreme Court or high court for necessary directions.",
    ),

    Question(
      questionText: "According to the Paris Principles, what infrastructure should National Human Rights Institutions have?",
      options: ["Financial control by the Government", "Complete dependence on the Government", "Adequate funding and staff for independence", "Direct control by the Ministry of Home Affairs"],
      correctAnswerIndex: 2,
      explanation: "According to the Paris Principles, National Human Rights Institutions should have adequate funding and staff to ensure independence from the government and financial control that might affect their independence from the perspective of human rights.",
    ),

    Question(
      questionText: "How does the National Human Rights Commission function regarding the recommendations it makes?",
      options: ["Its recommendations are binding on the government", "It can punish violators of human rights", "Its recommendations are not binding, but the government considers the cases forwarded by it", "It awards monetary relief to victims"],
      correctAnswerIndex: 2,
      explanation: "The National Human Rights Commission's recommendations are not binding, but the government considers the cases forwarded by it. It has a recommendatory role, and the government cannot wash away its recommendations.",
    ),

    Question(
      questionText: "What is the financial source for the National Human Rights Commission, and what does it spend it on?",
      options: ["Private donations", "Grants-in-aid from the Ministry of Home Affairs", "Direct funding from the government", "Financial autonomy for purchasing vehicles"],
      correctAnswerIndex: 1,
      explanation: "The National Human Rights Commission receives grants-in-aid every year from the Government of India, Ministry of Home Affairs. It may spend such sums as it thinks fit for performing its functions.",
    ),

    Question(
      questionText: "What are the administrative constraints faced by the National Human Rights Commission?",
      options: ["Financial constraints", "Manpower constraints", "Administrative and financial autonomy", "Infrastructure development"],
      correctAnswerIndex: 2,
      explanation: "The National Human Rights Commission faces administrative constraints, and there is a need for devolution of powers to the Chairperson in administrative as well as financial matters.",
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
    home: nhrc(),
  ));
}

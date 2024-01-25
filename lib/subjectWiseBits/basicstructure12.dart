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

class basicstructure_12 extends StatefulWidget {
  final String? userIdentifier;

  basicstructure_12({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<basicstructure_12> createState() => _basicstructure_12State();
}

class _basicstructure_12State extends State<basicstructure_12> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    //Chapter 12 Basic structure of the constitution
    Question(
      questionText: "What is the current position regarding the Parliament's power to amend the Constitution, including Fundamental Rights, under Article 368?",
      options: [
        "The Parliament cannot amend any part of the Constitution.",
        "The Parliament can amend any part of the Constitution without limitations.",
        "The Parliament can amend any part of the Constitution except Fundamental Rights.",
        "The Parliament can amend any part of the Constitution, but not the 'basic structure' of the Constitution."
      ],
      correctAnswerIndex: 3,
      explanation: "The current position is that the Parliament, under Article 368, can amend any part of the Constitution, including Fundamental Rights, as long as it does not affect the 'basic structure' of the Constitution.",
    ),

    Question(
      questionText: "What is the Supreme Court yet to define or clarify regarding the 'basic structure' of the Constitution?",
      options: [
        "Whether the Parliament can amend the Fundamental Rights.",
        "The scope of judicial review.",
        "What constitutes the 'basic structure' of the Constitution.",
        "The separation of powers between the legislature, executive, and judiciary."
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court is yet to define or clarify what constitutes the 'basic structure' of the Constitution.",
    ),

    Question(
      questionText: "Which of the following is considered an element of the 'basic structure' of the Constitution?",
      options: [
        "Socio-economic justice",
        "Advisory jurisdiction of the Supreme Court",
        "Formation of states",
        "Quorum in Parliament"
      ],
      correctAnswerIndex: 0,
      explanation: "Socio-economic justice is considered an element of the 'basic structure' of the Constitution.",
    ),

    Question(
      questionText: "What is one of the 'basic features' of the Constitution according to the Supreme Court?",
      options: [
        "Absolute power of Parliament",
        "Welfare state",
        "Unlimited amendments by Parliament",
        "Complete separation of powers"
      ],
      correctAnswerIndex: 1,
      explanation: "Welfare state (socio-economic justice) is considered one of the 'basic features' of the Constitution.",
    ),

    Question(
      questionText: "According to the Supreme Court, what is the limited power of Parliament with respect to amending the Constitution?",
      options: [
        "Parliament can repeal the Constitution.",
        "Parliament cannot amend Directive Principles.",
        "Parliament can expand its amending power.",
        "Parliament cannot alter the 'basic structure' of the Constitution."
      ],
      correctAnswerIndex: 3,
      explanation: "According to the Supreme Court, Parliament cannot alter the 'basic structure' of the Constitution.",
    ),
    Question(
      questionText: "In the Shankari Prasad case (1951), what did the Supreme Court rule regarding the power of Parliament to amend Fundamental Rights?",
      options: [
        "Parliament cannot amend Fundamental Rights.",
        "Parliament has the power to amend Fundamental Rights under Article 368.",
        "Fundamental Rights cannot be amended at all.",
        "The Constitution does not grant the power to amend Fundamental Rights."
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court ruled in the Shankari Prasad case (1951) that the power of Parliament to amend the Constitution under Article 368 includes the power to amend Fundamental Rights.",
    ),

    Question(
      questionText: "What did the Golak Nath case (1967) decide regarding the Parliament's power to abridge or take away Fundamental Rights?",
      options: [
        "Parliament can abridge or take away Fundamental Rights.",
        "Fundamental Rights are 'transcendental and immutable.'",
        "Parliament has no power to amend Fundamental Rights.",
        "Fundamental Rights can only be amended with a three-fourths majority."
      ],
      correctAnswerIndex: 2,
      explanation: "In the Golak Nath case (1967), the Supreme Court ruled that Parliament cannot abridge or take away Fundamental Rights, reversing its earlier stand.",
    ),

    Question(
      questionText: "How did the Parliament react to the Supreme Court's decision in the Golak Nath case (1967)?",
      options: [
        "Enacted the 24th Amendment Act (1971)",
        "Enacted the 42nd Amendment Act (1976)",
        "Repealed Article 368",
        "Sought a review of the Golak Nath case"
      ],
      correctAnswerIndex: 0,
      explanation: "In response to the Golak Nath case (1967), the Parliament enacted the 24th Amendment Act (1971) to assert its power to abridge or take away Fundamental Rights under Article 368.",
    ),

    Question(
      questionText: "According to the Kesavananda Bharati case (1973), what did the Supreme Court rule regarding the 'basic structure' of the Constitution?",
      options: [
        "The basic structure is subject to regular amendments.",
        "Parliament cannot amend the basic structure.",
        "The basic structure is not defined in the Constitution.",
        "The 'basic structure' doctrine is not applicable."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Kesavananda Bharati case (1973), the Supreme Court ruled that the Parliament cannot amend the 'basic structure' of the Constitution.",
    ),

    Question(
      questionText: "How did the Parliament respond to the Supreme Court's decision in the Indira Nehru Gandhi case (1975)?",
      options: [
        "Enacted the 39th Amendment Act (1975)",
        "Enacted the 42nd Amendment Act (1976)",
        "Sought a review of the Indira Nehru Gandhi case",
        "Repealed Article 13"
      ],
      correctAnswerIndex: 1,
      explanation: "In response to the Indira Nehru Gandhi case (1975), the Parliament enacted the 42nd Amendment Act (1976) to limit judicial review and assert its constituent power.",
    ),

    Question(
      questionText: "What did the Supreme Court rule in the Minerva Mills case (1980) regarding the Parliament's power to amend the Constitution?",
      options: [
        "Parliament can expand its amending power without limitations.",
        "Parliament cannot amend the Constitution at all.",
        "The 'basic structure' doctrine is not applicable.",
        "Parliament cannot convert limited power into unlimited power."
      ],
      correctAnswerIndex: 3,
      explanation: "In the Minerva Mills case (1980), the Supreme Court ruled that Parliament cannot, under Article 368, expand its amending power to acquire an absolute right to repeal or abrogate the Constitution.",
    ),
    Question(
      questionText: "Which case is popularly known as the 'Fundamental Rights Case'?",
      options: [
        "Indira Nehru Gandhi Case (1975)",
        "Minerva Mills Case (1980)",
        "Kesavananda Bharati Case (1973)",
        "S.R. Bommai Case (1994)"
      ],
      correctAnswerIndex: 2,
      explanation: "Kesavananda Bharati Case (1973) is popularly known as the 'Fundamental Rights Case.'",
    ),

    Question(
      questionText: "What is considered one of the 'basic features' of the Constitution according to the Indira Nehru Gandhi Case (1975)?",
      options: [
        "Separation of powers",
        "Rule of law",
        "Welfare state",
        "Sovereignty and unity of India"
      ],
      correctAnswerIndex: 3,
      explanation: "Sovereignty and unity of India is considered one of the 'basic features' of the Constitution according to the Indira Nehru Gandhi Case (1975).",
    ),

    Question(
      questionText: "Which case reaffirmed the doctrine of the 'basic structure' and clarified that it applies to constitutional amendments enacted after April 24, 1973?",
      options: [
        "Indra Sawhney II Case (1999)",
        "S.P. SfJmpath Kumar Case (1986)",
        "Woman Roo Cases (1980)",
        "Kesavananda Bharati Case (1973)"
      ],
      correctAnswerIndex: 0,
      explanation: "Indra Sawhney II Case (1999) reaffirmed the doctrine of the 'basic structure' and clarified that it applies to constitutional amendments enacted after April 24, 1973.",
    ),

    Question(
      questionText: "Which case is known as the 'Election Case'?",
      options: [
        "Minerva Mills Case (1980)",
        "Indra Sawhney Case (1992)",
        "Indira Nehru Gandhi Case (1975)",
        "L Chandra Kumar Case (1997)"
      ],
      correctAnswerIndex: 2,
      explanation: "Indira Nehru Gandhi Case (1975) is known as the 'Election Case.'",
    ),

    Question(
      questionText: "In the context of the 'basic structure' of the Constitution, what is mentioned as an element declared by the Supreme Court in the M. Nagaraj Case (2006)?",
      options: [
        "Federalism",
        "Democracy",
        "Social Justice",
        "Judicial review"
      ],
      correctAnswerIndex: 2,
      explanation: "In the M. Nagaraj Case (2006), Social Justice is mentioned as an element of the 'basic structure' of the Constitution.",
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
            MyBannerAdWidget(), // Add the banner ad here
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
    home: basicstructure_12(),
  ));
}

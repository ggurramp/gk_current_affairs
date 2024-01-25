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

class preambleOfTheConstitution extends StatefulWidget {
  final String? userIdentifier;

  preambleOfTheConstitution({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<preambleOfTheConstitution> createState() => _preambleOfTheConstitutionState();
}

class _preambleOfTheConstitutionState extends State<preambleOfTheConstitution> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//Chapter:5 Preamble of the constitution questions
    Question(
        questionText: "What is the purpose of the Preamble in the Indian Constitution?",
        options: [
          "To outline the fundamental rights of citizens",
          "To describe the distribution of powers between different organs of the government",
          "To introduce and summarize the essence of the Constitution",
          "To lay down the procedure for amending the Constitution"
        ],
        correctAnswerIndex: 2,
        explanation: "The purpose of the Preamble in the Indian Constitution is to introduce and summarize the essence of the Constitution, outlining its foundational principles and values."
    ),
    Question(
        questionText: "Which elements constitute the contents of the Preamble in the Indian Constitution?",
        options: [
          "Only the source of authority (people of India)",
          "Source of authority, nature of the Indian state, objectives of the Constitution, date of adoption",
          "Nature of the Indian state and the date of adoption",
          "Only the objectives of the Constitution"
        ],
        correctAnswerIndex: 1,
        explanation: "The contents of the Preamble in the Indian Constitution include the source of authority, nature of the Indian state, objectives of the Constitution, and the date of adoption."
    ),

    Question(
        questionText: "What does the term 'Fraternity' in the Preamble of the Indian Constitution primarily emphasize?",
        options: [
          "Economic prosperity",
          "Cultural diversity",
          "Political unity and integrity",
          "Individual freedom"
        ],
        correctAnswerIndex: 2,
        explanation: "The term 'Fraternity' in the Preamble of the Indian Constitution primarily emphasizes political unity and integrity."
    ),
    Question(
        questionText: "What does the term 'Secular' in the Preamble of the Indian Constitution signify?",
        options: [
          "Equal support for all religions and the state's neutral stance",
          "Preferential treatment for a specific religion",
          "Government control over religious institutions",
          "Dominance of one religion over others"
        ],
        correctAnswerIndex: 0,
        explanation: "The term 'Secular' in the Preamble signifies ensuring equal support for all religions and the state's neutral stance."
    ),

    Question(
        questionText: "What does the term 'Socialist' in the Preamble of the Indian Constitution emphasize?",
        options: [
          "Economic monopoly by the government",
          "Promotion of class discrimination",
          "Evolving toward a democratic socialism, emphasizing equality and social ownership",
          "Capitalistic principles in economic policies"
        ],
        correctAnswerIndex: 2,
        explanation: "The term 'Socialist' in the Preamble emphasizes evolving toward a democratic socialism, emphasizing equality and social ownership."
    ),
    Question(
        questionText: "Which of the following correctly defines the nature of the Indian State as outlined in the Preamble?",
        options: [
          "Monarchy",
          "Oligarchy",
          "Sovereign, socialist, secular, democratic, republic",
          "Totalitarianism"
        ],
        correctAnswerIndex: 2,
        explanation: "The Preamble defines the nature of the Indian State as sovereign, socialist, secular, democratic, and a republic."
    ),

    Question(
        questionText: "What key concept does the term 'Democratic' in the Preamble emphasize?",
        options: [
          "Religious dominance",
          "Popular sovereignty through representative democracy",
          "Economic capitalism",
          "Military rule"
        ],
        correctAnswerIndex: 1,
        explanation: "The term 'Democratic' in the Preamble emphasizes popular sovereignty through representative democracy."
    ),
    Question(
        questionText: "Under what provision of the Indian Constitution can the Preamble be amended?",
        options: [
          "Article 370",
          "Article 356",
          "Article 368",
          "Article 352"
        ],
        correctAnswerIndex: 2,
        explanation: "The Preamble can be amended under Article 368 of the Indian Constitution."
    ),

    Question(
        questionText: "What restriction exists concerning the amendment of the Preamble?",
        options: [
          "It cannot be amended under any circumstance.",
          "It can be amended freely without any restrictions.",
          "It can be amended except for altering its fundamental features.",
          "It can only be amended with the President's permission."
        ],
        correctAnswerIndex: 2,
        explanation: "The Preamble can be amended except for altering its fundamental features as per the restrictions under Article 368."
    ),
    Question(
        questionText: "What does the term 'Secular' mean in the context of the Preamble?",
        options: [
          "Support for a particular religion by the state.",
          "Equal status and neutral stance towards all religions by the state.",
          "Complete absence of religion in the state's affairs.",
          "Promotion of a single religion by the state."
        ],
        correctAnswerIndex: 1,
        explanation: "In the Preamble, 'Secular' refers to the state's neutral stance towards all religions, ensuring equal support without favoring any particular religion."
    ),

    Question(
        questionText: "What does 'Democratic' signify in the context of the Preamble?",
        options: [
          "Absolute rule by a single individual.",
          "Power vested in the hands of the military.",
          "Popular sovereignty through representative democracy.",
          "Exclusion of citizens from participating in governance."
        ],
        correctAnswerIndex: 2,
        explanation: "In the Preamble, 'Democratic' signifies popular sovereignty through representative democracy, where the people hold the supreme power."
    ),

    Question(
        questionText: "What is the essence of the term 'Justice' as per the Preamble?",
        options: [
          "Societal favoritism towards specific groups.",
          "Political rights granted only to certain citizens.",
          "Absence of economic inequalities among citizens.",
          "Securing social, economic, and political rights for all individuals."
        ],
        correctAnswerIndex: 3,
        explanation: "The term 'Justice' in the Preamble encompasses securing social, economic, and political rights for all individuals, ensuring equality."
    )



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
    home: preambleOfTheConstitution(),
  ));
}

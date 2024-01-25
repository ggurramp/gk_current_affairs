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

class rlg extends StatefulWidget {
  final String? userIdentifier;

  rlg({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<rlg> createState() => _rlgState();
}

class _rlgState extends State<rlg> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//75.RIGHTS AND LIABILITIES OF THE GOVERNMENT

    Question(
      questionText: "According to Articles 294 to 300 in Part XlI of the Constitution, what happens to the property, rights, and obligations of the Dominion of India or princely states?",
      options: [
        "They become the property of the King of England.",
        "They remain with the Dominion of India.",
        "They are vested in the Union or the corresponding state.",
        "They become the property of the ruler of the Indian state."
      ],
      correctAnswerIndex: 2,
      explanation: "All property and assets of the Dominion of India or princely states, before the Constitution's commencement, become vested in the Union or the corresponding state.",
    ),

    Question(
      questionText: "According to Article 300, what legal entities are considered as juristic personalities for suits and proceedings?",
      options: [
        "Government of India and states",
        "Individual officials",
        "King of England and rulers of princely states",
        "East India Company"
      ],
      correctAnswerIndex: 0,
      explanation: "Article 300 establishes that the Union of India and states are considered as juristic personalities for suits and proceedings, not the Government of the Union or the government of states.",
    ),

    Question(
      questionText: "What conditions are mandatory for contracts entered into by the Union or a state, according to the Constitution?",
      options: [
        "Approval by the King of England",
        "Approval by the Governor-General",
        "Expressed to be made by the president or governor, executed on their behalf, and directed or authorized by them",
        "Approval by the Parliament"
      ],
      correctAnswerIndex: 2,
      explanation: "The Constitution mandates that contracts entered into by the Union or a state must be expressed to be made by the president or governor, executed on their behalf, and directed or authorized by them.",
    ),

    Question(
      questionText: "What historical principle led to the immunity of the East India Company from legal liability for its sovereign functions?",
      options: [
        "Doctrine of Executive Privilege",
        "Doctrine of Sovereign Immunity",
        "Rule of Non-Interference",
        "Principle of Non-Aggression"
      ],
      correctAnswerIndex: 1,
      explanation: "The immunity of the East India Company from legal liability for its sovereign functions was based on the English Common Law principle known as the 'Doctrine of Sovereign Immunity.'",
    ),

    Question(
      questionText: "In which case did the Supreme Court criticize the doctrine of sovereign immunity and adopt a liberal approach towards the tortuous liability of the State?",
      options: [
        "P and O Steam Navigation Company case",
        "Kasturilal case",
        "Nagendra Rao case",
        "Common Cause case"
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court criticized the doctrine of sovereign immunity in the Nagendra Rao case (1994) and adopted a liberal approach towards the tortuous liability of the State.",
    ),

    Question(
      questionText: "What immunities are conferred to the president of India and governors with respect to their official acts?",
      options: [
        "They can be sued during their term of office for any act done in the exercise of their official powers and duties.",
        "They cannot be sued during their term of office for any act done in the exercise of their official powers and duties.",
        "They are immune from civil proceedings during their term of office.",
        "They are immune from criminal proceedings during their term of office."
      ],
      correctAnswerIndex: 1,
      explanation: "The president of India and governors cannot be sued during their term of office for any act done in the exercise and performance of their official powers and duties.",
    ),

    Question(
      questionText: "What immunity do ministers enjoy regarding their official acts?",
      options: [
        "They are immune from all legal proceedings.",
        "They are immune from criminal proceedings only.",
        "They are immune from civil proceedings only.",
        "They do not enjoy any immunity for their official acts."
      ],
      correctAnswerIndex: 3,
      explanation: "Ministers do not enjoy any immunity for their official acts, and they can be sued for crimes as well as torts in the ordinary courts like common citizens.",
    ),

    Question(
      questionText: "Under the Judicial Officers Protection Act (1850), what does it specify regarding the liability of judicial officers for their official acts?",
      options: [
        "They are fully liable to be sued in civil court for any act done by them.",
        "They cannot be sued for any act done in the discharge of their official duty.",
        "They are liable to be sued only with the permission of the president.",
        "They are immune from criminal proceedings only."
      ],
      correctAnswerIndex: 1,
      explanation: "The Judicial Officers Protection Act (1850) specifies that judicial officers acting judicially cannot be sued in any civil court for any act done by them in the discharge of their official duty.",
    ),

    Question(
      questionText: "What immunity do civil servants have regarding official contracts?",
      options: [
        "They are personally liable for official contracts.",
        "They are immune from any legal liability for official contracts.",
        "They are liable only if the contract is made without complying with the conditions specified in the Constitution.",
        "They enjoy immunity from legal liability for tortious acts only."
      ],
      correctAnswerIndex: 1,
      explanation: "Civil servants are conferred personal immunity from legal liability for official contracts, meaning they are not personally liable for such contracts.",
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
    home: rlg(),
  ));
}

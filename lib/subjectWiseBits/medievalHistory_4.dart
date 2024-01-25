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

class medievalHistory_4 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_4({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_4> createState() => _medievalHistory_4State();
}

class _medievalHistory_4State extends State<medievalHistory_4> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
        questionText: "Under whose orders the Mahabharata was translated in Bengali?",
        options: ["Nusrat Shah", "Haji Ilyas", "Alauddin Hossain Shah", "Jalaluddin"],
        correctAnswerIndex: 0,
        explanation: "The Mahabharata was translated into Bengali under the orders of Nusrat Shah."
    ),

    Question(
        questionText: "Which of the following Indian states that Akbar could not annex?",
        options: ["Bihar", "Assam", "Kashmir", "Bengal"],
        correctAnswerIndex: 1,
        explanation: "Akbar could not annex Assam."
    ),

    Question(
        questionText: "Who was called 'Grandfather of Andhra poetry'?",
        options: ["Krishnadeva Rao", "Bhaskar Pandit", "Peddan", "Arbidu"],
        correctAnswerIndex: 2,
        explanation: "'Grandfather of Andhra poetry' was Peddan."
    ),

    Question(
        questionText: "Who was the founder of the Slave dynasty?",
        options: ["Nasiruddin", "Qutab-ud-din Aibak", "Iltutmish", "Balban"],
        correctAnswerIndex: 1,
        explanation: "Qutab-ud-din Aibak was the founder of the Slave dynasty."
    ),

    Question(
        questionText: "Who was the Mughal Emperor during whose reign Nadir Shah invaded India?",
        options: ["Muhammad Shah", "Shah Alam", "Farrukhsiyar", "Bahadur Shah"],
        correctAnswerIndex: 0,
        explanation: "Nadir Shah invaded India during the reign of Muhammad Shah."
    ),

    Question(
        questionText: "Who built the famous Adina Mosque in Bengal?",
        options: ["Azam Shah", "Hamza Shah", "Iliyas Shah", "Sikandar Shah"],
        correctAnswerIndex: 3,
        explanation: "The Adina Mosque in Bengal was built by Sikandar Shah."
    ),

    Question(
        questionText: "Woman folk of which region performed the right of 'Jawhar'?",
        options: ["Rajputana", "Bengal", "Malwa", "Gujarat"],
        correctAnswerIndex: 0,
        explanation: "Women of Rajputana performed the right of 'Jawhar'."
    ),

    Question(
        questionText: "How many times did Sultan Mahmud of Ghazni invade India?",
        options: ["5", "20", "12", "17"],
        correctAnswerIndex: 3,
        explanation: "Sultan Mahmud of Ghazni invaded India 17 times."
    ),

    Question(
        questionText: "Who was the founder of the Bahamaani dynasty?",
        options: ["Firoz Shah", "Ahmad Shah", "Ala-ud-din Hasan Bahman Shah", "Muhammad Shah I"],
        correctAnswerIndex: 2,
        explanation: "Ala-ud-din Hasan Bahman Shah was the founder of the Bahamaani dynasty."
    ),

    Question(
        questionText: "Who first introduced the Rationing System?",
        options: ["Md. Bin Tuglaq", "Ibrahim Lodi", "Illtutmish", "Alauddin Khalji"],
        correctAnswerIndex: 3,
        explanation: "Alauddin Khalji first introduced the Rationing System."
    ),

    Question(
        questionText: "The Sultan who was called 'Akbar of Sultanate' was",
        options: ["Balban", "Iltutmish", "Firuz Shah Tuglaq", "Alauddin Khilji"],
        correctAnswerIndex: 2,
        explanation: "Firuz Shah Tuglaq was called the 'Akbar of Sultanate'."
    ),

    Question(
        questionText: "Who was Jalaluddin Mangabarni?",
        options: ["Ruler of Mongolia", "Ruler of Khwarizm or Khiba", "Ruler of Afghanistan", "Ruler of Persia"],
        correctAnswerIndex: 1,
        explanation: "Jalaluddin Mangabarni was the ruler of Khwarizm or Khiba."
    ),

    Question(
        questionText: "What does the word Iqta stand for?",
        options: ["State's share of 1/3 of spoils of war", "The grant of revenue from a territory in lieu of salary", "Law of primogeniture", "Crown lands donated to army officers"],
        correctAnswerIndex: 1,
        explanation: "The word Iqta stands for the grant of revenue from a territory in lieu of salary."
    ),

    Question(
        questionText: "Who was the first real king of the Sultanate?",
        options: ["Balban", "Alauddin", "Qutubuddin", "Illtutmish"],
        correctAnswerIndex: 3,
        explanation: "Illtutmish was the first real king of the Sultanate."
    ),

    Question(
        questionText: "Ibn Battuta came to India during which ruler's reign?",
        options: ["Illtutmish", "Alauddin Khilji", "Akbar", "Muhammad bin Tughlaq"],
        correctAnswerIndex: 3,
        explanation: "Ibn Battuta came to India during the reign of Muhammad bin Tughlaq."
    ),

    Question(
        questionText: "The historian who left an account of the reign of Aurangzeb is",
        options: ["Firdousi", "Barani", "Kafi Khan", "Alberoni"],
        correctAnswerIndex: 2,
        explanation: "The historian who left an account of the reign of Aurangzeb is Kafi Khan."
    ),

    Question(
        questionText: "The Sultanate coins Jital, Shanghai, and Tanka were made of",
        options: ["Silver, Gold, Copper", "Silver, Gold, Silver", "Copper, Silver, Silver", "Gold, Copper, Lead"],
        correctAnswerIndex: 2,
        explanation: "The Sultanate coins Jital, Shanghai, and Tanka were made of Copper, Silver, Silver."
    ),

    Question(
        questionText: "The author of Futuh-us-Salatin is",
        options: ["Nasru", "Batutah", "Barni", "Isami"],
        correctAnswerIndex: 3,
        explanation: "The author of Futuh-us-Salatin is Isami."
    ),

    Question(
        questionText: "Who among the following visited Jahangir's Court?",
        options: ["Sir Thomas Roe", "Athanasius Nikitin", "Niccolo Conti", "Francois Bernier"],
        correctAnswerIndex: 0,
        explanation: "Sir Thomas Roe visited Jahangir's Court."
    ),

    Question(
        questionText: "Who was the opponent of Babar at the battle of Panipat?",
        options: ["Mahmud Lodi", "Medini Roy", "Ibrahim Lodi", "Rana Sanga"],
        correctAnswerIndex: 2,
        explanation: "Ibrahim Lodi was the opponent of Babar at the Battle of Panipat."
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
    home: medievalHistory_4(),
  ));
}

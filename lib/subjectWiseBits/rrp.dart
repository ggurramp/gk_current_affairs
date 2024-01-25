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

class rrp extends StatefulWidget {
  final String? userIdentifier;

  rrp({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<rrp> createState() => _rrpState();
}

class _rrpState extends State<rrp> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


   // 79.ROLE OF REGIONAL PARTIES

    Question(
        questionText: "What are the main features of regional parties in the Indian Political System?",
        options: [
          "Limited electoral base to a single region.",
          "Primarily concerned with exploiting local discontent or preserving primordial demands.",
          "Focused on capturing political power at the state level.",
          "Desire for greater regional autonomy of states in the Indian Union."
        ],
        correctAnswerIndex: 0,
        explanation: "Regional parties in the Indian Political System generally operate within a particular state or specific region, with a limited electoral base to a single region."
    ),

    Question(
        questionText: "Which category of regional parties includes examples like Shiromani Akali Dal, National Conference, and Shiv Sena?",
        options: ["Based on regional culture or ethnicity", "All-India outlook without a national electoral base", "Formed by a split in national parties", "Formed by individual leaders based on charisma"],
        correctAnswerIndex: 0,
        explanation: "Regional parties based on regional culture or ethnicity include examples like Shiromani Akali Dal, National Conference, and Shiv Sena."
    ),

    Question(
        questionText: "What are some reasons for the emergence of regional parties in India?",
        options: [
          "Cultural and ethnic pluralism of Indian society.",
          "Economic disparities and regional imbalances in development.",
          "Desire of certain sections or areas to maintain a separate identity.",
          "All of the above."
        ],
        correctAnswerIndex: 3,
        explanation: "The emergence of regional parties in India is influenced by cultural and ethnic pluralism, economic disparities, regional imbalances, and the desire to maintain separate identities among certain sections or areas."
    ),

    Question(
        questionText: "What role do regional parties play in Indian politics?",
        options: [
          "Providing better governance at the regional level.",
          "Challenging the one-party dominant system.",
          "Making a strong impact on centre-state relations.",
          "All of the above."
        ],
        correctAnswerIndex: 3,
        explanation: "Regional parties play various roles in Indian politics, including providing better governance at the regional level, challenging the one-party dominant system, and making a strong impact on centre-state relations."
    ),

    Question(
      questionText: "How have regional parties contributed to parliamentary democracy?",
      options: [
        "Increasing political consciousness and interest in politics.",
        "Exposing the partisan role of Governors in key appointments.",
        "Playing a significant role in the era of coalition politics.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "Regional parties have contributed to parliamentary democracy by increasing political consciousness, exposing partisan roles, and playing a significant role in the era of coalition politics.",
    ),

    Question(
        questionText: "What are some negative aspects of the role played by regional parties in Indian politics?",
        options: [
          "Giving more importance to national interests over regional interests.",
          "Encouraging regionalism, casteism, linguism, communalism, and tribalism.",
          "Successfully resolving inter-state water disputes and border issues.",
          "Promoting economic development through non-populist measures."
        ],
        correctAnswerIndex: 1,
        explanation: "Negative aspects of the role of regional parties include encouraging regionalism, casteism, linguism, communalism, and tribalism, which become hurdles to national integration."
    ),

    Question(
        questionText: "What is one consequence of regional parties focusing more on populist schemes to expand their electoral base?",
        options: [
          "Enhancing state economy and development.",
          "Adversely affecting state economy and development.",
          "Contributing to national integration.",
          "Fostering political consciousness among the masses."
        ],
        correctAnswerIndex: 1,
        explanation: "Focusing more on populist schemes to expand their electoral base can adversely affect the state economy and development, according to the text."
    ),

    Question(
        questionText: "How have regional parties influenced decision-making and policy-making in coalition governments at the center?",
        options: [
          "By prioritizing national interests.",
          "By discouraging the consideration of regional factors.",
          "By forcing the central leadership to yield to their demands.",
          "By promoting unbiased and inclusive policies."
        ],
        correctAnswerIndex: 2,
        explanation: "Regional parties influence decision-making and policy-making in coalition governments by forcing the central leadership to yield to their demands, introducing regional factors."
    ),

    Question(
      questionText: "What role do regional parties play in the unresolution of certain issues in India?",
      options: [
        "They contribute to the resolution of inter-state water disputes.",
        "They are responsible for the resolution of inter-state border disputes.",
        "They play a neutral role in resolving national issues.",
        "They contribute to the unresolution of inter-state water disputes, border disputes, and other issues."
      ],
      correctAnswerIndex: 3,
      explanation: "Regional parties are responsible for the unresolution of inter-state water disputes, border disputes, and other inter-state issues, according to the text.",
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
    home: rrp(),
  ));
}

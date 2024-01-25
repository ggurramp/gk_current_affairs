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

class uit extends StatefulWidget {
  final String? userIdentifier;

  uit({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<uit> createState() => _uitState();
}

class _uitState extends State<uit> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//Union And It's Territory
    Question(
        questionText: "What is the historical context behind the formation of Maharashtra as a state?",
        options: [
          "To address tribal aspirations",
          "As a result of linguistic reorganization",
          "Created based on cultural considerations",
          "Carved out of Madhya Pradesh"
        ],
        correctAnswerIndex: 1,
        explanation: "Maharashtra was formed on May 1, 1960, as a result of linguistic reorganization. It was carved out of the bilingual Bombay State to create a Marathi-speaking state."
    ),

    Question(
        questionText: "Which state attained statehood after being a union territory and involved the annexation from Portuguese rule in 1961?",
        options: ["Manipur", "Goa", "Meghalaya", "Mizoram"],
        correctAnswerIndex: 1,
        explanation: "Goa attained statehood on May 30, 1987, after being a union territory. The annexation from Portuguese rule in 1961 preceded its statehood."
    ),

    Question(
        questionText: "What was the historical context behind the formation of Chhattisgarh as a state?",
        options: [
          "To address tribal aspirations",
          "As a result of linguistic reorganization",
          "Created based on cultural considerations",
          "Carved out of Madhya Pradesh"
        ],
        correctAnswerIndex: 3,
        explanation: "Chhattisgarh, formed on November 1, 2000, was carved out of Madhya Pradesh to address regional imbalances and provide better governance."
    ),

    Question(
        questionText: "When was Telangana formed, and what was the primary reason for its separation from Andhra Pradesh?",
        options: [
          "Formed on January 21, 1972, for linguistic reasons",
          "Formed on February 20, 1987, for cultural considerations",
          "Formed on November 1, 2000, for regional imbalances",
          "Formed on June 2, 2014, based on regional and developmental considerations"
        ],
        correctAnswerIndex: 3,
        explanation: "Telangana was formed on June 2, 2014, separating from Andhra Pradesh based on regional and developmental considerations."
    ),
    Question(
      questionText: "Which state was carved out of the bilingual Bombay State on May 1, 1960, based on linguistic considerations?",
      options: ["Maharashtra", "Gujarat", "Goa", "Manipur"],
      correctAnswerIndex: 0,
      explanation: "Maharashtra was formed on May 1, 1960, through the linguistic reorganization of states, carving it out of the bilingual Bombay State. This decision aimed to create a Marathi-speaking state.",
    ),

    Question(
      questionText: "What historical context led to the formation of Goa as a state on May 30, 1987?",
      options: ["Linguistic reorganization", "Integration of princely states", "Annexation from Portuguese rule", "Tribal aspirations"],
      correctAnswerIndex: 2,
      explanation: "Goa attained statehood on May 30, 1987, after being a union territory. The historical context involves the annexation from Portuguese rule in 1961, paving the way for its statehood.",
    ),

    Question(
      questionText: "Which state, formed on January 21, 1972, transitioned from a union territory to a full-fledged state to address the distinct identity of the Tripuri-speaking population?",
      options: ["Meghalaya", "Manipur", "Tripura", "Mizoram"],
      correctAnswerIndex: 2,
      explanation: "Tripura became a state on January 21, 1972, transitioning from a union territory. This move aimed to address the distinct identity and aspirations of the Tripuri-speaking population.",
    ),

    Question(
      questionText: "On November 1, 2000, which state was carved out of Madhya Pradesh to address regional imbalances and provide better governance?",
      options: ["Jharkhand", "Chhattisgarh", "Uttarakhand", "Telangana"],
      correctAnswerIndex: 1,
      explanation: "Chhattisgarh was formed on November 1, 2000, by carving it out of Madhya Pradesh. This decision aimed to address regional imbalances and promote better governance in the newly formed state.",
    ),

    Question(
      questionText: "What is the historical context behind the formation of Arunachal Pradesh as a state on February 20, 1987?",
      options: ["Integration of princely states", "Linguistic reorganization", "Annexation from Portuguese rule", "Tribal aspirations"],
      correctAnswerIndex: 1,
      explanation: "Arunachal Pradesh became a state on February 20, 1987, with a historical context rooted in linguistic reorganization. Earlier a union territory, it was granted statehood to address the unique cultural and linguistic features of the region.",
    ),
    Question(
      questionText: "Why is the term 'Union of States' used in the Constitution of India instead of 'Federation'?",
      options: ["Due to state agreements", "To allow states to secede", "As a result of linguistic considerations", "To emphasize federalism"],
      correctAnswerIndex: 1,
      explanation: "The term 'Union of States' is chosen over 'Federation' because the Indian Federation is not a result of state agreements, and states do not have the right to secede.",
    ),

    Question(
      questionText: "What are the three categories into which Indian territory is classified according to Article 1?",
      options: ["Provinces, Territories, and Colonies", "States, Territories, and Districts", "States, Union Territories, and Territories acquired by the Government of India", "North, South, and Central"],
      correctAnswerIndex: 2,
      explanation: "Article 1 classifies Indian territory into three categories: States, Union Territories, and Territories that may be acquired by the Government of India.",
    ),

    Question(
      questionText: "Which schedules of the Constitution address scheduled and tribal areas within the states?",
      options: ["Second and Third Schedules", "Third and Fourth Schedules", "Fifth and Sixth Schedules", "Sixth and Seventh Schedules"],
      correctAnswerIndex: 2,
      explanation: "The Fifth and Sixth Schedules of the Constitution address scheduled and tribal areas within the states.",
    ),

    Question(
      questionText: "What power does Article 2 of the Constitution grant to Parliament?",
      options: ["Power to secede states", "Power to admit new states", "Power to dissolve states", "Power to change state boundaries"],
      correctAnswerIndex: 1,
      explanation: "Article 2 empowers Parliament to admit new states or establish them.",
    ),

    Question(
      questionText: "According to Article 3, what authority does Parliament have in the reorganization of existing states?",
      options: ["Alter boundaries", "Change state names", "Form new states", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "Article 3 outlines Parliament's authority to alter boundaries, change names, and form new states in the reorganization of existing states.",
    ),

    Question(
      questionText: "What is a significant aspect of Parliament's power to reorganize states?",
      options: ["States have veto power", "President's recommendation is optional", "State legislature's views are binding", "Parliament is not bound by state legislature's opinion"],
      correctAnswerIndex: 3,
      explanation: "In the reorganization of states, Parliament's power is significant, and it is not bound by the state legislature's opinion, although the President's recommendation is required.",
    ),

    Question(
      questionText: "Under Article 3, can Parliament diminish a state's area by ceding Indian territory to a foreign country?",
      options: ["Yes", "No", "Only with state legislature's approval", "Only with the President's recommendation"],
      correctAnswerIndex: 1,
      explanation: "The power to diminish a state's area under Article 3 does not include ceding Indian territory to a foreign country; a constitutional amendment is necessary for such actions.",
    ),

    Question(
      questionText: "Which Constitutional Amendment Act facilitated the exchange of territories with Bangladesh in 2015?",
      options: ["95th Constitutional Amendment Act", "100th Constitutional Amendment Act", "105th Constitutional Amendment Act", "110th Constitutional Amendment Act"],
      correctAnswerIndex: 1,
      explanation: "The 100th Constitutional Amendment Act (2015) facilitated the exchange of territories with Bangladesh, involving the transfer of enclaves.",
    ),

    Question(
      questionText: "What has historically shaped India's political map, including the integration of princely states and linguistic reorganization?",
      options: ["Cultural revolutions", "Colonial influence", "Economic reforms", "Integration of princely states and linguistic reorganization"],
      correctAnswerIndex: 3,
      explanation: "Historically, the integration of princely states and linguistic reorganization has shaped India's political map.",
    ),

    Question(
      questionText: "What considerations have influenced the creation of states like Maharashtra, Gujarat, Goa, Manipur, and others?",
      options: ["Economic factors", "Religious considerations", "Linguistic or regional considerations", "Colonial history"],
      correctAnswerIndex: 2,
      explanation: "States like Maharashtra, Gujarat, Goa, Manipur, etc., were created based on linguistic or regional considerations.",
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
          MyBannerAdWidget(), // Add the banner ad here
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
    home: uit(),
  ));
}

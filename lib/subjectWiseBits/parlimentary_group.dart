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

class parlimentary_group extends StatefulWidget {
  final String? userIdentifier;

  parlimentary_group({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parlimentary_group> createState() => _parlimentary_groupState();
}

class _parlimentary_groupState extends State<parlimentary_group> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//25.Indian Parlimentary group

    Question(
      questionText: "When was the Indian Parliamentary Group (IPG) formed?",
      options: ["1947", "1949", "1950", "1964"],
      correctAnswerIndex: 1,
      explanation: "The Indian Parliamentary Group (IPG) was formed in 1949 in pursuance of a motion adopted by the Constituent Assembly (Legislative).",
    ),

    Question(
      questionText: "Who is the ex officio President of the IPG?",
      options: [
        "Deputy Speaker of the Lok Sabha",
        "Secretary-General of the Lok Sabha",
        "Speaker of the Lok Sabha",
        "Deputy Chairman of the Rajya Sabha"
      ],
      correctAnswerIndex: 2,
      explanation: "The Speaker of the Lok Sabha is the ex officio President of the Indian Parliamentary Group (IPG).",
    ),

    Question(
      questionText: "What are the objectives of the IPG?",
      options: [
        "To formulate government policy",
        "To study public importance questions",
        "To conduct day-to-day administration",
        "To implement public undertakings"
      ],
      correctAnswerIndex: 1,
      explanation: "The objectives of the Indian Parliamentary Group (IPG) include promoting personal contact between members of the Parliament of India, studying questions of public importance, arranging seminars and discussions, and more.",
    ),

    Question(
      questionText: "What functions does the IPG perform?",
      options: [
        "Acts as a link between the Parliament of India and various parliaments of the world",
        "Functions as the main branch of the CPA in India",
        "Arranges visits to foreign countries to develop contacts with other parliaments",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The IPG performs various functions, including acting as a link between the Parliament of India and various world parliaments, functioning as the main branch of the CPA in India, arranging visits to foreign countries, and more.",
    ),

    Question(
      questionText: "What is the award instituted by the IPG in 1995?",
      options: [
        "Outstanding Parliamentarian Award",
        "International Cooperation Award",
        "Global Leadership Award",
        "Parliamentary Excellence Award"
      ],
      correctAnswerIndex: 0,
      explanation: "As per the decision of the IPG, an award of Outstanding Parliamentarian was instituted in the year 1995 to be given annually.",
    ),
    Question(
      questionText: "What is the purpose of Parliamentary Friendship Groups (PFGs) formed by the Indian Parliamentary Group (IPG)?",
      options: [
        "To manage and control the IPG's affairs",
        "To create favorable conditions for continuous development of inter-Parliamentary contacts",
        "To conduct day-to-day administration",
        "To implement public undertakings"
      ],
      correctAnswerIndex: 1,
      explanation: "The purpose of Parliamentary Friendship Groups (PFGs) is to create favorable conditions for continuous development of inter-Parliamentary contacts, especially in the organization of talks, mutual exchanges, and cooperation between the two Parliaments.",
    ),

    Question(
      questionText: "Who appoints the President of each Parliamentary Friendship Group (PFG)?",
      options: [
        "Secretary-General of the Lok Sabha",
        "Members of the PFG",
        "Deputy Speaker of the Lok Sabha",
        "Speaker of the Lok Sabha"
      ],
      correctAnswerIndex: 3,
      explanation: "The President of each Parliamentary Friendship Group (PFG) is appointed by the Speaker of the Lok Sabha.",
    ),

    Question(
      questionText: "What are the aims and objectives of Parliamentary Friendship Groups (PFGs)?",
      options: [
        "To maintain political, economic, social, and cultural contact between the two countries",
        "To conduct day-to-day administration",
        "To formulate government policy",
        "To implement public undertakings"
      ],
      correctAnswerIndex: 0,
      explanation: "The aims and objectives of Parliamentary Friendship Groups (PFGs) include maintaining political, economic, social, and cultural contact between the two countries, creating conditions for continuous development of inter-Parliamentary contacts, and promoting cooperation between delegations of the two countries.",
    ),

    Question(
      questionText: "What are the main advantages of the Indian Parliamentary Group (IPG) being a member of the Inter-Parliamentary Union (IPU)?",
      options: [
        "Provides an opportunity to study and understand contemporary changes in India",
        "Gives members eligibility to visit foreign countries as members of Indian Parliamentary delegations to Inter-Parliamentary Conferences",
        "Facilitates participation in regional conferences and seminars",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The main advantages of IPG's membership in the Inter-Parliamentary Union (IPU) include developing contacts with parliamentarians of member countries, studying contemporary changes in various countries, and participating in Inter-Parliamentary Conferences.",
    ),

    Question(
      questionText: "What is the mission of the Commonwealth Parliamentary Association (CPA)?",
      options: [
        "To promote knowledge and understanding of the constitutional, legislative, economic, social, and cultural systems within a parliamentary democratic framework",
        "To implement public undertakings",
        "To conduct day-to-day administration",
        "To formulate government policy"
      ],
      correctAnswerIndex: 0,
      explanation: "The mission of the Commonwealth Parliamentary Association (CPA) is to promote the advancement of parliamentary democracy by enhancing knowledge and understanding of democratic governance within a parliamentary democratic framework.",
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
    home: parlimentary_group(),
  ));
}

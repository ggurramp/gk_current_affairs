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

class vicepresident extends StatefulWidget {
  final String? userIdentifier;

  vicepresident({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<vicepresident> createState() => _vicepresidentState();
}

class _vicepresidentState extends State<vicepresident> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//19.Vice President

    Question(
      questionText: "During the absence or illness of the President, who discharges the functions of the office?",
      options: ["Deputy Chairman of Rajya Sabha", "Vice-President", "Chairman of Rajya Sabha", "President's Secretary"],
      correctAnswerIndex: 1,
      explanation: "In the absence or illness of the President, the Vice-President discharges the functions of the office until the President resumes.",
    ),

    Question(
      questionText: "When acting as President, what duties does the Vice-President not perform?",
      options: ["Chairman of Rajya Sabha", "Prime Minister", "Chief Justice of India", "Speaker of Lok Sabha"],
      correctAnswerIndex: 0,
      explanation: "While acting as President, the Vice-President does not perform the duties of the office of the Chairman of Rajya Sabha. Instead, these duties are carried out by the Deputy Chairman of Rajya Sabha.",
    ),

    Question(
      questionText: "What emoluments are fixed for the Vice-President in the Constitution?",
      options: ["Regular salary", "Daily allowance", "Medical facilities", "Travel allowance"],
      correctAnswerIndex: 0,
      explanation: "The Constitution has not fixed any emoluments for the Vice-President in that capacity. The Vice-President draws their regular salary in their role as the ex-officio Chairman of the Rajya Sabha.",
    ),

    Question(
      questionText: "What entitlements does the Vice-President have during the period of acting as President?",
      options: ["Chairman of Rajya Sabha's salary", "President's salary and allowance", "No entitlements", "Free residence only"],
      correctAnswerIndex: 1,
      explanation: "During the period when the Vice-President acts as President, they are entitled to the salary and allowance of the President, not the Chairman of Rajya Sabha.",
    ),

    Question(
      questionText: "How does the role of the Indian Vice-President differ from that of the American Vice-President regarding succession to the presidency?",
      options: ["Indian Vice-President assumes presidency", "American Vice-President assumes presidency", "Both assume presidency", "Neither assumes presidency"],
      correctAnswerIndex: 0,
      explanation: "The Indian Vice-President does not assume the office of the President when it falls vacant but serves as an acting President until the new President assumes charge. In contrast, the American Vice-President succeeds to the presidency when it falls vacant.",
    ),

    Question(
      questionText: "Why is the Vice-President often referred to as 'His Superfluous Highness' by some scholars?",
      options: ["Lack of significant functions", "Excessive emoluments", "Political continuity", "Unique vegetation"],
      correctAnswerIndex: 0,
      explanation: "Some scholars refer to the Vice-President as 'His Superfluous Highness' because the Constitution has not assigned any significant functions to the Vice-President in that capacity.",
    ),

    Question(
      questionText: "Which article of the Indian Constitution deals with the election of the Vice-President?",
      options: ["Article 63", "Article 66", "Article 68", "Article 71"],
      correctAnswerIndex: 3,
      explanation: "Article 71 of the Indian Constitution deals with matters relating to, or connected with, the election of the Vice-President.",
    ),
    Question(
      questionText: "Who served as the Vice-President of India in the year 1962?",
      options: ["V.V. Giri", "G.S. Pathak", "B.D. Jatti", "Dr. Zakir Hussain"],
      correctAnswerIndex: 3,
      explanation: "Dr. Zakir Hussain served as the Vice-President of India in the year 1962.",
    ),

    Question(
      questionText: "In the year 2007, who was elected as the Vice-President of India?",
      options: ["B.S. Shekhawat", "Mohd. Hamid Ansari", "Krishna Kant", "Venkaiah Naidu"],
      correctAnswerIndex: 1,
      explanation: "Mohd. Hamid Ansari was elected as the Vice-President of India in the year 2007.",
    ),

    Question(
      questionText: "Who was the Vice-President of India in the year 2017?",
      options: ["Jagdeep Dhankar", "Venkaiah Naidu", "Mohd. Hamid Ansari", "B.S. Shekhawat"],
      correctAnswerIndex: 1,
      explanation: "Venkaiah Naidu served as the Vice-President of India in the year 2017.",
    ),

    Question(
      questionText: "What are the qualifications required for a person to be eligible for election as Vice-President?",
      options: [
        "Indian citizenship, 30 years of age, qualification for Lok Sabha membership",
        "Indian citizenship, 35 years of age, qualification for Rajya Sabha membership",
        "Foreign citizenship, 30 years of age, qualification for Lok Sabha membership",
        "Indian citizenship, 40 years of age, no specific qualifications"
      ],
      correctAnswerIndex: 1,
      explanation: "To be eligible for election as Vice-President, a person must be an Indian citizen, 35 years of age, and qualified for election as a member of the Rajya Sabha.",
    ),

    Question(
      questionText: "Who administers the oath of office to the Vice-President of India?",
      options: ["Prime Minister", "Chief Justice of India", "President or appointed person", "Speaker of Lok Sabha"],
      correctAnswerIndex: 2,
      explanation: "The oath of office to the Vice-President is administered by the President or some person appointed in that behalf by him/her.",
    ),

    Question(
      questionText: "What conditions does the Constitution lay down for the Vice-President's office?",
      options: [
        "Must be a member of either House of Parliament",
        "Must not hold any other office of profit",
        "Must be a member of the Rajya Sabha",
        "Must hold an office of profit"
      ],
      correctAnswerIndex: 1,
      explanation: "The Constitution lays down that the Vice-President should not be a member of either House of Parliament or a House of the state legislature and should not hold any other office of profit.",
    ),
    Question(
      questionText: "In the official warrant of precedence, what rank is accorded to the Vice-President?",
      options: ["First rank", "Third rank", "Second rank", "Fourth rank"],
      correctAnswerIndex: 2,
      explanation: "The Vice-President is accorded a rank next to the President in the official warrant of precedence, occupying the second-highest office in the country.",
    ),

    Question(
      questionText: "How is the Vice-President elected?",
      options: [
        "Directly by the people",
        "By the members of an electoral college consisting of both Houses of Parliament",
        "By the members of state legislative assemblies",
        "By the President"
      ],
      correctAnswerIndex: 1,
      explanation: "The Vice-President is elected by the members of an electoral college consisting of both Houses of Parliament, not directly by the people.",
    ),

    Question(
      questionText: "What are the two differences between the electoral college for the Vice-President and that for the President?",
      options: [
        "Presence of nominated members and exclusion of state legislative assembly members",
        "Presence of elected and nominated members and exclusion of state legislative assembly members",
        "Presence of elected members only and inclusion of state legislative assembly members",
        "Presence of nominated members only and inclusion of state legislative assembly members"
      ],
      correctAnswerIndex: 1,
      explanation: "The electoral college for the Vice-President consists of both elected and nominated members of Parliament, while the electoral college for the President includes only elected members.",
    ),

    Question(
      questionText: "According to Dr. B.R. Ambedkar, why is the participation of state legislature members not deemed necessary in the election of the Vice-President?",
      options: [
        "State legislatures have limited power",
        "Vice-President's functions are primarily related to the Council of States",
        "State legislatures have no role in Vice-President's election",
        "State legislatures are already involved in the President's election"
      ],
      correctAnswerIndex: 1,
      explanation: "Dr. B.R. Ambedkar suggested that since the Vice-President's normal functions are to preside over the Council of States, the involvement of state legislatures in the election is not necessary.",
    ),

    Question(
      questionText: "What election system is used for the Vice-President's election, and how is the voting conducted?",
      options: [
        "First-past-the-post system, open ballot",
        "Proportional representation by means of the single transferable vote, secret ballot",
        "Proportional representation by means of the single transferable vote, open ballot",
        "First-past-the-post system, secret ballot"
      ],
      correctAnswerIndex: 2,
      explanation: "The Vice-President's election follows the system of proportional representation by means of the single transferable vote, and the voting is done by secret ballot.",
    ),

    Question(
      questionText: "Who has the authority to inquire into and decide doubts and disputes related to the election of the Vice-President?",
      options: ["Election Commission", "Supreme Court", "President", "Parliament"],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court has the authority to inquire into and decide doubts and disputes related to the election of the Vice-President, and its decision is final.",
    ),

    Question(
      questionText: "On what grounds can the election of a person as Vice-President not be challenged?",
      options: [
        "Incomplete electoral college",
        "Invalid voting process",
        "Existence of any vacancy among the members of the electoral college",
        "Allegations of corruption"
      ],
      correctAnswerIndex: 2,
      explanation: "The election of a person as Vice-President cannot be challenged on the ground that the electoral college was incomplete (i.e., existence of any vacancy among the members of the electoral college).",
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
    home: vicepresident(),
  ));
}

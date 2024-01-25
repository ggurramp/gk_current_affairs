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

class cos extends StatefulWidget {
  final String? userIdentifier;

  cos({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cos> createState() => _cosState();
}

class _cosState extends State<cos> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//72 .CO-OPERATIVE SOCIETY

    Question(
      questionText: "What fundamental right was granted by the 97th Constitutional Amendment Act regarding co-operative societies?",
      options: ["Right to Education", "Right to Form Co-operative Societies", "Right to Freedom of Speech", "Right to Property"],
      correctAnswerIndex: 1,
      explanation: "The 97th Constitutional Amendment Act granted the right to form co-operative societies as a fundamental right.",
    ),

    Question(
      questionText: "Under Part IX-B of the Constitution, what principles should co-operative societies be based on?",
      options: ["Authoritarianism and Centralized Control", "Voluntary Formation, Democratic Control, Member-Economic Participation, Autonomous Functioning", "Monarchy and Oligarchy", "Corporate Structure and Profit Maximization"],
      correctAnswerIndex: 1,
      explanation: "Co-operative societies should be based on the principles of voluntary formation, democratic control, member-economic participation, and autonomous functioning.",
    ),

    Question(
      questionText: "How many directors can a co-operative society have according to the provisions mentioned?",
      options: ["Not specified", "Up to 15 directors", "Up to 21 directors", "Up to 30 directors"],
      correctAnswerIndex: 2,
      explanation: "The maximum number of directors of a co-operative society shall not exceed twenty-one.",
    ),

    Question(
      questionText: "What are the circumstances under which a board of a co-operative society can be superseded or kept under suspension?",
      options: ["Any disagreement among board members", "Persistent default, negligence, prejudicial acts, stalemate, election failure", "Change in government leadership", "Board exceeding financial limits"],
      correctAnswerIndex: 1,
      explanation: "The board may be superseded or kept under suspension in cases of persistent default, negligence, prejudicial acts, stalemate, or failure to conduct elections.",
    ),

    Question(
      questionText: "Who audits the accounts of a co-operative society, and what qualifications should the auditor have?",
      options: ["Government-appointed auditors with no specific qualifications", "Auditors chosen by the board members", "Auditor appointed by general body with approved qualifications", "No audit required for co-operative societies"],
      correctAnswerIndex: 2,
      explanation: "Every co-operative society shall be audited by an auditor or auditing firm appointed by the general body, with qualifications approved by the State Government.",
    ),
    Question(
      questionText: "Which amendment act granted constitutional status and protection to co-operative societies?",
      options: ["94th Constitutional Amendment Act", "97th Constitutional Amendment Act", "101st Constitutional Amendment Act", "105th Constitutional Amendment Act"],
      correctAnswerIndex: 1,
      explanation: "The 97th Constitutional Amendment Act of 2011 granted constitutional status and protection to co-operative societies.",
    ),
    Question(
      questionText: "According to the reasons stated in the amendment, what weaknesses were identified in the co-operative sector?",
      options: [
        "Inadequate professionalism and low productivity",
        "Lack of growth and expansion",
        "Excessive interference from State Acts",
        "Overemphasis on democratic principles"
      ],
      correctAnswerIndex: 0,
      explanation: "The identified weaknesses in the co-operative sector included inadequate professionalism leading to poor service and low productivity.",
    ),

    Question(
      questionText: "What was the main objective of the 97th Constitutional Amendment Act with regard to co-operative societies?",
      options: [
        "To increase government interference",
        "To limit the growth of co-operatives",
        "To ensure democratic, professional, autonomous, and economically sound functioning",
        "To discourage the formation of co-operative societies"
      ],
      correctAnswerIndex: 2,
      explanation: "The main objective of the 97th Constitutional Amendment Act was to ensure democratic, professional, autonomous, and economically sound functioning of co-operative societies.",
    ),

    Question(
      questionText: "Why did the Central Government propose the incorporation of a new part in the Constitution?",
      options: [
        "To limit the autonomy of co-operative societies",
        "To provide for unnecessary outside interferences",
        "To cover vital aspects like democratic, autonomous, and professional functioning",
        "To discourage the functioning of co-operatives"
      ],
      correctAnswerIndex: 2,
      explanation: "The Central Government proposed the incorporation of a new part in the Constitution to cover vital aspects of co-operative functioning, including democratic, autonomous, and professional aspects.",
    ),
    Question(
      questionText: "What was the Gujarat High Court's declaration regarding the constitutional validity of the 97th Constitutional Amendment Act?",
      options: [
        "It upheld the amendment as valid",
        "It declared the amendment ultra vires for lack of state ratification",
        "It had no opinion on the amendment's validity",
        "It supported the amendment with certain modifications"
      ],
      correctAnswerIndex: 1,
      explanation: "The Gujarat High Court declared that the 97th Constitutional Amendment Act is ultra vires the Constitution due to a lack of state ratification under Article 368.",
    ),

    Question(
      questionText: "What impact did the Supreme Court's 2019 judgement have on the Gujarat High Court's decision regarding the 97th Constitutional Amendment Act?",
      options: [
        "The Supreme Court overturned the entire decision",
        "The Supreme Court upheld the entire decision",
        "The Supreme Court upheld the judgment but with certain exceptions",
        "The Supreme Court declared the amendment completely valid"
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court upheld the Gujarat High Court's judgement except to the extent that it struck down the entirety of Part IX-B of the Constitution.",
    ),

    Question(
      questionText: "According to the Supreme Court's decision, in what context is Part IX-B of the Constitution operative?",
      options: [
        "Operative only in specific states",
        "Operative nationwide",
        "Operative only for co-operative societies with government funding",
        "Operative only in union territories"
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court declared that Part IX-B of the Constitution is operative only insofar as it concerns multi-state co-operative societies both within states and in union territories.",
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
    home: cos(),
  ));
}

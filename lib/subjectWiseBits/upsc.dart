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

class upsc extends StatefulWidget {
  final String? userIdentifier;

  upsc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<upsc> createState() => _upscState();
}

class _upscState extends State<upsc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//44 .UNION PUBLIC SERVICE COMMISION

    Question(
      questionText: "What is the composition of the Union Public Service Commission (UPSC)?",
      options: [
        "President and members appointed by the Prime Minister",
        "Chairman and members appointed by the President",
        "Members appointed by the Chief Justice of India",
        "Governor and members appointed by the State Legislature"
      ],
      correctAnswerIndex: 1,
      explanation: "The UPSC consists of a chairman and other members appointed by the President of India.",
    ),

    Question(
      questionText: "Under what circumstances can the President appoint one of the members of the UPSC as an acting chairman?",
      options: [
        "When the chairman goes on vacation",
        "When the chairman is unable to perform functions",
        "When the chairman resigns",
        "When the chairman disagrees with the President"
      ],
      correctAnswerIndex: 1,
      explanation: "The President can appoint one of the members of the UPSC as an acting chairman when the chairman is unable to perform his/her functions due to absence or some other reason.",
    ),

    Question(
      questionText: "What are the grounds for the removal of the chairman or any other member of the UPSC?",
      options: [
        "Disagreement with government policies",
        "Engaging in political activities",
        "Misbehaviour, insolvency, engaging in paid employment outside office duties",
        "Participating in protests against the government"
      ],
      correctAnswerIndex: 2,
      explanation: "The grounds for the removal of the chairman or any other member of the UPSC include misbehaviour, insolvency, and engaging in paid employment outside office duties.",
    ),

    Question(
      questionText: "How is the term 'misbehaviour' defined in the context of the UPSC, leading to removal?",
      options: [
        "Participating in political rallies",
        "Engaging in unethical conduct",
        "Being associated with an incorporated company",
        "Concerned or interested in any contract or agreement made by the Government"
      ],
      correctAnswerIndex: 3,
      explanation: "In the context of the UPSC, 'misbehaviour' is defined as being concerned or interested in any contract or agreement made by the Government.",
    ),

    Question(
      questionText: "What provisions has the Constitution made to ensure the independence and impartial functioning of the UPSC?",
      options: [
        "Subjecting the UPSC to regular parliamentary votes",
        "Allowing reappointment of the chairman for a second term",
        "Charging the expenses of UPSC on the Consolidated Fund of India",
        "Permitting employment in the government after completing the first term"
      ],
      correctAnswerIndex: 2,
      explanation: "The Constitution ensures the independence and impartial functioning of the UPSC by charging its expenses, including salaries and allowances, on the Consolidated Fund of India.",
    ),
    Question(
      questionText: "What is the composition of the UPSC, and how are the chairman and members appointed?",
      options: [
        "Consists of the Prime Minister and appointed members",
        "Consists of the Chief Justice of India and appointed members",
        "Consists of the President and appointed members",
        "Consists of the Parliament members and appointed members"
      ],
      correctAnswerIndex: 2,
      explanation: "The UPSC consists of a chairman and other members appointed by the President of India.",
    ),

    Question(
      questionText: "Under what circumstances can the President appoint one of the members of the UPSC as an acting chairman?",
      options: [
        "When the chairman goes on vacation",
        "When the chairman is unable to perform functions",
        "When the chairman resigns",
        "When the chairman disagrees with the President"
      ],
      correctAnswerIndex: 1,
      explanation: "The President can appoint one of the members of the UPSC as an acting chairman when the chairman is unable to perform his/her functions due to absence or some other reason.",
    ),

    Question(
      questionText: "What grounds justify the removal of the chairman or any other member of the UPSC by the President?",
      options: [
        "Disagreement with government policies",
        "Engaging in political activities",
        "Misbehaviour, insolvency, engaging in paid employment outside office duties",
        "Participating in protests against the government"
      ],
      correctAnswerIndex: 2,
      explanation: "The grounds for the removal of the chairman or any other member of the UPSC include misbehaviour, insolvency, and engaging in paid employment outside office duties.",
    ),

    Question(
      questionText: "What matters is the UPSC consulted on, according to the Constitution?",
      options: [
        "Matters related to foreign policy",
        "Matters related to economic policies",
        "Matters related to civil services recruitment, appointments, promotions, and disciplinary issues",
        "Matters related to defense strategies"
      ],
      correctAnswerIndex: 2,
      explanation: "The UPSC is consulted on matters related to methods of recruitment to civil services, appointments, promotions, transfers, and disciplinary matters affecting civil servants.",
    ),

    Question(
      questionText: "What limitations exist regarding the matters on which the UPSC is not consulted?",
      options: [
        "Reservations of appointments or posts in favor of any backward class",
        "Consideration of claims of scheduled castes and tribes",
        "Appointments to temporary or officiating posts for a period of more than one year",
        "Appointments to the posts of Heads of Diplomatic, Consular, and other similar Indian Missions in countries abroad"
      ],
      correctAnswerIndex: 3,
      explanation: "The UPSC is not consulted on appointments to the posts of Heads of Diplomatic, Consular, and other similar Indian Missions in countries abroad, among other matters.",
    ),
    Question(
      questionText: "What is the primary role of the UPSC according to the Constitution?",
      options: [
        "Handling pay and service conditions",
        "Dealing with cadre management",
        "Classifying services",
        "Recruitment to All-India Services and Central Services-group A and group B"
      ],
      correctAnswerIndex: 3,
      explanation: "The primary role of the UPSC is recruitment to the All-India Services and Central Services-group A and group B.",
    ),

    Question(
      questionText: "Which department handles matters such as classification of services, pay and service conditions, cadre management, and training?",
      options: [
        "Department of Administrative Reforms and Public Grievances",
        "Department of Pensions and Pensioners' Welfare",
        "Department of Personnel and Training",
        "Department of Economic Affairs"
      ],
      correctAnswerIndex: 2,
      explanation: "The Department of Personnel and Training handles matters such as classification of services, pay and service conditions, cadre management, and training.",
    ),

    Question(
      questionText: "Are the recommendations made by the UPSC binding on the government?",
      options: [
        "Yes, the government is obligated to follow UPSC recommendations.",
        "No, the government has the discretion to accept or reject UPSC advice.",
        "Yes, UPSC recommendations are legally binding.",
        "No, UPSC recommendations are binding only in disciplinary matters."
      ],
      correctAnswerIndex: 1,
      explanation: "No, the recommendations made by the UPSC are of advisory nature and are not binding on the government. The government has the discretion to accept or reject UPSC advice.",
    ),

    Question(
      questionText: "What affected the role of the UPSC in disciplinary matters?",
      options: [
        "Creation of the Department of Personnel and Training",
        "Establishment of the Central Vigilance Commission (CVC)",
        "Introduction of executive resolutions",
        "Statutory status conferred to the UPSC in 2003"
      ],
      correctAnswerIndex: 1,
      explanation: "The emergence of the Central Vigilance Commission (CVC) in 1964 affected the role of the UPSC in disciplinary matters.",
    ),

    Question(
      questionText: "In case of conflicting advice between the UPSC and CVC, which body has an edge?",
      options: [
        "Central Vigilance Commission (CVC)",
        "Both have equal authority",
        "Department of Personnel and Training",
        "Union Public Service Commission (UPSC)"
      ],
      correctAnswerIndex: 3,
      explanation: "In case of conflicting advice between the UPSC and CVC, the UPSC, being an independent constitutional body, has an edge over the CVC, which is created by an executive resolution of the Government of India.",
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
    home: upsc(),
  ));
}

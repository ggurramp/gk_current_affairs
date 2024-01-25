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

class fundamentalDuties extends StatefulWidget {
  final String? userIdentifier;

  fundamentalDuties({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fundamentalDuties> createState() => _fundamentalDutiesState();
}

class _fundamentalDutiesState extends State<fundamentalDuties> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//Chapter -10 Fundamental duties
    Question(
      questionText: "What committee was established in 1976 to make recommendations about fundamental duties in India?",
      options: [
        "Verma Committee",
        "Swaran Singh Committee",
        "Gokhale Committee",
        "Chawla Committee",
      ],
      correctAnswerIndex: 1,
      explanation: "The Swaran Singh Committee, established in 1976, made recommendations about fundamental duties in India.",
    ),
    Question(
      questionText: "How many fundamental duties were initially recommended by the Swaran Singh Committee?",
      options: ["Six", "Eight", "Ten", "Twelve"],
      correctAnswerIndex: 1,
      explanation: "The Swaran Singh Committee initially recommended the incorporation of eight fundamental duties.",
    ),

    Question(
      questionText: "What significant addition was made to the fundamental duties in 2002?",
      options: ["Right to Education", "Duty to Pay Taxes", "Duty to Defend the Country", "Duty to Protect Environment"],
      correctAnswerIndex: 1,
      explanation: "In 2002, the 86th Constitutional Amendment Act added the duty to pay taxes to the fundamental duties.",
    ),
    Question(
      questionText: "Why were the fundamental duties criticized?",
      options: [
        "They were deemed irrelevant to citizens.",
        "They lacked legal sanction and enforceability.",
        "They were considered too few in number.",
        "They were seen as contradictory to the Constitution.",
      ],
      correctAnswerIndex: 1,
      explanation: "Critics argued that fundamental duties lacked legal sanction and enforceability, making them non-justiciable.",
    ),
    Question(
      questionText: "According to the Verma Committee, which legal provisions exist for the implementation of some fundamental duties?",
      options: [
        "Prevention of Insults to National Honour Act",
        "Protection of Civil Rights Act",
        "Unlawful Activities (Prevention) Act",
        "All of the above",
      ],
      correctAnswerIndex: 3,
      explanation: "The Verma Committee identified various legal provisions, including the Prevention of Insults to National Honour Act, Protection of Civil Rights Act, and Unlawful Activities (Prevention) Act.",
    ),
    Question(
      questionText: "Which Constitutional Amendment Act added a new part (Part IVA) to the Indian Constitution, specifying ten fundamental duties?",
      options: ["42nd Constitutional Amendment Act", "44th Constitutional Amendment Act", "86th Constitutional Amendment Act", "88th Constitutional Amendment Act"],
      correctAnswerIndex: 0,
      explanation: "The 42nd Constitutional Amendment Act in 1976 added Part IVA to the Indian Constitution, specifying ten fundamental duties.",
    ),
    Question(
      questionText: "What duty was added to the fundamental duties by the 86th Constitutional Amendment Act in 2002?",
      options: ["Duty to Defend the Country", "Duty to Promote Harmony", "Duty to Develop Scientific Temper", "Duty to Provide Education"],
      correctAnswerIndex: 3,
      explanation: "The 86th Constitutional Amendment Act in 2002 added the duty to provide opportunities for education to children between the ages of six and fourteen years.",
    ),
    Question(
      questionText: "Why did the Congress Party declare the non-inclusion of fundamental duties in the Constitution as a historical mistake?",
      options: [
        "To emphasize the importance of citizens' duties",
        "To correct an oversight by the framers of the Constitution",
        "To gain political support",
        "To align with the Constitution of erstwhile USSR",
      ],
      correctAnswerIndex: 1,
      explanation: "The Congress Party declared the non-inclusion of fundamental duties as a historical mistake and claimed it was correcting an oversight by the framers of the Constitution.",
    ),
    Question(
      questionText: "Which Fundamental Duty was added in 2002 to ensure education for children between the ages of six and fourteen years?",
      options: ["Duty to Defend the Country", "Duty to Promote Harmony", "Duty to Develop Scientific Temper", "Duty to Provide Education"],
      correctAnswerIndex: 3,
      explanation: "The 86th Constitutional Amendment Act in 2002 added the duty to provide opportunities for education to children between the ages of six and fourteen years.",
    ),

    Question(
      questionText: "According to the Verma Committee, which legal provision prevents disrespect to the Constitution of India, the National Flag, and the National Anthem?",
      options: [
        "Prevention of Insults to National Honour Act",
        "Protection of Civil Rights Act",
        "Unlawful Activities (Prevention) Act",
        "Representation of People Act",
      ],
      correctAnswerIndex: 0,
      explanation: "The Prevention of Insults to National Honour Act (1971) prevents disrespect to the Constitution of India, the National Flag, and the National Anthem.",
    ),

    Question(
      questionText: "Which committee, in 1999, identified legal provisions for the implementation of some fundamental duties in India?",
      options: [
        "Swaran Singh Committee",
        "Verma Committee",
        "Gokhale Committee",
        "Chawla Committee",
      ],
      correctAnswerIndex: 1,
      explanation: "The Verma Committee on Fundamental Duties of the Citizens (1999) identified legal provisions for the implementation of some fundamental duties in India.",
    ),

    Question(
      questionText: "According to the Verma Committee, which legal provision provides for disqualification of members of Parliament or state legislature for indulging in corrupt practices?",
      options: [
        "Prevention of Insults to National Honour Act",
        "Protection of Civil Rights Act",
        "Representation of People Act",
        "Unlawful Activities (Prevention) Act",
      ],
      correctAnswerIndex: 2,
      explanation: "The Representation of People Act (1951) provides for the disqualification of members of Parliament or a state legislature for indulging in corrupt practice.",
    ),
    Question(
      questionText: "Which Constitutional Amendment Act introduced the concept of fundamental duties in the Indian Constitution?",
      options: ["42nd Constitutional Amendment Act", "44th Constitutional Amendment Act", "86th Constitutional Amendment Act", "88th Constitutional Amendment Act"],
      correctAnswerIndex: 0,
      explanation: "The 42nd Constitutional Amendment Act in 1976 introduced the concept of fundamental duties in the Indian Constitution.",
    ),
    Question(
      questionText: "What duty was added to the fundamental duties by the 86th Constitutional Amendment Act in 2002?",
      options: ["Duty to Defend the Country", "Duty to Promote Harmony", "Duty to Develop Scientific Temper", "Duty to Provide Education"],
      correctAnswerIndex: 3,
      explanation: "The 86th Constitutional Amendment Act in 2002 added the duty to provide opportunities for education to children between the ages of six and fourteen years.",
    ),
    Question(
      questionText: "Which Fundamental Duty emphasizes the responsibility to uphold and protect the sovereignty, unity, and integrity of India?",
      options: ["Duty to Abide by the Constitution", "Duty to Develop Scientific Temper", "Duty to Defend the Country", "Duty to Provide Education"],
      correctAnswerIndex: 2,
      explanation: "The Fundamental Duty to defend the country emphasizes the responsibility to uphold and protect the sovereignty, unity, and integrity of India.",
    ),

    Question(
      questionText: "What significant role do fundamental duties play in the interpretation of laws, as mentioned in the Mohan Kumar Singhania case (1991)?",
      options: [
        "They determine the punishment for criminal offenses.",
        "They provide a basis for challenging laws in court.",
        "They can be used to interpret ambiguous laws for constitutional validity.",
        "They guide the enforcement of civil rights.",
      ],
      correctAnswerIndex: 2,
      explanation: "In the Mohan Kumar Singhania case (1991), the Supreme Court held that Article 51A (fundamental duties) can be used to interpret ambiguous laws for constitutional validity.",
    ),


    Question(
      questionText: "What is the primary argument made by critics regarding the inclusion of fundamental duties in the Constitution?",
      options: [
        "They are too extensive and exhaustive.",
        "They lack specificity and clarity.",
        "They are unnecessary in a democratic setup.",
        "They infringe upon fundamental rights.",
      ],
      correctAnswerIndex: 2,
      explanation: "Critics argued that the inclusion of fundamental duties in the Constitution was superfluous and unnecessary in a democratic setup.",
    ),

    Question(
      questionText: "According to the Verma Committee, which legal provision prevents disrespect to the Constitution of India, the National Flag, and the National Anthem?",
      options: [
        "Prevention of Insults to National Honour Act",
        "Protection of Civil Rights Act",
        "Unlawful Activities (Prevention) Act",
        "Representation of People Act",
      ],
      correctAnswerIndex: 0,
      explanation: "The Prevention of Insults to National Honour Act (1971) prevents disrespect to the Constitution of India, the National Flag, and the National Anthem.",
    ),

    Question(
      questionText: "In which part of the Indian Constitution do the fundamental duties exist?",
      options: ["Part II", "Part III", "Part IV", "Part IVA"],
      correctAnswerIndex: 3,
      explanation: "The fundamental duties are included in Part IVA of the Indian Constitution.",
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
    home: fundamentalDuties(),
  ));
}

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

class ndm extends StatefulWidget {
  final String? userIdentifier;

  ndm({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ndm> createState() => _ndmState();
}

class _ndmState extends State<ndm> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//68.NATIONAL DISASTER MANAGEMENT AUTHORITY

    Question(
      questionText: "What is the main purpose of the National Disaster Management Authority (NDMA) in India?",
      options: [
        "To regulate environmental policies",
        "To enforce technology-driven initiatives",
        "To implement disaster management plans and ensure a holistic approach",
        "To manage international relations"],
      correctAnswerIndex: 2,
      explanation: "The NDMA is established to spearhead and implement a holistic and integrated approach to disaster management in the country.",
    ),

    Question(
      questionText: "Who is the ex-officio chairperson of the NDMA?",
      options: [
        "The President of India",
        "The Prime Minister of India",
        "The Minister of Home Affairs",
        "The Chief Justice of India"],
      correctAnswerIndex: 1,
      explanation: "The ex-officio chairperson of the NDMA is the Prime Minister of India.",
    ),

    Question(
      questionText: "What is the vision of the NDMA as mentioned in the text?",
      options: [
        "To build economic resilience",
        "To foster international cooperation",
        "To develop disaster-resilient structures",
        "To build a safer and disaster-resilient India through a holistic, proactive, technology-driven, and sustainable development strategy involving all stakeholders"],
      correctAnswerIndex: 3,
      explanation: "The vision of the NDMA is to build a safer and disaster-resilient India through a holistic, proactive, technology-driven, and sustainable development strategy involving all stakeholders.",
    ),

    Question(
      questionText: "What are the objectives of the NDMA?",
      options: [
        "To promote cultural activities",
        "To ensure environmental sustainability",
        "To develop disaster-resilient structures",
        "To promote a culture of prevention, preparedness, and resilience at all levels through knowledge, innovation, and education"],
      correctAnswerIndex: 3,
      explanation: "One of the objectives of the NDMA is to develop disaster-resilient structures.",
    ),

    Question(
      questionText: "What is one of the additional functions performed by the NDMA?",
      options: [
        "Regulation of financial markets",
        "Promotion of agricultural practices",
        "Exercise of general superintendence, direction, and control of the National Disaster Response Force (NDRF)",
        "Promotion of international trade"],
      correctAnswerIndex: 2,
      explanation: "One of the additional functions of the NDMA is the exercise of general superintendence, direction, and control of the National Disaster Response Force (NDRF).",
    ),
    Question(
      questionText: "Who is the ex-officio chairperson of the State Disaster Management Authority (SDMA)?",
      options: [
        "The Chief Secretary of the state",
        "The Chief Minister of the state",
        "The Chairperson of the National Disaster Management Authority (NDMA)",
        "The Vice-Chairperson of the NDMA"],
      correctAnswerIndex: 1,
      explanation: "The Chief Minister of the state is the ex-officio chairperson of the State Disaster Management Authority (SDMA).",
    ),

    Question(
      questionText: "What is one of the functions of the SDMA mentioned in the text?",
      options: [
        "To regulate industrial activities",
        "To coordinate international relations",
        "To lay down guidelines for district-level disaster management",
        "To approve the National Plan"],
      correctAnswerIndex: 2,
      explanation: "One of the functions of the SDMA is to lay down guidelines for district-level disaster management.",
    ),

    Question(
      questionText: "Who acts as the ex-officio chief executive officer of the SDMA?",
      options: [
        "The Chief Minister of the state",
        "The Chairperson of the NDMA",
        "The Chairperson of the State Executive Committee",
        "The Vice-Chairperson of the SDMA"],
      correctAnswerIndex: 2,
      explanation: "The Chairperson of the State Executive Committee acts as the ex-officio chief executive officer of the SDMA.",
    ),

    Question(
      questionText: "What responsibility does the SDMA have in reviewing development plans?",
      options: [
        "Ensure economic growth",
        "Integrate disaster management measures",
        "Regulate educational policies",
        "Coordinate transportation systems"],
      correctAnswerIndex: 1,
      explanation: "The SDMA reviews development plans to ensure that prevention and mitigation measures are integrated.",
    ),

    Question(
      questionText: "Who can be nominated as members of the SDMA?",
      options: [
        "Members nominated by the United Nations",
        "Members nominated by the Chief Secretary",
        "Members nominated by the Chief Minister",
        "Members nominated by the Prime Minister"],
      correctAnswerIndex: 2,
      explanation: "Members of the SDMA can be nominated by the Chief Minister of the state.",
    ),
    Question(
      questionText: "Who is the ex-officio chairperson of the District Disaster Management Authority (DDMA)?",
      options: [
        "The Chief Minister of the state",
        "The Collector (or District Magistrate or Deputy Commissioner) of the district",
        "The Chief Executive Member of the district council in Tribal Areas",
        "The Chairperson of the Zilla Parishad"],
      correctAnswerIndex: 1,
      explanation: "The Collector (or District Magistrate or Deputy Commissioner) of the district is the ex-officio chairperson of the District Disaster Management Authority (DDMA).",
    ),

    Question(
      questionText: "What is the role of the Chief Executive Officer of the DDMA?",
      options: [
        "Coordination of international disaster relief efforts",
        "Approval of district development plans",
        "Implementation of disaster management measures in the district",
        "Enforcement of legal actions during disasters"],
      correctAnswerIndex: 3,
      explanation: "The Chief Executive Officer of the DDMA is responsible for coordinating and implementing disaster management measures in the district.",
    ),

    Question(
      questionText: "Who are the ex-officio members of the DDMA?",
      options: [
        "District-level officers appointed by the state government",
        "Members nominated by the Chief Executive Member of the district council",
        "The Superintendent of Police and the Chief Medical Officer of the district",
        "Elected representatives from local non-governmental organizations"],
      correctAnswerIndex: 2,
      explanation: "The Superintendent of Police and the Chief Medical Officer of the district are the ex-officio members of the DDMA.",
    ),

    Question(
      questionText: "What is one of the functions of the DDMA according to the text?",
      options: [
        "Regulation of agricultural practices",
        "Approval of national disaster management policies",
        "Coordination of international disaster relief",
        "Facilitation of community training and awareness programs"],
      correctAnswerIndex: 4,
      explanation: "One of the functions of the DDMA is to facilitate community training and awareness programs for prevention of disaster or mitigation.",
    ),

    Question(
      questionText: "Who appoints the Chief Executive Officer of the DDMA?",
      options: [
        "The Chief Minister of the state",
        "The Chief Executive Member of the district council",
        "The Chairperson of the Zilla Parishad",
        "The State Government"],
      correctAnswerIndex: 4,
      explanation: "The Chief Executive Officer of the DDMA is appointed by the State Government.",
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
    home: ndm(),
  ));
}

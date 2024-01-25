import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async package

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

class nationalParks extends StatefulWidget {
  final String? userIdentifier;

  nationalParks({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nationalParks> createState() => _nationalParksState();
}

class _nationalParksState extends State<nationalParks> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Which national park is famous for its population of Indian one-horned rhinoceroses and is a UNESCO World Heritage Site?",
      options: ["Jim Corbett National Park", "Kaziranga National Park", "Sundarbans National Park", "Ranthambore National Park"],
      correctAnswerIndex: 1,
      explanation: "Kaziranga National Park in Assam is famous for its population of Indian one-horned rhinoceroses and is a UNESCO World Heritage Site.",
    ),

    Question(
      questionText: "Which national park is known for its Bengal tigers and the historic Ranthambore Fort?",
      options: ["Ranthambore National Park", "Bandipur National Park", "Periyar National Park", "Manas National Park"],
      correctAnswerIndex: 0,
      explanation: "Ranthambore National Park in Rajasthan is known for its Bengal tigers and the historic Ranthambore Fort.",
    ),

    Question(
      questionText: "Which was India's first national park, established to protect Bengal tigers?",
      options: ["Sundarbans National Park", "Jim Corbett National Park", "Kaziranga National Park", "Valley of Flowers National Park"],
      correctAnswerIndex: 1,
      explanation: "Jim Corbett National Park in Uttarakhand is India's first national park, established to protect Bengal tigers.",
    ),

    Question(
      questionText: "Which national park is part of the Nilgiri Biosphere Reserve and is known for its tigers and elephants?",
      options: ["Ranthambore National Park", "Bandipur National Park", "Hemis National Park", "Valley of Flowers National Park"],
      correctAnswerIndex: 1,
      explanation: "Bandipur National Park in Karnataka is part of the Nilgiri Biosphere Reserve and is known for its tigers and elephants.",
    ),

    Question(
      questionText: "Which is the largest mangrove forest in the world and a UNESCO World Heritage Site?",
      options: ["Sundarbans National Park", "Jim Corbett National Park", "Kaziranga National Park", "Ranthambore National Park"],
      correctAnswerIndex: 0,
      explanation: "Sundarbans National Park in West Bengal is the largest mangrove forest in the world and is a UNESCO World Heritage Site.",
    ),

    Question(
      questionText: "Which national park in Kerala surrounds the picturesque Periyar Lake and is known for its elephants and tigers?",
      options: ["Periyar National Park", "Bandipur National Park", "Jim Corbett National Park", "Manas National Park"],
      correctAnswerIndex: 0,
      explanation: "Periyar National Park in Kerala surrounds the picturesque Periyar Lake and is known for its elephants and tigers.",
    ),

    Question(
      questionText: "Which UNESCO World Heritage Site and Project Tiger reserve is known for its diverse wildlife, including the endangered golden langur?",
      options: ["Jim Corbett National Park", "Manas National Park", "Hemis National Park", "Kaziranga National Park"],
      correctAnswerIndex: 1,
      explanation: "Manas National Park in Assam is a UNESCO World Heritage Site and a Project Tiger reserve known for its diverse wildlife.",
    ),

    Question(
      questionText: "Which national park in Ladakh is home to the rare and elusive snow leopard?",
      options: ["Hemis National Park", "Bandipur National Park", "Ranthambore National Park", "Sundarbans National Park"],
      correctAnswerIndex: 0,
      explanation: "Hemis National Park in Ladakh is home to the rare and elusive snow leopard.",
    ),

    Question(
      questionText: "Which national park is renowned for its vibrant alpine meadows and diverse flora?",
      options: ["Bandipur National Park", "Hemis National Park", "Valley of Flowers National Park", "Periyar National Park"],
      correctAnswerIndex: 2,
      explanation: "Valley of Flowers National Park in Uttarakhand is renowned for its vibrant alpine meadows and diverse flora.",
    ),

    Question(
      questionText: "Which national park is a famous bird sanctuary and a critical wintering and breeding ground for various bird species?",
      options: ["Sundarbans National Park", "Keoladeo National Park", "Manas National Park", "Hemis National Park"],
      correctAnswerIndex: 1,
      explanation: "Keoladeo National Park in Rajasthan, also known as Bharatpur Bird Sanctuary, is a famous bird sanctuary and breeding ground for various bird species.",
    ),

    Question(
      questionText: "Which national park is known for its diverse biodiversity in the Western Himalayan sub-region?",
      options: ["Great Himalayan National Park", "Jim Corbett National Park", "Ranthambore National Park", "Valley of Flowers National Park"],
      correctAnswerIndex: 0,
      explanation: "Great Himalayan National Park in Himachal Pradesh is known for its diverse biodiversity in the Western Himalayan sub-region.",
    ),

    Question(
      questionText: "Which national park is known for its swamp deer population and Bengal tiger?",
      options: ["Ranthambore National Park", "Jim Corbett National Park", "Dudhwa National Park", "Manas National Park"],
      correctAnswerIndex: 2,
      explanation: "Dudhwa National Park in Uttar Pradesh is known for its swamp deer population and Bengal tiger.",
    )


    // Add your questions here
    // ...
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
    home: nationalParks(),
  ));
}

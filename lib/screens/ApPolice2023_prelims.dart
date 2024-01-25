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

class ApPolice2023_prelimsScreen extends StatefulWidget {
  final String? userIdentifier;

  ApPolice2023_prelimsScreen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ApPolice2023_prelimsScreen> createState() => _ApPolice2023_prelimsScreenState();
}

class _ApPolice2023_prelimsScreenState extends State<ApPolice2023_prelimsScreen> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(32, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Let the sum of 3 numbers be 13680. If the first number is 3/5 of the third number and the ratio between the second and the third numbers is 4:7, then the first number is.",
      options: ["3,600", "3,780", "4,280", "4,800"],
      correctAnswerIndex: 2,
      explanation: "To find the first number, let's assume that the third number is 7x. Then, the second number is 4x (since the ratio between the second and third numbers is 4:7). Now, we can calculate the sum of the three numbers:\n\n7x + 4x + 3/5 * 7x = 13680.\n\nSolving this equation gives us x = 680.\n\nSo, the first number = 3/5 * 7x = 3/5 * 7 * 680 = 4,280.",
    ),

    Question(
      questionText: "What is the capital of Andhra Pradesh?",
      options: ["Vijayawada", "Visakhapatnam", "Amaravati", "Hyderabad"],
      correctAnswerIndex: 2,
      explanation: "Amaravati is the capital of Andhra Pradesh.",
    ),
    Question(
      questionText: "Who is the Chief Minister of Andhra Pradesh?",
      options: ["Chandrababu Naidu", "Jagan Mohan Reddy", "N. T. Rama Rao", "K. Rosaiah"],
      correctAnswerIndex: 1,
      explanation: "Jagan Mohan Reddy is the Chief Minister of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which river flows through Andhra Pradesh?",
      options: ["Yamuna", "Godavari", "Krishna", "Ganges"],
      correctAnswerIndex: 1,
      explanation: "The Godavari River flows through Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the official language of Andhra Pradesh?",
      options: ["Telugu", "Hindi", "English", "Tamil"],
      correctAnswerIndex: 0,
      explanation: "Telugu is the official language of Andhra Pradesh.",
    ),
    Question(
      questionText: "When was Andhra Pradesh formed?",
      options: ["1950", "1960", "1970", "1980"],
      correctAnswerIndex: 1,
      explanation: "Andhra Pradesh was formed on October 1, 1953.",
    ),
    Question(
      questionText: "Which city is known as the 'City of Destiny'?",
      options: ["Vijayawada", "Visakhapatnam", "Amaravati", "Hyderabad"],
      correctAnswerIndex: 1,
      explanation: "Visakhapatnam is known as the 'City of Destiny'.",
    ),
    Question(
      questionText: "What is the state animal of Andhra Pradesh?",
      options: ["Tiger", "Lion", "Blackbuck", "Elephant"],
      correctAnswerIndex: 2,
      explanation: "The Blackbuck is the state animal of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which festival is celebrated with the 'Deccan Festival' in Andhra Pradesh?",
      options: ["Pongal", "Diwali", "Ugadi", "Ganesh Chaturthi"],
      correctAnswerIndex: 2,
      explanation: "Ugadi is celebrated with the 'Deccan Festival' in Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the highest peak in Andhra Pradesh?",
      options: ["Tirumala", "Arma Konda", "Anamudi", "Kalsubai"],
      correctAnswerIndex: 1,
      explanation: "Arma Konda is the highest peak in Andhra Pradesh.",
    ),
    Question(
      questionText: "Which fort is located in the city of Guntur?",
      options: ["Golconda Fort", "Warangal Fort", "Bhongir Fort", "Kondapalli Fort"],
      correctAnswerIndex: 3,
      explanation: "Kondapalli Fort is located in the city of Guntur.",
    ),
    Question(
      questionText: "Who was the first Chief Minister of Andhra Pradesh?",
      options: ["P. V. Narasimha Rao", "K. Brahmananda Reddy", "N. Chandrababu Naidu", "Y. S. Rajasekhara Reddy"],
      correctAnswerIndex: 1,
      explanation: "K. Brahmananda Reddy was the first Chief Minister of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which dance form is associated with Andhra Pradesh?",
      options: ["Bharatanatyam", "Kathakali", "Kuchipudi", "Odissi"],
      correctAnswerIndex: 2,
      explanation: "Kuchipudi is a famous dance form associated with Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the state bird of Andhra Pradesh?",
      options: ["Peacock", "Indian Roller", "Sparrow", "Parrot"],
      correctAnswerIndex: 1,
      explanation: "The Indian Roller is the state bird of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which famous temple is located in Tirupati?",
      options: ["Meenakshi Temple", "Kashi Vishwanath Temple", "Siddhivinayak Temple", "Venkateswara Temple"],
      correctAnswerIndex: 3,
      explanation: "The Venkateswara Temple is located in Tirupati, Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the largest city in Andhra Pradesh by population?",
      options: ["Vijayawada", "Visakhapatnam", "Amaravati", "Hyderabad"],
      correctAnswerIndex: 1,
      explanation: "Visakhapatnam is the largest city in Andhra Pradesh by population.",
    ),
    Question(
      questionText: "Which Indian President hails from Andhra Pradesh?",
      options: ["A. P. J. Abdul Kalam", "Dr. Rajendra Prasad", "Dr. Zakir Husain", "S. Radhakrishnan"],
      correctAnswerIndex: 0,
      explanation: "Dr. A. P. J. Abdul Kalam, the 'Missile Man of India,' hails from Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the main seaport in Andhra Pradesh?",
      options: ["Kandla Port", "Mormugao Port", "Paradip Port", "Visakhapatnam Port"],
      correctAnswerIndex: 3,
      explanation: "Visakhapatnam Port is the main seaport in Andhra Pradesh.",
    ),
    Question(
      questionText: "Who wrote the Telugu epic 'Maha Bharatamu'?",
      options: ["Nannaya Bhattaraka", "Tikkana Somayaji", "Yerrapragada", "Bammera Potana"],
      correctAnswerIndex: 0,
      explanation: "Nannaya Bhattaraka wrote the Telugu epic 'Maha Bharatamu.'",
    ),
    Question(
      questionText: "What is the famous festival celebrated in Rajahmundry, Andhra Pradesh?",
      options: ["Pongal", "Diwali", "Ugadi", "Pushkaram"],
      correctAnswerIndex: 3,
      explanation: "Pushkaram is a famous festival celebrated in Rajahmundry, Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the capital of France?",
      options: ["Madrid", "Berlin", "Paris", "London"],
      correctAnswerIndex: 2,
      explanation: "Paris is the capital of France.",
    ),
    Question(
      questionText: "Which planet is known as the Red Planet?",
      options: ["Mars", "Jupiter", "Venus", "Saturn"],
      correctAnswerIndex: 0,
      explanation: "Mars is often referred to as the Red Planet due to its reddish appearance.",
    ),
    Question(
      questionText: "Who wrote the play 'Romeo and Juliet'?",
      options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Leo Tolstoy"],
      correctAnswerIndex: 1,
      explanation: "William Shakespeare wrote the play 'Romeo and Juliet.'",
    ),
    Question(
      questionText: "Which gas do plants absorb from the atmosphere?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0,
      explanation: "Plants absorb carbon dioxide from the atmosphere during photosynthesis.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    Question(
      questionText: "What is the capital of France?",
      options: ["Madrid", "Berlin", "Paris", "London"],
      correctAnswerIndex: 2,
      explanation: "Paris is the capital of France.",
    ),
    Question(
      questionText: "Which planet is known as the Red Planet?",
      options: ["Mars", "Jupiter", "Venus", "Saturn"],
      correctAnswerIndex: 0,
      explanation: "Mars is often referred to as the Red Planet due to its reddish appearance.",
    ),
    Question(
      questionText: "Who wrote the play 'Romeo and Juliet'?",
      options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Leo Tolstoy"],
      correctAnswerIndex: 1,
      explanation: "William Shakespeare wrote the play 'Romeo and Juliet.'",
    ),
    Question(
      questionText: "Which gas do plants absorb from the atmosphere?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0,
      explanation: "Plants absorb carbon dioxide from the atmosphere during photosynthesis.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
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
    _startApPolice2023_prelimsTimer();
  }
  void _startApPolice2023_prelimsTimer() {
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
              return ListTile(
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
    home: ApPolice2023_prelimsScreen(),
  ));
}

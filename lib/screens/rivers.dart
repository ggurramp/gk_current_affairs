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

class riversScreen extends StatefulWidget {
  final String? userIdentifier;

  riversScreen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<riversScreen> createState() => _riversScreenState();
}

class _riversScreenState extends State<riversScreen> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Which of the following rivers is the longest river in India?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Indus"],
      correctAnswerIndex: 0,
      explanation: "The Ganges is the longest river in India, with a total length of 2,525 kilometers.",
    ),

    Question(
      questionText: "Which of the following rivers is the largest river in the southern region of India?",
      options: ["Godavari", "Krishna", "Kaveri", "Narmada"],
      correctAnswerIndex: 0,
      explanation: "The Godavari is the largest river in the southern region of India.",
    ),

    Question(
      questionText: "Which of the following rivers is known as the River of the North?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Indus"],
      correctAnswerIndex: 0,
      explanation: "The Ganges is known as the River of the North because it originates in the Himalayas and flows through the northern states of India.",
    ),

    Question(
      questionText: "Which of the following rivers is the only major river in India that flows from east to west?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Narmada"],
      correctAnswerIndex: 3,
      explanation: "The Narmada is the only major river in India that flows from east to west.",
    ),

    Question(
      questionText: "In the vicinity of which river is the Kaziranga National Park, home to the world's largest population of one-horned rhinoceroses, located?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Kaveri"],
      correctAnswerIndex: 2,
      explanation: "The Kaziranga National Park, which is home to the world's largest population of one-horned rhinoceroses, is located near the Brahmaputra River.",
    ),

    Question(
      questionText: "Which river is often referred to as the 'River of Sorrow' due to its frequent flooding?",
      options: ["Ganges", "Godavari", "Kosi", "Yamuna"],
      correctAnswerIndex: 2,
      explanation: "The Kosi River is often referred to as the 'River of Sorrow' due to its frequent and devastating floods.",
    ),

    Question(
      questionText: "Which region, fed by the Brahmaputra and Ganges rivers, is home to the world's largest delta?",
      options: ["Mangalore", "Godavari Basin", "Brahmaputra Basin", "Sundarbans"],
      correctAnswerIndex: 3,
      explanation: "The Sundarbans is the world's largest delta and is fed by the Brahmaputra and Ganges rivers.",
    ),

    Question(
      questionText: "Which of the following rivers is mentioned in the Vedas as a mighty river that flowed through India?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Saraswati"],
      correctAnswerIndex: 3,
      explanation: "The Saraswati river is mentioned in the Vedas, ancient Hindu texts, as a mighty river that flowed through India.",
    ),

    Question(
      questionText: "Which of the following rivers is revered as a sacred river by Hindus and is believed to offer liberation from the cycle of birth and death?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Narmada"],
      correctAnswerIndex: 3,
      explanation: "The Narmada is revered as a sacred river by Hindus and is believed to offer moksha or liberation from the cycle of birth and death.",
    ),

    Question(
      questionText: "Which region, known for its mangrove forests, is home to the world's largest population of tigers?",
      options: ["Ganges Basin", "Godavari Basin", "Brahmaputra Basin", "Sundarbans"],
      correctAnswerIndex: 3,
      explanation: "The Sundarbans, known for its mangrove forests, is home to the world's largest population of tigers.",
    ),

    Question(
      questionText: "Which of the following rivers is the most vital for irrigation, supporting a significant portion of India's agrarian economy?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Indus"],
      correctAnswerIndex: 0,
      explanation: "The Ganges is the most vital river for irrigation in India, supporting a significant portion of the country's agrarian economy.",
    ),

    Question(
      questionText: "Which of the following rivers plays a major role in transportation, with navigable waterways being used to transport goods and people?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Indus"],
      correctAnswerIndex: 0,
      explanation: "The Ganges plays a major role in transportation in India, with its navigable waterways being used to transport goods and people throughout the region.",
    ),

    Question(
      questionText: "Which of the following rivers originates from the Amarkantak plateau?",
      options: ["Ganges", "Godavari", "Brahmaputra", "Narmada"],
      correctAnswerIndex: 3,
      explanation: "The Narmada river originates from the Amarkantak plateau in Madhya Pradesh.",
    ),

    Question(
      questionText: "Which river is considered the holiest in Hinduism and has several pilgrimage sites along its banks?",
      options: ["Ganges", "Godavari", "Kaveri", "Yamuna"],
      correctAnswerIndex: 0,
      explanation: "The Ganges River is considered the holiest in Hinduism and has numerous pilgrimage sites along its banks, such as Varanasi and Haridwar.",
    ),

    Question(
      questionText: "Which of the following rivers is referred to as the 'Dakshin Ganga' or 'Southern Ganges'?",
      options: ["Ganges", "Krishna", "Godavari", "Kaveri"],
      correctAnswerIndex: 2,
      explanation: "The Godavari River is often referred to as the 'Dakshin Ganga' or 'Southern Ganges' because of its significance and expanse in the southern part of India.",
    ),

    Question(
      questionText: "Which river has the Sabarmati Ashram, a residence of Mahatma Gandhi, on its banks?",
      options: ["Ganges", "Sabarmati", "Yamuna", "Saraswati"],
      correctAnswerIndex: 1,
      explanation: "The Sabarmati River has the Sabarmati Ashram, which was the residence of Mahatma Gandhi and the center of many of his political activities.",
    ),

    Question(
      questionText: "The city of Hyderabad is located on the banks of which river?",
      options: ["Ganges", "Krishna", "Godavari", "Musi"],
      correctAnswerIndex: 3,
      explanation: "The city of Hyderabad is located on the banks of the Musi River, a tributary of the Krishna River.",
    ),

    Question(
      questionText: "Which river, originating in the Western Ghats, merges with the Bay of Bengal and is sacred to the people of Tamil Nadu?",
      options: ["Godavari", "Krishna", "Kaveri", "Bhima"],
      correctAnswerIndex: 2,
      explanation: "The Kaveri River originates in the Western Ghats and merges with the Bay of Bengal. It holds immense religious significance to the people of Tamil Nadu.",
    ),

    Question(
      questionText: "Which river is associated with the annual 'Pushkar Fair', one of the largest camel fairs in the world?",
      options: ["Chambal", "Yamuna", "Saraswati", "Pushkar Lake"],
      correctAnswerIndex: 3,
      explanation: "While not a river, the Pushkar Lake is associated with the annual 'Pushkar Fair'. It is one of the largest camel fairs in the world and holds religious significance as well.",
    ),

    Question(
      questionText: "Which of the following rivers creates the famous Marble Rocks gorge near Jabalpur?",
      options: ["Chambal", "Narmada", "Sone", "Betwa"],
      correctAnswerIndex: 1,
      explanation: "The Narmada River creates the famous Marble Rocks gorge near Jabalpur, which is a popular tourist attraction.",
    ),

    Question(
      questionText: "The Sardar Sarovar Dam, a multi-purpose mega-scale project, is built on which river?",
      options: ["Ganges", "Godavari", "Narmada", "Tapti"],
      correctAnswerIndex: 2,
      explanation: "The Sardar Sarovar Dam, a major multi-purpose project providing irrigation, electricity, and drinking water benefits, is built on the Narmada River.",
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
    home: riversScreen(),
  ));
}

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

class birdSanctuary extends StatefulWidget {
  final String? userIdentifier;

  birdSanctuary({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<birdSanctuary> createState() => _birdSanctuaryState();
}

class _birdSanctuaryState extends State<birdSanctuary> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Which sanctuary is a UNESCO World Heritage Site and known for hosting migratory birds including the Siberian crane?",
      options: ["Bharatpur Bird Sanctuary", "Sultanpur Bird Sanctuary", "Salim Ali Bird Sanctuary", "Ranganathittu Bird Sanctuary"],
      correctAnswerIndex: 0,
      explanation: "Bharatpur Bird Sanctuary (Keoladeo National Park) in Rajasthan is a UNESCO World Heritage Site and known for hosting thousands of migratory birds during the winter season, including the Siberian crane.",
    ),

    Question(
      questionText: "Which bird sanctuary is located in Haryana and is popular for its diverse birdlife during winter?",
      options: ["Chilika Lake Bird Sanctuary", "Sultanpur Bird Sanctuary", "Thattekad Bird Sanctuary", "Sundarbans Bird Sanctuary"],
      correctAnswerIndex: 1,
      explanation: "Sultanpur Bird Sanctuary in Haryana is popular for its diverse birdlife, especially during the winter months.",
    ),

    Question(
      questionText: "Which bird sanctuary is named after the renowned ornithologist Salim Ali?",
      options: ["Nal Sarovar Bird Sanctuary", "Bhigwan Bird Sanctuary", "Salim Ali Bird Sanctuary", "Kumarakom Bird Sanctuary"],
      correctAnswerIndex: 2,
      explanation: "Salim Ali Bird Sanctuary in Goa is named after the renowned ornithologist Salim Ali.",
    ),

    Question(
      questionText: "Which sanctuary is situated along the Kaveri River and is famous for its nesting colonies of painted storks?",
      options: ["Ranganathittu Bird Sanctuary", "Pulicat Lake Bird Sanctuary", "Mayani Bird Sanctuary", "Vedanthangal Bird Sanctuary"],
      correctAnswerIndex: 0,
      explanation: "Ranganathittu Bird Sanctuary in Karnataka is situated along the Kaveri River and is famous for its nesting colonies of painted storks, spoonbills, and other waterbirds.",
    ),

    Question(
      questionText: "Which sanctuary is located within Chilika Lake and is significant for migratory birds like flamingos?",
      options: ["Chilika Lake Bird Sanctuary", "Bhigwan Bird Sanctuary", "Salim Ali Bird Sanctuary", "Sundarbans Bird Sanctuary"],
      correctAnswerIndex: 0,
      explanation: "Chilika Lake Bird Sanctuary in Odisha is located within the Chilika Lake and is significant for migratory birds, including flamingos, during the winter season.",
    ),
    Question(
      questionText: "Which sanctuary is part of the Sundarbans mangrove forest and provides habitat for the endangered masked finfoot?",
      options: ["Chilika Lake Bird Sanctuary", "Sundarbans Bird Sanctuary", "Bhigwan Bird Sanctuary", "Ranganathittu Bird Sanctuary"],
      correctAnswerIndex: 1,
      explanation: "Sundarbans Bird Sanctuary in West Bengal is part of the Sundarbans mangrove forest and provides a habitat for various bird species, including the endangered masked finfoot.",
    ),

    Question(
      questionText: "Which bird sanctuary in Maharashtra is known for hosting migratory birds like flamingos and various waders during winter?",
      options: ["Bharatpur Bird Sanctuary", "Sundarbans Bird Sanctuary", "Bhigwan Bird Sanctuary", "Salim Ali Bird Sanctuary"],
      correctAnswerIndex: 2,
      explanation: "Bhigwan Bird Sanctuary in Maharashtra is known for hosting migratory birds like flamingos and various waders, especially during the winter months.",
    ),

    Question(
      questionText: "Which sanctuary is a prime birding destination in the Western Ghats and home to the Malabar grey hornbill?",
      options: ["Thattekad Bird Sanctuary", "Sultanpur Bird Sanctuary", "Vedanthangal Bird Sanctuary", "Pulicat Lake Bird Sanctuary"],
      correctAnswerIndex: 0,
      explanation: "Thattekad Bird Sanctuary in Kerala is a prime birding destination in the Western Ghats, home to a diverse range of bird species, including the Malabar grey hornbill.",
    ),

    Question(
      questionText: "Which sanctuary in Gujarat is a vital wetland habitat for migratory birds like flamingos during winter?",
      options: ["Ranganathittu Bird Sanctuary", "Mayani Bird Sanctuary", "Nal Sarovar Bird Sanctuary", "Chilika Lake Bird Sanctuary"],
      correctAnswerIndex: 2,
      explanation: "Nal Sarovar Bird Sanctuary in Gujarat is a vital wetland habitat for migratory birds, especially flamingos, during the winter season.",
    ),

    Question(
      questionText: "Which sanctuary situated on the Vembanad Lake is known for its backwater ecosystem and bird diversity?",
      options: ["Bhigwan Bird Sanctuary", "Kumarakom Bird Sanctuary", "Mayani Bird Sanctuary", "Sultanpur Bird Sanctuary"],
      correctAnswerIndex: 1,
      explanation: "Kumarakom Bird Sanctuary in Kerala is situated on the Vembanad Lake and is known for its backwater ecosystem and bird diversity, including waterfowl and migratory species.",
    ),

    Question(
      questionText: "Which sanctuary located at the Pulicat Lake is a haven for various bird species including flamingos, pelicans, and waders?",
      options: ["Pulicat Lake Bird Sanctuary", "Thattekad Bird Sanctuary", "Sundarbans Bird Sanctuary", "Bharatpur Bird Sanctuary"],
      correctAnswerIndex: 0,
      explanation: "Pulicat Lake Bird Sanctuary located at the border of Andhra Pradesh and Tamil Nadu at the Pulicat Lake is a haven for various bird species, including flamingos, pelicans, and waders.",
    ),

    Question(
      questionText: "Which sanctuary in Maharashtra is a crucial stopover for migratory birds and hosts a wide range of waterfowl during winter?",
      options: ["Kumarakom Bird Sanctuary", "Mayani Bird Sanctuary", "Vedanthangal Bird Sanctuary", "Bhigwan Bird Sanctuary"],
      correctAnswerIndex: 1,
      explanation: "Mayani Bird Sanctuary in Maharashtra is a crucial stopover for migratory birds and hosts a wide range of waterfowl during the winter season.",
    ),

    Question(
      questionText: "Which is one of the oldest bird sanctuaries in India and provides sanctuary for waterbirds and waders?",
      options: ["Bhigwan Bird Sanctuary", "Chilika Lake Bird Sanctuary", "Salim Ali Bird Sanctuary", "Vedanthangal Bird Sanctuary"],
      correctAnswerIndex: 3,
      explanation: "Vedanthangal Bird Sanctuary in Tamil Nadu is one of the oldest bird sanctuaries in India and provides a sanctuary for a variety of waterbirds and waders.",
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
    home: birdSanctuary(),
  ));
}

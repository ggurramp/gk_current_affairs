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

class indianHills extends StatefulWidget {
  final String? userIdentifier;

  indianHills({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<indianHills> createState() => _indianHillsState();
}

class _indianHillsState extends State<indianHills> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Which hilly terrain in Jharkhand has historical importance due to its association with the Rajmahal kingdom?",
      options: ["Gawilgarh Hills", "Garhjat Hills", "Rajmahal Hills", "Seshachalam Hills"],
      correctAnswerIndex: 2,
      explanation: "Rajmahal Hills in Jharkhand are historically significant due to their association with the Rajmahal kingdom. The region offers a mix of rich history and scenic beauty.",
    ),

    Question(
      questionText: "Which hills are located in Odisha and are part of the Eastern Ghats?",
      options: ["Garhjat Hills", "Rajmahal Hills", "Seshachalam Hills", "Varusanadu Hills"],
      correctAnswerIndex: 0,
      explanation: "Garhjat Hills are located in Odisha and form a part of the Eastern Ghats. The region provides a habitat for diverse flora and fauna and plays a crucial role in the ecology of the state.",
    ),

    Question(
      questionText: "Situated in Tamil Nadu, which hills are known for their unique vegetation and biodiversity?",
      options: ["Seshachalam Hills", "Gawilgarh Hills", "Sirumalai Hills", "Garhjat Hills"],
      correctAnswerIndex: 2,
      explanation: "Sirumalai Hills in Tamil Nadu are recognized for their unique vegetation and biodiversity. The area provides a mix of pleasant weather and rich flora, attracting tourists and researchers alike.",
    ),

    Question(
      questionText: "Which hills in Andhra Pradesh are revered for the famous Tirumala Venkateswara Temple?",
      options: ["Varusanadu Hills", "Sirumalai Hills", "Seshachalam Hills", "Garhjat Hills"],
      correctAnswerIndex: 2,
      explanation: "Seshachalam Hills in Andhra Pradesh are famous for the Tirumala Venkateswara Temple, one of the most visited pilgrimage sites in the world. Apart from its religious significance, the hills also house diverse flora and fauna.",
    ),

    Question(
      questionText: "Which hills in Tamil Nadu are less explored but offer unique biodiversity and scenic landscapes?",
      options: ["Seshachalam Hills", "Sirumalai Hills", "Varusanadu Hills", "Rajmahal Hills"],
      correctAnswerIndex: 2,
      explanation: "Varusanadu Hills in Tamil Nadu, though less explored, offer unique biodiversity and scenic landscapes, making them a haven for nature enthusiasts and researchers.",
    ),
    Question(
      questionText: "Which hill, located in Gujarat, is a significant pilgrimage site for both Hindus and Jains?",
      options: ["Nilgiri Hills", "Satmala Hill", "Girnar Hill", "Kudagu Hills"],
      correctAnswerIndex: 2,
      explanation: "Girnar Hill in Gujarat is a renowned pilgrimage site for both Hindus and Jains. It's notable not just for its spiritual significance but also for its rich biodiversity and stunning landscapes.",
    ),

    Question(
      questionText: "Which hill is part of the Western Ghats in Maharashtra and contributes to the unique biodiversity of the region?",
      options: ["Satmala Hill", "Daringbad Hill Station", "Barmura Hill", "Patkai Bum Hills"],
      correctAnswerIndex: 0,
      explanation: "Satmala Hill in Maharashtra is part of the Western Ghats. The region, known for its unique biodiversity, plays a pivotal role in India's ecological landscape.",
    ),

    Question(
      questionText: "Which hill range is part of the Eastern Himalayas and is covered in lush tropical rainforests?",
      options: ["Kudagu Hills", "Patkai Bum Hills", "Girnar Hill", "Gawilgarh Hills"],
      correctAnswerIndex: 1,
      explanation: "Patkai Bum Hills in Arunachal Pradesh are part of the Eastern Himalayas and are characterized by their lush tropical rainforests, rich biodiversity, and scenic beauty.",
    ),

    Question(
      questionText: "Also known as Coorg, which hill region is famous for its coffee plantations?",
      options: ["Darjeeling Hills", "Kudagu Hills", "Gawilgarh Hills", "Rajmahal Hills"],
      correctAnswerIndex: 1,
      explanation: "Kudagu Hills, also known as Coorg, in Karnataka are famous for their coffee plantations, scenic beauty, and unique culture.",
    ),

    Question(
      questionText: "Which hills in West Bengal are renowned for tea plantations and often referred to as the 'Place of the thunderbolt'?",
      options: ["Kudagu Hills", "Darjeeling Hills", "Gawilgarh Hills", "Rajmahal Hills"],
      correctAnswerIndex: 1,
      explanation: "Darjeeling Hills in West Bengal are renowned for their exquisite tea plantations. The term 'Darjeeling' itself translates to 'Place of the thunderbolt'. The region's tea is world-famous.",
    ),

// ... Following the same pattern for the remaining hills.

    Question(
      questionText: "Which hill range in Maharashtra is known for its fort and historical significance?",
      options: ["Gawilgarh Hills", "Harischandra Range", "Rajmahal Hills", "Garhjat Hills"],
      correctAnswerIndex: 0,
      explanation: "Gawilgarh Hills in Maharashtra are known for the Gawilgarh fort and have historical significance related to the Maratha empire.",
    ),

    Question(
      questionText: "Which range in Maharashtra is named after a legendary king and is known for its rugged topography?",
      options: ["Gawilgarh Hills", "Harischandra Range", "Rajmahal Hills", "Garhjat Hills"],
      correctAnswerIndex: 1,
      explanation: "The Harischandra Range in Maharashtra is named after a legendary king Harishchandra and is recognized for its rugged topography and scenic beauty.",
    ),

// ... Continue for the remaining hills.

    Question(
      questionText: "Which pilgrimage town is known for being the origin point of the Narmada and Sone rivers?",
      options: ["Daringbad Hill Station", "Amarkantak Hill", "Girnar Hill", "Barmura Hill"],
      correctAnswerIndex: 1,
      explanation: "Amarkantak Hill in Madhya Pradesh is a significant pilgrimage town and is notably the origin point of two prominent Indian rivers, Narmada and Sone. The location is revered for its spiritual significance and natural beauty.",
    ),

    Question(
      questionText: "Which hill in Tripura is known for its picturesque beauty and rich biodiversity?",
      options: ["Girnar Hill", "Satmala Hill", "Barmura Hill", "Patkai Bum Hills"],
      correctAnswerIndex: 2,
      explanation: "Barmura Hill in Tripura is celebrated for its scenic beauty, rich biodiversity, and serene landscapes. It's a testament to the northeastern region's diverse ecology.",
    ),

// ... Continue in this format for the other hills.

    Question(
      questionText: "Which hill range, part of the Western Ghats, is known for its lush tea and coffee plantations?",
      options: ["Chali Hill", "Nilgiri Hills", "Matheran Hill Station", "Daringbad Hill Station"],
      correctAnswerIndex: 1,
      explanation: "The Nilgiri Hills in Tamil Nadu are part of the Western Ghats and are famous for their lush tea and coffee plantations, rich biodiversity, and picturesque landscapes.",
    ),

    Question(
      questionText: "Which hill in Himachal Pradesh is renowned for its serene beauty and cool climate?",
      options: ["Chali Hill", "Nilgiri Hills", "Matheran Hill Station", "Daringbad Hill Station"],
      correctAnswerIndex: 0,
      explanation: "Chali Hill is located in Himachal Pradesh, a region known for its tranquil beauty, dense forests, and pleasant climate.",
    ),

    Question(
      questionText: "Which hill station is a popular tourist destination near Mumbai known for its pollution-free environment?",
      options: ["Daringbad Hill Station", "Matheran Hill Station", "Girnar Hill", "Barmura Hill"],
      correctAnswerIndex: 1,
      explanation: "Matheran Hill Station in Maharashtra is a renowned tourist spot near Mumbai. It's unique because vehicles are not allowed, ensuring a pollution-free atmosphere. The place is also known for its scenic beauty and panoramic views.",
    ),

    Question(
      questionText: "Often referred to as the 'Kashmir of Odisha', which hill station is known for its pine forests and coffee plantations?",
      options: ["Matheran Hill Station", "Daringbad Hill Station", "Girnar Hill", "Satmala Hill"],
      correctAnswerIndex: 1,
      explanation: "Daringbad Hill Station, located in Odisha, is often termed the 'Kashmir of Odisha'. It's known for its picturesque beauty, cool climate, pine forests, and coffee plantations.",
    ),

// ... Continuing in this format for the rest.

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
    home: indianHills(),
  ));
}

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

class globalisation extends StatefulWidget {
  final String? userIdentifier;

  globalisation({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<globalisation> createState() => _globalisationState();
}

class _globalisationState extends State<globalisation> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What characteristics define 'closed economies' in their initial years of development?",
      options: [
        "Strong focus on global trade, minimal government intervention, and reliance on imports",
        "High insulation from the rest of the world, limited trade, and a government role as a direct producer of goods and services",
        "Extensive reliance on imports, complete reliance on exports, and a strong emphasis on international partnerships",
        "High involvement in global markets, diverse resource allocation, and limited government control over domestic industries"
      ],
      correctAnswerIndex: 1,
      explanation: "Closed economies in their initial years are characterized by high insulation from the rest of the world, limited trade, and a government role as a direct producer of goods and services.",
    ),

    Question(
      questionText: "What are some challenges posed by globalization according to the text?",
      options: [
        "Decreasing consumer choices, limited access to information, and economic stagnation",
        "Reduced global competitiveness, increased poverty, and limited technological advancements",
        "Pressure for liberal imports threatening domestic goods, inflow of foreign funds impacting currency values, and the risk of shifting to a consumption-driven economy",
        "Declining urbanization, restricted cultural exchanges, and limited impact on societal changes"
      ],
      correctAnswerIndex: 2,
      explanation: "Some challenges posed by globalization include pressure for liberal imports threatening domestic goods, inflow of foreign funds impacting currency values, and the risk of shifting to a consumption-driven economy.",
    ),

    Question(
      questionText: "What transformation in society has been observed as a result of globalization?",
      options: [
        "Decreased interaction across cultures, reduced travel, and lower income levels",
        "Increased societal divisions, reduced access to technology, and restricted consumer choices",
        "Greater cross-border tourism, enhanced information symmetry, and changing roles for women",
        "Limited access to education, decreased global connectivity, and reduced standards of living"
      ],
      correctAnswerIndex: 2,
      explanation: "The transformation due to globalization includes greater cross-border tourism, enhanced information symmetry, and changing roles for women.",
    ),

    Question(
      questionText: "What were the three mega-trends related to globalization that emerged recently?",
      options: [
        "Changes in government policies, economic reforms, and technological advancements",
        "Shifts in production and labor markets, rapid advances in technology, and climate change",
        "Cultural exchanges, media transformations, and increased global accessibility",
        "Increased globalization, market expansion, and trade liberalization"
      ],
      correctAnswerIndex: 1,
      explanation: "The three mega-trends related to globalization that emerged recently are shifts in production and labor markets, rapid advances in technology, and climate change.",
    ),

    Question(
      questionText: "How does the text describe the impact of globalization on Indian society?",
      options: [
        "Globalization has led to isolationism and reduced interaction with other nations",
        "It has resulted in reduced cultural exchanges and a more conservative outlook",
        "Globalization has led to the emergence of a growing middle class, increased access to global goods and services, and social changes such as changing roles for women and greater information symmetry",
        "The impact of globalization has been negligible on Indian society"
      ],
      correctAnswerIndex: 2,
      explanation: "The impact of globalization on Indian society includes the emergence of a growing middle class, increased access to global goods and services, and social changes such as changing roles for women and greater information symmetry.",
    ),

    Question(
      questionText: "What role did Economic Reforms of 1991 play in India's journey towards globalization?",
      options: [
        "They reinforced the closed economy model and discouraged international trade",
        "They focused solely on liberalization without consideration for globalization",
        "The reforms centered around liberalization, privatization, and globalization (LPG) aimed at achieving domestic and global competitiveness, increasing global trade share, and higher growth through manufacturing and exports",
        "The reforms mainly concentrated on increasing government control over the economy"
      ],
      correctAnswerIndex: 2,
      explanation: "The Economic Reforms of 1991 centered around liberalization, privatization, and globalization (LPG) aimed at achieving domestic and global competitiveness, increasing global trade share, and higher growth through manufacturing and exports.",
    ),

    Question(
      questionText: "What characterizes inward-looking (closed) economies in their initial stages of development?",
      options: [
        "High dependency on foreign trade",
        "High insulation from the rest of the world and a focus on domestic demand",
        "An emphasis on exports over imports",
        "A complete openness to global trade and capital"
      ],
      correctAnswerIndex: 1,
      explanation: "Inward-looking (closed) economies in their initial stages of development are characterized by high insulation from the rest of the world and a focus on domestic demand.",
    ),

    Question(
      questionText: "What are some of the key facilitators that have led to the transformation of closed economies into more open, outward-looking economies?",
      options: [
        "Increased government control and higher regulation",
        "Improved domestic production capacities",
        "Global accessibility, telecommunication revolution, information metamorphosis, media transformation, redefined living standards, and cultural exchanges",
        "Greater emphasis on self-reliance and import substitution"
      ],
      correctAnswerIndex: 2,
      explanation: "The key facilitators that have led to the transformation of closed economies into more open, outward-looking economies include global accessibility, telecommunication revolution, information metamorphosis, media transformation, redefined living standards, and cultural exchanges.",
    ),

    Question(
      questionText: "What are some challenges associated with globalization, as highlighted in the text?",
      options: [
        "Decrease in global competitiveness and trade barriers",
        "Enhanced domestic manufacturing and efficient resource allocation",
        "Rise in conspicuous consumption, potential surge in foreign funds, and the need to make the domestic sector globally competitive",
        "Increased government control and limited global interactions"
      ],
      correctAnswerIndex: 2,
      explanation: "Some challenges associated with globalization include a rise in conspicuous consumption, potential surge in foreign funds, and the need to make the domestic sector globally competitive.",
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
              final isCorrectAnswer = optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8.0), // Add space between boxes
                  decoration: BoxDecoration(
                    color: _selectedAnswerIndex == optionIndex
                        ? (isCorrectAnswer ? Colors.green[200] : Colors.red[300])
                        : Colors.white,
                    border: Border.all(
                      color: _selectedAnswerIndex == optionIndex ? Colors.blue : Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(optionText),
                    leading: Radio<int>(
                      value: optionIndex,
                      groupValue: _selectedAnswerIndex,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedAnswerIndex = value;
                          _userAnswers[_currentQuestionIndex] = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
          MyBannerAdWidget(), // Add the banner ad here
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



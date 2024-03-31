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

class geat extends StatefulWidget {
  final String? userIdentifier;

  geat({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<geat> createState() => _geatState();
}

class _geatState extends State<geat> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What characterized the dominance of the British Empire in the global economy during the early transition phase?",
      options: ["Increased economic openness and interdependence", "Colonization, imperialism, and mass exploitation of colonies", "Decentralized trade policies and reduced imperialism", "Strengthened economic collaboration among colonies"],
      correctAnswerIndex: 1,
      explanation: "The dominance of the British Empire in the early transition phase was characterized by colonization, imperialism, and mass exploitation of colonies.",
    ),

    Question(
      questionText: "What significant change was observed during the third transition in the global economy?",
      options: ["Increased collaboration between First World and Third World countries", "Emergence of China and India as superpowers", "Polarization of economies leading to the North-South divide", "Sharp increase in trade among First World countries"],
      correctAnswerIndex: 2,
      explanation: "The third transition saw increased polarization of economies, leading to the North-South divide.",
    ),

    Question(
      questionText: "What was the impact of the breakdown of the erstwhile USSR and reforms in China on the global economy?",
      options: ["Decreased role of respective governments in trade and investment", "Lessened polarization and evolution of multi-polar trading", "Increased dominance of the First World economies", "Greater isolation of the global economy"],
      correctAnswerIndex: 1,
      explanation: "The breakdown of the USSR and reforms in China led to lessened polarization and the evolution of multi-polar trading.",
    ),

    Question(
      questionText: "What term was used to refer to economies like China, India, and other emerging economies in the global market?",
      options: ["Developing economies", "Third World countries", "New and Emerging Economies", "Peripheral economies"],
      correctAnswerIndex: 2,
      explanation: "Economies like China, India, and others were referred to as 'New and Emerging Economies' in the global market.",
    ),

    Question(
      questionText: "How is globalization distinct from integration?",
      options: ["Globalization drives integration", "Globalization and integration refer to identical concepts", "Globalization results from integration", "Integration is a result of globalization"],
      correctAnswerIndex: 3,
      explanation: "Integration is the result of globalization, indicating that globalization precedes and leads to integration in the global economy.",
    ),

    Question(
      questionText: "During the initial transitions in the global economy, what characterized the British Empire's economic dominance?",
      options: ["Collaboration and equal trade partnerships", "Colonial exploitation and imperialism", "Trade openness and regulated markets", "Financial assistance to developing nations"],
      correctAnswerIndex: 1,
      explanation: "The dominance of the British Empire was marked by colonial exploitation and imperialism.",
    ),

    Question(
      questionText: "What significant change marked the third transition in the global economy?",
      options: ["Improved relations between First World and Third World countries", "Emergence of China and India as dominant powers", "Polarization of economies creating the North-South divide", "Enhanced trade between First World nations"],
      correctAnswerIndex: 2,
      explanation: "The third transition witnessed increased polarization of economies, leading to the North-South divide.",
    ),

    Question(
        questionText: "What was the outcome of the breakdown of the USSR and reforms in China on the global economic scenario?",
        options: ["Reduced government involvement in trade and investment", "Decreased polarization and the rise of multi-polar trading", "Greater dominance of First World economies", "Increased isolation of the global economy"],
        correctAnswerIndex: 1,
        explanation: "The breakdown of the USSR and reforms in China resulted in decreased polarization and the emergence of multi-polar trading."
    ),

    Question(
        questionText: "What term was used to describe economies like China, India, and others in the global market?",
        options: ["Developing economies", "Third World countries", "New and Emerging Economies", "Peripheral economies"],
        correctAnswerIndex: 2,
        explanation: "Economies like China, India, and others were labeled as 'New and Emerging Economies' in the global market."
    ),

    Question(
      questionText: "Differentiate between globalization and integration.",
      options: ["Globalization leads to integration", "Globalization and integration mean the same", "Globalization is an outcome of integration", "Integration is the consequence of globalization"],
      correctAnswerIndex: 3,
      explanation: "Integration is the outcome of globalization; therefore, integration is a result of the process of globalization in the global economy.",
    ),

    Question(
      questionText: "What was the nature of the dominance exhibited by the British Empire in the global economy?",
      options: ["Collaborative trade agreements", "Exploitation and imperialism", "Open trade and regulated markets", "Financial support for developing nations"],
      correctAnswerIndex: 1,
      explanation: "The dominance of the British Empire was characterized by exploitation and imperialism in the global economy.",
    ),

    Question(
      questionText: "What marked the emergence of the 'North-South divide' in the global economy?",
      options: ["Increased cooperation between developed and developing nations", "Rise of China and India as dominant economies", "Polarization of economies with developed and developing nations", "Enhanced trade between First World and Third World nations"],
      correctAnswerIndex: 2,
      explanation: "The emergence of the 'North-South divide' was marked by the polarization of economies into developed and developing nations.",
    ),

    Question(
      questionText: "What impact did the breakdown of the USSR and reforms in China have on the global economic scenario?",
      options: ["Increased government intervention in trade and investment", "Rising polarization and a unipolar trading system", "Reduced polarization and emergence of multi-polar trading", "Decreased international trade and isolationist policies"],
      correctAnswerIndex: 2,
      explanation: "The breakdown of the USSR and reforms in China led to reduced polarization and the emergence of multi-polar trading in the global economic scenario.",
    ),

    Question(
      questionText: "How were economies like China and India labeled in the global market?",
      options: ["Peripheral economies", "Third World countries", "Developing economies", "New and Emerging Economies"],
      correctAnswerIndex: 3,
      explanation: "Economies like China and India were termed as 'New and Emerging Economies' in the global market.",
    ),

    Question(
      questionText: "Distinguish between globalization and integration.",
      options: ["Globalization precedes integration", "Integration leads to globalization", "Globalization and integration have similar meanings", "Integration is the result of globalization"],
      correctAnswerIndex: 3,
      explanation: "Integration is the outcome of globalization; thus, integration is a consequence of the process of globalization in the global economy.",
    ),

    Question(
      questionText: "What was the initial state of the global economy in terms of dominance before the emergence of the 'North-South divide'?",
      options: ["Balance of power among various economies", "Supremacy of the Third World countries", "Rise of developing nations", "Dominance of the British Empire with imperialism"],
      correctAnswerIndex: 3,
      explanation: "Before the 'North-South divide,' the global economy was dominated by the British Empire with its imperialism and exploitation of colonies.",
    ),

    Question(
      questionText: "How did the breakdown of the USSR and reforms in China impact global trading?",
      options: ["Increased isolationism among nations", "Strengthened polarization among economies", "Introduced multi-polar trading", "Deteriorated international relations"],
      correctAnswerIndex: 2,
      explanation: "The breakdown of the USSR and reforms in China led to the introduction of multi-polar trading in the global economy.",
    ),

    Question(
      questionText: "What term replaced the description of 'Third World countries' in the global market context?",
      options: ["Developing Economies", "Peripheral Economies", "Old and Emerging Economies", "Isolated Economies"],
      correctAnswerIndex: 0,
      explanation: "The term 'Developing Economies' replaced the description of 'Third World countries' in the global market context.",
    ),

    Question(
      questionText: "Describe the critical aspect of the integration process in the global economy.",
      options: ["Expansion of economies", "Interconnectedness rather than size", "Dominance of large economies", "Exclusive national focus"],
      correctAnswerIndex: 1,
      explanation: "The critical aspect of the integration process is interconnectedness rather than size, emphasizing the importance of global interdependence.",
    ),

    Question(
      questionText: "What factors contributed to the globalization process?",
      options: ["Increased nationalistic sentiments", "Limited financial sector integration", "Technological advancements and global financial sector integration", "Reduced cooperation between nations"],
      correctAnswerIndex: 2,
      explanation: "Technological advancements and global financial sector integration contributed significantly to the globalization process.",
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

void main() {
  runApp(MaterialApp(
    home: geat(),
  ));
}

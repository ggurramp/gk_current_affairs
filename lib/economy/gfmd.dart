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

class gfmd extends StatefulWidget {
  final String? userIdentifier;

  gfmd({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<gfmd> createState() => _gfmdState();
}

class _gfmdState extends State<gfmd> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What is the key premise of the 'decoupling theory'?",
      options: ["Economies' ability to insulate themselves from global developments", "Economies' dependence on global integration", "Economies' resistance to financial sector crises", "Economies' inability to sustain growth"],
      correctAnswerIndex: 0,
      explanation: "The 'decoupling theory' suggests that economies could insulate themselves from adverse global developments.",
    ),

    Question(
      questionText: "What caused the trigger point for the global financial crisis?",
      options: ["Default by sub-prime borrowers in Asia", "Overleveraging by European banks", "Default by sub-prime borrowers in the US", "Overconfidence of international financial institutions"],
      correctAnswerIndex: 2,
      explanation: "The trigger point for the global financial crisis was the default by sub-prime borrowers in the US.",
    ),

    Question(
      questionText: "Enumerate the five excesses responsible for contributing to the financial crisis.",
      options: ["Excessive competition, overproduction, overregulation, financial neglect, global integration", "Overleveraging, excess liquidity, complex products, overconfidence, excessive greed", "Limited financial access, inadequate capital, isolationism, subdued consumption, conservative lending", "Uncontrolled borrowing, technological overdependence, inflationary measures, global competitiveness, lack of international cooperation"],
      correctAnswerIndex: 1,
      explanation: "The five excesses contributing to the financial crisis were overleveraging, excess liquidity, complex products, overconfidence, and excessive greed.",
    ),

    Question(
      questionText: "What role did the Indian banking sector play during the global financial crisis?",
      options: ["Exhibited high-risk lending practices", "Remained heavily exposed to international markets", "Limited impact due to risk-averse approach and dominance of public sector banks", "Collapsed due to overleveraging"],
      correctAnswerIndex: 2,
      explanation: "The Indian banking sector had limited impact during the crisis due to a risk-averse approach and dominance of public sector banks.",
    ),

    Question(
      questionText: "What interventions helped mitigate the impact of the global financial crisis in India and major economies?",
      options: ["Private sector initiatives", "Timely and collective government interventions", "Increased isolationism", "Reduced international cooperation"],
      correctAnswerIndex: 1,
      explanation: "The impact of the crisis was mitigated by timely and collective government interventions in India and major economies.",
    ),

    Question(
      questionText: "What were the primary elements of the government level interventions post-global crisis?",
      options: ["Panic avoidance, increased individual intervention, long-term reforms, fiscal deficits", "Panic avoidance, collective and consensus-driven intervention, immediate and long-term focus, reforming global financial systems", "Increased regulations, bailout packages, isolationism, international cooperation", "Increased borrowing, expansion of public sector banks, isolationism, risk aversion"],
      correctAnswerIndex: 1,
      explanation: "Post-global crisis, government interventions focused on avoiding panic, adopting collective and consensus-driven approaches, immediate and long-term strategies for reforming global financial systems.",
    ),

    Question(
      questionText: "What interventions did the Indian government undertake as part of its preventive-cum-stimulus measures?",
      options: ["Reducing fiscal deficit, increasing interest rates, limiting bank lending", "Rolling down excise duties, increasing corporate tax rates, reducing liquidity", "Advising risk averseness, running high fiscal deficit, extending export concessions", "Restructuring loan accounts, lowering CRR, providing fiscal stimuli, diversifying exports"],
      correctAnswerIndex: 3,
      explanation: "The Indian government undertook interventions such as restructuring loan accounts, lowering CRR, providing fiscal stimuli, and diversifying exports as preventive-cum-stimulus measures.",
    ),

    Question(
      questionText: "Why was the impact of the global crisis fairly limited on India's financial system?",
      options: ["Due to India's global financial dominance", "Because of the risk averse nature of public sector banks and limited exposure to global markets", "Limited exposure of Indian banks to derivatives", "Direct government intervention to prevent bank collapse"],
      correctAnswerIndex: 1,
      explanation: "The limited impact on India's financial system was due to the risk averse nature of public sector banks and their limited exposure to global markets.",
    ),

    Question(
      questionText: "What challenges and future steps does India face regarding its banking sector in light of the global crisis?",
      options: ["Maintaining global dominance, increasing risk averseness", "Adopting risk averseness, maintaining current structure", "Merging banks for critical mass, discarding public sector character for global dominance", "Improving risk assessment, expanding public sector dominance"],
      correctAnswerIndex: 2,
      explanation: "India faces the challenge of merging banks to attain critical mass and discarding the public sector character for developing Indian banks into global players.",
    ),

    Question(
      questionText: "What challenges do major economies like the US face post-global crisis according to the text?",
      options: ["Maintaining competitiveness against India and China", "Becoming competitive in labor costs against emerging economies", "Reviving growth through innovation and intellectual capabilities", "Reducing global integration to safeguard against crises"],
      correctAnswerIndex: 2,
      explanation: "Major economies like the US face the challenge of reviving growth through innovation, intellectual capabilities, and focusing on technological advancements.",
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


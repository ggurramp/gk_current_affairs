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

class growth_developement extends StatefulWidget {
  final String? userIdentifier;

  growth_developement({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<growth_developement> createState() => _growth_developementState();
}

class _growth_developementState extends State<growth_developement> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What does the phrase 'growth rates slowing down' imply?",
      options: [
        "Decrease in output over the previous quarter/half-year/year.",
        "Continuous periods of contraction over two quarters.",
        "Increase in output at a decreasing rate.",
        "Increase in output and income simultaneously."
      ],
      correctAnswerIndex: 2,
      explanation: "The phrase 'growth rates slowing down' means the output of an economy is increasing, but at a decreasing rate over the reference period.",
    ),

    Question(
      questionText: "What is the term used for continuous periods of contraction over two quarters?",
      options: ["Slowing down", "Recession", "Depression", "Expansion"],
      correctAnswerIndex: 1,
      explanation: "Continuous periods of contraction over two quarters are known as 'recession.'",
    ),

    Question(
      questionText: "Why was India believed to be caught in a 'low-growth cycle' before economic reforms?",
      options: [
        "High levels of income and savings.",
        "Agricultural sector dependence and low levels of income and savings.",
        "Excessive investments and high income.",
        "Manufacturing sector dominance and high income."
      ],
      correctAnswerIndex: 1,
      explanation: "India was believed to be caught in a 'low-growth cycle' due to agricultural sector dependence, low levels of income, and savings.",
    ),

    Question(
      questionText: "Why has the high growth rate achieved since 2005 not yielded tangible benefits to the Indian economy?",
      options: [
        "Due to a lack of resources and technology.",
        "Excessive economic dependence on the agricultural sector.",
        "Successful implementation of the trickle-down theory.",
        "Effective distribution of output and income."
      ],
      correctAnswerIndex: 1,
      explanation: "The high growth rate has not benefited the Indian masses significantly due to excessive economic dependence on the agricultural sector.",
    ),

    Question(
      questionText: "How does the concept of 'development' differ from 'growth'?",
      options: [
        "Development is quantitative, and growth is qualitative.",
        "Development includes distribution and equitable distribution in the economy, while growth is an arithmetic increase in output.",
        "Development is an arithmetic number, and growth is qualitative.",
        "Growth is the ability of increased output and income to reach the bottom-most stratum of society."
      ],
      correctAnswerIndex: 1,
      explanation: "Development includes distribution and equitable distribution in the economy, while growth is an arithmetic increase in output.",
    ),

    Question(
      questionText: "What is the missing link in India's growth process according to the text?",
      options: [
        "Maturity of the services sector before achieving manufacturing sector maturity.",
        "Overemphasis on the manufacturing sector.",
        "Lack of dependence on the agricultural sector.",
        "Simultaneous maturity of the agricultural and services sectors."
      ],
      correctAnswerIndex: 0,
      explanation: "The missing link in India's growth process is the maturity of the services sector before achieving manufacturing sector maturity.",
    ),

    Question(
      questionText: "What factors contribute to the excessive economic dependence on the agricultural sector in India?",
      options: [
        "High income levels and formal education.",
        "Lack of employment opportunities in the manufacturing sector, lack of skills, and infrastructure constraints.",
        "Governmental efforts in providing basic infrastructure.",
        "Growth of agro-based industries and modern thinking."
      ],
      correctAnswerIndex: 1,
      explanation: "Excessive economic dependence on the agricultural sector is due to lack of employment opportunities in the manufacturing sector, lack of skills, and infrastructure constraints.",
    ),

    Question(
      questionText: "What is the significance of the government's emphasis on road building and connectivity in India?",
      options: [
        "It is unrelated to economic development.",
        "It helps create jobs but has no impact on growth.",
        "Roads are the gateways to development, providing easy accessibility and faster travel.",
        "It is an ineffective strategy for economic growth."
      ],
      correctAnswerIndex: 2,
      explanation: "Roads are the gateways to development, providing easy accessibility and faster travel, contributing to economic growth.",
    ),

    Question(
      questionText: "Why has the government replaced the term 'development' with 'inclusive growth'?",
      options: [
        "Due to a lack of understanding of economic concepts.",
        "To discontinue the 'trickle-down theory' that hasn't worked effectively.",
        "To emphasize the growth of the manufacturing sector.",
        "As a political strategy to gain support."
      ],
      correctAnswerIndex: 1,
      explanation: "The government has replaced the term 'development' with 'inclusive growth' to discontinue the 'trickle-down theory' that hasn't worked effectively.",
    ),

    Question(
      questionText: "What is the primary focus of the recommendations for inclusive growth in India?",
      options: [
        "Promoting excessive economic dependence on the agricultural sector.",
        "Achieving a double-digit growth rate.",
        "Improving business environment, lowering poverty and inequality, improving fiscal situation, public governance, regulation, innovation, healthcare quality, transport infrastructure, and financial sector reforms.",
        "Implementing the trickle-down theory effectively."
      ],
      correctAnswerIndex: 2,
      explanation: "The recommendations for inclusive growth focus on improving various aspects, including business environment, poverty, inequality, fiscal situation, public governance, regulation, innovation, healthcare, transport infrastructure, and financial sector reforms.",
    ),
    Question(
      questionText: "How is inclusive growth viewed differently by the government compared to the earlier belief?",
      options: [
        "Inclusive growth considers growth and development as separate components.",
        "Inclusive growth emphasizes that growth should benefit the masses, not just the classes.",
        "The earlier belief focused on equitable distribution of benefits, while inclusive growth focuses on overall economic growth.",
        "Inclusive growth only considers growth, not development."
      ],
      correctAnswerIndex: 1,
      explanation: "Inclusive growth emphasizes that growth should benefit the masses, not just the classes, unlike the earlier belief.",
    ),

    Question(
      questionText: "What does equitable distribution in the context of inclusive growth mean?",
      options: [
        "Equal distribution arithmetically.",
        "Distribution focused on the rich getting richer.",
        "Fair and just share for the masses, especially the poor.",
        "Distribution based on the privileged sections of the economy."
      ],
      correctAnswerIndex: 2,
      explanation: "Equitable distribution in the context of inclusive growth means a fair and just share for the masses, especially the poor.",
    ),

    Question(
      questionText: "What is the objective of equitable distribution in inclusive growth?",
      options: [
        "Rich getting richer.",
        "Poor remaining poor.",
        "Both subsets in an economy moving up in the same direction.",
        "Privileged sections benefiting more than the poor."
      ],
      correctAnswerIndex: 2,
      explanation: "The objective of equitable distribution is both subsets in an economy moving up in the same direction, improving income and welfare for all.",
    ),

    Question(
      questionText: "What are the components that inclusive growth should lead to?",
      options: [
        "Increased dependence on the agricultural sector.",
        "Decreased vocational employment opportunities.",
        "Reduced inter-/intra-regional imbalances.",
        "Enhanced economic dependence on a single sector."
      ],
      correctAnswerIndex: 2,
      explanation: "Inclusive growth should lead to reduced inter-/intra-regional imbalances among other components.",
    ),

    Question(
      questionText: "What is a key prerequisite for achieving inclusive growth according to the text?",
      options: [
        "Excessive economic dependence on the agricultural sector.",
        "Pan-India road/rail links providing accessibility and affordable transport.",
        "Government's focus on private sector growth.",
        "Inequitable distribution of resources."
      ],
      correctAnswerIndex: 1,
      explanation: "Pan-India road/rail links providing accessibility and affordable transport are a key prerequisite for achieving inclusive growth.",
    ),

    Question(
      questionText: "What role does the government play in the strategy for inclusive growth since the reforms of 1991?",
      options: [
        "Concentrating on both increasing growth and equitable distribution.",
        "Diluting efforts and achieving neither growth nor equitable distribution.",
        "Letting the private sector play a major responsibility in investment and growth.",
        "Reducing social sector interventions."
      ],
      correctAnswerIndex: 2,
      explanation: "Since the reforms of 1991, the government has shifted the strategy by letting the private sector play a major role in investment and growth while concentrating on welfare measures and creating an enabling environment for inclusive growth.",
    ),

    Question(
      questionText: "What is the significance of the term 'inclusive growth' according to the text?",
      options: [
        "It is a new concept specific to India.",
        "It focuses only on growth, not development.",
        "It is a combination of growth, development, and equitable distribution.",
        "It is unrelated to economic planning objectives."
      ],
      correctAnswerIndex: 2,
      explanation: "Inclusive growth is said to be a combination of both growth, development, and equitable distribution, unique to India.",
    ),

    Question(
      questionText: "What is the rational objective of economic growth according to the text?",
      options: [
        "Growth with inequality.",
        "Growth without any focus on distribution.",
        "Growth with equity.",
        "Growth irrespective of social justice."
      ],
      correctAnswerIndex: 2,
      explanation: "The rational objective of economic growth is 'Growth with equity,' ensuring benefits are shared by all people equally.",
    ),

    Question(
      questionText: "What does 'growth with equity' ensure?",
      options: [
        "Equal distribution arithmetically.",
        "Benefits of high growth shared by all sections of the population.",
        "Privileged sections benefiting more than the poor.",
        "Market value of goods and services produced in the economy."
      ],
      correctAnswerIndex: 1,
      explanation: "'Growth with equity' ensures the benefits of high growth are shared by all sections of the population.",
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
    home: growth_developement(),
  ));
}

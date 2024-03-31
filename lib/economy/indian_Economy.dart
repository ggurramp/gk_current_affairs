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

class indianEconomy extends StatefulWidget {
  final String? userIdentifier;

  indianEconomy({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<indianEconomy> createState() => _indianEconomyState();
}

class _indianEconomyState extends State<indianEconomy> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What term differentiates the reforms initiated post-1991 from the earlier changes?",
      options: ["Policy reforms", "Structural reforms", "Evolutionary changes", "Administrative alterations"],
      correctAnswerIndex: 0,
      explanation: "The reforms initiated after 1991 are termed as 'policy reforms,' marking a shift from changes to systematic reforms.",
    ),

    Question(
      questionText: "What is the distinction between first- and second-generation reforms?",
      options: ["Second generation reforms are more time-consuming", "First generation reforms address economic poverty", "Second generation reforms are solely Central Government-driven", "First generation reforms are relatively easier to implement"],
      correctAnswerIndex: 3,
      explanation: "First-generation reforms are relatively easier to implement and are more central government-driven compared to the second-generation reforms.",
    ),

    Question(
      questionText: "What was the significant change in the industrial policy of 1991?",
      options: ["Increased taxation on private sectors", "Expansion of the industrial licensing system", "Greater role for the public sector", "Dismantling of the industrial licensing system"],
      correctAnswerIndex: 3,
      explanation: "The industrial policy of 1991 marked a significant change through the dismantling of the industrial licensing system, allowing a larger role for the private sector.",
    ),

    Question(
      questionText: "What committee recommendations drove the financial sector reforms in the banking sector?",
      options: ["Malhotra Committee", "Narasimham Committee", "Rangarajan Committee", "Bimal Jalan Committee"],
      correctAnswerIndex: 1,
      explanation: "The financial sector reforms in the banking sector were largely influenced by the recommendations of the Narasimham Committee.",
    ),

    Question(
      questionText: "What significant change was introduced in the interest rates during the banking sector reforms?",
      options: ["Fixed interest rates", "Regulated interest rates", "Liberalized interest rates", "Controlled interest rates"],
      correctAnswerIndex: 2,
      explanation: "The banking sector reforms introduced liberalized interest rates, allowing banks to decide on the interest rates for deposits and advances.",
    ),
    Question(
      questionText: "What significant transformation occurred in the insurance sector post-reforms?",
      options: ["Complete privatization", "Government dominance", "Foreign investment restrictions", "Partial opening to private sector"],
      correctAnswerIndex: 3,
      explanation: "The insurance sector experienced a partial opening to the private sector post-reforms, albeit with restrictions on foreign companies' equity participation.",
    ),

    Question(
      questionText: "What does the government emphasize unfinished agenda in economic reforms?",
      options: ["Bolder reforms", "Complex reforms", "Micro reforms", "Political reforms"],
      correctAnswerIndex: 0,
      explanation: "The need for bolder reforms as part of the government's unfinished economic agenda.",
    ),

    Question(
      questionText: "What were the key areas of subsidy reforms initiated by the Modi government?",
      options: ["Food and LPG", "Fertilizers and Food", "LPG and fertilizers", "Fertilizers and DBT"],
      correctAnswerIndex: 2,
      explanation: "The key areas of subsidy reforms initiated by the Modi government included LPG and fertilizers through the Direct Benefit Transfer (DBT) system.",
    ),

    Question(
      questionText: "Which legislation marked a significant step in overhauling India's banking sector?",
      options: ["Land Acquisition Act", "Bankruptcy Act", "Financial Resolution and Deposit Insurance Bill", "RBI Act"],
      correctAnswerIndex: 1,
      explanation: "The passage of the Bankruptcy Act was a significant step in overhauling India's banking sector.",
    ),


    Question(
      questionText: "What are some advantages India possesses over China from a global perspective?",
      options: ["Youthful population", "English-speaking workforce", "Largest democracy", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "India has several advantages including a youthful population, English-speaking workforce, and being the largest democracy, setting it apart from China.",
    ),

    Question(
      questionText: "What does India's export sector and its readiness for global competition?",
      options: ["Strong emphasis on value chain", "Highly competitive due to exchange rate movements", "Needs maturity to move up the value chain", "Minimal role in the global market"],
      correctAnswerIndex: 2,
      explanation: "It indicates that India's export sector lacks maturity in understanding the importance of moving up the value chain and relies excessively on exchange rate movements.",
    ),

    Question(
      questionText: "What is highlighted as a major challenge for India besides being an emerging market in the global economy?",
      options: ["Increasing rates of growth", "Providing inclusive growth", "Developing traditional agriculture", "Enhancing infrastructure"],
      correctAnswerIndex: 1,
      explanation: "The major challenge highlighted is not increasing rates of growth but providing greater inclusive growth, ensuring benefits reach the masses.",
    ),

    Question(
      questionText: "what challenges does India face concerning its water resources?",
      options: ["Pollution from industrial waste", "Rapid population growth", "Ensuring adequate water supply", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "India faces challenges in its water resources due to pollution from various sources, growing population strain, and the need to ensure sufficient water supply.",
    ),

    Question(
      questionText: "What major challenge does the text suggest with regards to India's urban population by 2050?",
      options: ["Infrastructure development", "Environmental sustainability", "Meeting their needs", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The text highlights the challenge of meeting the needs of India's urban population by 2050 while focusing on infrastructure development and environmental sustainability.",
    ),

    Question(
      questionText: "What is highlighted as an issue linked to health challenges in India?",
      options: ["Rising non-communicable diseases", "Environmental pollution", "Lack of skilled workforce", "Infrastructure development"],
      correctAnswerIndex: 0,
      explanation: "Health challenges in India are linked to the rising incidence of non-communicable diseases, posing both individual tragedies and economic threats.",
    ),

    Question(
        questionText: "What ranks India holds in the World Bank Human Capital Index, as per the text?",
        options: ["75", "46", "115", "87"],
        correctAnswerIndex: 2,
        explanation: "As per the World Bank Human Capital Index mentioned in the text, India ranks 115, which is notably lower compared to some of its Asian peers."
    ),

    Question(
      questionText: "What is challenge regarding India's education and workforce?",
      options: ["Shortage of skilled workers", "Inadequate infrastructure", "Insufficient investment", "Lack of access to education"],
      correctAnswerIndex: 0,
      explanation: "The challenge of a shortage of skilled workers, despite housing a substantial workforce, which poses opportunities and challenges for India.",
    ),

    Question(
      questionText: "What does the urgent need concerning India's gender issue?",
      options: ["Promoting equality", "Reducing unemployment", "Encouraging entrepreneurship", "Enhancing educational infrastructure"],
      correctAnswerIndex: 0,
      explanation: "The urgent need for India is to actively address issues related to violence and gender discrimination to achieve better economic development.",
    ),

    Question(
      questionText: "What does India need to consider concerning its sanitation challenges?",
      options: ["Environmental sustainability", "Infrastructure development", "Economic investments", "Clean environment as an investment"],
      correctAnswerIndex: 3,
      explanation: "India should view a clean environment not merely as a cost but as an investment to link it to human capital productivity.",
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
    home: indianEconomy(),
  ));
}

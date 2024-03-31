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

class lfcioe extends StatefulWidget {
  final String? userIdentifier;

  lfcioe({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<lfcioe> createState() => _lfcioeState();
}

class _lfcioeState extends State<lfcioe> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What were the identified reasons behind the crises experienced by countries like Mexico, Chile, SE Asian nations, Argentina after their market openings?",
      options: ["Inappropriate exchange rate determination, abrupt economic liberalization, and lack of oversight on short-term inflows", "Inadequate market regulation, lack of foreign investment, and absence of convertibility", "Excessive government intervention, inappropriate lending norms, and limited market determination", "Oversight on long-term investments, absence of prudential norms, and lack of risk management"],
      correctAnswerIndex: 0,
      explanation: "The crises in these nations were attributed to inappropriate exchange rate determination, abrupt economic liberalization, and the absence of oversight on short-term inflows.",
    ),

    Question(
      questionText: "What key lessons can be drawn for open economies from the crises experienced by countries like South East Asian economies, S. Korea, Russia, Chile, Argentina, and Mexico?",
      options: ["The need for complete financial isolation, limited openness, and strict regulations on foreign investment", "Promoting inward-looking economies, reducing openness, and increased government intervention", "Market-determined exchange rates, oversight on inflows, prudential lending norms, and robust financial sector regulations", "Overreliance on short-term inflows, lack of oversight, and absence of financial sector development"],
      correctAnswerIndex: 2,
      explanation: "The lessons include the importance of market-determined exchange rates, oversight on inflows, adherence to prudential lending norms, and the necessity for a robustly regulated financial sector.",
    ),

    Question(
      questionText: "What is the emphasis placed on by the Indian Government in response to the global crisis and the experiences of other open economies?",
      options: ["Returning to an inward-looking economy model", "Questioning the fundamentals of openness", "Learning from past mistakes, implementing checks and balances, and earnestly pursuing openness", "Following China's economic model without adaptations"],
      correctAnswerIndex: 2,
      explanation: "The Indian Government emphasizes learning from past mistakes, implementing checks and balances, and earnestly pursuing openness as a way forward.",
    ),

    Question(
      questionText: "What distinguishes India's stance from China concerning market-determined exchange rates and convertible currency?",
      options: ["India leans towards a managed exchange rate and a non-convertible currency", "India practices a completely market-determined exchange rate and a convertible currency", "India focuses on an inward-looking economic model, unlike China", "India remains hesitant to adopt market-determined exchange rates"],
      correctAnswerIndex: 0,
      explanation: "India is inclined towards a managed exchange rate and a non-convertible currency in contrast to China's economic policies.",
    ),

    Question(
      questionText: "What measures should open economies adopt to prevent crises similar to those faced by various nations mentioned in the text?",
      options: ["Complete financial isolation and minimal oversight on inflows", "Increased government intervention and strict regulations on market openness", "Implementing checks on inflows, market-determined exchange rates, oversight on CAD and DSR levels, and robust financial sector regulations", "Encouraging short-term inflows and utilizing them for long-term investments"],
      correctAnswerIndex: 2,
      explanation: "Open economies should adopt measures such as implementing checks on inflows, ensuring market-determined exchange rates, overseeing CAD and DSR levels, and having robust financial sector regulations to avoid crises.",
    ),

    Question(
      questionText: "What key factors were identified as responsible for the crises faced by countries like Mexico, Chile, SE Asian nations, Argentina post their market openings?",
      options: ["Inappropriate combination of exchange rate determination and convertibility, lack of oversight on inflows, and absence of monitoring on critical parameters", "Government intervention, excessive market regulation, and absence of short-term inflows", "Lack of financial sector development, absence of long-term investments, and inappropriate lending norms", "Excessive reliance on foreign investments, absence of market-determined exchange rates, and absence of prudential norms"],
      correctAnswerIndex: 0,
      explanation: "The crises in these nations were attributed to an inappropriate combination of exchange rate determination and convertibility, lack of oversight on inflows, and the absence of monitoring on critical parameters.",
    ),

    Question(
      questionText: "What lessons were derived for open economies from the crises faced by various nations like South East Asian economies, S. Korea, Russia, Chile, Argentina, and Mexico?",
      options: ["Advocating complete financial isolation and minimal market openness", "Stressing the importance of inward-looking economic models and reduced openness", "Emphasizing market-determined exchange rates, oversight on inflows, prudential lending norms, and robust financial sector regulations", "Promoting reliance on short-term inflows and overlooking financial sector development"],
      correctAnswerIndex: 2,
      explanation: "The lessons include the importance of market-determined exchange rates, oversight on inflows, adherence to prudential lending norms, and the necessity for a robustly regulated financial sector.",
    ),

    Question(
      questionText: "What approach is advocated by the Indian Government based on the global crisis and the experiences of other open economies?",
      options: ["Moving towards an inward-looking economy model", "Questioning the fundamentals of openness", "Learning from past mistakes, implementing checks and balances, and earnestly pursuing openness", "Adopting a rigid economic model similar to China's"],
      correctAnswerIndex: 2,
      explanation: "The Indian Government emphasizes learning from past mistakes, implementing checks and balances, and earnestly pursuing openness as a way forward.",
    ),

    Question(
      questionText: "How does India's stance differ from China regarding market-determined exchange rates and convertible currency?",
      options: ["India embraces a market-determined exchange rate and a convertible currency", "India favors a managed exchange rate and a non-convertible currency", "India exhibits an inward-looking economic model like China", "India hesitates to adopt market-determined exchange rates"],
      correctAnswerIndex: 1,
      explanation: "India is inclined towards a managed exchange rate and a non-convertible currency in contrast to China's economic policies.",
    ),

    Question(
      questionText: "What measures are suggested for open economies to prevent crises akin to those faced by several nations ?",
      options: ["Complete financial isolation and minimal oversight on inflows", "Increased government intervention and strict regulations on market openness", "Implementing checks on inflows, market-determined exchange rates, oversight on CAD and DSR levels, and robust financial sector regulations", "Encouraging short-term inflows and utilizing them for long-term investments"],
      correctAnswerIndex: 2,
      explanation: "Open economies should adopt measures such as implementing checks on inflows, ensuring market-determined exchange rates, overseeing CAD and DSR levels, and having robust financial sector regulations to avoid crises.",
    ),

    Question(
      questionText: "Why is it stated that a pegged exchange rate and a convertible currency are incompatible?",
      options: ["They lead to excessive government intervention", "They allow for market-determined exchange rates", "They create a mismatch in determining the value of the currency and its convertibility", "They enable better regulation of financial inflows"],
      correctAnswerIndex: 2,
      explanation: "A pegged exchange rate and a convertible currency are incompatible because they create a mismatch in determining the value of the currency and its convertibility.",
    ),

    Question(
      questionText: "What were the key lessons learned from the crises faced by Southeast Asian economies, S. Korea, Chile, Argentina, and Mexico?",
      options: ["A need for increased reliance on short-term inflows and reduced financial sector regulation", "The importance of prudential lending norms, market-determined exchange rates, and a robust financial sector", "Emphasis on government control over market openness and reduced reliance on foreign investments", "The necessity for complete financial isolation and minimum oversight on inflows"],
      correctAnswerIndex: 1,
      explanation: "The lessons include the importance of prudential lending norms, market-determined exchange rates, and having a robustly regulated financial sector.",
    ),

    Question(
      questionText: "Why is it suggested that India should adopt a cautious approach towards economic openness?",
      options: ["To limit exposure to international markets", "To avoid an open economy model like China", "To prevent economic crises faced by other nations after market openings", "To maintain an inward-looking economic model"],
      correctAnswerIndex: 2,
      explanation: "India is advised to adopt a cautious approach to economic openness to prevent economic crises similar to those faced by other nations after market openings.",
    ),

    Question(
      questionText: "What does the Indian Government emphasize in response to the experiences of other open economies?",
      options: ["Reduced market intervention", "Increased reliance on short-term inflows", "Learning from past mistakes, implementing checks, and earnestly pursuing openness", "Adopting a completely inward-looking economic model"],
      correctAnswerIndex: 2,
      explanation: "The Indian Government stresses the importance of learning from past mistakes, implementing checks, and earnestly pursuing openness in response to the experiences of other open economies.",
    ),

    Question(
      questionText: "What significant difference exists between India and China in terms of their currency policies?",
      options: ["India leans towards a non-convertible currency while China opts for a convertible currency", "Both countries prefer a managed exchange rate", "India favors market-determined exchange rates whereas China prefers a managed exchange rate", "Both countries pursue an inward-looking economic model"],
      correctAnswerIndex: 2,
      explanation: "India leans towards market-determined exchange rates while China prefers a managed exchange rate, differentiating their currency policies.",
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
    home: lfcioe(),
  ));
}

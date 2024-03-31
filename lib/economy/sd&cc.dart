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

class sd_cc extends StatefulWidget {
  final String? userIdentifier;

  sd_cc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<sd_cc> createState() => _sd_ccState();
}

class _sd_ccState extends State<sd_cc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What is 'sustainable development' addressing globally?",
      options: [
        "Economic imbalances within a country.",
        "Global warming, environmental aspects, increased global pollution, and ecological imbalances.",
        "Country-specific issues like poverty and unemployment.",
        "Technological advancements in developed nations."
      ],
      correctAnswerIndex: 1,
      explanation: "'Sustainable development' globally addresses issues such as global warming, environmental aspects, increased global pollution, and ecological imbalances.",
    ),

    Question(
      questionText: "What is the objective of 'sustainable development'?",
      options: [
        "Meeting only the present generation's needs.",
        "Compromising on the ability of the future generation to meet its needs.",
        "Better environment for the future generation without compromising their ability to meet their needs.",
        "Ensuring the present generation inherits a worse environment than the past."
      ],
      correctAnswerIndex: 2,
      explanation: "'Sustainable development' aims to provide a better environment for the future generation without compromising their ability to meet their needs.",
    ),

    Question(
      questionText: "What is the key problem area concerning sustainable development and reduction in greenhouse gases emission?",
      options: [
        "Excessive economic dependence on the agricultural sector.",
        "Sharp divide between rich countries and countries like India and China in achieving self-imposed reduction levels.",
        "India's failure to meet deadlines on major issues.",
        "Reduced emphasis on cleaner energy and tree plantation."
      ],
      correctAnswerIndex: 1,
      explanation: "The key problem area is the sharp divide between rich countries and countries like India and China in achieving self-imposed reduction levels.",
    ),

    Question(
      questionText: "What has India's approach been regarding greenhouse gas emissions?",
      options: [
        "India has failed to meet the reduction targets.",
        "India has been proactive with low levels of emissions and projected levels lower than the global average by 2031.",
        "India has exceeded global emission levels.",
        "India is indifferent to global environmental concerns."
      ],
      correctAnswerIndex: 1,
      explanation: "India has been proactive with low levels of emissions and the projected levels lower than the global average by 2031.",
    ),

    Question(
      questionText: "How is poverty related to sustainable development in the context of India?",
      options: [
        "Increasing poverty is a sign of sustainable development.",
        "Poverty and sustainable development are unrelated in India.",
        "Widespread poverty and related issues are integral parts of sustainable development in India.",
        "Sustainable development leads to a decrease in poverty levels."
      ],
      correctAnswerIndex: 2,
      explanation: "Widespread poverty and related issues, such as slums, hygienic sanitation, and living conditions, are integral parts of sustainable development in India.",
    ),

    Question(
      questionText: "What does the Paris Agreement set a roadmap for?",
      options: [
        "Implementing the Millennium Development Goals.",
        "Reducing income inequality.",
        "Combating climate change in the post-2020 period.",
        "Developing new climate technologies."
      ],
      correctAnswerIndex: 2,
      explanation: "The Paris Agreement sets a roadmap for all nations to take action against climate change in the post-2020 period.",
    ),

    Question(
      questionText: "What replaced the Millennium Development Goals in 2015?",
      options: [
        "Green GDP.",
        "Sustainable Development Goals (SDGs).",
        "Climate Vulnerable Forum.",
        "International Solar Alliance (ISA)."
      ],
      correctAnswerIndex: 1,
      explanation: "The Sustainable Development Goals (SDGs) replaced the Millennium Development Goals in 2015.",
    ),

    Question(
      questionText: "What is the objective of the International Solar Alliance (ISA)?",
      options: [
        "To reduce carbon emissions only in solar-resource-rich countries.",
        "To promote international collaboration in solar research.",
        "To generate 100% of energy from non-renewable sources.",
        "To undertake efforts for reducing the cost of finance and technology for solar generation."
      ],
      correctAnswerIndex: 3,
      explanation: "The objective of the International Solar Alliance (ISA) is to undertake efforts for reducing the cost of finance and technology for immediate deployment of competitive solar generation and to pave the way for future solar technologies.",
    ),

    Question(
      questionText: "What has India announced in its Intended Nationally Determined Contribution (INDC) regarding climate change?",
      options: [
        "To increase carbon emissions by 2030.",
        "To achieve 100% renewable energy by 2025.",
        "To create an additional carbon sink of 5 billion tonnes of CO2 equivalent.",
        "To mobilize domestic funds from developed countries."
      ],
      correctAnswerIndex: 5,
      explanation: "India has announced in its INDC to achieve about 40% cumulative electric power installed capacity from non-fossil fuel-based energy resources by 2030, create an additional carbon sink, and better adapt to climate change.",
    ),

    Question(
      questionText: "What is the primary issue that needs addressing before broader aspects of sustainable development in the text?",
      options: [
        "Green GDP.",
        "Absolute poverty.",
        "Climate financing.",
        "Adaptation strategies."
      ],
      correctAnswerIndex: 2,
      explanation: "The primary issue that needs addressing before broader aspects of sustainable development is absolute poverty.",
    ),

    Question(
      questionText: "How are inclusive growth, sustainable development, and green GDP related?",
      options: [
        "They are independent and have no connection.",
        "They are identical in meaning.",
        "They have distinct meanings but are interrelated in terms of their implications.",
        "They address the same aspects of economic planning."
      ],
      correctAnswerIndex: 3,
      explanation: "Inclusive growth, sustainable development, and green GDP have distinct meanings but are interrelated in terms of their implications.",
    ),

    Question(
      questionText: "What is climate finance according to the text?",
      options: [
        "Financing for industrial growth.",
        "Public financing for climate change mitigation.",
        "International financing for industrial projects.",
        "Financing through public, private, and alternative sources for addressing climate change."
      ],
      correctAnswerIndex: 4,
      explanation: "Climate finance is financing through public, private, and alternative sources critical for addressing climate change.",
    ),

    Question(
      questionText: "Why is climate finance equally important for adaptation strategies?",
      options: [
        "To invest in large-scale industrial projects.",
        "To fund international climate conventions.",
        "To allow countries to adapt to the adverse effects and reduce impacts of climate change.",
        "To support green GDP initiatives."
      ],
      correctAnswerIndex: 3,
      explanation: "Climate finance is crucial for adaptation strategies as it provides significant financial resources for countries to adapt to the adverse effects and reduce impacts of climate change.",
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
    home: sd_cc(),
  ));
}

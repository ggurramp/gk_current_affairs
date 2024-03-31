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

class iep extends StatefulWidget {
  final String? userIdentifier;

  iep({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<iep> createState() => _iepState();
}

class _iepState extends State<iep> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
        questionText: "What is the estimated power demand by 2031-32, as per the policy?",
        options: [
          "2,00,000 MW",
          "4,00,000 MW",
          "6,00,000 MW",
          "8,00,000 MW"
        ],
        correctAnswerIndex: 3,
        explanation: "According to the policy, the estimated power demand by 2031-32 is projected to be a mammoth 8,00,000 MW."
    ),

    Question(
      questionText: "Which source of energy is projected to be the primary one by 2031-32?",
      options: [
        "Hydro power",
        "Solar energy",
        "Coal",
        "Nuclear energy"
      ],
      correctAnswerIndex: 2,
      explanation: "The policy highlights 'coal' as the primary source of energy, accounting for 60% by 2031-32, with thermal power generation alone contributing 47%.",
    ),

    Question(
      questionText: "What is one of the concerns regarding India's petroleum dependence according to the text?",
      options: [
        "Reducing the import dependence",
        "Increasing the domestic production",
        "Heavy import reliance and vulnerability to global price fluctuations",
        "Exploring alternative sources"
      ],
      correctAnswerIndex: 2,
      explanation: "The text highlights that India's heavy import dependence on petroleum (currently 70%, expected to rise to 90% by 2030) makes the economy highly vulnerable to global price fluctuations.",
    ),

    Question(
      questionText: "What is the primary focus of the Deendayal Upadhyaya Gram Jyoti Yojana (DDUGJY)?",
      options: [
        "Strengthening urban power distribution",
        "Improving rural electrification",
        "Enhancing solar energy capacity",
        "Promoting hydroelectric projects"
      ],
      correctAnswerIndex: 1,
      explanation: "The Deendayal Upadhyaya Gram Jyoti Yojana (DDUGJY) primarily focuses on rural areas, aiming to strengthen and augment sub-transmission and distribution infrastructure and achieve rural electrification.",
    ),

    Question(
      questionText: "What initiative aims to provide financial and operational assistance to Discoms?",
      options: [
        "Integrated Power Development Scheme (IPDS)",
        "Ujwal Discom Assurance Yojana (UDAY)",
        "Power System Development Fund (PSDF)",
        "Ultra Mega Power Plants (UMPPs)"
      ],
      correctAnswerIndex: 1,
      explanation: "The Ujwal Discom Assurance Yojana (UDAY) has been launched for the operational and financial turnaround of Discoms.",
    ),

    Question(
      questionText: "What is the projected increase in India's power generation capacity over the next 20 years?",
      options: [
        "Over 2,00,000 MW",
        "Over 3,00,000 MW",
        "Over 4,00,000 MW",
        "Over 6,00,000 MW"
      ],
      correctAnswerIndex: 3,
      explanation: "The text suggests that India will need to add over 6,00,000 MW in the next 20 years to meet the exponential increase in power generation capacity.",
    ),

    Question(
      questionText: "What are some of the challenges mentioned in the policy regarding the power sector?",
      options: [
        "Low generation capacity",
        "High Aggregate Transmission and Distribution (AT&D) losses",
        "Overdependence on hydroelectric power",
        "Minimal power theft issues"
      ],
      correctAnswerIndex: 1,
      explanation: "The policy highlights challenges like high Aggregate Transmission and Distribution (AT&D) losses, which are among the highest globally at 25%.",
    ),

    Question(
      questionText: "What is the focus of the National Energy Fund proposed in the policy?",
      options: [
        "Development of renewable energy sources",
        "Infrastructure development in the power sector",
        "Creating strategic reserves of crude petroleum",
        "Levying a cess on crude petroleum companies"
      ],
      correctAnswerIndex: 2,
      explanation: "The proposed National Energy Fund aims to be created by levying a cess of 1% on the turnover of all companies in the energy sector and is intended to create strategic reserves of crude petroleum.",
    ),

    Question(
      questionText: "What is the primary concern mentioned regarding nuclear energy in the text?",
      options: [
        "Its low efficiency in power generation",
        "Its high capital intensity and cost of power generated",
        "Its potential for ecological imbalances",
        "Its limited availability of fuel"
      ],
      correctAnswerIndex: 1,
      explanation: "The text highlights the high capital intensity and high cost of power generated by nuclear energy, along with potential dangers like radiation leakages and long-term impact.",
    ),

    Question(
      questionText: "Which initiative focuses on strengthening sub-transmission and distribution networks in urban areas?",
      options: [
        "Deendayal Upadhyaya Gram Jyoti Yojana (DDUGJY)",
        "Integrated Power Development Scheme (IPDS)",
        "Ujwal Discom Assurance Yojana (UDAY)",
        "Power System Development Fund (PSDF)"
      ],
      correctAnswerIndex: 2,
      explanation: "The Integrated Power Development Scheme (IPDS) specifically aims to strengthen sub-transmission and distribution networks in urban areas.",
    ),


    Question(
      questionText: "What major restructuring is suggested for the power sector in the text?",
      options: [
        "Complete privatization of power generation",
        "Bundling generation, transmission, and distribution activities together",
        "Keeping power sector closely linked to State and Central governments",
        "Unbundling generation, transmission, and distribution as separate activities"
      ],
      correctAnswerIndex: 3,
      explanation: "The text suggests the need to unbundle generation, transmission, and distribution activities in the power sector as separate and independent activities.",
    ),

    Question(
      questionText: "What does the highlight as a major concern regarding India's dependence on imported crude oil?",
      options: [
        "High costs of imported crude oil",
        "Vulnerability to supply shocks and price volatility",
        "Difficulties in transporting imported crude oil",
        "Lack of proper storage facilities for imported crude oil"
      ],
      correctAnswerIndex: 1,
      explanation: "The text emphasizes India's vulnerability to supply shocks and price volatility due to its increasing dependence on imported crude oil.",
    ),

    Question(
      questionText: " what is a worrisome factor contributing to India's energy woes?",
      options: [
        "Excessive energy conservation efforts",
        "Lack of dependence on imported energy sources",
        "Low level of awareness of energy conservation and preservation",
        "Overwhelming reliance on renewable energy sources"
      ],
      correctAnswerIndex: 2,
      explanation: "The text points out the low level of awareness of energy conservation and preservation as a contributing factor to India's energy challenges.",
    ),

    Question(
      questionText: "What future scenario is  hinting at regarding India's energy sector?",
      options: [
        "A rapid decline in energy consumption",
        "Energy surplus leading to reduced prices",
        "A looming 'energy crisis'",
        "Increasing energy independence"
      ],
      correctAnswerIndex: 2,
      explanation: "The text suggests a likely 'energy crisis' in the future if serious steps are not taken to address the current issues in India's energy sector.",
    ),

    Question(
      questionText: "What is identified as a major concern leaving the government with limited options in the short term?",
      options: [
        "Excessive energy conservation efforts",
        "High domestic energy production",
        "Bundling of power sector activities",
        "Absence of energy security"
      ],
      correctAnswerIndex: 3,
      explanation: "The text mentions the absence of energy security as a major concern that limits the government's options in the short term.",
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
    home: iep(),
  ));
}

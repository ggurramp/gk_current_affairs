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

class pgrps extends StatefulWidget {
  final String? userIdentifier;

  pgrps({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<pgrps> createState() => _pgrpsState();
}

class _pgrpsState extends State<pgrps> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
   // 86.PRESSURE GROUPS

    Question(
      questionText: "What term is used to describe a group of people organised actively for promoting and defending their common interests?",
      options: ["Political party", "Pressure group", "Interest group", "Vested group"],
      correctAnswerIndex: 2,
      explanation: "The term 'pressure group' is used to describe a group of people organized actively for promoting and defending their common interests.",
    ),

    Question(
      questionText: "How do pressure groups attempt to bring about a change in public policy?",
      options: [
        "By contesting elections",
        "By capturing political power",
        "By exerting pressure on the government",
        "By forming political parties"
      ],
      correctAnswerIndex: 2,
      explanation: "Pressure groups attempt to bring about a change in public policy by exerting pressure on the government.",
    ),

    Question(
      questionText: "What distinguishes pressure groups from political parties?",
      options: [
        "Pressure groups contest elections.",
        "Pressure groups capture political power.",
        "Pressure groups focus on specific issues, not elections or power.",
        "Pressure groups influence public opinion illegitimately."
      ],
      correctAnswerIndex: 2,
      explanation: "Pressure groups differ from political parties as they focus on specific issues and do not contest elections or seek to capture political power.",
    ),

    Question(
      questionText: "According to Odegard, what are the three techniques pressure groups use to secure their purposes?",
      options: ["Strikes, lobbying, public debating", "Electioneering, lobbying, propagandising", "Corruption, petitioning, publicity", "Violent activities, correspondence, lobbying"],
      correctAnswerIndex: 1,
      explanation: "According to Odegard, pressure groups use three techniques: electioneering, lobbying, and propagandizing to secure their purposes.",
    ),

    Question(
      questionText: "Which category of pressure groups includes industrial and commercial bodies like FICCI and ASSOCHAM?",
      options: ["Trade unions", "Agrarian groups", "Business groups", "Professional associations"],
      correctAnswerIndex: 2,
      explanation: "Business groups, including FICCI and ASSOCHAM, fall under the category of pressure groups known as business groups.",
    ),

    Question(
      questionText: "Which trade union is affiliated with the BJP?",
      options: ["AITUC", "INTUC", "HMS", "BMS"],
      correctAnswerIndex: 3,
      explanation: "Bharatiya Mazdoor Sangh (BMS) is affiliated with the BJP.",
    ),

    Question(
      questionText: "What do agrarian groups represent?",
      options: ["Industrial workers", "Farmers and agricultural labour class", "Doctors, lawyers, journalists, and teachers", "Students"],
      correctAnswerIndex: 1,
      explanation: "Agrarian groups represent the farmers and the agricultural labour class.",
    ),

    Question(
      questionText: "Which religious organisation  is mentioned as playing an important role in Indian politics?",
      options: ["RSS", "VHP", "Jamaat-e-Islami", "Shiromani Akali Dal"],
      correctAnswerIndex: 0,
      explanation: "Rashtriya Swayamsevak Sangh (RSS) is mentioned as playing an important role in Indian politics.",
    ),

    Question(
      questionText: "What is the basis for the competitive politics in many states of the Indian Union?",
      options: ["Religion", "Caste", "Language", "Tribal identity"],
      correctAnswerIndex: 1,
      explanation: "The competitive politics in many states of the Indian Union is based on caste rivalries.",
    ),

    Question(
      questionText: "Which pair represents a caste rivalry?",
      options: ["Brahmin versus Non-Brahmin", "Rajput versus Jat", "Kamma versus Reddy", "Kayastha versus Rajput"],
      correctAnswerIndex: 0,
      explanation: "Brahmin versus Non-Brahmin is a caste rivalry, particularly in Tamil Nadu and Maharashtra.",
    ),

    Question(
      questionText: "What is the focus of tribal organisations ?",
      options: [
        "Reforms within India",
        "Secession from India",
        "Religious activities",
        "Political lobbying"
      ],
      correctAnswerIndex: 1,
      explanation: "Tribal organizations are active in various states and their demands range from reforms to secession from India.",
    ),

    Question(
        questionText: "Which factor, along with caste, religion, and tribe, has been responsible for the emergence of political parties and pressure groups?",
        options: ["Economic status", "Language", "Geography", "Educational background"],
        correctAnswerIndex: 1,
        explanation: "Language, along with caste, religion, and tribe, has been responsible for the emergence of political parties and pressure groups, according to the text."
    ),

    Question(
      questionText: "What characterises ideology-based groups ?",
      options: [
        "Pursuing economic interests",
        "Following traditional practices",
        "Advocating for a cause, principle, or program",
        "Engaging in spontaneous breakthroughs"
      ],
      correctAnswerIndex: 2,
      explanation: "Ideology-based groups are formed to pursue a particular ideology, i.e., a cause, a principle, or a program.",
    ),

    Question(
      questionText: "What do anomic pressure groups, as defined by Almond and Powell, involve?",
      options: ["Legitimate political activities", "Technocratic and anti-political frame of mind", "Peaceful protests", "Economic development"],
      correctAnswerIndex: 1,
      explanation: "Anomic pressure groups involve a spontaneous breakthrough into the political system from society, such as riots, demonstrations, and assassinations, according to Almond and Powell.",
    ),

    Question(
      questionText: "Which group is mentioned as an anomic pressure group ?",
      options: ["Narmada Bachao Andolan", "Jammu and Kashmir Liberation Front", "Gandhi Peace Foundation", "Women rights organisations"],
      correctAnswerIndex: 0,
      explanation: "Narmada Bachao Andolan is mentioned as an environmental protection group, not an anomic pressure group. The correct answer for an anomic pressure group is the Jammu and Kashmir Liberation Front (JKLF).",
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
            // Show correct answer if an option is selected
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Set your desired color here
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
    home: pgrps(),
  ));
}

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

class parlimentary extends StatefulWidget {
  final String? userIdentifier;

  parlimentary({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parlimentary> createState() => _parlimentaryState();
}

class _parlimentaryState extends State<parlimentary> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//13.Parliamentary system
    Question(
      questionText: "Which system of government is characterized by the executive not being responsible to the legislature for its policies and acts?",
      options: ["Parliamentary system", "Presidential system", "Westminster model", "Cabinet government"],
      correctAnswerIndex: 1,
      explanation: "The presidential system of government is characterized by the executive not being responsible to the legislature for its policies and acts. This system is independent of the legislature with respect to its term of office.",
    ),

    Question(
      questionText: "What is another term for the parliamentary government prevalent in India, Britain, Japan, and Canada?",
      options: ["Non-responsible government", "Cabinet government", "Fixed executive system", "Westminster model"],
      correctAnswerIndex: 3,
      explanation: "The parliamentary government prevalent in India, Britain, Japan, and Canada is also known as the Westminster model of government.",
    ),

    Question(
      questionText: "Who described the parliamentary system as the 'cabinet system' and the British Prime Minister as 'primus inter pares'?",
      options: ["Cross-man", "Ivor Jennings", "Mackintosh", "British constitutional experts"],
      correctAnswerIndex: 1,
      explanation: "Ivor Jennings described the parliamentary system as the 'cabinet system' and the British Prime Minister as 'primus inter pares' (first among equals).",
    ),

    Question(
      questionText: "In the context of the British political system, what term is used to describe the increased power, influence, and position of the Prime Minister vis-a-vis the cabinet?",
      options: ["Westminster model", "Cabinet government", "Prime ministerial government", "Non-parliamentary system"],
      correctAnswerIndex: 2,
      explanation: "In the recent period, political analysts describe the increased power, influence, and position of the British Prime Minister vis-a-vis the cabinet as 'prime ministerial government'.",
    ),

    Question(
      questionText: "What is the basis of the American presidential system of government?",
      options: ["Cabinet government", "Westminster model", "Doctrine of separation of powers", "Non-responsible government"],
      correctAnswerIndex: 2,
      explanation: "The basis of the American presidential system of government is the doctrine of separation of powers, where legislative, executive, and judicial powers are separated and vested in independent organs of the government.",
    ),
    Question(
      questionText: "What is the primary advantage of the parliamentary system in terms of the relationship between the legislative and executive organs?",
      options: ["Stability of government", "Harmonious relationship", "Separation of powers", "Dictatorial tendencies"],
      correctAnswerIndex: 1,
      explanation: "The greatest advantage of the parliamentary system is that it ensures a harmonious relationship and cooperation between the legislative and executive organs of the government.",
    ),

    Question(
      questionText: "How does the parliamentary system establish a responsible government?",
      options: ["Through separation of powers", "Through no-confidence motion", "Through dictatorship", "Through collective responsibility"],
      correctAnswerIndex: 3,
      explanation: "The parliamentary system establishes a responsible government as ministers are collectively responsible to the Parliament for their acts, accountable through various means like no-confidence motion.",
    ),

    Question(
      questionText: "What is the key advantage of preventing despotism in the parliamentary system?",
      options: ["No continuity of policies", "Stable government", "Dispersion of executive authority", "Dictatorial tendencies"],
      correctAnswerIndex: 2,
      explanation: "Preventing despotism in the parliamentary system is achieved through the dispersion of executive authority among a group of individuals (council of ministers) rather than a single person.",
    ),

    Question(
      questionText: "In the parliamentary system, what happens if the ruling party loses its majority?",
      options: ["Fresh elections are held", "The President appoints a new Prime Minister", "An alternative government can be formed", "The Prime Minister gains more power"],
      correctAnswerIndex: 2,
      explanation: "In the parliamentary system, if the ruling party loses its majority, the Head of the State can invite the opposition party to form the government, providing an alternative without fresh elections.",
    ),

    Question(
      questionText: "What is a notable demerit of the parliamentary system in terms of government stability?",
      options: ["Continuity of policies", "Unstable government", "Prevention of despotism", "Collective responsibility"],
      correctAnswerIndex: 1,
      explanation: "A notable demerit of the parliamentary system is its tendency to provide unstable government, with no guarantee that a government can survive its tenure.",
    ),
    Question(
      questionText: "What is a key feature of the American presidential system regarding the role of the President?",
      options: ["Ceremonial head only", "Head of government only", "Head of State and head of government", "Elected by Congress"],
      correctAnswerIndex: 2,
      explanation: "In the American presidential system, the President serves as both the head of State and the head of government.",
    ),

    Question(
      questionText: "How is the American President elected and for what fixed tenure?",
      options: ["Direct popular vote for a variable tenure", "By the Congress for a fixed tenure", "By an electoral college for a fixed tenure of four years", "By a parliamentary vote for a variable tenure"],
      correctAnswerIndex: 2,
      explanation: "The American President is elected by an electoral college for a fixed tenure of four years.",
    ),

    Question(
      questionText: "What is the role of the cabinet in the American presidential system?",
      options: ["Leader of the legislature", "Leader of the judiciary", "Leader of the executive", "Leader of the opposition"],
      correctAnswerIndex: 3,
      explanation: "In the American presidential system, the President governs with the help of a cabinet or a smaller body, leading the executive organ of government.",
    ),

    Question(
      questionText: "What is a demerit of the parliamentary system mentioned in the text?",
      options: ["Government by amateurs", "Stable government", "Dictatorship of the cabinet", "Collective responsibility"],
      correctAnswerIndex: 1,
      explanation: "A demerit of the parliamentary system is mentioned as 'Government by Amateurs,' as ministers may not be experts in their fields, impacting administrative efficiency.",
    ),

    Question(
      questionText: "What was one of the reasons cited by the Constitution-makers for adopting the parliamentary system in India?",
      options: ["Preference for more stability", "Avoidance of conflicts between legislature and executive", "Homogeneity of society", "Presidential system familiarity"],
      correctAnswerIndex: 2,
      explanation: "One of the reasons cited for adopting the parliamentary system in India was to avoid conflicts between the legislature and the executive, promoting stability and responsibility.",
    ),
    Question(
      questionText: "What is a key feature that distinguishes the parliamentary system from the presidential system regarding the executive?",
      options: ["Dual executive in the parliamentary system", "Single executive in the parliamentary system", "Dual executive in the presidential system", "Single executive in the presidential system"],
      correctAnswerIndex: 1,
      explanation: "One key feature distinguishing the parliamentary system is the dual executive, while the presidential system has a single executive.",
    ),

    Question(
      questionText: "In the parliamentary system, how is the executive formed in relation to the majority party?",
      options: ["Formed with the President and legislators elected separately", "Formed with collective responsibility", "Formed with political homogeneity", "Formed with a single membership"],
      correctAnswerIndex: 2,
      explanation: "In the parliamentary system, the executive is formed with political homogeneity, often consisting of members from the majority party.",
    ),

    Question(
      questionText: "What is a characteristic of the presidential system regarding the election of the President and legislators?",
      options: ["Elected by the majority party", "Elected with collective responsibility", "Elected separately for a fixed term", "Elected with single membership"],
      correctAnswerIndex: 3,
      explanation: "In the presidential system, the President and legislators are elected separately for a fixed term.",
    ),

    Question(
      questionText: "What is a notable merit of the parliamentary system regarding government stability?",
      options: ["Unstable government", "Non-responsible government", "Stable government", "Government by amateurs"],
      correctAnswerIndex: 3,
      explanation: "A notable merit of the parliamentary system is stable government.",
    ),

    Question(
      questionText: "What is a demerit associated with the presidential system in terms of policies?",
      options: ["Government by experts", "Definiteness in policies", "Conflict between legislature and executive", "May lead to autocracy"],
      correctAnswerIndex: 3,
      explanation: "A demerit associated with the presidential system is the potential for conflict between the legislature and executive, impacting the definiteness of policies.",
    ),
    Question(
      questionText: "What distinguishes the Head of the State in India from the British system?",
      options: ["Hereditary position in India", "Elected position in India", "Sovereignty of Parliament in India", "Limited powers in India"],
      correctAnswerIndex: 1,
      explanation: "The Head of the State in India (President) is elected, whereas in the British system, the Head of the State (King or Queen) enjoys a hereditary position.",
    ),

    Question(
      questionText: "How does the parliamentary system in India differ from the British system regarding the sovereignty of Parliament?",
      options: ["Supreme Parliament in India", "Limited powers in India", "Federal system in India", "Written Constitution in India"],
      correctAnswerIndex: 3,
      explanation: "The British system is based on the sovereignty of Parliament, while in India, Parliament does not have supreme powers due to factors such as a written Constitution, federal system, judicial review, and fundamental rights.",
    ),

    Question(
      questionText: "What distinguishes the eligibility criteria for the Prime Minister in Britain from India?",
      options: ["Membership in the House of Lords in Britain", "Membership in the House of Commons in Britain", "Membership in any House in India", "Membership in the Rajya Sabha in India"],
      correctAnswerIndex: 2,
      explanation: "In Britain, the Prime Minister should be a member of the House of Commons, while in India, the Prime Minister may be a member of any of the two Houses of Parliament.",
    ),

    Question(
      questionText: "What is a unique feature of the British cabinet system that is absent in India?",
      options: ["Shadow cabinet", "Written Constitution", "Federal system", "Legal responsibility of ministers"],
      correctAnswerIndex: 0,
      explanation: "The 'Shadow cabinet' is a unique institution in the British cabinet system, formed by the opposition party, and is absent in India.",
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
    home: parlimentary(),
  ));
}

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

class cgvnt extends StatefulWidget {
  final String? userIdentifier;

  cgvnt({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cgvnt> createState() => _cgvntState();
}

class _cgvntState extends State<cgvnt> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

   // 84.COALITION GOVERNMENT

    Question(
      questionText: "What is the etymological origin of the term 'coalition'?",
      options: [
        "It originates from Greek, meaning 'to unite.'",
        "It comes from the Latin word 'coalition-', meaning 'to grow together.'",
        "Its roots can be traced back to Old English, signifying 'political alliance.'",
        "The term has no specific etymological origin."
      ],
      correctAnswerIndex: 1,
      explanation: "The term 'coalition' is derived from the Latin word 'coalition-', which means 'to grow together.'",
    ),

    Question(
      questionText: "How is coalition defined in the context of politics?",
      options: [
        "A collaboration of businesses for mutual benefit.",
        "An alliance between countries for economic growth.",
        "An agreement among political parties to form a government.",
        "A union of individuals for social causes."
      ],
      correctAnswerIndex: 2,
      explanation: "In politics, a coalition refers to an alliance of distinct political parties joining hands to form a government.",
    ),

    Question(
      questionText: "Under what circumstances do coalitions usually occur in modern parliaments?",
      options: [
        "When a single political party has a clear majority.",
        "When two or more parties agree on drastic compromises.",
        "When no single party can muster a majority of votes.",
        "When parties strictly adhere to their individual policies."
      ],
      correctAnswerIndex: 2,
      explanation: "Coalitions usually occur in modern parliaments when no single political party can muster a majority of votes.",
    ),

    Question(
      questionText: "What is the purpose of a coalition government?",
      options: [
        "To promote rigid dogma and ideological purity.",
        "To establish a static and unchanging political system.",
        "To work on the basis of a minimum programme.",
        "To prioritize principles over pragmatic adjustments."
      ],
      correctAnswerIndex: 2,
      explanation: "The purpose of a coalition government is to work on the basis of a minimum programme.",
    ),

    Question(
      questionText: "What are the features or implications of coalition politics according to J.C. Johari?",
      options: [
        "It relies on rigid dogma and uncompromising principles.",
        "It is a static and unchanging affair.",
        "It involves a temporary conjunction of specific interests.",
        "It operates solely on ideological grounds."
      ],
      correctAnswerIndex: 2,
      explanation: "According to J.C. Johari, the underlying principle of a coalition system stands on the temporary conjunction of specific interests.",
    ),

    Question(
      questionText: "What were the election results for the Congress party in the first four Lok Sabha elections (1952-1967)?",
      options: [
        "The Congress party secured a majority in all four elections.",
        "The Congress party faced defeat in 1969 but managed a minority government.",
        "The Congress party won the elections in 1962 and 1967 but faced a split in 1969.",
        "The Congress party won the 1971 elections and formed a single-party government."
      ],
      correctAnswerIndex: 3,
      explanation: "The Congress party won the first four Lok Sabha elections (1952-1967) and faced a split in 1969 but managed to continue with a minority government.",
    ),

    Question(
      questionText: "Which political parties formed the coalition government during the period 1977-1979?",
      options: [
        "Janata Dal (Socialist) or Samajwadi Janata Party",
        "United Front",
        "Janata Party",
        "Janata Dal (S) and Janata Party"
      ],
      correctAnswerIndex: 2,
      explanation: "The coalition government during the period 1977-1979 was formed by the Janata Party.",
    ),

    Question(
      questionText: "Who led the coalition government during the period 1997-1998?",
      options: [
        "Morarji Desai (Congress (O))",
        "Charan Singh (Janata (S))",
        "Chandra Shekhar (Janata Dal (S) or Samajwadi Janata Party)",
        "I.K. Gujral (Janata Dal)"
      ],
      correctAnswerIndex: 2,
      explanation: "Chandra Shekhar led the coalition government during the period 1997-1998.",
    ),

    Question(
      questionText: "Which coalition government was in power during the years 1999-2004?",
      options: [
        "United Progressive Alliance (UPA)",
        "National Democratic Alliance (NDA)",
        "United Progressive Alliance-II (UPA-II)",
        "National Democratic Alliance (NDA)"
      ],
      correctAnswerIndex: 1,
      explanation: "The National Democratic Alliance (NDA) was in power during the years 1999-2004.",
    ),

    Question(
      questionText: "What is identified as a major disadvantage of coalition governments?",
      options: [
        "Excessive stability leading to a lack of dynamism.",
        "A tendency to overrule smaller constituents.",
        "Instability due to differences of opinion among coalition partners.",
        "Enhanced decision-making efficiency."
      ],
      correctAnswerIndex: 2,
      explanation: "A major disadvantage of coalition governments is their instability, often caused by differences of opinion among coalition partners.",
    ),

    Question(
      questionText: "How does the leadership of the Prime Minister in a coalition government differ from that in a single-party government?",
      options: [
        "The Prime Minister in a coalition government has unchecked power.",
        "The Prime Minister in a coalition government is a 'Super Prime Minister' with reduced decision-making autonomy.",
        "The Prime Minister in a coalition government doesn't consult coalition partners.",
        "The role of the Prime Minister remains unchanged in a coalition government."
      ],
      correctAnswerIndex: 1,
      explanation: "In a coalition government, the leadership of the Prime Minister is curtailed, and critics have referred to them as 'Super Prime Ministers' or 'Ultra Prime Ministers.'",
    ),

    Question(
      questionText: "What is the role of the Steering Committee or the Co-ordination Committee in a coalition government?",
      options: [
        "It strengthens the position of the cabinet in decision-making.",
        "It acts as a 'Super-Cabinet' and undermines the role of the cabinet.",
        "It plays a minor advisory role without affecting the functioning of the government.",
        "It supports the smaller constituents in demanding more power."
      ],
      correctAnswerIndex: 1,
      explanation: "The Steering Committee or the Co-ordination Committee in a coalition government acts as a 'Super-Cabinet' and undermines the role and position of the cabinet.",
    ),

    Question(
      questionText: "What is a potential issue related to the size of the Council of Ministers in a coalition government?",
      options: [
        "A small Council of Ministers with limited representation.",
        "Efficient distribution of portfolios and proper coordination.",
        "The possibility of a 'Jumbo Ministry' with a large number of ministers.",
        "Members assuming responsibility for administrative failures."
      ],
      correctAnswerIndex: 2,
      explanation: "The size of the Council of Ministers in a coalition government can be quite large, leading to issues in distribution of portfolios and proper coordination, such as the example of the 'Jumbo Ministry' in 1999.",
    ),

    Question(
      questionText: "How do members of coalition governments often handle administrative failures?",
      options: [
        "They assume collective responsibility and work towards improvement.",
        "They engage in blame games and escape both collective and individual responsibility.",
        "They prioritize accountability and take immediate corrective actions.",
        "They resign from their positions to uphold ethical standards."
      ],
      correctAnswerIndex: 1,
      explanation: "Members of coalition governments often engage in blame games and escape both collective and individual responsibility for administrative failures.",
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
    home: cgvnt(),
  ));
}

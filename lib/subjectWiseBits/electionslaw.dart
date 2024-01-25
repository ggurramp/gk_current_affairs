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

class electionslaw extends StatefulWidget {
  final String? userIdentifier;

  electionslaw({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<electionslaw> createState() => _electionslawState();
}

class _electionslawState extends State<electionslaw> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//    81.ELECTION LAWS

    Question(
      questionText: "In which year was the Representation of the People Act, 1950 enacted?",
      options: ["1947", "1950", "1955", "1960"],
      correctAnswerIndex: 1,
      explanation: "The Representation of the People Act, 1950, was enacted in the year 1950 to provide for the allocation of seats in the House of the People and Legislative Assemblies and Councils of States.",
    ),

    Question(
      questionText: "According to the Constitution of India, which articles lay down the maximum number of seats in Parliament and Legislative Assemblies?",
      options: ["Article 81 and 170", "Article 171", "Article 50", "Article 101"],
      correctAnswerIndex: 0,
      explanation: "Articles 81 and 170 of the Constitution of India specify the maximum number of seats in Parliament and Legislative Assemblies.",
    ),

    Question(
      questionText: "What power does the Representation of the People Act, 1950 confer on the President?",
      options: [
        "Power to appoint election officers",
        "Power to allocate seats in the House of the People",
        "Power to delimit constituencies after consultation with the Election Commission",
        "Power to dissolve Parliament",
      ],
      correctAnswerIndex: 2,
      explanation: "The Act confers on the President the power to delimit constituencies after consultation with the Election Commission for the purpose of elections.",
    ),

    Question(
      questionText: "What does the Representation of the People Act, 1950 provide for in terms of elections?",
      options: [
        "Allocation of seats only",
        "Registration of electors and delimitation of constituencies",
        "Manner of filling seats in the Council of States",
        "Formation of local authorities",
      ],
      correctAnswerIndex: 1,
      explanation: "The Act provides for the registration of electors for Parliamentary Constituencies and for the Assembly and Council Constituencies, as well as the delimitation of constituencies.",
    ),
    Question(
      questionText: "Which Act was enacted to provide provisions related to the actual conduct of elections, qualifications and disqualifications for membership, corrupt practices, and other election offenses?",
      options: ["Representation of the People Act, 1950", "Representation of the People Act, 1951", "Constitution of India, 1950", "Election Conduct Act, 1955"],
      correctAnswerIndex: 1,
      explanation: "The Representation of the People Act, 1951, was enacted to address provisions related to the actual conduct of elections, qualifications, disqualifications, corrupt practices, and other election offenses.",
    ),

    Question(
      questionText: "What matters does the 'conduct of elections' section in the Representation of the People Act, 1951 cover?",
      options: [
        "Nomination of candidates, candidates and their agents, general procedure at elections",
        "Declaration of assets and liabilities, election expenses",
        "Publication of election results and nominations",
        "All of the above",
      ],
      correctAnswerIndex: 3,
      explanation: "The 'conduct of elections' section in the Representation of the People Act, 1951 covers matters such as nomination of candidates, candidates and their agents, general procedure at elections, declaration of assets and liabilities, election expenses, publication of election results and nominations.",
    ),

    Question(
      questionText: "In the context of election disputes, what matters are covered by the provisions of the Representation of the People Act, 1951?",
      options: [
        "Presentation of election petitions to High Court",
        "Trial of election petitions",
        "Withdrawal and abatement of election petitions",
        "All of the above",
      ],
      correctAnswerIndex: 3,
      explanation: "The provisions of the Representation of the People Act, 1951, regarding election disputes cover matters such as presentation of election petitions to the High Court, trial of election petitions, withdrawal and abatement of election petitions.",
    ),

    Question(
      questionText: "What does the Representation of the People Act, 1951 provide regarding the powers of the Election Commission in connection with inquiries?",
      options: [
        "Powers to declare election results",
        "Powers to disqualify candidates",
        "Powers in connection with inquiries as to disqualifications of members",
        "Powers to conduct elections",
      ],
      correctAnswerIndex: 2,
      explanation: "The Representation of the People Act, 1951, provides powers to the Election Commission in connection with inquiries as to disqualifications of members.",
    ),

    Question(
      questionText: "Which articles of the Constitution of India provide for the readjustment and division of each State into territorial constituencies based on the 2001 census?",
      options: ["Articles 330 and 332", "Articles 82 and 170", "Articles 50 and 101", "Articles 171 and 330"],
      correctAnswerIndex: 1,
      explanation: "Articles 82 and 170 of the Constitution of India provide for the readjustment and division of each State into territorial constituencies based on the 2001 census.",
    ),

    Question(
      questionText: "What is the primary purpose of the Delimitation Act, 2002?",
      options: [
        "To set up a Delimitation Commission for the purpose of conducting elections",
        "To declare certain offices of profit under the Government",
        "To regulate matters related to elections to the offices of the President and Vice-President of India",
        "To correct distortions in the sizes of electoral constituencies based on the 2001 census",
      ],
      correctAnswerIndex: 3,
      explanation: "The primary purpose of the Delimitation Act, 2002, is to set up a Delimitation Commission to correct distortions in the sizes of electoral constituencies based on the 2001 census.",
    ),

    Question(
      questionText: "Which Act declares that certain offices of profit under the Government shall not disqualify the holders thereof for being chosen as members of Parliament?",
      options: [
        "Delimitation Act, 2002",
        "Parliament (Prevention of Disqualification) Act, 1959",
        "Scheduled Castes and Scheduled Tribes Orders (Amendment) Act, 1976",
        "Presidential and Vice-Presidential Elections Act, 1952",
      ],
      correctAnswerIndex: 1,
      explanation: "The Parliament (Prevention of Disqualification) Act, 1959 declares that certain offices of profit under the Government shall not disqualify the holders thereof for being chosen as members of Parliament.",
    ),

    Question(
      questionText: "Which rules provide for the preparation and publication of electoral rolls?",
      options: [
        "Conduct of Elections Rules, 1961",
        "Members of Lok Sabha (Declaration of Assets and Liabilities) Rules, 2004",
        "Registration of Electors Rules, 1960",
        "Members of Rajya Sabha (Disqualification on Ground of Defection) Rules, 1985",
      ],
      correctAnswerIndex: 2,
      explanation: "The Registration of Electors Rules, 1960, provide for the preparation and publication of electoral rolls.",
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
    home: electionslaw(),
  ));
}

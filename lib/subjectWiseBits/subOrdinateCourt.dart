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

class subOrdinateCourt extends StatefulWidget {
  final String? userIdentifier;

  subOrdinateCourt({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<subOrdinateCourt> createState() => _subOrdinateCourtState();
}

class _subOrdinateCourtState extends State<subOrdinateCourt> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//35.SUBORDINATE COURT

    Question(
      questionText: "What is the constitutional basis for the organisation of subordinate courts and ensuring their independence?",
      options: [
        "Articles 230 to 237",
        "Articles 233 to 237",
        "Articles 240 to 245",
        "Articles 235 to 240"
      ],
      correctAnswerIndex: 1,
      explanation: "Articles 233 to 237 in Part VI of the Constitution provide constitutional provisions to regulate the organisation of subordinate courts and ensure their independence from the executive.",
    ),

    Question(
      questionText: "Who is responsible for the appointment, posting, and promotion of district judges in a state?",
      options: [
        "The President",
        "The Prime Minister",
        "The Chief Justice of India",
        "The Governor of the state in consultation with the high court"
      ],
      correctAnswerIndex: 3,
      explanation: "The appointment, posting, and promotion of district judges in a state are made by the governor of the state in consultation with the high court.",
    ),

    Question(
      questionText: "What qualifications are required for a person to be appointed as a district judge?",
      options: [
        "Minimum age of 40 years and experience as a lawyer",
        "Citizenship of India and experience as a lawyer or judicial officer",
        "Minimum age of 25 years and experience as an advocate or pleader for seven years",
        "Distinguished jurist with no minimum age requirement"
      ],
      correctAnswerIndex: 2,
      explanation: "To be appointed as a district judge, a person should have been an advocate or pleader for seven years and be recommended by the high court for appointment.",
    ),

    Question(
      questionText: "Who appoints persons (other than district judges) to the judicial service of a state?",
      options: [
        "The Chief Justice of India",
        "The Parliament",
        "The Governor of the state in consultation with the high court and the State Public Service Commission",
        "The President"
      ],
      correctAnswerIndex: 2,
      explanation: "Persons (other than district judges) are appointed to the judicial service of a state by the governor of the state in consultation with the high court and the State Public Service Commission.",
    ),

    Question(
      questionText: "Which authority has control over district courts and other subordinate courts, including posting, promotion, and leave?",
      options: [
        "The President",
        "The Prime Minister",
        "The Chief Justice of India",
        "The High Court"
      ],
      correctAnswerIndex: 3,
      explanation: "The high court has control over district courts and other subordinate courts, including the posting, promotion, and leave of persons belonging to the judicial service of a state.",
    ),

    Question(
      questionText: "What does the expression 'district judge' include in the context of the constitutional provisions?",
      options: [
        "Only the presiding officer of a district court",
        "Judges of a city civil court, additional district judge, chief judge of a small cause court, and others",
        "District magistrates",
        "Chief Justice of the high court"
      ],
      correctAnswerIndex: 1,
      explanation: "The expression 'district judge' includes judges of various courts such as city civil court, additional district judge, chief judge of a small cause court, and others.",
    ),

    Question(
      questionText: "What is the meaning of 'judicial service' in the constitutional context?",
      options: [
        "Service exclusively for persons intending to fill the post of district judge",
        "Service exclusively for persons intending to fill the post of district judge and other administrative posts",
        "Service for both judicial and administrative posts",
        "Service for clerical staff in the judiciary"
      ],
      correctAnswerIndex: 0,
      explanation: "'Judicial service' means a service consisting exclusively of persons intended to fill the post of district judge and other civil judicial posts inferior to the post of a district judge.",
    ),

    Question(
      questionText: "Who can direct the application of provisions related to persons in the state judicial service to certain magistrates?",
      options: [
        "The Chief Justice of India",
        "The Governor",
        "The Parliament",
        "The President"
      ],
      correctAnswerIndex: 1,
      explanation: "The Governor may direct that provisions related to persons in the state judicial service would apply to any class or classes of magistrates in the state.",
    ),
    Question(
      questionText: "Who is the highest judicial authority in the district with original and appellate jurisdiction in both civil and criminal matters?",
      options: [
        "Sessions Judge",
        "Chief Judicial Magistrate",
        "District Magistrate",
        "High Court Judge"
      ],
      correctAnswerIndex: 0,
      explanation: "The highest judicial authority in the district with original and appellate jurisdiction in both civil and criminal matters is the Sessions Judge, also known as the District Judge.",
    ),

    Question(
      questionText: "What is the role of the District Judge in both civil and criminal cases?",
      options: [
        "Only deals with criminal cases",
        "Exercises administrative powers",
        "Has no supervisory powers",
        "Handles only small pecuniary cases"
      ],
      correctAnswerIndex: 1,
      explanation: "The District Judge, in addition to dealing with civil and criminal cases, exercises administrative powers and has supervisory powers over all the subordinate courts in the district.",
    ),

    Question(
      questionText: "What is the jurisdiction of the Sessions Judge in imposing sentences?",
      options: [
        "Can impose any sentence without restriction",
        "Can impose only fines",
        "Can impose life imprisonment and capital punishment",
        "Does not have sentencing powers"
      ],
      correctAnswerIndex: 2,
      explanation: "The Sessions Judge has the power to impose any sentence, including life imprisonment and capital punishment. However, capital punishment is subject to confirmation by the High Court.",
    ),

    Question(
      questionText: "Which court possesses unlimited pecuniary jurisdiction over civil suits?",
      options: [
        "Court of Munsiff",
        "Court of Chief Judicial Magistrate",
        "Court of Subordinate Judges",
        "Metropolitan Magistrate Court"
      ],
      correctAnswerIndex: 2,
      explanation: "The Court of Subordinate Judges possesses unlimited pecuniary jurisdiction over civil suits.",
    ),

    Question(
      questionText: "What is the jurisdiction of the Chief Judicial Magistrate in criminal cases?",
      options: [
        "Decides cases punishable with life imprisonment",
        "Decides cases punishable with imprisonment for up to three years",
        "Decides only petty criminal cases",
        "Has no sentencing powers"
      ],
      correctAnswerIndex: 1,
      explanation: "The Chief Judicial Magistrate decides criminal cases punishable with imprisonment for a term of up to seven years.",
    ),

    Question(
      questionText: "What type of cases does the Court of Munsiff handle?",
      options: [
        "Criminal cases",
        "Civil cases of small pecuniary stake",
        "Appeals against High Court decisions",
        "Capital punishment cases"
      ],
      correctAnswerIndex: 1,
      explanation: "The Court of Munsiff handles civil cases of small pecuniary stake.",
    ),

    Question(
      questionText: "In metropolitan cities, what type of courts exist on the criminal side?",
      options: [
        "Metropolitan Civil Courts",
        "City Civil Courts",
        "District and Sessions Judge's Court",
        "Metropolitan Magistrate Courts"
      ],
      correctAnswerIndex: 3,
      explanation: "In metropolitan cities, courts of Metropolitan Magistrates exist on the criminal side.",
    ),

    Question(
      questionText: "What is the purpose of small causes courts in some states and Presidency towns?",
      options: [
        "Handling only criminal cases",
        "Handling appeals against High Court decisions",
        "Deciding civil cases of small value in a summary manner",
        "Trying capital punishment cases"
      ],
      correctAnswerIndex: 2,
      explanation: "Small causes courts in some states and Presidency towns decide civil cases of small value in a summary manner. Their decisions are final, but the High Court possesses the power of revision.",
    ),

    Question(
      questionText: "What types of cases are tried by Panchayat Courts?",
      options: [
        "Only civil cases",
        "Only criminal cases",
        "Petty civil and criminal cases",
        "Cases with capital punishment"
      ],
      correctAnswerIndex: 2,
      explanation: "Panchayat Courts try petty civil and criminal cases, known by various names such as Nyaya Panchayat, Gram Kutchery, Adalati Panchayat, and more.",
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
    home: subOrdinateCourt(),
  ));
}

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

class CONSTITUTIONALPRESCRIPTIONS extends StatefulWidget {
  final String? userIdentifier;

  CONSTITUTIONALPRESCRIPTIONS({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<CONSTITUTIONALPRESCRIPTIONS> createState() => _CONSTITUTIONALPRESCRIPTIONSState();
}

class _CONSTITUTIONALPRESCRIPTIONSState extends State<CONSTITUTIONALPRESCRIPTIONS> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//55.CONSTITUTIONAL PRESCRIPTIONS


    Question(
      questionText: "According to the constitutional prescriptions, who is the head of the Central Council of Ministers?",
      options: ["President", "Chief Justice of India", "Prime Minister", "Governor"],
      correctAnswerIndex: 2,
      explanation: "The Prime Minister is the head of the Central Council of Ministers as per constitutional prescriptions.",
    ),

    Question(
      questionText: "In which article of the constitution is the composition of the Parliament defined?",
      options: ["Article 74", "Article 79", "Article 80", "Article 81"],
      correctAnswerIndex: 1,
      explanation: "The composition of the Parliament is defined in Article 79 of the constitution.",
    ),

    Question(
      questionText: "How many members are there in the Rajya Sabha according to constitutional prescriptions?",
      options: ["200 Members", "250 Members", "300 Members", "350 Members"],
      correctAnswerIndex: 1,
      explanation: "The Rajya Sabha is composed of 250 Members according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Who is responsible for determining the composition of the State Election Commission?",
      options: ["State Legislature", "President", "Parliament", "Governor"],
      correctAnswerIndex: 0,
      explanation: "The composition of the State Election Commission is determined by the State Legislature.",
    ),

    Question(
      questionText: "Which body is chaired by the Chief Justice of India and other Judges according to the constitutional prescriptions?",
      options: ["Supreme Court", "High Court", "State Council of Ministers", "State Election Commission"],
      correctAnswerIndex: 0,
      explanation: "The Supreme Court, according to constitutional prescriptions, is chaired by the Chief Justice of India and other Judges.",
    ),

    Question(
      questionText: "Who appoints the Chief Election Commissioner and other Election Commissioners according to constitutional provisions?",
      options: ["President", "Prime Minister", "Governor", "Chief Justice of India"],
      correctAnswerIndex: 0,
      explanation: "The Chief Election Commissioner and other Election Commissioners are appointed by the President according to constitutional provisions.",
    ),

    Question(
      questionText: "In the electoral college for the President, how many elected MPs and MLAs are involved in the process?",
      options: ["54", "66", "75", "80"],
      correctAnswerIndex: 0,
      explanation: "The electoral college for the President consists of 54 elected MPs and MLAs according to the constitutional provisions.",
    ),

    Question(
      questionText: "Who is responsible for appointing the Chairman and Members of the Finance Commission?",
      options: ["Prime Minister", "President", "Governor", "Chief Justice of India"],
      correctAnswerIndex: 1,
      explanation: "The Chairman and Members of the Finance Commission are appointed by the President according to constitutional provisions.",
    ),

    Question(
      questionText: "According to the constitutional prescriptions, who determines the composition of the State Election Commission?",
      options: ["State Legislature", "President", "Parliament", "Governor"],
      correctAnswerIndex: 3,
      explanation: "The composition of the State Election Commission is determined by the Governor according to the constitutional prescriptions.",
    ),

    Question(
      questionText: "Who appoints the Chief Minister of NCT of Delhi according to constitutional provisions?",
      options: ["President", "Governor", "Chief Justice of India", "Prime Minister"],
      correctAnswerIndex: 0,
      explanation: "The Chief Minister of NCT of Delhi is appointed by the President according to constitutional provisions.",
    ),
    Question(
      questionText: "What is the minimum age requirement for the election of a member of the Lok Sabha according to constitutional prescriptions?",
      options: ["21 years", "25 years", "30 years", "35 years"],
      correctAnswerIndex: 1,
      explanation: "The minimum age requirement for the election of a member of the Lok Sabha is 25 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "At what age does a Judge of the Supreme Court retire according to constitutional prescriptions?",
      options: ["62 years", "65 years", "70 years", "75 years"],
      correctAnswerIndex: 1,
      explanation: "A Judge of the Supreme Court retires at the age of 65 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "For the election of a member of the State Legislative Assembly, what is the minimum age requirement?",
      options: ["21 years", "25 years", "30 years", "35 years"],
      correctAnswerIndex: 2,
      explanation: "The minimum age requirement for the election of a member of the State Legislative Assembly is 30 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "At what age does a member of a State Public Service Commission (SPSC) retire according to constitutional prescriptions?",
      options: ["60 years", "62 years", "65 years", "70 years"],
      correctAnswerIndex: 1,
      explanation: "A member of a State Public Service Commission (SPSC) retires at the age of 62 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "What is the minimum age requirement for registration as a voter in the electoral roll according to constitutional prescriptions?",
      options: ["16 years", "18 years", "21 years", "25 years"],
      correctAnswerIndex: 1,
      explanation: "The minimum age requirement for registration as a voter in the electoral roll is 18 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Who administers the oath to the President of India according to constitutional prescriptions?",
      options: ["Chief Justice of India", "Prime Minister", "Governor", "Speaker of the Lok Sabha"],
      correctAnswerIndex: 0,
      explanation: "The oath to the President of India is administered by the Chief Justice of India (or) the senior most Judge of the Supreme Court available.",
    ),

    Question(
      questionText: "How is the oath administered to Union Ministers according to constitutional prescriptions?",
      options: ["By the Prime Minister", "By the President", "By the Chief Justice of India", "By the Governor of the State"],
      correctAnswerIndex: 1,
      explanation: "The oath to Union Ministers is administered by the President according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Before whom do Members of Parliament take their oath according to constitutional prescriptions?",
      options: ["Prime Minister", "President", "Chief Justice of India", "Speaker of the Lok Sabha"],
      correctAnswerIndex: 1,
      explanation: "Members of Parliament take their oath before the President (or) some person appointed in that behalf by him according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Who administers the oath to State Ministers according to constitutional prescriptions?",
      options: ["Chief Justice of India", "Governor of the State", "Prime Minister", "Speaker of the State Legislative Assembly"],
      correctAnswerIndex: 1,
      explanation: "The oath to State Ministers is administered by the Governor of the State according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Before whom do Judges of the High Courts take their oath according to constitutional prescriptions?",
      options: ["Chief Justice of India", "Governor of the State", "President", "Speaker of the State Legislative Assembly"],
      correctAnswerIndex: 1,
      explanation: "Judges of the High Courts take their oath before the Governor of the State (or) some person appointed in that behalf by him according to constitutional prescriptions.",
    ),

    Question(
      questionText: "What is the term/duration of the President's term according to constitutional prescriptions?",
      options: ["4 years", "5 years", "6 years", "7 years"],
      correctAnswerIndex: 1,
      explanation: "The President's term is 5 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "How long does a Chief Minister hold office according to constitutional prescriptions?",
      options: ["3 years", "4 years", "5 years", "During the pleasure of the Governor"],
      correctAnswerIndex: 3,
      explanation: "A Chief Minister holds office during the pleasure of the Governor according to constitutional prescriptions.",
    ),

    Question(
      questionText: "What is the term/duration of the State legislative Assembly according to constitutional prescriptions?",
      options: ["3 years", "4 years", "5 years", "6 years"],
      correctAnswerIndex: 2,
      explanation: "The State legislative Assembly's term is 5 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "How long does a member of the State legislative Council hold office according to constitutional prescriptions?",
      options: ["4 years", "5 years", "6 years", "Continuing Chamber (one-third retire every second year)"],
      correctAnswerIndex: 3,
      explanation: "A member of the State legislative Council holds office in a Continuing Chamber, with one-third retiring every second year, according to constitutional prescriptions.",
    ),

    Question(
      questionText: "What is the term/duration of the Municipalities according to constitutional prescriptions?",
      options: ["3 years", "4 years", "5 years", "6 years"],
      correctAnswerIndex: 2,
      explanation: "The term/duration of Municipalities is 5 years according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Who determines the salary of the President according to constitutional prescriptions?",
      options: ["Prime Minister", "Parliament", "Governor", "President"],
      correctAnswerIndex: 1,
      explanation: "The salary of the President is determined by Parliament according to constitutional prescriptions.",
    ),

    Question(
      questionText: "What is the salary status of the Vice-President according to constitutional prescriptions?",
      options: ["No Salary", "Equal to the President", "Equal to the Prime Minister", "Determined by the Parliament"],
      correctAnswerIndex: 0,
      explanation: "The Vice-President has no salary but is entitled to the salary of the Chairman of the Rajya Sabha according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Who determines the salary of the Prime Minister according to constitutional prescriptions?",
      options: ["President", "Parliament", "Governor", "Prime Minister"],
      correctAnswerIndex: 1,
      explanation: "The salary of the Prime Minister is determined by Parliament according to constitutional prescriptions.",
    ),

    Question(
      questionText: "According to constitutional prescriptions, who decides the salary of Judges of the Supreme Court?",
      options: ["Parliament", "President", "Chief Justice of India", "Governor"],
      correctAnswerIndex: 0,
      explanation: "The salary of Judges of the Supreme Court is determined by Parliament according to constitutional prescriptions.",
    ),

    Question(
      questionText: "Who determines the salary of the Comptroller and Auditor-General of India according to constitutional prescriptions?",
      options: ["Parliament", "President", "Governor", "Comptroller and Auditor-General of India"],
      correctAnswerIndex: 0,
      explanation: "The salary of the Comptroller and Auditor-General of India is determined by Parliament according to constitutional prescriptions.",
    ),

    Question(
      questionText: "What is the salary determination process for the Chief Minister of a State according to the provided information?",
      options: [
        "Governor's discretion",
        "State Legislature's decision",
        "Parliament's approval",
        "State Election Commissioner's recommendation",
      ],
      correctAnswerIndex: 1,
      explanation: "The salary of the Chief Minister of a State is determined by the State Legislature, as mentioned in the provided information.",
    ),
    Question(
      questionText: "To whom should the resignation of the Deputy Speaker of the Lok Sabha be submitted according to the constitutional prescriptions?",
      options: [
        "Speaker of the Lok Sabha",
        "Deputy Speaker of the Lok Sabha",
        "President",
        "Chairman of the Rajya Sabha",
      ],
      correctAnswerIndex: 0,
      explanation: "According to the constitutional prescriptions, the resignation of the Deputy Speaker of the Lok Sabha should be submitted to the Speaker of the Lok Sabha.",
    ),
    Question(
      questionText: "Who has the authority to recommend the removal of the Chief Election Commissioner according to the constitutional prescriptions?",
      options: [
        "Governor",
        "State Election Commissioner",
        "President",
        "Election Commissioners or Regional Commissioners",
      ],
      correctAnswerIndex: 2,
      explanation: "According to the constitutional prescriptions, the removal of the Chief Election Commissioner can be recommended by the President.",
    ),

    Question(
      questionText: "Which constitutional functionary is not subject to dissolution, according to the provided information?",
      options: [
        "Governor",
        "State Legislative Council",
        "Speaker of the State Legislative Assembly",
        "President",
      ],
      correctAnswerIndex: 0,
      explanation: "According to the provided information, the Governor is not subject to dissolution.",
    ),

    Question(
      questionText: "On whose recommendation can the President dissolve the State Legislative Assembly?",
      options: [
        "Governor",
        "State Legislative Council",
        "Chief Election Commissioner",
        "Parliament",
      ],
      correctAnswerIndex: 3,
      explanation: "The President can dissolve the State Legislative Assembly on the recommendation of Parliament, according to the constitutional prescriptions.",
    ),

    Question(
      questionText: "Which constitutional body is responsible for recommending the removal of Judges of the High Courts?",
      options: [
        "President",
        "Governor",
        "State Election Commissioner",
        "Chief Election Commissioner",
      ],
      correctAnswerIndex: 0,
      explanation: "The removal of Judges of the High Courts can be recommended by the President, as mentioned in the constitutional prescriptions.",
    ),

    Question(
      questionText: "Who has the authority to recommend the removal of the Comptroller and Auditor-General?",
      options: [
        "Governor",
        "President",
        "Parliament",
        "State Legislative Assembly",
      ],
      correctAnswerIndex: 1,
      explanation: "The removal of the Comptroller and Auditor-General can be recommended by the President, according to the constitutional prescriptions.",
    ),

    Question(
      questionText: "To whom does the Comptroller and Auditor-General of India submit reports related to the Union and the State?",
      options: [
        "President",
        "Governor",
        "Prime Minister",
        "State Finance Commission",
      ],
      correctAnswerIndex: 0,
      explanation: "The Comptroller and Auditor-General of India submits reports related to the Union to the President and reports related to the State to the Governor, according to the constitutional prescriptions.",
    ),

    Question(
      questionText: "Which body submits reports to the State Government, according to the constitutional prescriptions?",
      options: [
        "Finance Commission",
        "District Planning Committee",
        "Metropolitan Planning Committee",
        "SPSC",
      ],
      correctAnswerIndex: 1,
      explanation: "The District Planning Committee submits reports to the State Government, as mentioned in the constitutional prescriptions.",
    ),

    Question(
      questionText: "To whom does the National Commission for SCs submit its reports?",
      options: [
        "Prime Minister",
        "Governor",
        "President",
        "Chief Justice of India",
      ],
      correctAnswerIndex: 2,
      explanation: "The National Commission for SCs submits its reports to the President, according to the constitutional prescriptions.",
    ),

    Question(
      questionText: "Regarding the failure of constitutional machinery in a State, to whom does the Governor submit a report?",
      options: [
        "Prime Minister",
        "Chief Justice of India",
        "President",
        "State Finance Commission",
      ],
      correctAnswerIndex: 2,
      explanation: "Regarding the failure of constitutional machinery in a State, the Governor submits a report to the President, as mentioned in the constitutional prescriptions.",
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
    home: CONSTITUTIONALPRESCRIPTIONS(),
  ));
}

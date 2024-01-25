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

class erfrms extends StatefulWidget {
  final String? userIdentifier;

  erfrms({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<erfrms> createState() => _erfrmsState();
}

class _erfrmsState extends State<erfrms> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

  //  82.ELECTORAL REFORMS

    Question(
      questionText: "Which committee recommended the introduction of state funding of elections in 1999?",
      options: [
        "Election Commission of India Recommendations on Electoral Reforms (1998)",
        "Indrajit Gupta Committee on State Funding of Elections (1998)",
        "National Commission to Review the Working of the Constitution (2000-2002)",
        "Law Commission of India 170th Report on Reform of the Electoral Laws (1999)"
      ],
      correctAnswerIndex: 1,
      explanation: "In 1998, the BJP-led Government appointed the Indrajit Gupta Committee, which recommended the introduction of state funding of elections. The committee submitted its report in 1999.",
    ),

    Question(
      questionText: "Which amendment lowered the voting age from 21 years to 18 years for the Lok Sabha and assembly elections?",
      options: [
        "61st Constitutional Amendment Act of 1988",
        "Representation of the People (Amendment) Act of 1988",
        "Representation of the People (Amendment) Act of 1989",
        "Representation of the People (Amendment) Act of 1990"
      ],
      correctAnswerIndex: 0,
      explanation: "The 61st Constitutional Amendment Act of 1988 lowered the voting age from 21 years to 18 years for both Lok Sabha and assembly elections, providing an opportunity for the youth to participate in the political process.",
    ),

    Question(
      questionText: "Which committee submitted its report in 1975 during Jaya Prakash Narayan's 'Total Revolution' movement?",
      options: [
        "Joint Parliamentary Committee on Amendments to Election Laws",
        "Tharkunde Committee",
        "Dinesh Goswami Committee on Electoral Reforms",
        "Vahra Committee on the Nexus between Crime and Politics"
      ],
      correctAnswerIndex: 1,
      explanation: "The Tharkunde Committee was appointed in 1974 by Jaya Prakash Narayan during his 'Total Revolution' movement, and it submitted its report in 1975.",
    ),

    Question(
      questionText: "What committee, appointed in 1990, made recommendations on electoral reforms in 1996?",
      options: [
        "Joint Parliamentary Committee on Amendments to Election Laws",
        "Dinesh Goswami Committee on Electoral Reforms",
        "National Commission to Review the Working of the Constitution (2000-2002)",
        "Indrajit Gupta Committee on State Funding of Elections (1998)"
      ],
      correctAnswerIndex: 1,
      explanation: "In 1990, the National Front Government appointed the Dinesh Goswami Committee on Electoral Reforms, which made recommendations in 1996.",
    ),

    Question(
      questionText: "What disqualifies a person from contesting elections for 6 years according to the Prevention of Insults to National Honour Act of 1971?",
      options: [
        "Criminal convictions unrelated to insulting national symbols",
        "Offences against public order",
        "Insulting the National Flag, Constitution of India, or preventing the singing of the National Anthem",
        "Participation in anti-government activities"
      ],
      correctAnswerIndex: 2,
      explanation: "A person convicted for insulting the National Flag, Constitution of India, or preventing the singing of the National Anthem is disqualified from contesting elections for 6 years according to the Prevention of Insults to National Honour Act of 1971.",
    ),

    Question(
        questionText: "What change was made in the number of electors as proposers and seconders for Presidential and Vice Presidential elections in 1997?",
        options: [
          "Increased from 5 to 20 for Presidential and from 2 to 50 for Vice Presidential",
          "Increased from 10 to 50 for both Presidential and Vice Presidential",
          "Decreased from 20 to 5 for Presidential and from 50 to 2 for Vice Presidential",
          "No change in the number of electors as proposers and seconders"
        ],
        correctAnswerIndex: 1,
        explanation: "In 1997, the number of electors as proposers and seconders for contesting elections to the office of the President was increased from 10 to 50 and to the office of the Vice President from 5 to 20."
    ),

    Question(
      questionText: "Which provision, introduced in 1999, allows the requisitioning of employees from various institutions for deployment on election duty?",
      options: [
        "Domicile or residency requirement",
        "Declaration of Criminal Antecedents, Assets, etc., by Candidates",
        "Requisitioning of Staff for Election Duty",
        "Allocation of Time on Electronic Media"
      ],
      correctAnswerIndex: 2,
      explanation: "In 1999, a provision was made allowing the requisitioning of employees from local authorities, nationalized banks, universities, LIC, government undertakings, and other government-aided institutions for deployment on election duty.",
    ),
    Question(
      questionText: "What change was introduced in 2009 regarding exit polls during elections to Lok Sabha and State Legislative Assemblies?",
      options: [
        "Exit polls were encouraged to provide more information to voters.",
        "Exit polls were prohibited and the publication of results was banned.",
        "Exit polls were allowed only after the voting period was over.",
        "Exit polls were conducted by the Election Commission for transparency."
      ],
      correctAnswerIndex: 1,
      explanation: "In 2009, a provision was introduced to prohibit conducting exit polls and publishing results during the election to Lok Sabha and State Legislative Assemblies.",
    ),

    Question(
      questionText: "Which provision, introduced in 2009, simplified the procedure for disqualification of a person found guilty of corrupt practices?",
      options: [
        "Including all officials within the scope of corrupt practices",
        "Increasing the security deposit for candidates",
        "Time-limit for submitting a case for disqualification",
        "Requisitioning of staff for election duty"
      ],
      correctAnswerIndex: 2,
      explanation: "In 2009, a provision was made for the simplification of the procedure for disqualification of a person found guilty of corrupt practices. It provided for a three-month time-limit within which the specified authority will have to submit the case of a person found guilty of corrupt practice to the President for determination of the question of disqualification.",
    ),

    Question(
      questionText: "What significant change was introduced in 2018 regarding political funding?",
      options: [
        "Introduction of electoral bonds",
        "Prohibition of cash donations",
        "Limitation on corporate contributions",
        "Disallowance of foreign funding"
      ],
      correctAnswerIndex: 0,
      explanation: "In 2018, the central government introduced the Electoral Bond Scheme as an alternative to cash donations made to political parties. It aimed to bring clean money and substantial transparency into the system of political funding.",
    ),

    Question(
      questionText: "In 2013, what new provision did the Supreme Court uphold regarding persons in jail or police custody?",
      options: [
        "They are disqualified from contesting elections.",
        "They are allowed to vote.",
        "They cannot be candidates for political parties.",
        "Their voting rights are temporarily suspended."
      ],
      correctAnswerIndex: 0,
      explanation: "In 2013, the Supreme Court upheld a provision allowing persons in jail or police custody to contest elections. It expressly stated that, by reason of the prohibition to vote, a person whose name has been entered in the electoral roll shall not cease to be an elector.",
    ),

    Question(
      questionText: "What change was made in 2015 to avoid confusion among voters in constituencies with namesake candidates?",
      options: [
        "Introduction of electronic voting machines",
        "Requirement of additional suffixes for candidates",
        "Mandatory use of voter IDs",
        "Inclusion of photographs of candidates on ballot papers and EVMs"
      ],
      correctAnswerIndex: 3,
      explanation: "In 2015, to avoid confusion among voters in constituencies where namesake candidates are contesting, the Election Commission ordered that ballot papers and EVMs would carry the picture of the candidate with their name and party symbol.",
    ),

    Question(
      questionText: "What key electoral reforms were introduced by the Election Laws (Amendment) Act, 2021?",
      options: [
        "Allowing online voting",
        "Introducing compulsory voting",
        "Linking electoral roll data with Aadhaar",
        "Implementing proportional representation"
      ],
      correctAnswerIndex: 2,
      explanation: "The Election Laws (Amendment) Act, 2021, introduced electoral reforms such as linking electoral roll data with the Aadhaar ecosystem to prevent multiple enrollments and specifying additional qualifying dates for the preparation or revision of electoral rolls.",
    ),

    Question(
      questionText: "What change did the Amendment Act make to allow spouses of service voters to cast their votes?",
      options: [
        "It allowed online voting for service voters' spouses.",
        "It expanded the definition of 'wife' to include spouses.",
        "It prohibited service voters' spouses from voting.",
        "It required service voters' spouses to vote through postal ballot."
      ],
      correctAnswerIndex: 1,
      explanation: "The Election Laws (Amendment) Act, 2021, substituted the word 'wife' with the word 'spouse' to make the election laws gender-neutral, allowing spouses of service voters to cast their votes.",
    ),

    Question(
      questionText: "What significant expansion did the Amendment Act bring regarding the requisition of premises?",
      options: [
        "Requisitioning premises for political rallies",
        "Requisitioning premises for campaign offices",
        "Requisitioning premises for storage of ballot boxes",
        "Requisitioning premises for counting, storage, and accommodation purposes"
      ],
      correctAnswerIndex: 3,
      explanation: "The Amendment Act, 2021, expanded the grounds for the requisition of premises, enabling it for purposes such as counting, storage of voting machines, accommodation of security forces, and polling personnel after a poll has taken place.",
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
    home: erfrms(),
  ));
}

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

class ncrwc extends StatefulWidget {
  final String? userIdentifier;

  ncrwc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ncrwc> createState() => _ncrwcState();
}

class _ncrwcState extends State<ncrwc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//89.NATIONAL COMMISSION TO REVIEW WORKING OF THE CONSTITUTION


    Question(
      questionText: " what should be the consequence if a political party violates the provision of not providing a ticket to a candidate with a criminal record?",
      options: [
        "The candidate should be fined",
        "The party should be warned",
        "The candidate should be disqualified, and the party deregistered",
        "The party should be fined"
      ],
      correctAnswerIndex: 2,
      explanation: "If a political party violates the provision regarding candidates with criminal records, the candidate should be disqualified, and the party deregistered.",
    ),

    Question(
      questionText: "What does the proposed law on political parties suggest regarding candidates and their assets?",
      options: [
        "Candidates should not declare their assets",
        "Candidates should declare their assets and liabilities at the time of nomination",
        "Candidates' assets are irrelevant to the nomination process",
        "Candidates should only declare their assets after winning the election"
      ],
      correctAnswerIndex: 1,
      explanation: "The proposed law on political parties suggests that candidates should declare their assets and liabilities at the time of nomination.",
    ),

    Question(
      questionText: "What is the recommended role of the Election Commission in deciding questions about disqualification on grounds of defection?",
      options: [
        "The Speaker/Chairman of the House should decide",
        "The courts should decide",
        "The Election Commission should decide",
        "Defectors should decide"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the text, the power to decide questions regarding disqualification on grounds of defection should vest in the Election Commission instead of in the Speaker/Chairman of the House concerned.",
    ),

    Question(
      questionText: "Who headed the National Commission to Review the Working of the Constitution (NCRWC)?",
      options: ["M.N. Venkatachaliah", "B.P. Jeevan Reddy", "R.S. Sarkaria", "SoH Sorabjee"],
      correctAnswerIndex: 0,
      explanation: "The NCRWC was headed by M.N. Venkatachaliah, the former Chief Justice of India.",
    ),

    Question(
      questionText: "What were the terms of reference for the National Commission to Review the Working of the Constitution (NCRWC)?",
      options: [
        "To rewrite the Constitution entirely.",
        "To recommend changes within the framework of parliamentary democracy without interfering with the basic structure of the Constitution.",
        "To conduct elections.",
        "To oversee the administration of justice."
      ],
      correctAnswerIndex: 1,
      explanation: "The NCRWC's terms of reference were to recommend changes within the framework of parliamentary democracy without interfering with the basic structure of the Constitution.",
    ),

    Question(
      questionText: "According to the NCRWC, what is the foremost area of concern regarding the Indian State?",
      options: [
        "Its inability to anticipate and provide for global forces of change.",
        "Its excessive focus on social and economic rights.",
        "Its efficiency in managing electoral processes.",
        "Its commitment to national integrity and security."
      ],
      correctAnswerIndex: 0,
      explanation: "The NCRWC identifies the Indian State's inability to anticipate and provide for global forces of change as a foremost area of concern.",
    ),

    Question(
      questionText: "How many recommendations did the National Commission to Review the Working of the Constitution (NCRWC) make in total?",
      options: ["58", "86", "249", "100"],
      correctAnswerIndex: 2,
      explanation: "The NCRWC made a total of 249 recommendations.",
    ),

    Question(
      questionText: "What did the NCRWC suggest regarding the scope of prohibition against discrimination?",
      options: [
        "To limit the scope to gender-based discrimination.",
        "To extend the scope to include 'ethnic or social origin, political or other opinion, property or birth'.",
        "To exclude any mention of discrimination from the Constitution.",
        "To remove the prohibition against discrimination."
      ],
      correctAnswerIndex: 1,
      explanation: "The NCRWC suggested extending the scope of prohibition against discrimination to include 'ethnic or social origin, political or other opinion, property or birth'.",
    ),

    Question(
      questionText: "According to the NCRWC, what new Fundamental Rights should be added?",
      options: [
        "Right to unlimited free speech.",
        "Right to private property.",
        "Right to privacy and family life.",
        "Right to bear arms."
      ],
      correctAnswerIndex: 2,
      explanation: "The NCRWC recommended adding new Fundamental Rights, including the right to privacy and family life.",
    ),

    Question(
      questionText: "What does the National Commission to Review the Working of the Constitution recommend regarding the privileges of legislators?",
      options: [
        "They should be expanded without any limitations.",
        "They should be maintained as they are.",
        "They should be defined and delimited for the free and independent functioning of Parliament and state legislatures.",
        "They should be eliminated entirely."
      ],
      correctAnswerIndex: 2,
      explanation: "The commission recommends defining and delimiting the privileges of legislators for the free and independent functioning of Parliament and state legislatures.",
    ),

    Question(
      questionText: "What suggestion does the commission make concerning the immunity enjoyed by members under parliamentary privileges?",
      options: [
        "It should cover all acts, regardless of their nature.",
        "It should not cover corrupt acts committed by them in connection with their duties in the House or otherwise.",
        "It should cover only criminal acts.",
        "It should be extended to include any actions taken by members."
      ],
      correctAnswerIndex: 1,
      explanation: "The commission suggests that the immunity enjoyed by members under parliamentary privileges should not cover corrupt acts committed by them in connection with their duties.",
    ),

    Question(
      questionText: "According to the recommendations, what practice should be prohibited by law regarding the Council of Ministers?",
      options: [
        "No prohibition is necessary.",
        "The Council of Ministers should be expanded.",
        "The practice of having oversized Council of Ministers should be prohibited by law.",
        "The size of the Council of Ministers should be entirely at the discretion of the Prime Minister."
      ],
      correctAnswerIndex: 2,
      explanation: "The recommendation is to prohibit, by law, the practice of having an oversized Council of Ministers.",
    ),

    Question(
      questionText: "According to the recommendations, how should the appointment of the governor of a state be carried out?",
      options: [
        "The President should appoint the governor without any consultation.",
        "The chief minister should appoint the governor.",
        "The President should appoint the governor after consultation with the chief minister of that state.",
        "The governor should be elected by the state assembly."
      ],
      correctAnswerIndex: 2,
      explanation: "The recommendation is that the President should appoint the governor of a state only after consultation with the chief minister of that state.",
    ),

    Question(
      questionText: "What does the National Commission suggest regarding the use of Article 356?",
      options: [
        "It should be used frequently.",
        "It should be deleted from the Constitution.",
        "It should be used without any restrictions.",
        "It should be used sparingly and only as a remedy of the last resort."
      ],
      correctAnswerIndex: 3,
      explanation: "The National Commission suggests that Article 356 should not be deleted but should be used sparingly and only as a remedy of the last resort.",
    ),

    Question(
      questionText: "How does the commission propose to test the question of whether the ministry in a state has lost the confidence of the assembly?",
      options: [
        "Through a referendum.",
        "On the streets through public protests.",
        "On the floor of the House; the Governor should not be allowed to dismiss the ministry as long as it enjoys the confidence of the House.",
        "Through a special committee appointed by the President."
      ],
      correctAnswerIndex: 2,
      explanation: "The commission proposes that the question of whether the ministry in a state has lost the confidence of the assembly should be tested only on the floor of the House, and the Governor should not be allowed to dismiss the ministry as long as it enjoys the confidence of the House.",
    ),
    Question(
        questionText: "According to the recommendations, what change is suggested for the Eleventh and Twelfth Schedules of the Constitution?",
        options: [
          "They should be abolished.",
          "They should remain unchanged.",
          "They should be expanded to include more subjects.",
          "They should be restructured to create a separate fiscal domain for panchayats and municipalities."
        ],
        correctAnswerIndex: 3,
        explanation: "The recommendation is to restructure the Eleventh and Twelfth Schedules of the Constitution to create a separate fiscal domain for panchayats and municipalities."
    ),

    Question(
      questionText: "How does the National Commission suggest handling the dissolution of a Panchayat?",
      options: [
        "Dissolve it without any prior notice.",
        "Dissolve it based on the decision of the State Election Commission.",
        "Give a reasonable opportunity of being heard to the Panchayat before it is dissolved.",
        "Dissolve it only after the Governor's approval."
      ],
      correctAnswerIndex: 2,
      explanation: "The National Commission suggests amending Article 243-E to ensure that a reasonable opportunity of being heard shall be given to a Panchayat before it is dissolved.",
    ),

    Question(
      questionText: "What does the Commission propose regarding the delimitation, reservation, and rotation of seats for local authorities?",
      options: [
        "Leave it to the discretion of each state.",
        "Assign these functions to the State Election Commission.",
        "Establish a new independent body for these functions.",
        "Leave it to the Election Commission of India."
      ],
      correctAnswerIndex: 3,
      explanation: "The Commission proposes that the functions of delimitation, reservation, and rotation of seats should be vested in a Delimitation Commission and not in the State Election Commission.",
    ),

    Question(
      questionText: "How does the National Commission recommend appointing the Chief Election Commissioner and other Election Commissioners?",
      options: [
        "Appointment solely by the Prime Minister.",
        "Appointment solely by the President.",
        "Appointment through a body consisting of the Prime Minister, Leader of the Opposition in the Lok Sabha, Leader of the Opposition in the Rajya Sabha, the Speaker of the Lok Sabha, and the Deputy Chairman of the Rajya Sabha.",
        "Appointment through a direct election by the citizens."
      ],
      correctAnswerIndex: 2,
      explanation: "The National Commission recommends appointing the Chief Election Commissioner and other Election Commissioners through a body consisting of the Prime Minister, Leader of the Opposition in the Lok Sabha, Leader of the Opposition in the Rajya Sabha, the Speaker of the Lok Sabha, and the Deputy Chairman of the Rajya Sabha.",
    ),

    Question(
      questionText: "What are the proposed provisions of the comprehensive law for political parties?",
      options: [
        "Require parties to exclude candidates convicted of any crime.",
        "Make it mandatory for parties to disclose their accounts and funds systematically.",
        "Allow parties to discriminate based on caste, community, or similar distinctions.",
        "Encourage parties to register and operate without any accountability."
      ],
      correctAnswerIndex: 1,
      explanation: "The proposed provisions of the comprehensive law for political parties include making it mandatory for parties to disclose their accounts and funds systematically.",
    ),

    Question(
      questionText: "According to the National Commission's recommendation on the Anti-Defection Law, what should happen to defectors?",
      options: [
        "Defectors should be allowed to hold any public office of their choice.",
        "Defectors should be exempt from contesting fresh elections.",
        "Defectors must resign from their parliamentary or assembly seats and contest fresh elections.",
        "Defectors should be rewarded with higher political posts."
      ],
      correctAnswerIndex: 2,
      explanation: "According to the National Commission's recommendation on the Anti-Defection Law, defectors must resign from their parliamentary or assembly seats and contest fresh elections.",
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
    home: ncrwc(),
  ));
}

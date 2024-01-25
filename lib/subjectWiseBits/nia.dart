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

class nia extends StatefulWidget {
  final String? userIdentifier;

  nia({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nia> createState() => _niaState();
}

class _niaState extends State<nia> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//67.NATIONAL INVESTIGATION AGENCY

    Question(
      questionText: "When was the National Investigation Agency (NIA) established?",
      options: ["2008", "2009", "2011", "2010"],
      correctAnswerIndex: 1,
      explanation: "The National Investigation Agency (NIA) was established in 2009 under the provisions of the National Investigation Agency Act, 2008.",
    ),

    Question(
      questionText: "What led to the establishment of the NIA according to the provided information?",
      options: ["2001 Parliament attack", "2008 Mumbai terror attacks (26/11 incident)", "2016 Uri attack", "2019 Pulwama attack"],
      correctAnswerIndex: 1,
      explanation: "The NIA was established in the backdrop of the 2008 Mumbai terror attacks, popularly known as the 26/11 incident.",
    ),

    Question(
      questionText: "Where is the headquarters of the NIA located?",
      options: ["Mumbai", "Kolkata", "New Delhi", "Chennai"],
      correctAnswerIndex: 2,
      explanation: "The headquarters of the NIA is located in New Delhi.",
    ),

    Question(
      questionText: "Who appoints the Director-General of the NIA?",
      options: ["Prime Minister", "Governor of New Delhi", "Central government", "Ministry of Home Affairs"],
      correctAnswerIndex: 2,
      explanation: "The Director-General of the NIA is appointed by the central government.",
    ),

    Question(
      questionText: "Under whose administrative control does the NIA work?",
      options: ["Ministry of External Affairs", "Ministry of Defence", "Ministry of Home Affairs", "Ministry of Finance"],
      correctAnswerIndex: 2,
      explanation: "The NIA works under the administrative control of the Ministry of Home Affairs, Government of India.",
    ),

    Question(
      questionText: "What rationale did the Government of India provide while introducing the NIA Bill in 2008?",
      options: ["Need for space exploration", "Complex inter-state and international linkages in terrorist activities", "Creation of a new currency", "Control of environmental pollution"],
      correctAnswerIndex: 1,
      explanation: "The Government of India highlighted the complex inter-state and international linkages in terrorist activities as one of the reasons for creating the NIA.",
    ),

    Question(
      questionText: "What is the primary focus of the NIA according to the reasons given by the Government of India?",
      options: ["Handling cases related to civil disputes", "Investigating offences related to terrorism and certain other Acts with national ramifications", "Promoting cultural exchanges", "Addressing economic inequalities"],
      correctAnswerIndex: 1,
      explanation: "The primary focus of the NIA, according to the Government of India, is to investigate offences related to terrorism and certain other Acts with national ramifications.",
    ),

    Question(
      questionText: "What recommendation did expert committees and the Second Administrative Reforms Commission of India make regarding the establishment of the NIA?",
      options: ["No recommendation was made", "To abolish the NIA", "To establish an agency at the central level for the investigation of offences related to terrorism", "To focus on international collaborations"],
      correctAnswerIndex: 2,
      explanation: "Expert committees and the Second Administrative Reforms Commission of India recommended the establishment of an agency at the central level for the investigation of offences related to terrorism.",
    ),
    Question(
      questionText: "What is the primary mandate of the National Investigation Agency (NIA)?",
      options: ["To handle civil disputes", "To investigate and prosecute offences under specified Acts related to terrorism", "To promote cultural exchanges", "To address economic inequalities"],
      correctAnswerIndex: 1,
      explanation: "The primary mandate of the NIA is to investigate and prosecute offences under the various Acts mentioned in the Schedule of the NIA Act, particularly those related to terrorism.",
    ),

    Question(
      questionText: "Which acts are specified in the Schedule of the NIA Act for investigation by the NIA?",
      options: ["Acts related to cultural events", "Acts related to economic policies", "Acts related to terrorism", "Acts related to environmental protection"],
      correctAnswerIndex: 2,
      explanation: "The NIA is mandated to investigate and prosecute offences under the various Acts specified in the Schedule of the NIA Act, particularly those related to terrorism.",
    ),

    Question(
      questionText: "What are the functions assigned to the NIA?",
      options: [
        "To handle civil disputes and cultural exchanges",
        "To investigate and prosecute offences under specified Acts related to terrorism",
        "To promote economic policies",
        "To focus on environmental protection"],
      correctAnswerIndex: 1,
      explanation: "The functions assigned to the NIA include investigating and prosecuting offences under the Acts specified in the Schedule of the NIA Act, particularly those related to terrorism.",
    ),

    Question(
      questionText: "What is the vision of the NIA?",
      options: [
        "To be a space exploration agency",
        "To be a partnership-oriented workforce",
        "To be a cultural exchange organization",
        "To be a thoroughly professional investigative agency matching the best international standards"],
      correctAnswerIndex: 3,
      explanation: "The vision of the NIA is to be a thoroughly professional investigative agency matching the best international standards.",
    ),

    Question(
      questionText: "What is the mission of the NIA?",
      options: [
        "To explore space",
        "To promote cultural exchanges",
        "To investigate and prosecute offences related to terrorism",
        "To address economic inequalities"],
      correctAnswerIndex: 2,
      explanation: "The mission of the NIA includes the in-depth professional investigation of scheduled offences related to terrorism and ensuring effective and speedy trial.",
    ),

    Question(
      questionText: "According to the NIA's mission, what standards does it aim to set in investigations?",
      options: ["Low standards", "No standards", "High standards", "Moderate standards"],
      correctAnswerIndex: 2,
      explanation: "The NIA aims to set high standards of excellence in counter-terrorism and other national security-related investigations at the national level.",
    ),

    Question(
      questionText: "What measures does the NIA aim to take for the speedy and effective implementation of the provisions of the NIA Act?",
      options: [
        "Measures related to economic policies",
        "Measures related to cultural exchanges",
        "Measures related to environmental protection",
        "Measures which may be necessary for speedy and effective implementation of the provisions of the NIA Act"],
      correctAnswerIndex: 3,
      explanation: "The NIA aims to take measures which may be necessary for speedy and effective implementation of the provisions of the NIA Act.",
    ),

    Question(
      questionText: "What is the primary goal of the NIA according to its mission?",
      options: [
        "Promoting space exploration",
        "Creating deterrence for existing and potential terrorist groups/individuals",
        "Establishing economic policies",
        "Fostering cultural exchanges"],
      correctAnswerIndex: 1,
      explanation: "The primary goal of the NIA, according to its mission, is to create deterrence for existing and potential terrorist groups/individuals.",
    ),
    Question(
      questionText: "What is the jurisdiction of the National Investigation Agency (NIA)?",
      options: [
        "Jurisdiction limited to internal matters",
        "Jurisdiction limited to economic offences",
        "Concurrent jurisdiction to investigate and prosecute offences affecting sovereignty, security, and integrity of India, among others",
        "Jurisdiction restricted to cybercrimes"],
      correctAnswerIndex: 2,
      explanation: "The NIA has concurrent jurisdiction to investigate and prosecute offences affecting the sovereignty, security, and integrity of India, security of state, friendly relations with foreign states, and offences under various Acts related to international treaties and agreements.",
    ),

    Question(
      questionText: "What types of offences is the NIA empowered to probe, as mentioned in the text?",
      options: [
        "Only economic offences",
        "Only internal offences",
        "Terror attacks including bomb blasts, hijacking, attacks on nuclear installations, and use of weapons of mass destruction",
        "Traffic violations"],
      correctAnswerIndex: 2,
      explanation: "The NIA is empowered to probe terror attacks including bomb blasts, hijacking of aircraft and ships, attacks on nuclear installations, and use of weapons of mass destruction.",
    ),

    Question(
      questionText: "What are the additional offences that the NIA can investigate as per the NIA (Amendment) Act, 2019?",
      options: [
        "Traffic violations",
        "Forgery of documents",
        "Crimes related to intellectual property",
        "Offences relating to human trafficking, counterfeit currency, manufacture or sale of prohibited arms, cyber-terrorism, and explosive substances"],
      correctAnswerIndex: 3,
      explanation: "As per the NIA (Amendment) Act, 2019, the NIA can now investigate offences relating to human trafficking, counterfeit currency or bank notes, manufacture or sale of prohibited arms, cyber-terrorism, and explosive substances.",
    ),

    Question(
      questionText: "What powers do the officers of the NIA have, as mentioned in the NIA (Amendment) Act, 2019?",
      options: [
        "Limited powers within India",
        "No powers outside India",
        "Similar powers, duties, privileges, and liabilities as police officers not only in India but also outside India",
        "Powers restricted to economic offences"],
      correctAnswerIndex: 2,
      explanation: "The NIA (Amendment) Act, 2019, grants officers of the NIA similar powers, duties, privileges, and liabilities as police officers, not only in India but also outside India.",
    ),

    Question(
      questionText: "What provision allows the central government to direct the NIA to register and investigate a case outside India?",
      options: [
        "No provision for such directions",
        "Provision limited to economic offences",
        "Provision to seek permission from the state government",
        "Provision allowing the central government to direct the NIA to register the case and investigate as if the offence occurred in India"],
      correctAnswerIndex: 3,
      explanation: "The NIA (Amendment) Act, 2019, provides the central government with the power to direct the NIA to register the case and take up investigation as if the offence has taken place in India, even if committed outside India.",
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
    home: nia(),
  ));
}

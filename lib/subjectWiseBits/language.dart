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

class language extends StatefulWidget {
  final String? userIdentifier;

  language({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//73.OFFICIAL LANGUAGE

    Question(
      questionText: "What is the official language of the Union according to the provisions in Part XVII of the Constitution?",
      options: ["English", "Devanagari", "Hindi written in Devanagari script", "Sanskrit"],
      correctAnswerIndex: 2,
      explanation: "According to Part XVII of the Constitution, Hindi written in Devanagari script is the official language of the Union.",
    ),

    Question(
      questionText: "During the first fifteen years from the commencement of the Constitution, what was the status of the English language for official purposes of the Union?",
      options: [
        "It was completely replaced by Hindi",
        "It continued to be used for all official purposes",
        "It was used only for specific purposes",
        "It was used as a regional language"
      ],
      correctAnswerIndex: 1,
      explanation: "During the first fifteen years, from 1950 to 1965, the English language continued to be used for all official purposes of the Union.",
    ),

    Question(
      questionText: "What provision did the Parliament make regarding the use of English language after the initial fifteen years?",
      options: [
        "It mandated the complete replacement of English by Hindi",
        "It prohibited the use of English for any purpose",
        "It allowed the continued use of English for specified purposes",
        "It made the use of English optional for individuals"
      ],
      correctAnswerIndex: 2,
      explanation: "The Parliament allowed the continued use of the English language, in addition to Hindi, for specified purposes even after the initial fifteen years.",
    ),

    Question(
      questionText: "What did the President appoint at the end of five years and ten years from the commencement of the Constitution?",
      options: [
        "Official Language Commission",
        "Parliamentary Language Committee",
        "English Language Committee",
        "Regional Language Commission"
      ],
      correctAnswerIndex: 0,
      explanation: "The President appointed an Official Language Commission at the end of five years and ten years from the commencement of the Constitution.",
    ),

    Question(
      questionText: "What does the Official Languages Act of 1963 provide regarding the use of English for official purposes of the Union?",
      options: [
        "It completely abolished the use of English",
        "It allowed the use of English only in certain regions",
        "It made the use of English compulsory in all cases",
        "It provided for the use of English indefinitely, in addition to Hindi"
      ],
      correctAnswerIndex: 3,
      explanation: "The Official Languages Act of 1963 allows the use of English indefinitely, in addition to Hindi, for all official purposes of the Union.",
    ),

    Question(
      questionText: "What language is considered the official language of a state until the state legislature adopts any other language?",
      options: [
        "Devanagari",
        "Sanskrit",
        "English",
        "Hindi or the languages in use in the state"
      ],
      correctAnswerIndex: 3,
      explanation: "Until a state legislature adopts any other language, Hindi or the languages in use in the state are considered the official language of that state.",
    ),

    Question(
      questionText: "What language remains the link language for communication between the Union and states or between various states?",
      options: [
        "Sanskrit",
        "English",
        "Hindi",
        "Devanagari"
      ],
      correctAnswerIndex: 1,
      explanation: "For communication between the Union and non-Hindi states, English remains the link language, unless two or more states agree to use Hindi for communication between themselves.",
    ),

    Question(
      questionText: "What provision does the Constitution make to recognize a language spoken by a substantial proportion of the population in a state?",
      options: [
        "The Parliament can decide the language",
        "The Governor can authorize the language",
        "The President can direct the recognition of the language",
        "The state legislature can prescribe the language"
      ],
      correctAnswerIndex: 2,
      explanation: "The President can direct the recognition of a language spoken by a substantial proportion of the population in a state.",
    ),

    Question(
      questionText: "What language are the proceedings in the Supreme Court and every high court to be in until Parliament provides otherwise?",
      options: [
        "Hindi",
        "Sanskrit",
        "English",
        "Devanagari"
      ],
      correctAnswerIndex: 2,
      explanation: "Until Parliament provides otherwise, the proceedings in the Supreme Court and every high court are to be in the English language.",
    ),

    Question(
      questionText: "What does the Official Languages Act of 1963 allow with respect to the use of Hindi in state high courts?",
      options: [
        "It allows Hindi to be the sole language used",
        "It allows Hindi to be used for proceedings, judgements, decrees, and orders",
        "It prohibits the use of Hindi in state high courts",
        "It allows Hindi to be used only in specific regions"
      ],
      correctAnswerIndex: 1,
      explanation: "The Official Languages Act of 1963 allows Hindi to be used for proceedings in state high courts, but judgements, decrees, and orders must continue to be in English, unless Parliament provides otherwise.",
    ),

    Question(
      questionText: "What right does every aggrieved person have regarding the language in which they can submit a representation for the redress of grievances?",
      options: [
        "Only in the official language",
        "Only in Hindi",
        "Only in the mother tongue",
        "In any of the languages used in the Union or in the state"
      ],
      correctAnswerIndex: 3,
      explanation: "Every aggrieved person has the right to submit a representation for the redress of grievances in any of the languages used in the Union or in the state, as the case may be.",
    ),

    Question(
      questionText: "What duty does the Constitution impose on the Centre regarding the Hindi language?",
      options: [
        "To make Hindi the sole official language",
        "To promote the spread and development of Hindi",
        "To make Hindi the mother tongue of all citizens",
        "To use Hindi exclusively in education"
      ],
      correctAnswerIndex: 1,
      explanation: "The Constitution imposes a duty on the Centre to promote the spread and development of the Hindi language.",
    ),

    Question(
      questionText: "How many languages are currently specified in the Eighth Schedule of the Constitution?",
      options: ["14", "18", "22", "26"],
      correctAnswerIndex: 2,
      explanation: "Currently, there are 22 languages specified in the Eighth Schedule of the Constitution.",
    ),

    Question(
      questionText: "What is one of the objectives behind specifying regional languages in the Eighth Schedule?",
      options: [
        "To restrict the use of regional languages",
        "To promote the use of English",
        "To ensure representation in the Official Language Commission",
        "To replace Hindi with regional languages"
      ],
      correctAnswerIndex: 3,
      explanation: "One of the objectives is to ensure representation in the Official Language Commission for the members of the specified languages.",
    ),

    Question(
      questionText: "What is the primary duty of the Committee of Parliament on Official Language?",
      options: [
        "To promote regional languages",
        "To review the progress of Hindi for official purposes",
        "To oversee international language awards",
        "To establish universities for classical languages"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary duty of the Committee of Parliament on Official Language is to review the progress made in the use of Hindi for the official purposes of the Union and submit recommendations.",
    ),

    Question(
      questionText: "Who is typically elected as the Chairman of the Committee of Parliament on Official Language?",
      options: [
        "The President",
        "The Secretary of the Committee",
        "The Union Home Minister",
        "A member of the Committee"
      ],
      correctAnswerIndex: 2,
      explanation: "As a convention, the Union Home Minister has been elected as Chairman of the Committee of Parliament on Official Language from time to time.",
    ),

    Question(
      questionText: "How many members constitute the Committee of Parliament on Official Language?",
      options: ["10", "20", "30", "40"],
      correctAnswerIndex: 2,
      explanation: "The Committee of Parliament on Official Language comprises 30 members of Parliament, 20 from Lok Sabha and 10 from Rajya Sabha.",
    ),

    Question(
      questionText: "What benefits are available to languages declared or notified as Classical Languages?",
      options: [
        "Access to unlimited government funding",
        "Major international awards for scholars",
        "Exclusive representation in the Parliament",
        "Automatic inclusion in the Eighth Schedule"
      ],
      correctAnswerIndex: 1,
      explanation: "Benefits include major international awards for scholars of eminence in Classical Indian Languages.",
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
    home: language(),
  ));
}

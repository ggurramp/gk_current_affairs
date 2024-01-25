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

class medievalHistory_3 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_3({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_3> createState() => _medievalHistory_3State();
}

class _medievalHistory_3State extends State<medievalHistory_3> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Who was the last ruler of the Delhi Sultanate?",
        options: ["Bahlul Lodi", "Sikander Lodi", "Alauddin Alam Shah", "Ibrahim Lodi"],
        correctAnswerIndex: 3,
        explanation: "Ibrahim Lodi was the last ruler of the Delhi Sultanate."
    ),

    Question(
        questionText: "'Srikrishna Vijaya Kavya' was composed by",
        options: ["Maladhar Basu", "Joydeva", "Chandidas", "Vidyapati"],
        correctAnswerIndex: 0,
        explanation: "The 'Srikrishna Vijaya Kavya' was composed by Maladhar Basu."
    ),

    Question(
        questionText: "Who among the following ruler was a slave in his early life?",
        options: ["Ghiyasuddin Balban", "Firozshah Tughlaq", "Alauddin", "Muhammad Bin Tughlaq"],
        correctAnswerIndex: 0,
        explanation: "Ghiyasuddin Balban was a slave in his early life."
    ),

    Question(
        questionText: "Who wrote Amuktamalyada?",
        options: ["Krishnadeb Raya", "Bir Narasingha", "Bukka", "Harihara II"],
        correctAnswerIndex: 0,
        explanation: "Amuktamalyada was written by Krishnadeb Raya."
    ),

    Question(
        questionText: "The Chinese traveler Hiuen Tsang came to India during the reign of",
        options: ["Harsavardhan", "Kulotungal", "Samudra Gupta", "Ashoka"],
        correctAnswerIndex: 0,
        explanation: "Hiuen Tsang came to India during the reign of Harsavardhan."
    ),

    Question(
        questionText: "The remains of the Vijayanagar empire can be found in",
        options: ["Hampi", "Baroda", "Bijapur", "Golconda"],
        correctAnswerIndex: 0,
        explanation: "The remains of the Vijayanagar empire can be found in Hampi."
    ),

    Question(
        questionText: "Which officer was called Bakshi during the rule of Akbar?",
        options: ["An administrative/executive officer", "Officer in charge of the military organization", "An officer in charge of town administration", "None of the above"],
        correctAnswerIndex: 1,
        explanation: "The officer in charge of the military organization was called Bakshi during the rule of Akbar."
    ),

    Question(
        questionText: "In which year did Muhammad-bin-Qasim conquer Sind?",
        options: ["718 AD", "721 AD", "712 AD", "715 AD"],
        correctAnswerIndex: 2,
        explanation: "Muhammad-bin-Qasim conquered Sind in the year 712 AD."
    ),

    Question(
        questionText: "During the reign of which sultan did Chengiz Khan attack India?",
        options: ["Ghiyasuddin Balba", "Md. Bin Tughak", "Iltutmish", "Alauddin Khalji"],
        correctAnswerIndex: 2,
        explanation: "Chengiz Khan attacked India during the reign of Iltutmish."
    ),

    Question(
        questionText: "The Muslim saint of medieval India worshipped by Hindus and Muslims was",
        options: ["Salim Chisti", "Qutubuddin", "Kabira", "Nizamuddin Aulia"],
        correctAnswerIndex: 3,
        explanation: "Nizamuddin Aulia was the Muslim saint worshipped by Hindus and Muslims."
    ),

    Question(
        questionText: "The images of Buddha were first constructed under?",
        options: ["The Gandhara school of Art", "The Amaravati school of Art", "The Mathura school of Art", "The Sarnath School of Art"],
        correctAnswerIndex: 0,
        explanation: "The images of Buddha were first constructed under the Gandhara school of Art."
    ),

    Question(
        questionText: "The Saka era was started by",
        options: ["Asoka", "Kanishka", "Bimbisara", "Bindusara"],
        correctAnswerIndex: 1,
        explanation: "The Saka era was started by Kanishka."
    ),

    Question(
        questionText: "Founder of the Delhi Sultanate was",
        options: ["Nasiruddin", "Qutubuddin", "Iltutmish", "Balban"],
        correctAnswerIndex: 1,
        explanation: "Qutubuddin was the founder of the Delhi Sultanate."
    ),

    Question(
        questionText: "Alexander stayed in India for",
        options: ["20 months", "24 months", "16 months", "19 months"],
        correctAnswerIndex: 3,
        explanation: "Alexander stayed in India for 19 months."
    ),

    Question(
        questionText: "The first Muslim incursions on Deccan occurred during the region of",
        options: ["Jalaluddin Khalji", "Firoz Tughluq", "Balban", "Raziya"],
        correctAnswerIndex: 0,
        explanation: "The first Muslim incursions on Deccan occurred during the reign of Jalaluddin Khalji."
    ),

    Question(
        questionText: "Name the Maratha leader who put forward the idea of founding the Hindu Empire before the Marathas.",
        options: ["Baji Rao I", "Baji Rao II", "Shivaji", "Balaji Viswanath"],
        correctAnswerIndex: 0,
        explanation: "Baji Rao I put forward the idea of founding the Hindu Empire before the Marathas."
    ),

    Question(
        questionText: "Who among the following did introduce the 'Dokani' currency?",
        options: ["Rajiya", "Muhammad-bin-Tughlaq", "Balban", "Iltutmis"],
        correctAnswerIndex: 1,
        explanation: "Muhammad-bin-Tughlaq introduced the 'Dokani' currency."
    ),

    Question(
        questionText: "Sri Chaitanyadeva flourished during the reign of",
        options: ["Nasrat Shah", "Nasiruddin Shah", "Hussain Shah I", "Raja Ganesh"],
        correctAnswerIndex: 2,
        explanation: "Sri Chaitanyadeva flourished during the reign of Hussain Shah I."
    ),

    Question(
        questionText: "Who wrote Kitab-ul-Rahla?",
        options: ["Hasan Nizami", "Abul Fazl", "Ibn Battuta", "Al-Beruni"],
        correctAnswerIndex: 2,
        explanation: "Ibn Battuta wrote Kitab-ul-Rahla."
    ),

    Question(
        questionText: "Who has been described by Elliot as the Akbar of the Sultanate?",
        options: ["Alauddin Khilji", "Firuz Tuglaq", "Iltutmish", "Balban"],
        correctAnswerIndex: 1,
        explanation: "Firuz Tuglaq has been described by Elliot as the Akbar of the Sultanate."
    )



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
    home: medievalHistory_3(),
  ));
}

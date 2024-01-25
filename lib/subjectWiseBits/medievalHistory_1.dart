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

class medievalHistory_1 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_1({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_1> createState() => _medievalHistory_1State();
}

class _medievalHistory_1State extends State<medievalHistory_1> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Who was given the title of Andhra - Kavita Pitamaha?",
        options: ["Srinath", "Peddan", "Sayan", "Madhav"],
        correctAnswerIndex: 1,
        explanation: "The title of Andhra - Kavita Pitamaha was given to Peddan."
    ),

    Question(
        questionText: "Who was the author of the book `Tarikh-i-Firuz Shahi'?",
        options: ["Ziauddin Barani", "Al Biruni", "Abul Fazi", "Minhaj-us-Siraj"],
        correctAnswerIndex: 0,
        explanation: "Ziauddin Barani, a Muslim political thinker of the Delhi Sultanate, authored the book `Tarikh-i-Firuz Shahi'."
    ),

    Question(
        questionText: "Sher Shah died while attacking?",
        options: ["Maswar", "Kalinjar", "Mandu", "Raisin"],
        correctAnswerIndex: 1,
        explanation: "Sher Shah died during the siege of Kalinjar fort in Bundelkhand against the Rajputs of Mahoba."
    ),

    Question(
        questionText: "When did Ikhtiyaruddin Bakhtiyar Khalij invade Bengal?",
        options: ["1202 A.D", "1206 A.D", "1194 A.D", "1199 A.D"],
        correctAnswerIndex: 0,
        explanation: "Ikhtiyaruddin Bakhtiyar Khalij invaded Bengal in the year 1202 A.D."
    ),

    Question(
        questionText: "Who was the General of Sher Shah?",
        options: ["Shayestha Khan", "Jaisingh", "Brahmajit Gaur", "Dilir Khan"],
        correctAnswerIndex: 2,
        explanation: "The general of Sher Shah was Brahmajit Gaur, who was Hindu."
    ),

    Question(
        questionText: "Who caused to build Qutub Minar in Delhi?",
        options: ["Balban", "Alauddin Khilji", "Qutbuddin Aibak", "Iltutmish"],
        correctAnswerIndex: 2,
        explanation: "Qutub Minar was built by Qutbuddin Aibak in memory of a Sufi saint."
    ),

    Question(
        questionText: "Name the Sultan who introduced Rationing System in India",
        options: ["Muhammad bin Tughlaq", "Firuz Tughlaq", "Ghiyasuddin Balban", "Alauddin Khalji"],
        correctAnswerIndex: 3,
        explanation: "Alauddin Khalji introduced the Rationing System in India."
    ),

    Question(
        questionText: "Sakabda was started in",
        options: ["58 A.D", "327 A.D", "78 B.C", "78 A.D"],
        correctAnswerIndex: 3,
        explanation: "Sakabda was started by Kanishka in 78 A.D."
    ),

    Question(
        questionText: "The battle of Tarain was fought between Muhammad Ghuri and",
        options: ["Prithviraj Chauhan", "Rama Hambirdeva", "Rana Sanga", "Rana Pratap"],
        correctAnswerIndex: 0,
        explanation: "The Battle of Tarain was fought between Muhammad Ghuri and Prithviraj Chauhan."
    ),

    Question(
        questionText: "With whom of the following did Shivaji sign the Treaty of Purandhar in 1665 A.D",
        options: ["Jaisingh", "Prince Muazzam", "Shaista Khan", "Afzal Khan"],
        correctAnswerIndex: 0,
        explanation: "Shivaji signed the Treaty of Purandhar with Jaisingh in 1665 A.D."
    ),

    Question(
        questionText: "The Delhi Sultan who transferred the capital from Delhi to Daulatabad (Devagiri) was",
        options: ["Muhammad-bin Tughlaq", "Firoz Shah Tughlaq", "Qutbuddin Aibak", "Iltutmish"],
        correctAnswerIndex: 0,
        explanation: "Muhammad-bin Tughlaq transferred the capital from Delhi to Daulatabad (Devagiri)."
    ),

    Question(
        questionText: "Abdur Razzaq visited the Kingdom of",
        options: ["Shamsuddin Iliyas Shah", "Devaraya II", "Muhammad-bin-Tughlaq", "Allauddin Khalji"],
        correctAnswerIndex: 1,
        explanation: "Abdur Razzaq visited the Kingdom of Devaraya II."
    ),

    Question(
        questionText: "The meaning of the word Mansab is",
        options: ["Possession of army personnel", "Land Revenue", "Rank", "Proprietorship of land"],
        correctAnswerIndex: 2,
        explanation: "In the Mansabdari system introduced by Akbar, Mansab refers to Rank."
    ),

    Question(
        questionText: "In which year was the Battle of Talikota fought?",
        options: ["1571", "1581", "1556", "1565"],
        correctAnswerIndex: 3,
        explanation: "The Battle of Talikota was fought in the year 1565."
    ),

    Question(
        questionText: "Which Sultan of Delhi brought one Asokan Pillar to Delhi?",
        options: ["Md. Bin Tughlaq", "Firuz Shah Tughlaq", "Iltutmish", "Alauddin Khilji"],
        correctAnswerIndex: 1,
        explanation: "Firuz Shah Tughlaq brought one Asokan Pillar to Delhi."
    ),

    Question(
        questionText: "Which Magadha ruler was known as 'Seniya'?",
        options: ["Mahapadma Nanda", "Chandragupta Maurya", "Bimbisara", "Ajatashatru"],
        correctAnswerIndex: 2,
        explanation: "The Magadha ruler known as 'Seniya' was Bimbisara."
    ),

    Question(
        questionText: "Which of the following Delhi Sultans had set up a separate department of Slaves?",
        options: ["Muhammad Bin Tughlaq", "Firuz Shah Tughlaq", "Iltutmish", "Balban"],
        correctAnswerIndex: 1,
        explanation: "Firuz Shah Tughlaq set up a separate department of Slaves."
    ),

    Question(
        questionText: "Name the Bengali poet who was conferred with the title Gunaraj Khan in the Sultanate period",
        options: ["Maladhar Basu", "Chandidas", "Jnanadas", "Govindadas"],
        correctAnswerIndex: 0,
        explanation: "Maladhar Basu was conferred with the title Gunaraj Khan in the Sultanate period."
    ),

    Question(
        questionText: "Gandhara Art flourished during",
        options: ["Kushana Period", "Gupta Period", "Maurya Period", "Sunga Period"],
        correctAnswerIndex: 0,
        explanation: "Gandhara Art flourished during the Kushana Period."
    ),

    Question(
        questionText: "'Rehala' was authored by",
        options: ["Barani", "Abul Fazal", "Al-Beruni", "Ibn-Battuta"],
        correctAnswerIndex: 3,
        explanation: "The book 'Rehala' was authored by Ibn-Battuta."
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
    home: medievalHistory_1(),
  ));
}

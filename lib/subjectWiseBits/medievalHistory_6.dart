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

class medievalHistory_6 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_6({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_6> createState() => _medievalHistory_6State();
}

class _medievalHistory_6State extends State<medievalHistory_6> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Which among the following sultans of the Slave dynasty was not a slave?",
        options: ["Raziya", "Balban", "Qutb-ud-din Aibak", "Iltutmish"],
        correctAnswerIndex: 0,
        explanation: "Raziya was not a slave."
    ),

    Question(
        questionText: "Who introduced Qabuliyat and Patta?",
        options: ["Akbar", "Shahjahan", "Babar", "Sher Shah"],
        correctAnswerIndex: 3,
        explanation: "Sher Shah Suri introduced Qabuliyat and Patta as instruments of settlement."
    ),

    Question(
        questionText: "During whose reign did the East India Company establish their first factory in India?",
        options: ["Aurangzeb", "Bahadur Shah I", "Jahangir", "Shahjahan"],
        correctAnswerIndex: 2,
        explanation: "The East India Company established their first factory in India during the reign of Jahangir."
    ),

    Question(
        questionText: "Who wrote 'Babarnama'?",
        options: ["Afif", "Babar", "Abul Fazl", "Firdousi"],
        correctAnswerIndex: 1,
        explanation: "'Babarnama' was written by Babar."
    ),

    Question(
        questionText: "During whose reign did the East India Company establish their first factory in India?",
        options: ["Aurangzeb", "Bahadur Shah I", "Jahangir", "Shahjahan"],
        correctAnswerIndex: 2,
        explanation: "The East India Company established their first factory in India during the reign of Jahangir."
    ),

    Question(
        questionText: "Who wrote 'Akbarnama'?",
        options: ["Shaik Mubarak", "Tansen", "Abul Fazl", "Faizi"],
        correctAnswerIndex: 2,
        explanation: "'Akbarnama' was written by Abul Fazl."
    ),

    Question(
        questionText: "Who invited Babur to invade India?",
        options: ["Daulat Khan Lodi", "Sher Khan", "Ibrahim Lodi", "Sikandar Lodi"],
        correctAnswerIndex: 0,
        explanation: "Babur was invited to invade India by Daulat Khan Lodi."
    ),

    Question(
        questionText: "Who was the Sikh Guru slaughtered by Aurangzeb?",
        options: ["Teg Bahadur", "Guru Nanak", "Govind Singh", "Ramdas"],
        correctAnswerIndex: 0,
        explanation: "Aurangzeb slaughtered Sikh Guru Teg Bahadur."
    ),

    Question(
        questionText: "During whose rule was the Zabt system of revenue settlement introduced?",
        options: ["Akbar", "Shah", "Ala-ud-din Khilji", "Sher Shah"],
        correctAnswerIndex: 0,
        explanation: "The Zabt system of revenue settlement was introduced during Akbar's rule."
    ),

    Question(
        questionText: "Who conquered territory in India and founded an empire in the name of his ancestors?",
        options: ["Babur", "Sher Shah", "Humayun", "None of them"],
        correctAnswerIndex: 0,
        explanation: "Babur conquered territory in India and founded an empire in the name of his ancestors."
    ),

    Question(
        questionText: "Who introduced Din-i-Ilahi?",
        options: ["Kabir", "Akbar", "Firuz Shah Tughlaq", "Muhammad Bin Tughlaq"],
        correctAnswerIndex: 1,
        explanation: "Din-i-Ilahi was introduced by Akbar."
    ),

    Question(
        questionText: "The First Battle of Panipat took place in",
        options: ["1510", "1526", "1500", "1510"],
        correctAnswerIndex: 1,
        explanation: "The First Battle of Panipat took place in 1526."
    ),

    Question(
        questionText: "Who invited Babur to invade India?",
        options: ["Daulat Khan Lodi", "Sher Khan", "Ibrahim Lodi", "Sikandar Lodi"],
        correctAnswerIndex: 0,
        explanation: "Babur was invited to invade India by Daulat Khan Lodi."
    ),

    Question(
        questionText: "Who introduced the Zabt system?",
        options: ["Akbar", "Species", "Babar", "Humayun"],
        correctAnswerIndex: 0,
        explanation: "The Zabt system was introduced by Akbar."
    ),

    Question(
        questionText: "Who among the following visited Jahangir's Court?",
        options: ["Sir Thomas Roe", "Athanasius Nikitin", "Niccolo Conti", "Francois Bernier"],
        correctAnswerIndex: 0,
        explanation: "Sir Thomas Roe visited Jahangir's Court."
    ),

    Question(
        questionText: "Who wrote 'Humayunnama'?",
        options: ["Badaoni", "Gulbadan Begum", "Abul Fazl", "Faizi"],
        correctAnswerIndex: 1,
        explanation: "'Humayunnama' was written by Gulbadan Begum."
    ),

    Question(
        questionText: "The Treaty of Amritsar signed by the English with Ranjit Singh in the year",
        options: ["1811 A.D.", "1813 A.D", "1807 A.D.", "1809 A.D."],
        correctAnswerIndex: 3,
        explanation: "The Treaty of Amritsar was signed in 1809 A.D."
    ),

    Question(
        questionText: "What is 'Ibadat Khana'?",
        options: ["A hall for religious discourse", "A mosque", "A book", "A new religion"],
        correctAnswerIndex: 0,
        explanation: "'Ibadat Khana' was a hall for religious discourse."
    ),

    Question(
        questionText: "Who among the Maratha Peshwas followed the idea of 'Hindu Pada-padshahi'?",
        options: ["Narayan Rao", "Madhab Rao", "Baji Rao - I", "Balaji Viswanath"],
        correctAnswerIndex: 2,
        explanation: "Baji Rao - I among the Maratha Peshwas followed the idea of 'Hindu Pada-padshahi.'"
    ),

    Question(
        questionText: "Rana Pratap belonged to the Rajput dynasty of",
        options: ["Solanki", "Paramara", "Kachwa", "Sisodiya"],
        correctAnswerIndex: 3,
        explanation: "Rana Pratap belonged to the Rajput dynasty of Sisodiya."
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
    home: medievalHistory_6(),
  ));
}

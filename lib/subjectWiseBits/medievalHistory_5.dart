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

class medievalHistory_5 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_5({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_5> createState() => _medievalHistory_5State();
}

class _medievalHistory_5State extends State<medievalHistory_5> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
        questionText: "The East Company secured the Diwani from",
        options: ["Bahadur Shah I", "Shah Alam II", "Suja-Ud-Daula", "Aurangzeb"],
        correctAnswerIndex: 1,
        explanation: "The East India Company secured the Diwani from Shah Alam II."
    ),

    Question(
        questionText: "Who introduced the zabti system of land revenue during the reign of Akbar?",
        options: ["Raja Biharimal", "Raja Bhagawandas", "Raja Mansingh", "Raja Todarmal"],
        correctAnswerIndex: 3,
        explanation: "The zabti system of land revenue was introduced by Raja Todarmal during the reign of Akbar."
    ),

    Question(
        questionText: "What was the 'Dam'?",
        options: ["Copper coin introduced by Shah Jahan", "Copper coin introduced by Aurangzeb", "Copper coin introduced by Sher Shah", "Copper coin introduced by Akbar"],
        correctAnswerIndex: 2,
        explanation: "The 'Dam' was a copper coin introduced by Sher Shah."
    ),

    Question(
        questionText: "Who was the Mughal Emperor to have lifted the Zijya on Hindus?",
        options: ["Jahangir", "Shah Jehan", "Babar", "Akbar"],
        correctAnswerIndex: 3,
        explanation: "Akbar was the Mughal Emperor who lifted the Zijya on Hindus."
    ),

    Question(
        questionText: "Which of the following Indian states that Akbar could not annex?",
        options: ["Bihar", "Assam", "Kashmir", "Bengal"],
        correctAnswerIndex: 1,
        explanation: "Akbar could not annex Assam."
    ),

    Question(
        questionText: "Who was Babur's main adversary in the battle of Khanwa?",
        options: ["Rana Sanga", "Hemu", "Mahmud Lodi", "None of them"],
        correctAnswerIndex: 0,
        explanation: "Rana Sanga was Babur's main adversary in the battle of Khanwa."
    ),

    Question(
        questionText: "Which of the following gave an account of the Balban period?",
        options: ["Tarikh-i-Firoz Shahi", "Shahnama", "Tahqiq-i-Hind", "None of the above"],
        correctAnswerIndex: 0,
        explanation: "The Tarikh-i-Firoz Shahi gave an account of the Balban period."
    ),

    Question(
        questionText: "During whose rule was the Zabt system of revenue settlement introduced?",
        options: ["Akbar", "Shah", "Ala-Ud-din Khilji", "Sher Shah"],
        correctAnswerIndex: 0,
        explanation: "The Zabt system of revenue settlement was introduced during Akbar's rule."
    ),

    Question(
        questionText: "What is Ibadat Khana at Fatehpur Sikri?",
        options: ["A house for eating", "A house for religious discourses of all religions", "A magnificent building for residence", "None of the above"],
        correctAnswerIndex: 1,
        explanation: "Ibadat Khana at Fatehpur Sikri was a house for religious discourses of all religions."
    ),

    Question(
        questionText: "In which year was the second battle of Panipat fought?",
        options: ["1757 AD", "1556 AD", "1605 AD", "1707 AD"],
        correctAnswerIndex: 1,
        explanation: "The second battle of Panipat was fought in 1556 AD."
    ),

    Question(
        questionText: "Which Indian emperor was called Zinda Pir?",
        options: ["Firuz Tughlaq", "Sher Shah", "Aurangzeb", "Akbar"],
        correctAnswerIndex: 2,
        explanation: "Aurangzeb was called Zinda Pir."
    ),

    Question(
        questionText: "Which Mughal Emperor transferred the Mughal Capital from Agra to Delhi?",
        options: ["Shahjahan", "Bahadur Shah", "Jahangir", "Aurangzeb"],
        correctAnswerIndex: 0,
        explanation: "Shahjahan transferred the Mughal Capital from Agra to Delhi."
    ),

    Question(
        questionText: "The opponent of Akbar at the Second Battle of Panipat was",
        options: ["Jaichand", "Daulat Khan", "Abdul Lohani", "Hemu"],
        correctAnswerIndex: 3,
        explanation: "The opponent of Akbar at the Second Battle of Panipat was Hemu."
    ),

    Question(
        questionText: "The ruler of which of the following states entered into a matrimonial alliance with Akbar?",
        options: ["Marwar", "Mewar", "Jaipur", "Ranthambore"],
        correctAnswerIndex: 2,
        explanation: "The ruler of Jaipur entered into a matrimonial alliance with Akbar."
    ),

    Question(
        questionText: "What was 'Taccavi'?",
        options: ["A tax on the Hindus", "Barren land", "Loans to the Peasants", "A fertile category of Lahti"],
        correctAnswerIndex: 2,
        explanation: "'Taccavi' was loans provided to the peasants."
    ),

    Question(
        questionText: "Who was defeated at Kanauj in the hands of Sher Shah?",
        options: ["Humayun", "Gobind Singh", "Babur", "Akbar"],
        correctAnswerIndex: 0,
        explanation: "Humayun was defeated at Kanauj in the hands of Sher Shah."
    ),

    Question(
        questionText: "The Gurmukhi script was introduced by",
        options: ["Guru Angad", "Guru Nanak", "Guru Amardas", "Guru Ramdas"],
        correctAnswerIndex: 0,
        explanation: "The Gurmukhi script was introduced by Guru Angad."
    ),

    Question(
        questionText: "Which Mughal emperor granted Diwani to the English East India Company?",
        options: ["Farah Seyar", "Zehnder", "Bahadur Shah II", "Shah Alam II"],
        correctAnswerIndex: 3,
        explanation: "Shah Alam II granted Diwani to the English East India Company."
    ),

    Question(
        questionText: "Who was Babur's main adversary in the battle of Khanwa?",
        options: ["Rana Sanga", "Hemu", "Mahmud Lodi", "None of them"],
        correctAnswerIndex: 0,
        explanation: "Rana Sanga was Babur's main adversary in the battle of Khanwa."
    ),

    Question(
        questionText: "Which Mughal Emperor transferred the Mughal Capital from Agra to Delhi?",
        options: ["Shahjahan", "Bahadur Shah", "Jahangir", "Aurangzeb"],
        correctAnswerIndex: 0,
        explanation: "Shahjahan transferred the Mughal Capital from Agra to Delhi."
    ),

    Question(
        questionText: "Which among the following sultans of the Slave dynasty was not a slave?",
        options: ["Raziya", "Balban", "Qutb-ud-din Aibak", "Iltutmish"],
        correctAnswerIndex: 0,
        explanation: "Raziya was not a slave."
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
    home: medievalHistory_5(),
  ));
}

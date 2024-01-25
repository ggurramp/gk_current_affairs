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

class medievalHistory_2 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_2({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_2> createState() => _medievalHistory_2State();
}

class _medievalHistory_2State extends State<medievalHistory_2> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "The Tuluva dynasty was a ruling house of the kingdom of",
        options: ["Bahamoni", "Vijaynagar", "Bijapur", "Bidar"],
        correctAnswerIndex: 1,
        explanation: "The Tuluva dynasty was a ruling house of the Vijaynagar kingdom."
    ),

    Question(
        questionText: "Charpak was the name of a",
        options: ["Science Scholar", "Wrestler", "Religious School of thoughts", "Doctor"],
        correctAnswerIndex: 2,
        explanation: "Charpak was the name of a Religious School of thoughts."
    ),

    Question(
        questionText: "Who founded Independent Sultanate of Bengal?",
        options: ["Hussain Shah", "Alivardi Khan", "Ilias Shah", "Murshid Quli Khan"],
        correctAnswerIndex: 2,
        explanation: "Shamsuddin Ilyas Shah founded the Independent Sultanate of Bengal."
    ),

    Question(
        questionText: "What did Iqta mean during the Sultanate period?",
        options: ["The grant of land revenue from a village or territory", "An important official", "A form of Salutation", "None of the above"],
        correctAnswerIndex: 0,
        explanation: "During the Sultanate period, Iqta meant the grant of land revenue from a village or territory."
    ),

    Question(
        questionText: "Identify the foreign people who did not invade India in the ancient period",
        options: ["The Bactrian Greeks", "Scythians", "The Slaves", "The Macedonian"],
        correctAnswerIndex: 2,
        explanation: "The Slaves did not invade India in the ancient period."
    ),

    Question(
        questionText: "During the reign of which ruler Ibn Batuta came to India?",
        options: ["Iltutmish", "Alauddin Khilji", "Akbar", "Muhammad Bin Tughlaq"],
        correctAnswerIndex: 3,
        explanation: "Ibn Batuta came to India during the reign of Muhammad Bin Tughlaq."
    ),

    Question(
        questionText: "The founder of the Bahamani kingdom was",
        options: ["Alauddin Bahaman Shah", "Tajuddin Firuj Shah", "Alauddin Mujahid Shah", "Ahmad Shah"],
        correctAnswerIndex: 0,
        explanation: "The founder of the Bahamani kingdom was Alauddin Bahaman Shah."
    ),

    Question(
        questionText: "The Bahmani Kingdom and Vijaynagar Empire clashed frequently over the territory of",
        options: ["Malabar", "Raichur Doab", "Madurai", "Warangal"],
        correctAnswerIndex: 1,
        explanation: "The Bahmani Kingdom and Vijaynagar Empire clashed frequently over the territory of Raichur Doab."
    ),

    Question(
        questionText: "Name one famous poet of the Delhi Sultanate who was adorned with the title the Parrot of Hindustan.",
        options: ["Alberuni", "Amir Khasru", "Ziauddin Barani", "Utbi"],
        correctAnswerIndex: 1,
        explanation: "Amir Khasru, a famous poet of the Delhi Sultanate, was adorned with the title the Parrot of Hindustan."
    ),

    Question(
        questionText: "During the reign of which Sultan Chenghiz Khan invaded India ?",
        options: ["Ghiyasuddin Balban", "Muhammad Bin Tughlaq", "Iltutmish", "Alauddin Khilji"],
        correctAnswerIndex: 2,
        explanation: "During the reign of Iltutmish, Chenghiz Khan invaded India."
    ),

    Question(
        questionText: "Rajtarangini was written by",
        options: ["Banabhatta", "Patanjali", "Kalhan", "Asvaghosa"],
        correctAnswerIndex: 2,
        explanation: "Rajtarangini was written by Kalhan."
    ),

    Question(
        questionText: "When did the Mathura School of Art flourish?",
        options: ["Saka period", "Kushana period", "Sunga period", "Satavahana period"],
        correctAnswerIndex: 1,
        explanation: "The Mathura School of Art flourished during the Kushana period."
    ),

    Question(
        questionText: "Narshingha Saluva was the ruler of",
        options: ["Konkan", "Barisa", "Chandragiri", "Udaynagar"],
        correctAnswerIndex: 2,
        explanation: "Narshingha Saluva was the ruler of Chandragiri."
    ),

    Question(
        questionText: "Who was Nasiruddin Chirag?",
        options: ["A minister of Giasuddin Balban", "A military officer in Alauddin Khilji's army", "A Sultan of the Khilji dynasty", "A Sufi Saint"],
        correctAnswerIndex: 3,
        explanation: "Nasiruddin Chirag was a Sufi Saint."
    ),

    Question(
        questionText: "Ashtadiggajas' were patronised by",
        options: ["Vira Narasimha", "Krishna Deva Raya", "Deva Raya I", "Deva Raya II"],
        correctAnswerIndex: 1,
        explanation: "The 'Ashtadiggajas' were patronised by Krishna Deva Raya."
    ),

    Question(
        questionText: "Who introduced the Iqta system?",
        options: ["Illtutmish", "Ghiyasuddin Balban", "Muhammad Ghauri", "Qutubude:n Aibak"],
        correctAnswerIndex: 0,
        explanation: "Illtutmish introduced the Iqta system."
    ),

    Question(
        questionText: "Krishnadeva Raya wrote his famous work Amuktyamalyada in",
        options: ["Tamil", "Malayalam", "Telegu", "Kannada"],
        correctAnswerIndex: 2,
        explanation: "Krishnadeva Raya wrote his famous work Amuktyamalyada in Telegu."
    ),

    Question(
        questionText: "The Mughal emperor who issued a Firman to the English East India Company in 1717 to trade freely in Bengal was",
        options: ["Farrukhshiyar", "Jahandar Shah", "Bahadur Shah I", "Shah Alam I"],
        correctAnswerIndex: 0,
        explanation: "Farrukhshiyar issued a Firman to the English East India Company in 1717 to trade freely in Bengal."
    ),

    Question(
        questionText: "Who organized 'The Council of Barabhais'?",
        options: ["Baji Rao", "Mahadji Scindia", "Nana Phadnavis", "Madhav Rao Narayan"],
        correctAnswerIndex: 2,
        explanation: "Nana Phadnavis organized 'The Council of Barabhais'."
    ),

    Question(
        questionText: "Who was the Muslim sultan regarded by Hindus as 'Jagadguru'?",
        options: ["Jainal Abedin", "Hussain Shah", "Akbar", "Ibrahim Adil Shah II"],
        correctAnswerIndex: 3,
        explanation: "Ibrahim Adil Shah II was the Muslim sultan regarded by Hindus as 'Jagadguru'."
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
    home: medievalHistory_2(),
  ));
}

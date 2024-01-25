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

class medievalHistory_7 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_7({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_7> createState() => _medievalHistory_7State();
}

class _medievalHistory_7State extends State<medievalHistory_7> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
        questionText: "Where is the tomb of Jahangir situated?",
        options: ["Lahore", "Srinagar", "Agra", "Delhi"],
        correctAnswerIndex: 0,
        explanation: "The tomb of Jahangir is situated in Lahore."
    ),

    Question(
        questionText: "To which place did Murshid Quli Khan transfer his capital from Dacca?",
        options: ["Gour", "Pandua", "Monghyr", "Murshidabad"],
        correctAnswerIndex: 3,
        explanation: "Murshid Quli Khan transferred his capital from Dacca to Murshidabad."
    ),

    Question(
        questionText: "When did Siraj-Ud-Daullah ascend the throne?",
        options: ["1756", "1757", "1707", "1739"],
        correctAnswerIndex: 0,
        explanation: "Siraj-Ud-Daullah ascended the throne in 1756."
    ),

    Question(
        questionText: "Who among the following became a member of the 'Din-i-Ilahi'?",
        options: ["Tansen", "Raja Birbal", "Raja Man Singh", "Todarmal"],
        correctAnswerIndex: 1,
        explanation: "Raja Birbal became a member of the 'Din-i-Ilahi'."
    ),

    Question(
        questionText: "Who among the Indian rulers said this 'Sab Lai Ho Jayega'?",
        options: ["Haider Ali", "Tipu Sultan", "Ranjit Singh", "Alivardi Khan"],
        correctAnswerIndex: 2,
        explanation: "Ranjit Singh said 'Sab Lai Ho Jayega'."
    ),

    Question(
        questionText: "What is Adi Granth?",
        options: ["A book that guided the rulers of medieval India", "A book that gave the fundamental codes of human conduct", "A religious book of the Sikhs", "None of the above"],
        correctAnswerIndex: 2,
        explanation: "Adi Granth is a religious book of the Sikhs."
    ),

    Question(
        questionText: "What is 'Dastak'?",
        options: ["Permission to trade without tax", "Donation by the Mughal emperors", "A book by Clive", "A free Pass"],
        correctAnswerIndex: 0,
        explanation: "'Dastak' means permission to trade without tax."
    ),

    Question(
        questionText: "Identify the Mughal painter not mentioned by Abul Fazl.",
        options: ["Mansur", "Mukund", "Farooq", "Mushkin"],
        correctAnswerIndex: 0,
        explanation: "Mansur is the Mughal painter not mentioned by Abul Fazl."
    ),

    Question(
        questionText: "The English set up their first factory on Indian soil in 1613 at",
        options: ["Calicut", "Madras", "Goa", "Surat"],
        correctAnswerIndex: 3,
        explanation: "The English set up their first factory on Indian soil in 1613 at Surat."
    ),

    Question(
        questionText: "The Diwani of Bengal was granted to Clive in the year",
        options: ["1772 A.D.", "1784 A.D.", "1757 A.D.", "1765 A.D."],
        correctAnswerIndex: 3,
        explanation: "The Diwani of Bengal was granted to Clive in the year 1765 A.D."
    ),

    Question(
        questionText: "Which Mughal emperor subdued the Portuguese in Bengal?",
        options: ["Shah Jahan", "Aurangzeb", "Akbar", "Jahangir"],
        correctAnswerIndex: 0,
        explanation: "Shah Jahan subdued the Portuguese in Bengal."
    ),

    Question(
        questionText: "Razmnama was a Persian translation of",
        options: ["Geeta", "Mahabharata", "Upanishad", "Ramayana"],
        correctAnswerIndex: 1,
        explanation: "Razmnama was a Persian translation of Mahabharata."
    ),

    Question(
        questionText: "Who converted Sikhs into a martial race?",
        options: ["Hargovind", "Teg Bahadur", "Arjun Dev", "Gobind Singh"],
        correctAnswerIndex: 3,
        explanation: "Gobind Singh converted Sikhs into a martial race."
    ),

    Question(
        questionText: "'Sulh-i-Kul' was a policy introduced by",
        options: ["Jahandar Shah", "Mohammad Shah", "Akbar", "Aurangzeb"],
        correctAnswerIndex: 2,
        explanation: "'Sulh-i-Kul' was a policy introduced by Akbar."
    ),

    Question(
        questionText: "Who was the last independent Nawab of Bengal?",
        options: ["Mir Kasim", "Najm-ud-Daulah", "Siraj-ud-Daulah", "Mir Jafar"],
        correctAnswerIndex: 2,
        explanation: "Siraj-ud-Daulah was the last independent Nawab of Bengal."
    ),

    Question(
        questionText: "Tipu's final defeat came at the hands of",
        options: ["Lord Dalhousie", "John Shore", "Lord Wellesley", "Lord Cornwallis"],
        correctAnswerIndex: 2,
        explanation: "Tipu's final defeat came at the hands of Lord Wellesley."
    ),

    Question(
        questionText: "The official language of the Mughal empire was",
        options: ["Persian and the local language", "Turkish", "Urdu", "Persian"],
        correctAnswerIndex: 3,
        explanation: "The official language of the Mughal empire was Persian."
    ),

    Question(
        questionText: "The center of Portuguese power in India was",
        options: ["Bijapur", "Goa", "Cochin", "Calicut"],
        correctAnswerIndex: 1,
        explanation: "The center of Portuguese power in India was Goa."
    ),

    Question(
        questionText: "Sufism reached India in the",
        options: ["Fourteenth-century", "Thirteenth-century", "Eleventh-century", "Twelfth-century"],
        correctAnswerIndex: 3,
        explanation: "Sufism reached India in the Twelfth-century."
    ),

    Question(
        questionText: "In which year was the Treaty of Bassein signed?",
        options: ["1802", "1805", "1765", "1792"],
        correctAnswerIndex: 0,
        explanation: "The Treaty of Bassein was signed in 1802."
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
    home: medievalHistory_7(),
  ));
}

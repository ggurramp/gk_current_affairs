import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async package

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

class  statesAndGovernorsScreen extends StatefulWidget {
  final String? userIdentifier;

  statesAndGovernorsScreen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State< statesAndGovernorsScreen> createState() => _statesAndGovernorsScreenState();
}

class _statesAndGovernorsScreenState extends State< statesAndGovernorsScreen> {
int? _selectedAnswerIndex;
int _currentQuestionIndex = 0;
List<int?> _userAnswers = List.filled(50, null); // Initialize with the number of questions

List<Question> _questions = [
  Question(
    questionText: "Who is the Lieutenant Governor of Andaman and Nicobar Islands?",
    options: ["Admiral D.K. Joshi", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Admiral D.K. Joshi is the Lieutenant Governor of Andaman and Nicobar Islands.",
  ),
  Question(
    questionText: "Who is the Administrator of Chandigarh?",
    options: ["Admiral D.K. Joshi", "Shri Banwarilal Purohit", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Shri Banwarilal Purohit is the Administrator of Chandigarh.",
  ),
  Question(
    questionText: "Who is the Administrator of Dadra and Nagar Haveli and Daman and Diu?",
    options: ["Admiral D.K. Joshi", "Shri Banwarilal Purohit", "Shri Praful Patel", "Arif Mohammed Khan"],
    correctAnswerIndex: 2,
    explanation: "Shri Praful Patel is the Administrator of Dadra and Nagar Haveli and Daman and Diu.",
  ),
  Question(
    questionText: "Who is the Lieutenant Governor of Delhi?",
    options: ["Admiral D.K. Joshi", "Shri Banwarilal Purohit", "Shri Praful Patel", "Shri Vinai Kumar Saxena"],
    correctAnswerIndex: 3,
    explanation: "Shri Vinai Kumar Saxena is the Lieutenant Governor of Delhi.",
  ),
  Question(
    questionText: "Who is the Lieutenant Governor of Jammu and Kashmir?",
    options: ["Admiral D.K. Joshi", "Shri Manoj Sinha ", "Shri Praful Patel", "Shri Manoj Sinha"],
    correctAnswerIndex: 1,
    explanation: "Shri Manoj Sinha is the Lieutenant Governor of Jammu and Kashmir.",
  ),
  Question(
    questionText: "Who is the Administrator of Lakshadweep?",
    options: ["Admiral D.K. Joshi", "Shri Praful Patel (Administrator)", "Shri Praful Patel", "Shri Arif Mohammed Khan"],
    correctAnswerIndex: 1,
    explanation: "Shri Praful Patel is the Administrator of Lakshadweep.",
  ),
  Question(
    questionText: "Who is the Lieutenant Governor of Ladakh?",
    options: ["Admiral D.K. Joshi", "Brig. (Dr.) Shri B.D. Mishra (Retd.) (Lieutenant Governor)", "Shri Praful Patel", "Brig. (Dr.) Shri B.D. Mishra (Retd.)"],
    correctAnswerIndex: 1,
    explanation: "Brig. (Dr.) Shri B.D. Mishra (Retd.) is the Lieutenant Governor of Ladakh.",
  ),
  Question(
    questionText: "Who is the Lieutenant Governor of Puducherry?",
    options: ["	Dr. Tamilisai Soundararajan (Addl. Charge) (Lieutenant Governor)", "Shri Banwarilal Purohit", "Shri Praful Patel", "Dr. Tamilisai Soundararajan"],
    correctAnswerIndex: 0,
    explanation: "Dr. Tamilisai Soundararajan is the Lieutenant Governor of Puducherry.",
  ),
  Question(
    questionText: "Who is the governor of Andhra Pradesh?",
    options: ["S. Abdul Nazeer", "Tamilisai Soundararajan", "R. N. Ravi", "Mangubhai Patel"],
    correctAnswerIndex: 0,
    explanation: "S. Abdul Nazeer is the governor of Andhra Pradesh.",
  ),
  Question(
    questionText: "Who is the governor of Arunachal Pradesh?",
    options: ["S. Abdul Nazeer", "Tamilisai Soundararajan", "R. N. Ravi", "Mangubhai Patel"],
    correctAnswerIndex: 1,
    explanation: "Lt. General Kaiwalya Trivikram Parnaik, PVSM, UYSM, YSM (Retired) is the governor of Arunachal Pradesh.",
  ),
  Question(
    questionText: "Who is the governor of Assam?",
    options: ["S. Abdul Nazeer", "Tamilisai Soundararajan", "Jagdish Mukhi", "Mangubhai Patel"],
    correctAnswerIndex: 2,
    explanation: "Gulab Chand Kataria is the governor of Assam.",
  ),
  Question(
    questionText: "Who is the governor of Bihar?",
    options: ["S. Abdul Nazeer", "Phagu Chauhan", "Mangubhai Patel", "R. N. Ravi"],
    correctAnswerIndex: 1,
    explanation: "Rajendra Vishwanath Arlekar is the governor of Bihar.",
  ),
  Question(
    questionText: "Who is the governor of Chhattisgarh?",
    options: ["Anusuiya Uikey", "Tamilisai Soundararajan", "Mangubhai Patel", "R. N. Ravi"],
    correctAnswerIndex: 0,
    explanation: "Anusuiya Uikey is the governor of Chhattisgarh.",
  ),
  Question(
    questionText: "Who is the governor of Goa?",
    options: ["Anusuiya Uikey", "P. S. Sreedharan Pillai", "Mangubhai Patel", "R. N. Ravi"],
    correctAnswerIndex: 1,
    explanation: "P. S. Sreedharan Pillai is the governor of Goa.",
  ),
  Question(
    questionText: "Who is the governor of Gujarat?",
    options: ["Anusuiya Uikey", "Tamilisai Soundararajan", "Acharya Dev Vrat", "R. N. Ravi"],
    correctAnswerIndex: 2,
    explanation: "Acharya Dev Vrat is the governor of Gujarat.",
  ),
  Question(
    questionText: "Who is the governor of Haryana?",
    options: ["Bandaru Dattatreya", "Rajendra Vishwanath Arlekar", "Mangubhai Patel", "R. N. Ravi"],
    correctAnswerIndex: 0,
    explanation: "Bandaru Dattatreya is the governor of Haryana.",
  ),
  Question(
    questionText: "Who is the governor of Himachal Pradesh?",
    options: ["Bandaru Dattatreya", "Rajendra Vishwanath Arlekar", "Mangubhai Patel", "R. N. Ravi"],
    correctAnswerIndex: 1,
    explanation: "Rajendra Vishwanath Arlekar is the governor of Himachal Pradesh.",
  ),
  Question(
    questionText: "Who is the governor of Jharkhand?",
    options: ["Bandaru Dattatreya", "Rajendra Vishwanath Arlekar", "Mangubhai Patel", "C. P. Radhakrishnan"],
    correctAnswerIndex: 3,
    explanation: "C. P. Radhakrishnan is the governor of Jharkhand.",
  ),
  Question(
    questionText: "Who is the governor of Karnataka?",
    options: ["Thawar Chand Gehlot", "Rajendra Vishwanath Arlekar", "Mangubhai Patel", "C. P. Radhakrishnan"],
    correctAnswerIndex: 0,
    explanation: "Thawar Chand Gehlot is the governor of Karnataka.",
  ),
  Question(
    questionText: "Who is the governor of Kerala?",
    options: ["Thawar Chand Gehlot", "Arif Mohammed Khan", "Mangubhai Patel", "C. P. Radhakrishnan"],
    correctAnswerIndex: 1,
    explanation: "Arif Mohammed Khan is the governor of Kerala.",
  ),
  Question(
    questionText: "Who is the governor of Madhya Pradesh?",
    options: ["Mangubhai Patel", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Mangubhai Patel is the governor of Madhya Pradesh.",
  ),
  Question(
    questionText: "Who is the governor of Maharashtra?",
    options: ["Mangubhai Patel", "R. N. Ravi", "Thawar Chand Gehlot", "Ramesh Bais"],
    correctAnswerIndex: 3,
    explanation: "Ramesh Bais is the governor of Maharashtra.",
  ),
  Question(
    questionText: "Who is the governor of Manipur?",
    options: ["Anusuiya Uikey", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Anusuiya Uikey is the governor of Manipur.",
  ),
  Question(
    questionText: "Who is the governor of Meghalaya?",
    options: ["Phagu Chauhan", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Phagu Chauhan is the governor of Meghalaya.",
  ),
  Question(
    questionText: "Who is the governor of Mizoram?",
    options: ["Kambhampati Haribabu", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Kambhampati Haribabu is the governor of Mizoram.",
  ),
  Question(
    questionText: "Who is the governor of Nagaland?",
    options: ["La. Ganesan", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "La. Ganesan is the governor of Nagaland.",
  ),
  Question(
    questionText: "Who is the governor of Odisha?",
    options: ["Ganeshi Lal", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Ganeshi Lal is the governor of Odisha.",
  ),
  Question(
    questionText: "Who is the governor of Punjab?",
    options: ["Banwarilal Purohit", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Banwarilal Purohit is the governor of Punjab.",
  ),
  Question(
    questionText: "Who is the governor of Rajasthan?",
    options: ["Kalraj Mishra", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Kalraj Mishra is the governor of Rajasthan.",
  ),
  Question(
    questionText: "Who is the governor of Sikkim?",
    options: ["Lakshman Prasad Acharya", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Lakshman Prasad Acharya is the governor of Sikkim.",
  ),
  Question(
    questionText: "Who is the governor of Tamil Nadu?",
    options: ["R. N. Ravi", "Tamilisai Soundararajan", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "R. N. Ravi is the governor of Tamil Nadu.",
  ),
  Question(
    questionText: "Who is the governor of Telangana?",
    options: ["Tamilisai Soundararajan", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Tamilisai Soundararajan is the governor of Telangana.",
  ),
  Question(
    questionText: "Who is the governor of Tripura?",
    options: ["Satyadeo Narain Arya", "R. N. Ravi", "Thawar Chand Gehlot", "Arif Mohammed Khan"],
    correctAnswerIndex: 0,
    explanation: "Satyadeo Narain Arya is the governor of Tripura.",
  ),
  // Add your questions here
  // ...
];
int _elapsedTimeInSeconds = 0; // Elapsed exam time in seconds

late Timer _examTimer;

@override
void initState() {
  super.initState();
  _loadLikedData();
  //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
  _startstatesAndGovernorsTimer();
}
void _startstatesAndGovernorsTimer() {
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
            return ListTile(
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
            );
          }).toList(),
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
    home:  statesAndGovernorsScreen(),
  ));
}

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

class  statesCapitalsIndiaScreen extends StatefulWidget {
  final String? userIdentifier;

  statesCapitalsIndiaScreen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State< statesCapitalsIndiaScreen> createState() => _statesCapitalsIndiaScreenState();
}

class _statesCapitalsIndiaScreenState extends State< statesCapitalsIndiaScreen> {
int? _selectedAnswerIndex;
int _currentQuestionIndex = 0;
List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

List<Question> _questions = [
Question(
questionText: "What is the capital of India?",
options: ["Delhi", "Mumbai", "Kolkata", "Chennai"],
correctAnswerIndex: 0,
explanation: "Delhi is the capital of India.",
),
Question(
questionText: "What is the capital of Andhra Pradesh?",
options: ["Amaravati", "Hyderabad", "HYD", "Vijayawada"],
correctAnswerIndex: 2,
explanation: "Amaravati is the capital of Andhra Pradesh.",
),
Question(
questionText: "What is the capital of Arunachal Pradesh?",
options: ["Itanagar", "Guwahati", "Tezu", "Pasighat"],
correctAnswerIndex: 0,
explanation: "Itanagar is the capital of Arunachal Pradesh.",
),
Question(
questionText: "What is the capital of Assam?",
options: ["Guwahati", "Dispur", "Silchar", "Jorhat"],
correctAnswerIndex: 1,
explanation: "Dispur is the capital of Assam.",
),
Question(
questionText: "What is the capital of Bihar?",
options: ["Patna", "Gaya", "Muzaffarpur", "Darbhanga"],
correctAnswerIndex: 0,
explanation: "Patna is the capital of Bihar.",
),
Question(
questionText: "What is the capital of Chhattisgarh?",
options: ["Raipur", "Bilaspur", "Durg", "Kalyan"],
correctAnswerIndex: 0,
explanation: "Raipur is the capital of Chhattisgarh.",
),
Question(
questionText: "What is the capital of Goa?",
options: ["Raipur", "Margao", "Vasco da Gama", "Panaji"],
correctAnswerIndex: 3,
explanation: "Panaji is the capital of Goa.",
),
Question(
questionText: "What is the capital of Gujarat?",
options: ["Gandhinagar", "Ahmedabad", "Surat", "Vadodara"],
correctAnswerIndex: 0,
explanation: "Gandhinagar is the capital of Gujarat.",
),
Question(
questionText: "What is the capital of Haryana?",
options: ["Gandhinagar", "Faridabad", "Gurugram", "Chandigarh"],
correctAnswerIndex: 3,
explanation: "Chandigarh is the capital of Haryana.",
),
Question(
questionText: "What is the capital of Himachal Pradesh?",
options: ["Shimla", "Manali", "Dharamshala", "Kullu"],
correctAnswerIndex: 0,
explanation: "Shimla is the capital of Himachal Pradesh.",
),
Question(
questionText: "What is the capital of Jammu and Kashmir?",
options: ["Srinagar", "Jammu", "Leh", "Katra"],
correctAnswerIndex: 0,
explanation: "Srinagar is the summer capital of Jammu and Kashmir, and Jammu is the winter capital.",
),
Question(
questionText: "What is the capital of Jharkhand?",
options: ["Bengaluru", "Dhanbad", "Ranchi", "Bokaro"],
correctAnswerIndex: 2,
explanation: "Ranchi is the capital of Jharkhand.",
),
Question(
questionText: "What is the capital of Karnataka?",
options: ["Bengaluru", "Mysuru", "Hubli-Dharwad", "Mangaluru"],
correctAnswerIndex: 0,
explanation: "Bengaluru is the capital of Karnataka.",
),
  Question(
    questionText: "What is the capital of Madhya Pradesh?",
    options: ["Bhopal", "Indore", "Jabalpur", "Ujjain"],
    correctAnswerIndex: 0,
    explanation: "Bhopal is the capital of Madhya Pradesh.",
  ),
  Question(
    questionText: "What is the capital of Manipur?",
    options: ["Jabalpur", "Imphal", "Thoubal", "Ukhrul"],
    correctAnswerIndex: 1,
    explanation: "Imphal is the capital of Manipur.",
  ),
  Question(
    questionText: "What is the capital of Meghalaya?",
    options: ["Shillong", "Tura", "Nongstoin", "Jowai"],
    correctAnswerIndex: 0,
    explanation: "Shillong is the capital of Meghalaya.",
  ),
  Question(
    questionText: "What is the capital of Mizoram?",
    options: ["Aizawl", "Lunglei", "Serchhip", "Kolasib"],
    correctAnswerIndex: 0,
    explanation: "Aizawl is the capital of Mizoram.",
  ),
  Question(
    questionText: "What is the capital of Nagaland?",
    options: ["Kohima", "Dimapur", "Mokokchung", "Wokha"],
    correctAnswerIndex: 0,
    explanation: "Kohima is the capital of Nagaland.",
  ),
  Question(
    questionText: "What is the capital of Odisha?",
    options: ["Puri", "Cuttack", "Bhubaneswar", "Sambalpur"],
    correctAnswerIndex: 2,
    explanation: "Bhubaneswar is the capital of Odisha.",
  ),
  Question(
    questionText: "What is the capital of Puducherry?",
    options: ["Puducherry", "Karaikal", "Yanam", "Mahe"],
    correctAnswerIndex: 0,
    explanation: "Puducherry is the capital of Puducherry.",
  ),
  Question(
    questionText: "What is the capital of Punjab?",
    options: ["Karaikal", "Ludhiana", "Chandigarh", "Jalandhar"],
    correctAnswerIndex: 2,
    explanation: "Chandigarh is the capital of Punjab.",
  ),
  Question(
    questionText: "What is the capital of Rajasthan?",
    options: ["Jaipur", "Jodhpur", "Kota", "Udaipur"],
    correctAnswerIndex: 0,
    explanation: "Jaipur is the capital of Rajasthan.",
  ),
  Question(
    questionText: "What is the capital of Sikkim?",
    options: ["Gangtok", "Namchi", "Gyalshing", "Mangan"],
    correctAnswerIndex: 0,
    explanation: "Gangtok is the capital of Sikkim.",
  ),
  Question(
    questionText: "What is the capital of Tamil Nadu?",
    options: ["Chennai", "Coimbatore", "Madurai", "Tiruchirappalli"],
    correctAnswerIndex: 0,
    explanation: "Chennai is the capital of Tamil Nadu.",
  ),
  Question(
    questionText: "What is the capital of Telangana?",
    options: ["Hyderabad", "Warangal", "Karimnagar", "Nizamabad"],
    correctAnswerIndex: 0,
    explanation: "Hyderabad is the capital of Telangana.",
  ),
  Question(
    questionText: "What is the capital of Tripura?",
    options: ["Coimbatore", "Kailashahar", "Dharmanagar", "Agartala"],
    correctAnswerIndex: 3,
    explanation: "Agartala is the capital of Tripura.",
  ),
  Question(
    questionText: "What is the capital of Uttar Pradesh?",
    options: ["Lucknow", "Kanpur", "Agra", "Varanasi"],
    correctAnswerIndex: 0,
    explanation: "Lucknow is the capital of Uttar Pradesh.",
  ),
  Question(
    questionText: "What is the capital of Uttarakhand?",
    options: ["Dehradun", "Haridwar", "Rishikesh", "Mussoorie"],
    correctAnswerIndex: 0,
    explanation: "Dehradun is the capital of Uttarakhand.",
  ),
  Question(
    questionText: "What is the capital of West Bengal?",
    options: ["Kolkata", "Durgapur", "Siliguri", "Asansol"],
    correctAnswerIndex: 0,
    explanation: "Kolkata is the capital of West Bengal.",
  ),
  Question(
    questionText: "What is the capital of Andaman and Nicobar Islands?",
    options: ["Port Blair", "Havelock Island", "Neil Island", "Ross Island"],
    correctAnswerIndex: 0,
    explanation: "Port Blair is the capital of Andaman and Nicobar Islands.",
  ),
  Question(
    questionText: "What is the capital of Chandigarh?",
    options: ["Chandigarh", "Mohali", "Panchkula", "Zirakpur"],
    correctAnswerIndex: 0,
    explanation: "Chandigarh is the capital of Chandigarh.",
  ),
  Question(
    questionText: "What is the capital of Dadra and Nagar Haveli and Daman and Diu?",
    options: ["Jammu", "Dadra", "Nagar Haveli", "Silvassa"],
    correctAnswerIndex: 3,
    explanation: "Silvassa is the capital of Dadra and Nagar Haveli and Daman and Diu.",
  ),
  Question(
    questionText: "What is the capital of Jammu and Kashmir?",
    options: ["Srinagar", "Jammu", "Leh", "Katra"],
    correctAnswerIndex: 0,
    explanation: "Srinagar is the summer capital of Jammu and Kashmir.",
  ),
  Question(
    questionText: "What is the winter capital of Jammu and Kashmir?",
    options: ["Srinagar", "Jammu", "Leh", "Katra"],
    correctAnswerIndex: 1,
    explanation: "Jammu is the winter capital of Jammu and Kashmir.",
  ),
  Question(
    questionText: "What is the capital of Lakshadweep?",
    options: ["Kavaratti", "Agatti", "Bangaram", "Kalpeni"],
    correctAnswerIndex: 0,
    explanation: "Kavaratti is the capital of Lakshadweep.",
  ),
  Question(
    questionText: "What is the capital of Puducherry?",
    options: ["Puducherry", "Karaikal", "Mahe", "Yanam"],
    correctAnswerIndex: 0,
    explanation: "Puducherry is the capital of Puducherry.",
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
  _startstatesCapitalsIndiaTimer();
}
void _startstatesCapitalsIndiaTimer() {
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
    home:  statesCapitalsIndiaScreen(),
  ));
}

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

class medievalHistory_9 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_9({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_9> createState() => _medievalHistory_9State();
}

class _medievalHistory_9State extends State<medievalHistory_9> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

  Question(
  questionText: "Shivaji's coronation took place in the year",
  options: ["1674 A.D.", "1675 A.D.", "1672 A.D.", "1673 A.D."],
  correctAnswerIndex: 0,
  explanation: "Shivaji's coronation took place in the year 1674 A.D."
  ),

  Question(
  questionText: "The general who was killed while fighting in the battle of Plassey is",
  options: ["Miran", "Mir Madan", "Mohanlal", "Mirza Haider"],
  correctAnswerIndex: 1,
  explanation: "The general who was killed while fighting in the battle of Plassey is Mir Madan."
  ),

  Question(
  questionText: "Among the officers of Md. Ghori, Bengal was conquered by",
  options: ["Ikhtiaruddin Md Baktyar Khalji", "Tnghrid Khan", "Qutubuddin Aibok", "Tajuddin Yildij"],
  correctAnswerIndex: 0,
  explanation: "Among the officers of Md. Ghori, Bengal was conquered by Ikhtiaruddin Md Baktyar Khalji."
  ),

  Question(
  questionText: "Who tried to implement 'Hindu-Pada- Padshahi'?",
  options: ["Baji Bao I", "Bhaskar Pandit", "Shivaji", "Balaji Viswanath"],
  correctAnswerIndex: 0,
  explanation: "Baji Bao I tried to implement 'Hindu-Pada- Padshahi'."
  ),

  Question(
  questionText: "Who of the following put up stiff resistance against Alexander? ore",
  options: ["Porus", "Mahapadma", "Ambhi", "All of the above"],
  correctAnswerIndex: 0,
  explanation: "Porus put up stiff resistance against Alexander."
  ),

  Question(
  questionText: "Who was the Muslim general to have conquered Bengal in 13th C.A.D?",
  options: ["Chenghe Khan", "Tunuchin Temuchin", "Afzal Khan", "Iktiaruddinbin-Baktiar Khllji"],
  correctAnswerIndex: 3,
  explanation: "Iktiaruddinbin-Baktiar Khllji was the Muslim general to have conquered Bengal in the 13th C.A.D."
  ),

  Question(
  questionText: "Who was called 'Chanakya of Maratha Politics'?",
  options: ["Nana pharanbis", "Mahadaji Scindia", "Baji Rao II", "Balaji Biswanath"],
  correctAnswerIndex: 0,
  explanation: "'Chanakya of Maratha Politics' was Nana pharanbis."
  ),

  Question(
  questionText: "Whose regime is called the Golden Age of Telugu Literature?",
  options: ["Deva Raya I", "Krishna Deva Raya", "Vira Narasimha", "Deva Raya II"],
  correctAnswerIndex: 1,
  explanation: "The regime of Krishna Deva Raya is called the Golden Age of Telugu Literature."
  ),

  Question(
  questionText: "Peddana (Allasani Peddana) was considered as the 'Grandfather of Andhra Poem'. He was a member of Ashtadiggjas. Ashtadiggjas were patronized by?",
  options: ["Deva Raya II", "Vira Narasimha Raya", "Deva Raya I", "Krishna Deva Raya"],
  correctAnswerIndex: 3,
  explanation: "Peddana (Allasani Peddana) was considered as the 'Grandfather of Andhra Poem'. He was a member of Ashtadiggjas, patronized by Krishna Deva Raya."
  ),

  Question(
  questionText: "Vijayanagar empire was destroyed in the battle of Tilakotta in the year of",
  options: ["1565", "1656", "1498", "1541"],
  correctAnswerIndex: 0,
  explanation: "Vijayanagar empire was destroyed in the battle of Tilakotta in the year 1565."
  ),

  Question(
  questionText: "Harihara and Bukka Rai have founded the Vijayanagar empire. They belong to which clan?",
  options: ["Saluva", "Sangama", "Tuluva", "Aravidu"],
  correctAnswerIndex: 1,
  explanation: "Harihara and Bukka Rai have founded the Vijayanagar empire. They belong to the Sangama clan."
  ),

  Question(
  questionText: "The Vijayanagar king who conquered the Singhal in 1442 is",
  options: ["Harihara I", "Harihara II", "Deva Raya I", "Deva Raya II"],
  correctAnswerIndex: 3,
  explanation: "The Vijayanagar king who conquered Singhal in 1442 is Deva Raya II."
  ),

  Question(
  questionText: "Persian ambassador Abdur Razzaq and Italian treader Niccolo De Conti had come to the court of?",
  options: ["Vira Narasimha Raya", "Krishna Deva Raya", "Harihara II", "Deva Raya II"],
  correctAnswerIndex: 3,
  explanation: "Persian ambassador Abdur Razzaq and Italian treader Niccolo De Conti had come to the court of Deva Raya II."
  ),

  Question(
  questionText: "A treaty has been signed between Portuguese Governor Almeida and Vijayanagar king to provide horses to Vijayanagar empire. Who is the King?",
  options: ["Vira Narasimha Raya", "Harihara II", "Deva Raya II", "Krishna Deva Raya"],
  correctAnswerIndex: 0,
  explanation: "A treaty has been signed between Portuguese Governor Almeida and Vijayanagar king Vira Nar",
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
    home: medievalHistory_9(),
  ));
}

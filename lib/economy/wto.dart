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

class wto extends StatefulWidget {
  final String? userIdentifier;

  wto({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<wto> createState() => _wtoState();
}

class _wtoState extends State<wto> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

  Question(
  questionText: "What is one of the primary reasons for the stalled conclusion of the Doha Round of negotiations?",
  options: ["Disagreement over dispute resolution mechanisms", "Lack of consensus on intellectual property rights", "Market access initiatives in agriculture and industrial sectors", "Inability to establish investment measures"],
  correctAnswerIndex: 2,
  explanation: "The stumbling block to the conclusion of the Doha Round is the lack of consensus on market access initiatives in agriculture and industrial sectors across countries.",
  ),

  Question(
  questionText: "What is the purpose of the Special Safeguards Mechanisms (SSM) at the WTO according to the text?",
  options: ["To facilitate trade negotiations between developed and developing countries", "To regulate tariff rates in the agricultural sector", "To provide a mechanism for countries to block food imports in adverse situations", "To establish a framework for dispute settlement between WTO member nations"],
  correctAnswerIndex: 2,
  explanation: "The Special Safeguards Mechanisms (SSM) at the WTO allow countries that are net importers of food to block food imports in adverse circumstances, a provision primarily for weaker economies.",
  ),

  Question(
  questionText: "Why has the conclusion of the Doha Round of negotiations at the WTO faced challenges?",
  options: ["Due to disagreements among developing countries", "Because of resistance from developed countries regarding agricultural and industrial sectors", "Absence of consensus among WTO member nations on trade-related issues", "Lack of interest from global economies in trade liberalization"],
  correctAnswerIndex: 1,
  explanation: "The conclusion of the Doha Round has faced challenges primarily due to disagreements between developed countries like the US, Europe, and Japan, and developing nations like India, China, and others concerning the opening of agriculture and industrial sectors.",
  ),

  Question(
  questionText: "What is the significance of the Special Products (SP) in the agricultural sector negotiations at the WTO?",
  options: ["It outlines the agricultural policies of developed countries", "It specifies the food safety regulations for WTO member nations", "It includes agricultural products exempted from tariff reduction to protect livelihoods", "It determines the maximum export quotas for agricultural goods"],
  correctAnswerIndex: 2,
  explanation: "Special Products (SP) in the agricultural sector refer to products exempted from tariff reduction to safeguard the livelihoods of those involved in their production.",
  ),

  Question(
  questionText: "Why does threre is a need for a broader outlook in agricultural negotiations at the WTO?",
  options: ["To enforce strict tariff reductions for agricultural goods", "To maintain high protection levels for agricultural sectors globally", "To promote increased trade and economic improvement in the agricultural sector", "To introduce measures leading to complete self-sufficiency in food production"],
  correctAnswerIndex: 2,
  explanation: "The necessity for a broader outlook in agricultural negotiations at the WTO to promote increased trade, leading to economic improvement in the agricultural sector.",
  ),

  Question(
  questionText: "What do the 'green box' subsidies, mentioned in the text, signify in the context of agricultural negotiations at the WTO?",
  options: ["Subsidies intended for crop production expansion", "Subsidies meant for limiting production of specific crops", "Subsidies associated with environmental concerns and livelihoods", "Subsidies aimed at export promotion of agricultural goods"],
  correctAnswerIndex: 2,
  explanation: "The 'green box' subsidies refer to subsidies provided for environmental concerns and livelihoods in the agricultural sector.",
  ),

  Question(
  questionText: "Why do the Non-agriculture Market Access (NAMA) negotiations face challenges?",
  options: ["Developing countries refuse to reduce tariffs on non-agricultural goods", "Absence of agreement on the reduction formula for tariffs across product lines", "Developed nations impose excessive tariffs on agricultural goods", "Lack of transparency in imposing tariffs on agricultural goods"],
  correctAnswerIndex: 1,
  explanation: "The NAMA negotiations encounter challenges due to the absence of consensus on the formula for reducing tariffs across various product lines.",
  ),

  Question(
  questionText: "What is the primary issue concerning the 'Sanitary and Phyto Sanitary Conditions' (SPS) in agricultural trade negotiations?",
  options: ["Lack of implementation of environmental norms", "Absence of any conditions on child labor in the agricultural sector", "Opaque, discriminatory, and non-uniform conditions affecting trade", "Inability to adhere to hygiene standards in agricultural goods"],
  correctAnswerIndex: 2,
  explanation: "The primary issue with 'Sanitary and Phyto Sanitary Conditions' (SPS) in agricultural trade negotiations is their lack of transparency, discriminatory nature, and non-uniformity, adversely affecting trade.",
  ),

  Question(
  questionText: "Which mode of trade in services involves the physical movement of the service provider or seeker for rendering services, but not for permanent commercial interest?",
  options: ["Mode 1", "Mode 2", "Mode 3", "Mode 4"],
  correctAnswerIndex: 1,
  explanation: "Mode 2 in trade in services includes the physical movement of the service provider or seeker for rendering services, without the purpose of permanent commercial interest.",
  ),

  Question(
  questionText: "Why was the WTO in a state of 'pause' over the last few years before the crisis?",
  options: ["Lack of interest from smaller economies", "Resistance from larger economies like the US", "Domestic economic constraints", "Disputes among member countries"],
  correctAnswerIndex: 1,
  explanation: "The WTO was in a state of 'pause' primarily because larger economies like the US did not see forcing a consensus at WTO as imperative before the crisis.",
  ),

  Question(
  questionText: "What approach should countries adopt in the next round of WTO negotiations?",
  options: ["Focus on individual sector benefits", "Wait for complete agreement before negotiations", "Segregate contentious and non-contentious issues", "Seek individual bargaining strengths"],
  correctAnswerIndex: 2,
  explanation: "Countries should adopt an approach that involves segregating contentious and non-contentious issues and establishing separate sub-committees to address them during WTO negotiations.",
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
  MyBannerAdWidget(), // Add the banner ad here
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
  final isCorrectAnswer = optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

  return InkWell(
  onTap: () {
  setState(() {
  _selectedAnswerIndex = optionIndex;
  _userAnswers[_currentQuestionIndex] = optionIndex;
  });
  },
  child: Container(
  margin: EdgeInsets.only(bottom: 8.0), // Add space between boxes
  decoration: BoxDecoration(
  color: _selectedAnswerIndex == optionIndex
  ? (isCorrectAnswer ? Colors.green[200] : Colors.red[300])
      : Colors.white,
  border: Border.all(
  color: _selectedAnswerIndex == optionIndex ? Colors.blue : Colors.grey,
  width: 2.0,
  ),
  borderRadius: BorderRadius.circular(8.0),
  ),
  child: ListTile(
  title: Text(optionText),
  leading: Radio<int>(
  value: optionIndex,
  groupValue: _selectedAnswerIndex,
  onChanged: (int? value) {
  setState(() {
  _selectedAnswerIndex = value;
  _userAnswers[_currentQuestionIndex] = value;
  });
  },
  ),
  ),
  ),
  );
  }).toList(),
  if (_selectedAnswerIndex != null)
  Text(
  "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
  style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Colors.green,
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
          MyBannerAdWidget(), // Add the banner ad here
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
    home: wto(),
  ));
}

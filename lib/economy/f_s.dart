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

class f_s extends StatefulWidget {
  final String? userIdentifier;

  f_s({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<f_s> createState() => _f_sState();
}

class _f_sState extends State<f_s> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



  Question(
  questionText: "What is the primary responsibility of the Food Corporation of India (FCI) mentioned in the passage?",
  options: [
  "Production of food grains",
  "Setting buffer stock norms",
  "Procurement and storage of food grains at MSP",
  "Selling food grains in the open market"
  ],
  correctAnswerIndex: 2,
  explanation: "The Food Corporation of India (FCI) is primarily responsible for procuring and storing food grains at Minimum Support Price (MSP) in its warehouses as mentioned in the passage.",
  ),

  Question(
  questionText: "What is the objective of the National Food Security Act?",
  options: [
  "To provide food and nutritional security to 75% of the urban population",
  "To offer free food grains to all citizens",
  "To ensure access to quality food at affordable prices to people across India",
  "To exclusively provide subsidies for coarse cereals to rural households"
  ],
  correctAnswerIndex: 2,
  explanation: "The National Food Security Act aims to provide access to an adequate quantity of quality food at affordable prices to people to live a life with dignity, covering about two-thirds of the population.",
  ),

  Question(
  questionText: "What was the main flaw identified in the Targeted Public Distribution System (TPDS)?",
  options: [
  "Lack of government subsidies for food grains",
  "Inefficiency in the delivery channel",
  "Overemphasis on inclusion of BPL families",
  "Excessive focus on urban population"
  ],
  correctAnswerIndex: 1,
  explanation: "The main flaw in TPDS was identified as the failure in the delivery channel, leading to inefficiency in reaching out to the poor and rampant wastage/diversion.",
  ),

  Question(
  questionText: "What method does the government propose for identifying beneficiaries under food security?",
  options: [
  "BPL cards",
  "Unique Identification Authority of India",
  "State governments' discretion",
  "Exclusion method"
  ],
  correctAnswerIndex: 3,
  explanation: "The government aims to use the exclusion method to identify beneficiaries, excluding certain categories instead of directly identifying targeted beneficiaries.",
  ),

  Question(
  questionText: "What approach should food security primarily aim for?",
  options: [
  "Providing subsidized coarse cereals to rural households",
  "Focusing solely on feeding the population",
  "Ensuring nutrition security beyond just feeding",
  "Offering direct income support to all citizens"
  ],
  correctAnswerIndex: 2,
  explanation: "Food security should encompass ensuring nutrition security beyond just providing food, addressing both hunger and malnutrition as a top priority.",
  ),

  Question(
  questionText: "What was the main flaw identified in the Targeted Public Distribution System (TPDS)?",
  options: [
  "Lack of government subsidies for food grains",
  "Inefficiency in the delivery channel",
  "Overemphasis on inclusion of BPL families",
  "Excessive focus on urban population"
  ],
  correctAnswerIndex: 1,
  explanation: "The main flaw in TPDS was identified as the failure in the delivery channel, leading to inefficiency in reaching out to the poor and rampant wastage/diversion.",
  ),

  Question(
  questionText: "What method does the government propose for identifying beneficiaries under food security?",
  options: [
  "BPL cards",
  "Unique Identification Authority of India",
  "State governments' discretion",
  "Exclusion method"
  ],
  correctAnswerIndex: 3,
  explanation: "The government aims to use the exclusion method to identify beneficiaries, excluding certain categories instead of directly identifying targeted beneficiaries.",
  ),

  Question(
  questionText: "What approach should food security primarily aim for according to the text?",
  options: [
  "Providing subsidized coarse cereals to rural households",
  "Focusing solely on feeding the population",
  "Ensuring nutrition security beyond just feeding",
  "Offering direct income support to all citizens"
  ],
  correctAnswerIndex: 2,
  explanation: "Food security should encompass ensuring nutrition security beyond just providing food, addressing both hunger and malnutrition as a top priority",
  ),

  Question(
  questionText: "Which factor is NOT listed among the challenges India needs to address for achieving food security?",
  options: [
  "Ensuring food availability and accessibility to BPL families",
  "Expansion of social welfare programs",
  "Improvement in Agricultural productivity",
  "Improvement in purchasing power through employment generation"
  ],
  correctAnswerIndex: 1,
  explanation: "The expansion of social welfare programs is not specifically mentioned among the challenges India needs to address for achieving food security.",
  ),

  Question(
  questionText: "what should be the focus in achieving food security?",
  options: [
  "Providing subsidized food baskets to all citizens",
  "Addressing hunger exclusively",
  "Improving agricultural productivity and storage facilities",
  "Ensuring accessibility, affordability, and availability of food for all"
  ],
  correctAnswerIndex: 3,
  explanation: "The  emphasizes achieving food security by ensuring accessibility, affordability, and availability of food for all.",),


  Question(
  questionText: "How should the government provide subsidized food baskets to specific groups of individuals?",
  options: [
  "As a universal rule for all citizens",
  "As an exception for those unable to enter the employment stream",
  "Only to senior citizens",
  "Without any exceptions, regardless of need"
  ],
  correctAnswerIndex: 1,
  explanation: "Providing subsidized food baskets as an exception to those physically handicapped, unable to enter employment, senior citizens, and other groups deemed fit by the government."
  ),

  Question(
  questionText: "What is the main objective of addressing challenges related to food security in India?",
  options: [
  "Achieving universal employment generation",
  "Ensuring accessibility, affordability, and availability of food for all",
  "Exclusively focusing on agricultural productivity improvement",
  "Eliminating only absolute poverty"
  ],
  correctAnswerIndex: 1,
  explanation: "The main objective highlighted in the text is to ensure accessibility, affordability, and availability of food for all in India."
  ),

  Question(
  questionText: "Which challenge is NOT mentioned as a hurdle in achieving food security in India?",
  options: [
  "Strict government control over food distribution",
  "Lack of intersectoral coordination",
  "Absence of mechanisms for effective food storage",
  "Unmonitored nutritional programs"
  ],
  correctAnswerIndex: 0,
  explanation: "Strict government control over food distribution is not listed as a challenge in achieving food security.",
  ),

  Question(
  questionText: "What is the primary reason India maintains a government-held stock of food grains?",
  options: [
  "To export surplus grains",
  "To meet natural calamities and stabilize prices",
  "To reduce production costs",
  "To encourage private sector investment"
  ],
  correctAnswerIndex: 1,
  explanation: "India maintains a government-held stock of food grains primarily for meeting natural calamities and price stabilization in case of crop failures.",
  ),

  Question(
  questionText: "What are some challenges faced in India's buffer stock operations?",
  options: [
  "Insufficient government support",
  "Lack of available grain stocks",
  "Excessive stocks due to MSP and procurement rules",
  "High market prices leading to reduced stocks"
  ],
  correctAnswerIndex: 2,
  explanation: "Challenges in India's buffer stock operations include excessive stocks due to Minimum Support Price (MSP) and mandatory procurement rules.",
  ),

  Question(
  questionText: "What is the aim of the Revamped Public Distribution System (RPDS) launched in 1992?",
  options: [
  "To introduce market-based pricing for food grains",
  "To distribute food grains at prevailing market rates",
  "To focus distribution towards economically backward families and prevent pilferage",
  "To encourage farmers to sell directly to the government"
  ],
  correctAnswerIndex: 2,
  explanation: "The Revamped Public Distribution System (RPDS) aimed to focus distribution towards economically backward families and prevent pilferage of food grains.",
  ),

  Question(
  questionText: "What is the main flaw in the Targeted Public Distribution System (TPDS) concerning the BPL category?",
  options: [
  "Excessive inclusion of eligible BPL families",
  "Failure to maintain adequate food stocks",
  "Economical criteria for inclusion resulting in exclusions",
  "Inadequate identification of beneficiaries"
  ],
  correctAnswerIndex: 2,
  explanation: "The main flaw in TPDS concerning the BPL category is the use of solely economical criteria for inclusion, resulting in exclusions due to underreporting and political patronage.",
  ),

  Question(
  questionText: "What is the National Food Security Act's primary aim?",
  options: [
  "Providing income support to poor families",
  "Issuing smart cards for food purchases",
  "Ensuring nutrition security and subsidised food grains for the majority of the population",
  "Establishing employment opportunities for all"
  ],
  correctAnswerIndex: 2,
  explanation: "The National Food Security Act aims to ensure nutrition security and provide subsidised food grains to a large percentage of India's population.",
  ),

  Question(
  questionText: "What challenges does India face in achieving food security, as mentioned in the text?",
  options: [
  "Inefficient agricultural productivity and storage mechanisms",
  "Absence of nutritional programmes and employment opportunities",
  "Overreliance on intersectoral coordination and crop diversification",
  "Enhanced community participation and timely evaluation of programmes"
  ],
  correctAnswerIndex: 0,
  explanation: "India faces challenges such as inefficient agricultural productivity and storage mechanisms in achieving food security.",
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
    home: f_s(),
  ));
}

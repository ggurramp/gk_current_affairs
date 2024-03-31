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

class guri extends StatefulWidget {
  final String? userIdentifier;

  guri({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<guri> createState() => _guriState();
}

class _guriState extends State<guri> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [

  Question(
  questionText: "What are the concerns regarding the continuation of the US dollar as an international reserve currency?",
  options: ["It lacks market acceptance", "It's not backed by a strong economy", "Potential destabilization of the US economy", "The currency isn't convertible"],
  correctAnswerIndex: 2,
  explanation: "The text expresses concerns about the potential destabilization of the US economy if the USD is replaced as the international reserve currency.",
  ),

  Question(
  questionText: "What is one of the major concerns related to the Euro's future as a unified currency?",
  options: ["Differential growth rates", "Labour flexibility", "Sectoral contribution", "Unsustainable deficits"],
  correctAnswerIndex: 3,
  explanation: "Ithighlights 'unsustainable deficits' as one of the concerns impacting the Euro's future as a unified currency.",
  ),

  Question(
  questionText: "What is identified as a consequence of the quantitative easing (QE) policies by the US?",
  options: ["Currency appreciation in emerging economies", "Declining global trade", "Higher interest rates worldwide", "Stable exchange rates"],
  correctAnswerIndex: 0,
  explanation: "The text suggests that QE policies by the US lead to currency appreciation in emerging economies.",
  ),

  Question(
  questionText: "What significant issue arises from the massive use of credit cards in the US?",
  options: ["Default risk similar to sub-prime borrowers", "Lack of government regulation", "Stable financial system", "Decreased consumer spending"],
  correctAnswerIndex: 0,
  explanation: "The text highlights the potential risk of defaults similar to sub-prime borrowers due to the extensive use of credit cards in the US.",
  ),

  Question(
  questionText: "What is the fiscal concern related to the ageing workforce in various countries?",
  options: ["Increased social security liabilities", "Declining workforce participation", "Reduced government spending", "Higher tax revenues"],
  correctAnswerIndex: 0,
  explanation: "The ageing workforce raises concerns about increased social security pension liabilities, representing unfunded public liabilities.",
  ),

  Question(
  questionText: "What major implications does the text suggest about the debt levels of the US, UK, and other European economies?",
  options: ["They are sustainable in the long run", "They are lower compared to emerging economies", "They have reached over 100% of their GDP", "They have not affected the global economy"],
  correctAnswerIndex: 2,
  explanation: "The text indicates that the debt levels of the US, UK, and other European economies have crossed 100% of their GDP, raising concerns about their sustainability.",
  ),

  Question(
  questionText: "Why does it emphasize that the global economy is at crossroads?",
  options: ["Due to the political instability in major economies", "Because of the uncertainty and fluidity of the current situation", "As a result of the collapse of the free market economy", "Driven by the absence of global trade agreements"],
  correctAnswerIndex: 1,
  explanation: "It  emphasizes that the global economy is at crossroads due to the uncertainty and fluidity of the current situation.",
  ),

  Question(
  questionText: "What is the primary concern regarding the withdrawal of Quantitative Easing (QE) according to the text?",
  options: ["Disruption of global trade agreements", "Adverse effects on the US economy", "Destabilization of emerging economies", "Decrease in government spending"],
  correctAnswerIndex: 2,
  explanation: "The text highlights the concern that the withdrawal of QE could destabilize emerging economies.",
  ),

  Question(
  questionText: "What is the potential fallout of the recovery in the US and Europe for emerging economies?",
  options: ["Appreciation of currencies in emerging economies", "Reduction in government spending", "Decreased unemployment rates in emerging economies", "Increase in trade deficits"],
  correctAnswerIndex: 0,
  explanation: "The text suggests that the recovery in the US and Europe adversely affects emerging economies by appreciating their currencies.",
  ),

  Question(
  questionText: "What does it emphasize as crucial for India in light of the withdrawal of Quantitative Easing (QE)?",
  options: ["A swift withdrawal of QE to stabilize the economy", "Gradual withdrawal of QE to avoid destabilization", "Reduced reliance on global trade for economic growth", "Increased government regulation for stability"],
  correctAnswerIndex: 1,
  explanation: "It  emphasizes that India requires a gradual withdrawal of QE to avoid destabilization in its economy.",
  ),

  Question(
  questionText: "Why does the emerging economies, including India, are experiencing concerns due to the recovery signs in the US and Europe?",
  options: ["Increased government spending", "Appreciating currencies and reversed inflows", "Higher trade deficits", "Expanded monetary policies"],
  correctAnswerIndex: 1,
  explanation: "That signs of recovery in the US and Europe have led to appreciating currencies and reversed inflows, causing concerns for emerging economies.",
  ),

  Question(
  questionText: "What is  possible cause for a potential 'currency war' situation among economies?",
  options: ["Government stimulus packages", "Interest rate adjustments", "Appreciating currencies", "Inflows into emerging economies"],
  correctAnswerIndex: 3,
  explanation: " inflows into emerging economies as a possible cause for a 'currency war' situation among economies.",
  ),

  Question(
  questionText: "What key feature should a reserve currency possess?",
  options: ["Being heavily regulated by global organizations", "Being exclusively used within a single country", "Backed by a large and strong economy", "Controlled by the International Monetary Fund (IMF)"],
  correctAnswerIndex: 2,
  explanation: "The underscores that a reserve currency should be backed by a strong and large economy among other criteria.",
  ),

  Question(
  questionText: "what is the significance of the global economy being 'at crossroads'?",
  options: ["Signifies a complete collapse of free market economy", "Highlights the end of multilateral trade agreements", "Denotes uncertainty and fluidity of the situation", "Points to a sustainable economic recovery"],
  correctAnswerIndex: 2,
  explanation: "The global economy being 'at crossroads' denotes uncertainty and fluidity of the current situation.",
  ),

  Question(
  questionText: "Why is the continuation of the USD as an international reserve currency considered a crucial global issue ?",
  options: ["Its conversion to a weaker currency", "Potential destabilization of the US economy", "Likelihood of increased trade deficits", "Impacts on global economic stability"],
  correctAnswerIndex: 3,
  explanation: "It emphasizes the continuation of the USD as an international reserve currency due to its potential impacts on global economic stability.",
  ),

  Question(
  questionText: "What primary concerns are raised regarding the Euro's future as a unified currency, as stated in the text?",
  options: ["Unstable market regulations", "Growing global debts", "Potential disintegration due to recent crises", "Decreased trade agreements"],
  correctAnswerIndex: 2,
  explanation: "The text suggests concerns about the potential disintegration of the Euro due to recent crises as a significant issue for its future as a unified currency.",
  ),

  Question(
  questionText: "What problematic issue related to the US economy does the text highlight regarding credit cards?",
  options: ["Surge in currency wars", "Possible fallouts from defaults", "Increased market regulations", "Declining trade deficits"],
  correctAnswerIndex: 1,
  explanation: "The text mentions the problematic issue of potential fallouts from defaults in the credit card market, posing risks similar to the sub-prime borrower defaults.",
  ),

  Question(
  questionText: "Why is it mentioned that emerging economies like India should have a gradual withdrawal of Quantitative Easing (QE)?",
  options: ["To accelerate economic growth", "To destabilize the global economy", "To avoid currency appreciation", "To increase foreign investments"],
  correctAnswerIndex: 2,
  explanation: "The text indicates that a gradual withdrawal of QE is necessary for emerging economies like India to prevent currency appreciation and avoid destabilizing the global economy.",
  ),

  Question(
  questionText: "What crucial role does the text suggest for global supervision in the global financial system?",
  options: ["Oversight mechanism", "Direct financial intervention", "Trade liberalization", "Strict market regulations"],
  correctAnswerIndex: 0,
  explanation: "The text emphasizes the crucial role of global supervision in providing an oversight mechanism to the global financial system.",
  ),

  Question(
  questionText: "According to the text, what is the ultimate aim behind the role of emerging economies in reshaping the global economy?",
  options: ["Dominating global politics", "Reviving protectionist policies", "Reshaping global economic growth", "Avoiding multilateral trade agreements"],
  correctAnswerIndex: 2,
  explanation: "The text suggests that emerging economies have a crucial role in reshaping global economic growth rather than adopting protectionist policies.",
  ),

  Question(
  questionText: "What is one of the primary reasons for the stalled conclusion of the Doha Round of negotiations according to the text?",
  options: ["Disagreement over dispute resolution mechanisms", "Lack of consensus on intellectual property rights", "Market access initiatives in agriculture and industrial sectors", "Inability to establish investment measures"],
  correctAnswerIndex: 2,
  explanation: "The text points out that the stumbling block to the conclusion of the Doha Round is the lack of consensus on market access initiatives in agriculture and industrial sectors across countries.",
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
  explanation: "Special Products (SP) in the agricultural sector refer to products exempted from tariff reduction to safeguard the livelihoods of those involved in their production."
  ),

  Question(
  questionText: "Why does the text suggest a need for a broader outlook in agricultural negotiations at the WTO?",
  options: ["To enforce strict tariff reductions for agricultural goods", "To maintain high protection levels for agricultural sectors globally", "To promote increased trade and economic improvement in the agricultural sector", "To introduce measures leading to complete self-sufficiency in food production"],
  correctAnswerIndex: 2,
  explanation: "The text emphasizes the necessity for a broader outlook in agricultural negotiations at the WTO to promote increased trade, leading to economic improvement in the agricultural sector.",
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
    home: guri(),
  ));
}

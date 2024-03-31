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

class c_m extends StatefulWidget {
  final String? userIdentifier;

  c_m({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<c_m> createState() => _c_mState();
}

class _c_mState extends State<c_m> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



  Question(
  questionText: "What is the purpose of the Capital Market as described in the text?",
  options: [
  "To regulate banking operations",
  "To facilitate trade between countries",
  "To meet the capital requirements of ventures and industries",
  "To control inflation in the economy"
  ],
  correctAnswerIndex: 2,
  explanation: "The Capital Market's primary function is to meet the capital requirements of ventures and Certainly! Here are additional questions based on the provided text"),

  Question(
  questionText: "What are the primary functions of Stock Exchanges according to the text?",
  options: [
  "To regulate the banking sector",
  "To facilitate foreign trade",
  "To allow direct raising of money by companies from the public",
  "To facilitate trading of stocks and shares"
  ],
  correctAnswerIndex: 3,
  explanation: "Stock Exchanges primarily facilitate trading of stocks and shares."
  ),

  Question(
  questionText: "Differentiate between BSE SENSEX and NSE NIFTY as mentioned in the text.",
  options: [
  "BSE SENSEX consists of 50 major companies, while NSE NIFTY comprises 30 financially strong companies.",
  "BSE SENSEX is an indicator of 30 major companies, while NSE NIFTY comprises 50 major companies.",
  "BSE SENSEX represents Indian equity market, while NSE NIFTY is a benchmark index for the global market.",
  "BSE SENSEX includes commodities like Base Metals and Gold, while NSE NIFTY focuses on bonds and securities."
  ],
  correctAnswerIndex: 1,
  explanation: "BSE SENSEX is an index of 30 financially strong companies, while NSE NIFTY comprises 50 major companies listed on NSE."
  ),

  Question(
  questionText: "Explain the concept of 'free-float market capitalization' introduced by SEBI.",
  options: [
  "It represents the total market capitalization of a company including the shares held by promoters.",
  "It indicates the number of shares available for trading in the stock market excluding shares of the promoters.",
  "It signifies the total shares of a company multiplied by their share price at the stock market.",
  "It denotes the wealth of an individual based on the number of shares held."
  ],
  correctAnswerIndex: 1,
  explanation: "'Free-float market capitalization' represents the number of shares available for trading in the stock market excluding shares of the promoters."
  ),

  Question(
  questionText: "What is the role of Mutual Funds in the context of the stock market?",
  options: [
  "They eliminate all risks associated with stock market investments",
  "They pool money from the public and invest in the stock market to minimize risk",
  "They solely invest in government securities",
  "They offer life insurance plans combined with stock market investments"
  ],
  correctAnswerIndex: 1,
  explanation: "Mutual Funds pool money from the public and invest in the stock market to minimize risk associated with investments."
  ),

  Question(
  questionText: "Explain the objective behind the creation of Unit-Linked Insurance Plans (ULIPs) as mentioned in the text.",
  options: [
  "To solely provide life insurance cover without any investment benefits",
  "To attract a larger number of people by combining life insurance with stock market investments",
  "To eliminate risks associated with stock market investments",
  "To offer high returns without any risk in the stock market"
  ],
  correctAnswerIndex: 1,
  explanation: "ULIPs were created to attract a larger number of people by combining life insurance with stock market investments."
  ),

  Question(
  questionText: "What regulatory conflict arises between IRDA and SEBI in the context of insurance companies' investments?",
  options: [
  "Conflict arises regarding the control of stock market operations",
  "Conflict arises concerning the issuance of IPOs and FPOs",
  "Conflict arises in regulating insurance companies' investments in mutual funds",
  "Conflict arises over regulating the primary market operations"
  ],
  correctAnswerIndex: 2,
  explanation: "Regulatory conflict arises between IRDA and SEBI regarding the regulation of insurance companies' investments in mutual funds."

  ),

  Question(
  questionText: "Differentiate between 'Share capital' and 'Debentures' based on the information provided.",
  options: [
  "Share capital is borrowed funds with fixed interest, while Debentures represent ownership in a company.",
  "Share capital is divided units of a company's capital, while Debentures are long-term borrowed funds with a fixed maturity period.",
  "Share capital is short-term borrowed funds, while Debentures represent ownership in a company.",
  "Share capital is a contract between parties, while Debentures are units into which a company's capital is divided."
  ],
  correctAnswerIndex: 1,
  explanation: "Share capital represents divided units of a company's capital, while Debentures are long-term borrowed funds with a fixed maturity period.",
  ),

  Question(
  questionText: "What role does SEBI (Securities Exchange Board of India) play in the context of the capital market?",
  options: [
  "SEBI sets the interest rates for bonds and debentures",
  "SEBI regulates the pricing of shares and bonds in the primary market",
  "SEBI controls the functioning of banks and financial institutions",
  "SEBI manages the issuance of IPOs and FPOs in the stock market"
  ],
  correctAnswerIndex: 1,
  explanation: "SEBI regulates the pricing and ensures complete disclosures of companies accessing the primary market for shares and bonds.",
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
    home: c_m(),
  ));
}

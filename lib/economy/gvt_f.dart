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

class gvt_f extends StatefulWidget {
  final String? userIdentifier;

  gvt_f({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<gvt_f> createState() => _gvt_fState();
}

class _gvt_fState extends State<gvt_f> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




  Question(
  questionText: "What does the term 'fiscal policy' refer to?",
  options: [
  "The manner in which the government borrows money",
  "The way the government spends its resources",
  "The government's strategy to earn money through business ventures",
  "The process of regulating taxes"
  ],
  correctAnswerIndex: 1,
  explanation: "Fiscal policy refers to the manner in which the government raises resources and spends them in terms of requirements and national priorities.",
  ),

  Question(
  questionText: "What is the primary source of revenue receipts for the government in India?",
  options: [
  "Capital receipts",
  "Grants and assistance",
  "Dividends from public sector entities",
  "Tax revenue"
  ],
  correctAnswerIndex: 3,
  explanation: "Tax revenue constitutes 84% of the total receipts and is the primary source of revenue for the Indian government.",
  ),

  Question(
  questionText: "What is the primary characteristic of Zero-Based Budgeting (ZBB)?",
  options: [
  "Allocating funds based on previous year's budget",
  "Justifying all expenses for each financial year",
  "Setting a fixed budget for every department",
  "Eliminating budget allocations entirely"
  ],
  correctAnswerIndex: 1,
  explanation: "Zero-Based Budgeting (ZBB) involves justifying all expenses for each financial year, starting the budgeting process from a 'zero base'."
  ),

  Question(
  questionText: "What purpose does the Outcome Budget serve in the budgetary process?",
  options: [
  "Allocating resources for future projects",
  "Evaluating the previous budget's allocations",
  "Determining the total budgetary needs",
  "Outlining the yearly financial goals"
  ],
  correctAnswerIndex: 1,
  explanation: "The Outcome Budget assesses and reports the utilization and outcomes of the budget allocations from the previous budget, providing a progress report on how various Ministries and Departments utilized their budgetary allocations."
  ),

  Question(
  questionText: "What does Performance Budgeting aim to integrate with budget allocation?",
  options: [
  "Social policies",
  "Overall planning",
  "Public spending",
  "Government regulations"
  ],
  correctAnswerIndex: 1,
  explanation: "Performance Budgeting aims to integrate budget allocation with overall planning of the country, intending to make planning, execution, and evaluation of government policies more systematic."
  ),



  Question(
  questionText: "What major tax reform was implemented in India on the midnight of 1st July 2017, aimed at unifying multiple central and state levies?",
  options: ["Sales Tax", "Income Tax Amendment", "Goods and Services Tax (GST)", "Property Tax Overhaul"],
  correctAnswerIndex: 2,
  explanation: "Goods and Services Tax (GST) was introduced on the midnight of 1st July 2017, amalgamating various central and state taxes into a single tax structure.",
  ),

  Question(
  questionText: "What is the primary purpose of the Economic Survey presented in the Indian Parliament before the budget?",
  options: [
  "To outline tax proposals",
  "To review the economy",
  "To present expenditure proposals",
  "To discuss charged expenditures"
  ],
  correctAnswerIndex: 1,
  explanation: "The primary objective of the Economic Survey presented before the budget in the Indian Parliament is to review the state of the economy.",
  ),

  Question(
  questionText: "What does 'charged expenditure' refer to in the Indian budget context?",
  options: [
  "Spending approved by Parliament",
  "Expenditure needing special approval",
  "Expenses incurred without Parliament's approval",
  "Expenditure for social welfare programs"
  ],
  correctAnswerIndex: 2,
  explanation: "'Charged expenditure' in the Indian budget context signifies expenses incurred by the government without the need for Parliament's approval, such as salaries for certain constitutional positions and meeting interest obligations.",
  ),

  Question(
  questionText: "What are the types of budgets known in Indian financial planning?",
  options: [
  "Annual and Bi-annual budgets",
  "Interim and Long-term budgets",
  "Vote on account and Charged expenditure",
  "Interim and Vote on account"
  ],
  correctAnswerIndex: 3,
  explanation: "The types of budgets in Indian financial planning are 'Interim' and 'Vote on account'. Interim budgets cover a period less than a full year, while Vote on account seeks approval for ongoing expenditure without proposing fresh expenditures or tax changes.",
  ),

  Question(
  questionText: "What is the objective behind advancing the budget presentation date by the Indian government?",
  options: [
  "To delay the approval process",
  "To align with international practices",
  "To allow more time for government departments",
  "To ensure constitutional approval before the financial year begins"
  ],
  correctAnswerIndex: 3,
  explanation: "Advancing the budget presentation date in India aims to have the budget constitutionally approved by Parliament and assented to by the President before the financial year commences on April 1.",
  ),

  Question(
  questionText: "Why was the distinction between Plan and Non-Plan expenditure abolished in India?",
  options: [
  "To prioritize Non-Plan expenditure",
  "To focus on productive use of government resources",
  "To increase Plan expenditure",
  "To enhance revenue generation"
  ],
  correctAnswerIndex: 1,
  explanation: "The abolition of the distinction between Plan and Non-Plan expenditure aimed to shift the focus towards improving the quality of government spending by concentrating on the productive use of resources rather than solely on the classification of expenditure.",
  ),

  Question(
  questionText: "What significant change was implemented regarding the Railway Budget in India?",
  options: [
  "Merging it with the Defense Budget",
  "Presenting it along with the State Budgets",
  "Including it in the Union Budget",
  "Creating a separate Railway Budget session"
  ],
  correctAnswerIndex: 2,
  explanation: "The significant change made was merging the Railway Budget with the Union Budget in India.",
  ),

  Question(
  questionText: "What is the primary objective of Goods and Services Tax (GST) implementation in India?",
  options: ["To decrease tax rates for businesses", "To make tax collection more complicated", "To unify various central and state taxes", "To increase taxation on imported goods"],
  correctAnswerIndex: 2,
  explanation: "The primary aim of GST implementation in India was to unify multiple central and state taxes into a single tax system.",
  ),

  Question(
  questionText: "What is the tax mechanism where tax paid at the previous stage of a transaction can be offset at the next stage, thus benefiting the industry and consumers?",
  options: ["Tax Offset System", "Tax Credit System", "Tax Rebate System", "Tax Refund System"],
  correctAnswerIndex: 1,
  explanation: "The tax mechanism that allows tax paid at the previous stage of a transaction to be offset at the next stage is called the Tax Credit System, benefiting both the industry and consumers.",
  ),

  Question(
  questionText: "How is Goods and Services Tax (GST) expected to impact India's GDP growth according to estimates?",
  options: ["Decrease GDP growth by 2-3%", "Have no impact on GDP growth", "Increase GDP growth by 1.5-2%", "Increase GDP growth by 5-6%"],
  correctAnswerIndex: 2,
  explanation: "GST implementation is estimated to increase India's GDP growth by approximately 1.5-2%.,"),


  Question(
  questionText: "What is the Budgetary Deficit as per the given information?",
  options: [
  "₹ 1,75,000 crores",
  "₹ 85,000 crores",
  "₹ 1,00,000 crores",
  "₹ 75,000 crores"
  ],
  correctAnswerIndex: 3,
  explanation: "Budgetary Deficit = Total Receipts - Total Expenditure = ₹ 1,00,000 crores - ₹ 1,75,000 crores = ₹ 75,000 crores.",
  ),

  Question(
  questionText: "What is the significance of Revenue Deficit in the government's budget according to the text?",
  options: [
  "It implies borrowing for creating assets",
  "It leads to an increase in tax revenue",
  "It signifies surplus in government accounts",
  "It involves borrowing for meeting government's consumption"
  ],
  correctAnswerIndex: 3,
  explanation: "Revenue Deficit signifies borrowing money for meeting the consumption of the government, not for asset creation.",
  ),

  Question(
  questionText: "What was the intended objective of the Fiscal Responsibility and Budget Management Act (FRBMA)?",
  options: [
  "To increase the fiscal deficit",
  "To reduce revenue deficit by 0.5% every year",
  "To relax the fiscal deficit targets",
  "To maintain a balanced budget"
  ],
  correctAnswerIndex: 1,
  explanation: "FRBMA aimed to gradually reduce revenue deficit by 0.5% annually to ultimately bring it down to zero by a specified year.",
  ),

  Question(
  questionText: "What is the primary goal behind the proposed Goods and Services Tax (GST) regime?",
  options: [
  "To complicate the tax system",
  "To increase tax evasion",
  "To lower the GST rate",
  "To simplify the indirect tax regime"
  ],
  correctAnswerIndex: 3,
  explanation: "The proposed GST aims to simplify the indirect tax system and provide a unified tax rate for goods and services.",
  ),



  Question(
  questionText: "What is the significance of 'ways and means advances' in the government's fiscal management?",
  options: [
  "It's a long-term borrowing scheme for the government",
  "It's a tool for the government to manage temporary mismatches between its receipts and expenditures",
  "It's a tax relief program for low-income individuals",
  "It's a method to stimulate economic growth"
  ],
  correctAnswerIndex: 1,
  explanation: "'Ways and means advances' provide temporary overdrafts to the government to manage temporary mismatches between its receipts and expenditures.",
  ),

  Question(
  questionText: "Why is a deficit budget considered inevitable for the government?",
  options: [
  "It allows the government to increase spending without borrowing",
  "It aligns with the principle of matching spending to income",
  "It helps in controlling inflation effectively",
  "It enables the government to increase revenue without increasing taxes"
  ],
  correctAnswerIndex: 2,
  explanation: "In government budgeting, spending takes precedence over the need for receipts; hence, deficits are common to meet the spending needs.",
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
    home: gvt_f(),
  ));
}

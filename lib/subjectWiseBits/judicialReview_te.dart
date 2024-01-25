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

class judicialReview_te extends StatefulWidget {
  final String? userIdentifier;

  judicialReview_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<judicialReview_te> createState() => _judicialReview_teState();
}

class _judicialReview_teState extends State<judicialReview_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//27.న్యాయ సమీక్ష
    Question(
      questionText : "రాజ్యాంగంలో తొమ్మిదో షెడ్యూల్‌తో పాటు ఆర్టికల్ 31B ఎప్పుడు జోడించబడింది?",
      options: ["1951", "1955", "1964", "1972"],
      correctAnswerIndex : 0,
      explanation : "1వ రాజ్యాంగ సవరణ చట్టం 1951 ద్వారా తొమ్మిదో షెడ్యూల్‌తో పాటు ఆర్టికల్ 31B రాజ్యాంగానికి జోడించబడింది.",
    ),

    Question(
      questionText : "తొమ్మిదవ షెడ్యూల్‌లో చేర్చబడిన చట్టాలు మరియు నిబంధనలు రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణాన్ని ఉల్లంఘిస్తే వాటిని సవాలు చేయడానికి అవకాశం ఉందని సుప్రీం కోర్ట్ ఏ సందర్భంలో తీర్పు చెప్పింది?",
      options: [" కేశవానంద భారతి కేసు (1973)", " వామన్ రావ్ కేసు (1980)", "IR కోయెల్హో కేసు (2007)", "ఇందిరా గాంధీ కేసు (1975)"],
      correctAnswerIndex : 0,
      explanation: " కేశవానందలో భారతి కేసు (1973), తొమ్మిదవ షెడ్యూల్‌లో చేర్చబడిన చట్టాలు మరియు నిబంధనలు రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణాన్ని ఉల్లంఘిస్తే సవాలు చేయడానికి సిద్ధంగా ఉన్నాయని సుప్రీంకోర్టు తీర్పు చెప్పింది.",
    ),

    Question(
      questionText : "సుప్రీం కోర్ట్ ప్రకారం, ఏప్రిల్ 24, 1973 తర్వాత తొమ్మిదవ షెడ్యూల్‌లో ఉంచబడిన చట్టం, కోర్టులో సవాలు చేయడానికి ఎప్పుడు సిద్ధంగా ఉంటుంది?",
      options: ["అది ఆర్టికల్స్ 14, 15, 19 మరియు 21 కింద హామీ ఇవ్వబడిన ప్రాథమిక హక్కులను ఉల్లంఘిస్తే", "ఇది రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణాన్ని దెబ్బతీస్తే", "అది రాష్ట్రపతి ఆమోదించకపోతే", "ఇది రాష్ట్రానికి విరుద్ధంగా ఉంటే చట్టాలు"],
    correctAnswerIndex : 1,
    explanation: "సుప్రీంకోర్టు ప్రకారం, ఏప్రిల్ 24, 1973 తర్వాత తొమ్మిదవ షెడ్యూల్‌లో ఉంచబడిన చట్టం రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణాన్ని దెబ్బతీస్తే కోర్టులో సవాలు చేయవచ్చు.",
    ),
    Question(
      questionText : "సుప్రీం కోర్ట్ 99వ రాజ్యాంగ సవరణ, 2014 మరియు జాతీయ న్యాయ నియామకాల కమిషన్ (NJAC) చట్టం, 2014 రెండింటినీ రాజ్యాంగ విరుద్ధమని మరియు శూన్యమని ఏ సందర్భంలో ప్రకటించింది?",
      options: [" గోలక్‌నాథ్ కేసు (1967)", "బ్యాంక్ జాతీయీకరణ కేసు (1970)", "ప్రైవి పర్సస్ అబాలిషన్ కేసు (1971)", "2015"],
    correctAnswerIndex : 3,
    explanation: "2015లో, సుప్రీంకోర్టు 99వ రాజ్యాంగ సవరణ, 2014 మరియు నేషనల్ జ్యుడీషియల్ అపాయింట్‌మెంట్స్ కమిషన్ (NJAC) చట్టం, 2014 రెండింటినీ రాజ్యాంగ విరుద్ధమైనది మరియు శూన్యమైనదిగా ప్రకటించింది.",
    ),

    Question(
      questionText : "జస్టిస్ సయ్యద్ షా మొహమ్మద్ క్వాద్రీ న్యాయ సమీక్షను వర్గీకరించిన మూడు వర్గాలు ఏమిటి ?",
      options: ["రాజ్యాంగ సవరణల యొక్క న్యాయ సమీక్ష, చట్టం యొక్క న్యాయ సమీక్ష, పరిపాలనా చర్య యొక్క న్యాయ సమీక్ష", "చట్టాల సమీక్ష , పరిపాలనా సమీక్ష, రాజ్యాంగ సమీక్ష", "రాజ్యాంగ సవరణల సమీక్ష, శాసన సమీక్ష, పరిపాలనా చర్య సమీక్ష", " క్వాడ్రీ సమీక్ష , మార్షల్ సమీక్ష, మాడిసన్ సమీక్ష"],
    correctAnswerIndex : 0,
    explanation : "జస్టిస్ సయ్యద్ షా మొహమ్మద్ క్వాద్రీ న్యాయ సమీక్షను మూడు వర్గాలుగా వర్గీకరించారు: 1) రాజ్యాంగ సవరణలపై న్యాయ సమీక్ష, 2) చట్టం యొక్క న్యాయ సమీక్ష, 3) పరిపాలనా చర్య యొక్క న్యాయ సమీక్ష.",
    ),

    Question(
      questionText : "భారతదేశంలో న్యాయ సమీక్ష అధికారం యొక్క ప్రాముఖ్యత ఏమిటి?",
      options: ["కార్యనిర్వాహక శక్తిని పెంచడం", "ప్రాథమిక హక్కులను అణగదొక్కడం", "రాజ్యాంగం యొక్క ఆధిపత్య సూత్రాన్ని సమర్థించడం, సమాఖ్య సమతుల్యతను కాపాడటం మరియు పౌరుల ప్రాథమిక హక్కులను రక్షించడం", "రాజ్యాంగ విరుద్ధమైన సవరణలకు మద్దతు ఇవ్వడం"],
      correctAnswerIndex : 2,
      explanation : "భారతదేశంలో న్యాయ సమీక్ష యొక్క అధికారం రాజ్యాంగం యొక్క అత్యున్నత సూత్రాన్ని సమర్థించడం, సమాఖ్య సమతుల్యతను కాపాడుకోవడం మరియు పౌరుల ప్రాథమిక హక్కులను రక్షించడం కోసం ముఖ్యమైనది.",
    ),
    Question(
      questionText : "ప్రాథమిక హక్కులకు విరుద్ధంగా లేదా కించపరిచే చట్టాలు శూన్యం మరియు శూన్యం అని ఏ ఆర్టికల్ ప్రకటించింది?",
      options: ["ఆర్టికల్ 32", "ఆర్టికల్ 131", "ఆర్టికల్ 13", "ఆర్టికల్ 136"],
      correctAnswerIndex : 2,
      explanation : "ప్రాథమిక హక్కులకు విరుద్ధమైన లేదా కించపరిచే చట్టాలు శూన్యం మరియు శూన్యం అని ఆర్టికల్ 13 ప్రకటించింది.",
    ),

    Question(
      questionText : "ఆర్టికల్ 32 ప్రకారం, ఇది ఏ హక్కుకు హామీ ఇస్తుంది మరియు ప్రాథమిక హక్కుల అమలు కోసం ఏ కోర్టుకు వెళ్లవచ్చు?",
      options: ["ఆస్తి హక్కు, హైకోర్టును తరలించు", "సమానత్వ హక్కు, సుప్రీంకోర్టును తరలించు", "విద్యా హక్కు, జిల్లా కోర్టును తరలించు", "గోప్యత హక్కు, రాజ్యాంగ న్యాయస్థానాన్ని తరలించు"],
      correctAnswerIndex : 1,
      explanation : "ప్రాథమిక హక్కుల అమలు కోసం సుప్రీంకోర్టును ఆశ్రయించే హక్కు ఆర్టికల్ 32 హామీ ఇస్తుంది.",
    ),

    Question(
      questionText : "చట్టం లేదా వాస్తవం యొక్క ఏదైనా ప్రశ్నపై సుప్రీంకోర్టు అభిప్రాయాన్ని కోరడానికి రాష్ట్రపతికి ఏ ఆర్టికల్ అధికారం ఇస్తుంది?",
      options: ["ఆర్టికల్ 131", "ఆర్టికల్ 132", "ఆర్టికల్ 136", "ఆర్టికల్ 143"],
      correctAnswerIndex : 3,
      explanation : "ఆర్టికల్ 143 చట్టం లేదా వాస్తవం యొక్క ఏదైనా ప్రశ్నపై సుప్రీంకోర్టు అభిప్రాయాన్ని కోరడానికి రాష్ట్రపతికి అధికారం ఇస్తుంది.",
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
    home: judicialReview_te(),
  ));
}

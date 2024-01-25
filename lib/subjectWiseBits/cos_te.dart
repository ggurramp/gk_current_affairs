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

class cos_te extends StatefulWidget {
  final String? userIdentifier;

  cos_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cos_te> createState() => _cos_teState();
}

class _cos_teState extends State<cos_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//72 .కో-ఆపరేటివ్ సొసైటీ

    Question(
      questionText: "సహకార సంఘాలకు సంబంధించి 97వ రాజ్యాంగ సవరణ చట్టం ద్వారా ఏ ప్రాథమిక హక్కు కల్పించబడింది?",
      options:["విద్యా హక్కు", "సహకార సంఘాల ఏర్పాటు హక్కు", "వాక్ స్వాతంత్ర్య హక్కు", "ఆస్తి హక్కు"],
      correctAnswerIndex: 1,
      explanation:"97వ రాజ్యాంగ సవరణ చట్టం సహకార సంఘాలను ఏర్పాటు చేసుకునే హక్కును ప్రాథమిక హక్కుగా మంజూరు చేసింది.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని పార్ట్ IX-B కింద, సహకార సంఘాలు ఏ సూత్రాలపై ఆధారపడి ఉండాలి?",
      options:["అధికారవాదం మరియు కేంద్రీకృత నియంత్రణ", "స్వచ్ఛంద నిర్మాణం, ప్రజాస్వామ్య నియంత్రణ, సభ్యుడు-ఆర్థిక భాగస్వామ్యం, స్వయంప్రతిపత్తి పనితీరు", "రాచరికం మరియు ఒలిగార్కి", "కార్పొరేట్ నిర్మాణం మరియు లాభాల గరిష్టీకరణ"],
      correctAnswerIndex: 1,
      explanation:"సహకార సంఘాలు స్వచ్ఛంద నిర్మాణం, ప్రజాస్వామ్య నియంత్రణ, సభ్య-ఆర్థిక భాగస్వామ్యం మరియు స్వయంప్రతిపత్త పనితీరు సూత్రాలపై ఆధారపడి ఉండాలి.",
    ),

    Question(
      questionText: "నిబంధనల ప్రకారం కో-ఆపరేటివ్ సొసైటీకి ఎంతమంది డైరెక్టర్లు ఉండవచ్చు?",
      options:["పేర్కొనబడలేదు", "15 మంది డైరెక్టర్లు వరకు", "21 మంది డైరెక్టర్లు వరకు", "30 మంది డైరెక్టర్లు వరకు"],
      correctAnswerIndex: 2,
      explanation:"సహకార సంఘం డైరెక్టర్ల గరిష్ట సంఖ్య ఇరవై ఒక్క మందికి మించకూడదు.",
    ),

    Question(
      questionText: "సహకార సంఘం యొక్క బోర్డు ఏ పరిస్థితులలో భర్తీ చేయబడవచ్చు లేదా సస్పెన్షన్‌లో ఉంచబడుతుంది?",
      options:["బోర్డు సభ్యుల మధ్య ఏదైనా అసమ్మతి", "నిరంతర డిఫాల్ట్, నిర్లక్ష్యం, పక్షపాత చర్యలు, ప్రతిష్టంభన, ఎన్నికల వైఫల్యం", "ప్రభుత్వ నాయకత్వంలో మార్పు", "ఆర్థిక పరిమితులను మించిన బోర్డు"],
      correctAnswerIndex: 1,
      explanation:"నిరంతర డిఫాల్ట్, నిర్లక్ష్యం, పక్షపాత చర్యలు, ప్రతిష్టంభన లేదా ఎన్నికల నిర్వహణలో వైఫల్యం వంటి సందర్భాల్లో బోర్డు భర్తీ చేయబడవచ్చు లేదా సస్పెన్షన్‌లో ఉంచబడవచ్చు.",
    ),

    Question(
      questionText: "సహకార సంఘం యొక్క ఖాతాలను ఎవరు ఆడిట్ చేస్తారు మరియు ఆడిటర్‌కు ఎలాంటి అర్హతలు ఉండాలి?",
      options:["నిర్దిష్ట అర్హతలు లేని ప్రభుత్వం నియమించిన ఆడిటర్లు", "బోర్డు సభ్యులచే ఎంపిక చేయబడిన ఆడిటర్లు", "అమోదించిన అర్హతలతో జనరల్ బాడీచే నియమించబడిన ఆడిటర్", "సహకార సంఘాలకు ఆడిట్ అవసరం లేదు"],
      correctAnswerIndex: 2,
      explanation:"ప్రతి సహకార సంఘం రాష్ట్ర ప్రభుత్వంచే ఆమోదించబడిన అర్హతలతో జనరల్ బాడీచే నియమించబడిన ఆడిటర్ లేదా ఆడిటింగ్ సంస్థచే ఆడిట్ చేయబడుతుంది.",
    ),
    Question(
      questionText: "ఏ సవరణ చట్టం సహకార సంఘాలకు రాజ్యాంగ హోదా మరియు రక్షణ కల్పించింది?",
      options:["94వ రాజ్యాంగ సవరణ చట్టం", "97వ రాజ్యాంగ సవరణ చట్టం", "101వ రాజ్యాంగ సవరణ చట్టం", "105వ రాజ్యాంగ సవరణ చట్టం"],
      correctAnswerIndex: 1,
      explanation:"2011 97వ రాజ్యాంగ సవరణ చట్టం సహకార సంఘాలకు రాజ్యాంగ హోదా మరియు రక్షణ కల్పించింది.",
    ),
    Question(
      questionText: "సవరణలో పేర్కొన్న కారణాల ప్రకారం, సహకార రంగంలో ఏ బలహీనతలు గుర్తించబడ్డాయి?",
      options:[
        "తగని వృత్తి నైపుణ్యం మరియు తక్కువ ఉత్పాదకత",
        "పెరుగుదల మరియు విస్తరణ లేకపోవడం",
        "రాష్ట్ర చట్టాల నుండి అధిక జోక్యం",
        "ప్రజాస్వామ్య సూత్రాలకు అధిక ప్రాధాన్యత"
      ],
      correctAnswerIndex: 0,
      explanation:"సహకార రంగంలో గుర్తించబడిన బలహీనతలలో సరిపడని వృత్తి నైపుణ్యం కూడా పేలవమైన సేవ మరియు తక్కువ ఉత్పాదకతకు దారితీసింది.",
    ),

    Question(
      questionText: "సహకార సంఘాలకు సంబంధించి 97వ రాజ్యాంగ సవరణ చట్టం యొక్క ప్రధాన లక్ష్యం ఏమిటి?",
      options:[
        "ప్రభుత్వ జోక్యాన్ని పెంచడానికి",
        "సహకార సంఘాల వృద్ధిని పరిమితం చేయడానికి",
        "ప్రజాస్వామ్య, వృత్తిపరమైన, స్వయంప్రతిపత్తి మరియు ఆర్థికంగా మంచి పనితీరును నిర్ధారించడానికి",
        "సహకార సంఘాల ఏర్పాటును నిరుత్సాహపరిచేందుకు"
      ],
      correctAnswerIndex: 2,
      explanation:"97వ రాజ్యాంగ సవరణ చట్టం యొక్క ప్రధాన లక్ష్యం సహకార సంఘాల ప్రజాస్వామ్య, వృత్తిపరమైన, స్వయంప్రతిపత్తి మరియు ఆర్థికంగా మంచి పనితీరును నిర్ధారించడం.",
    ),

    Question(
      questionText: "కేంద్ర ప్రభుత్వం రాజ్యాంగంలో కొత్త భాగాన్ని ఎందుకు చేర్చాలని ప్రతిపాదించింది?",
      options:[
        "సహకార సంఘాల స్వయంప్రతిపత్తిని పరిమితం చేయడానికి",
        "అనవసరమైన బయటి జోక్యాలను అందించడానికి",
        "ప్రజాస్వామ్య, స్వయంప్రతిపత్తి మరియు వృత్తిపరమైన పనితీరు వంటి ముఖ్యమైన అంశాలను కవర్ చేయడానికి",
        "సహకార సంఘాల పనితీరును నిరుత్సాహపరిచేందుకు"
      ],
      correctAnswerIndex: 2,
      explanation:"ప్రజాస్వామ్య, స్వయంప్రతిపత్తి మరియు వృత్తిపరమైన అంశాలతో సహా సహకార పనితీరు యొక్క ముఖ్యమైన అంశాలను కవర్ చేయడానికి రాజ్యాంగంలో కొత్త భాగాన్ని చేర్చాలని కేంద్ర ప్రభుత్వం ప్రతిపాదించింది.",
    ),
    Question(
      questionText: "97వ రాజ్యాంగ సవరణ చట్టం యొక్క రాజ్యాంగ చెల్లుబాటుకు సంబంధించి గుజరాత్ హైకోర్టు యొక్క ప్రకటన ఏమిటి?",
      options:[
        "ఇది సవరణను చెల్లుబాటు అయ్యేదిగా సమర్థించింది",
        "ఇది రాష్ట్ర ఆమోదం లేకపోవడంతో సవరణ అల్ట్రా వైర్లను ప్రకటించింది",
        "సవరణ చెల్లుబాటుపై దీనికి ఎటువంటి అభిప్రాయం లేదు",
        "ఇది కొన్ని సవరణలతో సవరణకు మద్దతు ఇచ్చింది"
      ],
      correctAnswerIndex: 1,
      explanation:"97వ రాజ్యాంగ సవరణ చట్టం ఆర్టికల్ 368 ప్రకారం రాష్ట్ర ఆమోదం లేకపోవడం వల్ల రాజ్యాంగానికి తీవ్ర వ్యతిరేకమని గుజరాత్ హైకోర్టు ప్రకటించింది.",
    ),

    Question(
      questionText: "97వ రాజ్యాంగ సవరణ చట్టానికి సంబంధించి గుజరాత్ హైకోర్టు నిర్ణయంపై సుప్రీంకోర్టు 2019 తీర్పు ఎలాంటి ప్రభావం చూపింది?",
      options:[
        "సుప్రీం కోర్ట్ మొత్తం నిర్ణయాన్ని తోసిపుచ్చింది",
        "సుప్రీం కోర్ట్ మొత్తం నిర్ణయాన్ని సమర్థించింది",
        "సుప్రీం కోర్ట్ కొన్ని మినహాయింపులతో తీర్పును సమర్థించింది",
        "సవరణ పూర్తిగా చెల్లుబాటు అవుతుందని సుప్రీం కోర్టు ప్రకటించింది"
      ],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగంలోని పార్ట్ IX-B మొత్తాన్ని కొట్టివేసినంత వరకు మినహా గుజరాత్ హైకోర్టు తీర్పును సుప్రీం కోర్టు సమర్థించింది.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్ నిర్ణయం ప్రకారం, రాజ్యాంగంలోని పార్ట్ IX-B ఏ సందర్భంలో పనిచేస్తుంది?",
      options:[
        "నిర్దిష్ట రాష్ట్రాల్లో మాత్రమే పనిచేస్తాయి",
        "దేశవ్యాప్తంగా ఆపరేటివ్",
        "ప్రభుత్వ నిధులతో సహకార సంఘాలకు మాత్రమే పనిచేయడం",
        "కేంద్రపాలిత ప్రాంతాలలో మాత్రమే పని చేస్తుంది"
      ],
      correctAnswerIndex: 1,
      explanation:"రాజ్యాంగంలోని IX-B భాగం రాష్ట్రాలలో మరియు కేంద్రపాలిత ప్రాంతాలలో బహుళ-రాష్ట్ర సహకార సంఘాలకు సంబంధించినంత వరకు మాత్రమే పనిచేస్తుందని సుప్రీం కోర్టు ప్రకటించింది.",
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
    home: cos_te(),
  ));
}

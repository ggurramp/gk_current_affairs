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

class ndm_te extends StatefulWidget {
  final String? userIdentifier;

  ndm_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ndm_te> createState() => _ndm_teState();
}

class _ndm_teState extends State<ndm_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//68.నేషనల్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ

    Question(
      questionText: "భారతదేశంలో నేషనల్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ (NDMA) యొక్క ముఖ్య ఉద్దేశ్యం ఏమిటి?",
      options:[
        "పర్యావరణ విధానాలను నియంత్రించడానికి",
        "సాంకేతికతతో నడిచే కార్యక్రమాలను అమలు చేయడానికి",
        "విపత్తు నిర్వహణ ప్రణాళికలను అమలు చేయడానికి మరియు సమగ్ర విధానాన్ని నిర్ధారించడానికి",
        "అంతర్జాతీయ సంబంధాలను నిర్వహించడానికి"],
      correctAnswerIndex: 2,
      explanation:"దేశంలో విపత్తు నిర్వహణకు సమగ్ర మరియు సమీకృత విధానాన్ని నడిపించడానికి మరియు అమలు చేయడానికి NDMA స్థాపించబడింది.",
    ),

    Question(
      questionText: "NDMA ఎక్స్-అఫీషియో చైర్‌పర్సన్ ఎవరు?",
      options:[
        "భారత రాష్ట్రపతి",
        "భారత ప్రధాన మంత్రి",
        "హోం వ్యవహారాల మంత్రి",
        "భారత ప్రధాన న్యాయమూర్తి"],
      correctAnswerIndex: 1,
      explanation:"NDMA యొక్క ఎక్స్-అఫీషియో చైర్‌పర్సన్ భారతదేశ ప్రధానమంత్రి.",
    ),

    Question(
      questionText: "టెక్స్ట్‌లో పేర్కొన్న విధంగా NDMA యొక్క విజన్ ఏమిటి?",
      options:[
        "ఆర్థిక స్థితిస్థాపకతను నిర్మించడానికి",
        "అంతర్జాతీయ సహకారాన్ని పెంపొందించడానికి",
        "విపత్తు-తట్టుకునే నిర్మాణాలను అభివృద్ధి చేయడానికి",
        "సమగ్రమైన, చురుకైన, సాంకేతికతతో నడిచే మరియు అన్ని వాటాదారులతో కూడిన స్థిరమైన అభివృద్ధి వ్యూహం ద్వారా సురక్షితమైన మరియు విపత్తు-తట్టుకునే భారతదేశాన్ని నిర్మించడం"],
      correctAnswerIndex: 3,
      explanation:"సమగ్రమైన, చురుకైన, సాంకేతికతతో నడిచే మరియు అన్ని వాటాదారులతో కూడిన స్థిరమైన అభివృద్ధి వ్యూహం ద్వారా సురక్షితమైన మరియు విపత్తు-తట్టుకునే భారతదేశాన్ని నిర్మించడం NDMA యొక్క దృష్టి.",
    ),

    Question(
      questionText: "NDMA యొక్క లక్ష్యాలు ఏమిటి?",
      options:[
        "సాంస్కృతిక కార్యక్రమాలను ప్రోత్సహించడానికి",
        "పర్యావరణ స్థిరత్వాన్ని నిర్ధారించడానికి",
        "విపత్తు-తట్టుకునే నిర్మాణాలను అభివృద్ధి చేయడానికి",
        "విజ్ఞానం, ఆవిష్కరణ మరియు విద్య ద్వారా అన్ని స్థాయిలలో నివారణ, సంసిద్ధత మరియు స్థితిస్థాపకత యొక్క సంస్కృతిని ప్రోత్సహించడం"],
      correctAnswerIndex: 3,
      explanation:"NDMA యొక్క లక్ష్యాలలో ఒకటి విపత్తు-తట్టుకునే నిర్మాణాలను అభివృద్ధి చేయడం.",
    ),

    Question(
      questionText: "NDMA చే నిర్వహించబడే అదనపు విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "ఆర్థిక మార్కెట్ల నియంత్రణ",
        "వ్యవసాయ పద్ధతుల ప్రచారం",
        "జాతీయ విపత్తు ప్రతిస్పందన దళం (NDRF) యొక్క సాధారణ పర్యవేక్షణ, దిశ మరియు నియంత్రణ యొక్క వ్యాయామం",
        "అంతర్జాతీయ వాణిజ్య ప్రమోషన్"],
      correctAnswerIndex: 2,
      explanation:"NDMA యొక్క అదనపు విధుల్లో ఒకటి జాతీయ విపత్తు ప్రతిస్పందన దళం (NDRF) యొక్క సాధారణ పర్యవేక్షణ, దిశ మరియు నియంత్రణ.",
    ),
    Question(
      questionText: "స్టేట్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ (SDMA) ఎక్స్-అఫీషియో చైర్‌పర్సన్ ఎవరు?",
      options:[
        "రాష్ట్ర ప్రధాన కార్యదర్శి",
        "రాష్ట్ర ముఖ్యమంత్రి",
        "ది చైర్‌పర్సన్ ఆఫ్ ది నేషనల్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ (NDMA)",
        "ది వైస్-ఛైర్‌పర్సన్ ఆఫ్ ది NDMA"],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర ముఖ్యమంత్రి రాష్ట్ర విపత్తు నిర్వహణ అథారిటీ (SDMA) యొక్క ఎక్స్-అఫీషియో చైర్‌పర్సన్.",
    ),

    Question(
      questionText: "టెక్స్ట్‌లో పేర్కొన్న SDMA ఫంక్షన్‌లలో ఒకటి ఏమిటి?",
      options:[
        "పారిశ్రామిక కార్యకలాపాలను నియంత్రించడానికి",
        "అంతర్జాతీయ సంబంధాలను సమన్వయం చేయడానికి",
        "జిల్లా-స్థాయి విపత్తు నిర్వహణ కోసం మార్గదర్శకాలను రూపొందించడానికి",
        "జాతీయ ప్రణాళికను ఆమోదించడానికి"],
      correctAnswerIndex: 2,
      explanation:"జిల్లా-స్థాయి విపత్తు నిర్వహణ కోసం మార్గదర్శకాలను రూపొందించడం SDMA యొక్క విధుల్లో ఒకటి.",
    ),

    Question(
      questionText: "SDMA యొక్క ఎక్స్-అఫీషియో చీఫ్ ఎగ్జిక్యూటివ్ ఆఫీసర్‌గా ఎవరు వ్యవహరిస్తారు?",
      options:[
        "రాష్ట్ర ముఖ్యమంత్రి",
        "ది ఛైర్‌పర్సన్ ఆఫ్ ది NDMA",
        "స్టేట్ ఎగ్జిక్యూటివ్ కమిటీ చైర్ పర్సన్",
        "SDMA యొక్క వైస్-ఛైర్‌పర్సన్"],
      correctAnswerIndex: 2,
      explanation:"స్టేట్ ఎగ్జిక్యూటివ్ కమిటీ చైర్‌పర్సన్ SDMA యొక్క ఎక్స్-అఫీషియో చీఫ్ ఎగ్జిక్యూటివ్ ఆఫీసర్‌గా వ్యవహరిస్తారు.",
    ),

    Question(
      questionText: "అభివృద్ధి ప్రణాళికలను సమీక్షించడంలో SDMAకి ఎలాంటి బాధ్యత ఉంది?",
      options:[
        "ఆర్థిక వృద్ధిని నిర్ధారించండి",
        "విపత్తు నిర్వహణ చర్యలను ఏకీకృతం చేయండి",
        "విద్యా విధానాలను నియంత్రించండి",
        "సమన్వయ రవాణా వ్యవస్థలు"],
      correctAnswerIndex: 1,
      explanation:"నివారణ మరియు ఉపశమన చర్యలు ఏకీకృతమైనట్లు నిర్ధారించడానికి SDMA అభివృద్ధి ప్రణాళికలను సమీక్షిస్తుంది.",
    ),

    Question(
      questionText: "SDMA సభ్యులుగా ఎవరిని నామినేట్ చేయవచ్చు?",
      options:[
        "ఐక్యరాజ్యసమితిచే నామినేట్ చేయబడిన సభ్యులు",
        "ప్రధాన కార్యదర్శి నామినేట్ చేసిన సభ్యులు",
        "ముఖ్యమంత్రి నామినేట్ చేసిన సభ్యులు",
        "ప్రధానమంత్రి నామినేట్ చేసిన సభ్యులు"],
      correctAnswerIndex: 2,
      explanation:"SDMA సభ్యులను రాష్ట్ర ముఖ్యమంత్రి నామినేట్ చేయవచ్చు.",
    ),
    Question(
      questionText: "జిల్లా డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ (DDMA) ఎక్స్-అఫీషియో చైర్‌పర్సన్ ఎవరు?",
      options:[
        "రాష్ట్ర ముఖ్యమంత్రి",
        "జిల్లా యొక్క కలెక్టర్ (లేదా జిల్లా మేజిస్ట్రేట్ లేదా డిప్యూటీ కమిషనర్)",
        "గిరిజన ప్రాంతాలలో జిల్లా కౌన్సిల్ యొక్క ముఖ్య కార్యనిర్వాహక సభ్యుడు",
        "జిల్లా పరిషత్ చైర్ పర్సన్"],
      correctAnswerIndex: 1,
      explanation:"జిల్లాలోని కలెక్టర్ (లేదా జిల్లా మేజిస్ట్రేట్ లేదా డిప్యూటీ కమిషనర్) జిల్లా విపత్తు నిర్వహణ అథారిటీ (DDMA) యొక్క ఎక్స్-అఫీషియో చైర్‌పర్సన్.",
    ),

    Question(
      questionText: "DDMA చీఫ్ ఎగ్జిక్యూటివ్ ఆఫీసర్ పాత్ర ఏమిటి?",
      options:[
        "అంతర్జాతీయ విపత్తు సహాయ చర్యల సమన్వయం",
        "జిల్లా అభివృద్ధి ప్రణాళికల ఆమోదం",
        "జిల్లాలో విపత్తు నిర్వహణ చర్యల అమలు",
        "విపత్తుల సమయంలో చట్టపరమైన చర్యల అమలు"],
      correctAnswerIndex: 3,
      explanation:"DDMA యొక్క ముఖ్య కార్యనిర్వహణాధికారి జిల్లాలో విపత్తు నిర్వహణ చర్యలను సమన్వయం చేయడం మరియు అమలు చేయడం బాధ్యత వహిస్తారు.",
    ),

    Question(
      questionText: "DDMA యొక్క ఎక్స్-అఫీషియో సభ్యులు ఎవరు?",
      options:[
        "రాష్ట్ర ప్రభుత్వం నియమించిన జిల్లా స్థాయి అధికారులు",
        "జిల్లా కౌన్సిల్ యొక్క ముఖ్య కార్యనిర్వాహక సభ్యునిచే నామినేట్ చేయబడిన సభ్యులు",
        "జిల్లా యొక్క సూపరింటెండెంట్ ఆఫ్ పోలీస్ మరియు చీఫ్ మెడికల్ ఆఫీసర్",
        "స్థానిక ప్రభుత్వేతర సంస్థల నుండి ఎన్నికైన ప్రతినిధులు"],
      correctAnswerIndex: 2,
      explanation:"జిల్లా యొక్క సూపరింటెండెంట్ ఆఫ్ పోలీస్ మరియు చీఫ్ మెడికల్ ఆఫీసర్ DDMA యొక్క ఎక్స్-అఫీషియో సభ్యులు.",
    ),

    Question(
      questionText: "టెక్స్ట్ ప్రకారం DDMA యొక్క విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "వ్యవసాయ పద్ధతుల నియంత్రణ",
        "జాతీయ విపత్తు నిర్వహణ విధానాల ఆమోదం",
        "అంతర్జాతీయ విపత్తు సహాయ సమన్వయం",
        "సమాజ శిక్షణ మరియు అవగాహన కార్యక్రమాల సులభతరం"],
      correctAnswerIndex: 4,
      explanation:"DDMA యొక్క విధుల్లో ఒకటి విపత్తు లేదా ఉపశమన నివారణ కోసం కమ్యూనిటీ శిక్షణ మరియు అవగాహన కార్యక్రమాలను సులభతరం చేయడం.",
    ),

    Question(
      questionText: "DDMA యొక్క ముఖ్య కార్యనిర్వహణాధికారిని ఎవరు నియమిస్తారు?",
      options:[
        "రాష్ట్ర ముఖ్యమంత్రి",
        "జిల్లా కౌన్సిల్ యొక్క ముఖ్య కార్యనిర్వాహక సభ్యుడు",
        "జిల్లా పరిషత్ చైర్ పర్సన్",
        "రాష్ట్ర ప్రభుత్వం"],
      correctAnswerIndex: 4,
      explanation:"DDMA యొక్క ముఖ్య కార్యనిర్వహణాధికారిని రాష్ట్ర ప్రభుత్వం నియమిస్తుంది.",
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
    home: ndm_te(),
  ));
}

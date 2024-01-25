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

class fundamentalDuties_te extends StatefulWidget {
  final String? userIdentifier;

  fundamentalDuties_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fundamentalDuties_te> createState() => _fundamentalDuties_teState();
}

class _fundamentalDuties_teState extends State<fundamentalDuties_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

  //అధ్యాయం -10 ప్రాథమిక విధులు
  Question(
  questionText: "భారతదేశంలో ప్రాథమిక విధుల గురించి సిఫార్సులు చేయడానికి 1976లో ఏ కమిటీని ఏర్పాటు చేశారు?",
  options:[
  "వర్మ కమిటీ",
  "స్వరణ్ సింగ్ కమిటీ",
  "గోఖలే కమిటీ",
  "చావ్లా కమిటీ",
  ],
  correctAnswerIndex: 1,
  explanation:"1976లో ఏర్పాటైన స్వరణ్ సింగ్ కమిటీ భారతదేశంలోని ప్రాథమిక విధుల గురించి సిఫార్సులు చేసింది.",
  ),
  Question(
  questionText: "స్వరణ్ సింగ్ కమిటీ మొదట్లో ఎన్ని ప్రాథమిక విధులను సిఫార్సు చేసింది?",
  options:["ఆరు", "ఎనిమిది", "పది", "పన్నెండు"],
  correctAnswerIndex: 1,
  explanation:"స్వరణ్ సింగ్ కమిటీ మొదట ఎనిమిది ప్రాథమిక విధులను చేర్చాలని సిఫార్సు చేసింది.",
  ),

  Question(
  questionText: "2002లో ప్రాథమిక విధులకు ఏ ముఖ్యమైన జోడింపు జరిగింది?",
  options:["విద్యా హక్కు", "పన్నులు చెల్లించే బాధ్యత", "దేశాన్ని రక్షించే బాధ్యత", "పర్యావరణాన్ని రక్షించే బాధ్యత"],
  correctAnswerIndex: 1,
  explanation:"2002లో, 86వ రాజ్యాంగ సవరణ చట్టం ప్రాథమిక విధులకు పన్నులు చెల్లించే విధిని జోడించింది.",
  ),
  Question(
  questionText: "ప్రాథమిక విధులు ఎందుకు విమర్శించబడ్డాయి?",
  options:[
  "వారు పౌరులకు అసంబద్ధంగా పరిగణించబడ్డారు.",
  "వాటికి చట్టపరమైన అనుమతి మరియు అమలు సామర్థ్యం లేదు.",
  "వారు చాలా తక్కువ సంఖ్యలో పరిగణించబడ్డారు.",
  "అవి రాజ్యాంగానికి విరుద్ధమైనవిగా చూడబడ్డాయి.",
  ],
  correctAnswerIndex: 1,
  explanation:"ప్రాథమిక విధులకు చట్టపరమైన అనుమతి మరియు అమలు సామర్థ్యం లేదని విమర్శకులు వాదించారు, తద్వారా వాటిని న్యాయబద్ధం చేయలేరు.",
  ),
  Question(
  questionText: "వర్మ కమిటీ ప్రకారం, కొన్ని ప్రాథమిక విధులను అమలు చేయడానికి ఏ చట్టపరమైన నిబంధనలు ఉన్నాయి?",
  options:[
  "జాతీయ గౌరవానికి అవమానాల నివారణ చట్టం",
  "పౌర హక్కుల పరిరక్షణ చట్టం",
  "చట్టవిరుద్ధ కార్యకలాపాల (నివారణ) చట్టం",
  "పైన ఉన్నవన్నీ",
  ],
  correctAnswerIndex: 3,
  explanation:"వర్మ కమిటీ జాతీయ గౌరవానికి అవమానాల నిరోధక చట్టం, పౌర హక్కుల పరిరక్షణ చట్టం మరియు చట్టవిరుద్ధ కార్యకలాపాల (నివారణ) చట్టంతో సహా పలు చట్టపరమైన నిబంధనలను గుర్తించింది.",
  ),
  Question(
  questionText: "ఏ రాజ్యాంగ సవరణ చట్టం పది ప్రాథమిక విధులను పేర్కొంటూ భారత రాజ్యాంగానికి కొత్త భాగాన్ని (పార్ట్ IVA) జోడించింది?",
  options:["42వ రాజ్యాంగ సవరణ చట్టం", "44వ రాజ్యాంగ సవరణ చట్టం", "86వ రాజ్యాంగ సవరణ చట్టం", "88వ రాజ్యాంగ సవరణ చట్టం"],
  correctAnswerIndex: 0,
  explanation:"1976లో 42వ రాజ్యాంగ సవరణ చట్టం పది ప్రాథమిక విధులను పేర్కొంటూ భారత రాజ్యాంగంలో పార్ట్ IVAని జోడించింది.",
  ),
  Question(
  questionText: "2002లో 86వ రాజ్యాంగ సవరణ చట్టం ద్వారా ప్రాథమిక విధులకు ఏ విధి జోడించబడింది?",
  options:["దేశాన్ని రక్షించే కర్తవ్యం", "సామరస్యాన్ని ప్రోత్సహించే బాధ్యత", "శాస్త్రీయ దృక్పథాన్ని పెంపొందించే బాధ్యత", "విద్యను అందించాల్సిన బాధ్యత"],
  correctAnswerIndex: 3,
  explanation:"2002లో 86వ రాజ్యాంగ సవరణ చట్టం ఆరు మరియు పద్నాలుగు సంవత్సరాల మధ్య పిల్లలకు విద్యావకాశాలను కల్పించే విధిని జోడించింది.",
  ),
  Question(
  questionText: "రాజ్యాంగంలో ప్రాథమిక విధులను చేర్చకపోవడాన్ని కాంగ్రెస్ పార్టీ చారిత్రక తప్పిదంగా ఎందుకు ప్రకటించింది?",
  options:[
  "పౌరుల విధుల యొక్క ప్రాముఖ్యతను నొక్కి చెప్పడానికి",
  "రాజ్యాంగ నిర్మాతల పర్యవేక్షణను సరిచేయడానికి",
  "రాజకీయ మద్దతు పొందడానికి",
  "పూర్వ USSR యొక్క రాజ్యాంగానికి అనుగుణంగా",
  ],
  correctAnswerIndex: 1,
  explanation:"కాంగ్రెస్ పార్టీ ప్రాథమిక విధులను చేర్చకపోవడాన్ని చారిత్రక తప్పిదంగా ప్రకటించింది మరియు ఇది రాజ్యాంగ నిర్మాతల పర్యవేక్షణను సరిచేస్తోందని పేర్కొంది.",
  ),
  Question(
  questionText: "ఆరు మరియు పద్నాలుగు సంవత్సరాల మధ్య వయస్సు గల పిల్లలకు విద్యను నిర్ధారించడానికి 2002లో ఏ ప్రాథమిక విధి జోడించబడింది?",
  options:["దేశాన్ని రక్షించే కర్తవ్యం", "సామరస్యాన్ని ప్రోత్సహించే బాధ్యత", "శాస్త్రీయ దృక్పథాన్ని పెంపొందించే బాధ్యత", "విద్యను అందించాల్సిన బాధ్యత"],
  correctAnswerIndex: 3,
  explanation:"2002లో 86వ రాజ్యాంగ సవరణ చట్టం ఆరు మరియు పద్నాలుగు సంవత్సరాల మధ్య పిల్లలకు విద్యావకాశాలను కల్పించే విధిని జోడించింది.",
  ),

  Question(
  questionText: "వర్మ కమిటీ ప్రకారం, భారత రాజ్యాంగం, జాతీయ పతాకం మరియు జాతీయ గీతం పట్ల అగౌరవాన్ని ఏ చట్టపరమైన నిబంధన అడ్డుకుంటుంది?",
  options:[
  "జాతీయ గౌరవానికి అవమానాల నివారణ చట్టం",
  "పౌర హక్కుల పరిరక్షణ చట్టం",
  "చట్టవిరుద్ధ కార్యకలాపాల (నివారణ) చట్టం",
  "ప్రజల ప్రాతినిధ్య చట్టం",
  ],
  correctAnswerIndex: 0,
  explanation:"జాతీయ గౌరవానికి అవమానాల నిరోధక చట్టం (1971) భారత రాజ్యాంగం, జాతీయ జెండా మరియు జాతీయ గీతానికి అగౌరవాన్ని నిరోధిస్తుంది.",
  ),

  Question(
  questionText: "ఏ కమిటీ, 1999లో, భారతదేశంలో కొన్ని ప్రాథమిక విధులను అమలు చేయడానికి చట్టపరమైన నిబంధనలను గుర్తించింది?",
  options:[
  "స్వరణ్ సింగ్ కమిటీ",
  "వర్మ కమిటీ",
  "గోఖలే కమిటీ",
  "చావ్లా కమిటీ",
  ],
  correctAnswerIndex: 1,
    explanation: "పౌరుల ప్రాథమిక విధులపై వర్మ కమిటీ (1999) భారతదేశంలో కొన్ని ప్రాథమిక విధులను అమలు చేయడానికి చట్టపరమైన నిబంధనలను గుర్తించింది.",
  ),

  Question(
  questionText: "వర్మ కమిటీ ప్రకారం, అవినీతి చర్యలకు పాల్పడినందుకు పార్లమెంటు లేదా రాష్ట్ర శాసనసభ సభ్యులపై అనర్హత వేటు వేయడానికి ఏ చట్టపరమైన నిబంధన అందిస్తుంది?",
  options:[
  "జాతీయ గౌరవానికి అవమానాల నివారణ చట్టం",
  "పౌర హక్కుల పరిరక్షణ చట్టం",
  "ప్రజల ప్రాతినిధ్య చట్టం",
  "చట్టవిరుద్ధ కార్యకలాపాల (నివారణ) చట్టం",
  ],
  correctAnswerIndex: 2,
  explanation:"ప్రజా ప్రాతినిధ్య చట్టం (1951) అవినీతికి పాల్పడినందుకు పార్లమెంటు లేదా రాష్ట్ర శాసనసభ సభ్యులపై అనర్హత వేటును అందిస్తుంది.",
  ),
  Question(
  questionText: "భారత రాజ్యాంగంలో ప్రాథమిక విధుల భావనను ఏ రాజ్యాంగ సవరణ చట్టం ప్రవేశపెట్టింది?",
  options:["42వ రాజ్యాంగ సవరణ చట్టం", "44వ రాజ్యాంగ సవరణ చట్టం", "86వ రాజ్యాంగ సవరణ చట్టం", "88వ రాజ్యాంగ సవరణ చట్టం"],
  correctAnswerIndex: 0,
  explanation:"1976లో 42వ రాజ్యాంగ సవరణ చట్టం భారత రాజ్యాంగంలో ప్రాథమిక విధుల భావనను ప్రవేశపెట్టింది.",
  ),
  Question(
  questionText: "2002లో 86వ రాజ్యాంగ సవరణ చట్టం ద్వారా ప్రాథమిక విధులకు ఏ విధి జోడించబడింది?",
  options:["దేశాన్ని రక్షించే కర్తవ్యం", "సామరస్యాన్ని ప్రోత్సహించే బాధ్యత", "శాస్త్రీయ దృక్పథాన్ని పెంపొందించే బాధ్యత", "విద్యను అందించాల్సిన బాధ్యత"],
  correctAnswerIndex: 3,
  explanation:"2002లో 86వ రాజ్యాంగ సవరణ చట్టం ఆరు మరియు పద్నాలుగు సంవత్సరాల మధ్య పిల్లలకు విద్యావకాశాలను కల్పించే విధిని జోడించింది.",
  ),
  Question(
  questionText: "భారత సార్వభౌమత్వం, ఐక్యత మరియు సమగ్రతను కాపాడే బాధ్యతను ఏ ప్రాథమిక విధి నొక్కి చెబుతుంది?",
  options:["రాజ్యాంగానికి కట్టుబడి ఉండవలసిన కర్తవ్యం", "శాస్త్రీయ భావాలను పెంపొందించే బాధ్యత", "దేశాన్ని రక్షించే బాధ్యత", "విద్యను అందించాల్సిన బాధ్యత"],
  correctAnswerIndex: 2,
  explanation:"దేశాన్ని రక్షించే ప్రాథమిక కర్తవ్యం భారతదేశ సార్వభౌమాధికారం, ఐక్యత మరియు సమగ్రతను కాపాడే బాధ్యతను నొక్కి చెబుతుంది.",
  ),

  Question(
  questionText: "మోహన్ కుమార్ సింఘానియా కేసు (1991)లో పేర్కొన్నట్లుగా, చట్టాల వివరణలో ప్రాథమిక విధులు ఏ ముఖ్యమైన పాత్ర పోషిస్తాయి?",
  options:[
  "అవి క్రిమినల్ నేరాలకు శిక్షను నిర్ణయిస్తాయి.",
  "అవి కోర్టులో చట్టాలను సవాలు చేయడానికి ఒక ఆధారాన్ని అందిస్తాయి.",
  "రాజ్యాంగ చెల్లుబాటు కోసం అస్పష్టమైన చట్టాలను అర్థం చేసుకోవడానికి వాటిని ఉపయోగించవచ్చు.",
  "వారు పౌర హక్కుల అమలుకు మార్గనిర్దేశం చేస్తారు.",
  ],
  correctAnswerIndex: 2,
  explanation:"మోహన్ కుమార్ సింఘానియా కేసులో (1991), రాజ్యాంగ చెల్లుబాటు కోసం అస్పష్టమైన చట్టాలను అర్థం చేసుకోవడానికి ఆర్టికల్ 51A (ప్రాథమిక విధులు) ఉపయోగించవచ్చని సుప్రీంకోర్టు పేర్కొంది.",
  ),


  Question(
  questionText: "రాజ్యాంగంలో ప్రాథమిక విధులను చేర్చడం గురించి విమర్శకులు చేసిన ప్రాథమిక వాదన ఏమిటి?",
  options:[
  "అవి చాలా విస్తృతమైనవి మరియు సమగ్రమైనవి.",
  "వారికి నిర్దిష్టత మరియు స్పష్టత లేదు.",
  "ప్రజాస్వామ్య వ్యవస్థలో అవి అనవసరం.",
  "వారు ప్రాథమిక హక్కులను ఉల్లంఘిస్తారు.",
  ],
  correctAnswerIndex: 2,
  explanation:"ప్రజాస్వామ్య వ్యవస్థలో ప్రాథమిక విధులను రాజ్యాంగంలో చేర్చడం నిరుపయోగమని మరియు అనవసరమని విమర్శకులు వాదించారు.",
  ),

  Question(
  questionText: "వర్మ కమిటీ ప్రకారం, భారత రాజ్యాంగం, జాతీయ పతాకం మరియు జాతీయ గీతం పట్ల అగౌరవాన్ని ఏ చట్టపరమైన నిబంధన అడ్డుకుంటుంది?",
  options:[
  "జాతీయ గౌరవానికి అవమానాల నివారణ చట్టం",
  "పౌర హక్కుల పరిరక్షణ చట్టం",
  "చట్టవిరుద్ధ కార్యకలాపాల (నివారణ) చట్టం",
  "ప్రజల ప్రాతినిధ్య చట్టం",
  ],
  correctAnswerIndex: 0,
  explanation:"జాతీయ గౌరవానికి అవమానాల నిరోధక చట్టం (1971) భారత రాజ్యాంగం, జాతీయ జెండా మరియు జాతీయ గీతానికి అగౌరవాన్ని నిరోధిస్తుంది.",
  ),

  Question(
  questionText: "భారత రాజ్యాంగంలోని ఏ భాగంలో ప్రాథమిక విధులు ఉన్నాయి?",
  options:["పార్ట్ II", "పార్ట్ III", "పార్ట్ IV", "పార్ట్ IVA"],
  correctAnswerIndex: 3,
  explanation:"భారత రాజ్యాంగంలోని పార్ట్ IVAలో ప్రాథమిక విధులు చేర్చబడ్డాయి.",
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
    home: fundamentalDuties_te(),
  ));
}

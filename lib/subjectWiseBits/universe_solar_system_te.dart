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

class universe_solar_system_te extends StatefulWidget {
  final String? userIdentifier;

  universe_solar_system_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<universe_solar_system_te> createState() => _universe_solar_system_teState();
}

class _universe_solar_system_teState extends State<universe_solar_system_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(150, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "విశ్వంలో దూరాలను కొలిచే యూనిట్లు ఏమిటి?",
        options:[
          "కిలోమీటర్లు మరియు మైళ్ళు",
          "కాంతి సంవత్సరం మరియు పార్సెక్",
          "ఖగోళ యూనిట్ మరియు కాంతి నిమిషం",
          "మెగాపార్సెక్ మరియు లైట్ సెకండ్"
        ],
        correctAnswerIndex: 1,
        explanation:"కాంతి సంవత్సరం మరియు పార్సెక్ అనేది విశ్వంలో దూరాలను కొలిచే యూనిట్లు."
    ),

    Question(
        questionText: "భూమికి దగ్గరగా ఉన్న నక్షత్రం ఏది?",
        options:[
          "సిరియస్",
          "బెటెల్గ్యూస్",
          "ప్రాక్సిమా సెంటారీ",
          "ఆల్ఫా సెంటారీ"
        ],
        correctAnswerIndex: 2,
        explanation:"భూమికి సమీప నక్షత్రం ప్రాక్సిమా సెంటారీ."
    ),

    Question(
        questionText: "పాలపుంత గెలాక్సీకి భారతీయ పేరు ఏమిటి?",
        options:[
          "ఆకాష్ గంగ",
          "జ్యోతి తాల్",
          "పృథ్వీ మండల్",
          "అనంత్ వార్త"
        ],
        correctAnswerIndex: 0,
        explanation:"పాలపుంత గెలాక్సీకి భారతీయ పేరు 'ఆకాష్ గంగ'."
    ),

    Question(
        questionText: "భారత ఖగోళ శాస్త్రంలో నక్షత్రరాశులను ఏమంటారు?",
        options:[
          "గెలాక్సీలు",
          "సమూహాలు",
          "నక్షత్రాలు",
          "ఖగోళ శరీరాలు"
        ],
        correctAnswerIndex: 2,
        explanation:"భారత ఖగోళ శాస్త్రంలో నక్షత్రరాశులను 'నక్షత్రాలు' అంటారు."
    ),

    Question(
        questionText: "భూమి యొక్క ఉత్తర ధ్రువం పైన ఉన్న నక్షత్రం పేరు ఏమిటి?",
        options:[
          "పొలారిస్",
          "బెటెల్గ్యూస్",
          "వేగా",
          "సిరియస్"
        ],
        correctAnswerIndex: 0,
        explanation:"భూమి యొక్క ఉత్తర ధ్రువం పైన ఉన్న నక్షత్రాన్ని పోలారిస్ అంటారు, దీనిని పోల్ స్టార్ అని కూడా అంటారు."
    ),

    Question(
        questionText: "అంతరిక్షంలో గోల్డిలాక్స్ జోన్ అంటే ఏమిటి?",
        options:[
          "గ్రహాలు బంగారంతో కప్పబడిన ప్రాంతం",
          "జీవితానికి సరైన ఉష్ణోగ్రత ఉన్న జోన్",
          "సమృద్ధిగా ఖనిజ వనరులు ఉన్న ప్రాంతం",
          "సరైన గురుత్వాకర్షణతో స్పేస్"
        ],
        correctAnswerIndex: 1,
        explanation:"గోల్డిలాక్స్ జోన్ అనేది అంతరిక్ష ప్రాంతం, దీనిలో ఒక గ్రహం దాని ఇంటి నక్షత్రం నుండి సరైన దూరంలో ఉంటుంది, తద్వారా దాని ఉపరితలం చాలా వేడిగా లేదా చాలా చల్లగా ఉండదు, ఇది జీవితానికి అనుకూలమైన పరిస్థితులను చేస్తుంది."
    ),

    Question(
        questionText: "మన సౌర వ్యవస్థలో ఎన్ని గ్రహాలు ఉన్నాయి?",
        options:[
          "ఏడు",
          "ఎనిమిది",
          "తొమ్మిది",
          "పది"
        ],
        correctAnswerIndex: 1,
        explanation:"మన సౌర వ్యవస్థలో ఎనిమిది ప్రధాన గ్రహాలు ఉన్నాయి."
    ),

    Question(
        questionText: "ఏ గ్రహం 'బ్లూ ప్లానెట్'గా పరిగణించబడుతుంది?",
        options:[
          "మార్స్",
          "శుక్రుడు",
          "భూమి",
          "యురేనస్"
        ],
        correctAnswerIndex: 2,
        explanation:"భూమిని తరచుగా 'బ్లూ ప్లానెట్' అని పిలుస్తారు."
    ),

    Question(
        questionText: "సూర్యుని యొక్క ప్రధాన కూర్పు ఏమిటి?",
        options:[
          "హీలియం",
          "హైడ్రోజన్",
          "ఆక్సిజన్",
          "కార్బన్"
        ],
        correctAnswerIndex: 1,
        explanation:"సూర్యుడు ప్రధానంగా హైడ్రోజన్‌తో కూడి ఉంటుంది."
    ),

    Question(
        questionText: "మన సౌర వ్యవస్థలో అత్యంత వేగంగా తిరిగే గ్రహం ఏది?",
        options:[
          "మార్స్",
          "శుక్రుడు",
          "బృహస్పతి",
          "మెర్క్యురీ"
        ],
        correctAnswerIndex: 2,
        explanation:"మన సౌర వ్యవస్థలో బృహస్పతి అత్యంత వేగంగా తిరిగే గ్రహం."
    ),
    Question(
        questionText: "బిగ్ బ్యాంగ్ థియరీ అంటే ఏమిటి?",
        options:[
          "బ్లాక్ హోల్స్ ఏర్పడటానికి ఒక సిద్ధాంతం",
          "విశ్వం పుట్టుక గురించిన సిద్ధాంతం",
          "భూమిపై జీవం యొక్క మూలం గురించి ఒక సిద్ధాంతం",
          "గెలాక్సీల విస్తరణ గురించి ఒక సిద్ధాంతం"
        ],
        correctAnswerIndex: 1,
        explanation:"బిగ్ బ్యాంగ్ థియరీ అనేది విశ్వం యొక్క పుట్టుకకు సంబంధించిన ఒక సిద్ధాంతం, విశ్వంలోని ప్రతిదీ దాదాపు 15 బిలియన్ సంవత్సరాల క్రితం సింగులారిటీ అని పిలువబడే పాయింట్ నుండి ఉద్భవించిందని సూచిస్తుంది."
    ),

    Question(
        questionText: "గోల్డిలాక్స్ జోన్‌ని ఏమని పిలుస్తారు?",
        options:[
          "లైఫ్ జోన్",
          "అనువయిన ప్రదేశం",
          "హాబిటబుల్ జోన్",
          "ఆప్టిమల్ జోన్"
        ],
        correctAnswerIndex: 2,
        explanation:"గోల్డిలాక్స్ జోన్‌ను 'హాబిటబుల్ జోన్' లేదా 'లైఫ్ జోన్' అని కూడా పిలుస్తారు, ఎందుకంటే ఇది ఒక గ్రహం తన నక్షత్రం నుండి జీవితం ఉనికిలో ఉండటానికి సరైన దూరంలో ఉన్న ప్రాంతం."
    ),

    Question(
        questionText: "ఏ గ్రహాన్ని 'గ్రీన్ ప్లానెట్'గా పరిగణిస్తారు?",
        options:[
          "భూమి",
          "యురేనస్",
          "శుక్రుడు",
          "నెప్ట్యూన్"
        ],
        correctAnswerIndex: 1,
        explanation:"యురేనస్ వాతావరణంలో మీథేన్ ఉనికి కారణంగా దాని రంగు కారణంగా 'గ్రీన్ ప్లానెట్'గా పరిగణించబడుతుంది."
    ),

    Question(
        questionText: "బృహస్పతి యొక్క అతిపెద్ద ఉపగ్రహం పేరు ఏమిటి?",
        options:[
          "అయో",
          "యూరోపా",
          "గనిమీడ్",
          "కాలిస్టో"
        ],
        correctAnswerIndex: 2,
        explanation:"గనిమీడ్ బృహస్పతి యొక్క అతిపెద్ద ఉపగ్రహం."
    ),

    Question(
        questionText: "మార్స్ యొక్క అతి చిన్న ఉపగ్రహం పేరు ఏమిటి?",
        options:[
          "డీమోస్",
          "ఫోబోస్",
          "యూరోపా",
          "టైటాన్"
        ],
        correctAnswerIndex: 0,
        explanation:"డీమోస్ చిన్నదిమార్స్ యొక్క ఉపగ్రహం."
    ),

    Question(
        questionText: "మన సౌర వ్యవస్థలో అత్యంత దట్టమైన గ్రహం ఏమిటి?",
        options:[
          "భూమి",
          "బృహస్పతి",
          "మెర్క్యురీ",
          "శని"
        ],
        correctAnswerIndex: 0,
        explanation:"మన సౌర వ్యవస్థలో భూమి అత్యంత దట్టమైన గ్రహం."
    ),

    Question(
        questionText: "సూర్యుని యొక్క ప్రధాన ఉష్ణోగ్రత ఏమిటి?",
        options:[
          "1 మిలియన్ డిగ్రీల సెల్సియస్",
          "5 మిలియన్ డిగ్రీల సెల్సియస్",
          "10 మిలియన్ డిగ్రీల సెల్సియస్",
          "15 మిలియన్ డిగ్రీల సెల్సియస్"
        ],
        correctAnswerIndex: 3,
        explanation:"సూర్యుని యొక్క ప్రధాన ఉష్ణోగ్రత సుమారు 15 మిలియన్ డిగ్రీల సెల్సియస్."
    ),

    Question(
        questionText: "సూర్యుని ఉపరితలంపై ఉన్న చీకటి పాచెస్ పేరు ఏమిటి?",
        options:[
          "సోలార్ ఫ్లేర్స్",
          "ప్రముఖులు",
          "సన్‌స్పాట్స్",
          "కరోనా"
        ],
        correctAnswerIndex: 2,
        explanation:"సూర్యుడి ఉపరితలంపై ఉండే చీకటి మచ్చలను 'సన్‌స్పాట్స్' అంటారు."
    ),

    Question(
        questionText: "విశ్వం యొక్క మూలాన్ని వివరించే సిద్ధాంతం పేరు ఏమిటి?",
        options:[
          "బ్లాక్ హోల్ థియరీ",
          "బిగ్ క్రంచ్ థియరీ",
          "స్టేడీ స్టేట్ థియరీ",
          "బిగ్ బ్యాంగ్ సిద్దాంతం"
        ],
        correctAnswerIndex: 3,
        explanation:"విశ్వం యొక్క మూలాన్ని వివరించే సిద్ధాంతం 'బిగ్ బ్యాంగ్ థియరీ'."
    ),

    Question(
        questionText: "గ్రహశకలాలు అంటే ఏమిటి?",
        options:[
          "గ్యాస్ జెయింట్స్ యొక్క పెద్ద చంద్రులు",
          "రాతి మరియు లోహం యొక్క చిన్న గ్రహాలు",
          "గ్యాస్ మరియు దుమ్ము సేకరణలు",
          "ఆకాశంలో ప్రకాశవంతమైన కాంతి బంతులు"
        ],
        correctAnswerIndex: 1,
        explanation:"గ్రహశకలాలు ప్రధానంగా అంగారక గ్రహం మరియు బృహస్పతి కక్ష్యల మధ్య సూర్యుని చుట్టూ తిరిగే రాతి మరియు లోహంతో కూడిన చిన్న గ్రహాలు."
    ),
    Question(
        questionText: "తోకచుక్కలు దేనితో కూడి ఉంటాయి?",
        options:[
          "రాక్ అండ్ మెటల్",
          "గ్యాస్ మరియు దుమ్ము",
          "ద్రవ నీరు",
          "కరిగిన లావా"
        ],
        correctAnswerIndex: 1,
        explanation:"కామెట్‌లు వాయువు మరియు ధూళితో కూడి ఉంటాయి, పొడవైన మెరుస్తున్న తోకతో ఆకాశంలో ప్రకాశవంతమైన కాంతి బంతుల వలె కనిపిస్తాయి."
    ),

    Question(
        questionText: "భూమిపై పడిన ఉల్కాపాతం పేరు ఏమిటి?",
        options:[
          "మెటోరాయిడ్",
          "ఉల్క",
          "ఉల్కాపాతం",
          "ఉల్క"
        ],
        correctAnswerIndex: 1,
        explanation:"భూమిపై పడిన ఉల్కను 'మెటోరైట్' అంటారు."
    ),

    Question(
        questionText: "గురుత్వాకర్షణ శక్తుల వల్ల సముద్ర మట్టాల పెరుగుదల మరియు పతనానికి పదం ఏమిటి?",
        options:[
          "టైడ్స్",
          "తరంగాలు",
          "కరెంట్స్",
          "ఉప్పెనలు"
        ],
        correctAnswerIndex: 0,
        explanation:"గురుత్వాకర్షణ శక్తుల వల్ల సముద్ర మట్టాల పెరుగుదల మరియు పతనాన్ని 'టైడ్స్' అంటారు."
    ),

    Question(
        questionText: "ద్రవ నీరు ఉనికిలో ఉండటానికి ఒక గ్రహం దాని నక్షత్రం నుండి సరైన దూరంలో ఉన్న ప్రాంతం పేరు ఏమిటి?",
        options:[
          "అనువయిన ప్రదేశం",
          "గ్రీన్ జోన్",
          "గోల్డిలాక్స్ జోన్",
          "ఆప్టిమల్ జోన్"
        ],
        correctAnswerIndex: 2,
        explanation:"ద్రవ నీటి ఉనికి కోసం ఒక గ్రహం నక్షత్రం నుండి సరైన దూరంలో ఉన్న ప్రాంతాన్ని 'గోల్డిలాక్స్ జోన్' లేదా 'హాబిటబుల్ జోన్' అంటారు."
    ),

    Question(
        questionText: "ఒక ఖగోళ వస్తువును మరొకదాని ద్వారా తాత్కాలికంగా మరుగుపరచడం కోసం శాస్త్రీయ పదం ఏమిటి?",
        options:[
          "క్షుద్రత",
          "గ్రహణం",
          "రవాణా",
          "సంయోగం"
        ],
        correctAnswerIndex: 1,
        explanation:"ఒక ఖగోళ వస్తువును మరొకటి తాత్కాలికంగా మరుగుపరచడం కోసం శాస్త్రీయ పదం 'గ్రహణం'."
    ),

    Question(
        questionText: "వివిధ రకాల ఆటుపోట్లకు కారణం ఏమిటి?",
        options:[
          "భూమి భ్రమణం",
          "చంద్రుడు మరియు సూర్యుని గురుత్వాకర్షణ శక్తులు",
          "నీటి అడుగున భూకంపాలు",
          "అయస్కాంత క్షేత్ర వైవిధ్యాలు"
        ],
        correctAnswerIndex: 1,
        explanation:"చంద్రుడు మరియు సూర్యుని గురుత్వాకర్షణ శక్తుల వల్ల వివిధ రకాల అలలు ఏర్పడతాయి."
    ),

    Question(
        questionText: "ఏ గ్రహాన్ని 'రెడ్ ప్లానెట్' అని పిలుస్తారు?",
        options:[
          "భూమి",
          "శుక్రుడు",
          "మార్స్",
          "బృహస్పతి"
        ],
        correctAnswerIndex: 2,
        explanation:"మార్స్‌ని 'రెడ్ ప్లానెట్' అని పిలుస్తారు."
    ),

    Question(
        questionText: "సూర్యుడికి దగ్గరగా ఉన్న నక్షత్రం పేరు ఏమిటి?",
        options:[
          "ఆల్ఫా సెంటారీ",
          "ప్రాక్సిమా సెంటారీ",
          "బెటెల్గ్యూస్",
          "సిరియస్"
        ],
        correctAnswerIndex: 1,
        explanation:"సూర్యుడికి సమీప నక్షత్రం 'ప్రాక్సిమా సెంటారీ'."
    ),

    Question(
        questionText: "విశ్వం యొక్క మూలాన్ని ఏ సిద్ధాంతం వివరిస్తుంది?",
        options:[
          "స్టేడీ స్టేట్ థియరీ",
          "బిగ్ బ్యాంగ్ సిద్దాంతం",
          "స్ట్రింగ్ థియరీ",
          "మల్టీవర్స్ థియరీ"
        ],
        correctAnswerIndex: 1,
        explanation:"విశ్వం యొక్క మూలాన్ని వివరించే సిద్ధాంతం 'బిగ్ బ్యాంగ్ థియరీ'."
    ),

    Question(
        questionText: "మన సౌర వ్యవస్థలో అత్యంత దట్టమైన గ్రహం ఏమిటి?",
        options:[
          "భూమి",
          "బృహస్పతి",
          "మెర్క్యురీ",
          "శని"
        ],
        correctAnswerIndex: 0,
        explanation:"మన సౌర వ్యవస్థలో భూమి అత్యంత దట్టమైన గ్రహం."
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
    home: universe_solar_system_te(),
  ));
}

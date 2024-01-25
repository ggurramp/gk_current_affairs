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

class sfoc_te extends StatefulWidget {
  final String? userIdentifier;

  sfoc_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<sfoc_te> createState() => _sfoc_teState();
}

class _sfoc_teState extends State<sfoc_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//రాజ్యాంగం యొక్క ముఖ్య లక్షణాలు
    Question(
        questionText: "లెజిస్లేటివ్ మరియు ఎగ్జిక్యూటివ్ శాఖల మధ్య సహకారాన్ని నొక్కి చెబుతూ భారత రాజ్యాంగం ఏ ప్రభుత్వ వ్యవస్థను అవలంబిస్తుంది?", options:[
      "అధ్యక్ష వ్యవస్థ",
      "రాచరిక వ్యవస్థ",
      "పార్లమెంటరీ వ్యవస్థ",
      "యూనిటరీ సిస్టమ్"
    ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగం పార్లమెంటరీ వ్యవస్థను స్వీకరించింది, శాసన మరియు కార్యనిర్వాహక శాఖల మధ్య సహకారం మరియు సమన్వయంపై దృష్టి సారిస్తుంది."
    ),
    Question(
        questionText: "పార్లమెంటరీ చట్టాలను రాజ్యాంగ విరుద్ధమని ప్రకటించడానికి భారత రాజ్యాంగంలోని ఏ నిబంధన సుప్రీంకోర్టును అనుమతిస్తుంది?", options:[ "ఆర్టికల్ 368",
      "ఆర్టికల్ 356",
      "ఆర్టికల్ 44",
      "ఆర్టికల్ 131"
    ],
        correctAnswerIndex: 0,
        explanation:"పార్లమెంటరీ సార్వభౌమాధికారం మరియు న్యాయపరమైన ఆధిపత్యాన్ని సమతుల్యం చేస్తూ, పార్లమెంటరీ చట్టాలను రాజ్యాంగ విరుద్ధమని ప్రకటించడానికి ఆర్టికల్ 368 సుప్రీంకోర్టును అనుమతిస్తుంది."
    ),
    Question(
        questionText: "భారత న్యాయవ్యవస్థలో ఏ న్యాయవ్యవస్థ అత్యున్నత స్థానాన్ని కలిగి ఉంది?", options:[ "హైకోర్టు",
      "జిల్లా కోర్టు",
      "అత్యున్నత న్యాయస్తానం",
      "రాజ్యాంగ న్యాయస్థానం"
    ],
        correctAnswerIndex: 2,
        explanation:"భారత న్యాయవ్యవస్థలో సుప్రీం కోర్ట్ అత్యున్నత స్థానాన్ని కలిగి ఉంది, సమగ్ర మరియు స్వతంత్ర న్యాయ వ్యవస్థను నిర్ధారిస్తుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని పార్ట్ III కింద ఎన్ని ప్రాథమిక హక్కులు హామీ ఇవ్వబడ్డాయి?", options:[ "నాలుగు",
      "ఐదు",
      "ఆరు",
      "ఏడు"
    ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగంలోని పార్ట్ III ఆరు ప్రాథమిక హక్కులకు హామీ ఇస్తుంది, రాజకీయ ప్రజాస్వామ్యాన్ని ప్రోత్సహిస్తుంది మరియు కార్యనిర్వాహక మరియు శాసనసభ అధికారాలను పరిమితం చేస్తుంది."
    ),
    Question(
        questionText: "భారత న్యాయ వ్యవస్థలో రాష్ట్ర విధాన నిర్దేశక సూత్రాలు న్యాయబద్ధంగా ఉన్నాయా?", options:[ "అవును",
      "లేదు",
      "కొన్నిసార్లు",
      "పరిస్థితిని బట్టి ఉంటుంది"
    ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగంలోని రాష్ట్ర విధాన నిర్దేశక సూత్రాలు న్యాయబద్ధమైనవి కావు, వాటిని వర్తింపజేయడానికి రాష్ట్రంపై నైతిక బాధ్యతను విధిస్తుంది."
    ),
    Question(
        questionText: "భారతదేశంలో ఎన్నికల నిర్వహణకు కింది వాటిలో ఏ సంస్థ బాధ్యత వహిస్తుంది?", options:[
      "అత్యున్నత న్యాయస్తానం",
      "ఎన్నికల సంఘం",
      "యూనియన్ పబ్లిక్ సర్వీస్ కమిషన్",
      "కంప్ట్రోలర్ మరియు ఆడిటర్ జనరల్"
    ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగం ద్వారా స్థాపించబడిన భారతదేశంలో ఎన్నికలను నిర్వహించడానికి ఎన్నికల సంఘం ఒక స్వతంత్ర సంస్థ."
    ),
    Question(
        questionText: "భారత రాజ్యాంగ భద్రతలో జాతీయ, రాష్ట్ర మరియు ఆర్థిక అత్యవసర పరిస్థితుల కోసం విస్తృతమైన నిబంధనలు ఏమిటి?", options:[
      "వ్యక్తిగత హక్కులు",
      "సార్వభౌమాధికారం, ఐక్యత మరియు సమగ్రత",
      "రాష్ట్ర ప్రభుత్వ అధికారాలు",
      "పౌరసత్వ హక్కులు"
    ],
        correctAnswerIndex: 1, explanation:"భారత రాజ్యాంగంలోని వివరణాత్మక అత్యవసర నిబంధనలు సంక్షోభాల సమయంలో సార్వభౌమాధికారం, ఐక్యత మరియు సమగ్రతను కాపాడతాయి."
    ),
    Question(
        questionText: "భారత రాజ్యాంగం ప్రకారం ప్రభుత్వ నిర్మాణాన్ని ప్రారంభంలో ఎన్ని శ్రేణులు ఏర్పరిచాయి?", options:[ "ఒకటి",
      "రెండు",
      "మూడు",
      "నాలుగు"
    ],
        correctAnswerIndex: 1,
        explanation:"వాస్తవానికి, భారత ప్రభుత్వ నిర్మాణం స్థానిక స్వపరిపాలనను చేర్చడానికి ముందు రెండు అంచెలను కలిగి ఉంది, మూడు-అంచెల వ్యవస్థను ఏర్పరుస్తుంది."
    ),
    Question(
        questionText: "పౌరుల ఓటింగ్ హక్కులకు సంబంధించి భారత రాజ్యాంగం ఏమి అవలంబిస్తుంది?", options:[
      "యూనివర్సల్ అడల్ట్ ఫ్రాంచైజ్",
      "పరిమిత అడల్ట్ ఫ్రాంచైజ్",
      "ఆస్తి ఆధారిత ఫ్రాంచైజ్",
      "కుల ఆధారిత ఫ్రాంచైజీ"
    ],
        correctAnswerIndex: 0,
        explanation:"భారత రాజ్యాంగం యూనివర్సల్ అడల్ట్ ఫ్రాంచైజీని స్వీకరించింది, 18 ఏళ్లు పైబడిన ప్రతి పౌరుడు వివక్ష లేకుండా ఓటు వేయడానికి అనుమతిస్తుంది."
    ),
    Question(
        questionText: "సమాఖ్య నిర్మాణం ఉన్నప్పటికీ, భారత రాజ్యాంగం పౌరులందరికీ ఎలాంటి పౌరసత్వాన్ని అందిస్తుంది?",
        options:[
          "బహుళ పౌరసత్వం",
          "రాష్ట్ర ఆధారిత పౌరసత్వం",
          "ఒకే పౌరసత్వం",
          "ప్రాంతీయ పౌరసత్వం"
        ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగం సమాఖ్య నిర్మాణం ఉన్నప్పటికీ, వారి రాష్ట్రంతో సంబంధం లేకుండా పౌరులందరికీ ఒకే పౌరసత్వాన్ని అందిస్తుంది."
    ),
    Question(
        questionText: "ఏ రాజ్యాంగ సవరణ చట్టం భారత రాజ్యాంగంలో ప్రాథమిక విధులను ప్రవేశపెట్టింది?",
        options:[
          "37వ సవరణ చట్టం",
          "42వ సవరణ చట్టం",
          "52వ సవరణ చట్టం",
          "63వ సవరణ చట్టం"
        ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగంలో 42వ నాటికి ప్రాథమిక విధులు చేర్చబడ్డాయి 1976లో సవరణ చట్టం."
    ),
    Question(
        questionText: "భారత రాజ్యాంగానికి ఏ అంశాలు దోహదం చేస్తాయిసుదీర్ఘమైన వ్రాతపూర్వక రాజ్యాంగం లేబుల్ చేయబడుతుందా?",
        options:[
          "వివిధ అరువు నిబంధనలను చేర్చడం",
          "భౌగోళిక వైవిధ్యం మరియు చారిత్రక ప్రభావాలు వంటి అంశాలు",
          "పార్లమెంటరీ సార్వభౌమాధికారం మరియు న్యాయపరమైన ఆధిపత్యం యొక్క సంశ్లేషణ",
          "మూడు అంచెల ప్రభుత్వ వ్యవస్థ అమలు"
        ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగం యొక్క సుదీర్ఘతకు భౌగోళిక వైవిధ్యం, చారిత్రక ప్రభావాలు, కేంద్రం మరియు రాష్ట్రాలకు ఒకే రాజ్యాంగం మరియు న్యాయ నిపుణుల ఆధిపత్యం వంటి అంశాలు ఆపాదించబడ్డాయి."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఏ ఆర్టికల్ దృఢత్వం మరియు వశ్యత కలయికను అనుమతిస్తుంది?", options:[ "ఆర్టికల్ 368",
      "ఆర్టికల్ 370",
      "ఆర్టికల్ 356",
      "ఆర్టికల్ 51"
    ],
        correctAnswerIndex: 0,
        explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 368 రెండు రకాల సవరణలను అనుమతిస్తుంది-ప్రత్యేక మెజారిటీ లేదా రాష్ట్ర ఆమోదంతో కూడిన ప్రత్యేక మెజారిటీ- దృఢత్వం మరియు వశ్యత కలయికను అనుమతిస్తుంది." ),
    Question(
        questionText: "భారత రాజ్యాంగం 1935లోని భారత ప్రభుత్వ చట్టంలోని అనేక నిబంధనలను ప్రతిబింబిస్తుందని పేర్కొంటూ భారత రాజ్యాంగానికి వ్యతిరేకంగా చేసిన ప్రాథమిక విమర్శ ఏమిటి?", options:[
      "కేంద్రం మరియు రాష్ట్రాల మధ్య అధికారాల విభజనలో స్పష్టత లేదు.",
      "ఇది అడ్మినిస్ట్రేటివ్ వివరాలపై అధికంగా దృష్టి సారించింది.",
      "ఇది ప్రాథమిక హక్కులను తగినంతగా పరిష్కరించడంలో విఫలమైంది.",
      "ఇది అత్యవసర పరిస్థితుల కోసం సదుపాయాన్ని మినహాయించింది."
    ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగం 1935 నాటి భారత ప్రభుత్వ చట్టం మాదిరిగానే పరిపాలనాపరమైన వివరాలపై అధిక దృష్టిని కేంద్రీకరించిందని విమర్శకులు వాదించారు, ఇది ప్రాథమిక విమర్శగా భావించబడింది." ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఏ సవరణ సహకార సంఘాలకు రాజ్యాంగ హోదా మరియు రక్షణ కల్పించింది?",
        options:[
          "42వ రాజ్యాంగ సవరణ చట్టం",
          "66వ రాజ్యాంగ సవరణ చట్టం",
          "97వ రాజ్యాంగ సవరణ చట్టం",
          "84వ రాజ్యాంగ సవరణ చట్టం"
        ],
        correctAnswerIndex: 2,
        explanation:"97వ రాజ్యాంగ సవరణ చట్టం (2011), సహకార సంఘాలకు రాజ్యాంగ హోదా మరియు రక్షణ కల్పించి, దానిని ప్రాథమిక హక్కుగా చేసింది."
    ),
    Question(
        questionText: "న్యాయవ్యవస్థ పట్ల భారత రాజ్యాంగం యొక్క విధానాన్ని ఏది వేరు చేస్తుంది?", options:[
      "ఇది బహుళ స్వతంత్ర న్యాయవ్యవస్థలను ఏర్పాటు చేస్తుంది.",
      "ఇది న్యాయమూర్తులకు ఆర్థిక స్వయంప్రతిపత్తికి హామీ ఇస్తుంది.",
      "ఇది ఎగువన ఉన్న సుప్రీంకోర్టుతో ఒకే న్యాయవ్యవస్థను ఏకీకృతం చేస్తుంది.",
      "ఇది రాజకీయ పరిశీలనల ఆధారంగా న్యాయమూర్తులను నియమిస్తుంది."
    ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగం ఒకే స్వతంత్ర న్యాయవ్యవస్థను ఎగువన ఉన్న సుప్రీంకోర్టుతో అనుసంధానిస్తుంది, న్యాయ స్వాతంత్ర్యానికి భరోసా ఇస్తుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఏ భాగం సామాజిక మరియు ఆర్థిక ప్రజాస్వామ్యానికి సంబంధించిన సూత్రాలను వివరిస్తుంది?",
        options:[ "పార్ట్ II",
          "పార్ట్ III",
          "పార్ట్ IV",
          "పార్ట్ V"
        ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగంలోని పార్ట్ IV సాంఘిక మరియు ఆర్థిక ప్రజాస్వామ్యాన్ని లక్ష్యంగా చేసుకునే రాష్ట్ర విధాన నిర్దేశక సూత్రాలను వివరిస్తుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగానికి ప్రాథమిక విధులను ఏ సవరణ జోడించింది?", options:[
      "22వ రాజ్యాంగ సవరణ చట్టం",
      "42వ రాజ్యాంగ సవరణ చట్టం",
      "66వ రాజ్యాంగ సవరణ చట్టం",
      "84వ రాజ్యాంగ సవరణ చట్టం"
    ],
        correctAnswerIndex: 1,
        explanation:"1976లో 42వ రాజ్యాంగ సవరణ చట్టం ద్వారా భారత రాజ్యాంగానికి ప్రాథమిక విధులు జోడించబడ్డాయి."
    ),
    Question(
        questionText: "భారత రాజ్యాంగం దృఢత్వం మరియు వశ్యత యొక్క సమ్మేళనంగా ఏమి చేస్తుంది?", options:[
      "ఆర్టికల్ 370 నిబంధనలు",
      "ద్వంద్వ పౌరసత్వ నిబంధనలు",
      "ఆర్టికల్ 368 నిబంధనలు",
      "పార్ట్ IV నిబంధనలు"
    ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగం ఆర్టికల్ 368 కారణంగా దృఢత్వం మరియు వశ్యత యొక్క మిశ్రమం, ఇది రెండు రకాల సవరణలను అనుమతిస్తుంది-ప్రత్యేక మెజారిటీ లేదా రాష్ట్ర ఆమోదంతో ప్రత్యేక మెజారిటీ." ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఏ భాగం ఆరు ప్రాథమిక హక్కులకు హామీ ఇస్తుంది?", options:[ "పార్ట్ II",
      "పార్ట్ III",
      "పార్ట్ IV",
      "పార్ట్ V"
    ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగంలోని పార్ట్ III ఆరు ప్రాథమిక హక్కులకు హామీ ఇస్తుంది, రాజకీయ ప్రజాస్వామ్యాన్ని ప్రోత్సహిస్తుంది మరియు కార్యనిర్వాహక మరియు శాసనసభ అధికారాన్ని పరిమితం చేస్తుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగాన్ని ప్రపంచంలోనే అత్యంత పొడవైన లిఖిత రాజ్యాంగం ఏమిటి?",
        options:[
      "దీనిలో 470కి పైగా వ్యాసాలు, 25 భాగాలు మరియు 12 షెడ్యూల్‌లు ఉన్నాయి.",
      "దాని డ్రాఫ్టింగ్‌లో న్యాయ నిపుణుల ఆధిపత్యం.",
      "ఇది భౌగోళిక వైవిధ్యం మరియు చారిత్రక ప్రభావాలపై దృష్టి పెట్టింది.",
      "ప్రపంచవ్యాప్తంగా వివిధ రాజ్యాంగాల నుండి నిబంధనలను విస్తృతంగా రుణం తీసుకోవడం."
    ],
        correctAnswerIndex: 0,
        explanation:"భౌగోళిక వైవిధ్యం, చారిత్రక ప్రభావాలు మరియు న్యాయ నిపుణుల సహకారం వంటి వివిధ అంశాలను కలిగి ఉన్న 470 అధికరణలు, 25 భాగాలు మరియు 12 షెడ్యూల్‌లను చేర్చడం వల్ల భారత రాజ్యాంగం సుదీర్ఘమైన లిఖిత రాజ్యాంగం."
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
    home: sfoc_te(),
  ));
}

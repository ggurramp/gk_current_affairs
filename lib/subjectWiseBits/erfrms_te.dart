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

class erfrms_te extends StatefulWidget {
  final String? userIdentifier;

  erfrms_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<erfrms_te> createState() => _erfrms_teState();
}

class _erfrms_teState extends State<erfrms_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//82.ఎన్నికల సంస్కరణలు

    Question(
      questionText: "1999లో రాష్ట్ర ఎన్నికల నిధులను ప్రవేశపెట్టాలని ఏ కమిటీ సిఫార్సు చేసింది?",
      options:[
        "ఎన్నికల సంస్కరణలపై భారత ఎన్నికల సంఘం సిఫార్సులు (1998)",
        "రాష్ట్ర ఎన్నికల నిధులపై ఇంద్రజిత్ గుప్తా కమిటీ (1998)",
        "రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్ (2000-2002)",
        "లా కమిషన్ ఆఫ్ ఇండియా ఎన్నికల చట్టాల సంస్కరణపై 170వ నివేదిక (1999)"
      ],
      correctAnswerIndex: 1,
      explanation:"1998లో, BJP నేతృత్వంలోని ప్రభుత్వం ఇంద్రజిత్ గుప్తా కమిటీని నియమించింది, ఇది రాష్ట్ర ఎన్నికల నిధులను ప్రవేశపెట్టాలని సిఫార్సు చేసింది. ఆ కమిటీ తన నివేదికను 1999లో సమర్పించింది.",
    ),

    Question(
      questionText: "లోక్‌సభ మరియు అసెంబ్లీ ఎన్నికలకు ఓటు వేసే వయస్సును 21 సంవత్సరాల నుండి 18 సంవత్సరాలకు తగ్గించిన సవరణ ఏది?",
      options:[
        "61వ రాజ్యాంగ సవరణ చట్టం 1988",
        "ప్రజల ప్రాతినిధ్యం (సవరణ) చట్టం 1988",
        "ప్రజల ప్రాతినిధ్యం (సవరణ) చట్టం 1989",
        "ప్రజల ప్రాతినిధ్యం (సవరణ) చట్టం 1990"
      ],
      correctAnswerIndex: 0,
      explanation:"1988 నాటి 61వ రాజ్యాంగ సవరణ చట్టం లోక్‌సభ మరియు అసెంబ్లీ ఎన్నికలకు ఓటు వేసే వయస్సును 21 సంవత్సరాల నుండి 18 సంవత్సరాలకు తగ్గించింది, యువత రాజకీయ ప్రక్రియలో పాల్గొనేందుకు అవకాశం కల్పించింది.",
    ),

    Question(
      questionText: "1975లో జయ ప్రకాష్ నారాయణ్ 'సంపూర్ణ విప్లవం' ఉద్యమం సమయంలో ఏ కమిటీ తన నివేదికను సమర్పించింది?",
      options:[
        "ఎన్నికల చట్టాల సవరణలపై జాయింట్ పార్లమెంటరీ కమిటీ",
        "తార్కుండే కమిటీ",
        "ఎన్నికల సంస్కరణలపై దినేష్ గోస్వామి కమిటీ",
        "క్రైమ్ మరియు రాజకీయాల మధ్య అనుబంధంపై వహ్రా కమిటీ"
      ],
      correctAnswerIndex: 1,
      explanation:"తార్కుండే కమిటీని 1974లో జయ ప్రకాష్ నారాయణ్ తన 'సంపూర్ణ విప్లవం' ఉద్యమంలో నియమించారు మరియు అది 1975లో తన నివేదికను సమర్పించింది.",
    ),

    Question(
      questionText: "1990లో నియమించబడిన ఏ కమిటీ, 1996లో ఎన్నికల సంస్కరణలపై సిఫార్సులు చేసింది?",
      options:[
        "ఎన్నికల చట్టాల సవరణలపై జాయింట్ పార్లమెంటరీ కమిటీ",
        "ఎన్నికల సంస్కరణలపై దినేష్ గోస్వామి కమిటీ",
        "రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్ (2000-2002)",
        "రాష్ట్ర ఎన్నికల నిధులపై ఇంద్రజిత్ గుప్తా కమిటీ (1998)"
      ],
      correctAnswerIndex: 1,
      explanation:"1990లో, నేషనల్ ఫ్రంట్ ప్రభుత్వం ఎన్నికల సంస్కరణలపై దినేష్ గోస్వామి కమిటీని నియమించింది, ఇది 1996లో సిఫార్సులు చేసింది.",
    ),

    Question(
      questionText: "1971 జాతీయ గౌరవానికి అవమానాల నిరోధక చట్టం ప్రకారం 6 సంవత్సరాల పాటు ఎన్నికల్లో పోటీ చేయడానికి ఒక వ్యక్తిని అనర్హుడయ్యేది ఏమిటి?",
      options:[
        "జాతీయ చిహ్నాలను అవమానించడంతో సంబంధం లేని నేరారోపణలు",
        "పబ్లిక్ ఆర్డర్‌కు వ్యతిరేకంగా నేరాలు",
        "జాతీయ జెండాను, భారత రాజ్యాంగాన్ని అవమానించడం లేదా జాతీయ గీతం ఆలపించడాన్ని నిరోధించడం",
        "ప్రభుత్వ వ్యతిరేక కార్యకలాపాలలో పాల్గొనడం"
      ],
      correctAnswerIndex: 2,
      explanation:"జాతీయ పతాకాన్ని, భారత రాజ్యాంగాన్ని అవమానించినందుకు లేదా జాతీయ గీతాన్ని ఆలపించడాన్ని నిరోధించినందుకు దోషిగా నిర్ధారించబడిన వ్యక్తి జాతీయ గౌరవానికి అవమానాల నిరోధక చట్టం 1971 ప్రకారం 6 సంవత్సరాల పాటు ఎన్నికల్లో పోటీ చేయడానికి అనర్హుడవుతాడు.",
    ),

    Question(
        questionText: "1997లో ప్రెసిడెంట్ మరియు వైస్ ప్రెసిడెంట్ ఎన్నికలకు ప్రతిపాదకులుగా మరియు సెకండర్లుగా ఓటర్ల సంఖ్యలో ఏ మార్పు జరిగింది?",
        options:[
          "రాష్ట్రపతికి 5 నుండి 20కి మరియు ఉపరాష్ట్రపతికి 2 నుండి 50కి పెంచబడింది",
          "అధ్యక్ష మరియు ఉపరాష్ట్రపతి రెండింటికీ 10 నుండి 50కి పెంచబడింది",
          "రాష్ట్రపతికి 20 నుండి 5కి మరియు ఉపరాష్ట్రపతికి 50 నుండి 2కి తగ్గింది",
          "ప్రతిపాదకులు మరియు ద్వితీయులుగా ఓటర్ల సంఖ్యలో మార్పు లేదు"
        ],
        correctAnswerIndex: 1,
        explanation:"1997లో, రాష్ట్రపతి పదవికి ఎన్నికల్లో పోటీ చేసేందుకు ప్రతిపాదకులు మరియు ద్వితీయులుగా ఉన్న ఓటర్ల సంఖ్య 10 నుండి 50కి మరియు ఉపరాష్ట్రపతి కార్యాలయానికి 5 నుండి 20కి పెంచబడింది."
    ),

    Question(
      questionText: "1999లో ప్రవేశపెట్టిన ఏ నిబంధన, ఎన్నికల విధులపై మోహరింపు కోసం వివిధ సంస్థల నుండి ఉద్యోగులను అభ్యర్థించడాన్ని అనుమతిస్తుంది?",
      options:[
        "నివాసం లేదా నివాసం అవసరం",
        "అభ్యర్థులచే నేర పూర్వజన్మలు, ఆస్తులు మొదలైన వాటి ప్రకటన",
        "ఎన్నికల విధుల కోసం సిబ్బందిని అభ్యర్థించడం",
        "ఎలక్ట్రానిక్ మీడియాపై సమయం కేటాయింపు"
      ],
      correctAnswerIndex: 2,
      explanation:"1999లో, స్థానిక అధికారులు, జాతీయం చేయబడిన బ్యాంకులు, విశ్వవిద్యాలయాలు, LIC, ప్రభుత్వ సంస్థలు మరియు ఇతర ప్రభుత్వ-సహాయక సంస్థల నుండి ఉద్యోగులను ఎన్నికల విధుల్లో మోహరించేందుకు అనుమతిస్తూ ఒక నిబంధన రూపొందించబడింది.",
    ),
    Question(
      questionText: "లోక్‌సభ మరియు రాష్ట్ర శాసనసభలకు ఎన్నికల సమయంలో ఎగ్జిట్ పోల్స్‌కు సంబంధించి 2009లో ఏ మార్పును ప్రవేశపెట్టారు?",
      options:[
      "ఓటర్లకు మరింత సమాచారం అందించడానికి ఎగ్జిట్ పోల్స్ ప్రోత్సహించబడ్డాయి.",
      "ఎగ్జిట్ పోల్స్ నిషేధించబడ్డాయి మరియు ఫలితాల ప్రచురణ నిషేధించబడింది.",
      "ఓటింగ్ వ్యవధి ముగిసిన తర్వాత మాత్రమే ఎగ్జిట్ పోల్స్ అనుమతించబడతాయి.",
      "పారదర్శకత కోసం ఎన్నికల సంఘం ఎగ్జిట్ పోల్స్ నిర్వహించింది."
      ],
      correctAnswerIndex: 1,
      explanation:"2009లో, లోక్‌సభ మరియు రాష్ట్ర శాసనసభలకు ఎన్నికల సమయంలో ఎగ్జిట్ పోల్స్ నిర్వహించడాన్ని మరియు ఫలితాలను ప్రచురించడాన్ని నిషేధించే నిబంధనను ప్రవేశపెట్టారు.",
    ),

    Question(
      questionText: "ఏ నిబంధన, 2009లో ప్రవేశపెట్టబడింది, అవినీతికి పాల్పడిన వ్యక్తిని అనర్హులుగా ప్రకటించే విధానాన్ని సులభతరం చేసింది?",
      options:[
        "అవినీతి చర్యల పరిధిలోని అధికారులందరితో సహా",
        "అభ్యర్థులకు సెక్యూరిటీ డిపాజిట్ పెంపు",
        "అనర్హత కోసం కేసును సమర్పించడానికి సమయ పరిమితి",
        "ఎన్నికల విధులకు సిబ్బందిని కోరడం"
      ],
      correctAnswerIndex: 2,
      explanation:"2009లో, అవినీతికి పాల్పడిన వ్యక్తిపై అనర్హత వేటు వేయడానికి ప్రక్రియను సులభతరం చేయడానికి ఒక నిబంధన చేయబడింది. ఇది మూడు నెలల కాలపరిమితిని అందించింది, దానిలో పేర్కొన్న అధికారం ఒక కేసును సమర్పించవలసి ఉంటుంది అవినీతికి పాల్పడినట్లు గుర్తించిన వ్యక్తి అనర్హత ప్రశ్నకు సంబంధించిన నిర్ణయం కోసం రాష్ట్రపతికి పంపారు.",
    ),

    Question(
      questionText: "రాజకీయ నిధులకు సంబంధించి 2018లో ఏ ముఖ్యమైన మార్పును ప్రవేశపెట్టారు?",
      options:[
        "ఎలక్టోరల్ బాండ్ల పరిచయం",
        "నగదు విరాళాల నిషేధం",
        "కార్పొరేట్ విరాళాలపై పరిమితి",
        "విదేశీ నిధుల నిరాకరణ"
      ],
      correctAnswerIndex: 0,
      explanation:"2018లో, కేంద్ర ప్రభుత్వం రాజకీయ పార్టీలకు ఇచ్చే నగదు విరాళాలకు ప్రత్యామ్నాయంగా ఎలక్టోరల్ బాండ్ స్కీమ్‌ను ప్రవేశపెట్టింది. ఇది రాజకీయ నిధుల వ్యవస్థలో క్లీన్ మనీ మరియు గణనీయమైన పారదర్శకతను తీసుకురావాలని లక్ష్యంగా పెట్టుకుంది.",
    ),

    Question(
      questionText: "2013లో, జైలులో లేదా పోలీసు కస్టడీలో ఉన్న వ్యక్తులకు సంబంధించి సుప్రీంకోర్టు ఏ కొత్త నిబంధనను సమర్థించింది?",
      options:[
        "వారు ఎన్నికల్లో పోటీ చేయడానికి అనర్హులు.",
        "వారు ఓటు వేయడానికి అనుమతించబడ్డారు.",
        "వారు రాజకీయ పార్టీలకు అభ్యర్థులు కాలేరు.",
        "వారి ఓటింగ్ హక్కులు తాత్కాలికంగా నిలిపివేయబడ్డాయి."
      ],
      correctAnswerIndex: 0,
      explanation:"2013లో, జైలులో లేదా పోలీసు కస్టడీలో ఉన్న వ్యక్తులు ఎన్నికల్లో పోటీ చేయడానికి అనుమతించే నిబంధనను సుప్రీంకోర్టు సమర్థించింది. ఓటు వేయకుండా నిషేధం కారణంగా, ఓటర్ల జాబితాలో పేరు నమోదు చేయబడిన వ్యక్తి నిలిపివేయబడరని స్పష్టంగా పేర్కొంది. ఎలెక్టర్‌గా ఉండటానికి.",
    ),

    Question(
      questionText: "పేరుతో కూడిన అభ్యర్థులు ఉన్న నియోజకవర్గాలలో ఓటర్లలో గందరగోళాన్ని నివారించడానికి 2015లో ఏ మార్పు చేశారు?",
      options:[
        "ఎలక్ట్రానిక్ ఓటింగ్ యంత్రాల పరిచయం",
        "అభ్యర్థులకు అదనపు ప్రత్యయాల అవసరం",
        "ఓటర్ ఐడిల తప్పనిసరి వినియోగం",
        "బ్యాలెట్ పేపర్లు మరియు ఈవీఎంలపై అభ్యర్థుల ఫోటోగ్రాఫ్‌లను చేర్చడం"
      ],
      correctAnswerIndex: 3,
      explanation:"2015లో, పేరున్న అభ్యర్థులు పోటీ చేసే నియోజకవర్గాల్లోని ఓటర్లలో గందరగోళాన్ని నివారించడానికి, ఎన్నికల సంఘం బ్యాలెట్ పత్రాలు మరియు EVM లలో వారి పేరు మరియు పార్టీ గుర్తుతో అభ్యర్థి చిత్రాన్ని ఉంచాలని ఆదేశించింది.",
    ),

    Question(
      questionText: "ఎన్నికల చట్టాల (సవరణ) చట్టం, 2021 ద్వారా ఏ కీలక ఎన్నికల సంస్కరణలు ప్రవేశపెట్టబడ్డాయి?",
      options:[
        "ఆన్‌లైన్ ఓటింగ్‌ను అనుమతించడం",
        "తప్పనిసరి ఓటింగ్‌ను ప్రవేశపెట్టడం",
        "ఎలక్టోరల్ రోల్ డేటాను ఆధార్‌తో లింక్ చేయడం",
        "అనుపాత ప్రాతినిధ్యాన్ని అమలు చేయడం"
      ],
      correctAnswerIndex: 2,
      explanation:"ఎన్నికల చట్టాల (సవరణ) చట్టం, 2021, బహుళ నమోదులను నిరోధించడానికి ఆధార్ పర్యావరణ వ్యవస్థతో ఎలక్టోరల్ రోల్ డేటాను లింక్ చేయడం మరియు ఓటర్ల జాబితాల తయారీ లేదా పునర్విమర్శ కోసం అదనపు అర్హత తేదీలను పేర్కొనడం వంటి ఎన్నికల సంస్కరణలను ప్రవేశపెట్టింది.",
    ),

    Question(
      questionText: "సర్వీస్ ఓటర్ల జీవిత భాగస్వాములు ఓటు వేయడానికి సవరణ చట్టం ఏ మార్పు చేసింది?",
      options:[
        "ఇది సర్వీస్ ఓటర్ల జీవిత భాగస్వాముల కోసం ఆన్‌లైన్ ఓటింగ్‌ను అనుమతించింది.",
        "ఇది జీవిత భాగస్వాములను చేర్చడానికి 'భార్య' యొక్క నిర్వచనాన్ని విస్తరించింది.",
        "ఇది సర్వీస్ ఓటర్ల జీవిత భాగస్వాములు ఓటు వేయకుండా నిషేధించింది.",
        "సర్వీస్ ఓటర్ల జీవిత భాగస్వాములు పోస్టల్ బ్యాలెట్ ద్వారా ఓటు వేయాలి."
      ],
      correctAnswerIndex: 1,
      explanation:"ఎన్నికల చట్టాలు (సవరణ) చట్టం, 2021, ఎన్నికల చట్టాలను లింగ-తటస్థంగా మార్చడానికి, సేవా ఓటర్ల జీవిత భాగస్వాములు తమ ఓటు వేయడానికి వీలు కల్పించడానికి 'భార్య' అనే పదాన్ని 'భార్య' అనే పదంతో భర్తీ చేసింది.",
    ),

    Question(
      questionText: "ప్రాంగణాల అభ్యర్థనకు సంబంధించి సవరణ చట్టం ఏ ముఖ్యమైన విస్తరణను తీసుకువచ్చింది?",
      options:[
        "రాజకీయ ర్యాలీల కోసం ప్రాంగణాన్ని అభ్యర్థించడం",
        "ప్రచార కార్యాలయాల కోసం ప్రాంగణాన్ని అభ్యర్థించడం",
        "బ్యాలెట్ బాక్సుల నిల్వ కోసం ప్రాంగణాన్ని అభ్యర్థించడం",
        "గణన, నిల్వ మరియు వసతి ప్రయోజనాల కోసం ప్రాంగణాన్ని అభ్యర్థించడం"
      ],
      correctAnswerIndex: 3,
      explanation:"సవరణ చట్టం, 2021, పోలింగ్ జరిగిన తర్వాత, కౌంటింగ్, ఓటింగ్ యంత్రాల నిల్వ, భద్రతా దళాల వసతి మరియు పోలింగ్ సిబ్బంది వంటి ప్రయోజనాల కోసం ప్రాంగణాన్ని అభ్యర్థించడానికి ఆధారాన్ని విస్తరించింది.",
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
    home: erfrms_te(),
  ));
}

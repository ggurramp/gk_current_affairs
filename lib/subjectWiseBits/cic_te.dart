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

class cic_te extends StatefulWidget {
  final String? userIdentifier;

  cic_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cic_te> createState() => _cic_teState();
}

class _cic_teState extends State<cic_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//62.సెంట్రల్ ఇన్ఫర్మేషన్ కమిషన్

    Question(
      questionText: "కేంద్ర సమాచార కమిషన్ ఏ చట్టం ప్రకారం ఏర్పాటైంది?",
      options:["భారత రాజ్యాంగం", "సమాచార బహిర్గతం చట్టం", "సమాచార హక్కు చట్టం (2005)", "కేంద్ర ప్రభుత్వ సాధికారత చట్టం"],
      correctAnswerIndex: 2,
      explanation:"సమాచార హక్కు చట్టం (2005) నిబంధనల ప్రకారం కేంద్ర సమాచార కమిషన్ ఏర్పాటు చేయబడింది.",
    ),

    Question(
      questionText: "కేంద్ర సమాచార కమిషన్ కూర్పు ఏమిటి?",
      options:[
        "ప్రధాన మంత్రి నియమించిన ఒక ప్రధాన సమాచార కమిషనర్ మరియు పది మంది సమాచార కమిషనర్లు",
        "ఒక ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్రపతిచే నియమించబడిన పది మంది సమాచార కమిషనర్లు",
        "ప్రధాన మంత్రి నియమించిన ఒక ప్రధాన సమాచార కమిషనర్ మరియు ఐదుగురు సమాచార కమిషనర్లు",
        "రాష్ట్రపతి నియమించిన ఒక ప్రధాన సమాచార కమిషనర్ మరియు ఐదుగురు సమాచార కమిషనర్లు"
      ],
      correctAnswerIndex: 1,
      explanation:"కేంద్ర సమాచార కమిషన్‌లో ఒక ప్రధాన సమాచార కమిషనర్ మరియు పది మందికి మించని సమాచార కమిషనర్లు ఉంటారు, ఒక కమిటీ సిఫార్సుపై రాష్ట్రపతి నియమించారు.",
    ),

    Question(
      questionText: "చీఫ్ ఇన్ఫర్మేషన్ కమిషనర్ మరియు ఇన్ఫర్మేషన్ కమీషనర్ల నియామకాన్ని సిఫార్సు చేసే బాధ్యత కలిగిన కమిటీలో భాగం ఎవరు?",
      options:["రాష్ట్రపతి, ప్రధానమంత్రి మరియు భారత ప్రధాన న్యాయమూర్తి", "ప్రధాని, ప్రతిపక్ష నాయకుడు మరియు భారత ప్రధాన న్యాయమూర్తి", "రాష్ట్రపతి, ప్రధానమంత్రి మరియు లోక్‌సభ స్పీకర్", "ప్రధానమంత్రి, స్పీకర్ లోక్‌సభ, మరియు భారత ప్రధాన న్యాయమూర్తి"],
      correctAnswerIndex: 1,
      explanation:"నియామకాన్ని సిఫార్సు చేసే కమిటీలో ప్రధానమంత్రి చైర్‌పర్సన్‌గా, లోక్‌సభలో ప్రతిపక్ష నేతగా మరియు ప్రధానమంత్రి నామినేట్ చేసిన కేంద్ర క్యాబినెట్ మంత్రిగా ఉంటారు.",
    ),

    Question(
      questionText: "చీఫ్ ఇన్ఫర్మేషన్ కమీషనర్ లేదా ఇన్ఫర్మేషన్ కమిషనర్లుగా నియమితులైన వ్యక్తులకు అర్హత ప్రమాణాలు ఏమిటి?",
      options:[
        "ఏదైనా రాష్ట్రం లేదా కేంద్రపాలిత ప్రాంతం యొక్క పార్లమెంటు సభ్యుడు లేదా శాసనసభ సభ్యుడిగా ఉండాలి",
        "లా, సైన్స్ మరియు టెక్నాలజీలో ఎలాంటి అనుభవం ఉండకూడదు",
        "లాభదాయకమైన మరొక కార్యాలయాన్ని కలిగి ఉండాలి లేదా ఏదైనా రాజకీయ పార్టీతో కనెక్ట్ అయి ఉండాలి",
        "నిర్దిష్ట రంగాలలో విస్తృత జ్ఞానం మరియు అనుభవంతో ప్రజా జీవితంలో ప్రముఖ వ్యక్తులుగా ఉండాలి"
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రధాన సమాచార కమిషనర్ లేదా సమాచార కమిషనర్‌లుగా నియమితులైన వ్యక్తులు చట్టం, సైన్స్ అండ్ టెక్నాలజీ, సోషల్ సర్వీస్, మేనేజ్‌మెంట్, జర్నలిజం, మాస్ మీడియా, లేదా అడ్మినిస్ట్రేషన్ మరియు గవర్నెన్స్‌లో విస్తృత పరిజ్ఞానం మరియు అనుభవంతో ప్రజా జీవితంలో ప్రముఖులుగా ఉండాలి.",
    ),

    Question(
      questionText: "ప్రధాన సమాచార కమిషనర్ లేదా ఏదైనా సమాచార కమిషనర్‌ను తొలగించడానికి గల కారణాలు ఏమిటి?",
      options:[
        "ప్రభుత్వ విధానాలతో విభేదాలు",
        "నిరూపితమైన దుష్ప్రవర్తన లేదా అసమర్థత",
        "అవినీతికి వ్యతిరేకంగా వైఖరి తీసుకోవడం",
        "వాక్ స్వాతంత్ర్య హక్కును వినియోగించుకోవడం"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రధాన సమాచార కమీషనర్ లేదా ఏదైనా సమాచార కమిషనర్‌ను తొలగించడానికి గల కారణాలలో నిరూపితమైన దుష్ప్రవర్తన లేదా అసమర్థత ఉన్నాయి.",
    ),

    Question(
      questionText: "ఏ పరిస్థితులలో రాష్ట్రపతి ప్రధాన సమాచార కమిషనర్‌ను లేదా ఏదైనా సమాచార కమిషనర్‌ను తొలగించవచ్చు?",
      options:[
        "ప్రభుత్వ నిర్ణయాలను వారు విమర్శిస్తే",
        "దివాలా తీసిన వ్యక్తి, నేరానికి పాల్పడినట్లు నిర్ధారించబడి, ఆఫీసు విధులకు వెలుపల వేతనంతో కూడిన ఉద్యోగంలో నిమగ్నమై ఉంటే, మనస్సు లేదా శరీరం యొక్క బలహీనత కారణంగా పనికిరాని వ్యక్తి లేదా పక్షపాత ఆర్థిక లేదా ఇతర ఆసక్తిని సంపాదించినట్లయితే",
        "వారు భిన్నమైన రాజకీయ భావజాలాన్ని కలిగి ఉంటే",
        "ప్రభుత్వ విధానాలను వ్యతిరేకిస్తే"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్రపతి ప్రధాన సమాచార కమిషనర్ లేదా ఏదైనా సమాచార కమిషనర్‌ను దివాలా తీయడం, నేరానికి పాల్పడినట్లు నిర్ధారించడం, కార్యాలయ విధులకు వెలుపల వేతనంతో కూడిన ఉద్యోగంలో నిమగ్నమై ఉండటం, మనస్సు లేదా శరీరం యొక్క బలహీనత కారణంగా అనర్హులు లేదా పక్షపాతాన్ని పొందడం వంటి పరిస్థితులలో తొలగించవచ్చు. ఆర్థిక లేదా ఇతర ఆసక్తి.",
    ),

    Question(
      questionText: "ప్రధాన సమాచార కమిషనర్ మరియు సమాచార కమిషనర్ పదవీకాలం ఏమిటి?",
      options:[
        "జీవితానికి నియమించబడ్డాడు",
        "70 సంవత్సరాల వయస్సు వరకు నియమించబడ్డారు",
        "కేంద్ర ప్రభుత్వం నిర్దేశించిన నిర్దిష్ట కాలానికి లేదా 65 సంవత్సరాల వయస్సు వరకు, ఏది ముందైతే అది నియమించబడతారు",
        "10 సంవత్సరాల స్థిర కాలానికి నియమితులయ్యారు"
      ],
      correctAnswerIndex: 2,
      explanation:"ప్రధాన సమాచార కమిషనర్ మరియు సమాచార కమీషనర్ కేంద్ర ప్రభుత్వం నిర్దేశించిన కాలానికి లేదా వారికి 65 ఏళ్లు వచ్చే వరకు, ఏది ముందైతే అది పదవిలో ఉంటారు.",
    ),

    Question(
      questionText: "ఫిర్యాదులు మరియు అప్పీళ్లను నిర్వహించడంలో కేంద్ర సమాచార కమిషన్ పాత్ర ఏమిటి?",
      options:[
        "ఇది రాజ్యాంగపరమైన అంశాలకు సంబంధించిన ఫిర్యాదులను మాత్రమే నిర్వహిస్తుంది",
        "ఇది ఆర్థిక సంస్థలకు సంబంధించిన ఫిర్యాదులను మాత్రమే పరిగణిస్తుంది",
        "ఇది కేంద్ర ప్రభుత్వం మరియు కేంద్రపాలిత ప్రాంతాల పరిధిలోని వివిధ కార్యాలయాలు, ఆర్థిక సంస్థలు, ప్రభుత్వ రంగ సంస్థలు మొదలైన వాటికి సంబంధించిన ఫిర్యాదులను పరిశీలించి, నిర్ణయం తీసుకుంటుంది",
        "ఇది రాష్ట్రపతి మరియు ప్రధానమంత్రికి వ్యతిరేకంగా వచ్చిన ఫిర్యాదులపై ప్రత్యేకంగా దృష్టి పెడుతుంది"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్ర సమాచార కమిషన్ ఫిర్యాదులను పరిశీలిస్తుంది మరియు కేంద్ర ప్రభుత్వం మరియు కేంద్రపాలిత ప్రాంతాల పరిధిలోని వివిధ కార్యాలయాలు, ఆర్థిక సంస్థలు, ప్రభుత్వ రంగ సంస్థలు మొదలైన వాటికి సంబంధించిన అప్పీళ్లను నిర్ణయిస్తుంది.",
    ),

    Question(
      questionText: "ప్రధాన సమాచార కమిషనర్ మరియు సమాచార కమిషనర్ల నియామకాన్ని సిఫార్సు చేసే కమిటీ పాత్ర ఏమిటి?",
      options:[
        "అధికార పార్టీకి నియమితులైన వారి విధేయతను నిర్ధారించడానికి",
        "సంభావ్య నియామకాల యొక్క ప్రజాదరణను అంచనా వేయడానికి",
        "నిర్దిష్ట రంగాలలో జ్ఞానం మరియు అనుభవంతో ప్రజా జీవితంలో అభ్యర్థుల అర్హతలు మరియు ఔన్నత్యాన్ని అంచనా వేయడానికి",
        "అభ్యర్థుల రాజకీయ అనుబంధాన్ని నిర్ణయించడానికి"
      ],
      correctAnswerIndex: 2,
      explanation:"నిర్దిష్ట రంగాలలో జ్ఞానం మరియు అనుభవంతో ప్రజా జీవితంలో అభ్యర్థుల అర్హతలు మరియు ఔన్నత్యాన్ని నియామకాన్ని సిఫార్సు చేసే కమిటీ అంచనా వేస్తుంది.",
    ),
    Question(
      questionText: "టెక్స్ట్‌లో పేర్కొన్న కేంద్ర సమాచార కమిషన్ విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "ప్రభుత్వ విధానాలకు అనుగుణంగా ఉండేలా చూసుకోవడం",
        "సమాచార అభ్యర్థనలకు సంబంధించిన ఫిర్యాదులను స్వీకరించడం మరియు విచారించడం",
        "ప్రభుత్వ అధికారుల ఆర్థిక రికార్డులను సమీక్షించడం",
        "నేర కార్యకలాపాలపై విచారణ నిర్వహించడం"
      ],
      correctAnswerIndex: 1,
      explanation:"పబ్లిక్ ఇన్ఫర్మేషన్ అధికారిని నియమించకపోవడం, అభ్యర్థించిన సమాచారాన్ని తిరస్కరించడం, ఆలస్యంగా వచ్చిన ప్రతిస్పందనలు, అసమంజసమైన రుసుములు, అసంపూర్ణమైన లేదా తప్పుదారి పట్టించే సమాచారం వంటి సమస్యలను ఎదుర్కొనే వ్యక్తుల నుండి ఫిర్యాదులను స్వీకరించడం మరియు విచారించడం కేంద్ర సమాచార కమిషన్ యొక్క విధుల్లో ఒకటి. , మరియు సమాచారాన్ని పొందేందుకు సంబంధించిన ఇతర విషయాలు.",
    ),

    Question(
      questionText: "ఒక విషయంపై విచారణకు ఆదేశించడంలో కమిషన్‌కు ఏ అధికారం ఉంది?",
      options:[
        "కార్యనిర్వాహక శక్తి",
        "న్యాయ అధికారం",
        "శాసనాధికారం",
        "సలహా శక్తి"
      ],
      correctAnswerIndex: 1,
      explanation:"సహేతుకమైన కారణాలు ఉన్నట్లయితే, ఏదైనా విషయంపై విచారణకు ఆదేశించే అధికారం కమిషన్‌కు ఉంది మరియు విచారణ సమయంలో అది పాక్షిక న్యాయపరమైన అధికారాలను కలిగి ఉంటుంది.",
    ),

    Question(
      questionText: "ఫిర్యాదు విచారణ సమయంలో కమిషన్‌కు ఎలాంటి అధికారాలు ఉంటాయి?",
      options:[
        "సమాచారాన్ని అభ్యర్థించే అధికారం మాత్రమే",
        "దాని నిర్ణయాలను అమలు చేయడానికి కార్యనిర్వాహక అధికారాలు",
        "సాక్షులను పిలిపించడం, సాక్ష్యాలను స్వీకరించడం మరియు పత్రాలను తనిఖీ చేయడంతో సహా పౌర న్యాయస్థానం యొక్క అధికారాలు",
        "కొత్త చట్టాలను రూపొందించడానికి శాసన అధికారాలు"
      ],
      correctAnswerIndex: 2,
      explanation:"ఫిర్యాదు విచారణ సమయంలో, కమిషన్‌కు పౌర న్యాయస్థానం యొక్క అధికారాలు ఉన్నాయి, ఇందులో వ్యక్తులను పిలిపించడం మరియు హాజరుపరచడం, ప్రమాణంపై నోటి లేదా వ్రాతపూర్వక సాక్ష్యం ఇవ్వాలని వారిని బలవంతం చేయడం మరియు ఇతర అధికారాలతో పాటు పబ్లిక్ రికార్డులను అభ్యర్థించడం వంటివి ఉన్నాయి.",
    ),

    Question(
      questionText: "కమీషన్ తన నిర్ణయాలకు అనుగుణంగా ఉండేలా ఏ చర్య తీసుకోవచ్చు?",
      options:[
        "అనుకూలతపై నివేదికలను ప్రచురించడం",
        "దరఖాస్తుదారులపై జరిమానాలు విధించడం",
        "సమాచారం కోసం దరఖాస్తులను తిరస్కరించడం",
        "పబ్లిక్ ఇన్ఫర్మేషన్ ఆఫీసర్‌ను నియమించమని పబ్లిక్ అథారిటీని ఆదేశించడం, జరిమానాలు విధించడం మరియు క్రమశిక్షణా చర్యలను సిఫార్సు చేయడం"
      ],
      correctAnswerIndex: 3,
      explanation:"పబ్లిక్ ఇన్ఫర్మేషన్ ఆఫీసర్‌ను నియమించమని పబ్లిక్ అథారిటీని ఆదేశించడం, జరిమానాలు విధించడం, క్రమశిక్షణా చర్యలను సిఫార్సు చేయడం మరియు మరిన్ని వంటి చర్యలను తీసుకోవడం ద్వారా కమిషన్ తన నిర్ణయాలకు అనుగుణంగా ఉండేలా చూసుకోవచ్చు.",
    ),

    Question(
      questionText: "కమీషన్ కేంద్ర ప్రభుత్వానికి ఏమి సమర్పించింది మరియు ప్రభుత్వం దానితో ఏమి చేస్తుంది?",
      options:[
        "ఆర్థిక నివేదికలు; సిఫార్సులను అమలు చేస్తుంది",
        "చట్టంలోని నిబంధనల అమలుపై వార్షిక నివేదిక; ప్రతి పార్లమెంటు సభ ముందు ఉంచుతుంది",
        "అందుకున్న ఫిర్యాదుల జాబితా; అవసరమైన చర్యలు తీసుకుంటుంది",
        "కొనసాగుతున్న విచారణల వివరాలు; విధాన రూపకల్పన కోసం దీనిని ఉపయోగిస్తుంది"
      ],
      correctAnswerIndex: 1,
      explanation:"సమాచార హక్కు చట్టంలోని నిబంధనల అమలుపై కమిషన్ వార్షిక నివేదికను కేంద్ర ప్రభుత్వానికి సమర్పిస్తుంది మరియు కేంద్ర ప్రభుత్వం ఈ నివేదికను ప్రతి పార్లమెంటు సభ ముందు ఉంచుతుంది.",
    ),

    Question(
      questionText: "ఒక పబ్లిక్ అథారిటీ చట్టంలోని నిబంధనలకు అనుగుణంగా లేనప్పుడు, కమిషన్ ఏమి సిఫార్సు చేయగలదు?",
      options:[
        "ప్రజా అధికారంపై జరిమానాలు విధించడం",
        "ప్రజా అధికార యంత్రాంగానికి హెచ్చరికలు జారీ చేయడం",
        "అధికారానికి అనుగుణంగా ప్రోత్సహించడానికి దశలను సిఫార్సు చేస్తోంది",
        "ప్రజా అధికారంపై చట్టపరమైన చర్యలు తీసుకోవడం"
      ],
      correctAnswerIndex: 2,
      explanation:"ఒక పబ్లిక్ అథారిటీ చట్టం యొక్క నిబంధనలకు అనుగుణంగా లేనప్పుడు, అటువంటి అనుగుణ్యతను ప్రోత్సహించడానికి తీసుకోవలసిన చర్యలను కమిషన్ సిఫారసు చేయవచ్చు.",
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
    home: cic_te(),
  ));
}

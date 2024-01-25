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

class ppart_te extends StatefulWidget {
  final String? userIdentifier;

  ppart_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ppart_te> createState() => _ppart_teState();
}

class _ppart_teState extends State<ppart_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//78.రాజకీయ పార్టీలు

    Question(
      questionText: "సిద్ధాంతాల ఆధారంగా రాజకీయ పార్టీల వర్గీకరణలో, రాడికల్ పార్టీలను సాధారణంగా ఎక్కడ ఉంచుతారు?",
      options:["ఎడమ", "కుడి", "సెంటర్", "కమ్యూనల్"],
      correctAnswerIndex: 0,
      explanation:"సిద్ధాంతాలపై ఆధారపడిన రాజకీయ పార్టీల వర్గీకరణలో రాడికల్ పార్టీలను సాధారణంగా ఎడమవైపు ఉంచుతారు.",
    ),

    Question(
      questionText: "రాజకీయ సందర్భంలో ఒక-పార్టీ వ్యవస్థ యొక్క లక్షణం ఏమిటి?",
      options:["ప్రతిపక్షం ఉన్న బహుళ పాలక పక్షాలు", "రెండు ప్రధాన పార్టీలు", "ప్రతిపక్షం లేని ఒకే ఒక అధికార పార్టీ", "పార్టీల కూటమి"],
      correctAnswerIndex: 2,
      explanation:"రాజకీయ సందర్భంలో ఒక-పార్టీ వ్యవస్థ అనేది ప్రతిపక్షం లేని ఒక అధికార పక్షంతో మాత్రమే వర్గీకరించబడుతుంది.",
    ),

    Question(
      questionText: "ఒక నిర్దిష్ట కాలంలో భారత పార్టీ వ్యవస్థను రజనీ కొఠారి ఎలా వర్ణించారు?",
      options:["బహుళ-పార్టీ ఆధిపత్య వ్యవస్థ", "ఒక-పార్టీ ఆధిపత్య వ్యవస్థ", "రెండు-పార్టీ ఆధిపత్య వ్యవస్థ", "పోటీ బహుళ-పార్టీ వ్యవస్థ"],
      correctAnswerIndex: 1,
      explanation:"రజనీ కొఠారి భారత పార్టీ వ్యవస్థను ఒక నిర్దిష్ట కాలంలో 'ఏక-పార్టీ ఆధిపత్య వ్యవస్థ' లేదా 'కాంగ్రెస్ వ్యవస్థ'గా అభివర్ణించారు.",
    ),

    Question(
      questionText: "బహుళ-పార్టీ వ్యవస్థ కారణంగా భారతదేశంలో సాధారణ దృగ్విషయం ఏమిటి?",
      options:["ఒక-పార్టీ ఆధిపత్యం", "సంకీర్ణ ప్రభుత్వాలు", "రెండు పార్టీల ఆధిపత్యం", "అధికార పాలన"],
      correctAnswerIndex: 1,
      explanation:"బహుళ-పార్టీ వ్యవస్థ కారణంగా, హంగ్ పార్లమెంటులు, హంగ్ అసెంబ్లీలు మరియు సంకీర్ణ ప్రభుత్వాలు భారతదేశంలో ఒక సాధారణ దృగ్విషయంగా మారాయి.",
    ),

    Question(
      questionText: "పార్టీల ఆవిర్భావానికి సంబంధించి భారతీయ పార్టీ వ్యవస్థ యొక్క ముఖ్యమైన లక్షణం ఏమిటి?",
      options:["గ్లోబల్ ఓరియంటేషన్", "జాతీయవాద విధానం", "ప్రాంతీయ పార్టీలు మరియు వాటి పెరుగుతున్న పాత్ర", "మతపరమైన ధోరణి"],
      correctAnswerIndex: 2,
      explanation:"భారతీయ పార్టీ వ్యవస్థ యొక్క ముఖ్యమైన లక్షణం పెద్ద సంఖ్యలో ప్రాంతీయ పార్టీల ఆవిర్భావం మరియు ముఖ్యంగా రాష్ట్రాలలో వాటి పెరుగుతున్న పాత్ర.",
    ),

    Question(
      questionText: "పాశ్చాత్య దేశాలకు విరుద్ధంగా భారతదేశంలో అనేక రాజకీయ పార్టీలు ఏ ప్రాతిపదికన ఏర్పడ్డాయి?",
      options:["సామాజిక-ఆర్థిక మరియు రాజకీయ కార్యక్రమం", "మతం, కులం, భాష, సంస్కృతి మరియు జాతి", "ప్రజాస్వామ్య సూత్రాలు", "ప్రపంచ భావజాలాలు"],
      correctAnswerIndex: 1,
      explanation:"సామాజిక-ఆర్థిక మరియు రాజకీయ కార్యక్రమాలపై తరచుగా పార్టీలు ఏర్పడే పాశ్చాత్య దేశాలకు విరుద్ధంగా భారతదేశంలోని అనేక రాజకీయ పార్టీలు మతం, కులం, భాష, సంస్కృతి మరియు జాతి ఆధారంగా ఏర్పడ్డాయి.",
    ),

    Question(
      questionText: "రాజకీయ నాయకులు తమ పార్టీని విడిచిపెట్టి మరొక పార్టీలో చేరడం లేదా అధికారం మరియు భౌతిక విషయాల కోసం కొత్త పార్టీని ప్రారంభించడం వంటి దృగ్విషయాన్ని వివరించడానికి ఏ పదాన్ని ఉపయోగిస్తారు?",
      options:["విలీనం", "ధ్రువణ", "విచ్ఛిన్నం", "డిఫెక్షన్"],
      correctAnswerIndex: 3,
      explanation:"రాజకీయ నాయకులు తమ పార్టీని విడిచిపెట్టి, మరొకరిలో చేరడం లేదా అధికారం మరియు భౌతిక విషయాల కోసం కొత్త పార్టీని ప్రారంభించడం వంటి దృగ్విషయాన్ని ఫిరాయింపుగా సూచిస్తారు.",
    ),

    Question(
      questionText: "భారతదేశంలోని కొన్ని రాజకీయ పరిస్థితులలో పార్టీ మరియు దాని భావజాలం కంటే తరచుగా ఏది ముఖ్యమైనది?",
      options:["రాజకీయ స్థిరత్వం", "ప్రముఖ నాయకులు", "పార్టీ మేనిఫెస్టో", "ప్రజా ఆసక్తి"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశంలో కొన్ని రాజకీయ దృష్టాంతాలలో, ప్రముఖ నాయకులు తరచుగా పార్టీ మరియు దాని సిద్ధాంతాల కంటే చాలా ముఖ్యమైనవి.",
    ),

    Question(
      questionText: "భారత రాజకీయాల్లో సూత్రాల పట్ల నిబద్ధతను ఏది భర్తీ చేసింది?",
      options:["పవర్ క్యాప్చర్", "ప్రజా ఆసక్తి", "ప్రజాస్వామ్యం", "సైద్ధాంతిక స్పష్టత"],
      correctAnswerIndex: 0,
      explanation:"వచనం ప్రకారం, అధికార సంగ్రహం భారత రాజకీయాల్లో సూత్రాల నిబద్ధతను భర్తీ చేసింది.",
    ),

    Question(
      questionText: "ఒక రాజకీయ పార్టీ పార్టీని కాకుండా ఒక ప్రముఖ నాయకుడి చుట్టూ నిర్వహించబడే పరిస్థితిని వివరించడానికి ఉపయోగించే పదం ఏమిటి?",
      options:["నాయకుడు-కేంద్రీకృత రాజకీయాలు", "సమస్య-ఆధారిత రాజకీయాలు", "సూత్రపూరిత రాజకీయాలు", "సంకీర్ణ రాజకీయాలు"],
      correctAnswerIndex: 0,
      explanation:"ఒక రాజకీయ పార్టీ పార్టీని కాకుండా ఒక ప్రముఖ నాయకుడి చుట్టూ నిర్వహించబడే పరిస్థితిని వర్ణించడానికి ఉపయోగించే పదం నాయకుడి-కేంద్రీకృత రాజకీయం.",
    ),

    Question(
      questionText: "రాజకీయ పార్టీలకు ఎన్నికల సంఘం మంజూరు చేసిన గుర్తింపుతో ఏ ప్రత్యేక హక్కులు ఉన్నాయి?",
      options:[
        "పార్టీ చిహ్నాల ప్రత్యేక ఉపయోగం, రాజకీయ ప్రసారాల కోసం సమయాన్ని కేటాయించడం మరియు ఎన్నికల జాబితాలకు ప్రాప్యత.",
        "ఆర్థిక ప్రయోజనాలు, లోక్‌సభలో రిజర్వ్ చేయబడిన సీట్లు మరియు ప్రభుత్వ యాజమాన్యంలోని మీడియా కవరేజ్.",
        "శాసనసభలలో ప్రత్యేక హోదా, ఎన్నికల విధానాలపై నియంత్రణ మరియు చట్టపరమైన చర్యల నుండి రోగనిరోధక శక్తి.",
        "అపరిమిత నిధులు, ఎన్నికలలో విజయం హామీ మరియు ఎన్నికల నియమాల నుండి మినహాయింపు."
      ],
      correctAnswerIndex: 0,
      explanation:"ఎన్నికల కమీషన్ గుర్తింపు పార్టీ చిహ్నాలను ప్రత్యేకంగా ఉపయోగించడం, రాజకీయ ప్రసారాల కోసం సమయాన్ని కేటాయించడం మరియు ఓటర్ల జాబితాలకు ప్రాప్యత వంటి అధికారాలను మంజూరు చేస్తుంది.",
    ),

    Question(
      questionText: "1952లో మొదటి లోక్‌సభ సాధారణ ఎన్నికల సమయంలో ఎన్ని జాతీయ పార్టీలు ఉన్నాయి?",
      options:["7", "14", "52", "2"],
      correctAnswerIndex: 1,
      explanation:"1952లో మొదటి లోక్‌సభ సాధారణ ఎన్నికల సమయంలో 14 జాతీయ పార్టీలు ఉన్నాయి.",
    ),

    Question(
      questionText: "భారతదేశంలో ఎన్నికల సంఘంచే గుర్తించబడిన రాజకీయ పార్టీలను సూచించడానికి ఏ పదం ఉపయోగించబడుతుంది, కానీ ప్రత్యేక చిహ్నాల వంటి అధికారాలను పొందనిది?",
      options:["రిజిస్టర్డ్-ప్రివిలేజ్డ్ పార్టీలు", "అక్నాలెడ్జ్డ్ పార్టీలు", "రికగ్నైజ్డ్-అన్ ప్రివిలేజ్డ్ పార్టీలు", "రిజర్వ్డ్ సింబల్ పార్టీలు"],
      correctAnswerIndex: 2,
      explanation:"ఎలక్షన్ కమీషన్ ద్వారా గుర్తించబడిన రాజకీయ పార్టీలను సూచించడానికి ఉపయోగించే పదం, కానీ ప్రత్యేక చిహ్న అధికారాలు లేకుండా 'గుర్తించబడిన-అన్ ప్రివిలేజ్డ్ పార్టీలు'",
    ),

    Question(
      questionText: "ఒక నిర్దిష్ట రాష్ట్రంలో ఒక పార్టీ రాష్ట్ర పార్టీగా గుర్తించబడుతుందో లేదో ఏ ప్రమాణాలు నిర్ణయిస్తాయి?",
      options:[
        "రాష్ట్రంలోని లోక్‌సభ మరియు శాసనసభలో నిర్దిష్ట శాతం సీట్లను గెలుచుకోవడం.",
        "లోక్‌సభ ఎన్నికలలో నిర్ణీత సంఖ్యలో ఓట్లను పొందడం.",
        "మూడు రాష్ట్రాల్లో జాతీయ పార్టీగా గుర్తింపు పొందడం.",
        "సంబంధిత రాష్ట్రంలోని శాసనసభ లేదా లోక్‌సభలో కనీస సంఖ్యలో సీట్లు గెలుచుకోవడం మరియు చెల్లుబాటు అయ్యే ఓట్ల శాతాన్ని పొందడం."
      ],
      correctAnswerIndex: 3,
      explanation:"సీట్లు గెలవడం మరియు సంబంధిత రాష్ట్రంలోని శాసనసభ లేదా లోక్‌సభలో చెల్లుబాటు అయ్యే ఓట్ల శాతాన్ని పొందడం వంటి ప్రమాణాల ఆధారంగా ఒక పార్టీ రాష్ట్ర పార్టీగా గుర్తించబడుతుంది.",
    ),

    Question(
      questionText: "సాధారణ ఎన్నికలలో వారి పనితీరు ఆధారంగా గుర్తింపు పొందిన పార్టీల సంఖ్య మారడం యొక్క ప్రాముఖ్యత ఏమిటి?",
      options:[
        "ఇది రాజకీయ అస్థిరత స్థాయిని సూచిస్తుంది.",
        "ఇది పార్టీ పొత్తుల యొక్క మారుతున్న డైనమిక్స్‌ను ప్రతిబింబిస్తుంది.",
        "ఇది ప్రజాభిప్రాయానికి పార్టీల అనుకూలతను ప్రదర్శిస్తుంది.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:"సాధారణ ఎన్నికలలో వారి పనితీరు ఆధారంగా గుర్తింపు పొందిన పార్టీల సంఖ్య మారడం అనేది రాజకీయ గతిశీలతను సూచిస్తుంది, ప్రజాభిప్రాయానికి అనుగుణంగా మరియు రాజకీయ అస్థిరతను సూచిస్తుంది.",
    ),

    Question(
      questionText: "రాజకీయ పార్టీలకు ఎన్నికల సంఘం ఎలా గుర్తింపు ఇస్తుంది మరియు గుర్తింపుతో సంబంధం ఉన్న అధికారాలు ఏమిటి?",
      options:["పార్టీ పరిమాణం ఆధారంగా", "ఓటింగ్ ప్రక్రియ ద్వారా", "పోల్స్‌లో వారి పనితీరు ద్వారా; అధికారాలలో చిహ్నాలు మరియు మీడియా సమయం ఉంటాయి", "యాదృచ్ఛిక ఎంపిక"],
      correctAnswerIndex: 2,
      explanation:"పోల్స్‌లో పార్టీ పనితీరు ఆధారంగా ఎన్నికల సంఘం గుర్తింపును మంజూరు చేస్తుంది మరియు అధికారాలలో పార్టీ చిహ్నాల కేటాయింపు మరియు ప్రభుత్వ యాజమాన్యంలోని మీడియాలో రాజకీయ ప్రసారాలకు సమయం కేటాయించడం వంటివి ఉంటాయి.",
    ),

    Question(
      questionText: "రాజకీయ పార్టీలకు పార్టీ చిహ్నాల కేటాయింపు మరియు ఎన్నికల జాబితాకు ప్రాప్యత వంటి నిర్దిష్ట అధికారాల హక్కును ఏది నిర్ణయిస్తుంది?",
      options:["సభ్యత్వ పరిమాణం", "ఆర్థిక విరాళాలు", "ఎన్నికల సంఘం మంజూరు చేసిన గుర్తింపు", "పోల్ చేసిన అభ్యర్థుల సంఖ్య"],
      correctAnswerIndex: 2,
      explanation:"పార్టీ చిహ్నాలు మరియు ఓటర్ల జాబితాల యాక్సెస్‌తో సహా కొన్ని ప్రత్యేకాధికారాల హక్కు ఎన్నికల సంఘం మంజూరు చేసిన గుర్తింపు ద్వారా నిర్ణయించబడుతుంది.",
    ),

    Question(
      questionText: "ఒక పార్టీ జాతీయ పార్టీగా గుర్తించబడటానికి షరతులు ఏమిటి?",
      options:[
        "ఏ రాష్ట్రంలోనైనా చెల్లుబాటు అయ్యే ఓట్లలో ఆరు శాతం సాధించడం మరియు లోక్‌సభలో నాలుగు సీట్లు గెలుచుకోవడం.",
        "లోక్‌సభలో రెండు శాతం సీట్లు గెలుచుకోవడం మరియు మూడు రాష్ట్రాల నుండి ఎన్నిక కావడం.",
        "నాలుగు రాష్ట్రాల్లో రాష్ట్ర పార్టీగా గుర్తింపు పొందడం.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:"ఓట్లు సాధించడం, సీట్లు గెలుచుకోవడం లేదా బహుళ రాష్ట్రాల్లో గుర్తింపు పొందడం వంటి నిర్దిష్ట షరతుల్లో దేనినైనా పాటించడం ద్వారా పార్టీని జాతీయ పార్టీగా గుర్తించవచ్చు.",
    ),

    Question(
      questionText: "ఏ పరిస్థితులలో పార్టీ రాష్ట్ర పార్టీగా గుర్తింపు పొందింది?",
      options:[
        "ఒక రాష్ట్రంలో ఆరు శాతం చెల్లుబాటు అయ్యే ఓట్లను పొందడం మరియు శాసనసభలో రెండు స్థానాలను గెలుచుకోవడం.",
        "ఒక రాష్ట్రంలో ఆరు శాతం చెల్లుబాటు అయ్యే ఓట్లను పొందడం మరియు లోక్‌సభలో ఒక సీటు గెలుచుకోవడం.",
        "శాసనసభలో మూడు శాతం సీట్లు గెలవడం లేదా మూడు సీట్లు, ఏది ఎక్కువైతే అది.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:"ఓట్లు, సీట్లు గెలుచుకోవడం లేదా సంబంధిత రాష్ట్రంలోని శాసనసభ లేదా లోక్‌సభ రెండింటితో సహా పేర్కొన్న షరతుల్లో దేనినైనా పాటించడం ద్వారా పార్టీని రాష్ట్ర పార్టీగా గుర్తించవచ్చు.",
    ),

    Question(
      questionText: "గుర్తింపు పొందిన పార్టీల సంఖ్య ఎలా మార్పుకు లోబడి ఉంటుంది మరియు జాతీయ పార్టీలు మరియు రాష్ట్ర పార్టీలను ఏమని కూడా పిలుస్తారు?",
      options:[
        "పార్టీ సిద్ధాంతాల ఆధారంగా; సైద్ధాంతిక మరియు ఆచరణాత్మక పార్టీలుగా పిలుస్తారు.",
        "ప్రజా అభిప్రాయం ఆధారంగా మార్పుకు లోబడి ఉంటుంది; డైనమిక్ పార్టీలు అంటారు.",
        "సాధారణ ఎన్నికలలో వారి పనితీరు ఆధారంగా; ఆల్-ఇండియా పార్టీలు మరియు ప్రాంతీయ పార్టీలుగా పిలుస్తారు.",
        "పార్టీ పొత్తుల ఆధారంగా మార్పుకు లోబడి ఉంటుంది; సంకీర్ణ పార్టీలుగా పిలుస్తారు."
      ],
      correctAnswerIndex: 2,
      explanation:"సాధారణ ఎన్నికలలో వాటి పనితీరు ఆధారంగా గుర్తింపు పొందిన పార్టీల సంఖ్య మారుతుంది. జాతీయ పార్టీలు మరియు రాష్ట్ర పార్టీలను వరుసగా అఖిల భారత పార్టీలు మరియు ప్రాంతీయ పార్టీలు అని కూడా అంటారు.",
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
    home: ppart_te(),
  ));
}

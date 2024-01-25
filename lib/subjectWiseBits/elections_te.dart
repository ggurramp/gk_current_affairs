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

class elections_te extends StatefulWidget {
  final String? userIdentifier;

  elections_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<elections_te> createState() => _elections_teState();
}

class _elections_teState extends State<elections_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//80.ఎన్నికలు

    Question(
        questionText: "భారతదేశంలో ఎన్నికల వ్యవస్థకు సంబంధించిన రాజ్యాంగ నిబంధన (ఆర్టికల్ 324) ఏమిటి?",
        options:[
          "ప్రతి రాష్ట్రానికి ప్రత్యేక ఎన్నికల సంఘాన్ని ఏర్పాటు చేయడం.",
          "స్వతంత్ర ఎన్నికల సంఘం ద్వారా ఉచిత మరియు న్యాయమైన ఎన్నికలను నిర్ధారించడం.",
          "మత ప్రాతినిధ్య వ్యవస్థను మరియు ప్రత్యేక ఓటర్లను రద్దు చేయడం.",
          "మతం, జాతి, కులం లేదా లింగం ఆధారంగా ప్రత్యేక ఓటర్ల జాబితాలను మంజూరు చేయడం."
        ],
        correctAnswerIndex: 1,
        explanation:"రాజ్యాంగం (ఆర్టికల్ 324) దేశంలో స్వేచ్ఛగా మరియు నిష్పక్షపాతంగా ఎన్నికలను నిర్ధారించడానికి స్వతంత్ర ఎన్నికల కమిషన్‌ను అందిస్తుంది."
    ),

    Question(
        questionText: "ఎలక్టోరల్ రోల్స్ మరియు ప్రాతినిధ్యానికి సంబంధించి రాజ్యాంగం ఎలాంటి మార్పులను తీసుకువచ్చింది?",
        options:[
          "మత ప్రాతినిధ్యాన్ని మరియు ప్రత్యేక ఓటర్లను ప్రవేశపెట్టడం.",
          "వివిధ నియోజకవర్గాలకు బహుళ ఓటర్ల జాబితాలు.",
          "ప్రతి ప్రాదేశిక నియోజకవర్గానికి ఒకే ఒక సాధారణ ఓటర్ల జాబితాతో మతపరమైన ప్రాతినిధ్యం మరియు ప్రత్యేక ఓటర్లను రద్దు చేయడం.",
          "మతం, జాతి, కులం లేదా లింగం ఆధారంగా ప్రత్యేక ఓటర్ల జాబితాలు."
        ],
        correctAnswerIndex: 2,
        explanation:"రాజ్యాంగం మతపరమైన ప్రాతినిధ్యం మరియు ప్రత్యేక ఓటర్లను రద్దు చేసింది, ప్రతి ప్రాదేశిక నియోజకవర్గానికి ఒక సాధారణ ఓటర్ల జాబితాను మాత్రమే ప్రవేశపెట్టింది."
    ),

    Question(
        questionText: "రాజ్యాంగం ప్రకారం ఎన్నికలలో ఓటు వేయడానికి ఎవరు అర్హులు?",
        options:[
          "పౌరసత్వంతో సంబంధం లేకుండా 18 ఏళ్లు మరియు అంతకంటే ఎక్కువ వయస్సు ఉన్న ఏ వ్యక్తి అయినా.",
          "పౌరసత్వంతో సంబంధం లేకుండా 21 ఏళ్లు మరియు అంతకంటే ఎక్కువ వయస్సు ఉన్న ఏ వ్యక్తి అయినా.",
          "రాజ్యాంగ లేదా శాసన నిబంధనల ప్రకారం అనర్హులు కాని 18 ఏళ్లు మరియు అంతకంటే ఎక్కువ వయస్సు ఉన్న ఏ వ్యక్తి అయినా.",
          "రాజ్యాంగ లేదా శాసన నిబంధనల ప్రకారం అనర్హులు కాని 21 ఏళ్లు మరియు అంతకంటే ఎక్కువ వయస్సు ఉన్న ఏ వ్యక్తి అయినా."
        ],
        correctAnswerIndex: 2,
        explanation:"రాజ్యాంగం ప్రకారం, 18 ఏళ్లు మరియు అంతకంటే ఎక్కువ వయస్సు ఉన్న ఏ వ్యక్తి అయినా ఓటు వేయడానికి అర్హులు, వారు రాజ్యాంగ లేదా శాసన నిబంధనల ప్రకారం అనర్హులు కానట్లయితే."
    ),

    Question(
      questionText: "ఎన్నికలకు సంబంధించి పార్లమెంటుకు ఎలాంటి అధికారాలు ఉన్నాయి?",
      options:[
        "పార్లమెంట్ ఎన్నికల నిర్వహణకు సంబంధించిన చట్టాలను మాత్రమే చేయగలదు.",
        "ఎన్నికల జాబితాలు మరియు నియోజకవర్గాల విభజనతో సహా ఎన్నికలకు సంబంధించిన అన్ని విషయాల కోసం పార్లమెంటు నిబంధనలను రూపొందించగలదు.",
        "ఎన్నికలకు సంబంధించిన చట్టాలు చేయడంలో పార్లమెంటు పాత్ర లేదు.",
        "పార్లమెంట్ నియోజకవర్గాల విభజన కోసం మాత్రమే చట్టాలను చేయగలదు."
      ],
      correctAnswerIndex: 1,
      explanation:"ఎన్నికల జాబితాలు, నియోజకవర్గాల డీలిమిటేషన్ మరియు ఇతర అవసరమైన విషయాలతో సహా ఎన్నికలకు సంబంధించిన అన్ని విషయాల కోసం పార్లమెంటు నిబంధనలను రూపొందించగలదు.",
    ),

    Question(
      questionText: "ఎన్నికలకు సంబంధించిన నిబంధనలను రూపొందించడంలో రాష్ట్ర శాసనసభలు ఏ పాత్ర పోషిస్తాయి?",
      options:[
        "వారు ఎన్నికలకు సంబంధించిన పార్లమెంటరీ చట్టాలను భర్తీ చేయగలరు.",
        "వారు పార్లమెంటరీ చట్టాలను మాత్రమే భర్తీ చేయగలరు మరియు వాటిని భర్తీ చేయలేరు.",
        "ఎన్నికలకు సంబంధించిన నిబంధనలను రూపొందించడంలో వారి పాత్ర లేదు.",
        "పార్లమెంట్ కవర్ చేసినప్పటికీ, వారు అన్ని విషయాల కోసం నిబంధనలను రూపొందించగలరు."
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర శాసనసభలు ఎన్నికలకు సంబంధించిన పార్లమెంటరీ చట్టాలను మాత్రమే భర్తీ చేయగలవు మరియు వాటిని భర్తీ చేయలేవు.",
    ),

    Question(
        questionText: "భారతదేశంలో ప్రధాన ఎన్నికల కమిషనర్ మరియు ఎన్నికల కమిషనర్లను ఎవరు నియమిస్తారు?",
        options:[
          "భారత ప్రధాన మంత్రి.",
          "భారత రాష్ట్రపతి.",
          "భారత ప్రధాన న్యాయమూర్తి.",
          "భారత ఎన్నికల సంఘం."
        ],
        correctAnswerIndex: 1,
        explanation:"భారత రాష్ట్రపతి ప్రధాన ఎన్నికల కమీషనర్ మరియు భారతదేశంలో ఎన్నికల కమిషనర్లను టెక్స్ట్ ప్రకారం నియమిస్తారు."
    ),

    Question(
        questionText: "రాష్ట్రం/కేంద్రపాలిత ప్రాంతంలో ఎన్నికల పనిని ఎవరు పర్యవేక్షిస్తారు?",
        options:[
          "ముఖ్య ఎన్నికల అధికారి (CEO)",
          "జిల్లా ఎన్నికల అధికారి (DEO)",
          "రిటర్నింగ్ అధికారి (RO)",
          "ఎలక్టోరల్ రిజిస్ట్రేషన్ ఆఫీసర్ (ERO)"
        ],
        correctAnswerIndex: 0,
        explanation:"భారత ఎన్నికల సంఘం యొక్క మొత్తం పర్యవేక్షణ, దిశ మరియు నియంత్రణకు లోబడి ఒక రాష్ట్రం/కేంద్రపాలిత ప్రాంతంలో ఎన్నికల పనిని పర్యవేక్షించడానికి ప్రధాన ఎన్నికల అధికారి (CEO) అధికారం కలిగి ఉంటారు."
    ),

    Question(
      questionText: "పార్లమెంటరీ లేదా అసెంబ్లీ నియోజకవర్గంలో ఎన్నికల నిర్వహణకు ఎవరు బాధ్యత వహిస్తారు?",
      options:[
        "ముఖ్య ఎన్నికల అధికారి (CEO)",
        "జిల్లా ఎన్నికల అధికారి (DEO)",
        "రిటర్నింగ్ అధికారి (RO)",
        "ఎలక్టోరల్ రిజిస్ట్రేషన్ ఆఫీసర్ (ERO)"
      ],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటరీ లేదా అసెంబ్లీ నియోజకవర్గాలలో టెక్స్ట్ ప్రకారం ఎన్నికల నిర్వహణకు రిటర్నింగ్ అధికారి (RO) బాధ్యత వహిస్తారు.",
    ),

    Question(
      questionText: "ఎన్నికల సంఘం నియమించిన వ్యయ పరిశీలకుల పాత్ర ఏమిటి?",
      options:[
        "లా అండ్ ఆర్డర్ పరిస్థితులను పర్యవేక్షించడం.",
        "మొత్తం ఎన్నికల నిర్వహణను పర్యవేక్షించడం.",
        "పోటీలో ఉన్న అభ్యర్థుల ఎన్నికల వ్యయాన్ని పర్యవేక్షించడం.",
        "క్లిష్టమైన పోలింగ్ స్టేషన్లలో పోల్ ప్రొసీడింగ్‌లను గమనిస్తోంది."
      ],
      correctAnswerIndex: 2,
      explanation:"వ్యయ పరిశీలకులు టెక్స్ట్‌లో పేర్కొన్న విధంగా పోటీలో ఉన్న అభ్యర్థుల ఎన్నికల వ్యయాన్ని పర్యవేక్షిస్తారు.",
    ),

    Question(
      questionText: "ఎన్నికల సంఘం నియమించిన మైక్రో అబ్జర్వర్ల పాత్ర ఏమిటి?",
      options:[
        "మొత్తం ఎన్నికల నిర్వహణను పర్యవేక్షించడం.",
        "పోటీలో ఉన్న అభ్యర్థుల ఎన్నికల వ్యయాన్ని పర్యవేక్షించడం.",
        "క్లిష్టమైన/దుర్బలమైన పోలింగ్ స్టేషన్లలో పోల్ ప్రొసీడింగ్‌లను గమనించండి.",
        "లా అండ్ ఆర్డర్ పరిస్థితులను పర్యవేక్షించడం."
      ],
      correctAnswerIndex: 2,
      explanation:"మైక్రో అబ్జర్వర్లు టెక్స్ట్ ప్రకారం, క్లిష్టమైన/దుర్బలమైన పోలింగ్ స్టేషన్లలో పోల్ ప్రొసీడింగ్‌లను గమనిస్తారు.",
    ),

    Question(
        questionText: "రద్దు చేసిన లోక్‌సభ చివరి సెషన్‌కు మరియు కొత్త సభను రీకాల్ చేయడానికి మధ్య గరిష్ట వ్యవధి ఎంత?",
        options:[
          "ఒక నెల",
          "మూడు నెలలు",
          "ఆరు నెలల",
          "ఒక సంవత్సరం"
        ],
        correctAnswerIndex: 2,
        explanation:"వచనం ప్రకారం, రద్దు చేయబడిన లోక్‌సభ చివరి సెషన్‌కు మరియు కొత్త సభను రీకాల్ చేయడానికి మధ్య ఆరు నెలల కంటే ఎక్కువ సమయం ఉండదు."
    ),

    Question(
        questionText: "ఎన్నికల సంఘం ఎన్నికల షెడ్యూల్‌ను ప్రకటించిన వెంటనే ఏది అమలులోకి వస్తుంది?",
        options:[
          "ఎన్నికల ఫలితాల ప్రకటన.",
          "మోడల్ కోడ్ ఆఫ్ కండక్ట్.",
          "రాజకీయ పార్టీల ప్రచారం.",
          "ఓటింగ్ ద్వారా ఓటింగ్."
        ],
        correctAnswerIndex: 1,
        explanation:"టెక్స్ట్ ప్రకారం ఎన్నికల సంఘం ఎన్నికల షెడ్యూల్‌ను ప్రకటించిన వెంటనే మోడల్ ప్రవర్తనా నియమావళి అమలులోకి వస్తుంది."
    ),

    Question(
        questionText: "ఎన్నికల అధికారిక ప్రక్రియ ఎప్పుడు ప్రారంభమవుతుంది?",
        options:[
          "ఎన్నికల ప్రచారం తర్వాత.",
          "మోడల్ కోడ్ ఆఫ్ కండక్ట్ తర్వాత.",
          "ఒక ఇంటి సభ్యులను ఎన్నుకోవలసిందిగా ఓటర్లను పిలిచిన నోటిఫికేషన్ తర్వాత.",
          "ప్రమాణం లేదా ధృవీకరణ తర్వాత."
        ],
        correctAnswerIndex: 2,
        explanation:"ఎన్నికల అధికారిక ప్రక్రియ టెక్స్ట్ ప్రకారం, ఇంటి సభ్యులను ఎన్నుకోమని ఓటర్లను పిలిచే నోటిఫికేషన్‌తో ప్రారంభమవుతుంది."
    ),

    Question(
      questionText: "ఎన్నికల ప్రచార సమయంలో సాధించడానికి ఉద్దేశించిన మోడల్ ప్రవర్తనా నియమావళి ఏమిటి?",
      options:[
      "రాజకీయ పార్టీల మధ్య ఘర్షణలు మరియు వివాదాలను ప్రోత్సహించండి.",
      "స్థాయి ప్లేయింగ్ ఫీల్డ్ మరియు శాంతియుత ఎన్నికల ప్రచారాలను నిర్ధారించుకోండి.",
      "అభ్యర్థులు తమ వాదనలను ఓటర్లకు అందించకుండా నిరోధించండి.",
      "ఎన్నికల్లో అధికార పక్షానికి అనుకూలంగా ఉండండి"
      ],
      correctAnswerIndex: 1,
      explanation:"మోడల్ కోడ్ ఆఫ్ కండక్ట్ అనేది లెవెల్ ప్లేయింగ్ ఫీల్డ్‌ని నిర్ధారించడానికి మరియు టెక్స్ట్ ప్రకారం ఆరోగ్యకరమైన మార్గాల్లో ఎన్నికల ప్రచారాన్ని నిర్వహించడానికి ఉద్దేశించబడింది.",
    ),

    Question(
        questionText: "సాంప్రదాయ బ్యాలెట్ పేపర్/బ్యాలెట్ బాక్స్ సిస్టమ్ కంటే ఎలక్ట్రానిక్ ఓటింగ్ మెషీన్‌ల (EVMలు) యొక్క ముఖ్య ప్రయోజనం ఏమిటి?",
        options:[
        "ఈవీఎంలకు ఓటింగ్ కోసం తక్కువ సమయం పడుతుంది.",
        "ఈవీఎంలు చెల్లని మరియు సందేహాస్పద ఓట్ల అవకాశాన్ని తొలగిస్తాయి.",
        "ఈవీఎంలు బ్యాలెట్ పేపర్ల ముద్రణ ఖర్చును తగ్గిస్తాయి.",
        "ఈవీఎంలు ఓట్ల లెక్కింపు ప్రక్రియను నెమ్మదిస్తాయి."
    ],
    correctAnswerIndex: 1,
    explanation:"టెక్స్ట్ ప్రకారం, సాంప్రదాయ వ్యవస్థ కంటే EVMల ప్రయోజనాల్లో ఒకటి చెల్లని మరియు సందేహాస్పద ఓట్ల అవకాశాన్ని తొలగిస్తుంది."
    ),

    Question(
      questionText: "ఓటరు ఎడమ చూపుడు వేలికి చెరగని సిరా వేయడం వల్ల ప్రయోజనం ఏమిటి?",
      options:[
        "ఓటర్ యొక్క రాజకీయ ప్రాధాన్యతను సూచించడానికి.",
        "ఎన్నికల ప్రచారంలో ఓటరును గుర్తించడానికి.",
        "ఓటరు బహుళ ఓట్లు వేయకుండా నిరోధించడానికి.",
        "ఓటింగ్ ప్రక్రియను వేగవంతం చేయడానికి."
      ],
      correctAnswerIndex: 2,
      explanation:"టెక్స్ట్ ప్రకారం, ఓటరు యొక్క ఎడమ చూపుడు వేలికి చెరగని సిరాను పూయడం అనేది ఓటరు బహుళ ఓట్లు వేయకుండా నిరోధించడమే.",
    ),

    Question(
      questionText: "పోలింగ్ ప్రారంభానికి ముందు మరియు పోలింగ్ ముగిసిన తర్వాత ఎంత సమయం వరకు ఒపీనియన్ పోల్స్ ఫలితాలు ప్రచురించబడవు?",
      options:[
        "ఒక రోజు ముందు మరియు ఒక రోజు తర్వాత.",
        "రెండు రోజుల ముందు మరియు ఒక రోజు తర్వాత.",
        "రెండు రోజుల ముందు మరియు రెండు రోజుల తరువాత.",
        "ఒక రోజు ముందు మరియు రెండు రోజుల తరువాత."
      ],
      correctAnswerIndex: 1,
      explanation:"ఒపీనియన్ పోల్స్ ఫలితాలను పోలింగ్ ప్రారంభానికి రెండు రోజుల ముందు మరియు పోలింగ్ ముగిసిన తర్వాత ఏ నియోజకవర్గాల్లోనైనా ప్రచురించడం సాధ్యం కాదని టెక్స్ట్ పేర్కొంది.",
    ),

    Question(
      questionText: "అధికారిక ఎన్నికల ప్రచారం యొక్క కాలం ఏమిటి?",
      options:[
        "ఒక వారం",
        "రెండు వారాలు",
        "మూడు వారాలు",
        "నాలుగు వారాలు"
      ],
      correctAnswerIndex: 1,
      explanation:"అధికారిక ఎన్నికల ప్రచారం నామినేటెడ్ అభ్యర్థుల జాబితాను రూపొందించినప్పటి నుండి కనీసం రెండు వారాల పాటు కొనసాగుతుంది మరియు టెక్స్ట్ ప్రకారం పోలింగ్ ముగియడానికి 48 గంటల ముందు అధికారికంగా ముగుస్తుంది.",
    ),

    Question(
      questionText: "ఎన్నికల వ్యవస్థ పరంగా లోక్ సభకు ఎన్నికలు ఎలా నిర్వహించబడతాయి?",
      options:[
        "అనుపాత ప్రాతినిధ్యం.",
        "ఫస్ట్-పాస్ట్-ది-పోస్ట్.",
        "మిశ్రమ-సభ్యుల అనుపాత ప్రాతినిధ్యం.",
        "ఒకే బదిలీ చేయదగిన ఓటు."
      ],
      correctAnswerIndex: 1,
      explanation:"లోక్‌సభకు ఎన్నికలు వచనం ప్రకారం ఫస్ట్-పాస్ట్-ది-పోస్ట్ ఎన్నికల విధానాన్ని ఉపయోగించి నిర్వహించబడతాయి.",
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
    home: elections_te(),
  ));
}

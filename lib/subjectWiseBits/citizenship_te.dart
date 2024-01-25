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

class citizenship_te extends StatefulWidget {
  final String? userIdentifier;

  citizenship_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<citizenship_te> createState() => _citizenship_teState();
}

class _citizenship_teState extends State<citizenship_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//చాప్టర్ 7 పౌరసత్వం
    Question(
        questionText: "భారతదేశంలో పౌరులు అనుభవిస్తున్న కొన్ని పౌర మరియు రాజకీయ హక్కులు ఏమిటి?",
        options:["ఆయుధాలు ధరించే హక్కు", "వివక్షత హక్కు", "అవకాశ సమానత్వం హక్కు", "సమాచారాన్ని దాచే హక్కు"],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలోని పౌరులు సమానావకాశాల హక్కు, వాక్ స్వాతంత్ర్యం, సాంస్కృతిక మరియు విద్యా హక్కులు మరియు ఎన్నికల్లో ఓటు వేసే మరియు పోటీ చేసే హక్కు వంటి పౌర మరియు రాజకీయ హక్కులను అనుభవిస్తారు."
    ),

    Question(
        questionText: "పౌరసత్వం పరంగా, USA వంటి సమాఖ్య రాష్ట్రాల నుండి భారతదేశం ఎలా భిన్నంగా ఉంటుంది?",
        options:["భారతదేశంలో ద్వంద్వ పౌరసత్వం ఉంది", "భారతదేశంలో రాష్ట్ర పౌరసత్వం ఉంది", "భారతదేశం ఒకే పౌరసత్వ విధానాన్ని అనుసరిస్తుంది", "భారతదేశం మతం ఆధారంగా పౌరసత్వాన్ని మంజూరు చేస్తుంది"],
        correctAnswerIndex: 2,
        explanation:"భారతదేశం ఒకే పౌరసత్వం యొక్క విధానాన్ని అనుసరిస్తుంది, ఇక్కడ విధేయత కేవలం యూనియన్‌కు మాత్రమే ఉంటుంది, USA వంటి సమాఖ్య రాష్ట్రాల వలె కాకుండా దేశం మరియు రాష్ట్రం రెండింటికీ విధేయతతో ద్వంద్వ పౌరసత్వం ఉంటుంది."
    ),

    Question(
        questionText: "భారత పౌరులలో వివక్ష లేకపోవడం అనే సాధారణ నియమానికి ఏ మినహాయింపులు ఉన్నాయి?",
        options:["లింగం ఆధారంగా వివక్ష", "నివాసం ఆధారంగా వివక్ష", "వృత్తి ఆధారంగా వివక్ష", "విద్య ఆధారంగా వివక్ష"],
        correctAnswerIndex: 1,
        explanation:"మినహాయింపులలో కొన్ని ఉద్యోగాల కోసం నివాస పరిస్థితులను సూచించే పార్లమెంట్ సామర్థ్యం మరియు మతం, జాతి, కులం, లింగం లేదా పుట్టిన ప్రదేశం (నివాసం కాదు) ఆధారంగా వివక్షను నిషేధించే రాజ్యాంగపరమైన నిబంధనలు ఉన్నాయి."
    ),

    Question(
        questionText: "జమ్మూ మరియు కాశ్మీర్‌కు ప్రత్యేక నిబంధనలకు సంబంధించి ఏ చారిత్రక సందర్భం ప్రస్తావించబడింది?",
        options:["విద్య కోసం ప్రత్యేక నిబంధనలు", "ఉపాధి కోసం ప్రత్యేక నిబంధనలు", "ఆరోగ్య సంరక్షణ కోసం ప్రత్యేక నిబంధనలు", "వ్యవసాయానికి ప్రత్యేక నిబంధనలు"],
        correctAnswerIndex: 1,
        explanation:"జమ్మూ మరియు కాశ్మీర్ కోసం ప్రత్యేక నిబంధనలలో శాశ్వత నివాసితులను నిర్వచించడం మరియు ప్రత్యేక హక్కులు, అధికారాలు మరియు స్కాలర్‌షిప్‌లను మంజూరు చేయడం, 2019లో ప్రత్యేక హోదా రద్దుకు సంబంధించిన చారిత్రక సందర్భం ఉన్నాయి."
    ),

    Question(
        questionText: "ఏకరీతి హక్కులపై రాజ్యాంగపరమైన ప్రాధాన్యత ఉన్నప్పటికీ, భారతదేశంలో ఏ సవాళ్లను టెక్స్ట్ అంగీకరిస్తుంది?",
        options:["ఆర్థిక సవాళ్లు", "రాజకీయ సవాళ్లు", "మత అల్లర్లు, వర్గ వైరుధ్యాలు, కుల యుద్ధాలు, భాషాపరమైన ఘర్షణలు మరియు జాతి వివాదాలు", "పర్యావరణ సవాళ్లు"],
        correctAnswerIndex: 2,
        explanation:"మతోన్మాద అల్లర్లు, వర్గ వైరుధ్యాలు, కుల యుద్ధాలు, భాషాపరమైన ఘర్షణలు మరియు జాతి వివాదాలు వంటి సవాళ్లను పాఠం అంగీకరిస్తుంది, ఇది పూర్తిగా ఐక్యమైన మరియు సమగ్ర భారత దేశాన్ని నిర్మించాలనే లక్ష్యం పూర్తిగా సాకారం కాలేదని సూచిస్తుంది."
    ),
    Question(
        questionText: "భారత పౌరసత్వాన్ని కోల్పోవడానికి పౌరసత్వ చట్టం (1955)లో పేర్కొన్న మూడు మార్గాలు ఏమిటి?",
        options:["నిరాకరణ, పొడిగింపు, లేమి", "తొలగింపు, లేమి, తిరస్కరణ", "తొలగింపు, సముపార్జన, అనర్హత", "పరిత్యాగం, రద్దు, లేమి"],
        correctAnswerIndex: 3,
        explanation:"పౌరసత్వ చట్టం (1955) భారతీయ పౌరసత్వాన్ని కోల్పోయే మూడు మార్గాలను వివరిస్తుంది: త్యజించడం, రద్దు చేయడం మరియు లేమి."
    ),

    Question(
        questionText: "భారత పౌరసత్వాన్ని త్యజించడం ఎప్పుడు జరుగుతుంది?",
        options:["శాంతి సమయంలో మాత్రమే", "యుద్ధ సమయంలో మాత్రమే", "పూర్తి వయస్సు గల పౌరులకు ఎప్పుడైనా", "ఎప్పుడూ అనుమతించబడదు"],
        correctAnswerIndex: 2,
        explanation:"భారత పౌరసత్వాన్ని త్యజించడం పూర్తి వయస్సు గల పౌరులకు ఏ సమయంలోనైనా జరుగుతుంది, యుద్ధ సమయంలో మినహాయింపులతో."
    ),

    Question(
        questionText: "లేమి కింద భారత పౌరసత్వాన్ని తప్పనిసరి రద్దు చేయడానికి కారణాలలో ఒకటి ఏమిటి?",
        options:["భారతదేశం వెలుపల సుదీర్ఘ నివాసం", "విదేశీ పౌరసత్వం పొందడం", "మైనర్ బిడ్డగా ఉండటం", "ప్రభుత్వ సేవలో పాల్గొనడం"],
        correctAnswerIndex: 1,
        explanation:"ఒక వ్యక్తి స్వచ్ఛందంగా విదేశీ పౌరసత్వాన్ని పొందినట్లయితే, భారత పౌరసత్వాన్ని నిర్బంధంగా రద్దు చేయవచ్చు."
    ),

    Question(
        questionText: "పౌరసత్వ చట్టానికి సంబంధించి 2000లో ఏర్పాటైన కమిటీ ప్రయోజనం ఏమిటి?",
        options:["రాజ్యాంగాన్ని సవరించడానికి", "భారతదేశ డయాస్పోరాను అధ్యయనం చేయడానికి", "ద్వంద్వ పౌరసత్వాన్ని ప్రోత్సహించడానికి", "ఓవర్సీస్ సిటిజన్ పథకాన్ని సమీక్షించడానికి"],
        correctAnswerIndex: 1,
        explanation:"2000లో ఏర్పాటైన కమిటీకి ప్రపంచ భారతీయ డయాస్పోరా గురించి సమగ్ర అధ్యయనం చేయాలనే ఆదేశం ఉంది."
    ),

    Question(
        questionText: "సారాంశం ప్రకారం ఓవర్సీస్ సిటిజన్ ఆఫ్ ఇండియా (OCI) కార్డ్ హోల్డర్‌లకు ఏ హక్కులు ఉన్నాయి?",
        options:["ప్రజా ఉపాధిలో సమాన అవకాశం", "అధ్యక్షుడిగా ఎన్నిక కావడానికి అర్హత", "ఓటు హక్కు", "ప్రజా సేవలకు నియామకం"],correctAnswerIndex: 2,
        explanation:"OCI కార్డ్ హోల్డర్లు కొన్ని హక్కులకు అర్హులు కానీ భారతదేశ ఎన్నికలలో ఓటు వేయకుండా పరిమితం చేయబడతారు."
    ),

    Question(
        questionText: "ఏ పరిస్థితులలో కేంద్ర ప్రభుత్వం OCI కార్డ్ హోల్డర్ యొక్క రిజిస్ట్రేషన్‌ని రద్దు చేయవచ్చు?",
        options:["ద్వంద్వ పౌరసత్వం కలిగి ఉండటం", "చట్టాల ఉల్లంఘన", "వివాహం రద్దు", "భారతదేశం వెలుపల నిరంతర నివాసం"],
        correctAnswerIndex: 1,
        explanation:"పౌరసత్వ చట్టంతో సహా చట్టాలను ఉల్లంఘించడం వంటి కారణాల వల్ల కేంద్ర ప్రభుత్వం OCI నమోదును రద్దు చేయవచ్చు."
    ),
    Question(
        questionText: "భారతదేశంలో ఒకే పౌరసత్వ వ్యవస్థ యొక్క ప్రాముఖ్యత ఏమిటి?",
        options:[
          "ఇది దేశం మరియు రాష్ట్రం రెండింటికీ ద్వంద్వ విధేయతను ప్రోత్సహిస్తుంది.",
          "ఇది జననం లేదా నివాసం ఆధారంగా పౌరుల మధ్య వివక్షను నిరోధిస్తుంది.",
          "ఇది పౌరులకు ప్రత్యేక హక్కులు మరియు అధికారాలను మంజూరు చేస్తుంది.",
          "ఇది రాజకీయ నిర్ణయాల ఆధారంగా పౌరసత్వాన్ని రద్దు చేయడానికి అనుమతిస్తుంది."
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలోని ఒకే పౌరసత్వ వ్యవస్థ పౌరుల మధ్య వారి పుట్టిన ప్రదేశం లేదా నివాస స్థలం ఆధారంగా వివక్షను నిరోధిస్తుంది, ఐక్యత మరియు సమానత్వాన్ని పెంపొందిస్తుంది."
    ),
    Question(
        questionText: "ఓవర్సీస్ సిటిజన్‌షిప్ ఆఫ్ ఇండియా (OCI)ని ప్రవేశపెట్టడం యొక్క ఉద్దేశ్యం ఏమిటి?",
        options:[
          "భారతీయ మూలం ఉన్న వ్యక్తులందరికీ ద్వంద్వ పౌరసత్వం మంజూరు చేయడానికి.",
          "భారత సంతతికి చెందిన వ్యక్తుల (PIOs) హక్కులను పరిమితం చేయడానికి.",
          "భారత పౌరులకు మంజూరు చేయబడిన నిర్దిష్ట హక్కులను పరిమితం చేస్తూ PIOలకు కొన్ని హక్కులను అందించడం.",
          "OCI పొందడం నుండి నిర్దిష్ట దేశాల నుండి వ్యక్తులను మినహాయించడానికి."
        ],
        correctAnswerIndex: 2,
        explanation:"ఓవర్సీస్ సిటిజన్‌షిప్ ఆఫ్ ఇండియా (OCI)ని ప్రవేశపెట్టడం యొక్క ఉద్దేశ్యం, భారతీయ పౌరులకు మంజూరు చేయబడిన నిర్దిష్ట హక్కులను పరిమితం చేస్తూ, భారతీయ సంతతికి చెందిన వ్యక్తులకు (PIOs) కొన్ని హక్కులను అందించడం."
    ),


    Question(
        questionText: "భారత పౌరసత్వాన్ని పొందే వర్గాలలో వచనం దేనిని పేర్కొంది?",
        options:[
          "భారత పౌరుడిని వివాహం చేసుకోవడం ద్వారా.",
          "విదేశీ భూభాగంలో పుట్టడం ద్వారా.",
          "విదేశీ పౌరసత్వాన్ని వదులుకోవడం ద్వారా.",
          "సాంస్కృతిక మరియు విద్యా కార్యక్రమాలలో పాల్గొనడం ద్వారా."
        ],
        correctAnswerIndex: 3,
        explanation:"వచనంలో పేర్కొన్న విధంగా విదేశీ పౌరసత్వాన్ని త్యజించడం ద్వారా భారతీయ పౌరసత్వాన్ని పొందే వర్గాల్లో ఒకటి."
    ),
    Question(
        questionText: "భారత పౌరసత్వాన్ని కోల్పోవడానికి టెక్స్ట్‌లో వివరించిన మార్గాలు ఏమిటి?",
        options:[
          "విదేశీ పౌరుడిని వివాహం చేసుకోవడం ద్వారా.",
          "త్యజించడం, రద్దు చేయడం మరియు లేమి ద్వారా.",
          "చట్టవిరుద్ధమైన కార్యకలాపాలలో పాల్గొనడం ద్వారా.",
          "ఐదేళ్ల పాటు భారతదేశం వెలుపల నిరంతర నివాసం ద్వారా."
        ],
        correctAnswerIndex: 1,
        explanation:"వచనం భారతీయ పౌరసత్వాన్ని కోల్పోయే మూడు మార్గాలను వివరిస్తుంది: త్యజించడం, రద్దు చేయడం మరియు లేమి."
    ),

    Question(
        questionText: "పాఠం ప్రకారం, కేంద్ర ప్రభుత్వం పౌరసత్వాన్ని నిర్బంధంగా రద్దు చేయడానికి కారణాలు ఏమిటి?",
        options:[
          "సాంస్కృతిక మరియు విద్యా కార్యక్రమాలలో పాల్గొనడం.",
          "ఏడేళ్లు భారతదేశం వెలుపల నిరంతర నివాసం.",
          "రిజిస్ట్రేషన్ ద్వారా పౌరసత్వం పొందడం.",
          "ద్వంద్వ పౌరసత్వం కలిగి ఉండటం."
        ],
        correctAnswerIndex: 1,
        explanation:"టెక్స్ట్‌లో పేర్కొన్నట్లుగా, ఏడు సంవత్సరాల పాటు భారతదేశం వెలుపల నిరంతరం నివసించడం వంటి కారణాల వల్ల కేంద్ర ప్రభుత్వం పౌరసత్వాన్ని నిర్బంధంగా రద్దు చేయవచ్చు."
    ),
    Question(
        questionText: "టెక్స్ట్ ప్రకారం, OCI రిజిస్ట్రేషన్‌ను రద్దు చేయడానికి కేంద్ర ప్రభుత్వం కారణాలు ఏమిటి?",
        options:[
          "సాంస్కృతిక మరియు విద్యా కార్యక్రమాలలో పాల్గొనడం.",
          "ద్వంద్వ పౌరసత్వం కలిగి ఉండటం.",
          "ఏడేళ్లు భారతదేశం వెలుపల నిరంతర నివాసం.",
          "రాజ్యాంగం పట్ల మోసం లేదా అసంతృప్తి ద్వారా OCIని పొందడం."
        ],
        correctAnswerIndex: 3,
        explanation:"టెక్స్ట్‌లో పేర్కొన్నట్లుగా, ఏడు సంవత్సరాల పాటు భారతదేశం వెలుపల నిరంతరం నివసించడం వంటి కారణాల వల్ల కేంద్ర ప్రభుత్వం OCI నమోదును రద్దు చేయవచ్చు."
    ),

    Question(
        questionText: "జమ్మూ మరియు కాశ్మీర్‌కు ప్రత్యేక నిబంధనలకు సంబంధించి టెక్స్ట్‌లో పేర్కొన్న చారిత్రక సందర్భం ఏమిటి?",
        options:[
          "1947లో రాష్ట్ర ఏర్పాటు.",
          "2019లో భారతదేశంలోని మిగిలిన ప్రాంతాలతో ఈ ప్రాంతం ఏకీకరణ.",
          "ప్రత్యేక హక్కులు మరియు అధికారాల మంజూరు.",
          "2019లో ప్రత్యేక హోదా రద్దు."
        ],
        correctAnswerIndex: 3,
        explanation:"శాశ్వత నివాసులను నిర్వచించడం మరియు ప్రత్యేక హక్కులు, అధికారాలు మరియు స్కాలర్‌షిప్‌లను మంజూరు చేయడంతో సహా జమ్మూ మరియు కాశ్మీర్ కోసం ప్రత్యేక నిబంధనల యొక్క చారిత్రక సందర్భాన్ని టెక్స్ట్ ప్రస్తావించింది. ప్రత్యేక రద్దు2019లో హోదా ఈ ప్రాంతాన్ని భారతదేశంలోని మిగిలిన ప్రాంతాలతో మరింత సన్నిహితంగా కలిపే లక్ష్యంతో ఉంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఏ భాగంలో పౌరసత్వం ప్రస్తావించబడింది?",
        options:[
          "పార్ట్ I",
          "పార్ట్ II",
          "పార్ట్ III",
          "పార్ట్ IV"
        ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగంలోని పార్ట్ II కింద 5 నుండి 11 వరకు ఉన్న ఆర్టికల్స్‌లో పౌరసత్వం గురించి ప్రస్తావించబడింది."
    ),

    Question(
        questionText: "భారతదేశంలో రాష్ట్ర పౌరసత్వం లేకపోవడం యొక్క ప్రాముఖ్యత ఏమిటి?",
        options:[
          "ఇది నివాసం ఆధారంగా వివక్షను ప్రోత్సహిస్తుంది.",
          "ఇది పుట్టిన ప్రదేశం లేదా నివాస స్థలం ఆధారంగా వివక్షను నిరోధించడంలో సహాయపడుతుంది.",
          "ఇది పౌరుల హక్కులను పరిమితం చేస్తుంది.",
          "ఇది ద్వంద్వ పౌరసత్వానికి దారి తీస్తుంది."
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో రాష్ట్ర పౌరసత్వం లేకపోవడం వల్ల వారి పుట్టిన ప్రదేశం లేదా నివాస స్థలం ఆధారంగా పౌరుల మధ్య వివక్షను నిరోధించడంలో సహాయపడుతుంది, వచనంలో పేర్కొన్నది."
    )


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
    home: citizenship_te(),
  ));
}

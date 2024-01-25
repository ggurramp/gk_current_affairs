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

class lp_ly_te extends StatefulWidget {
  final String? userIdentifier;

  lp_ly_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<lp_ly_te> createState() => _lp_ly_teState();
}

class _lp_ly_teState extends State<lp_ly_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//66.లోక్‌పాల్ మరియు లోకాయుక్త

    Question(
      questionText: "సామాజిక-ఆర్థిక అభివృద్ధిలో ప్రభుత్వ పాత్ర పెరగడానికి దారితీసే ఆధునిక ప్రజాస్వామ్య రాష్ట్రాల ప్రాథమిక దృష్టి ఏమిటి?",
      options:["సైనిక శక్తి", "సంక్షేమ ధోరణి", "సాంస్కృతిక పరిరక్షణ", "సాంకేతిక ఆవిష్కరణ"],
      correctAnswerIndex: 1,
      explanation:"ఆధునిక ప్రజాస్వామ్య రాష్ట్రాలు సంక్షేమ ధోరణితో వర్గీకరించబడ్డాయి, ఇది సామాజిక-ఆర్థిక అభివృద్ధిలో ప్రభుత్వ పాత్రను పెంచడానికి దారితీస్తుంది.",
    ),

    Question(
      questionText: "ఏ సంస్థాగత పరికరం, 1809లో స్వీడన్‌లో ఉద్భవించింది, పరిపాలనా చర్యలపై పౌరుల మనోవేదనల పరిష్కారం కోసం సృష్టించబడింది?",
      options:["ప్రొక్యూరేటర్ సిస్టమ్", "అడ్మినిస్ట్రేటివ్ కోర్ట్స్ సిస్టమ్", "ఓంబుడ్స్‌మన్ సిస్టమ్", "లోక్‌పాల్/లోకాయుక్త"],
      correctAnswerIndex: 2,
      explanation:"1809లో స్వీడన్‌లో ఉద్భవించిన అంబుడ్స్‌మన్ వ్యవస్థ, పరిపాలనా చర్యలకు వ్యతిరేకంగా పౌరుల ఫిర్యాదుల పరిష్కారం కోసం సృష్టించబడింది.",
    ),

    Question(
      questionText: "స్వీడిష్ అంబుడ్స్‌మన్ పౌరుల మనోవేదనలతో ఏ విషయాలలో వ్యవహరిస్తారు?",
      options:["సాంస్కృతిక వివాదాలు", "సైనిక జోక్యాలు", "పరిపాలన అవినీతి, బంధుప్రీతి, మర్యాద", "సాంకేతిక పురోగతి"],
      correctAnswerIndex: 2,
      explanation:"స్వీడిష్ అంబుడ్స్‌మన్ పరిపాలనా విచక్షణ దుర్వినియోగం, దుర్వినియోగం, పరిపాలనా అవినీతి, బంధుప్రీతి మరియు మర్యాద వంటి విషయాలలో పౌరుల మనోవేదనలతో వ్యవహరిస్తారు.",
    ),

    Question(
      questionText: "మరో వ్యక్తి ప్రతినిధిగా లేదా ప్రతినిధిగా వ్యవహరించే వ్యక్తికి స్వీడన్‌లో ఏ పదం ఉపయోగించబడుతుంది?",
      options:["అడ్వకేట్", "ఓంబుడ్స్‌మన్", "లెజిస్లేటర్", "డెలిగేట్"],
      correctAnswerIndex: 1,
      explanation:"స్వీడన్‌లో, 'ఓంబుడ్' అనే పదాన్ని మరొక వ్యక్తి ప్రతినిధిగా లేదా ప్రతినిధిగా వ్యవహరించే వ్యక్తికి ఉపయోగిస్తారు.",
    ),

    Question(
      questionText: "డోనాల్డ్ సి. రోవత్ ప్రకారం, ప్రజాస్వామ్య ప్రభుత్వంలో అంబుడ్స్‌మన్ ఏ పాత్ర పోషిస్తారు?",
      options:["అధికారికానికి వ్యతిరేకంగా బల్క్‌వర్క్", "చట్టాల అమలు", "అధికారులకు శిక్ష", "న్యాయపరమైన నిర్ణయం తీసుకోవడం"],
      correctAnswerIndex: 0,
      explanation:"డోనాల్డ్ సి. రోవత్ అంబుడ్స్‌మన్‌ను 'అధికారిక దౌర్జన్యానికి వ్యతిరేకంగా ప్రజాస్వామ్య ప్రభుత్వం యొక్క భారీ పని'గా అభివర్ణించారు.",
    ),
    Question(
      questionText: "భారతదేశంలో పబ్లిక్ సర్వెంట్స్ (ఎంక్వైరీస్) యాక్ట్, 1850 యొక్క ముఖ్య ఉద్దేశ్యం ఏమిటి?",
      options:["సివిల్ సర్వెంట్ల ప్రవర్తనకు నియమాలను ఏర్పాటు చేయడానికి", "ప్రభుత్వ సేవకులపై అవినీతి ఆరోపణలను పరిశోధించడానికి", "పౌరుల ఫిర్యాదులకు జరిమానాలను నిర్వచించడానికి", "పోలీసు సంస్థల పనితీరును నియంత్రించడానికి"],
      correctAnswerIndex: 1,
      explanation:"పబ్లిక్ సర్వెంట్స్ (ఎంక్వైరీస్) యాక్ట్, 1850, భారతదేశంలో ప్రాథమికంగా ప్రభుత్వ ఉద్యోగులపై అవినీతి ఆరోపణలను పరిశోధించడానికి ఉపయోగపడుతుంది.",
    ),

    Question(
      questionText: "భారతదేశంలో బినామీ లావాదేవీల నిషేధానికి సంబంధించి ఏ చట్టం ప్రత్యేకంగా వ్యవహరిస్తుంది?",
      options:["అవినీతి నిరోధక చట్టం, 1988", "కమీషన్స్ ఆఫ్ ఎంక్వైరీ యాక్ట్, 1952", "బినామీ లావాదేవీల (నిషేధం) చట్టం, 1988", "మంత్రిత్వ శాఖలలో విజిలెన్స్ సంస్థలు"],
      correctAnswerIndex: 2,
      explanation:"బినామీ లావాదేవీల (నిషేధం) చట్టం, 1988, భారతదేశంలో బినామీ లావాదేవీల నిషేధాన్ని ప్రత్యేకంగా ప్రస్తావించే చట్టం.",
    ),

    Question(
      questionText: "1963లో స్థాపించబడింది, భారతదేశంలో జాతీయ స్థాయిలో అవినీతిని పరిశోధించడానికి మరియు ఎదుర్కోవడానికి ఏ సంస్థ బాధ్యత వహిస్తుంది?",
      options:["సెంట్రల్ విజిలెన్స్ కమిషన్", "నేషనల్ కమీషన్ ఫర్ ఎస్సీలు", "సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్", "లోకాయుక్త"],
      correctAnswerIndex: 2,
      explanation:"1963లో ఏర్పాటైన సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI), భారతదేశంలో జాతీయ స్థాయిలో అవినీతిపై దర్యాప్తు మరియు పోరాటానికి బాధ్యత వహిస్తుంది.",
    ),

    Question(
      questionText: "టెక్స్ట్‌లో పేర్కొన్న 'ఫైల్ టు ఫీల్డ్' ప్రోగ్రామ్ యొక్క ప్రయోజనం ఏమిటి?",
      options:["సివిల్ సర్వీస్‌లను వర్గీకరించడానికి మరియు నియంత్రించడానికి ఒక పథకం", "ప్రజా ఫిర్యాదుల పరిష్కారానికి ఒక మెకానిజం", "విజిల్‌బ్లోయర్‌లను రక్షించడానికి ఒక చొరవ", "ప్రభుత్వ సేవకులకు వ్యతిరేకంగా విచారణలు నిర్వహించే వ్యవస్థ"],
      correctAnswerIndex: 1,
      explanation:"ఫైల్ టు ఫీల్డ్' కార్యక్రమం కేరళ వంటి కొన్ని రాష్ట్రాల్లో ఒక పథకం, ఇక్కడ నిర్వాహకులు గ్రామాలు/ప్రాంతాలకు వెళ్లి, ప్రజా ఫిర్యాదులను వింటారు మరియు సాధ్యమైన చోట వెంటనే చర్యలు తీసుకుంటారు.",
    ),

    Question(
      questionText: "2014లో రూపొందించబడింది, భారతదేశంలో విజిల్‌బ్లోయర్‌లకు ఏ చట్టం రక్షణ కల్పిస్తుంది?",
      options:["విజిల్ బ్లోయర్స్ ప్రొటెక్షన్ యాక్ట్, 2014", "ఇండియన్ పీనల్ కోడ్, 1860", "అవినీతి నిరోధక చట్టం, 1988", "స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ యాక్ట్, 1941"],
      correctAnswerIndex: 0,
      explanation:"విజిల్ బ్లోయర్స్ ప్రొటెక్షన్ యాక్ట్, 2014, భారతదేశంలోని విజిల్‌బ్లోయర్‌లకు చట్టపరమైన రక్షణను అందిస్తుంది.",
    ),
    Question(
      questionText: "మొదటి పరిపాలనా సంస్కరణల సంఘం (ARC) ప్రకారం, భారతదేశంలో లోక్‌పాల్ మరియు లోకాయుక్త ఏర్పాటుకు సంబంధించి ప్రధాన సిఫార్సులు ఏమిటి?",
      options:["వారు ప్రధానమంత్రిచే నియమించబడాలి", "వారు తీవ్రవాద చర్యలకు సంబంధించిన విషయాలపై దృష్టి పెట్టాలి", "వారి పరిశోధనలు అధికారికంగా మరియు బహిరంగంగా ఉండాలి", "వారు ప్రదర్శనాత్మకంగా స్వతంత్రంగా మరియు నిష్పాక్షికంగా ఉండాలి"],
      correctAnswerIndex: 3,
      explanation:"ఎఆర్‌సి ప్రకారం, లోక్‌పాల్ మరియు లోకాయుక్త సిఫార్సులలో నిరూపితమైన స్వతంత్ర మరియు నిష్పక్షపాతం ఉన్నాయి.",
    ),

    Question(
      questionText: "ఎఆర్‌సి సిఫార్సుల ప్రకారం లోక్‌పాల్ నియామకాన్ని ఎలా ప్రతిపాదించారు?",
      options:["ప్రధానమంత్రిచే నియమించబడినవి", "నిర్దిష్ట అధికారులతో సంప్రదించిన తర్వాత రాష్ట్రపతిచే నియమించబడినవి", "లోక్‌సభ ద్వారా ఎన్నుకోబడినవి", "భారత ప్రధాన న్యాయమూర్తిచే నియమించబడినవి"],
      correctAnswerIndex: 1,
      explanation:"ARC సిఫార్సుల ప్రకారం, లోక్‌పాల్‌ను భారత ప్రధాన న్యాయమూర్తి, లోక్‌సభ స్పీకర్ మరియు రాజ్యసభ ఛైర్మన్‌తో సంప్రదించిన తర్వాత రాష్ట్రపతి నియమించాలని ప్రతిపాదించారు.",
    ),

    Question(
      questionText: "ARC సిఫార్సుల ప్రకారం లోక్‌పాల్ యొక్క ప్రాథమిక దృష్టి ఏమిటి?",
      options:["సాధారణ పౌరులకు వ్యతిరేకంగా ఫిర్యాదులతో వ్యవహరించడం", "ఉగ్రవాద చర్యలతో కూడిన విచక్షణాపరమైన రంగంలో విషయాలను నిర్వహించడం", "మంత్రులు మరియు కార్యదర్శులపై అవినీతి ఆరోపణలను విచారించడం", "వినియోగదారుల వివాదాలకు సంబంధించిన ఫిర్యాదులను పరిష్కరించడం"],
      correctAnswerIndex: 2,
      explanation:"ARC ప్రకారం, లోక్‌పాల్ యొక్క ప్రాథమిక దృష్టి కేంద్ర మరియు రాష్ట్ర స్థాయిలలో మంత్రులు మరియు కార్యదర్శులకు వ్యతిరేకంగా, ముఖ్యంగా అవినీతి ఆరోపణలకు సంబంధించిన ఫిర్యాదులను పరిష్కరించడం.",
    ),

    Question(
      questionText: "అందించిన సమాచారం ప్రకారం భారతదేశంలో లోక్‌పాల్‌కు సంబంధించి చట్టాన్ని తీసుకురావడానికి ఎన్ని అధికారిక ప్రయత్నాలు జరిగాయి?",
      options:["ఐదు", "ఎనిమిది", "పది", "పన్నెండు"],
      correctAnswerIndex: 2,
      explanation:"ఇప్పటి వరకు, అందించిన సమాచారం ప్రకారం, భారతదేశంలో లోక్‌పాల్‌కు సంబంధించి చట్టాన్ని తీసుకురావడానికి పది అధికారిక ప్రయత్నాలు జరిగాయి.",
    ),

    Question(
      questionText: "రాజీవ్ గాంధీ నేతృత్వంలోని ఏ ప్రభుత్వం ఆగస్టు 1985లో లోక్‌పాల్‌కు సంబంధించిన బిల్లును ప్రవేశపెట్టింది?",
      options:["జనతా ప్రభుత్వం", "నేషనల్ ఫ్రంట్ ప్రభుత్వం", "NDA ప్రభుత్వం", "కాంగ్రెస్ ప్రభుత్వం"],
      correctAnswerIndex: 3,
      explanation:"ఆగస్టు 1985లో లోక్‌పాల్‌కు సంబంధించిన బిల్లును రాజీవ్ గాంధీ నేతృత్వంలోని కాంగ్రెస్ ప్రభుత్వం ప్రవేశపెట్టింది.",
    ),
    Question(
      questionText: "లోక్‌పాల్ మరియు లోకాయుక్త చట్టం (2013) యొక్క ప్రాథమిక లక్ష్యం ఏమిటి?",
      options:["కేంద్రం మరియు రాష్ట్రాల్లో లోకాయుక్తలను ఏర్పాటు చేయడం", "ఒక ఏకరూప నిఘా మరియు అవినీతి నిరోధక రోడ్‌మ్యాప్ అందించడం", "లోక్‌పాల్ అధికార పరిధి నుండి ప్రధానమంత్రిని మినహాయించడం", "సాధారణ పౌరులపై ఫిర్యాదుల నిర్వహణపై దృష్టి పెట్టడం"],
      correctAnswerIndex: 1,
      explanation:"లోక్‌పాల్ మరియు లోకాయుక్త చట్టం (2013) యొక్క ప్రాథమిక లక్ష్యం దేశం కోసం కేంద్రం మరియు రాష్ట్రాల్లో ఒకే విధమైన నిఘా మరియు అవినీతి నిరోధక రోడ్‌మ్యాప్‌ను అందించడం.",
    ),

    Question(
      questionText: "పేర్కొన్న లక్షణాల ప్రకారం లోక్‌పాల్ కూర్పు ఏమిటి?",
      options:["చైర్‌పర్సన్ మరియు వైస్-ఛైర్‌పర్సన్", "చైర్‌పర్సన్ మరియు ఐదుగురు సభ్యులు, వీరిలో 50% మంది న్యాయవ్యవస్థ సభ్యులు", "చైర్‌పర్సన్ మరియు పది మంది సభ్యులు", "భారత ప్రధాన మంత్రి మరియు ప్రధాన న్యాయమూర్తి"],
      correctAnswerIndex: 1,
      explanation:"పేర్కొన్న లక్షణాల ప్రకారం, లోక్‌పాల్ ఒక చైర్‌పర్సన్ మరియు ఐదుగురు సభ్యులను కలిగి ఉంటుంది, వారిలో 50% మంది న్యాయవ్యవస్థ సభ్యులు.",
    ),

    Question(
      questionText: "ప్రతిపాదిత లోక్‌పాల్ ఛైర్‌పర్సన్ మరియు సభ్యుల ఎంపిక ఎలా జరుగుతుంది?",
      options:["ప్రధానమంత్రిచే ఎంపిక చేయబడినవి", "ప్రజా ఎన్నికల ద్వారా", "ప్రధానమంత్రి, లోక్‌సభ స్పీకర్ మరియు ఇతరులతో సహా ఎంపిక కమిటీ ద్వారా", "సంప్రదింపులు లేకుండా రాష్ట్రపతిచే నియమించబడినవి"],
      correctAnswerIndex: 2,
      explanation:"ప్రధాన మంత్రి, లోక్‌సభ స్పీకర్, ప్రతిపక్ష నాయకుడు, భారత ప్రధాన న్యాయమూర్తి మరియు ప్రముఖ న్యాయనిపుణులతో కూడిన ఎంపిక కమిటీ ద్వారా లోక్‌పాల్ ఛైర్‌పర్సన్ మరియు సభ్యుల ఎంపిక జరగాలని ప్రతిపాదించబడింది.",
    ),

    Question(
      questionText: "విదేశీ విరాళాలకు సంబంధించి ఏ సంస్థలు లోక్‌పాల్ అధికార పరిధిలోకి తీసుకురాబడ్డాయి?",
      options:["ప్రభుత్వ-సహాయం పొందిన సంస్థలు మాత్రమే", "విదేశీ మూలాల నుండి సంవత్సరానికి 10 లక్షల కంటే ఎక్కువ విరాళాలు స్వీకరించే అన్ని సంస్థలు", "ఏదైనా మూలం నుండి విరాళాలు స్వీకరించే సంస్థలు", "1 కోటి కంటే ఎక్కువ విరాళాలు స్వీకరించే సంస్థలు"],
      correctAnswerIndex: 1,
      explanation:"విదేశీ విరాళాల నియంత్రణ చట్టం (FCRA) నేపథ్యంలో సంవత్సరానికి 10 లక్షల కంటే ఎక్కువ విదేశీ మూలాల నుండి విరాళాలు స్వీకరించే అన్ని సంస్థలు లోక్‌పాల్ అధికార పరిధిలోకి తీసుకురాబడ్డాయి.",
    ),

    Question(
      questionText: "ప్రభుత్వ సేవకులకు వ్యతిరేకంగా లోక్‌పాల్ చర్యలకు సంబంధించి ప్రస్తావించిన లోపాలలో ఒకటి ఏమిటి?",
      options:["అనామక ఫిర్యాదులు అనుమతించబడతాయి", "ఫిర్యాదుల సారాంశంపై దృష్టి పెట్టడం", "ఫిర్యాదులను దాఖలు చేయడానికి 7 సంవత్సరాల పరిమితి వ్యవధి", "ఏదైనా పబ్లిక్ సర్వెంట్‌పై స్వయంచాలకంగా చర్యలు"],
      correctAnswerIndex: 3,
      explanation:"ప్రభుత్వ సేవకులపై ఫిర్యాదులను దాఖలు చేయడానికి 7 సంవత్సరాల పరిమితి వ్యవధి పేర్కొనబడిన లోపాలలో ఒకటి.",
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
    home: lp_ly_te(),
  ));
}

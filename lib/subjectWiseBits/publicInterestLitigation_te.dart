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

class publicInterestLitigation_te extends StatefulWidget {
  final String? userIdentifier;

  publicInterestLitigation_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<publicInterestLitigation_te> createState() => _publicInterestLitigation_teState();
}

class _publicInterestLitigation_teState extends State<publicInterestLitigation_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//29.పబ్లిక్ ఇంటరెస్ట్ లిటిగేషన్

    Question(
      questionText : "చట్టం విషయంలో PIL అంటే ఏమిటి?",
      options: ["పబ్లిసిటీ ఇంటరెస్ట్ లిటిగేషన్", "పొలిటిక్స్ ఇంట్రెస్ట్ లిటిగేషన్", "ప్రైవేట్ ఇంట్రెస్ట్ లిటిగేషన్", "పబ్లిక్ ఇంట్రెస్ట్ లిటిగేషన్"],
      correctAnswerIndex : 3,
      explanation : "PIL అనేది చట్టం యొక్క సందర్భంలో ప్రజా ప్రయోజన వ్యాజ్యాలను సూచిస్తుంది. ఇది బలహీన మరియు వెనుకబడిన వారి ప్రాథమిక మానవ హక్కులను రక్షించడానికి ఉద్దేశించిన చట్టపరమైన ప్రక్రియ. ",
    ),

    Question(
      questionText : "సుప్రీం కోర్ట్ ప్రకారం, PIL ముఖ్యంగా దేనికి ఉద్దేశించబడింది?",
      options: ["అన్ని తప్పులకు దివ్యౌషధాన్ని అందించడం", "రాజకీయ ప్రయోజనాల కోసం ఒక సాధనంగా పనిచేయడం", "బలహీనమైన మరియు వెనుకబడిన వారి ప్రాథమిక మానవ హక్కులను పరిరక్షించడం", "మధ్యతరగతి ప్రయోజనాలను ప్రోత్సహించడం"],
    correctAnswerIndex : 2,
    explanation: "PIL తప్పనిసరిగా బలహీనమైన మరియు వెనుకబడిన వారి ప్రాథమిక మానవ హక్కులను పరిరక్షించడానికి ఉద్దేశించబడింది, ప్రజా స్ఫూర్తి కలిగిన వ్యక్తులు వారి తరపున పిటిషన్లు దాఖలు చేయడానికి ఒక విధానాన్ని అందిస్తుంది.",
    ),

    Question(
      questionText : "పిఐఎల్ దుర్వినియోగాన్ని నిరోధించడానికి సుప్రీంకోర్టు ఏ మార్గదర్శకాలను నిర్దేశించింది?",
      options: ["వ్యక్తిగత న్యాయమూర్తులు వారి స్వంత విధానాలను రూపొందించుకునేలా ప్రోత్సహించడం", "అన్యమైన పరిశీలనల కోసం దాఖలు చేసిన PIL ని నిరుత్సాహపరచడం", "పిటిషనర్ ఆధారాలను ప్రాథమికంగా ధృవీకరించడం నివారించడం", "వ్యక్తిగత లాభాలతో కూడిన పిటిషన్‌లకు ప్రాధాన్యత ఇవ్వడం"],
    correctAnswerIndex : 1,
    explanation: "సుప్రీం కోర్ట్ PIL యొక్క దుర్వినియోగాన్ని నిరుత్సాహపరిచేందుకు మార్గదర్శకాలను నిర్దేశించింది, నిజమైన మరియు నిజాయితీగల పిటిషన్లను ప్రోత్సహిస్తుంది, అయితే అదనపు పరిశీలనల కోసం దాఖలు చేయబడిన వాటిని నిరుత్సాహపరుస్తుంది.",
    ),

    Question(
      questionText : "పిఐఎల్‌ని స్వీకరించే ముందు కోర్టు దేని గురించి పూర్తిగా సంతృప్తి చెందాలి?",
      options: ["పిటిషనర్ యొక్క వ్యక్తిగత లాభం", "గణనీయమైన ప్రజా ప్రయోజనం చేరి ఉంది", "PIL దాఖలు చేయడం వెనుక అదనపు ఉద్దేశ్యాలు", "వ్యక్తిగత న్యాయమూర్తి విధానం"],
    correctAnswerIndex : 1,
    explanation: "పిల్‌ను స్వీకరించడానికి ముందు గణనీయమైన ప్రజా ప్రయోజనాలు ఇమిడి ఉన్నాయని కోర్టు పూర్తిగా సంతృప్తి చెందాలి, ఈ పిటిషన్ నిజమైన ప్రజా హాని మరియు గాయం యొక్క పరిష్కారాన్ని లక్ష్యంగా చేసుకుంటుందని నిర్ధారిస్తుంది .",
    ),

    Question(
      questionText : "అపరమైన ఉద్దేశాల కోసం బిజీబాడీలు దాఖలు చేసిన PILలపై సుప్రీం కోర్ట్ ఏ చర్యను సిఫార్సు చేస్తుంది?",
      options: ["అనుకూలమైన ఖర్చులు విధించడం", "అటువంటి పిటిషన్‌లను ప్రోత్సహించడం", "ఏదైనా చర్యను నివారించడం", "అటువంటి పిటిషన్‌లకు ప్రాధాన్యత ఇవ్వడం"],
      correctAnswerIndex : 0,
      explanation: "శ్రేష్ఠమైన వ్యయాలను విధించడం ద్వారా లేదా పనికిమాలిన పిటిషన్లను అరికట్టడానికి ఇలాంటి వినూత్న పద్ధతులను అవలంబించడం ద్వారా అదనపు ఉద్దేశాల కోసం బిజీబాడీలు దాఖలు చేసే PILలను నిరుత్సాహపరచాలని సుప్రీం కోర్ట్ సిఫార్సు చేస్తుంది.",
    ),
    Question(
      questionText : "విధానపరమైన విషయాల్లో కోర్టు తన పాత్రకు సంబంధించి ఎలాంటి జాగ్రత్తలు తీసుకుంటుంది?",
      options: ["ఇది విధాన నిర్ణయాలలో చురుకుగా పాల్గొంటుంది", "ఇది చాలా అరుదుగా విధానపరమైన విషయాల్లోకి ప్రవేశిస్తుంది", "ఇది ప్రజల హక్కులను పరిరక్షిస్తూ అధికార పరిధిని నివారిస్తుంది", "ఇది ఆర్టికల్ 142కి సమానమైన దాని అధికారాన్ని నొక్కి చెబుతుంది"],
      correctAnswerIndex : 1,
      explanation : "కోర్టు సాధారణంగా విధానపరమైన విషయాల్లోకి ప్రవేశించకుండా జాగ్రత్తపడుతుంది మరియు ప్రజల హక్కులను ఉద్దేశపూర్వకంగా పరిరక్షించేటప్పుడు దాని అధికార పరిధిని అధిగమించకుండా చేస్తుంది.",
    ),

    Question(
      questionText : "భారత రాజ్యాంగంలోని ఆర్టికల్ 142తో పోలిస్తే హైకోర్టు అధికారం ఎంత వరకు ఉంది?",
      options: ["హైకోర్టుకు ఎక్కువ అధికారం ఉంది", "హైకోర్టు అధికారం ఆర్టికల్ 142కి సమానం", "హైకోర్టుకు ఆర్టికల్ 142కి సమానమైన అధికారం లేదు", "హైకోర్టు ఆర్టికల్ 142 అధికారాలను అధిగమించగలదు"],
      correctAnswerIndex : 2,
      explanation: "హైకోర్టు, పూర్తి న్యాయం కోసం ఆదేశాలు జారీ చేయగలిగినప్పటికీ, భారత రాజ్యాంగంలోని ఆర్టికల్ 142కి సమానమైన అధికారం లేదు.",
    ),

    Question(
      questionText : "హైకోర్టు సాధారణంగా పిఐఎల్ ద్వారా రిట్ పిటిషన్‌ను స్వీకరించడాన్ని ఏ సందర్భాలలో నివారించాలి?",
      options: ["చట్టం యొక్క రాజ్యాంగబద్ధతను ప్రశ్నించినప్పుడు", "చట్టబద్ధమైన నియమాన్ని సవాలు చేస్తున్నప్పుడు", "అధికార పరిధి స్పష్టంగా ఉన్నప్పుడు", "న్యాయ సమీక్ష యొక్క తెలిసిన ప్రాంతాలతో వ్యవహరించేటప్పుడు"],
      correctAnswerIndex : 2,
      explanation: "చట్టం లేదా చట్టబద్ధమైన నియమం యొక్క రాజ్యాంగబద్ధత లేదా చెల్లుబాటును ప్రశ్నించేటప్పుడు హైకోర్టు సాధారణంగా పిఐఎల్ ద్వారా రిట్ పిటిషన్‌ను స్వీకరించడాన్ని నివారించాలి.",
    ),
    Question(
      questionText : "సుప్రీంకోర్టు మార్గదర్శకాల ప్రకారం, సాధారణంగా ఏ కేటగిరీ విషయాలను PILగా పరిగణించాలి?",
      options: [
        "భూస్వామి-అద్దెదారు విషయాలు",
        "హైకోర్టులలో పెండింగ్‌లో ఉన్న కేసుల ముందస్తు విచారణ కోసం పిటిషన్లు",
        "కేసు నమోదు చేయడానికి నిరాకరించినందుకు పోలీసులపై పిటిషన్లు",
        "కేంద్ర/రాష్ట్ర ప్రభుత్వ శాఖలు మరియు స్థానిక సంస్థలపై ఫిర్యాదులు"
      ],
      correctAnswerIndex : 2,
      explanation: "సుప్రీంకోర్టు మార్గదర్శకాల ప్రకారం, కేసు నమోదు చేయడానికి నిరాకరించినందుకు పోలీసులపై పిటిషన్లు వంటి అంశాలు సాధారణంగా PILగా పరిగణించబడతాయి.",
    ),

    Question(
      questionText : "మార్గదర్శకాల ప్రకారం ఏ వర్గం విషయాలను పిఐఎల్‌గా పరిగణించరు?",
      options: [
        "కేంద్ర/రాష్ట్ర ప్రభుత్వ శాఖలు మరియు స్థానిక సంస్థలపై ఫిర్యాదులు",
        "మహిళలపై అఘాయిత్యాలకు వ్యతిరేకంగా పిటిషన్లు",
        "కుటుంబ పెన్షన్ కోసం అర్జీలు",
        "వైద్య మరియు ఇతర విద్యా సంస్థలలో ప్రవేశం"
      ],
      correctAnswerIndex : 0,
      explanation: "మార్గదర్శకాల ప్రకారం, కేంద్ర/రాష్ట్ర ప్రభుత్వ శాఖలు మరియు స్థానిక సంస్థలపై ఫిర్యాదులు వంటి అంశాలు PILగా పరిగణించబడవు.",
    ),

    Question(
      questionText : "పిఐఎల్‌గా పరిగణించబడని కేసుల కోసం పేర్కొన్న వర్గాల్లో ఒకటి ఏమిటి?",
      options: [
        "బాండెడ్ లేబర్ విషయాలు",
        "సేవా విషయాలు మరియు పెన్షన్ మరియు గ్రాట్యుటీకి సంబంధించినవి",
        "పోలీసు వేధింపులకు వ్యతిరేకంగా పిటిషన్లు",
        "14 ఏళ్ల జైలు శిక్ష తర్వాత విడుదల కోసం పిటిషన్లు"
      ],
      correctAnswerIndex : 1,
      explanation : "సేవా విషయాలు మరియు పెన్షన్ మరియు గ్రాట్యుటీకి సంబంధించినవి PILగా పరిగణించబడని వర్గాలలో ఒకటిగా పేర్కొనబడ్డాయి.",
    ),

    Question(
      questionText : "మార్గదర్శకాల ప్రకారం, సాధారణంగా ఏ రకమైన పిటిషన్లు PILగా పరిగణించబడతాయి?",
      options: [
        "వైద్య మరియు ఇతర విద్యా సంస్థలలో ప్రవేశానికి పిటిషన్లు",
        "పోలీసు వేధింపులకు వ్యతిరేకంగా పిటిషన్లు",
        "అల్లర్ల బాధితుల నుండి అర్జీలు",
        "అద్దెదారు విషయాలపై భూస్వాముల నుండి పిటిషన్లు"
      ],
      correctAnswerIndex : 2,
      explanation : "మార్గదర్శకాల ప్రకారం, అల్లర్ల బాధితుల నుండి వచ్చే పిటిషన్లు సాధారణంగా PILగా పరిగణించబడతాయి.",
    ),
    Question(
      questionText : "పబ్లిక్ ఇంటరెస్ట్ లిటిగేషన్ (పిఐఎల్) భావన ఎక్కడ ఉద్భవించింది మరియు అభివృద్ధి చేయబడింది?",
      options: ["1980లలో భారతదేశం", "1960లలో USA", "1970లలో యూరప్", "1990లలో ఆసియా"],
    correctAnswerIndex : 1,
    explanation: "పబ్లిక్ ఇంటరెస్ట్ లిటిగేషన్ (PIL) భావన 1960లలో USAలో ఉద్భవించింది మరియు అభివృద్ధి చేయబడింది, ఇది గతంలో ప్రాతినిధ్యం వహించని సమూహాలు మరియు ఆసక్తులకు చట్టపరమైన ప్రాతినిధ్యాన్ని అందించడానికి రూపొందించబడింది.",
    ),

    Question(
      questionText : "భారతదేశంలో PIL భావనకు మార్గదర్శకులు ఎవరు?",
      options: ["జస్టిస్ విఆర్ కృష్ణయ్యర్ మరియు జస్టిస్ పిఎన్ భగవతి ", "జస్టిస్ విఆర్ కృష్ణయ్యర్ మరియు జస్టిస్ పిఎస్ నారాయణ ", "జస్టిస్ పిఎన్ భగవతి మరియు జస్టిస్ ఎకె సిక్రీ ", "జస్టిస్ ఎపి షా మరియు జస్టిస్ ఆర్ఎమ్ లోధా "],
      correctAnswerIndex : 0,
      explanation : "జస్టిస్ VR కృష్ణయ్యర్ మరియు జస్టిస్ PN భగవతి భారతదేశంలో PIL భావనకు మార్గదర్శకులు.",
    ),

    Question(
      questionText : "పిఐఎల్ దేనిని సూచిస్తుంది మరియు టెక్స్ట్ ప్రకారం దాని ప్రధాన ఫలితం ఏమిటి?",
      options: [
        "ప్రజా ప్రయోజన వ్యాజ్యం; న్యాయపరమైన నిగ్రహం యొక్క ఫలితం",
        "ప్రైవేట్ ఇండివిజువల్ లిటిగేషన్; లెజిస్లేటివ్ యాక్టివిజం యొక్క ఫలితం",
        "ప్రజా ప్రయోజన వ్యాజ్యం; న్యాయపరమైన క్రియాశీలత యొక్క ఫలితం",
        "ప్రైవేట్ ఇండివిజువల్ లిటిగేషన్; శాసన నిర్బంధం యొక్క ఫలితం"
      ],
      correctAnswerIndex : 2,
      explanation : "PIL అంటే పబ్లిక్ ఇంటరెస్ట్ లిటిగేషన్, మరియు ఇది భారతదేశంలో న్యాయపరమైన క్రియాశీలత యొక్క అత్యంత ప్రజాదరణ పొందిన రూపం లేదా అభివ్యక్తి.",
    ),

    Question(
      questionText : "టెక్స్ట్‌లో పేర్కొన్న విధంగా PIL యొక్క ముఖ్య ఉద్దేశ్యం ఏమిటి?",
      options: [
        "వ్యక్తిగత హక్కుల నిరూపణ",
        "సంపన్నులకు న్యాయం పొందే సౌలభ్యం",
        "చట్టం యొక్క పాలనను నిర్వహించడం మరియు బలహీన వర్గాలకు న్యాయం పొందడం సులభతరం చేయడం",
        "అన్ని విషయాలలో న్యాయ నిర్బంధాన్ని పాటించడం"
      ],
      correctAnswerIndex : 2,
      explanation : "పిఐఎల్ యొక్క ముఖ్య ఉద్దేశ్యాలు చట్టబద్ధమైన పాలనను సమర్థించడం, సామాజికంగా మరియు ఆర్థికంగా బలహీన వర్గాలకు సమర్థవంతమైన న్యాయాన్ని పొందడం మరియు ప్రాథమిక హక్కులను అర్థవంతంగా గ్రహించడం.",
    ),

    Question(
      questionText : "టెక్స్ట్ ప్రకారం PIL యొక్క లక్షణాలలో ఒకటి ఏమిటి?",
      options: [
        "సాంప్రదాయ వ్యాజ్యం వంటి విరోధి పాత్ర",
        "వ్యక్తిగత హక్కుల అమలు కోసం వ్యాజ్యం",
        "కోర్టు యొక్క సృజనాత్మక మరియు దృఢమైన పాత్ర",
        "సాంప్రదాయ వివాద పరిష్కార విధానాలకు కట్టుబడి ఉండటం"
      ],
      correctAnswerIndex : 2,
      explanation : "PIL యొక్క లక్షణాలలో ఒకటి కోర్ట్ యొక్క సృజనాత్మక మరియు దృఢమైన పాత్ర, ఇది సాంప్రదాయ వ్యాజ్యానికి భిన్నంగా ఉంటుంది.",
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
    home: publicInterestLitigation_te(),
  ));
}

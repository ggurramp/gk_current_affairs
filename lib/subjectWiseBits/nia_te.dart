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

class nia_te extends StatefulWidget {
  final String? userIdentifier;

  nia_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nia_te> createState() => _nia_teState();
}

class _nia_teState extends State<nia_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//67.నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ

    Question(
      questionText: "నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ (NIA) ఎప్పుడు స్థాపించబడింది?",
      options:["2008", "2009", "2011", "2010"],
      correctAnswerIndex: 1,
      explanation:"నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ యాక్ట్, 2008లోని నిబంధనల ప్రకారం 2009లో నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ (NIA) స్థాపించబడింది.",
    ),

    Question(
      questionText: "అందించిన సమాచారం ప్రకారం NIA స్థాపనకు దారితీసింది ఏమిటి?",
      options:["2001 పార్లమెంట్ దాడి", "2008 ముంబై ఉగ్రవాద దాడులు (26/11 సంఘటన)", "2016 ఉరీ దాడి", "2019 పుల్వామా దాడి"],
      correctAnswerIndex: 1,
      explanation:"26/11 సంఘటనగా ప్రసిద్ధి చెందిన 2008 ముంబై ఉగ్రవాద దాడుల నేపథ్యంలో NIA స్థాపించబడింది.",
    ),

    Question(
      questionText: "NIA ప్రధాన కార్యాలయం ఎక్కడ ఉంది?",
      options:["ముంబై", "కోల్‌కతా", "న్యూ ఢిల్లీ", "చెన్నై"],
      correctAnswerIndex: 2,
      explanation:"NIA ప్రధాన కార్యాలయం న్యూఢిల్లీలో ఉంది.",
    ),

    Question(
      questionText: "NIA డైరెక్టర్ జనరల్‌ను ఎవరు నియమిస్తారు?",
      options:["ప్రధాన మంత్రి", "న్యూ ఢిల్లీ గవర్నర్", "కేంద్ర ప్రభుత్వం", "హోం వ్యవహారాల మంత్రిత్వ శాఖ"],
      correctAnswerIndex: 2,
      explanation:"NIA డైరెక్టర్ జనరల్‌ని కేంద్ర ప్రభుత్వం నియమించింది.",
    ),

    Question(
      questionText: "NIA ఎవరి పరిపాలనా నియంత్రణలో పని చేస్తుంది?",
      options:["విదేశీ వ్యవహారాల మంత్రిత్వ శాఖ", "రక్షణ మంత్రిత్వ శాఖ", "హోం వ్యవహారాల మంత్రిత్వ శాఖ", "ఆర్థిక మంత్రిత్వ శాఖ"],
      correctAnswerIndex: 2,
      explanation:"NIA భారత ప్రభుత్వంలోని హోం వ్యవహారాల మంత్రిత్వ శాఖ యొక్క పరిపాలనా నియంత్రణలో పనిచేస్తుంది.",
    ),

    Question(
      questionText: "2008లో NIA బిల్లును ప్రవేశపెట్టేటప్పుడు భారత ప్రభుత్వం ఏ హేతుబద్ధతను అందించింది?",
      options:["అంతరిక్ష అన్వేషణ అవసరం", "ఉగ్రవాద కార్యకలాపాలలో సంక్లిష్టమైన అంతర్-రాష్ట్ర మరియు అంతర్జాతీయ సంబంధాలు", "కొత్త కరెన్సీని సృష్టించడం", "పర్యావరణ కాలుష్య నియంత్రణ"],
      correctAnswerIndex: 1,
      explanation:"భారత ప్రభుత్వం తీవ్రవాద కార్యకలాపాలలో సంక్లిష్టమైన అంతర్-రాష్ట్ర మరియు అంతర్జాతీయ సంబంధాలను NIA సృష్టించడానికి ఒక కారణమని హైలైట్ చేసింది.",
    ),

    Question(
      questionText: "భారత ప్రభుత్వం అందించిన కారణాల ప్రకారం NIA యొక్క ప్రాథమిక దృష్టి ఏమిటి?",
      options:["సివిల్ వివాదాలకు సంబంధించిన కేసులను నిర్వహించడం", "ఉగ్రవాదానికి సంబంధించిన నేరాలను పరిశోధించడం మరియు జాతీయ పరిణామాలతో కొన్ని ఇతర చట్టాలు", "సాంస్కృతిక మార్పిడిని ప్రోత్సహించడం", "ఆర్థిక అసమానతలను పరిష్కరించడం"],
      correctAnswerIndex: 1,
      explanation:"భారత ప్రభుత్వం ప్రకారం, NIA యొక్క ప్రాథమిక దృష్టి తీవ్రవాదానికి సంబంధించిన నేరాలను మరియు జాతీయ పరిణామాలతో కొన్ని ఇతర చట్టాలను పరిశోధించడం.",
    ),

    Question(
      questionText: "NIA స్థాపనకు సంబంధించి నిపుణుల కమిటీలు మరియు భారత రెండవ పరిపాలనా సంస్కరణల సంఘం ఏ సిఫార్సు చేశాయి?",
      options:["సిఫార్సు చేయలేదు", "NIAని రద్దు చేయడానికి", "ఉగ్రవాదానికి సంబంధించిన నేరాల దర్యాప్తు కోసం కేంద్ర స్థాయిలో ఒక ఏజెన్సీని స్థాపించడానికి", "అంతర్జాతీయ సహకారాలపై దృష్టి పెట్టడానికి"],
      correctAnswerIndex: 2,
      explanation:"నిపుణుల కమిటీలు మరియు రెండవ పరిపాలనా సంస్కరణల కమిషన్ ఆఫ్ ఇండియా తీవ్రవాదానికి సంబంధించిన నేరాల దర్యాప్తు కోసం కేంద్ర స్థాయిలో ఒక ఏజెన్సీని ఏర్పాటు చేయాలని సిఫార్సు చేశాయి.",
    ),
    Question(
      questionText: "నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ (NIA) యొక్క ప్రాథమిక ఆదేశం ఏమిటి?",
      options:["సివిల్ వివాదాలను నిర్వహించడానికి", "ఉగ్రవాదానికి సంబంధించిన నిర్దిష్ట చట్టాల కింద నేరాలను పరిశోధించడానికి మరియు విచారించడానికి", "సాంస్కృతిక మార్పిడిని ప్రోత్సహించడానికి", "ఆర్థిక అసమానతలను పరిష్కరించేందుకు"],
      correctAnswerIndex: 1,
      explanation:"NIA చట్టం యొక్క షెడ్యూల్‌లో పేర్కొన్న వివిధ చట్టాల ప్రకారం, ముఖ్యంగా ఉగ్రవాదానికి సంబంధించిన నేరాలను పరిశోధించడం మరియు విచారించడం NIA యొక్క ప్రాథమిక ఆదేశం.",
    ),

    Question(
      questionText: "NIA ద్వారా దర్యాప్తు కోసం NIA చట్టం యొక్క షెడ్యూల్‌లో ఏ చర్యలు పేర్కొనబడ్డాయి?",
      options:["సాంస్కృతిక కార్యక్రమాలకు సంబంధించిన చట్టాలు", "ఆర్థిక విధానాలకు సంబంధించిన చట్టాలు", "ఉగ్రవాదానికి సంబంధించిన చట్టాలు", "పర్యావరణ పరిరక్షణకు సంబంధించిన చట్టాలు"],
      correctAnswerIndex: 2,
      explanation:"NIA చట్టం యొక్క షెడ్యూల్‌లో పేర్కొన్న వివిధ చట్టాల ప్రకారం, ముఖ్యంగా ఉగ్రవాదానికి సంబంధించిన నేరాలను పరిశోధించడానికి మరియు విచారించడానికి NIA తప్పనిసరి.",
    ),

    Question(
      questionText: "NIAకి కేటాయించిన విధులు ఏమిటి?",
      options:[
        "సివిల్ వివాదాలు మరియు సాంస్కృతిక మార్పిడిని నిర్వహించడానికి",
        "ఉగ్రవాదానికి సంబంధించిన నిర్దిష్ట చట్టాల కింద నేరాలను పరిశోధించడానికి మరియు విచారించడానికి",
        "ఆర్థిక విధానాలను ప్రోత్సహించడానికి",
        "పర్యావరణ పరిరక్షణపై దృష్టి పెట్టడం"],
      correctAnswerIndex: 1,
      explanation:"NIA చట్టం యొక్క షెడ్యూల్‌లో పేర్కొన్న చట్టాల ప్రకారం, ముఖ్యంగా ఉగ్రవాదానికి సంబంధించిన నేరాలను దర్యాప్తు చేయడం మరియు విచారించడం NIAకి కేటాయించబడిన విధులు.",
    ),

    Question(
      questionText: "NIA యొక్క విజన్ ఏమిటి?",
      options:[
        "అంతరిక్ష అన్వేషణ సంస్థగా ఉండటానికి",
        "భాగస్వామ్య-ఆధారిత వర్క్‌ఫోర్స్‌గా ఉండటానికి",
        "సాంస్కృతిక మార్పిడి సంస్థగా ఉండటానికి",
        "అత్యుత్తమ అంతర్జాతీయ ప్రమాణాలకు సరిపోయే పూర్తిగా ప్రొఫెషనల్ ఇన్వెస్టిగేటివ్ ఏజెన్సీగా ఉండటానికి"],
      correctAnswerIndex: 3,
      explanation:"అత్యుత్తమ అంతర్జాతీయ ప్రమాణాలకు సరిపోయే పూర్తిగా ప్రొఫెషనల్ ఇన్వెస్టిగేటివ్ ఏజెన్సీగా NIA దృష్టి ఉంది.",
    ),

    Question(
      questionText: "NIA యొక్క లక్ష్యం ఏమిటి?",
      options:[
        "అంతరిక్షాన్ని అన్వేషించడానికి",
        "సాంస్కృతిక మార్పిడిని ప్రోత్సహించడానికి",
        "ఉగ్రవాదానికి సంబంధించిన నేరాలను పరిశోధించడానికి మరియు విచారించడానికి",
        "ఆర్థిక అసమానతలను పరిష్కరించడానికి"],
      correctAnswerIndex: 2,
      explanation:"NIA యొక్క మిషన్ ఉగ్రవాదానికి సంబంధించిన షెడ్యూల్డ్ నేరాల యొక్క లోతైన వృత్తిపరమైన పరిశోధన మరియు సమర్థవంతమైన మరియు వేగవంతమైన విచారణకు భరోసా ఇస్తుంది.",
    ),

    Question(
      questionText: "NIA యొక్క మిషన్ ప్రకారం, దర్యాప్తులో ఏ ప్రమాణాలను ఏర్పరచాలని లక్ష్యంగా పెట్టుకుంది?",
      options:["తక్కువ ప్రమాణాలు", "ప్రమాణాలు లేవు", "ఉన్నత ప్రమాణాలు", "మితమైన ప్రమాణాలు"],
      correctAnswerIndex: 2,
      explanation:"NIA జాతీయ స్థాయిలో తీవ్రవాద వ్యతిరేకత మరియు ఇతర జాతీయ భద్రత-సంబంధిత పరిశోధనలలో అత్యుత్తమ ప్రమాణాలను నెలకొల్పడం లక్ష్యంగా పెట్టుకుంది.",
    ),

    Question(
      questionText: "NIA చట్టంలోని నిబంధనలను వేగంగా మరియు సమర్థవంతంగా అమలు చేయడానికి NIA ఎలాంటి చర్యలు తీసుకోవాలని లక్ష్యంగా పెట్టుకుంది?",
      options:[
        "ఆర్థిక విధానాలకు సంబంధించిన చర్యలు",
        "సాంస్కృతిక మార్పిడికి సంబంధించిన చర్యలు",
        "పర్యావరణ పరిరక్షణకు సంబంధించిన చర్యలు",
        "NIA చట్టంలోని నిబంధనలను వేగంగా మరియు సమర్థవంతంగా అమలు చేయడానికి అవసరమైన చర్యలు"],
      correctAnswerIndex: 3,
      explanation:"NIA చట్టంలోని నిబంధనలను త్వరితగతిన మరియు సమర్థవంతంగా అమలు చేయడానికి అవసరమైన చర్యలను తీసుకోవాలని NIA లక్ష్యంగా పెట్టుకుంది.",
    ),

    Question(
      questionText: "NIA లక్ష్యం ప్రకారం దాని ప్రాథమిక లక్ష్యం ఏమిటి?",
      options:[
        "అంతరిక్ష అన్వేషణను ప్రోత్సహించడం",
        "ఇప్పటికే ఉన్న మరియు సంభావ్య ఉగ్రవాద గ్రూపులు/వ్యక్తుల కోసం నిరోధాన్ని సృష్టించడం",
        "ఆర్థిక విధానాలను ఏర్పాటు చేయడం",
        "సాంస్కృతిక మార్పిడిని ప్రోత్సహించడం"],
      correctAnswerIndex: 1,
      explanation:"NIA యొక్క ప్రాథమిక లక్ష్యం, దాని లక్ష్యం ప్రకారం, ఇప్పటికే ఉన్న మరియు సంభావ్య తీవ్రవాద గ్రూపులు/వ్యక్తులకు నిరోధాన్ని సృష్టించడం.",
    ),
    Question(
      questionText: "నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ (NIA) అధికార పరిధి ఏమిటి?",
      options:[
        "అంతర్గత విషయాలకే అధికార పరిధి పరిమితం",
        "అధికార పరిధి ఆర్థిక నేరాలకు పరిమితం",
        "భారతదేశ సార్వభౌమాధికారం, భద్రత మరియు సమగ్రతను ప్రభావితం చేసే నేరాలను పరిశోధించడానికి మరియు విచారించడానికి ఏకకాలిక అధికార పరిధి",
        "సైబర్ నేరాలకు అధికార పరిధి పరిమితం చేయబడింది"],
      correctAnswerIndex: 2,
      explanation:"భారత సార్వభౌమాధికారం, భద్రత మరియు సమగ్రత, రాష్ట్ర భద్రత, విదేశీ రాష్ట్రాలతో స్నేహపూర్వక సంబంధాలు మరియు అంతర్జాతీయ ఒప్పందాలు మరియు ఒప్పందాలకు సంబంధించిన వివిధ చట్టాల కింద నేరాలను ప్రభావితం చేసే నేరాలను పరిశోధించడానికి మరియు విచారించడానికి NIA ఏకకాల అధికార పరిధిని కలిగి ఉంది.",
    ),

    Question(
      questionText: "టెక్స్ట్‌లో పేర్కొన్నట్లుగా, NIA ఏ రకమైన నేరాలను పరిశోధించే అధికారం కలిగి ఉంది?",
      options:[
        "ఆర్థిక నేరాలు మాత్రమే",
        "అంతర్గత నేరాలు మాత్రమే",
        "బాంబు పేలుళ్లు, హైజాకింగ్, అణు వ్యవస్థలపై దాడులు మరియు సామూహిక విధ్వంసక ఆయుధాల వినియోగంతో సహా తీవ్రవాద దాడులు",
        "ట్రాఫిక్ ఉల్లంఘనలు"],
      correctAnswerIndex: 2,
      explanation:"బాంబు పేలుళ్లు, విమానాలు మరియు నౌకలను హైజాక్ చేయడం, అణు స్థావరాలపై దాడులు మరియు సామూహిక విధ్వంసక ఆయుధాల వినియోగంతో సహా తీవ్రవాద దాడులపై దర్యాప్తు చేయడానికి NIAకి అధికారం ఉంది.",
    ),

    Question(
      questionText: "NIA (సవరణ) చట్టం, 2019 ప్రకారం NIA దర్యాప్తు చేయగల అదనపు నేరాలు ఏమిటి?",
      options:[
        "ట్రాఫిక్ ఉల్లంఘనలు",
        "పత్రాల ఫోర్జరీ",
        "మేధో సంపత్తికి సంబంధించిన నేరాలు",
        "మానవ అక్రమ రవాణా, నకిలీ కరెన్సీ, నిషేధిత ఆయుధాల తయారీ లేదా అమ్మకం, సైబర్-తీవ్రవాదం మరియు పేలుడు పదార్థాలకు సంబంధించిన నేరాలు"],
      correctAnswerIndex: 3,
      explanation:"NIA (సవరణ) చట్టం, 2019 ప్రకారం, NIA ఇప్పుడు మానవ అక్రమ రవాణా, నకిలీ కరెన్సీ లేదా బ్యాంకు నోట్లు, నిషేధిత ఆయుధాల తయారీ లేదా అమ్మకం, సైబర్-ఉగ్రవాదం మరియు పేలుడు పదార్థాలకు సంబంధించిన నేరాలను పరిశోధించవచ్చు.",
    ),

    Question(
      questionText: "NIA (సవరణ) చట్టం, 2019లో పేర్కొన్న విధంగా NIA అధికారులకు ఎలాంటి అధికారాలు ఉన్నాయి?",
      options:[
        "భారతదేశంలో పరిమిత అధికారాలు",
        "భారతదేశం వెలుపల శక్తులు లేవు",
        "భారతదేశంలోనే కాకుండా భారతదేశం వెలుపల కూడా పోలీసు అధికారులుగా ఇలాంటి అధికారాలు, విధులు, అధికారాలు మరియు బాధ్యతలు",
        "అధికారాలు ఆర్థిక నేరాలకు పరిమితం చేయబడ్డాయి"],
      correctAnswerIndex: 2,
      explanation:"NIA (సవరణ) చట్టం, 2019, NIA యొక్క అధికారులకు భారతదేశంలోనే కాకుండా భారతదేశం వెలుపల కూడా పోలీసు అధికారులుగా సమానమైన అధికారాలు, విధులు, అధికారాలు మరియు బాధ్యతలను మంజూరు చేస్తుంది.",
    ),

    Question(
      questionText: "భారతదేశం వెలుపల కేసు నమోదు చేసి దర్యాప్తు చేయమని NIAని ఆదేశించడానికి కేంద్ర ప్రభుత్వం ఏ నిబంధన అనుమతిస్తుంది?",
      options:[
        "అటువంటి ఆదేశాలకు ఎటువంటి నిబంధన లేదు",
        "ఆర్థిక నేరాలకు పరిమితమైన నిబంధన",
        "రాష్ట్ర ప్రభుత్వం నుండి అనుమతి తీసుకోవాలనే నిబంధన",
        "భారతదేశంలో నేరం జరిగినట్లుగానే కేసు నమోదు చేసి దర్యాప్తు చేయవలసిందిగా NIAని ఆదేశించేందుకు కేంద్ర ప్రభుత్వాన్ని అనుమతించే నిబంధన"],
      correctAnswerIndex: 3,
      explanation:"NIA (సవరణ) చట్టం, 2019, భారతదేశం వెలుపల నేరం జరిగినప్పటికీ, భారతదేశంలోనే నేరం జరిగినట్లుగా కేసు నమోదు చేసి దర్యాప్తు చేపట్టాలని NIAని ఆదేశించే అధికారాన్ని కేంద్ర ప్రభుత్వానికి అందిస్తుంది.",
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
    home: nia_te(),
  ));
}

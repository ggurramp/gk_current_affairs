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

class cbi_te extends StatefulWidget {
  final String? userIdentifier;

  cbi_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cbi_te> createState() => _cbi_teState();
}

class _cbi_teState extends State<cbi_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//65.సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్

    Question(
        questionText: "సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI) ఎప్పుడు స్థాపించబడింది?",
        options:[
          "1941",
          "1946",
          "1963",
          "2008"
        ],
        correctAnswerIndex: 2,
        explanation:"సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI) 1963లో కేంద్ర హోం మంత్రిత్వ శాఖ, భారత ప్రభుత్వం యొక్క తీర్మానం ద్వారా స్థాపించబడింది."
    ),

    Question(
        questionText: "1941లో ఏర్పాటైన స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ ప్రారంభ ప్రయోజనం ఏమిటి?",
        options:[
          "ఉగ్రవాద కేసులను విచారించండి",
          "వ్యవస్థీకృత నేరాన్ని ఎదుర్కోవడం",
          "రెండవ ప్రపంచ యుద్ధం సమయంలో లంచం మరియు అవినీతి కేసులను దర్యాప్తు చేయండి",
          "ఆర్థిక నేరాలకు సంబంధించిన చట్టాలను అమలు చేయండి"
        ],
        correctAnswerIndex: 2,
        explanation:"1941లో ఏర్పాటైన స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్, రెండవ ప్రపంచ యుద్ధం సమయంలో భారతదేశం యొక్క యుద్ధం మరియు సరఫరా విభాగంతో జరిపిన లావాదేవీలలో లంచం మరియు అవినీతికి సంబంధించిన కేసులను పరిశోధించే బాధ్యతను కలిగి ఉంది."
    ),

    Question(
        questionText: "సిబిఐ ఏ చట్టం ప్రకారం దాని అధికారాలను పొందుతుంది?",
        options:[
          "నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ (NIA) చట్టం",
          "ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ యాక్ట్, 1946",
          "సెంట్రల్ విజిలెన్స్ కమిషన్ చట్టం, 2003",
          "అవినీతి మరియు ఆర్థిక నేరాల చట్టం"
        ],
        correctAnswerIndex: 1,
        explanation:"సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI) ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ యాక్ట్, 1946 నుండి దాని అధికారాలను పొందింది."
    ),

    Question(
        questionText: "ఒక రాష్ట్రంలో అధికార పరిధికి సంబంధించి CBI యొక్క ప్రాథమిక దృష్టి ఏమిటి?",
        options:[
          "ఎలాంటి షరతులు లేకుండా పూర్తి అధికారం",
          "రాష్ట్ర ప్రభుత్వ సమ్మతి అవసరం లేదు",
          "రాష్ట్ర ప్రభుత్వ సమ్మతి అవసరం",
          "అధికారం కేవలం రైల్వే ప్రాంతాలకే పరిమితం"
        ],
        correctAnswerIndex: 2,
        explanation:"ఒక రాష్ట్రంలో (రైల్వే ప్రాంతం కాదు) CBI అధికార పరిధికి ఆ రాష్ట్ర ప్రభుత్వ సమ్మతి అవసరం."
    ),

    Question(
        questionText: "సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI) యొక్క నినాదం ఏమిటి?",
        options:[
          "న్యాయం, సమానత్వం, సమగ్రత",
          "కర్తవ్యం, గౌరవం, దేశం",
          "పరిశ్రమ, నిష్పాక్షికత, సమగ్రత",
          "సత్యం, కర్తవ్యం, శౌర్యం"
        ],
        correctAnswerIndex: 2,
        explanation:"సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI) యొక్క నినాదం 'పరిశ్రమ, నిష్పాక్షికత, సమగ్రత'."
    ),

    Question(
        questionText: "సిబిఐ దాని నినాదం మరియు లక్ష్యం ఆధారంగా దాని దృష్టి ఏమిటి?",
        options:[
          "లాభాలను పెంచుకోవడానికి",
          "భారత రాజ్యాంగం మరియు భూమి యొక్క చట్టాన్ని సమర్థించడం",
          "ప్రపంచవ్యాప్తంగా దాని అధికార పరిధిని విస్తరించడానికి",
          "రాజకీయ సిద్ధాంతాలను ప్రోత్సహించడానికి"
        ],
        correctAnswerIndex: 1,
        explanation:"CBI యొక్క లక్ష్యం, దాని నినాదం మరియు లక్ష్యం ఆధారంగా, లోతైన దర్యాప్తు మరియు నేరాలను విజయవంతంగా విచారించడం ద్వారా భారత రాజ్యాంగం మరియు భూమి యొక్క చట్టాన్ని సమర్థించడం; పోలీసు బలగాలకు నాయకత్వం మరియు దిశానిర్దేశం చేయడం మరియు చర్య తీసుకోవడం. చట్ట అమలులో అంతర్-రాష్ట్ర మరియు అంతర్జాతీయ సహకారాన్ని పెంపొందించడానికి నోడల్ ఏజెన్సీగా."
    ),

    Question(
        questionText: "CBI ఏ రకమైన నేరాలను దర్యాప్తు చేస్తుంది?",
        options:[
          "ఉగ్రవాద దాడులు మరియు తీవ్రవాదానికి నిధులు",
          "అవినీతి, ఆర్థిక నేరాలు మరియు తీవ్రమైన వ్యవస్థీకృత నేరాలు",
          "సైబర్ మరియు హై టెక్నాలజీ నేరాలు మాత్రమే",
          "పర్యావరణ మరియు వారసత్వ పరిరక్షణకు సంబంధించిన నేరాలు"
        ],
        correctAnswerIndex: 2,
        explanation:"CBI అవినీతి నేరాలు, ఆర్థిక నేరాలు మరియు తీవ్రవాదం కాకుండా ఇతర తీవ్రమైన మరియు వ్యవస్థీకృత నేరాలపై దర్యాప్తు చేస్తుంది."
    ),

    Question(
        questionText: "మానవ హక్కులు మరియు పర్యావరణ పరంగా CBI దేనిపై దృష్టి పెడుతుంది?",
        options:[
          "విచారణ నిమిత్తం మానవ హక్కులను విస్మరించడం",
          "మానవ హక్కులను సమర్థించడం మరియు పర్యావరణాన్ని పరిరక్షించడం",
          "మానవ హక్కులకు వ్యతిరేకంగా వాదించడం",
          "పరిశోధన ప్రయోజనాల కోసం పర్యావరణాన్ని దోపిడీ చేయడం"
        ],
        correctAnswerIndex: 2,
        explanation:"మానవ హక్కులను సమర్థించడం, పర్యావరణం, కళలు, పురాతన వస్తువులు మరియు మన నాగరికత వారసత్వాన్ని పరిరక్షించడంపై CBI దృష్టి పెడుతుంది."
    ),

    Question(
        questionText: "CBI తన పనితీరులో ఏమి అభివృద్ధి చేయాలని లక్ష్యంగా పెట్టుకుంది?",
        options:[
          "రాజకీయ అనుబంధాలు",
          "శాస్త్రీయ నిగ్రహం, మానవతావాదం మరియు విచారణ మరియు సంస్కరణల స్ఫూర్తి",
          "మితిమీరిన బ్యూరోక్రసీ",
          "కుల ఆధారిత విధానాలు"
        ],
        correctAnswerIndex: 1,
        explanation:"CBI శాస్త్రీయ దృక్పథం, మానవతావాదం మరియు విచారణ స్ఫూర్తిని మరియు దాని పనితీరులో సంస్కరణలను అభివృద్ధి చేయడమే లక్ష్యంగా పెట్టుకుంది."
    ),
    Question(
        questionText: "సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI)కి ఎవరు నాయకత్వం వహిస్తారు?",
        options:[
          "ప్రధాన మంత్రి",
          "భారత ప్రధాన న్యాయమూర్తి",
          "దర్శకుడు",
          "లోక్‌సభలో ప్రతిపక్ష నాయకుడు"
        ],
        correctAnswerIndex: 2,
        explanation:"సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్ (CBI) ఒక డైరెక్టర్ నేతృత్వంలో ఉంటుంది."
    ),

    Question(
        questionText: "సిబిఐ పరిపాలనకు ఎవరు బాధ్యత వహిస్తారు?",
        options:[
          "సిబిఐ డైరెక్టర్",
          "భారత ప్రధాన న్యాయమూర్తి",
          "ఇన్‌స్పెక్టర్-జనరల్ ఆఫ్ పోలీస్, ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్",
          "ప్రధాన మంత్రి"
        ],
        correctAnswerIndex: 2,
        explanation:"ఇన్‌స్పెక్టర్-జనరల్ ఆఫ్ పోలీస్, ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్, CBI పరిపాలనకు బాధ్యత వహిస్తారు."
    ),

    Question(
        questionText: "CBI డైరెక్టర్ నియామకం కోసం కమిటీ కూర్పును ఏ సవరణ మార్చింది?",
        options:[
          "ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ (సవరణ) చట్టం, 2014",
          "సెంట్రల్ విజిలెన్స్ కమిషన్ చట్టం, 2003",
          "లోక్‌పాల్ మరియు లోకాయుక్త చట్టం (2013)",
          "ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ (సవరణ) చట్టం, 2021"
        ],
        correctAnswerIndex: 0,
        explanation:"ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ (సవరణ) చట్టం, 2014, CBI డైరెక్టర్ నియామకం కోసం కమిటీ కూర్పును మార్చింది."
    ),

    Question(
        questionText: "CBI డైరెక్టర్ పదవీకాలాన్ని కేంద్ర ప్రభుత్వం ఎంతకాలం పొడిగించవచ్చు?",
        options:[
          "రెండు సంవత్సరాల వరకు",
          "మూడేళ్ళ వరకు",
          "నాలుగు సంవత్సరాల వరకు",
          "ఐదేళ్ల వరకు"
        ],
        correctAnswerIndex: 3,
        explanation:"కేంద్ర ప్రభుత్వం CBI డైరెక్టర్ పదవీకాలాన్ని రెండు సంవత్సరాల నుండి ఐదు సంవత్సరాల వరకు పొడిగించవచ్చు, ఒకేసారి ఒక సంవత్సరం వరకు పొడిగింపులు సాధ్యమవుతాయి."
    ),

    Question(
        questionText: "CBI యొక్క ప్రాథమిక విధులు ఏమిటి?",
        options:[
          "అవినీతి కేసుల దర్యాప్తు మాత్రమే",
          "అవినీతి మరియు ఆర్థిక నేరాల కేసుల దర్యాప్తు",
          "నేర గణాంకాలను నిర్వహించడం మాత్రమే",
          "రాష్ట్ర పోలీసు బలగాలను సమన్వయం చేయడం"
        ],
        correctAnswerIndex: 1,
        explanation:"CBI యొక్క ప్రాథమిక విధుల్లో అవినీతి, లంచం, దుష్ప్రవర్తన, ఆర్థిక మరియు ఆర్థిక చట్టాల ఉల్లంఘన, జాతీయ మరియు అంతర్జాతీయ పరిణామాలతో కూడిన తీవ్రమైన నేరాలు మరియు అవినీతి నిరోధక కార్యకలాపాలను సమన్వయం చేయడం వంటి కేసుల దర్యాప్తు ఉన్నాయి."
    ),

    Question(
        questionText: "CBI సాధారణంగా ఏ రకమైన కేసులను అవినీతి నిరోధక రంగంలో తన కార్యకలాపాలను పరిమితం చేస్తుంది?",
        options:[
          "రాష్ట్ర ప్రభుత్వ ఉద్యోగులు చేసిన కేసులు",
          "ప్రైవేట్ వ్యక్తులచే కట్టబడిన కేసులు",
          "కేంద్ర ప్రభుత్వ మరియు కేంద్రపాలిత ప్రాంతాల ఉద్యోగులు చేసిన కేసులు",
          "విదేశీ పౌరులు చేసిన కేసులు"
        ],
        correctAnswerIndex: 2,
        explanation:"CBI సాధారణంగా అవినీతి నిరోధక రంగంలో తన కార్యకలాపాలను కేంద్ర ప్రభుత్వం మరియు కేంద్ర పాలిత ప్రాంతాలు మరియు వారి ప్రభుత్వ రంగ సంస్థల ఉద్యోగులు చేసే నేరాలకు పరిమితం చేస్తుంది."
    ),

    Question(
        questionText: "భారతదేశంలో ఇంటర్‌పోల్‌లో భాగంగా CBI ఏ పాత్ర పోషిస్తుంది?",
        options:[
          "ఇది ఇంటర్‌పోల్‌లో సభ్య దేశం.",
          "ఇది రాష్ట్ర పోలీసు బలగాలతో కార్యకలాపాలను సమన్వయం చేస్తుంది.",
          "ఇది ఇంటర్‌పోల్ యొక్క 'నేషనల్ సెంట్రల్ బ్యూరో'గా పనిచేస్తుంది.",
          "ఇది ఇంటర్‌పోల్ తరపున పరిశోధనలు నిర్వహిస్తుంది."
        ],
        correctAnswerIndex: 2,
        explanation:"CBI భారతదేశంలోని ఇంటర్‌పోల్ యొక్క 'నేషనల్ సెంట్రల్ బ్యూరో'గా వ్యవహరిస్తుంది, భారత చట్టాన్ని అమలు చేసే ఏజెన్సీలు మరియు ఇంటర్‌పోల్ సభ్య దేశాల నుండి ఉద్భవించే దర్యాప్తు సంబంధిత కార్యకలాపాల కోసం అభ్యర్థనలను సమన్వయం చేస్తుంది."
    ),
    Question(
        questionText: "విచారణ లేదా విచారణ నిర్వహించే ముందు CBI ముందస్తు అనుమతి పొందేందుకు ఏ చట్టపరమైన నిబంధన అవసరం?",
        options:[
          "ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ చట్టంలోని సెక్షన్ 6A",
          "అవినీతి నిరోధక చట్టం, 1988",
          "రాజ్యాంగంలోని ఆర్టికల్ 14",
          "2014లో సుప్రీం కోర్టు తీర్పు"
        ],
        correctAnswerIndex: 0,
        explanation:"ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ చట్టంలోని సెక్షన్ 6A ప్రకారం, జాయింట్ సెక్రటరీ మరియు అంతకంటే ఎక్కువ స్థాయి అధికారులు చేసిన నేరంపై ఏదైనా విచారణ లేదా దర్యాప్తు చేయడానికి ముందు CBI కేంద్ర ప్రభుత్వం నుండి ముందస్తు అనుమతి పొందవలసి ఉంటుంది."
    ),

    Question(
        questionText: "ముందస్తు అనుమతి కోసం చట్టపరమైన నిబంధనలకు సంబంధించి సుప్రీంకోర్టు 2014లో ఏమి తీర్పు ఇచ్చింది?",
        options:[
          "ఇది రాజ్యాంగబద్ధమైన నిబంధనను సమర్థించింది.",
          "అవినీతి కేసులకు ఈ నిబంధన అవసరం అని ప్రకటించింది.",
          "ఇది నిబంధన చెల్లదు మరియు ఆర్టికల్ 14 యొక్క ఉల్లంఘనగా పరిగణించబడింది.",
          "ఇది నిబంధనను కఠినంగా అమలు చేయాలని సిఫార్సు చేసింది."
        ],
        correctAnswerIndex: 2,
        explanation:"2014లో, ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ చట్టంలోని సెక్షన్ 6A, సీనియర్ బ్యూరోక్రాట్‌లపై విచారణ జరిపేందుకు సీబీఐకి ముందస్తు అనుమతి తప్పనిసరి చేసింది, ఇది ఆర్టికల్ 14ను ఉల్లంఘిస్తోందని మరియు అది చెల్లదని ప్రకటించింది."
    ),

    Question(
        questionText: "భారత ప్రధాన న్యాయమూర్తి ప్రకారం, అవినీతిపరులైన పబ్లిక్ సర్వెంట్లను గుర్తించడం యొక్క ప్రాముఖ్యత ఏమిటి?",
        options:[
          "ఇది ప్రజా ప్రయోజనానికి సంబంధించిన విషయం.",
          "ఇది అవినీతి అధికారులను రెండు తరగతులుగా విభజించింది.",
          "అవినీతి నిరోధక చట్టం, 1988 ప్రకారం ఇది అవసరమైన ఆదేశం.",
          "ఇది ఉన్నత స్థాయి అధికారులకు ప్రత్యేక చికిత్స అవసరం."
        ],
        correctAnswerIndex: 2,
        explanation:"అవినీతి నిరోధక చట్టం, 1988 ప్రకారం అవినీతికి పాల్పడే ప్రభుత్వ ఉద్యోగులను వారి హోదా లేదా హోదాతో సంబంధం లేకుండా గుర్తించడం తప్పనిసరి అని భారత ప్రధాన న్యాయమూర్తి నొక్కి చెప్పారు."
    ),

    Question(
      questionText: "రాష్ట్ర పోలీసు బలగాలతో కలిసి ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ (DSPE) యొక్క పరిపాలనా పాత్ర ఏమిటి?",
      options:[
        "DSPEకి ప్రత్యేక అధికారాలు ఉన్నాయి మరియు రాష్ట్ర పోలీసు బలగాల నుండి స్వతంత్రంగా పనిచేస్తుంది.",
        "అన్ని సందర్భాలలో రాష్ట్ర పోలీసు బలగాల కంటే DSPE ప్రాధాన్యతనిస్తుంది.",
        "DSPEకి రాష్ట్ర పోలీసు బలగాలతో అనుబంధ మరియు ఏకకాలిక అధికారాలు ఉన్నాయి.",
        "DSPE మరియు రాష్ట్ర పోలీసు బలగాలకు సమన్వయం లేదు మరియు స్వతంత్రంగా పని చేస్తాయి."
      ],
      correctAnswerIndex: 2,
      explanation:"ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ (DSPE) పాత్ర రాష్ట్ర పోలీసు బలగాలకు అనుబంధంగా ఉంటుంది. DSPE ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ యాక్ట్, 1946 ప్రకారం నేరాలకు సంబంధించి విచారణ మరియు ప్రాసిక్యూషన్ యొక్క ఏకకాల అధికారాలను కలిగి ఉంది. నకిలీని నివారించడానికి పరిపాలనా ఏర్పాట్లు చేయబడ్డాయి. మరియు DSPE మరియు రాష్ట్ర పోలీసు బలగాల మధ్య కేసుల అతివ్యాప్తి.",
    ),

    Question(
      questionText: "అడ్మినిస్ట్రేటివ్ ఏర్పాట్లలో, DSPE ఏ కేసులను నిర్వహిస్తుంది?",
      options:[
        "ప్రత్యేకంగా రాష్ట్ర ప్రభుత్వ వ్యవహారాలకు సంబంధించిన కేసులు.",
        "రాష్ట్ర పోలీసు బలగాలతో సంబంధం లేని కేసులు.",
        "కేంద్ర ప్రభుత్వ వ్యవహారాలతో తప్పనిసరిగా మరియు గణనీయంగా సంబంధించిన కేసులు.",
        "కేవలం రాష్ట్ర ప్రభుత్వ ఉద్యోగులకు సంబంధించిన కేసులు."
      ],
      correctAnswerIndex: 2,
      explanation:"అడ్మినిస్ట్రేటివ్ ఏర్పాట్ల ప్రకారం, DSPE వారు నిర్దిష్ట రాష్ట్ర ప్రభుత్వ ఉద్యోగులను కలిగి ఉన్నప్పటికీ, కేంద్ర ప్రభుత్వ వ్యవహారాలు లేదా ఉద్యోగులకు సంబంధించిన కేసులను తప్పనిసరిగా మరియు గణనీయంగా నిర్వహిస్తుంది.",
    ),

    Question(
      questionText: "ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ చట్టంలోని సెక్షన్ 6A చెల్లనిదిగా సుప్రీంకోర్టు ప్రకటించడానికి ప్రాథమిక కారణం ఏమిటి?",
      options:[
        "ఇది ప్రాసిక్యూషన్ నుండి సీనియర్ బ్యూరోక్రాట్లను రక్షించింది.",
        "విచారణ నుండి కొంతమంది అధికారులను మినహాయించడం ద్వారా ఇది ఆర్టికల్ 14ను ఉల్లంఘించింది.",
        "అవినీతి చెందిన ప్రభుత్వ సేవకులను వెతకడానికి ఇది అనవసరం.",
        "ఇది DSPEపై రాష్ట్ర పోలీసు బలగాలకు అధికారం ఇచ్చింది."
      ],
      correctAnswerIndex: 1,
      explanation:"జాయింట్ సెక్రటరీ మరియు పై అధికారులకు రక్షణ కల్పించడం ద్వారా ఆర్టికల్ 14ను ఉల్లంఘించినందున ఢిల్లీ స్పెషల్ పోలీస్ ఎస్టాబ్లిష్‌మెంట్ చట్టంలోని సెక్షన్ 6A చెల్లదని సుప్రీం కోర్టు ప్రకటించింది, అవినీతి కేసుల్లో సీబీఐ చేసే ప్రాథమిక విచారణ నుండి కూడా వారికి మినహాయింపు.",
    ),

    Question(
      questionText: "అడ్మినిస్ట్రేటివ్ ఏర్పాట్లలో రాష్ట్ర పోలీసు బలగాలకు సంబంధించి DSPE యొక్క ముఖ్య విధి ఏమిటి?",
      options:[
        "DSPE రాష్ట్ర పోలీసు బలగాలతో కార్యకలాపాలను సమన్వయం చేస్తుంది.",
        "DSPE రాష్ట్ర పోలీసు బలగాల నుండి అన్ని కేసులను స్వాధీనం చేసుకుంటుంది.",
        "DSPE మరియు రాష్ట్ర పోలీసు బలగాలు స్వతంత్రంగా పనిచేస్తాయి.",
        "DSPEకి రాష్ట్ర పోలీసు బలగాలపై ప్రత్యేక అధికారాలు ఉన్నాయి."
      ],
      correctAnswerIndex: 0,
      explanation:"అడ్మినిస్ట్రేటివ్ ఏర్పాట్లలో, DSPE రాష్ట్ర పోలీసు బలగాలతో కార్యకలాపాలను సమన్వయం చేస్తుంది. DSPE నిర్దిష్ట రాష్ట్ర ప్రభుత్వ ఉద్యోగులతో సంబంధం కలిగి ఉన్నప్పటికీ, కేంద్ర ప్రభుత్వ వ్యవహారాలకు సంబంధించిన కేసులను తప్పనిసరిగా మరియు గణనీయంగా తీసుకుంటుంది.",
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
    home: cbi_te(),
  ));
}

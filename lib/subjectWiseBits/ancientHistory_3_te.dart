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


class ancientHistory_3_te extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_3_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_3_te> createState() => _ancientHistory_3_teState();
}

class _ancientHistory_3_teState extends State<ancientHistory_3_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
        questionText: "బుద్ధచరితాన్ని ఎవరు రాశారు?",
        options: ["బసుమిత్ర", "విశాఖదత్త", "నాగార్జున", "అశ్వఘోష"],
        correctAnswerIndex: 3,
        explanation:"అశ్వఘోష, ప్రాచీన భారతీయ కవి, బుద్ధచరితాన్ని రచించిన ఘనత పొందాడు. ఈ పురాణ కావ్యం గౌతమ బుద్ధుని జీవితాన్ని వివరిస్తుంది మరియు బౌద్ధ సాహిత్యంలో ప్రాముఖ్యతను కలిగి ఉంది."
    ),

    Question(
        questionText: "నంద రాజవంశ స్థాపకుడు",
        options: ["ధన నంద", "నాగదశక", "కలాశోక", "మహాపద్మ"],
        correctAnswerIndex: 3,
        explanation:"మహాపద్మ నంద నంద రాజవంశ స్థాపకుడిగా గుర్తించబడ్డాడు. పురాతన భారతీయ చరిత్రలో నంద రాజవంశం యొక్క ప్రాముఖ్యతను స్థాపించడంలో అతను కీలక పాత్ర పోషించాడు, "
    ),

    Question(
      questionText: "మగధ్ 1వ రాజధాని",
      options: ["రాజగృహ", "వైశాలి", "పాటలీపుత్ర", "కాశీ"],
      correctAnswerIndex: 0,
      explanation: "బింబిసారుని మొదటి రాజధాని గిరివ్రాజలో ఉంది (రాజగృహతో గుర్తించబడింది). అతను హోర్యాంక రాజవంశానికి చెందినవాడు. అతన్ని సెనియా లేదా శ్రేణిక అని కూడా పిలుస్తారు.",
    ),

    Question(
      questionText: "'కాదంబరి' రచయిత",
      options: ["భబాభూతి", "బాణభట్ట", "క్షేమేంద్ర", "కల్హణ"],
      correctAnswerIndex: 1,
      explanation: "బాణభట్ట హర్షచరిత సాహిత్య రచనకు కూడా ప్రసిద్ధి చెందాడు. అతను హర్షవర్ధన్ ఆస్థాన కవి.",
    ),

    Question(
      questionText: "ప్రసిద్ధ వ్యాకరణ శాస్త్రవేత్త పతంజలి ఎవరి సమకాలీనుడు?",
      options: ["వాసుదేవ కంబ", "గంటమీ పుత్ర శాతకర్ణి", "అగ్రి మిత్ర సుంగ", "పుష్య మిత్ర సుంగ"],
      correctAnswerIndex: 3,
      explanation: "పతంజలి యొక్క ప్రసిద్ధ రచన సంస్కృత భాషలో యోగ సూత్రాలు మరియు మహాభాష్య. యోగా గ్రంథం మరియు వ్యాకరణ గ్రంథం ఒకే పేరుతో ఇద్దరు వేర్వేరు రచయితలచే వ్రాయబడిందని చాలామంది భావించారు. సుంగ రాజవంశం పుష్య మిత్ర సుంగచే స్థాపించబడింది.",
    ),

    Question(
      questionText: "పరాగల్ ఖాన్ మొట్టమొదటి బెంగాలీ అనువాదాన్ని తీసుకురావడంలో సహాయం చేసారు",
      options: ["ఉపనిషత్", "బ్రహ్మ సూత్రం", "రామాయణం", "మహాభారతం"],
      correctAnswerIndex: 3,
      explanation: "పరాగల్ ఖాన్ చిట్టగాంగ్ పాలకుడు. అతని అభ్యర్థన మేరకు, కవీంద్ర పరమేశ్వరుడు సంస్కృతాన్ని అనుకరిస్తూ బెంగాలీ మహాభారతాన్ని (1515-1519) రచించాడు.",
    ),

    Question(
        questionText: "అమీర్ ఖస్రు ఆస్థాన కవి",
        options: ["గియాసుద్దీన్ తుగ్లక్", "అక్బర్", "బల్బన్", "అలావుద్దీన్ ఖిల్జీ"],
        correctAnswerIndex: 3,
        explanation: "అమీర్ ఖస్రు 14వ శతాబ్దంలో ఢిల్లీ సుల్తానేట్ సమయంలో ఖిల్జీ రాజవంశం యొక్క శక్తివంతమైన పాలకుడు అల్లావుద్దీన్ ఖిల్జీ యొక్క ఆస్థాన కవిగా పనిచేశాడు."
    ),

    Question(
        questionText: "గాంధార స్కూల్ ఆఫ్ ఆర్ట్‌కి సంబంధించి కింది వాటిలో ఏది నిజం?",
        options: [
          "దీనిని బౌద్ధ కళ అని కూడా అంటారు",
          "దీని బొమ్మ మధుర స్కూల్ ఆఫ్ ఆర్ట్ కంటే గొప్పది.",
          "బుద్ధుని బొమ్మ ఇక్కడ మొదటిసారిగా కనిపిస్తుంది",
          "దాని హస్తకళాకారులు చిత్రాలను రూపొందించడానికి తెల్ల రాయిని ఉపయోగించారు"
        ],
        correctAnswerIndex: 2,
        explanation: "గాంధార స్కూల్ ఆఫ్ ఆర్ట్ కళలో బుద్ధుని బొమ్మను చిత్రీకరించిన తొలి పాఠశాలల్లో ఒకటిగా ప్రసిద్ధి చెందింది. బౌద్ధ కళ అభివృద్ధిలో ఇది కీలక పాత్ర పోషించింది."
    ),

    Question(
        questionText: "క్రింది ఢిల్లీ సుల్తానులలో ఎవరు రెండవ అలెగ్జాండర్‌గా మారి ప్రపంచాన్ని జయించాలనుకున్నారు?",
        options: ["ముహమ్మద్ బిన్ తుగ్లక్", "ఘియాసుద్దీన్ బాల్బన్", "అలావుద్దీన్ ఖిల్జీ", "వాటిలో ఎవరూ లేరు"],
        correctAnswerIndex: 2,
        explanation: "అల్లావుద్దీన్ ఖిల్జీ ప్రపంచ విజయ ఆశయాలను కలిగి ఉన్నాడు మరియు అలెగ్జాండర్ ది గ్రేట్ యొక్క విజయాలను అనుకరించడం లక్ష్యంగా పెట్టుకున్నాడు. అతని సైనిక ప్రచారాలు విస్తరణ కోరికతో ప్రేరేపించబడ్డాయి."
    ),

    Question(
        questionText: "అలెగ్జాండర్ నది ఒడ్డున పురుస్‌తో పోరాడాడు",
        options: ["రవి", "ఇరావతి", "సింధు", "జీలం"],
        correctAnswerIndex: 3,
        explanation: "అలెగ్జాండర్ భారత ఉపఖండంపై తన దండయాత్ర సమయంలో జీలం నది ఒడ్డున పురుస్‌కు వ్యతిరేకంగా పోరాడాడు."
    ),

    Question(
        questionText: "ఆంధ్ర-కవితా పితామహ బిరుదు ఎవరికి ఇవ్వబడింది?",
        options: ["శ్రీనాథ్", "పెద్దన్", "సాయన్", "మాధవ్"],
        correctAnswerIndex: 1,
        explanation: "పెద్దన్, ఒక తెలుగు కవి, ఆంధ్ర-కవితా పితామహ బిరుదుతో సత్కరించబడ్డాడు, దీనిని తెలుగు పద్యానికి తాత అని అనువదిస్తుంది."
    ),
    Question(
        questionText: "తారిఖ్-ఇ-ఫిరూజ్ షాహి పుస్తక రచయిత ఎవరు?",
        options: ["జియావుద్దీన్ బరానీ", "అల్ బిరుని", "అబుల్ ఫాజీ", "మిన్హాజ్-ఉస్-సిరాజ్"],
        correctAnswerIndex: 0,
        explanation: " "
    ),

    Question(
        questionText: "షేర్ షా దాడి చేస్తూ మరణించాడా?",
        options: ["మాల్వేర్", "కలైంజర్", "మండు", "రైసిన్"],
        correctAnswerIndex: 1,
        explanation: " "
    ),

    Question(
      questionText: "ఇఖ్తియారుద్దీన్ భక్తియార్ ఖాల్జీ బెంగాల్‌పై ఎప్పుడు దండెత్తాడు?",
      options: ["1202 A.D", "1206 A.D", "1194 A.D", "1199 A.D"],
      correctAnswerIndex: 0,
      explanation: "అతను 1203లో పాత చక్రవర్తి లక్ష్మణ సేన నుండి నబద్వీప్‌ను జయించాడు.",
    ),

    Question(
        questionText: "షేర్ షా జనరల్ ఎవరు?",
        options: ["శాయేస్త ఖాన్", "జైసింగ్", "బ్రహ్మజిత్ గౌర్", "దిలీర్ ఖాన్"],
        correctAnswerIndex: 2,
        explanation: "మధ్యయుగ భారతదేశంలోని ప్రముఖ పాలకుడైన షేర్ షా సూరి జనరల్‌గా బ్రహ్మజిత్ గౌర్ పనిచేశాడు. షేర్ షా సూరి యొక్క మిలీఅతని జనరల్స్ ప్రభావం కారణంగా tarary విజయాలు కొంతవరకు ఉన్నాయి."
    ),

    Question(
        questionText: "ఢిల్లీలో కుతుబ్ మినార్‌ను ఎవరు నిర్మించారు?",
        options: ["బల్బన్", "అలావుద్దీన్ ఖిల్జీ", "కుతుబుద్దీన్ ఐబక్", "ఇల్తుమిష్"],
        correctAnswerIndex: 2,
        explanation: "ఢిల్లీ సుల్తానేట్ స్థాపకుడు కుతుబుద్దీన్ ఐబక్ ఢిల్లీలో కుతుబ్ మినార్ నిర్మాణాన్ని ప్రారంభించాడు. తరువాత అతని వారసులు ఈ నిర్మాణాన్ని కొనసాగించారు."
    ),

    Question(
        questionText: "భారతదేశంలో రేషన్ వ్యవస్థను ప్రవేశపెట్టిన సుల్తాన్ పేరు",
        options: ["ముహమ్మద్ బిన్ తుగ్లక్", "ఫిరూజ్ తుగ్లక్", "గియాసుద్దీన్ బల్బన్", "అలావుద్దీన్ ఖాల్జీ"],
        correctAnswerIndex: 3,
        explanation: "ఖల్జీ రాజవంశం యొక్క శక్తివంతమైన పాలకుడు అల్లావుద్దీన్ ఖాల్జీ భారతదేశంలో రేషన్ వ్యవస్థను (దీవాన్-ఇ-ముస్తఖరాజ్ అని పిలుస్తారు) ప్రవేశపెట్టాడు. ఈ వ్యవస్థ మార్కెట్లో ఆహార సరఫరా మరియు స్థిరత్వాన్ని నిర్ధారించడానికి అవసరమైన వస్తువుల ధరలను నియంత్రించడం లక్ష్యంగా పెట్టుకుంది. ."
    ),

    Question(
      questionText: "సకాబ్ద ప్రారంభించబడింది",
      options: ["58 A.D", "327 A.D", "78 B.C", "78 A.D"],
      correctAnswerIndex: 3,
      explanation: "శకబ్దాన్ని కనిష్కుడు 78 ADలో ప్రారంభించాడు.",
    ),

    Question(
        questionText: "తరైన్ యుద్ధం ముహమ్మద్ ఘూరి మరియు మధ్య జరిగింది",
        options: ["పృథ్వీరాజ్ చౌహాన్", "రామ హంబీర్దేవ", "రాణా సంగ", "రాణా ప్రతాప్"],
        correctAnswerIndex: 0,
        explanation: " తరైన్ యుద్ధం ఘురిద్ పాలకుడు ముహమ్మద్ ఘురి మరియు చహమనా రాజ్‌పుత్ రాజు పృథ్వీరాజ్ చౌహాన్ మధ్య జరిగింది. 1192లో జరిగిన రెండవ తరైన్ యుద్ధం పృథ్వీరాజ్ చౌహాన్ ఓటమికి దారితీసింది"
    ),

    Question(
        questionText: "1665 A.Dలో శివాజీ ఎవరితో పురంధర్ ఒప్పందంపై సంతకం చేశారు",
        options: ["జైసింగ్", "ప్రిన్స్ మువాజ్జామ్", "షైస్టా ఖాన్", "అఫ్జల్ ఖాన్"],
        correctAnswerIndex: 0,
        explanation: "శివాజీ 1665 A.Dలో మొఘల్ జనరల్ జైసింగ్‌తో పురంధర్ ఒప్పందంపై సంతకం చేశాడు. ఈ ఒప్పందం శివాజీ మరియు మొఘల్ సామ్రాజ్యం మధ్య రాజీలకు దారితీసింది, ఇది తాత్కాలిక సంధిని సూచిస్తుంది."
    ),
    Question(
      questionText:
      "ఋగ్వేదంలోని ఏ భాగం తరువాతి వేద యుగంలో వ్రాయబడింది?",
      options: ["3వ మండలం", "7వ మండలం", "9వ మండలం", "10వ మండలం"],
      correctAnswerIndex: 3,
      explanation:
      "1వ మరియు 10వ మండలాలు తరువాతి వేద యుగంలో వ్రాయబడ్డాయి. 2 వ నుండి 9 వ మండలాలు లేదా పుస్తకాలు ప్రారంభ వేద యుగంలో వ్రాయబడ్డాయి. వేద యుగం 1500 BC నుండి 600 BC వరకు పరిగణించబడుతుంది, ఇక్కడ 1000 BC నుండి 600 BC వరకు తరువాతి వేద యుగం అని పిలుస్తారు. ",
    ),

    Question(
      questionText: "సత్యమేవ జయతే ఏ పుస్తకం నుండి తీసుకోబడింది?",
      options: ["బుధచరిత", "అర్థశాస్త్ర", "ముండక ఉపనిషిద", "మహాభారతం"],
      correctAnswerIndex: 2,
      explanation:
      "సత్యమేవ జయతే అనే పదబంధం వేదాలలో భాగమైన ఉపనిషత్తులలో ఒకటైన ముండక ఉపనిషత్తు నుండి వచ్చింది.",
    ),

    Question(
      questionText: "త్రిపిటకం' అనే పదానికి అర్థం ఏమిటి?",
      options: ["పుస్తకం", "సత్యం", "ముగింపు", "బాస్కెట్"],
      correctAnswerIndex: 3,
      explanation: "త్రిపిటక అంటే మూడు బుట్టలు, బౌద్ధ గ్రంథాల యొక్క మూడు సేకరణలను సూచిస్తాయి.",
    ),

    Question(
      questionText: "దాదాషాంగాలో మత ప్రబోధం ఉందా?",
      options: ["బుధ", "మహావీర", "రిషభనాథ", "శంకరాచార్య"],
      correctAnswerIndex: 1,
      explanation:
      "దదాశంగా జైనమతంలో 24వ తీర్థంకరుడైన మహావీరుని మత బోధనలను కలిగి ఉంది.",
    ),

    Question(
      questionText: "విక్రమాంకదేవచరితలో ఏ రాజు సాధించిన ఘనత ఉంది?",
      options: ["విక్రమాదిత్య I", "విక్రమాదిత్య VI", "విక్రమాదిత్య II", "స్కందగుప్తుడు"],
      correctAnswerIndex: 1,
      explanation:
      "విక్రమాంకదేవచరిత అనేది పశ్చిమ చాళుక్య రాజవంశం యొక్క రాజు విక్రమాదిత్య VI యొక్క విజయాలకు అంకితం చేయబడిన బిల్హణ సాహిత్య రచన.",
    ),

    Question(
      questionText: "గంజాం శాసనం ఏ రాజు గురించి వివరిస్తుంది?",
      options: ["కర్బలా", "సముద్ర గుప్తా", "శశాంక", "రుద్రదమన్"],
      correctAnswerIndex: 2,
      explanation:
      "గంజాం శాసనం ప్రస్తుత పశ్చిమ బెంగాల్‌లోని ముర్షిదాబాద్‌లోని కర్ణసుబర్ణలో రాజధానిగా ఉన్న గౌడ రాజు శశాంక గురించి సమాచారాన్ని వర్ణిస్తుంది.",
    ),

    Question(
      questionText:
      "బౌద్ధ సన్యాసి నాగసేనుడు మరియు బాక్ట్రియా రాజు మెనాండర్ మధ్య జరిగిన సంభాషణ ఏ పుస్తకంలో వ్రాయబడింది?",
      options: ["C-U-Ki", "Fo-Que-Ki", "Milinda Panha", "Angurnikoy"],
      correctAnswerIndex: 2,
      explanation:
      "మిలిందా పాన్హా (మిలిందా యొక్క Questionలు) బౌద్ధ సన్యాసి నాగసేన మరియు బాక్ట్రియా రాజు మెనాండర్ I మధ్య జరిగిన సంభాషణ యొక్క ఫలితం.",
    ),

    Question(
      questionText: "ఐహోల్ శాసనం రచించబడింది?",
      options: ["కౌటిల్య", "హోరిసేన", "రోవికీర్తి", "నయనిక"],
      correctAnswerIndex: 2,
      explanation: "ఐహోల్ శాసనం చాళుక్య రాజు పులకేశి II యొక్క ఆస్థాన కవి రోవికీర్తిచే వ్రాయబడింది.",
    ),

    Question(
      questionText: "తహ్కిక్-ఐ-హింద్ రాశారా?",
      options: ["అల్బెరూని", "అల్-బరాదారి", "సులేమాన్", "అల్-మసూద్"],
      correctAnswerIndex: 0,
      explanation:
      "తహ్కిక్-ఇ-హింద్ అల్బెరూనిచే వ్రాయబడింది, అతను భారత దండయాత్ర సమయంలో ఘజనీకి చెందిన మహమూద్‌తో కలిసి భారతదేశానికి వచ్చాడు.",
    ),

    Question(
      questionText: "ఇబ్న్ బటూతా భారతదేశానికి వచ్చారా?",
      options: ["అక్బర్", "ముహమ్మద్ బిన్ తుగ్లక్", "Ilతుట్మిస్", "అలావుద్దీన్ ఖాల్జీ"],
      correctAnswerIndex: 1,
      explanation: "ముహమ్మద్ బిన్ తుగ్లక్ ప్రాంతంలో ఇబ్న్ బటూతా భారతదేశానికి వచ్చి ఢిల్లీలో ఖాజీగా చేరాడు.",
    ),

    Question(
      questionText: "వేదాలు అంటే ఏమిటి?",
      options: ["జ్ఞానం", "సత్యం", "మతం", "మారదు"],
      correctAnswerIndex: 0,
      explanation:
      "వేదాలు అంటే జ్ఞానం. వేదాలు మానవ నిర్మితమైనవి కావు మరియు వాటిని అపౌరుషేయ అని పిలుస్తారు. వేదాలు మొదట్లో మౌఖికంగా అందించబడ్డాయి మరియు తరువాత సంకలనం చేయబడ్డాయి.",
    ),

    Question(
      questionText: "అలహాబాద్ స్తంభ శాసనం చెక్కబడింది",
      options: ["హరిసేన", "రవికిర్తి", "రుద్రదమన్", "బాణభట్ట"],
      correctAnswerIndex: 0,
      explanation:
      "అలహాబాద్ స్తంభ శాసనం సముద్రగుప్తుని ఆస్థాన కవి హరిసేనచే చెక్కబడింది. దీనిని ప్రయాగ ప్రశస్తి అని కూడా పిలుస్తారు మరియు నాగరి లిపితో సంస్కృతంలో వ్రాయబడింది.",
    ),

    Question(
      questionText:
      "చరిత్రకు పూర్వ కాలం నాటి పెయింటెడ్ రాక్ షెల్టర్ యొక్క అతిపెద్ద బెల్ట్ ఈ క్రింది ప్రదేశాలలో ఏది కనుగొనబడింది?",
      options: ["బాగోర్", "అజంతా", "భాజా", "భీంబేట్కా"],
      correctAnswerIndex: 3,
      explanation:
      "మధ్యప్రదేశ్‌లోని రైసెన్ జిల్లాలో ఉన్న భీంబెట్కా గుహలలో చరిత్రపూర్వ కాలం నాటి పెయింటెడ్ రాక్ షెల్టర్ యొక్క అతిపెద్ద బెల్ట్ కనుగొనబడింది.",
    ),

    Question(
      questionText: "మిలిందపన్హ రాసింది ఎవరు?",
      options: ["బసుమిత్ర", "నాగసేన", "అశ్వఘోష", "నాగార్జున"],
      correctAnswerIndex: 1,
      explanation: "మిలిందపన్హాన్ని నాగసేనుడు రచించాడు.",
    ),

    Question(
      questionText: "గీతావళి, కవితావళి మరియు వినయ పత్రిక ఎవరు రాశారు?",
      options: ["చైతన్య", "నామదేవ", "తులసీదాస్", "సూర్దాస్"],
      correctAnswerIndex: 2,
      explanation: "గీతావళి, కవితావళి మరియు వినయ పత్రికలను తులసీదాస్ రచించారు.",
    ),

    Question(
      questionText:
      "2వ శతాబ్దం BCE-3వ శతాబ్దం CE సమయంలో కృష్ణా మరియు గోదావరి దిగువ లోయల మధ్య ప్రాంతంలో ఏ కళా పాఠశాల అభివృద్ధి చెందింది?",
      options: ["నాగార్జున స్కూల్", "అమరావతి స్కూల్", "గాంధార స్కూల్", "మధుర స్కూల్"],
      correctAnswerIndex: 1,
      explanation:
      "అమరావతి స్కూల్ ఆఫ్ ఆర్ట్ 2వ శతాబ్దం BCE-3వ శతాబ్దం CE సమయంలో కృష్ణా మరియు గోదావరి దిగువ లోయల మధ్య ప్రాంతంలో అభివృద్ధి చెందింది. శిల్పాలు తెల్ల పాలరాయితో తయారు చేయబడ్డాయి.",
    ),

    Question(
      questionText:
      "శ్రీనగర్‌ను అశోకుడు నిర్మించాడని కింది వాటిలో ఏది చెబుతోంది?",
      options: ["తారానాథ్ టిబెట్ చరిత్ర", "మహావంశం", "దివ్యవదన", "రాజతరంగిణి"],
      correctAnswerIndex: 3,
      explanation:
      "కాశ్మీరీ చరిత్రకారుడు కల్హణ రచించిన రాజతరంగిణి, శ్రీనగర్‌ను అశోకుడు నిర్మించాడని పేర్కొంది. రాజతరంగిణి కాశ్మీర్ రాజుల పురాణ మరియు చారిత్రక చరిత్ర.",
    ),





    Question(
        questionText:
        "రథముషాలు మరియు మహాశిలకంటకం వంటి కొత్త ఆయుధాల సహాయంతో కాశీ-కోసల గణరాజ్యాలపై చివరి సైనిక దాడిని ఏ మగధన్ పాలకుడు ప్రారంభించాడు?",
        options: ["ప్రసేన్‌జిత్", "సిసునాగ", "బింబిసార", "అజాతశత్రు"],
        correctAnswerIndex: 3,
        explanation: "బింబిసార రాజు కుమారుడైన అజాతశత్రుడు, కాశీ-కోసల గణరాజ్యాలపై చివరి సైనిక దాడిని ప్రారంభించాడు. అతను రథముషాల (యుద్ధ రథాలు) మరియు మహాశిలకంటక వంటి కొత్త ఆయుధాలను ఉపయోగించాడు"
    ),

    Question(
        questionText: "మౌర్యుల కాలం నాటి వంశపారంపర్య సైనికులను అంటారు",
        options: ["వర్ధకి", "అటవివాలా", "భృతకస్", "మౌలా"],
        correctAnswerIndex: 3,
        explanation: "మౌర్యుల కాలం నాటి వంశపారంపర్య సైనికులను మౌలా అని పిలుస్తారు. వారు మౌర్య సామ్రాజ్యం యొక్క సైనిక నిర్మాణంలో కీలక పాత్ర పోషించారు."
    ),

    Question(
      questionText:
      "తూనికలు మరియు కొలతల యొక్క అధికారిక స్టాంపింగ్ మరియు వాటి కాలానుగుణ తనిఖీ ద్వారా సూచించబడతాయి",
      options: ["బృహస్పతి", "పరాశర", "మను", "నారద"],
      correctAnswerIndex: 2,
      explanation: "తూనికలు మరియు కొలతల అధికారిక స్టాంపింగ్ మరియు వాటి కాలానుగుణ తనిఖీ మనుచే సూచించబడింది.",
    ),

    Question(
        questionText: "చంద్రగుప్త మౌర్య మరియు సెల్యూకస్ మధ్య వివాహ బంధం యొక్క ఆలోచనను తిరస్కరించిన చరిత్రకారుల పేరు చెప్పండి",
        options: ["H P. శాస్త్రి", "B.N. ముఖర్జీ మరియు రొమిలా థాపర్", "విన్సెంట్ స్మిత్", "H.C. రాయ్చౌదరి"],
        correctAnswerIndex: 1,
        explanation: "చరిత్రకారులు B.N. ముఖర్జీ మరియు రొమిలా థాపర్ చంద్రగుప్త మౌర్య మరియు సెల్యూకస్ మధ్య వివాహ బంధం ఆలోచనను తిరస్కరించారు. అటువంటి దావా యొక్క చారిత్రక ఖచ్చితత్వానికి వ్యతిరేకంగా వారు వాదించారు."
    ),

    Question(
        questionText: "క్రింది వారిలో మౌర్యన్ కోర్టులో ఉన్న గ్రీకు రాయబారి ఎవరు కాదు?",
        options: ["Dcimachus", "Dionisius", "Megasthenes", "Diodorus"],
        correctAnswerIndex: 3,
        explanation: "డయోడోరస్ మౌర్యన్ కోర్ట్‌లో ఉండే గ్రీకు రాయబారి కాదు. మెగస్తనీస్, డీమాచస్ మరియు డయోనిసియస్ అనేవి మౌర్యన్ చరిత్రలో గ్రీకు రాయబారులకు సంబంధించిన పేర్లు.",
    ),

    Question(
      questionText:
      "అశోకుని యొక్క క్రింది ప్రధాన రాతి శాసనాలలో ప్రాకృత భాష మరియు ఖరోస్తీ లిపిలో ఏవి ఉన్నాయి?",
      options: ["మన్షేరా", "షాబాజ్‌గర్హి", "A మరియు B రెండూ", "ధౌలీ"],
      correctAnswerIndex: 2,
      explanation:
      "ప్రాకృత భాష మరియు ఖరోలో అశోకుని ప్రధాన శిలా శాసనాలుస్తి లిపిని మన్షేరా మరియు షాబాజ్‌గర్హి రెండింటిలోనూ చూడవచ్చు.",
    ),

    Question(
        questionText: "బుద్ధుని గుర్తుగా అశోకుని రమ్మిండే స్తంభం ఉంచబడింది",
        options: ["మొదటి ఉపన్యాసం", "మరణం", "పుట్టుక", "జ్ఞానోదయం"],
        correctAnswerIndex: 2,
        explanation: "అశోకుని రమ్మిండే స్తంభం బుద్ధుని జన్మకు గుర్తుగా ఉంచబడింది. శాసనాలతో అశోకుడు నిర్మించిన ముఖ్యమైన స్తంభాలలో ఇది ఒకటి."
    ),

    Question(
        questionText: "క్రింది వాటిలో ఏది మౌర్య సామ్రాజ్యంలో ప్రాంతీయ ప్రధాన కార్యాలయం కాదు?",
        options: ["తోసలి", "తంబపరిణి", "ఉజ్జయిని", "తక్షిలా"],
        correctAnswerIndex: 1,
        explanation: "తంబపరిణి మౌర్య సామ్రాజ్యంలో ప్రాంతీయ ప్రధాన కార్యాలయం కాదు. తోసలి, ఉజ్జయిని మరియు తక్షిలా ప్రాంతీయ ప్రధాన కార్యాలయాలలో ఉన్నాయి."
    ),

    Question(
        questionText: "బరాబర్ కొండలలో (గయ సమీపంలో) లోమస ఋషి గుహ ఎవరికి అశోకుడు దానం చేశాడు",
        options: ["బ్రాహ్మణులు", "శ్రీలంక బౌద్ధ సన్యాసులు", "అజీవిక సన్యాసులు", "జైన్ సన్యాసులు"],
        correctAnswerIndex: 2,
        explanation: "బరాబర్ హిల్స్‌లోని లోమస ఋషి గుహను అశోకుడు వివిధ మత సమాజాలకు తన మద్దతులో భాగంగా అజీవిక సన్యాసులకు విరాళంగా ఇచ్చాడు."
    ),

    Question(
      questionText:
      "'నా పిల్లల విషయానికొస్తే, వారు ఇహలోకంలో మరియు పరలోకంలో అన్ని సుఖాలు మరియు శ్రేయస్సులను అనుభవించాలని నేను కోరుకుంటున్నాను. కాబట్టి పురుషులందరికీ, నేను అలాంటి ఆనందం మరియు శ్రేయస్సును కోరుకుంటున్నాను'. ఇది -",
      options: ["తారై స్తంభాలు", "కళింగ శాసనాలు", "బరాబర్ గుహ శాసనాలు", "చిన్న రాతి శాసనాలు"],
      correctAnswerIndex: 2,
      explanation:
      "ఈ ప్రకటన బరాబర్ గుహ శాసనాలలో కనుగొనబడింది. అశోకుడు తన పిల్లల కోసం కోరుకునే విధంగానే పురుషులందరి ఆనందం మరియు శ్రేయస్సు కోసం తన కోరికను వ్యక్తం చేశాడు.",
    ),

    Question(
      questionText:
      "మౌర్యుల అనంతర కాలంలో, వాజపేయ, రాజసూయ మరియు అశ్వమేధ వంటి విస్తృతమైన వైదిక యాగాలను పాలకులు క్రమం తప్పకుండా నిర్వహించేవారు",
      options: ["ఉత్తర భారతదేశం", "దక్కన్", "ఉత్తర భారతదేశం మరియు దక్కన్ రెండూ", "చోళ రాజవంశం"],
      correctAnswerIndex: 0,
      explanation:
      "మౌర్యుల అనంతర కాలంలో, ఉత్తర భారతదేశ పాలకులు విస్తృతమైన వైదిక యాగ ఆచారాలను క్రమం తప్పకుండా నిర్వహించేవారు.",
    ),

    Question(
      questionText: "ఖరోస్తీ లిపి నుండి తీసుకోబడింది",
      options: ["సంస్కృతం", "బ్రాహ్మి", "పిక్టోగ్రాఫ్‌లు", "అరామిక్"],
      correctAnswerIndex: 3,
      explanation: "ఖరోస్తీ లిపి అరామిక్ నుండి తీసుకోబడింది.",
    ),

    Question(
      questionText: "'హిందూస్థాన్' అనే పదం యొక్క తొలి ఉపయోగం ససానిద్ పాలకుడు షాపూర్ I యొక్క ఏ శాసనంలో కనిపిస్తుంది?",
      options: ["బెహిస్తున్", "హమదాన్", "నక్ష్-ఇ-రుస్తోమ్", "పెర్సెపోలిస్"],
      correctAnswerIndex: 2,
      explanation: "హిందూస్థాన్' అనే పదం యొక్క తొలి ఉపయోగం ససానిద్ పాలకుడు షాపూర్ I యొక్క నక్ష్-ఇ-రుస్తోమ్ శాసనంలో కనిపిస్తుంది.",
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

            MyBannerAdWidget(), // Add the banner ad here,

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
    home: ancientHistory_3_te(),
  ));
}

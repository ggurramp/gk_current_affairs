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

class ancientHistory_6_te extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_6_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_6_te> createState() => _ancientHistory_6_teState();
}

class _ancientHistory_6_teState extends State<ancientHistory_6_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "రెండవ అశోకుడు' అని ఎవరిని పిలుస్తారు?",
      options: ["శనియుద్ర గుప్త", "చంద్ర గుప్త మౌర్య", "కనిష్క", "హర్షవర్ధన"],
      correctAnswerIndex: 2,
      explanation: "కనిష్కుడిని 'రెండవ అశోకుడు' అంటారు.",
    ),

    Question(
      questionText: "వైదికులు మొదట ఏ లోహాన్ని ఉపయోగించారు?",
      options: ["వెండి", "బంగారం", "ఇనుము", "రాగి"],
      correctAnswerIndex: 3,
      explanation: "వేద ప్రజలు మొదట రాగిని ఉపయోగించారు.",
    ),

    Question(
      questionText: "ఎల్లోరాలో ప్రసిద్ధ శివాలయాన్ని ఎవరు నిర్మించారు?",
      options: ["రాష్ట్రకూట పాలకుడు కృష్ణ I", "మౌర్య చక్రవర్తి అశోకుడు", "గుప్త రాజు సముద్ర గుప్త", "చాళుక్య రాజు పులికేశి II"],
      correctAnswerIndex: 0,
      explanation: "ఎల్లోరాలోని ప్రసిద్ధ శివాలయాన్ని రాష్ట్రకూట పాలకుడు కృష్ణ I నిర్మించాడు.",
    ),

    Question(
      questionText: "అజంతా యొక్క చిత్రాలు కథలను వర్ణిస్తాయి",
      options: ["రామాయణం", "మహాభారతం", "జాతకం", "పంచతంత్రం"],
      correctAnswerIndex: 2,
      explanation: "అజంతా యొక్క చిత్రాలు జాతక కథలను వర్ణిస్తాయి.",
    ),

    Question(
      questionText: "బుద్ధుడు తన మొదటి మత సందేశాన్ని ఇచ్చాడు",
      options: ["రాజగృహ", "పాటలీపుత్ర", "గయా", "సారనాథ్"],
      correctAnswerIndex: 3,
      explanation: "బుద్ధుడు తన మొదటి మత సందేశాన్ని సారనాథ్ వద్ద ఇచ్చాడు.",
    ),

    Question(
      questionText: "ప్రాచీన కాలంలో మూల పదార్థాలను వ్రాయడానికి ఉపయోగించే భాష",
      options: ["సంస్కృతం", "పాలి", "బ్రాహ్మి", "ఖరోస్తి"],
      correctAnswerIndex: 1,
      explanation: "ప్రాచీన కాలంలో మూల పదార్థాలను వ్రాయడానికి ఉపయోగించే భాష పాలీ.",
    ),

    Question(
      questionText: "క్రింది వారిలో యోగాకు మార్గదర్శకుడు ఎవరు?",
      options: ["పతంజలి", "వాగ్భట", "ఆత్రేయ", "వృదుకాంత"],
      correctAnswerIndex: 0,
      explanation: "పతంజలి యోగా యొక్క మార్గదర్శకుడు.",
    ),

    Question(
      questionText: "కుషాణుల కాలంలో గొప్ప అభివృద్ధి ఈ రంగంలో జరిగింది",
      options: ["మతం", "కళ", "సాహిత్యం", "ఆర్కిటెక్చర్"],
      correctAnswerIndex: 1,
      explanation: "కుషాణుల కాలంలో గొప్ప అభివృద్ధి కళారంగంలో జరిగింది.",
    ),

    Question(
      questionText: "ప్రసిద్ధ రాక్-కట్ టెంపుల్ ఆఫ్ కైలాస ఇక్కడ ఉంది",
      options: ["అజంతా", "బాదామి", "మహాబలిపురం", "ఎల్లోరా"],
      correctAnswerIndex: 3,
      explanation: "కైలాస ప్రసిద్ధ శిలాఫలకం ఎల్లోరాలో ఉంది.",
    ),

    Question(
      questionText: "చోళ రాజులు పాలించారు",
      options: ["తమిళనాడు", "ఆంధ్రా", "కేరళ", "బెంగాల్"],
      correctAnswerIndex: 0,
      explanation: "చోళ రాజులు తమిళనాడును పాలించారు.",
    ),

    Question(
      questionText: "తిరుగుబాటును అణచివేయడానికి బిందుసారుడు అశోకుని పంపాడు",
      options: ["స్వర్ణగిరి", "తక్షిలా", "ఉజ్జయిని", "తోసలి"],
      correctAnswerIndex: 1,
      explanation: "తక్షిలాలో తిరుగుబాటును అణచివేయడానికి బిందుసారుడు అశోకుడిని పంపాడు.",
    ),

    Question(
      questionText: "రాష్ట్రకూట రాజ్యాన్ని స్థాపించింది",
      options: ["దండి దుర్గ (దంతి దుర్గ)", "అమోఘవర్ష", "గోవింద III", "ఇంద్ర III"],
      correctAnswerIndex: 0,
      explanation: "రాష్ట్రకూట రాజ్యాన్ని దండి దుర్గ (దంతి దుర్గ) స్థాపించాడు.",
    ),
    Question(
      questionText: "కాలీబంగన్ ఇక్కడ ఉంది",
      options: ["ఉత్తర ప్రదేశ్", "సింధ్", "రాజస్థాన్", "గుజరాత్"],
      correctAnswerIndex: 2,
      explanation: "కాలీబంగన్ రాజస్థాన్‌లో ఉంది.",
    ),

    Question(
      questionText: "భారతదేశంలో నలంద విశ్వవిద్యాలయం ఏ రాష్ట్రంలో ఉంది?",
      options: ["బెంగాల్", "బీహార్", "ఒరిస్సా", "ఉత్తర ప్రదేశ్"],
      correctAnswerIndex: 1,
      explanation: "నలంద విశ్వవిద్యాలయం బీహార్‌లో ఉంది.",
    ),

    Question(
      questionText: "భారతదేశంలో బంగారు నాణేలను విడుదల చేసిన మొదటి రాజులు ఎవరు?",
      options: ["మౌర్యులు", "ఇండో-గ్రీకులు", "గుప్తులు", "కుషాన్స్"],
      correctAnswerIndex: 1,
      explanation: "భారతదేశంలో బంగారు నాణేలను విడుదల చేసిన మొదటి రాజులు ఇండో-గ్రీకులు.",
    ),

    Question(
      questionText: "వేదం' అనే పదానికి అర్థం",
      options: ["జ్ఞానం", "వివేకం", "ధ్యానం", "శక్తి"],
      correctAnswerIndex: 0,
      explanation: "వేదం' అంటే జ్ఞానం.",
    ),

    Question(
      questionText: "మనిషి ఉపయోగించిన మొదటి లోహం",
      options: ["అల్యూమినియం", "రాగి", "ఇనుము", "వెండి"],
      correctAnswerIndex: 1,
      explanation: "మనిషి ఉపయోగించిన మొదటి లోహం రాగి.",
    ),

    Question(
      questionText: "6వ శతాబ్దం B.C.లో తెగల సమాఖ్యగా ఉన్న రిపబ్లిక్‌కు పేరు పెట్టండి.",
      options: ["గాంధార", "వజ్జి", "కోసల", "అవంతి"],
      correctAnswerIndex: 1,
      explanation: "6వ శతాబ్దం B.C.లో తెగల సమాఖ్యగా ఉన్న రిపబ్లిక్ వజ్జి.",
    ),

    Question(
      questionText: "మహాబలిపురం ఎవరు స్థాపించారు?",
      options: ["పల్లవ", "పాండ్య", "చోళ", "చాళుక్య"],
      correctAnswerIndex: 0,
      explanation: "మహాబలిపురం పల్లవులచే స్థాపించబడింది.",
    ),

    Question(
      questionText: "క్రింది వారిలో ఎవరు సున్నా సిద్ధాంతాన్ని ప్రతిపాదించారు?",
      options: ["చరక్", "చాణక్య", "ఆర్యభట్ట", "వరాహమిహిర"],
      correctAnswerIndex: 2,
      explanation: "సున్నా సిద్ధాంతం ఆర్యభట్టచే ప్రతిపాదించబడింది.",
    ),

    Question(
      questionText: "సంగం యుగంలో రోమన్ వాణిజ్యం యొక్క కేంద్రాన్ని పేర్కొనండి.",
      options: ["మధురై", "అరికమేడు", "పూంపుహార్", "ముసిరి"],
      correctAnswerIndex: 3,
      explanation: "రోమన్ TR యొక్క కేంద్రంసంగం యుగంలో అదే ముసిరి.",
    ),

    Question(
      questionText: "క్రింది రాజవంశంలో మౌర్యుల తర్వాత ఎవరు వచ్చారు?",
      options: ["శాతవాహనులు", "సుంగలు", "యవనాలు", "పాండ్య"],
      correctAnswerIndex: 1,
      explanation: "సుంగాస్ రాజవంశం మౌర్యుల తర్వాత వచ్చింది.",
    ),

    Question(
      questionText: "సింధు నాగరికత యొక్క ఓడరేవు పట్టణం ఏది?",
      options: ["కాలీబంగన్", "లోథాల్", "రోపర్", "మొహెంజొదారో"],
      correctAnswerIndex: 1,
      explanation: "లోథల్ సింధు లోయ నాగరికత యొక్క ఓడరేవు పట్టణం.",
    ),

    Question(
      questionText: "గుప్తుల కాలంలో కింది నాణేలలో ఏది వెండితో విడుదల చేయబడింది?",
      options: ["కాకిని", "నిష్కా", "రూప్యకా", "దినార్"],
      correctAnswerIndex: 2,
      explanation: "గుప్తుల కాలంలో రూప్యక నాణేలు వెండిలో విడుదల చేయబడ్డాయి.",
    ),

    Question(
      questionText: "కుషాణ పాలకులలో ఎవరు బౌద్ధమతాన్ని ఆదరించారు?",
      options: ["అశోక", "విక్రమాదిత్య", "కనిష్క", "కౌటిల్య"],
      correctAnswerIndex: 2,
      explanation: "కనిష్కుడు, కుషాణ పాలకుడు, బౌద్ధమతాన్ని పోషించాడు.",
    ),

    Question(
      questionText: "అతని విజయాల కారణంగా భారతదేశం యొక్క నెపోలియన్ అని ఎవరిని పిలుస్తారు?",
      options: ["స్కందగుప్తుడు", "చంద్రగుప్తుడు", "బ్రహ్మగుప్తుడు", "సముద్రగుప్తుడు"],
      correctAnswerIndex: 3,
      explanation: "సముద్రగుప్తుడు అతని విజయాల కారణంగా భారతదేశం యొక్క నెపోలియన్ అని పిలువబడ్డాడు.",
    ),

    Question(
      questionText: "ఎపిగ్రఫీ అంటే",
      options: ["నాణేల అధ్యయనం", "శాసనాల అధ్యయనం", "పురాణాల అధ్యయనం", "భౌగోళిక అధ్యయనం"],
      correctAnswerIndex: 1,
      explanation: "ఎపిగ్రఫీ అంటే శాసనాల అధ్యయనం.",
    ),

    Question(
      questionText: "అజంతా మరియు ఎల్లోరా గుహలు వీరికి చెందినవి:",
      options: ["జైనులు", "బౌద్ధులు", "హిందువులు", "సిక్కులు"],
      correctAnswerIndex: 1,
      explanation: "అజంతా మరియు ఎల్లోరా గుహలు బౌద్ధులకు చెందినవి.",
    ),

    Question(
      questionText: "గ్రీకులు భారతదేశం నుండి వెళ్ళగొట్టబడ్డారు",
      options: ["చంద్రగుప్త మౌర్య", "చంద్రగుప్త విక్రమాదిత్య", "అశోక", "బిందుసార"],
      correctAnswerIndex: 0,
      explanation: "గ్రీకులను చంద్రగుప్త మౌర్యుడు భారతదేశం నుండి వెళ్ళగొట్టాడు.",
    ),

    Question(
      questionText: "సంగం యుగం చరిత్రతో ముడిపడి ఉంది",
      options: ["బెనారస్", "అలహాబాద్", "తమిళనాడు", "ఖజురహో"],
      correctAnswerIndex: 2,
      explanation: "సంగం యుగం తమిళనాడు చరిత్రతో ముడిపడి ఉంది.",
    ),
    Question(
      questionText: "లోథాల్ అనేది కింది నాగరికతలో డాక్‌యార్డ్‌లు కనుగొనబడిన ప్రదేశం?",
      options: ["సింధు లోయ", "మెసొపొటేమియన్", "ఈజిప్షియన్", "పర్షియన్"],
      correctAnswerIndex: 0,
      explanation: "లోథాల్ అనేది సింధు లోయ నాగరికత యొక్క డాక్‌యార్డ్‌లు కనుగొనబడిన ప్రదేశం.",
    ),

    Question(
      questionText: "భారతదేశంలో రూపొందించిన చివరి బౌద్ధ గ్రంథం కింది వాటిలో ఏది?",
      options: ["దివ్య వందన", "దోహకోశ", "వజ్రచేదికా", "వంశతాపకాసిని"],
      correctAnswerIndex: 3,
      explanation: "భారతదేశంలో నిర్మించిన చివరి బౌద్ధ గ్రంథం వంశతపకాశిని.",
    ),

    Question(
      questionText: "క్రింది మగధన్ రాజవంశాలను కాలక్రమానుసారం అమర్చండి: I. నందాస్ II. శిశునాగస్ III. మౌర్యులు IV. హర్యంకాస్",
      options: ["IV, II, III మరియు I", "II, I, IV మరియు III", "IV, II, I మరియు III", "III, I, IV మరియు II"],
      correctAnswerIndex: 2,
      explanation: "మగధన్ రాజవంశాలకు కాలక్రమానుసారం IV, II, I మరియు III.",
    ),

    Question(
      questionText: "పల్లవుల రాజధాని పేరు",
      options: ["కంచి", "వాతాపి", "త్రిచనపల్లి", "మహాబలిపురం"],
      correctAnswerIndex: 0,
      explanation: "పల్లవుల రాజధాని కంచి.",
    ),

    Question(
      questionText: "పిటకాలు బౌద్ధ గ్రంథాలు ఏ భాషలో కూర్చబడ్డాయి?",
      options: ["సంస్కృతం", "అర్ధమాది", "పాలి", "ప్రాకృతం"],
      correctAnswerIndex: 2,
      explanation: "బౌద్ధ గ్రంథాలు పిటకాలు పాళీలో కూర్చబడ్డాయి.",
    ),

    Question(
      questionText: "ఉత్తరమేరూరు శాసనం పరిపాలనపై సమాచారాన్ని అందిస్తుంది",
      options: ["చాళుక్యులు", "శాతవాహనులు", "పల్లవులు", "చోళులు"],
      correctAnswerIndex: 3,
      explanation: "ఉత్తరమేరూరు శాసనం చోళుల పరిపాలనకు సంబంధించిన సమాచారాన్ని అందిస్తుంది.",
    ),

    Question(
      questionText: "ఏ పాలకుడు తన తండ్రి బింబిసారను సింహాసనం అధిష్టించడానికి హత్య చేసాడు?",
      options: ["అశోక", "అజాతశత్రు", "కనిష్క", "సిముఖ"],
      correctAnswerIndex: 1,
      explanation: "అజాతశత్రు సింహాసనాన్ని అధిష్టించడానికి తన తండ్రి బింబిసారుడిని చంపాడు.",
    ),

    Question(
      questionText: "ఎల్లోరాలోని గుహలు మరియు రాతితో చేసిన దేవాలయాలు",
      options: ["హిందూ మరియు బౌద్ధ", "బౌద్ధ మరియు జైన్", "హిందూ మరియు జైన్", "హిందూ, బౌద్ధ మరియు జైన్"],
      correctAnswerIndex: 3,
      explanation: "ఎల్లోరాలోని గుహలు మరియు రాతితో చేసిన దేవాలయాలు హిందూ, బౌద్ధ మరియు జైన మతాలు.",
    ),

    Question(
      questionText: "సారనాథ్ స్తంభంపై చెక్కబడిన జంతువులలో కింది వాటిలో ఏది కాదు?",
      options: ["హంప్డ్ బుల్", "డీర్", "ఎలిఫెంట్", "హార్స్"],
      correctAnswerIndex: 1,
      explanation: "సారనాథ్ స్తంభంపై చెక్కబడిన జంతువులలో జింక ఒకటి కాదు.",
    ),

    Question(
      questionText: "జైన సాహిత్యం అంటారు",
      options: ["త్రిపీటకాలు", "ఇతిహాసాలు", "ఆర్యసూత్రాలు", "అంగాలు"],
      correctAnswerIndex: 3,
      explanation: "జెఐనా సాహిత్యాన్ని అంగాస్ అంటారు.",
    ),

    Question(
      questionText: "పురాతన భారతీయ నాగరికతకు పేరు పెట్టండి.",
      options: ["సింధు లోయ నాగరికత", "మెసొపొటేమియా నాగరికత", "ఈజిప్టు నాగరికత", "ఇవేవీ కావు"],
      correctAnswerIndex: 0,
      explanation: "అతి పురాతన భారతీయ నాగరికత సింధు లోయ నాగరికత.",
    ),
    Question(
      questionText: "గౌతమ బుద్ధుని పుట్టిన ప్రదేశం (నేటివిటీ) వీరిచే గుర్తించబడింది:",
      options: ["ఒక మఠం", "అశోక్ మౌర్య యొక్క 'రమ్మిందర్ స్తంభం'", "ఒక విగ్రహం", "ఒక పీపల్ చెట్టు"],
      correctAnswerIndex: 1,
      explanation: "గౌతమ బుద్ధుని జన్మస్థలం (నేటివిటీ) అశోక్ మౌర్య యొక్క 'రమ్మిందర్ స్తంభం'చే గుర్తించబడింది.",
    ),

    Question(
      questionText: "ప్రారంభ వేద యుగం యొక్క నాగరికత గురించి కింది వేదాలలో ఏది సమాచారాన్ని అందిస్తుంది?",
      options: ["ఋగ్వేదం", "యజుర్వేదం", "అథర్వవేదం", "సామవేదం"],
      correctAnswerIndex: 0,
      explanation: "ఋగ్వేదం ప్రారంభ వేద యుగం యొక్క నాగరికత గురించి సమాచారాన్ని అందిస్తుంది.",
    ),

    Question(
      questionText: "భారతీయ చరిత్రలో కింది ఏ కాలంలో క్షత్రియుడికి ప్రత్యేక గుర్తింపు ఉంది?",
      options: ["బుద్ధుని యుగం", "మౌర్యుల కాలం", "మౌర్య అనంతర యుగం", "గుప్త కాలం"],
      correctAnswerIndex: 0,
      explanation: "బుద్ధుని యుగంలో క్షత్రియుడికి ప్రత్యేక గుర్తింపు ఉంది.",
    ),

    Question(
      questionText: "లిచ్ఛవి దౌహిత్ర అని ఎవరిని పిలుస్తారు?",
      options: ["చంద్రగుప్త I", "స్కందగుప్తుడు", "కుమారగుప్తుడు", "సముద్రగుప్తుడు"],
      correctAnswerIndex: 0,
      explanation: "చంద్రగుప్త నన్ను లిచ్ఛవి దౌహిత్ర అని పిలిచేవారు.",
    ),

    Question(
      questionText: "ఎల్లోరాలో కైలాసనాథ ఆలయాన్ని ఎవరు నిర్మించారు?",
      options: ["రాజేంద్ర I", "మహేంద్ర వర్మన్ I", "కృష్ణ I", "గోవింద I"],
      correctAnswerIndex: 2,
      explanation: "కృష్ణా నేను ఎల్లోరాలో కైలాసనాథ ఆలయాన్ని నిర్మించాను.",
    ),

    Question(
      questionText: "మహాబలిపురం యొక్క రథాలు, వారి పాలనలో నిర్మించబడ్డాయి",
      options: ["పాలు", "చోళులు", "రాష్ట్రకూటులు", "పల్లవులు"],
      correctAnswerIndex: 3,
      explanation: "మహాబలిపురం రథాలు పల్లవుల పాలనలో నిర్మించబడ్డాయి.",
    ),

    Question(
      questionText: "హర్షవర్ధనను ఓడించాడు",
      options: ["ప్రభాకరవర్ధన", "పులకేసిన్ II", "నరసింహస్వర్ణ పల్లవ", "శశాంక"],
      correctAnswerIndex: 1,
      explanation: "హర్షవర్ధనను పులకేశిని II ఓడించాడు.",
    ),

    Question(
      questionText: "క్రింది వారిలో కనిష్కుని సమకాలీనులు ఎవరు?",
      options: ["కంబన్, బాణభట్ట, అశ్వఘోష", "నాగార్జున, అశ్వఘోష, వసుమిత్ర", "అశ్వఘోష, కాళిదాసు, బాణభట్ట", "కాళిదాసు, కంభన్, వసుమిత్ర"],
      correctAnswerIndex: 1,
      explanation: "నాగార్జున, అశ్వఘోష మరియు వసుమిత్ర కనిష్కుని సమకాలీనులు.",
    ),

    Question(
      questionText: "చాలా చోళ దేవాలయాలు అంకితం చేయబడ్డాయి",
      options: ["గణేష్", "శివ", "దుర్గ", "విష్ణు"],
      correctAnswerIndex: 1,
      explanation: "చాలా చోళ దేవాలయాలు శివునికి అంకితం చేయబడ్డాయి.",
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
    home: ancientHistory_6_te(),
  ));
}

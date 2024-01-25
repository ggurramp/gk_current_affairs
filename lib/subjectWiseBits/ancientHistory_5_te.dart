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

class ancientHistory_5_te extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_5_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_5_te> createState() => _ancientHistory_5_teState();
}

class _ancientHistory_5_teState extends State<ancientHistory_5_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "అశోకన్ శాసనాలలో కింది వాటిలో ఏది 'అసినీవా'గా పేర్కొనబడలేదు",
      options: ["అహంకారం మరియు కోపం", "అసూయ మరియు ప్రతీకారం", "దురాశ మరియు అభిరుచి", "క్రూరత్వం మరియు కోపం"],
      correctAnswerIndex: 2,
      explanation: "అశోకన్ శాసనాలలో దురాశ మరియు అభిరుచి 'అసినీవా'గా పేర్కొనబడలేదు.",
    ),

    Question(
      questionText: "`గృహ సమాధులు' దీని నుండి నివేదించబడ్డాయి",
      options: ["అల్మోరాలో ఉలేరి", "రాజస్థాన్‌లోని బలాతల్", "కాశ్మీర్‌లో గుఫ్రాల్", "ఘాలిగల్ - ఈశాన్యంలో"],
      correctAnswerIndex: 0,
      explanation: "అల్మోరాలోని ఉలేరి నుండి గృహ సమాధులు నివేదించబడ్డాయి.",
    ),

    Question(
      questionText: "దిల్వారాలోని ప్రసిద్ధ జైన దేవాలయాలను ఎవరు నిర్మించారు?",
      options: ["సోలంకిస్", "చౌహాన్స్", "పరమరస్", "చండేల్లాస్"],
      correctAnswerIndex: 0,
      explanation: "దిల్వారాలోని ప్రసిద్ధ జైన దేవాలయాలను సోలంకీలు నిర్మించారు.",
    ),

    Question(
      questionText: "చైనా నుండి బైజాంటైన్ సామ్రాజ్యంలోకి పట్టుపురుగులు ఎప్పుడు ప్రవేశపెట్టబడ్డాయి, ఇది భారతదేశం యొక్క ఇప్పటికే క్షీణిస్తున్న విదేశీ వాణిజ్యాన్ని ప్రతికూలంగా ప్రభావితం చేస్తుంది?",
      options: ["615 AD", "351 AD", "451 AD", "551 AD"],
      correctAnswerIndex: 3,
      explanation: "551 ADలో చైనా నుండి బైజాంటైన్ సామ్రాజ్యంలోకి పట్టుపురుగులు ప్రవేశపెట్టబడ్డాయి, ఇది భారతదేశం యొక్క ఇప్పటికే క్షీణిస్తున్న విదేశీ వాణిజ్యాన్ని ప్రతికూలంగా ప్రభావితం చేస్తుంది.",
    ),

    Question(
      questionText: "క్రింది జతలలో ఏది సరిగ్గా సరిపోలలేదు?",
      options: ["అరియన్-ఇండికా", "క్లాడియస్ ఏలియానస్-నేచురాలిస్ హిస్టోరికా", "డియోడోరస్ సిసిలస్-బిబ్లియోథెకా హిస్టోరికా", "స్ట్రాబో జియోగ్రఫీ"],
      correctAnswerIndex: 1,
      explanation: "క్లాడియస్ ఏలియానస్-నేచురాలిస్ హిస్టోరికా సరిగ్గా సరిపోలిన జంట కాదు.",
    ),

    Question(
      questionText: "భారతదేశం' (అంటే సింధు లోయ) పర్షియన్ సామ్రాజ్యం యొక్క 20వ మరియు అత్యంత సంపన్నమైన సాత్రాపీ (ప్రావిన్స్) అని మాకు ఎవరు చెప్పారు?",
      options: ["ఫా హియెన్", "యిజింగ్", "హెరోడోటస్", "మెగాస్తనీస్"],
      correctAnswerIndex: 2,
      explanation: "భారతదేశం' (అంటే సింధు లోయ) పర్షియన్ సామ్రాజ్యం యొక్క 20వ మరియు అత్యంత సంపన్నమైన సాత్రాపీ (ప్రావిన్స్) అని హెరోడోటస్ మనకు చెప్పాడు.",
    ),

    Question(
      questionText: "ఈ క్రింది వాటిలో ఏది/భారతదేశం యొక్క ప్రసిద్ధ పురాతన భౌగోళిక సారాంశాలు?",
      options: ["భారతవర్ష", "సప్తద్వీప", "A మరియు B రెండూ", "జంబుద్వీప"],
      correctAnswerIndex: 2,
      explanation: "భారతవర్ష మరియు సప్తద్వీప భారతదేశపు ప్రాచీన భౌగోళిక సారాంశాలు.",
    ),

    Question(
      questionText: "క్రింది బ్రాహ్మణ గ్రంథాలలో ఏది ఋగ్వేదానికి చెందినది?",
      options: ["ఐతరేయ బ్రాహ్మణం", "గోపథ బ్రాహ్మణం", "శతపథ బ్రాహ్మణం", "తైత్తిరీయ బ్రాహ్మణం"],
      correctAnswerIndex: 0,
      explanation: "ఐతరేయ బ్రాహ్మణం ఋగ్వేదానికి చెందినది.",
    ),

    Question(
      questionText: "'ఇండికా' రచయిత ఎవరు?",
      options: ["ప్లుటార్క్", "జస్టిన్", "హెరోడోటస్", "మెగాస్తనీస్"],
      correctAnswerIndex: 3,
      explanation: "మెగస్తనీస్ 'ఇండికా' రచయిత.",
    ),

    Question(
      questionText: "శిలాశాసనాలలో 'పియదస్సి' మరియు 'దేవనాంప్రియ' అని రాజులలో ఎవరు పేర్కొనబడ్డారు?",
      options: ["చంద్రగుప్త మౌర్య", "అశోక", "సముద్రగుప్త", "హర్షవర్ధన"],
      correctAnswerIndex: 1,
      explanation: "శాసనాల్లో అశోకుడు 'పియదస్సి' మరియు 'దేవనాంప్రియ'గా పేర్కొనబడ్డాడు.",
    ),

    Question(
      questionText: "సంస్కారాల మొత్తం సంఖ్య ఎంత?",
      options: ["10", "12", "15", "16"],
      correctAnswerIndex: 3,
      explanation: "సంస్కారాల మొత్తం సంఖ్య 16.",
    ),

    Question(
      questionText: "గుప్త సామ్రాజ్యం కింది వాటిలో దేనికి పన్ను రహిత వ్యవసాయ భూమిని మంజూరు చేసింది?",
      options: ["మిలిటరీ అధికారులు", "సివిల్ అధికారులు", "బ్రాహ్మణులు", "కోర్టు పండితులు"],
      correctAnswerIndex: 2,
      explanation: "గుప్త సామ్రాజ్యం బ్రాహ్మణులకు పన్ను రహిత వ్యవసాయ భూమిని మంజూరు చేసింది.",
    ),

    Question(
      questionText: "క్రింది బౌద్ధ సాహిత్యంలో ఏది నీతి మరియు సిద్ధాంత విషయాలపై బుద్ధుని ప్రసంగాలను కలిగి ఉంది?",
      options: ["వినాయక పిటక", "జాతక కథలు", "అభిదమ్మ పిటక", "సుత్త పిటక"],
      correctAnswerIndex: 3,
      explanation: "సుత్త పిటకాలో నీతి మరియు సిద్ధాంతాలకు సంబంధించిన బుద్ధుని ఉపన్యాసాలు ఉన్నాయి.",
    ),

    Question(
      questionText: "క్రింది వారిలో వేదాంత తత్వశాస్త్రంతో సంబంధం లేనివారు ఎవరు?",
      options: ["శంకరాచార్య", "అభినవగుప్తుడు", "రామానుజ", "మాధవ"],
      correctAnswerIndex: 1,
      explanation: "అభినవగుప్తుడు వేదాంత తత్వశాస్త్రానికి సంబంధించినవాడు కాదు.",
    ),

    Question(
      questionText: "సమర్థవంతమైన గ్రామీణ పరిపాలనకు ప్రసిద్ధి చెందిన రాజవంశం",
      options: ["చోళులు", "రాష్ట్రకూటులు", "చాళుక్యులు", "పల్లవులు"],
      correctAnswerIndex: 0,
      explanation: "చోళులు సమర్థవంతమైన గ్రామీణ పరిపాలనకు ప్రసిద్ధి చెందిన రాజవంశం.",
    ),
    Question(
      questionText: "క్రింది వాటిలో ఏది సింధు లోయ నాగరికత ప్రాంతం కాదు?",
      options: ["కాలీబంగన్", "రోపర్", "పట్లీపుత్ర", "లోథాల్"],
      correctAnswerIndex: 2,
      explanation: "పట్లీపుత్ర సింధు లోయ నాగరికత ప్రాంతం కాదు.",
    ),

    Question(
      questionText: "ఏ వేద సంస్కృత సాహిత్యం ప్రారంభమైంది?",
      options: ["యజుర్వేదం", "అథర్వేదం", "సామవేదం", "ఋగ్వేదం"],
      correctAnswerIndex: 3,
      explanation: "సంస్కృత సాహిత్యం ఋగ్వేదం నుండి ప్రారంభమైంది.",
    ),

    Question(
      questionText: "‘పంచతంత్రం’మొదట వ్రాసినది",
      options: ["కాళిదాస్", "విష్ణు శర్మ", "తులసీదాస్", "రైదాస్"],
      correctAnswerIndex: 1,
      explanation: "‘పంచతంత్ర’ మొదట విష్ణుశర్మచే వ్రాయబడింది.",
    ),

    Question(
      questionText: "క్రిందివాటిలో ఏది 'చర్ధామ్'లో చేర్చబడలేదు?",
      options: ["పూరి", "ద్వారక", "మానస సరోవరం", "రామేశ్వరం"],
      correctAnswerIndex: 2,
      explanation: "మానస సరోవరం 'చర్ధామ్'లో చేర్చబడలేదు.",
    ),

    Question(
      questionText: "ఎన్ని సంవత్సరాల తర్వాత 'మహాకుంభం' నిర్వహిస్తారు?",
      options: ["12 సంవత్సరాలు", "10 సంవత్సరాలు", "9 సంవత్సరాలు", "6 సంవత్సరాలు"],
      correctAnswerIndex: 0,
      explanation: "'మహాకుంభం' 12 సంవత్సరాల తర్వాత జరుగుతుంది.",
    ),

    Question(
      questionText: "క్రింది సంగీత వాయిద్యాలలో ఏది ఇండో-ఇస్లామిక్ మూలానికి చెందినది కాదు?",
      options: ["సితార్", "తబలా", "సారంగి", "సెహనై"],
      correctAnswerIndex: 3,
      explanation: "సెహనాయ్ ఇండో-ఇస్లామిక్ మూలానికి చెందినది కాదు.",
    ),

    Question(
      questionText: "షుంగాస్ పూర్వీకులు దీని నుండి ఉద్భవించారు:",
      options: ["మగధ", "ప్రయాగ్", "ఉజ్జయిని", "సౌరాష్ట్ర"],
      correctAnswerIndex: 2,
      explanation: "శుంగస్ పూర్వీకులు ఉజ్జయిని నుండి ఉద్భవించారు.",
    ),

    Question(
      questionText: "ప్రాచీన కాలంలో, ఏ వర్ణాన్ని సార్థవాహ అని కూడా పిలిచేవారు?",
      options: ["బ్రాహ్మణ", "క్షత్రియ", "వైశ్య", "శూద్ర"],
      correctAnswerIndex: 2,
      explanation: "ప్రాచీన కాలంలో వైశ్యుడిని సార్థవాహ అని కూడా పిలిచేవారు.",
    ),

    Question(
      questionText: "కాళికా పురాణం ఏ మతంతో ముడిపడి ఉంది?",
      options: ["వైష్ణవం", "శక్తిమతం", "బౌద్ధం", "జైనిజం"],
      correctAnswerIndex: 3,
      explanation: "కాళికా పురాణం జైనమతంతో ముడిపడి ఉంది.",
    ),

    Question(
      questionText: "వర్ధమాన్ మహావీర్ అని కూడా అంటారు",
      options: ["జినా", "గ్రేట్ టీచర్", "గ్రేట్ ప్రీచర్", "జైన్"],
      correctAnswerIndex: 0,
      explanation: "వర్ధమాన్ మహావీర్‌ని జినా అని కూడా అంటారు.",
    ),

    Question(
      questionText: "విరూపాక్ష దేవాలయాన్ని ఎవరు నిర్మించారు",
      options: ["చాళుక్యులు", "పల్లవులు", "వాకటకులు", "సత్వహనులు"],
      correctAnswerIndex: 0,
      explanation: "విరూపాక్ష దేవాలయాన్ని చాళుక్యులు నిర్మించారు.",
    ),

    Question(
      questionText: "బుద్ధుడు జ్ఞానోదయం పొందిన ప్రదేశాన్ని పేర్కొనండి",
      options: ["సారనాథ్", "బోధ గయ", "కపిలవస్తు", "రాజగృహ"],
      correctAnswerIndex: 1,
      explanation: "బుద్ధుడు బోధ్ గయలో జ్ఞానోదయం పొందాడు.",
    ),

    Question(
      questionText: "బ్రాహ్మణులు మరియు బౌద్ధ సన్యాసులకు పన్ను రహిత గ్రామాలను మంజూరు చేసే విధానాన్ని ఏ రాజవంశం పాలకులు ప్రారంభించారు?",
      options: ["శాతవాహనులు", "మౌర్యులు", "గుప్తులు", "చోళులు"],
      correctAnswerIndex: 0,
      explanation: "శాతవాహనుల రాజవంశం యొక్క పాలకులు బ్రాహ్మణులు మరియు బౌద్ధ సన్యాసులకు పన్ను రహిత గ్రామాలను మంజూరు చేసే పద్ధతిని ప్రారంభించారు.",
    ),

    Question(
      questionText: "వైశాఖ పూర్ణిమ ఈ రోజున ఉన్నందున దానికి గొప్ప ప్రాముఖ్యత ఉంది",
      options: ["బుద్ధుడు జన్మించాడు", "బుద్ధుడు జ్ఞానోదయం పొందాడు", "బుద్ధుడు మరణించాడు", "పైన ఉన్నవన్నీ"],
      correctAnswerIndex: 3,
      explanation: "వైశాఖ పూర్ణిమకు గొప్ప ప్రాముఖ్యత ఉంది, ఎందుకంటే ఈ రోజునే బుద్ధుడు జన్మించాడు, జ్ఞానోదయం పొందాడు మరియు మరణించాడు.",
    ),

    Question(
      questionText: "టిబెట్‌లో బౌద్ధమతాన్ని వ్యాప్తి చేసిన బౌద్ధ సన్యాసి",
      options: ["నాగార్జున", "ఆనంద", "అసంగ", "పద్మసంభవ"],
      correctAnswerIndex: 3,
      explanation: "టిబెట్‌లో బౌద్ధమతాన్ని వ్యాప్తి చేసిన బౌద్ధ సన్యాసి పద్మసంభవ.",
    ),

    Question(
      questionText: "భారత రాష్ట్ర చిహ్నంలోని 'సత్యమేవ జయతే' పదాలు నుండి తీసుకోబడ్డాయి",
      options: ["ఉపనిషత్తులు", "సామవేదం", "ఋగ్వేదం", "రామాయణం"],
      correctAnswerIndex: 0,
      explanation: "భారత రాష్ట్ర చిహ్నంలోని 'సత్యమేవ జయతే' పదాలు ఉపనిషత్తుల నుండి తీసుకోబడ్డాయి.",
    ),
    Question(
      questionText: "ఉపనిషత్తు' అనే పదం అక్షరాలా సూచిస్తుంది",
      options: ["జ్ఞానం", "వివేకం", "దగ్గర కూర్చోవడం", "పఠనం"],
      correctAnswerIndex: 2,
      explanation: "ఉపనిషత్తు' అనే పదం అక్షరాలా 'సమీపంలో కూర్చోవడం' అని సూచిస్తుంది.",
    ),

    Question(
      questionText: "మాతృ దేవత ఆరాధనతో ముడిపడి ఉంది",
      options: ["ఆర్యన్ నాగరికత", "మధ్యధరా నాగరికత", "సింధు లోయ నాగరికత", "తరువాత వేద నాగరికత"],
      correctAnswerIndex: 2,
      explanation: "మాతృ దేవత ఆరాధన సింధు లోయ నాగరికతతో ముడిపడి ఉంది.",
    ),

    Question(
      questionText: "ఈ క్రింది వాటిలో బౌద్ధమతం యొక్క విశ్వాసాలు ఏవి? a. ప్రపంచం దుఃఖంతో నిండి ఉంది. b. ప్రజలు కోరికల కారణంగా బాధపడతారు. c. కోరికలను జయిస్తే, మోక్షం లభిస్తుంది. d. దేవుడు మరియు ఆత్మ యొక్క ఉనికి తప్పక గుర్తించాలి.",
      options: ["a, b, c మరియు d", "b and c", "a, b and c", "b, c మరియు d"],
      correctAnswerIndex: 2,
      explanation: "బౌద్ధమతం యొక్క విశ్వాసాలలో ఇవి ఉన్నాయి: a. ప్రపంచం దుఃఖాలతో నిండి ఉంది. b. ప్రజలు కోరికల కారణంగా బాధపడతారు. c. కోరికలను జయిస్తే, మోక్షం లభిస్తుంది.",
    ),

    Question(
      questionText: "రోమన్ సామ్రాజ్యంతో భారతదేశ వాణిజ్యం రోమ్‌పై దాడి చేయడంతో ముగిసింది",
      options: ["అరబ్బులు", "హంగేరియన్లు", "హునాస్", "టర్క్స్"],
      correctAnswerIndex: 2,
      explanation: "రోమన్ సామ్రాజ్యంతో భారతదేశ వాణిజ్యం రోమ్‌పై హునాల దాడితో ముగిసింది.",
    ),

    Question(
      questionText: "టి యొక్క అత్యంత విశిష్ట పాలకుడుఅతను చాళుక్యుల రాజవంశం",
      options: ["జయసింహ II", "విక్రమాదిత్య VI", "సోమేశ్వర II", "పులకేశిన్ II"],
      correctAnswerIndex: 3,
      explanation: "చాళుక్యుల రాజవంశం యొక్క అత్యంత విశిష్టమైన పాలకుడు పులకేశిన్ II.",
    ),

    Question(
      questionText: "పశ్చిమ భారతదేశంలో చాళుక్యుల తర్వాత ఏ రాజవంశం వచ్చింది?",
      options: ["చోళులు", "కాకతీయులు", "పల్లవులు", "రాష్ట్రకూటులు"],
      correctAnswerIndex: 3,
      explanation: "పశ్చిమ భారతదేశంలోని చాళుక్యుల తర్వాత రాష్ట్రకూటులు విజయం సాధించారు.",
    ),

    Question(
      questionText: "మహావీరుని తల్లి ఎవరు?",
      options: ["యశోద", "త్రిషల", "జమేలి", "మహామాయ"],
      correctAnswerIndex: 1,
      explanation: "మహావీరుని తల్లి త్రిశాల.",
    ),

    Question(
      questionText: "సింధు లోయ నాగరికత యొక్క ముఖ్యమైన లక్షణం",
      options: ["ప్రకృతి శక్తుల ఆరాధన", "వ్యవస్థీకృత నగర జీవితం", "పశుపోషణ", "కుల సమాజం"],
      correctAnswerIndex: 1,
      explanation: "సింధు లోయ నాగరికత యొక్క ముఖ్యమైన లక్షణం నగర జీవితం వ్యవస్థీకృతమైంది.",
    ),

    Question(
      questionText: "మను స్మృతి వ్యవహరించే విషయానికి సంబంధించినది",
      options: ["ఆర్థికశాస్త్రం", "రాజకీయాలు", "చట్టం", "కళ"],
      correctAnswerIndex: 2,
      explanation: "మను స్మృతి చట్టానికి సంబంధించిన అంశంతో వ్యవహరిస్తుంది.",
    ),

    Question(
      questionText: "సంఖ్య వ్యవస్థ 'జీరో'ని కనిపెట్టింది",
      options: ["రామానుజం", "ఆర్యభట్ట", "పతంజలి", "ఒక తెలియని వ్యక్తి"],
      correctAnswerIndex: 1,
      explanation: "సంఖ్య వ్యవస్థ 'జీరో'ను ఆర్యభట్ట కనుగొన్నారు.",
    ),
    Question(
      questionText: "క్రిందివాటిలో పురాతన రాజవంశం ఏది?",
      options: ["మౌర్య", "గుప్తా", "కుషన్", "కణ్వ"],
      correctAnswerIndex: 0,
      explanation: "ఇచ్చిన ఎంపికలలో మౌర్య రాజవంశం పురాతనమైనదిగా పరిగణించబడుతుంది.",
    ),

    Question(
      questionText: "6వ శతాబ్దపు BC ఒక యుగం",
      options: ["రీజనింగ్", "మేధో మేల్కొలుపు", "రాజకీయ అశాంతి", "మతపరమైన పులియబెట్టడం"],
      correctAnswerIndex: 3,
      explanation: "క్రీ.పూ. 6వ శతాబ్దం మతపరమైన పులియబెట్టిన యుగం.",
    ),

    Question(
      questionText: "లోథాల్, సింధు లోయ నాగరికత యొక్క డాక్‌యార్డ్ సైట్, ఇక్కడ ఉంది",
      options: ["గుజరాత్", "పంజాబ్", "పాకిస్తాన్", "హర్యానా"],
      correctAnswerIndex: 0,
      explanation: "లోథాల్, సింధు నాగరికత యొక్క డాక్‌యార్డ్ ప్రదేశం, గుజరాత్‌లో ఉంది.",
    ),

    Question(
      questionText: "సంస్కృత భాష యొక్క మొదటి వ్యాకరణవేత్త",
      options: ["కల్హణ", "మైత్రేయి", "కాళిదాసు", "పాణిని"],
      correctAnswerIndex: 3,
      explanation: "సంస్కృత భాష యొక్క మొదటి వ్యాకరణవేత్త పాణిని.",
    ),

    Question(
      questionText: "A.D. 78 నుండి ప్రారంభమైన శక యుగం, స్థాపించబడింది",
      options: ["కనిష్క", "అశోక", "చంద్రగుప్త", "విక్రమాదిత్య"],
      correctAnswerIndex: 0,
      explanation: "A.D. 78 నుండి ప్రారంభమయ్యే శక యుగం కనిష్కచే స్థాపించబడింది.",
    ),

    Question(
      questionText: "చంద్రగుప్త మౌర్యుని ప్రముఖ గురువు చాణక్యుడు క్రింది ఏ విద్యా కేంద్రాలతో సంబంధం కలిగి ఉన్నాడు?",
      options: ["తక్షశిల", "నలంద", "విక్రమశిల", "వైశాలి"],
      correctAnswerIndex: 0,
      explanation: "చంద్రగుప్త మౌర్యుని ప్రముఖ గురువు చాణక్యుడు తక్షశిలతో సంబంధం కలిగి ఉన్నాడు.",
    ),

    Question(
      questionText: "అన్ని బాధలకు కోరికే కారణం అని ప్రబోధించిన మతం",
      options: ["బౌద్ధం", "జైనిజం", "సిక్కు మతం", "హిందూ మతం"],
      correctAnswerIndex: 0,
      explanation: "అన్ని బాధలకు కోరికలే కారణం' అని బోధించిన మతం బౌద్ధం.",
    ),

    Question(
      questionText: "ఈ క్రింది వాటిలో రాష్ట్రకూటుల ప్రారంభ రాజధాని ఏది?",
      options: ["సోపం", "ఎల్లోరా", "వాతాపి", "అజంతా"],
      correctAnswerIndex: 1,
      explanation: "రాష్ట్రకూటుల ప్రారంభ రాజధాని ఎల్లోరా.",
    ),

    Question(
      questionText: "చాలా చోళ దేవాలయాలు అంకితం చేయబడ్డాయి",
      options: ["విష్ణు", "శివ", "బ్రహ్మ", "దుర్గ"],
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
    home: ancientHistory_5_te(),
  ));
}

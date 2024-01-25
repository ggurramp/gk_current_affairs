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

class ancientHistory_2_te extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_2_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_2_te> createState() => _ancientHistory_2_teState();
}

class _ancientHistory_2_teState extends State<ancientHistory_2_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

  Question(
  questionText: "అలహాబాద్ ప్రశస్తి ఎవరు రచించారు?",
  options: ["హరిసేన", "వసుమిత్ర", "అశ్వఘోష", "నాగార్జున"],
  correctAnswerIndex: 0,
  explanation: "హరిసేన, హరిషేన లేదా హిరిసేన అని కూడా పిలుస్తారు, అతను 4వ శతాబ్దపు సంస్కృత కవి, పానజీవిస్ట్ మరియు ప్రభుత్వ మంత్రి. అతను గుప్త చక్రవర్తి, సముద్రగుప్తుని ఆస్థానంలో ముఖ్యమైన వ్యక్తి. అతని అత్యంత ప్రసిద్ధ పద్యం, c. 345 C.E. , సముద్రగుప్తుని ధైర్యసాహసాలను వివరిస్తుంది మరియు అలహాబాద్ స్తంభంపై చెక్కబడింది.",
  ),
  Question(
  questionText: "ఆర్యభట్ట మరియు వరాహమిహిర (వరుసగా శాస్త్రవేత్త మరియు గణిత శాస్త్రవేత్త) భారతీయ చరిత్రలో ఏ కాలానికి చెందినవారు?",
  options: ["పాల కాలం", "ఢిల్లీ సుల్తానేట్", "మౌర్య కాలం", "గుప్త కాలం"],
  correctAnswerIndex: 3,
  explanation: "ఆర్యభట్టీ మరియు సూర్య సిద్ధాంతం వ్రాయబడినవి ఆర్యభట్ట. అతను గుప్తుల కాలానికి చెందినవాడు. దశాంశ వ్యవస్థ మరియు సున్నా యొక్క ఆవిష్కరణతో ఘనత పొందాడు. భూమి స్థిరంగా లేదని, అది సూర్యుని చుట్టూ తిరుగుతుందని అతను మొదటిసారి చెప్పాడు. ",
  ),
  Question(
  questionText: "కిందివారిలో ఎవరు 'పురుషులందరూ నా బిడ్డలు' అని అన్నారు మరియు నేను ఆ లోకంలో మరియు తరువాతి లోకంలో ఆనందాన్ని కోరుకుంటున్నట్లే, నేను పురుషులందరినీ కోరుకుంటున్నాను?",
  options: ["చంద్రగుప్త", "అశోక", "అజాతశత్రు", "బిందుసార"],
  correctAnswerIndex: 1,
  explanation: "అశోకా",
  ),
  Question(
  questionText: "కరెన్సీ నోట్లలో సింహ మూలధనం కనుగొనబడింది",
  options: ["ఢిల్లీ", "సారనాథ్", "బోధ్ గయా", "సాంచి"],
  correctAnswerIndex: 1,
  explanation: "సారనాథ్",
  ),
  Question(
  questionText: "కరెన్సీ నోట్ల లయన్ క్యాపిటల్ కనుగొనబడింది",
  options: ["బోధ్ గయా", "సారనాథ్", "భరుత్", "సాంచి"],
  correctAnswerIndex: 1,
  explanation: "సారనాథ్",
  ),
  Question(
  questionText: "గుప్త పాలకులలో 'లిచ్ఛావిదౌహిత్ర' అని ఎవరు పిలుస్తారు?",
  options: ["కుమారగుప్తుడు", "స్కందగుప్తుడు", "సముద్రగుప్తుడు", "చంద్రగుప్తుడు II"],
  correctAnswerIndex: 2,
  explanation: "సముద్రగుప్తుడు గుప్త రాజవంశానికి చెందిన గొప్ప రాజు మరియు భారతదేశపు వంద యుద్ధాల వీరుడు మరియు నెపోలియన్ అని పిలిచాడు. అతను తన జీవితంలో ఏ యుద్ధంలోనూ ఓటమిని ఎదుర్కోలేదు. అతను గుప్త చక్రవర్తి చంద్రగుప్త I మరియు లిచ్ఛవి యువరాణి కుమారదేవి కుమారుడు. ",
  ),
  Question(
  questionText: "చంద్రగుప్త మౌర్య ఓడిపోయాడు",
  options: ["Seleucus", "Kalashoka", "Poros", "Alexander"],
  correctAnswerIndex: 0,
  explanation: "చంద్రగుప్తుడు నంద వంశాన్ని పడగొట్టాడు మరియు మగధ రాజ్య సింహాసనాన్ని అధిరోహించాడు, ప్రస్తుత బీహార్ రాష్ట్రం, భారతదేశంలో, సుమారు 325 BCE. అలెగ్జాండర్ ది గ్రేట్ 323లో మరణించాడు, చంద్రగుప్తుడు పంజాబ్ ప్రాంతాన్ని 322లో గెలుచుకున్నాడు. చివరికి , అప్పుడు చంద్రగుప్తుడు అలెగ్జాండర్ సైన్యం నుండి ఒక మాసిడోనియన్ జనరల్ అయిన సెల్యూకస్ I నేతృత్వంలోని దండయాత్రను ఓడించాడు మరియు సింధు నదికి పశ్చిమాన అదనపు భూభాగాన్ని పొందాడు.",
  ),
  Question(
  questionText: "కులనిజాన్ని ఎవరు పరిచయం చేస్తారు?",
  options: ["బల్లాల్ సేన్", "లక్ష్మణ్ సేన్", "సమంత సేన్", "హేమంత సేన్"],
  correctAnswerIndex: 0,
  explanation: "కులనిజం అనేది హిందూ కుల మరియు వివాహ నియమాలను బెంగాల్‌కు చెందిన రాజా బల్లాల సేన ద్వారా పరిచయం చేయబడింది. ఈ పేరు సంస్కృత పదం కులీన్ (కులిన) నుండి వచ్చింది. కులిన్ (ఉన్నత సామాజిక హోదా) అనేది కులిన అమ్మాయిని ఒక వ్యక్తితో వివాహం చేసుకోవడాన్ని సూచిస్తుంది. అదే తరగతి అలాగే ఉన్నత తరగతిలో ఒకరితో వివాహం. ఇది తప్పనిసరిగా తక్కువ ర్యాంక్ ఉన్న సమూహంతో వివాహం చేసుకోవడం ద్వారా కులిన స్త్రీ తన స్థాయిని తగ్గించకూడదని నొక్కి చెబుతుంది. పేర్కొన్న నిబంధనల ప్రకారం ఒకరి కులిన్ హోదా 36 సంవత్సరాల వరకు చెల్లుబాటులో ఉంటుంది. బల్లాల సేన.",
  ),
  Question(
  questionText: "ఫో-కువో-కింగ్ ఎవరిచే రచించబడింది?",
  options: ["హియున్ త్సాంగ్", "మెగాస్తనీస్", "ఇట్-సింగ్", "ఫా-హియెన్"],
  correctAnswerIndex: 3,
  explanation: "ఫా-హియన్/ఫ్యాక్సియన్ చైనా నుండి బౌద్ధ యాత్రికుడు, చంద్రగుప్త II సమయంలో భారతదేశానికి వచ్చి ఫో-కువో-కింగ్ అని వ్రాసాడు.",
  ),
  Question(
  questionText: "మెగస్తనీస్ ఎవరు?",
  options: ["ఒక గ్రీకు యాత్రికుడు", "చైనీస్ యాత్రికుడు", "సెల్యూకస్ రాయబారి", "చంద్రగుప్త మౌర్య ప్రధాన మంత్రి"],
  correctAnswerIndex: 2,
  explanation: "మెగాస్తనీస్ ఒక ప్రాచీన గ్రీకు చరిత్రకారుడు, దౌత్యవేత్త మరియు హెలెనిస్టిక్ కాలంలో భారతీయ జాతి శాస్త్రవేత్త మరియు అన్వేషకుడు. అతను చంద్రగుప్త మౌర్య ఆస్థానానికి సెల్యూకస్ I రాయబారి. భారత ఉపఖండం గురించి అతని పరిశీలనలు అతని ప్రసిద్ధ రచన 'ఇండికాలో నమోదు చేయబడ్డాయి. .'",
  ),
  Question(
  questionText: "తన అధికారిక ప్రకటనలలో 'పియాదాసి' పేరును ఉపయోగించిన మౌర్య పాలకుడు",
  options: ["చంద్రగుప్త మౌర్య", "బృహద్ద్రత", "బింబిసార", "అశోక"],
  correctAnswerIndex: 3,
  explanation: "అశోకా",
  ),
  Question(
  questionText: "Si- U - Ki రచించబడింది",
  options: ["మెగాస్తనీస్", "ఐ- త్సింగ్", "హుయెన్ - త్సాంగ్", "ఫా-హియెన్"],
  correctAnswerIndex: 2,
  explanation: "హూవాన్-త్సాంగ్ ఒక చైనా యాత్రికుడు, అతను 630 CEలో హర్షవర్ధనుడి కాలంలో భారతదేశానికి వచ్చాడు. అతను 14 సంవత్సరాలు భారతదేశంలో ఉన్నాడు. ఈ సమయంలో అతను ఐదు సంవత్సరాలు శైలభద్ర నుండి హిందూ మరియు బౌద్ధ మత గ్రంథాలను అభ్యసించాడు. అతను పేర్కొన్నాడు. హర్షవర్ధన ఉత్తర భారతదేశానికి గొప్ప రాజుగా మరియు పులోకేసిన్ II దక్షిణ భారతదేశానికి గొప్ప రాజుగా అతని పుస్తకం సి-యు-కి.",
  ),
  Question(
  questionText: "ది వికర్అమసిల-విహారా స్థాపించబడింది",
  options: ["సురపాల", "ధర్మపాల", "మహిపాల I", "దేవపాల"],
  correctAnswerIndex: 1,
  explanation: "ధర్మపాల",
  ),
  Question(
  questionText: "ప్రాచీన భారతదేశపు మొదటి చారిత్రక చక్రవర్తి",
  options: ["మహాపద్మానంద", "బింబిసార", "చంద్రగుప్త మౌర్య", "సముద్రగుప్త"],
  correctAnswerIndex: 2,
  explanation: "చంద్రగుప్త మౌర్య",
  ),
  Question(
  questionText: "అమిత్రఘాత అని ఎవరు పిలుస్తారు?",
  options: ["అశోక", "సముద్రగుప్త", "బిందుసార", "బింబిసార"],
  correctAnswerIndex: 2,
  explanation: "బిందుసారుడు భారతదేశపు రెండవ మౌర్య చక్రవర్తి. అతన్ని అమిట్రోచేట్స్ (గ్రీకులో) లేదా అమిత్రాఘట (సంస్కృతంలో) అని కూడా పిలుస్తారు, అంటే శత్రువులందరినీ సంహరించేవాడు.",
  ),
  Question(
  questionText: "గుప్త రాజవంశ స్థాపకుడు ఎవరు?",
  options: ["సముద్రగుప్తుడు", "స్కందగుప్తుడు", "చంద్రగుప్తుడు", "శ్రీగుప్తుడు"],
  correctAnswerIndex: 3,
  explanation: "గుప్త సామ్రాజ్యం 3వ శతాబ్దం చివరలో ఉద్భవించింది మరియు మగధను వ్యవస్థాపక సభ్యుడు శ్రీగుప్తుని నియంత్రణలోకి తెచ్చింది. అతని తర్వాత ఘోటోత్కచ గుప్తుడు వచ్చాడు. ఈ సామ్రాజ్యం చంద్రగుప్త I (319-335 CE) నియంత్రణలో ప్రముఖమైంది.",
  ),
  Question(
  questionText: "సూర్య సిద్ధాంతాన్ని రచించారా?",
  options: ["వరరుచి", "సుశ్రుత", "ఆర్యభట్ట", "వరాహమిహిర్"],
  correctAnswerIndex: 2,
  explanation: "సూర్య సిద్ధాంతం యొక్క అసలు రచయిత ఎవరో తెలియదు. అదే పేరుతో అనేక రచనలు ఉన్నాయి. బ్రహ్మగుప్తుడు తన పంచసిద్ధక్త పుస్తకంలో సూర్య సిద్ధాంతాన్ని సంగ్రహించాడు.",
  ),
  Question(
  questionText: "బౌద్ధ సంప్రదాయం ప్రకారం, చంద్రగుప్త మౌర్య మౌర్య తెగకు చెందినవాడు",
  options: ["బ్రాహ్మణులు", "క్షత్రియ", "శూద్రులు", "వైశ్య"],
  correctAnswerIndex: 1,
  explanation: "క్షత్రియ",
  ),
  Question(
  questionText: "క్రింది గుప్త పాలకులలో ఎవరు విక్రమాదిత్య అని పిలుస్తారు?",
  options: ["చంద్రగుప్తుడు-II", "స్కందగుప్తుడు", "చంద్రగుప్తుడు-I", "సముద్రగుప్తుడు"],
  correctAnswerIndex: 0,
  explanation: "చంద్రగుప్త-II",
  ),
  Question(
  questionText: "తన శాసనాలలో, అశోకుడు తనను తాను పిలుచుకున్నాడు",
  options: ["దైవపుత్ర", "దేవనాంప్రియ ప్రియదర్శిన్", "ప్రియదర్శి", "ధమ్మశోక"],
  correctAnswerIndex: 1,
  explanation: "దేవనాంప్రియ ప్రియదర్శిన్",
  ),
  Question(
  questionText: "కళింగ యుద్ధం గురించి ప్రస్తావించబడింది",
  options: ["భబ్రు రాక్ శాసనం", "8వ శిలా శాసనం", "13వ రాతి శాసనం", "12వ శిలా శాసనం"],
  correctAnswerIndex: 2,
  explanation: "షహబాజ్‌గఢి మరియు మనసెరాలోని రాక్ శాసనం నంబర్. 13లో అశోకుడు కళింగ యుద్ధభూమిలో జరిగిన వధను చూసిన తర్వాత, ధర్మం ద్వారా జయించడాన్ని ఉత్తమ విజయంగా భావించాడని పేర్కొనబడింది.",
  ),
  Question(
  questionText: "విక్రమశిల విశ్వవిద్యాలయం వీరిచే స్థాపించబడింది",
  options: ["ధర్మపాల", "మహిపాల", "దేవపాలా", "గోపాలా"],
  correctAnswerIndex: 0,
  explanation: "ధర్మపాల",
  ),
  Question(
  questionText: "చంద్రగుప్త మౌర్యుని వారసుడు",
  options: ["అశోక", "హర్ష", "బిందుసార", "అజాతశత్రు"],
  correctAnswerIndex: 2,
  explanation: "బిందుసారుడు అశోకుని తండ్రి. అతను 297 BCE నుండి 273 BCE మధ్య పాలించాడు.",
  ),
  Question(
  questionText: "ప్రాచీన భారతదేశపు ప్రసిద్ధ గణిత శాస్త్రజ్ఞుడు",
  options: ["రుద్రసేన", "భబాధూతి", "కల్హణ", "ఆర్యభట్ట"],
  correctAnswerIndex: 3,
  explanation: "ఆర్యభట్ట",
  ),
  Question(
  questionText: "క్రింది వారిలో ఎవరు తన రాజ నివాసాన్ని శాశ్వతంగా రాజ్‌గృహ నుండి పాటలీపుత్రకు మార్చుకున్నారు.",
  options: ["చంద్ర గుప్త మౌర్య", "బింబిసార", "ఉదయిన్", "కాకవర్ణ"],
  correctAnswerIndex: 2,
  explanation: "ఉదయిన్",
  ),
  Question(
  questionText: "సంధ్యాకర్ నంది ఉంది",
  options: ["దోహా రచయిత", "వైద్యుడు", "రామచరిత కావ్య రచయిత", "చంద్ర గుప్త II యొక్క ఆస్థాన కవి"],
  correctAnswerIndex: 2,
  explanation: "రామచరిత కావ్య రచయిత",
  ),
  Question(
  questionText: "ప్రాచీన భారతదేశంలో వైద్య శాస్త్రంలో గొప్ప పండితుడు",
  options: ["చరక", "వాగ్భట", "భట్ట", "సుశ్రుత"],
  correctAnswerIndex: 0,
  explanation: "ప్రాచీన భారతదేశంలో అభివృద్ధి చెందిన ఔషధం మరియు జీవనశైలి వ్యవస్థ అయిన ఆయుర్వేదానికి ప్రధాన సహకారం అందించిన వారిలో చరకుడు ఒకరు. చరక సంహిత అతనిచే రచించబడింది. అతను సుమారు 300 BCలో జన్మించాడు.",
  ),
  Question(
  questionText: "శశాంకకు చెందినవాడు",
  options: ["గౌడ రాజవంశం", "కామ్రూప్ రాజవంశం", "పాల్ రాజవంశం", "సేన్ రాజవంశం"],
  correctAnswerIndex: 0,
  explanation: "శశాంక బెంగాల్ యొక్క మొదటి స్వతంత్ర పాలకుడు. శశాంక గౌడ రాజ్యానికి రాజు మరియు రాజధాని కర్ణసుబర్ణ, ప్రస్తుత పశ్చిమ బెంగాల్‌లోని ముర్షిదాబాద్.",
  ),
  Question(
  questionText: "గోపాల్ స్థాపకుడు",
  options: ["ప్రతిహార రాజవంశం", "చాళుక్య రాజవంశం", "పాల రాజవంశం", "పల్లవ రాజవంశం"],
  correctAnswerIndex: 2,
  explanation: "పాలా రాజవంశం",
  ),
  Question(
  questionText: "చాళుక్యులు తమ సామ్రాజ్యాన్ని స్థాపించారు",
  options: ["డెక్కన్", "ఫార్ సౌత్ ఇండియా", "గుజరాత్", "మాల్వా"],
  correctAnswerIndex: 0,
  explanation: "దక్కన్",
  ),
  Question(
  questionText: "సతాబహాన్ల కాలంలో ఒక ముఖ్యమైన ఓడరేవు",
  options: ["మధుర", "పాటలీపుత్ర", "సోపారా", "తక్షిలా"],
  correctAnswerIndex: 2,
  explanation: "సోపారా",
  ),
    Question(
  questionText: "ఇండికా రాసింది",
  options: ["వి. స్మిత్", "విలియం జోన్స్", "గోండోఫెర్నెస్", "మెగాస్తనీస్"],
  correctAnswerIndex: 3,
  explanation: "మెగస్తనీస్ భారతీయ రాజు చంద్రగుప్త మరియాకు రాయబారిగా ఉన్నాడు. అతను గ్రీకుకు చెందినవాడు మరియు సెల్యూకస్ I నికేటర్ ద్వారా పంపబడ్డాడు. సెల్యూకస్ మౌర్య సామ్రాజ్యం యొక్క సైన్యాలచే ఓడిపోయాడు మరియు అతని కుమార్తెను రాజు చంద్రగుప్తుడికి వివాహం చేసి శాంతిని నెలకొల్పాడు మరియు మెగస్తనీస్‌ను భారతదేశానికి పంపాడు ఒక రాయబారి.",
  ),
  Question(
  questionText: "మహాబలిపురం యొక్క 'రథ దేవాలయాలు' వారి పాలనలో నిర్మించబడ్డాయి",
  options: ["రాజ రాజా", "రాజేంద్ర చోళ", "నరసింహ వర్మన్ I", "నరసింహ వర్మన్ II"],
  correctAnswerIndex: 2,
  explanation: "నరసింహ వర్మన్ I",
  ),
  Question(
  questionText: "క్రింది వ్యక్తులలో మితాక్షరాన్ని ఎవరు రాశారు?",
  options: ["బిల్హన్", "విజ్ఞానేశ్వర్", "న్యాయచంద్ర", "గంగాధర్"],
  correctAnswerIndex: 1,
  explanation: "విజ్ఞానేశ్వర్",
  ),
  Question(
  questionText: "ఖలీంపూర్ రాగి ఫలకం పాలా పాలకుడి సైనిక దోపిడీల గురించి మాకు తెలియజేస్తుంది",
  options: ["ధర్మపాల", "మహిపాల I", "దేవపాల", "రాంపాలా"],
  correctAnswerIndex: 0,
  explanation: "ధర్మపాల",
  ),
  Question(
  questionText: "రాజరాజేశ్వర ఆలయాన్ని ఎవరు నిర్మించారు?",
  options: ["రాజాధిరాజా", "వీరరాజేంద్ర", "రాజేంద్ర", "రాజా రాజా"],
  correctAnswerIndex: 3,
  explanation: "రాజా రాజా",
  ),
  Question(
  questionText: "ఎల్లోరాలో కైలాస్ ఆలయం ఎవరి ఆధ్వర్యంలో నిర్మించబడింది",
  options: ["పల్లవులు", "చోళులు", "చాళుక్య", "రాస్త్రకూట్"],
  correctAnswerIndex: 3,
  explanation: "రాస్ట్రాకుట్",
  ),
  Question(
  questionText: "బెంగాల్‌ను జయించిన చోళ రాజు ఎవరు?",
  options: ["రాజేంద్ర చోళ", "రాజాధిరాజా", "రాజ రాజ", "రాజేంద్ర చోళ I"],
  correctAnswerIndex: 3,
  explanation: "రాజేంద్ర చోళ I, చోళ రాజవంశానికి చెందిన గొప్ప పాలకుడు. అతని విజయాలు తంజోర్ మరియు తిరుమల శాసనాలలో వివరించబడ్డాయి. అతను బంగల్‌ను జయించి 'గంగా విజేత' (గంగైకొండ చోళపురం) లేదా గంగా విజేత చోళ రాజుగా బిరుదును పొందాడు.",
  ),
  Question(
  questionText: "అంకర్ వాట్' నిర్మించబడింది",
  options: ["సూర్యవర్మన్", "కనిస్క", "చంద్రగ్నప్త II", "అజాతశత్రు"],
  correctAnswerIndex: 0,
  explanation: "ఇది ప్రపంచంలోనే అతిపెద్ద మతపరమైన స్మారక చిహ్నం, ఇది కంబోడియాలో ఉంది. మొదట్లో, ఇది ఖైమర్ సామ్రాజ్యం కోసం హిందూ దేవాలయం (విష్ణువుకు అంకితం చేయబడింది) మరియు క్రమంగా బౌద్ధ దేవాలయంగా రూపాంతరం చెందింది. దీనిని సూర్యవర్మన్ II నిర్మించారు.",
  ),
  Question(
  questionText: "సత్వహన రాజవంశ స్థాపకుడు ఎవరు?",
  options: ["శాతకస్ని", "గౌతమిపుత్ర శాతకర్ణి", "సిముక్", "కృష్ణ"],
  correctAnswerIndex: 2,
  explanation: "సిముక్",
  ),
  Question(
  questionText: "బెంగాల్ పాలకుడు మహిపాల IIకి వ్యతిరేకంగా తిరుగుబాటు చేసిన కైవర్త్త అధిపతి ఎవరు?",
  options: ["దివ్య", "మయూరధ్వజ", "ధేకత", "గంధాత"],
  correctAnswerIndex: 0,
  explanation: "వరేంద్ర తిరుగుబాటు అంటే దివ్య నేతృత్వంలోని రాజు మహిపాల IIకి వ్యతిరేకంగా జరిగిన తిరుగుబాటు. ఈ తిరుగుబాటు ద్వారా కైవర్త వరేంద్రను పట్టుకోగలిగారు. తరువాత, 1082 CEలో, రాజు రాంపాల సహాయంతో విమ్‌ని ఓడించి తన మాతృభూమి అయిన వరేంద్రను తిరిగి స్వాధీనం చేసుకోవడంలో విజయం సాధించాడు. పొరుగు సామంతులు.",
  ),
  Question(
  questionText: "కాదంబరి రచయిత",
  options: ["భబాభూతి", "బాణభట్ట", "ఖేమేంద్ర", "కల్హనా"],
  correctAnswerIndex: 1,
  explanation: "బాణభట్ట",
  ),
  Question(
  questionText: "విక్రమశిలా విశ్వవిద్యాలయాన్ని ఏ రాజు స్థాపించారు?",
  options: ["దేవపాల", "బల్లాల్ సేన్", "ధర్మపాల", "ధృవ"],
  correctAnswerIndex: 2,
  explanation: "ధర్మపాల",
  ),
  Question(
  questionText: "క్రింది వారిలో బ్రాహ్మణులకు భూమి మంజూరు చేసిన మొదటి పాలకులు ఎవరు",
  options: ["శాతవాహన", "శకాలు మరియు కుషానాలు", "శుంగ", "కుషాన్స్"],
  correctAnswerIndex: 0,
  explanation: "శాతవాహన",
  ),
  Question(
  questionText: "నాసిక్ శాసనాన్ని ఎవరు జారీ చేశారు?",
  options: ["ధర్మపాల", "సముద్రగుప్త", "గౌతమిపుత్ర శాతకర్ణి", "హర్షవర్ధన్"],
  correctAnswerIndex: 2,
  explanation: "ఇది గౌతమీ బాలాశ్రీ తన కుమారుడు శాతకర్ణి సాధించిన విజయం గురించి వ్రాసింది. శాతవాహన వంశానికి గౌతమీపుట శాతకర్ణి గొప్ప పాలకుడు. అతను తనను తాను బ్రాహ్మణుడు మాత్రమే అని పిలిచాడు. అతను బ్రమీసంను ఆదరించాడు, అయినప్పటికీ బౌద్ధులకు విరాళాలు ఇచ్చాడు.",
  ),
  Question(
  questionText: "క్రింది రాజులలో ఎవరు అశ్వమేధ యాగాన్ని నిర్వహించారు?",
  options: ["కీర్తివర్మన్", "మంగళేష్", "పులకేసిన్ I", "పులకేసిన్ II"],
  correctAnswerIndex: 3,
  explanation: "పులకేసిన్ II",
  ),
  Question(
  questionText: "మలయ్ ద్వీపసమూహాన్ని పాలించిన రాజవంశాన్ని గుర్తించండి",
  options: ["పాండ్య", "శైలేంద్ర", "చోళ", "మీరా"],
  correctAnswerIndex: 1,
  explanation: "శైలేంద్ర",
  ),
  Question(
  questionText: "నాసిక్ ప్రశస్తి (శిలాశాసనం) ఎవరు జారీ చేశారు?",
  options: ["హర్షవర్ధన్", "ధర్మపాల", "గౌతమిపుత్ర", "సముద్రగుప్త"],
  correctAnswerIndex: 2,
  explanation: "గౌతమిపుత్ర",
  ),
  Question(
  questionText: "గాంధార స్కూల్ ఆఫ్ ఆర్ట్ దీనితో అనుబంధించబడింది",
  options: ["హర్షవర్ధన", "పుష్యమిత్ర", "కనిస్క", "పులకేసి"],
  correctAnswerIndex: 2,
  explanation: "కనిస్కా",
  ),
  Question(
  questionText: "భారతదేశ చరిత్రలో 'కునిక్' అని ఎవరు పిలుస్తారు?", options: ["బిందుసార", "అశోక", "బింబిసార", "అజాతశత్రు"], correctAnswerIndex: 3, explanation: "అజాతశత్రు",
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
    home: ancientHistory_2_te(),
  ));
}

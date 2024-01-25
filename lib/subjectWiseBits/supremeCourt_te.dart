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

class supremeCourt_te extends StatefulWidget {
  final String? userIdentifier;

  supremeCourt_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<supremeCourt_te> createState() => _supremeCourt_teState();
}

class _supremeCourt_teState extends State<supremeCourt_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//26.సుప్రీం కోర్ట్

  Question(
  questionText : "భారత సర్వోన్నత న్యాయస్థానం ఎప్పుడు ప్రారంభించబడింది?",
  options: ["జనవరి 26, 1950", "జనవరి 28, 1950", "ఆగస్టు 15, 1947", "అక్టోబర్ 2, 1952"],
  correctAnswerIndex : 1,
  explanation : "భారత సర్వోన్నత న్యాయస్థానం జనవరి 28, 1950న ప్రారంభించబడింది.",
  ),

  Question(
  questionText : "బ్రిటీష్ ప్రివీ కౌన్సిల్ స్థానంలో భారతదేశంలోని అత్యున్నత న్యాయస్థానం ఏది?",
  options: ["ఫెడరల్ కోర్ట్ ఆఫ్ ఇండియా", "హై కోర్టులు", "సుప్రీం కోర్ట్ ఆఫ్ ఇండియా", "డిస్ట్రిక్ట్ కోర్టులు"],
  correctAnswerIndex : 2,
  explanation : "భారత సర్వోన్నత న్యాయస్థానం బ్రిటిష్ ప్రివీ కౌన్సిల్‌ను అత్యున్నత న్యాయస్థానంగా అప్పీలు చేసింది.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తుల బలం కాలక్రమేణా ఎలా మారింది?",
  options: ["తగ్గింది", "స్థిరంగా మిగిలిపోయింది", "పెరిగింది", "ఒడిదుడుకులు"],
  correctAnswerIndex : 2,
  explanation : "సుప్రీం కోర్ట్ న్యాయమూర్తుల బలం కాలక్రమేణా పెరిగింది, 2019లో అసలు ఎనిమిది నుండి ముప్పై మూడుకి పెరిగింది.",
  ),

  Question(
  questionText : "ప్రధాన న్యాయమూర్తితో సహా సుప్రీంకోర్టు న్యాయమూర్తులను ఎవరు నియమిస్తారు?",
  options: ["ప్రధాన మంత్రి", "పార్లమెంట్", "అధ్యక్షుడు", "ప్రధాన న్యాయమూర్తి"],
  correctAnswerIndex : 2,
  explanation : "ప్రధాన న్యాయమూర్తితో సహా సుప్రీంకోర్టు న్యాయమూర్తులు రాష్ట్రపతిచే నియమింపబడతారు.",
  ),

  Question(
  questionText : "న్యాయమూర్తుల నియామకం కోసం నేషనల్ జ్యుడీషియల్ అపాయింట్‌మెంట్స్ కమిషన్ (NJAC)ని ఏ రాజ్యాంగ సవరణ ప్రవేశపెట్టింది?",
  options: ["95వ సవరణ", "105వ సవరణ", "99వ సవరణ", "110వ సవరణ"],
  correctAnswerIndex : 2,
  explanation : "99వ రాజ్యాంగ సవరణ చట్టం 2014 జాతీయ న్యాయ నియామకాల కమిషన్ (NJAC)ని ప్రవేశపెట్టింది.",
  ),

  Question(
  questionText : "ఏ కోర్టు కేసు 99వ రాజ్యాంగ సవరణ మరియు NJAC చట్టాన్ని రాజ్యాంగ విరుద్ధమైనదిగా ప్రకటించడానికి దారితీసింది?",
  options: ["మొదటి న్యాయమూర్తుల కేసు", "రెండవ న్యాయమూర్తుల కేసు", "మూడవ న్యాయమూర్తుల కేసు", "నాల్గవ న్యాయమూర్తుల కేసు"],
  correctAnswerIndex : 3,
  explanation : "4వ న్యాయమూర్తుల కేసు (2015)లో సుప్రీంకోర్టు 99వ రాజ్యాంగ సవరణ మరియు NJAC చట్టాన్ని రాజ్యాంగ విరుద్ధమని ప్రకటించింది.",
  ),
  Question(
  questionText : "భారత రాజ్యాంగంలోని ఏ ఆర్టికల్ క్రింద సుప్రీంకోర్టు స్థాపన మరియు రాజ్యాంగం నిర్వచించబడింది?",
  options: ["ఆర్టికల్ 124", "ఆర్టికల్ 130", "ఆర్టికల్ 136", "ఆర్టికల్ 140"],
  correctAnswerIndex : 0,
  explanation : "సుప్రీం కోర్ట్ స్థాపన మరియు రాజ్యాంగం భారత రాజ్యాంగంలోని ఆర్టికల్ 124 ప్రకారం నిర్వచించబడ్డాయి.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ ద్వారా అమలు చేయగల ప్రస్తుత చట్టం ప్రకారం ఫెడరల్ కోర్ట్ యొక్క అధికార పరిధి మరియు అధికారాలను ఏ ఆర్టికల్ డీల్ చేస్తుంది?",
  options: ["ఆర్టికల్ 133", "ఆర్టికల్ 135", "ఆర్టికల్ 139", "ఆర్టికల్ 143"],
  correctAnswerIndex : 1,
  explanation: "అత్యున్నత న్యాయస్థానం ద్వారా అమలు చేయగల ప్రస్తుత చట్టం ప్రకారం ఫెడరల్ కోర్ట్ యొక్క అధికార పరిధి మరియు అధికారాలతో ఆర్టికల్ 135 వ్యవహరిస్తుంది.",
  ),

  Question(
  questionText : "భారత రాజ్యాంగంలోని ఆర్టికల్ 141 ఏమి చెబుతుంది?",
  options: ["క్రిమినల్ విషయాలలో సుప్రీం కోర్ట్ అధికార పరిధి", "కొన్ని రిట్‌లను జారీ చేయడానికి సుప్రీం కోర్ట్ యొక్క అధికారం", "అన్ని కోర్టులపై సుప్రీం కోర్ట్ బైండింగ్ ద్వారా ప్రకటించబడిన చట్టం", "చట్టాల రాజ్యాంగ చెల్లుబాటు కోసం ప్రత్యేక నిబంధనలు"],
  correctAnswerIndex : 2,
  explanation : "అత్యున్నత న్యాయస్థానం ప్రకటించిన చట్టం అన్ని కోర్టులపై కట్టుబడి ఉంటుందని ఆర్టికల్ 141 పేర్కొంది.",
  ),

  Question(
  questionText : "కొన్ని విషయాలపై సుప్రీంకోర్టును సంప్రదించడానికి రాష్ట్రపతికి ఏ ఆర్టికల్ అధికారం ఇస్తుంది?",
  options: ["ఆర్టికల్ 143", "ఆర్టికల్ 144", "ఆర్టికల్ 145", "ఆర్టికల్ 146"],
  correctAnswerIndex : 0,
  explanation : "ఆర్టికల్ 143 కొన్ని విషయాలపై సుప్రీంకోర్టును సంప్రదించడానికి రాష్ట్రపతికి అధికారం ఇస్తుంది.",
  ),

  Question(
  questionText : "భారత రాజ్యాంగంలోని ఆర్టికల్ 147 యొక్క అంశం ఏమిటి?",
  options: ["వ్యాఖ్యానాలు", "డిక్రీలు మరియు ఉత్తర్వుల అమలు", "సుప్రీం కోర్ట్‌కు సహాయంగా వ్యవహరిస్తున్న సివిల్ మరియు న్యాయ అధికారులు", "కోర్టు నియమాలు"],
  correctAnswerIndex : 3,
  explanation : "ఆర్టికల్ 147 సుప్రీంకోర్టు సందర్భంలో explanationతో వ్యవహరిస్తుంది.",
  ),
  Question(
  questionText : "అధికార పరిధిలో, అమెరికన్ సుప్రీం కోర్ట్ నుండి ఇండియన్ సుప్రీం కోర్ట్ అసలు అధికార పరిధిని ఏది వేరు చేస్తుంది?",
    options: ["ఇండియన్ సుప్రీం కోర్ట్ ఫెడరల్ మరియు సముద్ర కేసులను కవర్ చేస్తుంది", "అమెరికన్ సుప్రీం కోర్ట్ ఫెడరల్ మరియు క్రిమినల్ కేసులను కవర్ చేస్తుంది", "ఇండియన్ సుప్రీం కోర్ట్ ఫెడరల్ కేసులను మాత్రమే కవర్ చేస్తుంది", "అమెరికన్ సుప్రీం కోర్ట్ రాజ్యాంగపరమైన కేసులను మాత్రమే కవర్ చేస్తుంది"],
  correctAnswerIndex : 2,
  explanation: "ఇండియన్ సుప్రీం కోర్ట్ యొక్క అసలు అధికార పరిధి ఫెడరల్ కేసులకే పరిమితం చేయబడింది, అయితే అమెరికన్ సుప్రీం కోర్ట్ ఫెడరల్ కేసులను మాత్రమే కాకుండా నావికా దళాలు, సముద్ర కార్యకలాపాలు, రాయబారులు మొదలైన వాటికి సంబంధించిన కేసులను కూడా కవర్ చేస్తుంది.",
  ),

  Question(
  questionText : "ఏ ఫీచర్ ఇండియన్ సుప్రీం కోర్ట్‌కి వర్తిస్తుంది కానీ అమెరికన్ సుప్రీం కోర్ట్‌కి వర్తించదు?",
  options: ["సలహా అధికార పరిధి", "న్యాయ సమీక్ష యొక్క పరిమిత పరిధి", "'చట్టం ద్వారా ఏర్పాటు చేయబడిన విధానం' ప్రకారం హక్కులను రక్షించడం", "పార్లమెంట్ ద్వారా అధికార పరిధిని విస్తరించడం"],
  correctAnswerIndex : 0,
  explanation : "సలహా అధికార పరిధి భారతీయ సుప్రీం కోర్ట్ యొక్క లక్షణం మరియు అమెరికన్ సుప్రీం కోర్ట్ కాదు.",
  ),

  Question(
  questionText : "న్యాయ సమీక్ష యొక్క ఏ అంశం అమెరికన్ సుప్రీం కోర్ట్ నుండి ఇండియన్ సుప్రీం కోర్ట్‌ని వేరు చేస్తుంది?",
  options: ["భారత సర్వోన్నత న్యాయస్థానం న్యాయపరమైన సమీక్ష యొక్క పరిమిత పరిధిని కలిగి ఉంది", "అమెరికన్ సుప్రీం కోర్టు న్యాయపరమైన సమీక్ష యొక్క పరిమిత పరిధిని కలిగి ఉంది", "భారత సుప్రీంకోర్టుకు సలహా అధికార పరిధి లేదు", "అమెరికన్ సుప్రీం కోర్టుకు సలహా అధికార పరిధి ఉంది "],
  correctAnswerIndex : 1,
  explanation : "న్యాయ సమీక్ష యొక్క పరిధి భారత సుప్రీంకోర్టుకు పరిమితం చేయబడింది, అయితే ఇది అమెరికన్ సుప్రీంకోర్టుకు చాలా విస్తృతమైనది.",
  ),

  Question(
  questionText : "ఇండియన్ సుప్రీం కోర్ట్ మరియు అమెరికన్ సుప్రీం కోర్ట్ అధికారాలకు సంబంధించి ఏ ప్రకటన నిజం?",
  options: ["భారత సుప్రీంకోర్టు రాజ్యాంగం ప్రకారం పరిమిత అధికారాలను కలిగి ఉంది", "అమెరికన్ సుప్రీం కోర్ట్ దాని అధికార పరిధిని మరియు అధికారాలను కాంగ్రెస్ ద్వారా విస్తరించవచ్చు", "భారత సుప్రీంకోర్టుకు సలహా అధికార పరిధి ఉంది", "అమెరికన్ సుప్రీం కోర్టుకు అధికారం ఉంది", "రాష్ట్ర హైకోర్టులపై న్యాయ పర్యవేక్షణ"],
  correctAnswerIndex : 3,
  explanation: "ఇండియన్ సుప్రీం కోర్ట్ రాష్ట్ర హైకోర్టులపై న్యాయ పర్యవేక్షణ మరియు నియంత్రణ అధికారాన్ని కలిగి ఉంది , అయితే డబుల్ (లేదా వేరు చేయబడిన) న్యాయ వ్యవస్థ కారణంగా అమెరికన్ సుప్రీంకోర్టుకు అలాంటి అధికారం లేదు.",
  ),
  Question(
  questionText : "సుప్రీం కోర్ట్ యొక్క అధికార పరిధి మరియు అధికారాలు ఏయే ఆరు వర్గాలుగా వర్గీకరించబడ్డాయి?",
  options: [
  "సమాఖ్య, రాష్ట్రం, స్థానిక, అంతర్జాతీయ, రాజ్యాంగ, చట్టబద్ధమైన",
  "ఒరిజినల్, రిట్, అప్పీలేట్, అడ్వైజరీ, కోర్ట్ ఆఫ్ రికార్డ్, జ్యుడీషియల్ రివ్యూ",
  "సివిల్, క్రిమినల్, రాజ్యాంగ, ప్రత్యేక సెలవు, సలహా, అసలు",
  "శాసన, కార్యనిర్వాహక, న్యాయ, రాజ్యాంగ, పరిపాలనా, సలహా"
  ],
  correctAnswerIndex : 1,
  explanation: "సుప్రీం కోర్ట్ యొక్క అధికార పరిధి మరియు అధికారాలు ఒరిజినల్, రిట్, అప్పీలేట్, అడ్వైజరీ, కోర్ట్ ఆఫ్ రికార్డ్ మరియు జ్యుడీషియల్ రివ్యూగా వర్గీకరించబడ్డాయి.",
  ),

  Question(
  questionText : "ఏ వివాదాలు సుప్రీం కోర్ట్ యొక్క ప్రత్యేక అసలైన అధికార పరిధిలోకి వస్తాయి?",
  options: [
  "వ్యక్తుల మధ్య పౌర వివాదాలు",
  "ఒప్పందాలు మరియు ఒప్పందాల నుండి ఉత్పన్నమయ్యే వివాదాలు",
  "అంతర్ రాష్ట్ర నదీ జలాల వివాదాలు",
  "రాష్ట్రాల మధ్య నేర వివాదాలు"
  ],
  correctAnswerIndex : 2,
  explanation : "వ్యక్తుల మధ్య సివిల్ వివాదాలు సుప్రీం కోర్ట్ యొక్క ప్రత్యేక అసలైన అధికార పరిధిలో లేవు. అయితే, అంతర్ రాష్ట్ర నదీ జలాల వివాదాలకు సంబంధించిన వివాదాలు ఈ అధికార పరిధిలోకి వస్తాయి. ",
  ),

  Question(
  questionText : "సమాఖ్య వివాదాలు మరియు ప్రాథమిక హక్కులకు సంబంధించిన వివాదాలకు సంబంధించి సుప్రీంకోర్టు అసలు అధికార పరిధికి మధ్య తేడా ఏమిటి?",
  options: [
  "మొదటిది ఏకకాలికమైనది మరియు రెండవది ప్రత్యేకమైనది. ",
  "మొదటిది ప్రైవేట్ పౌరులను కలిగి ఉంటుంది మరియు రెండవది ఫెడరేషన్ యొక్క యూనిట్లను కలిగి ఉంటుంది. ",
  "మొదటిది సలహా, మరియు రెండవది అప్పీలేట్. ",
  "మొదటిది రాజ్యాంగపరమైన అంశాలకు పరిమితం చేయబడింది మరియు రెండవది అన్ని చట్టపరమైన వివాదాలను కవర్ చేస్తుంది."
  ],
  correctAnswerIndex : 1,
  explanation : "సమాఖ్య వివాదాలకు సంబంధించి సుప్రీం కోర్ట్ యొక్క అసలు అధికార పరిధి ప్రత్యేకమైనది మరియు సమాఖ్య (కేంద్రం మరియు రాష్ట్రాలు) యొక్క యూనిట్లను కలిగి ఉంటుంది. దీనికి విరుద్ధంగా, ప్రాథమిక హక్కులకు సంబంధించిన వివాదాలకు సంబంధించిన అసలైన అధికార పరిధి ఏకకాలంలో ఉంటుంది మరియు ప్రైవేట్ పౌరులు మరియు ప్రభుత్వాన్ని కలిగి ఉంటుంది ."
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ యొక్క రిట్ అధికార పరిధికి మరియు హైకోర్టు యొక్క అధికార పరిధికి మధ్య తేడా ఏమిటి?",
  options: [
  "సుప్రీం కోర్ట్ ఏ ప్రయోజనం కోసమైనా రిట్‌లను జారీ చేయవచ్చు, అయితే హైకోర్టు ప్రాథమిక హక్కులకే పరిమితం అవుతుంది. ",
  "ఉన్నత న్యాయస్థానం యొక్క అధికార పరిధి సుప్రీంకోర్టు కంటే విస్తృతమైనది. ",
  "సుప్రీం కోర్ట్ ప్రత్యేక రిట్ అధికార పరిధిని కలిగి ఉంది. ",
  "హైకోర్టు ప్రాథమిక హక్కుల కోసం రిట్‌లను జారీ చేయదు."
  ],
  correctAnswerIndex : 1,
  explanation : "ఉన్నత న్యాయస్థానం యొక్క రిట్ అధికార పరిధి సుప్రీంకోర్టు కంటే విస్తృతమైనది. ప్రాథమిక హక్కుల అమలు కోసం సుప్రీంకోర్టు రిట్‌లను జారీ చేస్తుంది, హైకోర్టు ప్రాథమిక హక్కులు మరియు ఇతర ప్రయోజనాల కోసం రిట్‌లను జారీ చేయవచ్చు.",
  ),

  Question(
  questionText : "సుప్రీంకోర్టు అసలు అధికార పరిధిలో మొదటి దావా ఏ సంవత్సరంలో జరిగింది మరియు వివాద స్వభావం ఏమిటి?",
  options: [
  "1950 - రాష్ట్రాల మధ్య భూ వివాదం",
  "1961 - రాష్ట్రంచే సవాలు చేయబడిన చట్టం యొక్క రాజ్యాంగ చెల్లుబాటు",
  "1972 - కేంద్రం మరియు రాష్ట్రానికి సంబంధించిన క్రిమినల్ కేసు",
  "1980 - అంతర్ రాష్ట్ర నదీ జలాల వివాదం"
  ],
  correctAnswerIndex : 1,
  explanation : "1961లో, సుప్రీంకోర్టు అసలు అధికార పరిధిలో మొదటి దావా జరిగింది. ఇందులో పశ్చిమ బెంగాల్ పార్లమెంటు ఆమోదించిన బొగ్గు బేరింగ్ ప్రాంతాల (సముపార్జన మరియు అభివృద్ధి) చట్టం, 1957 యొక్క రాజ్యాంగపరమైన చెల్లుబాటును సవాలు చేసింది. " ,
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్‌లో అప్పీల్ చేయడానికి సివిల్ కేసులకు ద్రవ్య పరిమితి ఏమిటి?",
  options: [
  "₹10,000",
  "₹50,000",
  "₹1 ,00,000 ",
  "ద్రవ్య పరిమితి లేదు."
  ],
  correctAnswerIndex : 3,
  explanation : "సుప్రీంకోర్టులో అప్పీలు చేసుకునే సివిల్ కేసుల ద్రవ్య పరిమితి 30వ రాజ్యాంగ సవరణ చట్టం 1972 ద్వారా తొలగించబడింది. ద్రవ్య పరిమితి లేదు. ",
  ),

  Question(
  questionText : "అప్పీల్ చేయడానికి ప్రత్యేక అనుమతి మంజూరుకు సంబంధించి సుప్రీం కోర్ట్ యొక్క విచక్షణాధికారం ఏమిటి?",
  options: [
  "ఇది ప్రతి సందర్భంలో తప్పనిసరిగా ఉపయోగించాల్సిన తప్పనిసరి శక్తి. ",
  "ఇది హక్కుగా క్లెయిమ్ చేయగల శక్తి. ",
  "ఇది హైకోర్టులకు వ్యతిరేకంగా మాత్రమే ఉపయోగించగల అధికారం. ",
  "ఇది ఒక విచక్షణా శక్తి, ఇది హక్కుగా క్లెయిమ్ చేయలేము."
  ],
  correctAnswerIndex : 3,
  explanation : "అప్పీల్‌కు ప్రత్యేక అనుమతి మంజూరుకు సంబంధించి సుప్రీం కోర్టు యొక్క విచక్షణా అధికారం హక్కుకు సంబంధించినది కాదు. ఇది విచక్షణాధికారం, సుప్రీం కోర్ట్ తన విచక్షణను వినియోగించుకోవడానికి ఎంచుకోవచ్చు. ",
  ),

  Question(
  questionText : "సలహా అధికార పరిధిలో, సుప్రీంకోర్టు తన అభిప్రాయాన్ని రాష్ట్రపతికి ఎప్పుడు తెలియజేయాలి?",
  options: [
  "సుప్రీంకోర్టు తన విచక్షణతో తన అభిప్రాయాన్ని తెలియజేయవచ్చు. ",
  "సుప్రీంకోర్టు రెండు సందర్భాలలో తన అభిప్రాయాన్ని తెలియజేయాలి. ",
  "సుప్రీంకోర్టు మొదటి కేసులో మాత్రమే తన అభిప్రాయాన్ని తెలియజేయాలి. ",
  "సుప్రీంకోర్టు రెండవ కేసులో మాత్రమే తన అభిప్రాయాన్ని తెలియజేయాలి."
  ],
  correctAnswerIndex : 1,
  explanation : "సలహా అధికార పరిధిలో, సుప్రీం కోర్ట్ మొదటి సందర్భంలో రాష్ట్రపతికి తన అభిప్రాయాన్ని టెండర్ వేయవచ్చు లేదా తిరస్కరించవచ్చు. అయితే, రెండవ సందర్భంలో సుప్రీం కోర్టు తన అభిప్రాయాన్ని రాష్ట్రపతికి తెలియజేయాలి. ",
  ),

  Question(
  questionText : "అత్యున్నత న్యాయస్థానానికి దాని సలహా అధికార పరిధిలో రాష్ట్రపతి ఎన్ని సూచనలు చేశారు?",
  options: ["10", "15", "20", "25"],
  correctAnswerIndex : 1,
  explanation : "ఇప్పటి వరకు, రాష్ట్రపతి తన సలహా అధికార పరిధిలో (సంప్రదింపుల అధికార పరిధి అని కూడా పిలుస్తారు) సుప్రీంకోర్టుకు పదిహేను సూచనలు చేశారు.",
  ),
  Question(
  questionText : "ఏ పరిస్థితులలో సుప్రీంకోర్టు న్యాయమూర్తిని భారతదేశ తాత్కాలిక ప్రధాన న్యాయమూర్తిగా నియమించవచ్చు?",
  options: [
  "న్యాయమూర్తి తాత్కాలికంగా పాత్రను స్వీకరించాలనుకున్నప్పుడు. ",
  "భారత ప్రధాన న్యాయమూర్తి శాశ్వతంగా లేనప్పుడు. ",
  "భారత ప్రధాన న్యాయమూర్తి కార్యాలయం ఖాళీగా ఉన్నప్పుడు, తాత్కాలికంగా లేనప్పుడు లేదా విధులు నిర్వహించలేనప్పుడు. ",
  "న్యాయమూర్తి రాష్ట్రపతి నుండి ఆమోదం పొందినప్పుడు."
  ],
  correctAnswerIndex : 2,
  explanation: "ప్రధాన న్యాయమూర్తి కార్యాలయం ఖాళీగా ఉన్నప్పుడు, తాత్కాలికంగా గైర్హాజరైనప్పుడు లేదా ప్రధాన న్యాయమూర్తి విధులు నిర్వహించలేనప్పుడు సుప్రీంకోర్టు న్యాయమూర్తిని భారత తాత్కాలిక ప్రధాన న్యాయమూర్తిగా నియమించవచ్చు.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్‌లో తాత్కాలిక న్యాయమూర్తి పాత్ర ఏమిటి?",
  options: [
  "విశ్రాంత న్యాయమూర్తిని శాశ్వతంగా భర్తీ చేయడానికి. ",
  "అడ్మినిస్ట్రేటివ్ విధుల్లో ప్రధాన న్యాయమూర్తికి సహాయం చేయడానికి. ",
  "శాశ్వత న్యాయమూర్తులలో కోరం కొరత ఉన్నప్పుడు తాత్కాలిక న్యాయమూర్తిగా వ్యవహరించడం. ",
  "రాష్ట్రపతికి న్యాయ సలహా అందించడానికి."
  ],
  correctAnswerIndex : 2,
  explanation: "శాశ్వత న్యాయమూర్తులలో కోరం లేనప్పుడు సుప్రీంకోర్టులో తాత్కాలిక న్యాయమూర్తిగా వ్యవహరించడానికి భారత ప్రధాన న్యాయమూర్తిచే తాత్కాలిక న్యాయమూర్తిని నియమిస్తారు.",
  ),

  Question(
  questionText : "ఏ పరిస్థితులలో పదవీ విరమణ చేసిన న్యాయమూర్తి సుప్రీంకోర్టు న్యాయమూర్తిగా వ్యవహరించడానికి అభ్యర్థించవచ్చు?",
  options: [
  "షరతులు లేకుండా ఏ సమయంలోనైనా. ",
  "రాష్ట్రపతి యొక్క మునుపటి సమ్మతి మరియు ఆమోదంతో. ",
  "అత్యవసర సందర్భాలలో మాత్రమే. ",
  "రిటైర్డ్ జడ్జి తిరిగి సర్వీసులోకి రావడానికి ఆసక్తిని వ్యక్తం చేస్తే."
  ],
  correctAnswerIndex : 1,
  explanation: "భారత ప్రధాన న్యాయమూర్తి పదవీ విరమణ చేసిన న్యాయమూర్తిని రాష్ట్రపతి మరియు నియమించబడే వ్యక్తి యొక్క మునుపటి సమ్మతితో సుప్రీంకోర్టు న్యాయమూర్తిగా వ్యవహరించమని అభ్యర్థించవచ్చు.",
  ),

  Question(
  questionText : "రాజ్యాంగం ప్రకారం సుప్రీంకోర్టు స్థానం ఏమిటి?",
  options: [
  "ఢిల్లీ మాత్రమే",
  "రాష్ట్రపతి ఆమోదంతో ప్రధాన న్యాయమూర్తి నియమించిన ఏదైనా స్థలం",
  "వారణాసి మాత్రమే",
  "ముంబయి మాత్రమే"
  ],
  correctAnswerIndex : 1,
  explanation : "రాజ్యాంగం ఢిల్లీని సుప్రీంకోర్టు స్థానంగా ప్రకటించగా, భారత ప్రధాన న్యాయమూర్తి రాష్ట్రపతి ఆమోదంతో ఇతర ప్రదేశాలను సీటుగా నియమించవచ్చు. అయితే, ఈ నిబంధన ఐచ్ఛికం. ",
  ),

  Question(
  questionText : "రాజ్యాంగంలోని ఆర్టికల్ 143 ప్రకారం రాష్ట్రపతి చేసిన కేసులు లేదా సూచనలు ఎలా నిర్ణయించబడతాయి?",
  options: [
  "ప్రెసిడెంట్ క్యాబినెట్ యొక్క మెజారిటీ ఓటు ద్వారా. ",
  "కనీసం ఐదుగురు న్యాయమూర్తులతో కూడిన బెంచ్ ద్వారా. ",
  "డివిజన్ బెంచ్ ద్వారా. ",
  "ఒకే న్యాయమూర్తి ద్వారా."
  ],
  correctAnswerIndex : 1,
  explanation : "ఆర్టికల్ 143 ప్రకారం రాష్ట్రపతి చేసిన కేసులు లేదా సూచనలు కనీసం ఐదుగురు న్యాయమూర్తులతో కూడిన బెంచ్ ద్వారా నిర్ణయించబడతాయి.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తుల పదవీకాల భద్రతను ఏ నిబంధన నిర్ధారిస్తుంది?",
  options: [
  "రాజ్యాంగ సవరణ",
  "ఎగ్జిక్యూటివ్ ఆర్డర్",
  "రాజ్యాంగమే",
  "పార్లమెంటరీ తీర్మానం"
  ],
  correctAnswerIndex : 2,
  explanation : "సుప్రీం కోర్ట్ న్యాయమూర్తుల పదవీకాల భద్రత రాజ్యాంగం ద్వారానే నిర్ధారిస్తుంది.",
  ),

  Question(
  questionText : "ఏ వ్యక్తినైనా శిక్షించే అధికారం సుప్రీంకోర్టుకు ఉంది?",
  options: [
  "వ్యక్తులను ఖైదు చేసే అధికారం",
  "జరిమానా విధించే అధికారం",
  "ధిక్కారం కోసం శిక్షించే అధికారం",
  "అరెస్ట్ వారెంట్లు జారీ చేసే అధికారం"
  ],
  correctAnswerIndex : 2,
  explanation : "అత్యున్నత న్యాయస్థానం ఏ వ్యక్తినైనా ధిక్కరించినందుకు శిక్షించే అధికారం, అతని అధికారం, గౌరవం మరియు గౌరవాన్ని నిర్ధారిస్తుంది.",
  ),

  Question(
  questionText : "భారత ప్రజాస్వామ్య రాజకీయ వ్యవస్థలో సుప్రీంకోర్టు ప్రధాన పాత్ర ఏమిటి?",
  options: [
  "కార్యనిర్వాహక పర్యవేక్షణ",
  "శాసన నిర్ణయం తీసుకోవడం",
  "ప్రాథమిక హక్కుల హామీదారు, అత్యున్నత న్యాయస్థానం అప్పీలు, రాజ్యాంగ సంరక్షకుడు",
  "రాష్ట్రపతికి సలహా సంఘం"
  ],
  correctAnswerIndex : 2,
  explanation : "భారత ప్రజాస్వామ్య రాజకీయ వ్యవస్థలో ప్రాథమిక హక్కుల హామీదారుగా, అత్యున్నత న్యాయస్థానం అప్పీల్‌గా మరియు రాజ్యాంగ సంరక్షకునిగా సుప్రీంకోర్టు కీలక పాత్ర పోషిస్తుంది.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తుల నియామక విధానం ఏమిటి?",
  options: [
  "భారత ప్రధాన న్యాయమూర్తిచే ప్రత్యక్ష నియామకం",
  "ప్రధానమంత్రి నియామకం",
  "న్యాయవ్యవస్థతో సంప్రదించి రాష్ట్రపతిచే నియామకం",
  "పార్లమెంట్ ద్వారా నియామకం"
  ],
  correctAnswerIndex : 2,
  explanation : "అత్యున్నత న్యాయస్థానం యొక్క న్యాయమూర్తులను రాష్ట్రపతి న్యాయవ్యవస్థతో సంప్రదించి నియమిస్తారు, కార్యనిర్వాహకులకు నియామకాలలో సంపూర్ణ విచక్షణ ఉండదు.",
  ),
  Question(
  questionText : "ఒక వ్యక్తి సుప్రీంకోర్టు న్యాయమూర్తిగా నియమించబడటానికి ఏ అర్హతలు అవసరం?",
  options: [
  "భారత పౌరసత్వం మాత్రమే",
  "పౌరసత్వం మరియు కనీస వయస్సు అవసరం",
  "ఐదేళ్లపాటు హైకోర్టు న్యాయమూర్తి, లేదా పదేళ్లపాటు న్యాయవాది, లేదా రాష్ట్రపతి అభిప్రాయంలో విశిష్ట న్యాయనిపుణుడు",
  "రాజకీయ అనుబంధం మరియు చట్టపరమైన నేపథ్యం"
  ],
  correctAnswerIndex : 2,
  explanation: "సుప్రీంకోర్టు న్యాయమూర్తిగా నియమించబడాలంటే, ఒక వ్యక్తి ఐదేళ్లపాటు హైకోర్టు న్యాయమూర్తిగా, పదేళ్లపాటు న్యాయవాదిగా లేదా రాష్ట్రపతి అభిప్రాయం ప్రకారం విశిష్ట న్యాయనిపుణునిగా ఉండటం వంటి అర్హతలను కలిగి ఉండాలి.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తిగా నియమితులైన వ్యక్తి కార్యాలయంలోకి ప్రవేశించే ముందు ఏ ప్రమాణం లేదా ధృవీకరణ చేయాలి?",
  options: [
  "అధికార పార్టీకి రాజకీయ విధేయత",
  "కార్యనిర్వాహక ఆదేశాలను పాటిస్తానని ప్రతిజ్ఞ",
  "భారత రాజ్యాంగం, సార్వభౌమాధికారం మరియు సమగ్రతను సమర్థిస్తానని మరియు పక్షపాతం లేకుండా విశ్వసనీయంగా విధులను నిర్వర్తిస్తానని ప్రమాణం",
  "అధికారిక విధుల కంటే వ్యక్తిగత ప్రయోజనాలకు ప్రాధాన్యత ఇస్తానని వాగ్దానం"
  ],
  correctAnswerIndex : 2,
  explanation : "సుప్రీంకోర్టు న్యాయమూర్తిగా నియమితులైన వ్యక్తి భారత రాజ్యాంగం, సార్వభౌమాధికారం మరియు సమగ్రతను సమర్థిస్తానని మరియు పక్షపాతం లేకుండా విశ్వాసపాత్రంగా విధులు నిర్వర్తిస్తానని ప్రమాణం చేయాలి.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తుల జీతాలు, అలవెన్సులు, అధికారాలు మరియు పెన్షన్‌లు ఎలా నిర్ణయించబడతాయి?",
  options: [
  "ప్రతి న్యాయమూర్తితో వ్యక్తిగత చర్చల ద్వారా",
  "ప్రధానమంత్రి కార్యాలయం ద్వారా",
  "పార్లమెంట్ ద్వారా ఎప్పటికప్పుడు",
  "అధ్యక్షుని విచక్షణాధికారాల ద్వారా"
  ],
  correctAnswerIndex : 2,
  explanation : "సుప్రీం కోర్ట్ న్యాయమూర్తుల జీతాలు, అలవెన్సులు, అధికారాలు మరియు పింఛన్లు పార్లమెంటు ద్వారా ఎప్పటికప్పుడు నిర్ణయిస్తారు.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తి పదవీ విరమణ వయస్సు ఎంత?",
  options: [
  "60 సంవత్సరాలు",
  "62 సంవత్సరాలు",
  "65 సంవత్సరాలు",
  "నిర్ణీత పదవీ విరమణ వయస్సు లేదు"
  ],
  correctAnswerIndex : 2,
  explanation: "సుప్రీంకోర్టు న్యాయమూర్తి 65 ఏళ్ల వయస్సు వచ్చే వరకు పదవిలో ఉంటారు మరియు వారి వయస్సుకు సంబంధించిన ఏదైనా ప్రశ్న పార్లమెంటు అందించిన అధికారం ద్వారా నిర్ణయించబడుతుంది.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తిని పదవి నుండి ఎలా తొలగించవచ్చు?",
  options: [
  "ప్రధానమంత్రి ఆదేశం మేరకు",
  "స్వచ్ఛంద రాజీనామా ద్వారా మాత్రమే",
  "రాష్ట్రపతి ఏకపక్ష నిర్ణయంతో",
  "పార్లమెంట్ ప్రసంగం తర్వాత రాష్ట్రపతి ఆదేశంతో"
  ],
  correctAnswerIndex : 3,
  explanation : "ప్రతి సభలో ప్రత్యేక మెజారిటీ మద్దతుతో పార్లమెంటు ప్రసంగం తర్వాత రాష్ట్రపతి ఆదేశం ద్వారా సుప్రీంకోర్టు న్యాయమూర్తిని పదవి నుండి తొలగించవచ్చు.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తిని తొలగించడానికి గల కారణాలు ఏమిటి?",
  options: [
  "రాజకీయ అసమ్మతి",
  "నిరూపితమైన దుష్ప్రవర్తన లేదా అసమర్థత",
  "కార్యనిర్వాహక ఆదేశాలను పాటించకపోవడం",
  "వయస్సు 65 సంవత్సరాలు దాటి"
  ],
  correctAnswerIndex : 1,
  explanation : "తొలగింపు కోసం నిర్దేశించిన విధంగా, నిరూపితమైన దుష్ప్రవర్తన లేదా అసమర్థత కారణంగా సుప్రీంకోర్టు న్యాయమూర్తిని తొలగించవచ్చు.",
  ),

  Question(
  questionText : "అభిశంసన ద్వారా సుప్రీంకోర్టు న్యాయమూర్తిని తొలగించే విధానాన్ని ఏ చట్టం నియంత్రిస్తుంది?",
  options: [
  "న్యాయ ప్రమాణాలు మరియు జవాబుదారీ చట్టం",
  "రాజ్యాంగ సవరణ చట్టం",
  "న్యాయమూర్తుల విచారణ చట్టం (1968)",
  "న్యాయ ప్రవర్తనా నియమావళి చట్టం"
  ],
  correctAnswerIndex : 2,
  explanation : "అభిశంసన ద్వారా సుప్రీంకోర్టు న్యాయమూర్తిని తొలగించే ప్రక్రియ న్యాయమూర్తుల విచారణ చట్టం (1968) ద్వారా నియంత్రించబడుతుంది.",
  ),

  Question(
  questionText : "సుప్రీం కోర్ట్ న్యాయమూర్తి తొలగింపు తీర్మానంపై సంతకం చేయడానికి ఎంత మంది సభ్యులు అవసరం?",
  options: [
  "10 మంది సభ్యులు",
  "25 మంది సభ్యులు",
  "లోక్ విషయంలో సభ ), లేదా 30 మంది సభ్యులు ( రాజ్యం విషయంలో సభ )",
  "75 మంది సభ్యులు"
  ],
  correctAnswerIndex : 2,
  explanation: "సుప్రీంకోర్టు న్యాయమూర్తి తొలగింపు తీర్మానంపై తప్పనిసరిగా 50 మంది సభ్యులు సంతకం చేయాలి ( లోక్ విషయంలో సభ ) లేదా 30 మంది సభ్యులు ( రాజ్యం విషయంలో సభ )",
  ),

  Question(
  questionText : " అభిశంసనను ఎదుర్కొన్న సుప్రీంకోర్టు మొదటి న్యాయమూర్తి జస్టిస్ వి. రామస్వామి కేసులో ఏమి జరిగింది ?",
  options: [
  "విజయవంతంగా అభిశంసన",
  "నిర్దోషిగా గుర్తించబడలేదు",
  "లోక్‌లో అభిశంసన తీర్మానం ఓడిపోయింది సభ ",
  "అభిశంసనకు ముందే రాజీనామా చేశారు"
  ],
  correctAnswerIndex : 2,
  explanation: "అభిశంసనను ఎదుర్కొన్న సుప్రీంకోర్టు మొదటి న్యాయమూర్తి జస్టిస్ వి. రామస్వామి కేసులో , అభిశంసన తీర్మానం లోక్‌లో ఓడిపోయింది. సభ .",
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
    home: supremeCourt_te(),
  ));
}

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

class directivePriciplesOfTheState_te extends StatefulWidget {
  final String? userIdentifier;

  directivePriciplesOfTheState_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<directivePriciplesOfTheState_te> createState() => _directivePriciplesOfTheState_teState();
}

class _directivePriciplesOfTheState_teState extends State<directivePriciplesOfTheState_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//అధ్యాయం 9 ఆదేశిక సూత్రాలు
    Question(
      questionText: "ఆదేశిక సూత్రాలు మరియు ప్రాథమిక హక్కులను 'రాజ్యాంగం యొక్క మనస్సాక్షి'గా ఎవరు వర్ణించారు?",
      options:["డా. బి.ఆర్. అంబేద్కర్", "గ్రాన్‌విల్లే ఆస్టిన్", "గాంధీ", "జవహర్‌లాల్ నెహ్రూ"],
      correctAnswerIndex: 1,
      explanation:"గ్రాన్‌విల్లే ఆస్టిన్ ఆదేశిక సూత్రాలు మరియు ప్రాథమిక హక్కులను 'రాజ్యాంగం యొక్క మనస్సాక్షి'గా అభివర్ణించారు.",
    ),
    Question(
      questionText: "ఆదేశిక సూత్రాల యొక్క ఏ వర్గం ఉదారవాద భావజాలాన్ని సూచిస్తుంది?",
      options:["సోషలిస్టిక్ ప్రిన్సిపల్స్", "గాంధీయన్ ప్రిన్సిపల్స్", "లిబరల్-ఇంటెలెక్చువల్ ప్రిన్సిపల్స్", "పైవేవీ కావు"],
      correctAnswerIndex: 2,
      explanation:"ఉదారవాద-మేధావి వర్గంలో చేర్చబడిన సూత్రాలు ఉదారవాద భావజాలాన్ని సూచిస్తాయి.",
    ),
    Question(
      questionText: "ఆదాయం, హోదా, సౌకర్యాలు మరియు అవకాశాలలో అసమానతలను తగ్గించడానికి రాష్ట్రం అవసరమయ్యే ఆదేశిక సూత్రాన్ని ఏ సవరణ జోడించింది?",
      options:["42వ సవరణ చట్టం", "44వ సవరణ చట్టం", "86వ సవరణ చట్టం", "97వ సవరణ చట్టం"],
      correctAnswerIndex: 1,
      explanation:"1978 యొక్క 44వ సవరణ చట్టం ఆదాయం, హోదా, సౌకర్యాలు మరియు అవకాశాలలో అసమానతలను తగ్గించాలని రాష్ట్రానికి అవసరమైన ఆదేశిక సూత్రాన్ని జోడించింది (ఆర్టికల్ 38).",
    ),
    Question(
      questionText: "రాజ్యాంగ నిర్మాతలు ఆదేశిక సూత్రాలను న్యాయబద్ధం కాని మరియు చట్టబద్ధంగా అమలు చేయని విధంగా ఎందుకు చేసారు?",
      options:[
        "సూత్రాలపై నమ్మకం లేకపోవడం వల్ల",
        "ప్రజా అభిప్రాయం కంటే న్యాయస్థాన విధానాలకు ప్రాధాన్యత ఇవ్వడం",
        "దేశంలో తగినంత ఆర్థిక వనరులు లేనందున",
        "రాజకీయ జవాబుదారీతనం నుండి తప్పించుకోవడానికి"
      ],
      correctAnswerIndex: 2,
      explanation:"తగినంత ఆర్థిక వనరులు లేకపోవడం, వైవిధ్యం మరియు రాష్ట్రం యొక్క క్రమం, సమయం, స్థలం మరియు అమలు విధానాన్ని నిర్ణయించాల్సిన అవసరం కారణంగా ఫ్రేమర్‌లు ఆదేశిక సూత్రాలను న్యాయబద్ధం కాకుండా చేశారు.",
    ),
    Question(
      questionText: "ఆదేశిక సూత్రాల పట్ల వారి చట్టపరమైన శక్తికి సంబంధించి ఎలాంటి విమర్శలు వచ్చాయి?",
      options:[
        "వారు 21వ శతాబ్దానికి కాలం చెల్లినవిగా పరిగణించబడ్డారు.",
        "వాటిని బ్యాంకులో చెక్కుతో పోల్చారు.",
        "వారు అశాస్త్రీయమైన ఏర్పాటు కోసం విమర్శించబడ్డారు.",
        "అవి రాజ్యాంగ వివాదాలకు దారితీస్తాయి."
      ],
      correctAnswerIndex: 1,
      explanation:"చట్టపరమైన శక్తికి సంబంధించిన విమర్శ వాటిని బ్యాంక్‌లోని చెక్కుతో పోల్చినట్లు సూచిస్తుంది, వనరులు అనుమతించినప్పుడు మాత్రమే చెల్లించాలి.",
    ),
    Question(
      questionText: "M.C. చాగ్లా ప్రకారం, అన్ని ఆదేశిక సూత్రాలు పూర్తిగా అమలు చేయబడితే భారతదేశం ఎలా ఉంటుంది?",
      options:[
        "రాజకీయ కోణంలో ప్రజాస్వామ్యం",
        "ఒక నియంతృత్వం",
        "భూమిపై స్వర్గం",
        "సోషలిస్టు రాజ్యం"
      ],
      correctAnswerIndex: 2,
      explanation:"అన్ని ఆదేశిక సూత్రాలను పూర్తిగా అమలు చేస్తే, భారతదేశం భూమిపై స్వర్గంగా ఉంటుందని M.C. చాగ్లా అభిప్రాయాన్ని వ్యక్తం చేశారు.",
    ),
    Question(
      questionText: "చంపకం దొరైరాజన్ కేసు (1951), ప్రాథమిక హక్కులు మరియు ఆదేశిక సూత్రాల మధ్య వైరుధ్యానికి సంబంధించి సుప్రీంకోర్టు ఏమి తీర్పునిచ్చింది?",
      options:[
        "ప్రాథమిక హక్కుల కంటే నిర్దేశక సూత్రాలు ప్రబలంగా ఉంటాయి",
        "ఆదేశిక సూత్రాల కంటే ప్రాథమిక హక్కులు ప్రబలంగా ఉంటాయి",
        "ఇద్దరి బరువు సమానం",
        "ఏ వైరుధ్యం ప్రస్తావించబడలేదు"
      ],
      correctAnswerIndex: 1,
      explanation:"చంపకం దొరైరాజన్ కేసు (1951)లో, ప్రాథమిక హక్కులు మరియు ఆదేశిక సూత్రాల మధ్య ఏదైనా వైరుధ్యం ఏర్పడితే, ప్రాథమిక హక్కులు ప్రబలంగా ఉంటాయని సుప్రీంకోర్టు తీర్పు చెప్పింది.",
    ),
    Question(
      questionText: "దేశం యొక్క ప్రణాళికాబద్ధమైన అభివృద్ధి కోసం 2015లో ప్రణాళికా సంఘం స్థానంలో ఏ సంస్థ వచ్చింది?",
      options:[
        "నేషనల్ ఇన్స్టిట్యూషన్ ఫర్ ట్రాన్స్‌ఫార్మింగ్ ఇండియా (NITI ఆయోగ్)",
        "యూనియన్ ప్లానింగ్ బోర్డు",
        "జాతీయ అభివృద్ధి మండలి",
        "ఆర్థిక సలహా మండలి"
      ],
      correctAnswerIndex: 0,
      explanation:"2015లో, ప్రణాళికా సంఘం దేశం యొక్క ప్రణాళికాబద్ధమైన అభివృద్ధి కోసం నేషనల్ ఇన్స్టిట్యూషన్ ఫర్ ట్రాన్స్‌ఫార్మింగ్ ఇండియా (NITI ఆయోగ్) అనే కొత్త సంస్థ ద్వారా భర్తీ చేయబడింది.",
    ),
    Question(
      questionText: "రాజ్యాంగంలోని 16వ భాగంలోని ఏ ఆర్టికల్‌లో పరిపాలనా సామర్థ్యాన్ని పరిగణనలోకి తీసుకుని, సేవలకు సంబంధించి SCలు మరియు STల వాదనలతో వ్యవహరిస్తారు?",
      options:[
        "ఆర్టికల్ 330",
        "ఆర్టికల్ 332",
        "ఆర్టికల్ 335",
        "ఆర్టికల్ 337"
      ],
      correctAnswerIndex: 2,
      explanation:"16వ భాగంలోని ఆర్టికల్ 335 షెడ్యూల్డ్ కులాలు మరియు షెడ్యూల్డ్ తెగల సభ్యుల సేవలకు సంబంధించిన దావాలతో వ్యవహరిస్తుంది, పరిపాలనా సామర్థ్యం నిర్వహణను పరిగణనలోకి తీసుకుంటుంది.",
    ),
    Question(
      questionText: "రాజ్యాంగంలోని ఆర్టికల్ 39 ప్రకారం, సంఘం యొక్క భౌతిక వనరుల పంపిణీకి సంబంధించిన లక్ష్యం ఏమిటి?",
      options:[
        "సంపద మరియు ఉత్పత్తి సాధనాల కేంద్రీకరణ నిరోధం",
        "పురుషులు మరియు స్త్రీలకు సమాన పనికి సమాన వేతనం",
        "సహకార సంఘాల స్వచ్ఛంద ఏర్పాటును ప్రోత్సహించడం",
        "స్మారక చిహ్నాలు, స్థలాలు మరియు కళాత్మక లేదా చారిత్రక ఆసక్తి ఉన్న వస్తువుల రక్షణ"
      ],
      correctAnswerIndex: 0,
      explanation:"ఆర్టికల్ 39 సామాజిక ఆర్డర్ పెర్మ్‌ను భద్రపరచడం లక్ష్యంగా పెట్టుకుందిన్యాయం-సామాజిక, ఆర్థిక మరియు రాజకీయాల ద్వారా తినబడుతుంది మరియు సంపద మరియు ఉత్పత్తి సాధనాల కేంద్రీకరణను నిరోధించే లక్ష్యాన్ని కలిగి ఉంటుంది.",
    ),
    Question(
      questionText: "1976 యొక్క ఏ సవరణ చట్టం అసలు జాబితాకు నాలుగు కొత్త ఆదేశిక సూత్రాలను జోడించింది?",
      options:[
        "42వ సవరణ చట్టం",
        "44వ సవరణ చట్టం",
        "86వ సవరణ చట్టం",
        "97వ సవరణ చట్టం"
      ],
      correctAnswerIndex: 0,
      explanation:"42వ సవరణ చట్టం 1976 అసలు జాబితాకు నాలుగు కొత్త ఆదేశిక సూత్రాలను జోడించింది.",
    ),
    Question(
      questionText: "ప్రాథమిక హక్కులు మరియు ఆదేశిక సూత్రాల మధ్య కీలకమైన తేడా ఏమిటి?",
      options:[
        "ప్రాథమిక హక్కులు ప్రతికూలమైనవి, ఆదేశిక సూత్రాలు సానుకూలమైనవి.",
        "ప్రాథమిక హక్కులు న్యాయమైనవి కావు, అయితే ఆదేశిక సూత్రాలు న్యాయమైనవి.",
        "ప్రాథమిక హక్కులు సామాజిక మరియు ఆర్థిక ప్రజాస్వామ్యాన్ని లక్ష్యంగా చేసుకుంటాయి, అయితే ఆదేశిక సూత్రాలు రాజకీయ ప్రజాస్వామ్యాన్ని లక్ష్యంగా చేసుకుంటాయి.",
        "ప్రాథమిక హక్కులకు నైతిక మరియు రాజకీయ ఆంక్షలు ఉంటాయి, అయితే ఆదేశిక సూత్రాలకు చట్టపరమైన ఆంక్షలు ఉంటాయి."
      ],
      correctAnswerIndex: 0,
      explanation:"ఒక ముఖ్యమైన వ్యత్యాసం ఏమిటంటే, ప్రాథమిక హక్కులు ప్రతికూలంగా ఉంటాయి, ఎందుకంటే అవి కొన్ని పనులను చేయకుండా రాష్ట్రాన్ని నిషేధిస్తాయి, అయితే ఆదేశిక సూత్రాలు సానుకూలంగా ఉంటాయి, ఎందుకంటే అవి కొన్ని పనులను చేయవలసి ఉంటుంది.",
    ),
    Question(
      questionText: "రాష్ట్ర విధాన నిర్దేశక సూత్రాల పట్ల ఏ విమర్శలు వచ్చాయి?",
      options:[
        "వాటికి చట్టపరమైన బలం లేదు, వారిని 'పవిత్రమైన అతిశయోక్తి'లా చేస్తుంది.",
        "అవి అశాస్త్రీయంగా అమర్చబడి ఉంటాయి మరియు స్థిరమైన తత్వశాస్త్రం లేదు.",
        "వారు 19వ శతాబ్దపు ఇంగ్లండ్ రాజకీయ తత్వశాస్త్రాన్ని ప్రతిబింబిస్తూ సంప్రదాయవాదులుగా పరిగణించబడ్డారు.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:"డైరెక్టివ్ ప్రిన్సిపల్స్ చట్టపరమైన శక్తి లేకపోవడం, అశాస్త్రీయంగా ఏర్పాటు చేయడం మరియు సాంప్రదాయిక రాజకీయ తత్వాన్ని ప్రతిబింబిస్తున్నాయని విమర్శించబడ్డాయి.",
    ),

    Question(
      questionText: "ప్రాథమిక హక్కులలో దేనినైనా సంక్షిప్తం చేసే లేదా తొలగించే అధికారం పార్లమెంటుకు ఉందని ఏ సవరణ చట్టం ప్రకటించింది?",
      options:["24వ సవరణ చట్టం (1971)", "25వ సవరణ చట్టం (1971)", "42వ సవరణ చట్టం (1976)", "44వ సవరణ చట్టం (1978)"],
      correctAnswerIndex: 0,
      explanation:"24వ సవరణ చట్టం (1971) రాజ్యాంగ సవరణ చట్టాలను రూపొందించడం ద్వారా ఏదైనా ప్రాథమిక హక్కులను సంక్షిప్తీకరించడానికి లేదా తీసివేయడానికి పార్లమెంటుకు అధికారం ఉందని ప్రకటించింది.",
    ),
    Question(
      questionText: "కేశవానంద భారతి కేసులో (1973) సుప్రీంకోర్టు రాజ్యాంగ విరుద్ధమని ఏది ప్రకటించింది?",
      options:["ఆర్టికల్ 31C యొక్క మొదటి నిబంధన", "ఆర్టికల్ 31C యొక్క రెండవ నిబంధన", "ఆర్టికల్ 39 (బి) మరియు (సి)", "ఆర్టికల్ 14 మరియు ఆర్టికల్ 19"],
      correctAnswerIndex: 1,
      explanation:"కేశవానంద భారతి కేసులో (1973) ఆర్టికల్ 31C యొక్క రెండవ నిబంధనను సుప్రీంకోర్టు రాజ్యాంగ విరుద్ధమని ప్రకటించింది, న్యాయ సమీక్ష అనేది రాజ్యాంగం యొక్క ప్రాథమిక లక్షణం మరియు దానిని తీసివేయలేమని పేర్కొంది.",
    ),
    Question(
      questionText: "ఆదేశిక సూత్రాలను అమలు చేయడానికి ఏదైనా చట్టాన్ని చేర్చడానికి ఆర్టికల్ 31C పరిధిని ఏ సవరణ చట్టం పొడిగించింది?",
      options:["24వ సవరణ చట్టం (1971)", "42వ సవరణ చట్టం (1976)", "44వ సవరణ చట్టం (1978)", "73వ సవరణ చట్టం (1992)"],
      correctAnswerIndex: 1,
      explanation:"42వ సవరణ చట్టం (1976) ఆదేశిక సూత్రాలను అమలు చేయడానికి ఏదైనా చట్టాన్ని చేర్చడానికి ఆర్టికల్ 31C పరిధిని పొడిగించింది, అయితే ఈ పొడిగింపు తర్వాత మినర్వా మిల్స్ కేసు (1980)లో రాజ్యాంగ విరుద్ధమని ప్రకటించబడింది.",
    ),
    Question(
      questionText: "44వ సవరణ చట్టం (1978) ఆర్టికల్ 31కి సంబంధించి ఏమి చేసింది?",
      options:["విస్మరించబడిన ఆర్టికల్ 31", "విస్తరించిన ఆర్టికల్ 31C", "సవరించబడిన ఆర్టికల్ 31", "ఆర్టికల్ 31 భర్తీ చేయబడింది"],
      correctAnswerIndex: 0,
      explanation:"44వ సవరణ చట్టం (1978) రాజ్యాంగం నుండి ఆర్టికల్ 31ని తొలగించింది.",
    ),
    Question(
      questionText: "జాతీయ షెడ్యూల్డ్ కులాలు మరియు షెడ్యూల్డ్ తెగల కమిషన్‌ను ఏ సవరణ చట్టం రెండు వేర్వేరు సంస్థలుగా విభజించింది?",
      options:["65వ సవరణ చట్టం (1990)", "89వ సవరణ చట్టం (2003)", "103వ సవరణ చట్టం (2019)", "122వ సవరణ చట్టం (2018)"],
      correctAnswerIndex: 1,
      explanation:"89వ సవరణ చట్టం (2003) షెడ్యూల్డ్ కులాలు మరియు షెడ్యూల్డ్ తెగల కోసం జాతీయ కమిషన్‌ను రెండు వేర్వేరు సంస్థలుగా విభజించింది, అవి షెడ్యూల్డ్ కులాల జాతీయ కమిషన్ మరియు షెడ్యూల్డ్ తెగల జాతీయ కమిషన్.",
    ),
    Question(
      questionText: "2019 103వ సవరణ చట్టం ద్వారా ఏ రిజర్వేషన్లు అందించబడ్డాయి?",
      options:["విద్యా సంస్థల్లో మహిళలకు రిజర్వేషన్", "ఆర్థికంగా బలహీన వర్గాలకు (EWS) రిజర్వేషన్", "వెనుకబడిన తరగతులకు రిజర్వేషన్", "SC మరియు STలకు రిజర్వేషన్"],
      correctAnswerIndex: 1,
      explanation:"2019 103వ సవరణ చట్టం భారత ప్రభుత్వంలోని విద్యా సంస్థలు మరియు సివిల్ పోస్టులు మరియు సేవలలో ప్రవేశాలలో ఆర్థికంగా బలహీన వర్గాలకు (EWSs) 10% రిజర్వేషన్‌ను అందించింది.",
    ),
    Question(
      questionText: "పేదలకు ఉచిత మరియు సమర్థ న్యాయ సహాయాన్ని అందించడానికి దేశవ్యాప్త నెట్‌వర్క్‌ను ఏ చట్టం ఏర్పాటు చేసింది?",
      options:["లీగల్ సర్వీసెస్ అథారిటీస్ యాక్ట్ (1987)", "మెటర్నిటీ బెనిఫిట్ యాక్ట్ (1961)", "సమాన వేతన చట్టం (1976)", "బాల కార్మిక నిషేధం మరియు నియంత్రణ చట్టం (1986)"],
      correctAnswerIndex: 0,
      explanation:"లీగల్ సర్వీసెస్ అథారిటీస్ యాక్ట్ (1987) పేదలకు ఉచిత మరియు సమర్థ న్యాయ సహాయాన్ని అందించడానికి మరియు సమాన న్యాయాన్ని ప్రోత్సహించడానికి లోక్ అదాలత్ నిర్వహించడానికి దేశవ్యాప్తంగా నెట్‌వర్క్‌ను ఏర్పాటు చేసింది.",
    ),
    Question(
      questionText: "ప్రజల జీవన ప్రమాణాలను పెంచడం కోసం ఏ కార్యక్రమం ప్రారంభించబడింది మరియు చట్టపరమైన వివాదాలను సామరస్యపూర్వకంగా పరిష్కరించేందుకు చట్టబద్ధమైన వేదిక ఏది?",
      options:["కనీస అవసరాల కార్యక్రమం (1974)", "జవహర్ రోజ్‌గార్ యోజన (1989)", "సమగ్ర గ్రామీణాభివృద్ధి కార్యక్రమం (1978)", "జాతీయ గ్రామీణ ఉపాధి హామీ కార్యక్రమం (2006)"],
      correctAnswerIndex: 3,
      explanation:"జాతీయ గ్రామీణ ఉపాధి హామీ కార్యక్రమం (2006) ప్రజల జీవన ప్రమాణాలను పెంచడం కోసం ప్రారంభించబడింది మరియు ఇది చట్టపరమైన వివాదాల సామరస్య పరిష్కారానికి చట్టబద్ధమైన వేదిక.",
    ),
    Question(
      questionText: "రాష్ట్ర ప్రభుత్వ సేవలలో కార్యనిర్వాహక వ్యవస్థ నుండి న్యాయవ్యవస్థను ఏ చట్టం వేరు చేసింది?",
      options:["ఫ్యాక్టరీల చట్టం (1948)", "గనుల చట్టం (1952)", "పారిశ్రామిక వివాదాల చట్టం (1947)", "క్రిమినల్ ప్రొసీజర్ కోడ్ (1973)"],
      correctAnswerIndex: 3,
      explanation:"క్రిమినల్ ప్రొసీజర్ కోడ్ (1973) రాష్ట్ర ప్రభుత్వ సేవలలో కార్యనిర్వాహక నుండి న్యాయవ్యవస్థను వేరు చేసింది, కార్యనిర్వాహక అధికారుల నుండి న్యాయపరమైన అధికారాలను తీసివేయడం.",
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
    home: directivePriciplesOfTheState_te(),
  ));
}

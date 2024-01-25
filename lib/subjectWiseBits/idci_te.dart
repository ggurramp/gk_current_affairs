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

class idci_te extends StatefulWidget {
  final String? userIdentifier;

  idci_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<idci_te> createState() => _idci_teState();
}

class _idci_teState extends State<idci_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//91 . రాజ్యాంగ వివరణ యొక్క ముఖ్యమైన సిద్ధాంతాలు

    Question(
      questionText: "విచ్ఛిన్నత సిద్ధాంతానికి మరో పేరు ఏమిటి?",
      options:["విభజన సిద్ధాంతం", "అస్థిరత సిద్ధాంతం", "రాజ్యాంగం యొక్క సిద్ధాంతం", "రాజ్యాంగ విరుద్ధ సిద్ధాంతం"],
      correctAnswerIndex: 1,
      explanation:"విచ్ఛిన్నత సిద్ధాంతాన్ని విభజన సిద్ధాంతం అని కూడా పిలుస్తారు, ఇది రాజ్యాంగ విరుద్ధమైనదిగా ప్రకటించబడిన చట్టాల చెల్లుబాటును పరిష్కరించే లక్ష్యంతో ఉంది.",
    ),

    Question(
      questionText: "విచ్ఛిన్నత సిద్ధాంతానికి ఏ వ్యాసం ఆధారం?",
      options:["ఆర్టికల్ 14", "ఆర్టికల్ 19", "ఆర్టికల్ 21", "ఆర్టికల్ 13"],
      correctAnswerIndex: 3,
      explanation:"13వ అధికరణ విచ్ఛేదనం సిద్ధాంతానికి ప్రాతిపదికగా పనిచేస్తుంది. ఇది ప్రాథమిక హక్కులకు విరుద్ధంగా రాజ్యాంగానికి ముందు మరియు రాజ్యాంగానంతర చట్టాలతో వ్యవహరిస్తుంది.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 13(1) రాజ్యాంగ పూర్వ చట్టాల గురించి ఏమి ప్రకటిస్తుంది?",
      options:[
        "ఆదేశిక సూత్రాలకు విరుద్ధంగా ఉన్నంత వరకు రాజ్యాంగానికి ముందు ఉన్న అన్ని చట్టాలు చెల్లవని ఇది ప్రకటించింది.",
        "ప్రాథమిక హక్కులతో అస్థిరత మేరకు రాజ్యాంగ పూర్వ చట్టాలన్నీ చెల్లవని ఇది ప్రకటించింది.",
        "రాజ్యాంగానికి పూర్వపు చట్టాలన్నీ రాజ్యాంగానికి విరుద్ధంగా ఉంటే అవి చెల్లుబాటు కాదని ఇది ప్రకటిస్తుంది.",
        "ఇది ప్రాథమిక హక్కులతో అస్థిరతతో సంబంధం లేకుండా అన్ని రాజ్యాంగ పూర్వ చట్టాలను చెల్లుబాటు అయ్యేదిగా ప్రకటించింది."
      ],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 13(1) ప్రాథమిక హక్కులకు విరుద్ధంగా ఉన్నంత వరకు రాజ్యాంగానికి ముందు ఉన్న అన్ని చట్టాలు చెల్లవని ప్రకటించింది.",
    ),

    Question(
      questionText: "రాష్ట్రం ఏమి చేయకుండా ఆర్టికల్ 13(2) నిషేధిస్తుంది?",
      options:[
        "రాజ్యాంగానికి ఎలాంటి సవరణలు చేయకుండా రాష్ట్రాన్ని నిషేధిస్తుంది.",
        "ప్రాథమిక హక్కులకు విరుద్ధంగా ఎలాంటి చట్టాలను రూపొందించకుండా రాష్ట్రాన్ని నిషేధిస్తుంది.",
        "మతానికి సంబంధించిన ఎలాంటి చట్టాలు చేయకుండా రాష్ట్రాన్ని నిషేధిస్తుంది.",
        "వాణిజ్యం మరియు వాణిజ్యానికి సంబంధించిన ఎటువంటి చట్టాలను రూపొందించకుండా రాష్ట్రాన్ని నిషేధిస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 13(2) ప్రాథమిక హక్కులను తొలగించే లేదా కుదించే ఎలాంటి చట్టాలను రూపొందించకుండా రాష్ట్రాన్ని నిషేధిస్తుంది మరియు అటువంటి చట్టాలు ఉల్లంఘన మేరకు చెల్లవు.",
    ),

    Question(
      questionText: "చట్టం యొక్క చెల్లుబాటు అయ్యే భాగాలు చెల్లని భాగాల నుండి వేరు చేయబడతాయో లేదో నిర్ణయించడంలో నిర్ణయించే అంశం ఏమిటి?",
      options:[
        "న్యాయవ్యవస్థ ఉద్దేశాలు",
        "అధ్యక్షుని ఉద్దేశాలు",
        "పార్లమెంట్ ఉద్దేశాలు",
        "శాసనసభ ఉద్దేశాలు"
      ],
      correctAnswerIndex: 3,
      explanation:"చట్టం యొక్క చెల్లుబాటు అయ్యే భాగాలు చెల్లని భాగాల నుండి వేరు చేయబడతాయో లేదో నిర్ణయించడంలో, శాసనసభ యొక్క ఉద్దేశాలు నిర్ణయించే అంశం.",
    ),

    Question(
      questionText: "విచ్ఛిన్నత సిద్ధాంతం ప్రకారం, చెల్లుబాటు అయ్యే మరియు చెల్లని నిబంధనలు విడదీయరాని విధంగా కలగలిసి ఉంటే ఏమి జరుగుతుంది?",
      options:[
        "చెల్లని భాగం కొట్టివేయబడింది మరియు మిగిలిన శాసనం చెల్లుబాటులో ఉంటుంది.",
        "ఒక భాగం చెల్లనిది మొత్తం శాసనం యొక్క చెల్లుబాటుకు దారి తీస్తుంది.",
        "చట్టం అమలు చేయలేనిదిగా మారుతుంది.",
        "మిక్సింగ్‌తో సంబంధం లేకుండా శాసనం చెల్లుబాటు అవుతుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"చెల్లుబాటు అయ్యే మరియు చెల్లని నిబంధనలు విడదీయలేనంతగా కలగలిసి ఉంటే, ఒక భాగం చెల్లనిది మొత్తం శాసనం చెల్లనిదిగా మారుతుంది.",
    ),

    Question(
      questionText: "విభజన సమస్యపై శాసనపరమైన ఉద్దేశాన్ని నిర్ణయించడంలో ఏమి పరిగణించబడుతుంది?",
      options:[
        "చట్టం యొక్క వచనం మాత్రమే",
        "చట్టం యొక్క చరిత్ర మాత్రమే",
        "చట్టం యొక్క వస్తువు మాత్రమే",
        "చట్టం యొక్క చరిత్ర, దాని వస్తువు, శీర్షిక మరియు ఉపోద్ఘాతం"
      ],
      correctAnswerIndex: 3,
      explanation:"విభజన యొక్క ప్రశ్నపై శాసనపరమైన ఉద్దేశ్యాన్ని నిర్ణయించడంలో, చట్టం యొక్క చరిత్ర, దాని వస్తువు, శీర్షిక మరియు ఉపోద్ఘాతాన్ని పరిగణనలోకి తీసుకోవడం చట్టబద్ధం.",
    ),

    Question(
      questionText: "కిహోటో హోలోహన్ వర్సెస్ జచిల్హు (1992) కేసులో సుప్రీంకోర్టు రాజ్యాంగ విరుద్ధమని ఏది ప్రకటించింది?",
      options:[
        "పదో షెడ్యూల్ యొక్క పేరా 7",
        "పదో షెడ్యూల్ యొక్క పేరా 2",
        "పదో షెడ్యూల్‌లోని 10వ పేరా",
        "పదో షెడ్యూల్‌లోని 5వ పేరా"
      ],
      correctAnswerIndex: 0,
      explanation:"కిహోటో హోలోహన్ వర్సెస్ జచిల్హు (1992) కేసులో, ఆర్టికల్ 368(2)ని ఉల్లంఘించినందుకు పదో షెడ్యూల్‌లోని 7వ పేరా రాజ్యాంగ విరుద్ధమని సుప్రీం కోర్టు ప్రకటించింది.",
    ),

    Question(
      questionText: "చట్టపరమైన సిద్ధాంతాల సందర్భంలో మాఫీ ఎలా నిర్వచించబడింది?",
      options:[
        "ఒక విధిని స్వచ్ఛందంగా వదులుకోవడం.",
        "హక్కును ఉద్దేశపూర్వకంగా వదులుకోవడం.",
        "హక్కును ఉద్దేశపూర్వకంగా వదులుకోవడం.",
        "ఒక ప్రత్యేక హక్కును బలవంతంగా వదిలివేయడం."
      ],
      correctAnswerIndex: 2,
      explanation:"మాఫీ అనేది ఇప్పటికే ఉన్న చట్టపరమైన హక్కు, ప్రయోజనం, ప్రయోజనం, దావా లేదా ప్రత్యేక హక్కును ఉద్దేశపూర్వకంగా వదులుకోవడంతో కూడిన హక్కును ఉద్దేశపూర్వకంగా వదులుకోవడంగా నిర్వచించబడింది.",
    ),

    Question(
      questionText: "మాఫీ సిద్ధాంతం భారతదేశంలోని ప్రాథమిక హక్కులకు వర్తిస్తుందా?",
      options:["అవును", "కాదు"],
      correctAnswerIndex: 1,
      explanation:"మాఫీ సిద్ధాంతం భారతదేశంలోని ప్రాథమిక హక్కులకు వర్తించదు. భారత సందర్భంలో పౌరుడు ప్రాథమిక హక్కులను వదులుకోలేరు.",
    ),

    Question(
      questionText: "భారతదేశంలో ప్రాథమిక హక్కులకు మాఫీ సిద్ధాంతం యొక్క అన్వయం గురించి సుప్రీం కోర్ట్ ఏమి గమనించింది?",
      options:[
        "ఇది పబ్లిక్ పాలసీకి ఉపయోగపడేంత వరకు ప్రాథమిక హక్కులు మాఫీ చేయబడతాయి.",
        "ప్రాథమిక హక్కులు రాష్ట్రంపై తప్పనిసరి మరియు రాజ్యాంగ లక్ష్యాలకు అవసరమైనందున వాటిని వదులుకోలేము.",
        "ప్రాథమిక హక్కులు వ్యక్తికి ప్రయోజనకరమైనవిగా భావించనట్లయితే వాటిని రద్దు చేయవచ్చు.",
        "రాజ్యాంగ విధానం ప్రకారం ప్రాథమిక హక్కులను వదులుకోవచ్చు."
      ],
      correctAnswerIndex: 2,
      explanation:"భారతదేశంలో ప్రాథమిక హక్కులు మాఫీ చేయబడవు, ఎందుకంటే అవి రాష్ట్రంపై తప్పనిసరి మరియు ఉపోద్ఘాతంలో పేర్కొన్న లక్ష్యాలను సాధించడానికి అవసరం.",
    ),

    Question(
      questionText: "బెహ్రామ్ ఖుర్షీద్ పెసికాకా వర్సెస్ స్టేట్ ఆఫ్ బాంబే (1954) కేసులో ప్రాథమిక హక్కుల మాఫీకి సంబంధించి సుప్రీం కోర్టు ఏమని పేర్కొంది?",
      options:[
        "ఒక క్రిమినల్ ప్రాసిక్యూషన్‌లో, నిందితుడు తన ప్రాథమిక హక్కులను వదులుకోవచ్చు మరియు దోషిగా నిర్ధారించబడవచ్చు.",
        "నిందితుడైన వ్యక్తి తన ప్రాథమిక హక్కులను వదులుకోవడానికి మరియు దోషిగా నిర్ధారించడానికి తెరవబడుతుంది.",
        "నిందితుడైన వ్యక్తి క్రిమినల్ ప్రాసిక్యూషన్‌లో తన ప్రాథమిక హక్కులను వదులుకోలేడు.",
        "ప్రాథమిక హక్కుల మాఫీ అనేది క్రిమినల్ నేరం యొక్క స్వభావంపై షరతులతో కూడుకున్నది."
      ],
      correctAnswerIndex: 2,
      explanation:"బెహ్రామ్ ఖుర్షీద్ పెసికాకా వర్సెస్ స్టేట్ ఆఫ్ బాంబే (1954) కేసులో, క్రిమినల్ ప్రాసిక్యూషన్‌లో, నిందితుడు తన ప్రాథమిక హక్కులను వదులుకోవడానికి మరియు దోషిగా నిర్ధారించడానికి అనుమతించబడదని సుప్రీంకోర్టు పేర్కొంది.",
    ),

    Question(
      questionText: "ప్రాథమిక హక్కుల మాఫీకి సంబంధించి ఓల్గా టెల్లిస్ వర్సెస్ బాంబే మున్సిపల్ కార్పొరేషన్ (1985) కేసులో సుప్రీంకోర్టు ఏమి పేర్కొంది?",
      options:[
        "సమాజం ప్రయోజనం కోసం ఒక వ్యక్తి ప్రాథమిక హక్కులను వదులుకోవచ్చు.",
        "ప్రాథమిక హక్కులు ఏ చట్టం ద్వారా మాఫీ చేయబడవు మరియు రాజ్యాంగానికి వ్యతిరేకంగా ఎటువంటి ఎస్టోపెల్ ఉండకూడదు.",
        "ప్రజా ప్రయోజనాలకు ఆటంకం కలిగిస్తే ప్రాథమిక హక్కులు మాఫీ చేయబడతాయి.",
        "ప్రాథమిక హక్కుల మాఫీ వ్యక్తి యొక్క సమ్మతికి లోబడి ఉంటుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"ఓల్గా టెల్లిస్ వర్సెస్ బాంబే మునిసిపల్ కార్పొరేషన్ (1985) కేసులో, ఒక వ్యక్తి తనకు ఏ చట్టం ద్వారా అందించబడిన ప్రాథమిక హక్కులలో దేనినీ వదులుకోలేడని మరియు రాజ్యాంగానికి వ్యతిరేకంగా ఎటువంటి ఎస్టోపెల్ ఉండదని సుప్రీం కోర్టు పేర్కొంది.",
    ),

    Question(
      questionText: "నార్ సింగ్ పాల్ వర్సెస్ యూనియన్ ఆఫ్ ఇండియా (2000)లో సుప్రీంకోర్టు ప్రకారం, రాజ్యాంగంలోని ప్రాథమిక హక్కుల గురించి ఏమి పునరుద్ఘాటించారు?",
      options:[
        "ప్రాథమిక హక్కులను వక్రమార్చి చేయవచ్చు.",
        "కొన్ని షరతులలో ప్రాథమిక హక్కులు రాజీ పడవచ్చు.",
        "ప్రాథమిక హక్కుల సాధనకు వ్యతిరేకంగా ఎస్టోపెల్ ఉండవచ్చు.",
        "ప్రాథమిక హక్కులను విడనాడలేము లేదా రాజీ పడలేము, అలాగే ప్రాథమిక హక్కుల సాధనకు వ్యతిరేకంగా ఎటువంటి ఎస్టోపెల్ ఉండకూడదు."
      ],
      correctAnswerIndex: 3,
      explanation:"నార్ సింగ్ పాల్ వర్సెస్ యూనియన్ ఆఫ్ ఇండియా (2000)లో, రాజ్యాంగంలోని ప్రాథమిక హక్కులను వక్రీకరించడం లేదా రాజీ పడడం సాధ్యం కాదని, అలాగే ప్రాథమిక హక్కుల సాధనకు వ్యతిరేకంగా ఎలాంటి ఎస్టోపెల్ ఉండదని సుప్రీంకోర్టు పునరుద్ఘాటించింది.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 13(1) సందర్భంలో గ్రహణం సిద్ధాంతం యొక్క సారాంశం ఏమిటి?",
      options:[
        "ప్రాథమిక హక్కులకు విరుద్ధంగా ఉన్న రాజ్యాంగ పూర్వ చట్టం దాని ప్రారంభం నుండి శూన్యం.",
        "ప్రాథమిక హక్కులకు విరుద్ధంగా ఉన్న రాజ్యాంగ పూర్వ చట్టం రాజ్యాంగం యొక్క తేదీ నుండి పనిచేయదు.",
        "ప్రాథమిక హక్కులకు విరుద్ధంగా ఉన్న రాజ్యాంగ పూర్వ చట్టం పూర్తిగా తుడిచిపెట్టుకుపోతుంది.",
        "ప్రాథమిక హక్కులకు విరుద్ధమైన రాజ్యాంగ పూర్వ చట్టం పూర్తిగా అమలులో ఉంది."
      ],
      correctAnswerIndex: 1,
      explanation:"గ్రహణం యొక్క సిద్ధాంతం ప్రాథమిక హక్కులకు విరుద్ధమైన రాజ్యాంగ పూర్వ చట్టాలకు సంబంధించినది, రాజ్యాంగం యొక్క తేదీ నుండి వాటిని పనికిరానిదిగా చేస్తుంది, ప్రాథమిక హక్కులతో కప్పివేయబడింది కానీ పూర్తిగా తుడిచిపెట్టబడదు.",
    ),

    Question(
      questionText: "గ్రహణం యొక్క సిద్ధాంతం ప్రకారం, ప్రాథమిక హక్కులకు విరుద్ధంగా ఉన్న రాజ్యాంగ పూర్వ చట్టం ఎప్పుడు శూన్యం అవుతుంది?",
      options:[
        "ప్రారంభం నుండి.",
        "రాజ్యాంగ సవరణ అమలులోకి వచ్చిన తర్వాత.",
        "కోర్టులో సవాలు చేస్తే.",
        "రాజ్యాంగం ప్రారంభమైన తర్వాత."
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రాథమిక హక్కులకు విరుద్ధంగా ఉన్న రాజ్యాంగ పూర్వ చట్టం గ్రహణ సిద్ధాంతం ప్రకారం, రాజ్యాంగం ప్రారంభమైన తేదీ నుండి శూన్యం లేదా పనికిరానిది అవుతుంది.",
    ),

    Question(
      questionText: "ప్రాథమిక హక్కులతో మరుగున పడిన, రాజ్యాంగబద్ధమైన మరియు మళ్లీ అమలు చేయదగిన రాజ్యాంగ పూర్వ చట్టాన్ని ఏ పరిస్థితులు చేయవచ్చు?",
      options:[
        "రాజ్యాంగం యొక్క తదుపరి సవరణ.",
        "రాష్ట్రపతి నుండి ఆమోదం.",
        "సుప్రీం కోర్ట్ నుండి ఒక తీర్పు.",
        "పౌరుల నుండి సమ్మతి."
      ],
      correctAnswerIndex: 0,
      explanation:"ప్రాథమిక హక్కుల ద్వారా రాజ్యాంగ పూర్వ చట్టంపై పడిన నీడను తొలగించి, దానిని రాజ్యాంగబద్ధంగా చేసి, తదుపరి రాజ్యాంగ సవరణ ద్వారా మళ్లీ అమలు చేయవచ్చు.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్ ఏ సందర్భంలో గ్రహణ సిద్ధాంతాన్ని చెప్పింది?",
      options:[
        "బశేషర్ నాథ్ వర్సెస్ కమీషనర్ ఆఫ్ ఇన్ కమ్ టాక్స్ (1958)",
        "దీప్ చంద్ వర్సెస్ ఉత్తరప్రదేశ్ రాష్ట్రం (1959)",
        "భికాజీ నారాయణ్ ధాక్రాస్ వర్సెస్ స్టేట్ ఆఫ్ MP (1955)",
        "దులారే లోధ్ వర్సెస్ స్టేట్ ఆఫ్ వెస్ట్ బెంగాల్ (1984)"
      ],
      correctAnswerIndex: 2,
      explanation:"భికాజీ నారాయణ్ ధాక్రాస్ వర్సెస్ స్టేట్ ఆఫ్ MP (1955) కేసులో సుప్రీం కోర్ట్ గ్రహణ సిద్ధాంతాన్ని ప్రకటించింది.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్ ప్రకారం రాజ్యాంగానంతర చట్టాలకు గ్రహణ సిద్ధాంతం వర్తిస్తుందా?",
      options:["అవును", "కాదు"],
      correctAnswerIndex: 1,
      explanation:"గ్రహణం యొక్క సిద్ధాంతం రాజ్యాంగానికి ముందున్న చట్టాలకు మాత్రమే వర్తిస్తుందని, రాజ్యాంగానంతర చట్టాలకు వర్తించదని దీప్ చంద్ కేసు (1959)లో సుప్రీం కోర్టు పేర్కొంది.",
    ),

    Question(
      questionText: "దులారే లోధ్ (1984) విషయంలో, సుప్రీం కోర్ట్ గ్రహణ సిద్ధాంతాన్ని ఎలా అన్వయించింది?",
      options:[
        "గ్రహణం యొక్క సిద్ధాంతం రాజ్యాంగానంతర చట్టాలకు వర్తించదని ఇది పునరుద్ఘాటించింది.",
        "ఇది పౌరులు కానివారికి మాత్రమే గ్రహణం యొక్క సిద్ధాంతాన్ని సమర్థించింది.",
        "ఇది దాని మునుపటి వైఖరిని తిప్పికొట్టింది మరియు పౌరులకు వ్యతిరేకంగా కూడా రాజ్యాంగానంతర చట్టానికి గ్రహణం యొక్క సిద్ధాంతాన్ని వర్తింపజేసింది.",
        "ఇది గ్రహణం యొక్క సిద్ధాంతాన్ని పాతది మరియు అసంబద్ధం అని ప్రకటించింది."
      ],
      correctAnswerIndex: 2,
      explanation:"దులారే లోధ్ కేసులో (1984), సుప్రీం కోర్ట్ దాని మునుపటి స్టాండ్‌ను తిప్పికొట్టింది మరియు పౌరులకు వ్యతిరేకంగా కూడా రాజ్యాంగానంతర చట్టానికి గ్రహణం యొక్క సిద్ధాంతాన్ని వర్తింపజేసింది.",
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
          MyBannerAdWidget(), // Add the banner ad here
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
    home: idci_te(),
  ));
}

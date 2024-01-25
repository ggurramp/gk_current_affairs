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

class fpcy_te extends StatefulWidget {
  final String? userIdentifier;

  fpcy_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fpcy_te> createState() => _fpcy_teState();
}

class _fpcy_teState extends State<fpcy_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//88.విదేశీ విధానం

    Question(
      questionText: "ప్రపంచ శాంతిని పెంపొందించడానికి సంబంధించిన భారత విదేశాంగ విధానం యొక్క సూత్రాలు ఏమిటి?",
      options:[
        "దూకుడు సైనిక పొత్తులు.",
        "వలసవాదం మరియు సామ్రాజ్యవాదం.",
        "అలైన్‌మెంట్ మరియు పంచశీల.",
        "జాతి వివక్ష మరియు వర్ణవివక్ష."
      ],
      correctAnswerIndex: 2,
      explanation:"భారత విదేశాంగ విధానంలో ప్రపంచ శాంతిని పెంపొందించడానికి సంబంధించిన సూత్రాలలో అలైన్‌మెంట్ మరియు పంచశీలలు ఉన్నాయి.",
    ),

    Question(
        questionText: "దక్షిణాఫ్రికాలో వర్ణవివక్ష (జాతి వివక్ష) విధానంపై భారతదేశం ఎలా స్పందించింది?",
        options:[
          "భారతదేశం వర్ణవివక్ష విధానానికి మద్దతు ఇచ్చింది.",
          "భారతదేశం దక్షిణాఫ్రికాతో దౌత్య సంబంధాలను కొనసాగించింది.",
          "భారతదేశం ఈ విధానాన్ని విమర్శించింది మరియు 1954లో దౌత్య సంబంధాలను తెంచుకుంది.",
          "ఈ సమస్యపై భారతదేశం తటస్థంగా ఉంది."
        ],
        correctAnswerIndex: 2,
        explanation:"దక్షిణాఫ్రికాలో వర్ణవివక్ష విధానాన్ని భారతదేశం తీవ్రంగా విమర్శించింది మరియు జాతి వివక్షకు నిరసనగా 1954లో దౌత్య సంబంధాలను కూడా రద్దు చేసుకుంది."
    ),

    Question(
      questionText: "భారత విదేశాంగ విధానంలో అలైన్‌మెంట్ అంటే ఏమిటి?",
      options:[
        "భారతదేశం రెండు పవర్ బ్లాక్‌లతో పొత్తు పెట్టుకుంది.",
        "భారతదేశం పెట్టుబడిదారీ కూటమితో మాత్రమే జతకట్టింది.",
        "భారతదేశం కమ్యూనిస్ట్ కూటమితో మాత్రమే పొత్తు పెట్టుకుంటుంది.",
        "ఏ పవర్ బ్లాక్‌తోనూ పొత్తు పెట్టుకోవడానికి భారతదేశం నిరాకరిస్తుంది."
      ],
      correctAnswerIndex: 3,
      explanation:"భారత విదేశాంగ విధానంలో నాన్-అలైన్‌మెంట్ అంటే భారతదేశం ఏదైనా పవర్ బ్లాక్‌తో పొత్తుకు నిరాకరిస్తుంది మరియు విదేశాంగ విధానానికి స్వతంత్ర విధానాన్ని నిర్వహిస్తుంది.",
    ),

    Question(
      questionText: "అంతర్జాతీయ సంబంధాల సందర్భంలో పంచశీల యొక్క ఐదు సూత్రాలు ఏమిటి?",
      options:[
        "సైనిక పొత్తులు, దూకుడు, జోక్యం, అసమానత, సహజీవనం.",
        "ప్రాదేశిక సమగ్రత, నాన్-ఆక్రమణ, జోక్యం, అసమానత, సహ-ఉనికి.",
        "ప్రాదేశిక సమగ్రత, దురాక్రమణ రహితం, జోక్యం చేసుకోకపోవడం, సమానత్వం, శాంతియుత సహజీవనం.",
        "ప్రాదేశిక సమగ్రత, దూకుడు, జోక్యం, అసమానత, సహ-ఉనికి."
      ],
      correctAnswerIndex: 2,
      explanation:"అంతర్జాతీయ సంబంధాలలో పంచశీల యొక్క ఐదు సూత్రాలు ప్రాదేశిక సమగ్రత, దురాక్రమణ, జోక్యం చేసుకోకపోవడం, సమానత్వం మరియు శాంతియుత సహజీవనం.",
    ),

    Question(
      questionText: "భారతదేశం కామన్వెల్త్‌లో సభ్యుడిగా ఉండటానికి ఎందుకు ఎంచుకుంది?",
      options:[
        "రాజ్యాంగ బాధ్యతల కారణంగా.",
        "బ్రిటీష్ క్రౌన్‌కు చివరి విధేయతను చెల్లించడానికి.",
        "దాని గణతంత్ర లక్షణాన్ని కొనసాగించడానికి.",
        "వ్యావహారిక కారణాల కోసం, ఆర్థిక, రాజకీయ మరియు సాంస్కృతిక రంగాలలో ప్రయోజనాలను ఆశించడం."
      ],
      correctAnswerIndex: 3,
      explanation:"భారతదేశం ఆర్థిక, రాజకీయ, సాంస్కృతిక మరియు ఇతర రంగాలలో ప్రయోజనాలను ఆశించి, ఆచరణాత్మక కారణాల వల్ల కామన్వెల్త్‌లో సభ్యునిగా కొనసాగాలని ఎంచుకుంది.",
    ),

    Question(
      questionText: "గుజ్రాల్ సిద్ధాంతాన్ని ఎవరు ప్రతిపాదించారు మరియు అది ఎప్పుడు ప్రారంభించబడింది?",
      options:[
        "1998లో అటల్ బిహారీ వాజ్‌పేయి.",
        "1971లో ఇందిరా గాంధీ.",
        "1996లో IK గుజ్రాల్.",
        "2014లో నరేంద్ర మోడీ."
      ],
      correctAnswerIndex: 2,
      explanation:"గుజ్రాల్ సిద్ధాంతం 1996లో IK గుజ్రాల్చే ప్రతిపాదించబడింది మరియు ప్రారంభించబడింది.",
    ),

    Question(
      questionText: "చిన్న పొరుగు దేశాలతో భారతదేశ సంబంధాలకు సంబంధించి గుజ్రాల్ సిద్ధాంతం యొక్క ప్రధాన సూత్రం ఏమిటి?",
      options:[
        "పరస్పరత మరియు కఠినమైన ఒప్పందాలు.",
        "జోక్యం కానిది మరియు పరస్పరం కానిది.",
        "చిన్న పొరుగు దేశాలతో సైనిక పొత్తులు.",
        "ఆర్థిక ఆధిపత్యం మరియు నియంత్రణ."
      ],
      correctAnswerIndex: 1,
      explanation:"గుజ్రాల్ సిద్ధాంతం యొక్క ప్రధాన సూత్రం అన్యోన్యత, దాని చిన్న పొరుగువారి పట్ల భారతదేశం యొక్క అనుకూల విధానాన్ని నొక్కి చెబుతుంది.",
    ),

    Question(
      questionText: "గుజ్రాల్ సిద్ధాంతం ప్రకారం, బంగ్లాదేశ్, భూటాన్, మాల్దీవులు, నేపాల్ మరియు శ్రీలంక వంటి పొరుగు దేశాలతో భారతదేశం ఏమి చేయాలి?",
      options:[
        "అన్ని పరస్పర చర్యలలో కఠినమైన అన్యోన్యతను కోరండి.",
        "పరస్పరతను ఆశించకుండా ఏకపక్ష రాయితీలను అందించండి.",
        "దౌత్య సంబంధాలలో పాల్గొనకుండా తటస్థ వైఖరిని కొనసాగించండి.",
        "వారిపై ఆర్థిక ఆధిపత్యాన్ని ప్రోత్సహించండి."
      ],
      correctAnswerIndex: 1,
      explanation:"గుజ్రాల్ సిద్ధాంతం ప్రకారం, భారతదేశం తన తక్షణ పొరుగు దేశాలకు పరస్పరం ఆశించకుండా ఏకపక్ష రాయితీలను అందించాలి.",
    ),

    Question(
      questionText: "దక్షిణాసియా దేశాలు భూభాగాన్ని ఉపయోగించడం గురించి గుజ్రాల్ సిద్ధాంతం ఏమి నొక్కి చెబుతుంది?",
      options:[
        "పొరుగు దేశాలకు వ్యతిరేకంగా భూభాగాన్ని ఉపయోగించడాన్ని ప్రోత్సహించండి.",
        "మరొక దేశ ప్రయోజనాల కోసం భూభాగాన్ని ఉపయోగించడాన్ని నిర్ధారించుకోండి.",
        "ఇతర దేశ ప్రయోజనాలకు వ్యతిరేకంగా భూభాగాన్ని ఉపయోగించడాన్ని నిషేధించండి.",
        "పరిమితులు లేకుండా భూభాగాన్ని ఉచితంగా ఉపయోగించడాన్ని అనుమతించండి."
      ],
      correctAnswerIndex: 2,
      explanation:"గుజ్రాల్ సిద్ధాంతం ఏ దక్షిణాసియా దేశం తన భూభాగాన్ని ఈ ప్రాంతంలోని మరొక దేశ ప్రయోజనాలకు వ్యతిరేకంగా ఉపయోగించకూడదని నొక్కి చెబుతుంది.",
    ),

    Question(
      questionText: "IK గుజ్రాల్ వివరించినట్లు గుజ్రాల్ సిద్ధాంతం వెనుక ఉన్న తర్కం ఏమిటి?",
      options:[
        "అన్ని పొరుగు దేశాలపై ఆధిపత్యం చెలాయించడానికి.",
        "ఈ ప్రాంతంలో పాకిస్తాన్ మరియు చైనాల ప్రభావాన్ని అరికట్టడానికి.",
        "చిన్న పొరుగు దేశాలతో సైనిక పొత్తులు ఏర్పరచుకోవడానికి.",
        "దక్షిణాసియా దేశాలపై ఆర్థిక ఆధిపత్యాన్ని స్థాపించడానికి."
      ],
      correctAnswerIndex: 1,
      explanation:"IK గుజ్రాల్ వివరించిన విధంగా గుజ్రాల్ సిద్ధాంతం వెనుక ఉన్న తర్కం, ఈ ప్రాంతంలో పాకిస్తాన్ మరియు చైనాల ప్రభావాన్ని కలిగి ఉండటానికి ఇతర తక్షణ పొరుగు దేశాలతో 'పూర్తి శాంతి'తో ఉండాలి.",
    ),

    Question(
      questionText: "భారత అణు సిద్ధాంతం యొక్క మొదటి సూత్రం ఏమిటి?",
      options:[
        "అణు ఆయుధాల విస్తరణను నిరోధించడం.",
        "విశ్వసనీయమైన కనీస నిరోధకాన్ని నిర్మించడం మరియు నిర్వహించడం.",
        "ముందస్తు న్యూక్లియర్ స్ట్రైక్స్‌లో పాల్గొనడం.",
        "అణు నిరాయుధీకరణ కోసం వాదించడం."
      ],
      correctAnswerIndex: 1,
      explanation:"భారత అణు సిద్ధాంతం యొక్క మొదటి సూత్రం విశ్వసనీయమైన కనీస నిరోధకాన్ని నిర్మించడం మరియు నిర్వహించడం.",
    ),

    Question(
      questionText: "భారత అణు సిద్ధాంతం ప్రకారం, ఏ పరిస్థితుల్లో అణ్వాయుధాలు ఉపయోగించబడతాయి?",
      options:[
        "పొరుగు దేశాలకు సంబంధించిన ఏదైనా సంఘర్షణలో.",
        "భారత భూభాగం లేదా బలగాలపై అణు దాడికి ప్రతీకారంగా మాత్రమే.",
        "సంభావ్య బెదిరింపులను నివారించడానికి ముందస్తు సమ్మెలలో.",
        "సాంప్రదాయ సైనిక దురాక్రమణకు ప్రతిస్పందనగా."
      ],
      correctAnswerIndex: 1,
      explanation:"భారతదేశం యొక్క అణు సిద్ధాంతం ప్రకారం, అణ్వాయుధాలు భారత భూభాగం లేదా దళాలపై అణు దాడికి ప్రతీకారంగా మాత్రమే ఉపయోగించబడతాయి.",
    ),

    Question(
      questionText: "అణ్వాయుధాల వినియోగానికి సంబంధించి భారతదేశం యొక్క అణు సిద్ధాంతం యొక్క భంగిమ ఏమిటి?",
      options:[
        "వ్యూహాత్మక ప్రయోజనం కోసం ముందస్తు సమ్మెలు.",
        "మొదటి ఉపయోగం లేదు - ఆయుధాలు ప్రతీకారంగా మాత్రమే ఉపయోగించబడతాయి.",
        "శాంతి కోసం ఏకపక్ష నిరాయుధీకరణ.",
        "అణు ఆయుధాల నిరంతర అభివృద్ధి మరియు పరీక్ష."
      ],
      correctAnswerIndex: 1,
      explanation:"భారత అణు సిద్ధాంతం యొక్క భంగిమ 'నో ఫస్ట్ యూజ్', అంటే అణ్వాయుధాలు ప్రతీకారంగా మాత్రమే ఉపయోగించబడతాయి.",
    ),

    Question(
      questionText: "భారత న్యూక్లియర్ కమాండ్ అథారిటీలో రాజకీయ మండలికి ఎవరు అధ్యక్షత వహిస్తారు?",
      options:[
        "జాతీయ భద్రతా సలహాదారు.",
        "భారత రాష్ట్రపతి.",
        "ప్రధాన మంత్రి.",
        "రక్షణ మంత్రి."
      ],
      correctAnswerIndex: 2,
      explanation:"భారత అణు కమాండ్ అథారిటీలో రాజకీయ మండలి ప్రధానమంత్రి అధ్యక్షతన ఉంటుంది.",
    ),

    Question(
      questionText: "ఏ పరిస్థితులలో భారతదేశం యొక్క అణు సిద్ధాంతం అణ్వాయుధాలతో ప్రతీకారం తీర్చుకునే అవకాశాన్ని కలిగి ఉంది?",
      options:[
        "సాంప్రదాయ సైనిక దాడుల విషయంలో.",
        "జీవ లేదా రసాయన ఆయుధాలతో సహా ఏ విధమైన దురాక్రమణకు వ్యతిరేకంగా.",
        "అణు దాడులకు ప్రతిస్పందనగా మాత్రమే.",
        "ఆర్థిక ఆంక్షల సందర్భంలో."
      ],
      correctAnswerIndex: 1,
      explanation:"జీవ లేదా రసాయన ఆయుధాల ద్వారా పెద్ద దాడి జరిగినప్పుడు అణ్వాయుధాలతో ప్రతీకారం తీర్చుకునే అవకాశాన్ని భారతదేశం యొక్క అణు సిద్ధాంతం కలిగి ఉంది.",
    ),

    Question(
      questionText: "భారతదేశం యొక్క 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానం ఎప్పుడు ప్రారంభించబడింది?",
      options:["2010", "2012", "2014", "2016"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశం యొక్క 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానం 2012లో ప్రారంభించబడింది.",
    ),

    Question(
      questionText: "భారతదేశం యొక్క 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానంలో ఏ దేశాలు చేర్చబడ్డాయి?",
      options:["పాకిస్తాన్, ఆఫ్ఘనిస్తాన్, ఇరాన్, చైనా, రష్యా", "కజకిస్తాన్, కిర్గిజ్స్తాన్, తజికిస్తాన్, తుర్క్మెనిస్తాన్, ఉజ్బెకిస్తాన్", "శ్రీలంక, మాల్దీవులు, బంగ్లాదేశ్, నేపాల్, భూటాన్", "సౌదీ అరేబియా, యుఎఇ, ఖతార్, ఒమన్, కువైట్"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశం యొక్క 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానంలో చేర్చబడిన దేశాలు కజాఖ్స్తాన్, కిర్గిజ్స్తాన్, తజికిస్తాన్, తుర్క్మెనిస్తాన్ మరియు ఉజ్బెకిస్తాన్.",
    ),

    Question(
      questionText: "భారతదేశం యొక్క 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానంలోని ముఖ్య అంశాలు ఏమిటి?",
      options:[
        "ప్రత్యేకంగా ఆర్థిక నిశ్చితార్థం",
        "సైనిక ఆధిపత్యం మరియు భద్రతా సహకారం",
        "రాజకీయ, భద్రత, ఆర్థిక మరియు సాంస్కృతిక సంబంధాలతో సహా విస్తృత-ఆధారిత విధానం",
        "ఏకపక్ష రాజకీయ ఆధిపత్యం"
      ],
      correctAnswerIndex: 2,
      explanation:"భారతదేశం యొక్క 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానం రాజకీయ, భద్రత, ఆర్థిక మరియు సాంస్కృతిక సంబంధాలతో సహా విస్తృత-ఆధారిత విధానం.",
    ),

    Question(
      questionText: "కనెక్ట్ సెంట్రల్ ఏషియా' విధానంలో భారతదేశం వైద్య రంగంలో సంభావ్యతను ఏ విధంగా చూస్తుంది?",
      options:["మౌలిక సదుపాయాల అభివృద్ధి", "సైనిక శిక్షణ", "టెలీ-ఎడ్యుకేషన్ మరియు టెలి-మెడిసిన్", "సాంస్కృతిక మార్పిడి"],
      correctAnswerIndex: 2,
      explanation:"భారతదేశం టెలి-ఎడ్యుకేషన్ మరియు టెలి-మెడిసిన్‌తో సహా 'కనెక్ట్ సెంట్రల్ ఆసియా' విధానంలో సహకారం కోసం వైద్య రంగంలో సంభావ్యతను చూస్తుంది.",
    ),

    Question(
      questionText: "కనెక్ట్ సెంట్రల్ ఆసియా' విధానంలో మధ్య ఆసియా దేశాలతో ఎయిర్ కనెక్టివిటీని మెరుగుపరచడం భారతదేశం ఎలా లక్ష్యంగా పెట్టుకుంది?",
      options:["కొత్త విమానాశ్రయాలను నిర్మించడం", "హై-స్పీడ్ రైలు కనెక్షన్‌లను అభివృద్ధి చేయడం", "కొత్త ఎయిర్‌లైన్ కంపెనీలను ఏర్పాటు చేయడం", "వాయు కనెక్టివిటీని మెరుగుపరచడానికి సంయుక్తంగా పని చేయడం"],
      correctAnswerIndex: 3,
      explanation:"కనెక్ట్ సెంట్రల్ ఆసియా' విధానంలో ఎయిర్ కనెక్టివిటీని మెరుగుపరచడానికి భారతదేశం మరియు మధ్య ఆసియా దేశాలు సంయుక్తంగా పని చేస్తాయి.",
    ),

    Question(
      questionText: "భారతదేశం యొక్క 'లుక్ ఈస్ట్ పాలసీ' 'యాక్ట్ ఈస్ట్ పాలసీ'కి ఎప్పుడు అప్‌గ్రేడ్ చేయబడింది?",
      options:["1992", "2000", "2014", "2018"],
      correctAnswerIndex: 2,
      explanation:"భారతదేశం యొక్క 'లుక్ ఈస్ట్ పాలసీ' 2014లో 'యాక్ట్ ఈస్ట్ పాలసీ'కి అప్‌గ్రేడ్ చేయబడింది.",
    ),

    Question(
        questionText: "భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ' యొక్క భౌగోళిక దృష్టి ఏమిటి?",
        options:["మిడిల్ ఈస్ట్", "మధ్య ఆసియా", "ఆసియా-పసిఫిక్ ప్రాంతం", "యూరప్"],
        correctAnswerIndex: 2,
        explanation:"భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ' ఆసియా-పసిఫిక్ ప్రాంతంలో విస్తరించిన పొరుగు ప్రాంతంపై దృష్టి పెడుతుంది."
    ),

    Question(
      questionText: "అందించిన సమాచారం ప్రకారం భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ' ఏ పరిమాణాలను పొందింది?",
      options:["ఆర్థిక మరియు సాంస్కృతిక మాత్రమే", "రాజకీయ, వ్యూహాత్మక మరియు సాంస్కృతిక", "సైనిక మరియు ఆర్థిక", "సామాజిక మరియు పర్యావరణ"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ' రాజకీయ, వ్యూహాత్మక మరియు సాంస్కృతిక కోణాలను పొందింది, సంభాషణ మరియు సహకారం కోసం సంస్థాగత యంత్రాంగాల ఏర్పాటుతో సహా.",
    ),

    Question(
      questionText: "భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ'లో ఏ ప్రాంతానికి ప్రాధాన్యత ఇవ్వబడింది?",
      options:["దక్షిణ భారతదేశం", "ఈశాన్య భారతదేశం", "పశ్చిమ కనుమలు", "హిమాలయ ప్రాంతం"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ'లో అరుణాచల్ ప్రదేశ్ రాష్ట్రంతో సహా భారతదేశంలోని ఈశాన్య ప్రాంతాలకు ప్రాధాన్యత ఉంది.",
    ),

    Question(
      questionText: "భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ' కింద నాగరికత రంగంలో ఏమి శక్తివంతం చేయబడుతోంది?",
      options:["శాస్త్రీయ పరిశోధన", "బౌద్ధ మరియు హిందూ లింకులు", "వాణిజ్య ఒప్పందాలు", "సైనిక పొత్తులు"],
      correctAnswerIndex: 1,
      explanation:"నాగరికత పరంగా, ప్రజల మధ్య కొత్త పరిచయాలు మరియు కనెక్టివిటీని అభివృద్ధి చేయడానికి భారతదేశం యొక్క 'యాక్ట్ ఈస్ట్ పాలసీ' క్రింద బౌద్ధ మరియు హిందూ సంబంధాలు శక్తివంతం చేయబడుతున్నాయి.",
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
    home: fpcy_te(),
  ));
}

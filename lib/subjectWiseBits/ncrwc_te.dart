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

class ncrwc_te extends StatefulWidget {
  final String? userIdentifier;

  ncrwc_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ncrwc_te> createState() => _ncrwc_teState();
}

class _ncrwc_teState extends State<ncrwc_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//89.రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్


    Question(
      questionText: "ఒక రాజకీయ పార్టీ నేర చరిత్ర కలిగిన అభ్యర్థికి టిక్కెట్ ఇవ్వకూడదనే నిబంధనను ఉల్లంఘిస్తే దాని పర్యవసానం ఏమిటి?",
      options:[
        "అభ్యర్థికి జరిమానా విధించాలి",
        "పార్టీని హెచ్చరించాలి"
            "అభ్యర్థిని అనర్హులుగా ప్రకటించాలి మరియు పార్టీ రిజిస్ట్రేషన్ రద్దు చేయాలి",
        "పార్టీకి జరిమానా విధించాలి"
      ],
      correctAnswerIndex: 2,
      explanation:"ఒక రాజకీయ పార్టీ నేర చరిత్ర కలిగిన అభ్యర్థులకు సంబంధించిన నిబంధనను ఉల్లంఘిస్తే, అభ్యర్థి అనర్హులుగా ప్రకటించబడాలి మరియు పార్టీ నమోదును రద్దు చేయాలి.",
    ),

    Question(
      questionText: "రాజకీయ పార్టీలపై ప్రతిపాదిత చట్టం అభ్యర్థులు మరియు వారి ఆస్తులకు సంబంధించి ఏమి సూచిస్తుంది?",
      options:[
      "అభ్యర్థులు తమ ఆస్తులను ప్రకటించకూడదు",
      "నామినేషన్ సమయంలో అభ్యర్థులు తమ ఆస్తులు మరియు అప్పులను ప్రకటించాలి",
      "అభ్యర్థుల ఆస్తులు నామినేషన్ ప్రక్రియకు సంబంధం లేదు",
      "ఎన్నికల్లో గెలిచిన తర్వాతే అభ్యర్థులు తమ ఆస్తులను ప్రకటించాలి."
    ],
    correctAnswerIndex: 1,
      explanation:"నామినేషన్ సమయంలో అభ్యర్థులు తమ ఆస్తులు మరియు అప్పులను ప్రకటించాలని రాజకీయ పార్టీలపై ప్రతిపాదిత చట్టం సూచిస్తుంది.",
    ),

    Question(
      questionText: "ఫిరాయింపుల ఆధారంగా అనర్హత గురించి ప్రశ్నలను నిర్ణయించడంలో ఎన్నికల సంఘం సిఫార్సు చేసిన పాత్ర ఏమిటి?",
      options:[
        "సభ స్పీకర్/చైర్మన్ నిర్ణయం తీసుకోవాలి",
        "కోర్టులే తేల్చాలి"
            "ఎన్నికల కమిషన్ నిర్ణయం తీసుకోవాలి"
      " ఫిరాయింపుదారులే తేల్చుకోవాలి"
      ],
      correctAnswerIndex: 2,
      explanation:"వచనం ప్రకారం, ఫిరాయింపు కారణాలపై అనర్హతకు సంబంధించిన ప్రశ్నలను నిర్ణయించే అధికారం సంబంధిత సభ స్పీకర్/చైర్మన్‌కి బదులుగా ఎన్నికల కమిషన్‌కు ఉండాలి.",
    ),

    Question(
      questionText: "రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్ (NCRWC) ఎవరు నాయకత్వం వహించారు?",
      options:["MN వెంకటాచలయ్య", "BP జీవన్ రెడ్డి", "RS సర్కారియా", "SoH సోరాబ్జీ"],
      correctAnswerIndex: 0,
      explanation:"ఎన్‌సిఆర్‌డబ్ల్యుసికి భారత మాజీ ప్రధాన న్యాయమూర్తి ఎంఎన్ వెంకటాచలయ్య నాయకత్వం వహించారు.",
    ),

    Question(
      questionText: "రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్ (NCRWC) కోసం నియమ నిబంధనలేమిటి?",
      options:[
        "రాజ్యాంగాన్ని పూర్తిగా తిరగరాయడానికి.",
        "రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణంలో జోక్యం చేసుకోకుండా పార్లమెంటరీ ప్రజాస్వామ్యం యొక్క చట్రంలో మార్పులను సిఫార్సు చేయడం.",
        "ఎన్నికలు నిర్వహించడానికి.",
        "న్యాయ నిర్వహణను పర్యవేక్షించడానికి."
      ],
      correctAnswerIndex: 1,
      explanation:"ఎన్‌సిఆర్‌డబ్ల్యుసి నియమ నిబంధనల ప్రకారం రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణంలో జోక్యం చేసుకోకుండా పార్లమెంటరీ ప్రజాస్వామ్యం యొక్క చట్రంలో మార్పులను సిఫార్సు చేయడం.",
    ),

    Question(
      questionText: " NCRWC ప్రకారం, భారత రాష్ట్రానికి సంబంధించి అత్యంత ఆందోళన కలిగించే ప్రాంతం ఏది?",
      options:[
        "మార్పు యొక్క ప్రపంచ శక్తులను అంచనా వేయడానికి మరియు అందించడానికి దాని అసమర్థత.",
        "సామాజిక మరియు ఆర్థిక హక్కులపై దాని అధిక దృష్టి.",
        "ఎన్నికల ప్రక్రియల నిర్వహణలో దీని సామర్థ్యం.",
        "జాతీయ సమగ్రత మరియు భద్రతకు దాని నిబద్ధత."
      ],
      correctAnswerIndex: 0,
      explanation:"ఎన్‌సిఆర్‌డబ్ల్యుసి భారత రాష్ట్రం యొక్క అసమర్థతను అంచనా వేయడానికి మరియు ప్రపంచ మార్పుల కోసం అందించడానికి అసమర్థతను ప్రధానమైన అంశంగా గుర్తిస్తుంది.",
    ),

    Question(
      questionText: "రాజ్యాంగం యొక్క పనితీరును సమీక్షించడానికి జాతీయ కమిషన్ (NCRWC) మొత్తం ఎన్ని సిఫార్సులు చేసింది?",
      options:["58", "86", "249", "100"],
      correctAnswerIndex: 2,
      explanation:" NCRWC మొత్తం 249 సిఫార్సులు చేసింది.",
    ),

    Question(
      questionText: "వివక్షకు వ్యతిరేకంగా నిషేధం యొక్క పరిధికి సంబంధించి NCRWC ఏమి సూచించింది?",
      options:[
        "లింగ-ఆధారిత వివక్షకు పరిధిని పరిమితం చేయడానికి.",
        "జాతి లేదా సామాజిక మూలం, రాజకీయ లేదా ఇతర అభిప్రాయం, ఆస్తి లేదా పుట్టుక' చేర్చడానికి పరిధిని విస్తరించడానికి.",
        "రాజ్యాంగం నుండి వివక్షకు సంబంధించిన ఏదైనా ప్రస్తావనను మినహాయించడానికి.",
        "వివక్షకు వ్యతిరేకంగా నిషేధాన్ని తొలగించడానికి."
      ],
      correctAnswerIndex: 1,
      explanation:"ఎన్‌సిఆర్‌డబ్ల్యుసి వివక్షకు వ్యతిరేకంగా నిషేధం యొక్క పరిధిని 'జాతి లేదా సామాజిక మూలం, రాజకీయ లేదా ఇతర అభిప్రాయం, ఆస్తి లేదా పుట్టుక' చేర్చడానికి విస్తరించాలని సూచించింది.",
    ),

    Question(
      questionText: " NCRWC ప్రకారం, ఏ కొత్త ప్రాథమిక హక్కులను జోడించాలి?",
      options:[
        "అపరిమిత స్వేచ్ఛగా మాట్లాడే హక్కు.",
        "ప్రైవేట్ ఆస్తిపై హక్కు.",
        "గోప్యత మరియు కుటుంబ జీవితానికి హక్కు.",
        "ఆయుధాలు ధరించే హక్కు."
      ],
      correctAnswerIndex: 2,
      explanation:"ఎన్‌సిఆర్‌డబ్ల్యుసి గోప్యత మరియు కుటుంబ జీవితానికి సంబంధించిన హక్కుతో సహా కొత్త ప్రాథమిక హక్కులను జోడించాలని సిఫార్సు చేసింది.",
    ),

    Question(
      questionText: "రాజ్యాంగం యొక్క పనితీరును సమీక్షించడానికి జాతీయ కమిషన్ శాసనసభ్యుల ప్రత్యేకాధికారాలకు సంబంధించి ఏమి సిఫార్సు చేస్తుంది?",
      options:[
        "అవి ఎటువంటి పరిమితులు లేకుండా విస్తరించబడాలి.",
        "వాటిని అలాగే నిర్వహించాలి.",
        "పార్లమెంటు మరియు రాష్ట్ర శాసనసభల స్వేచ్ఛా మరియు స్వతంత్ర పనితీరు కోసం అవి నిర్వచించబడాలి మరియు విభజించబడాలి.",
        "వారు పూర్తిగా తొలగించబడాలి."
      ],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటు మరియు రాష్ట్ర శాసనసభల స్వేచ్ఛా మరియు స్వతంత్ర పనితీరు కోసం శాసనసభ్యుల అధికారాలను నిర్వచించాలని మరియు విభజించాలని కమిషన్ సిఫార్సు చేస్తుంది.",
    ),

    Question(
      questionText: "పార్లమెంటరీ అధికారాల క్రింద సభ్యులు అనుభవిస్తున్న రోగనిరోధక శక్తికి సంబంధించి కమిషన్ ఏ సూచన చేస్తుంది?",
      options:[
        "ఇది వారి స్వభావంతో సంబంధం లేకుండా అన్ని చర్యలను కవర్ చేయాలి.",
        "సభలో లేదా ఇతరత్రా వారి విధులకు సంబంధించి వారు చేసిన అవినీతి చర్యలను ఇది కవర్ చేయకూడదు.",
        "ఇది నేరపూరిత చర్యలను మాత్రమే కవర్ చేయాలి.",
        "సభ్యులు తీసుకున్న ఏవైనా చర్యలను చేర్చడానికి ఇది విస్తరించబడాలి."
      ],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటరీ అధికారాల క్రింద సభ్యులు అనుభవించే రోగనిరోధక శక్తి వారి విధులకు సంబంధించి వారు చేసిన అవినీతి చర్యలను కవర్ చేయకూడదని కమిషన్ సూచిస్తుంది.",
    ),

    Question(
      questionText: "సిఫార్సుల ప్రకారం, మంత్రుల మండలికి సంబంధించి చట్టం ద్వారా ఏ అభ్యాసాన్ని నిషేధించాలి?",
      options:[
        "ఏ నిషేధం అవసరం లేదు.",
        "మంత్రి మండలిని విస్తరించాలి.",
        "మంత్రి మండలిని అధిక పరిమాణంలో కలిగి ఉండే పద్ధతిని చట్టం ద్వారా నిషేధించాలి.",
        "మంత్రి మండలి పరిమాణం పూర్తిగా ప్రధానమంత్రి అభీష్టానుసారం ఉండాలి."
      ],
      correctAnswerIndex: 2,
      explanation:"చట్టం ప్రకారం, మంత్రివర్గ మండలిని కలిగి ఉండటాన్ని నిషేధించాలనేది సిఫార్సు.",
    ),

    Question(
      questionText: "సిఫార్సుల ప్రకారం, రాష్ట్ర గవర్నర్ నియామకం ఎలా జరగాలి?",
      options:[
        "రాష్ట్రపతి ఎటువంటి సంప్రదింపులు లేకుండానే గవర్నర్‌ను నియమించాలి.",
        "గవర్నర్‌ను ముఖ్యమంత్రి నియమించాలి.",
        "రాష్ట్రపతి ఆ రాష్ట్ర ముఖ్యమంత్రితో సంప్రదించిన తర్వాత గవర్నర్‌ను నియమించాలి.",
        "గవర్నర్‌ను రాష్ట్ర అసెంబ్లీ ఎన్నుకోవాలి."
      ],
      correctAnswerIndex: 2,
      explanation:"రాష్ట్రపతి ఆ రాష్ట్ర ముఖ్యమంత్రితో సంప్రదింపులు జరిపిన తర్వాత మాత్రమే రాష్ట్రానికి గవర్నర్‌ను నియమించాలని సిఫార్సు చేయబడింది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 356 ఉపయోగం గురించి జాతీయ కమిషన్ ఏమి సూచిస్తుంది?",
      options:[
        "ఇది తరచుగా ఉపయోగించబడాలి.",
        "దీన్ని రాజ్యాంగం నుండి తొలగించాలి.",
        "ఇది ఎటువంటి పరిమితులు లేకుండా ఉపయోగించాలి.",
        "ఇది చాలా తక్కువగా ఉపయోగించబడాలి మరియు చివరి రిసార్ట్ యొక్క నివారణగా మాత్రమే ఉపయోగించాలి."
      ],
      correctAnswerIndex: 3,
      explanation:"ఆర్టికల్ 356ని తొలగించకూడదని జాతీయ కమీషన్ సూచించింది, కానీ పొదుపుగా ఉపయోగించాలని మరియు చివరి ప్రయత్నంగా మాత్రమే ఉపయోగించాలని సూచించింది.",
    ),

    Question(
      questionText: "ఒక రాష్ట్రంలోని మంత్రిత్వ శాఖ అసెంబ్లీ విశ్వాసాన్ని కోల్పోయిందా అనే ప్రశ్నను ఎలా పరీక్షించాలని కమిషన్ ప్రతిపాదిస్తుంది?",
      options:[
        "రిఫరెండం ద్వారా.",
        "ప్రజా నిరసనల ద్వారా వీధుల్లో.",
        "సభా వేదికపై, సభ విశ్వాసం ఉన్నంత వరకు మంత్రివర్గాన్ని తొలగించడానికి గవర్నర్ అనుమతించకూడదు.",
        "రాష్ట్రపతి నియమించిన ప్రత్యేక కమిటీ ద్వారా."
      ],
      correctAnswerIndex: 2,
      explanation:"ఒక రాష్ట్రంలో మంత్రివర్గం అసెంబ్లీ విశ్వాసాన్ని కోల్పోయిందా అనే ప్రశ్నను సభా వేదికపై మాత్రమే పరీక్షించాలని కమిషన్ ప్రతిపాదించింది మరియు గవర్నర్‌కు ఆ మంత్రివర్గం ఉన్నంత కాలం బర్తరఫ్ చేయడానికి అనుమతించరాదు. సభ విశ్వాసం.",
    ),
    Question(
        questionText: "సిఫార్సుల ప్రకారం, రాజ్యాంగంలోని పదకొండవ మరియు పన్నెండవ షెడ్యూల్‌లకు ఏ మార్పు సూచించబడింది?",
        options:[
          "వాటిని రద్దు చేయాలి.",
          "అవి మారకుండా ఉండాలి.",
          "మరిన్ని విషయాలను చేర్చడానికి వాటిని విస్తరించాలి.",
          "పంచాయితీలు మరియు మున్సిపాలిటీలకు ప్రత్యేక ఆర్థిక డొమైన్‌ను రూపొందించడానికి వాటిని పునర్నిర్మించాలి."
        ],
        correctAnswerIndex: 3,
        explanation:"పంచాయతీలు మరియు మునిసిపాలిటీలకు ప్రత్యేక ఆర్థిక డొమైన్‌ను రూపొందించడానికి రాజ్యాంగంలోని పదకొండవ మరియు పన్నెండవ షెడ్యూల్‌లను పునర్నిర్మించాలని సిఫార్సు చేయబడింది."
    ),

    Question(
      questionText: "పంచాయతీ రద్దును ఎలా నిర్వహించాలని జాతీయ కమిషన్ సూచిస్తుంది?",
      options:[
        "ఎటువంటి ముందస్తు నోటీసు లేకుండా దానిని రద్దు చేయండి.",
        "రాష్ట్ర ఎన్నికల సంఘం నిర్ణయం ఆధారంగా దానిని రద్దు చేయండి.",
        "పంచాయితీని రద్దు చేసే ముందు దానిని వినడానికి సహేతుకమైన అవకాశం ఇవ్వండి.",
        "గవర్నర్ ఆమోదం తర్వాత మాత్రమే రద్దు చేయండి."
      ],
      correctAnswerIndex: 2,
      explanation:"జాతీయ కమీషన్ ఆర్టికల్ 243-Eని సవరించాలని సూచించింది, అది రద్దు చేయబడే ముందు ఒక పంచాయితీకి ఒక సహేతుకమైన అవకాశం ఇవ్వబడుతుంది.",
    ),

    Question(
      questionText: "డిలిమిటేషన్, రిజర్వేషన్ మరియు స్థానిక అధికారుల సీట్ల భ్రమణానికి సంబంధించి కమిషన్ ఏమి ప్రతిపాదిస్తుంది?",
      options:[
        "దానిని ప్రతి రాష్ట్రం యొక్క విచక్షణకు వదిలివేయండి.",
        "ఈ విధులను రాష్ట్ర ఎన్నికల కమిషన్‌కు అప్పగించండి.",
        "ఈ విధుల కోసం కొత్త స్వతంత్ర సంస్థను ఏర్పాటు చేయండి.",
        "భారత ఎన్నికల కమిషన్‌కు వదిలేయండి."
      ],
      correctAnswerIndex: 3,
      explanation:"డీలిమిటేషన్, రిజర్వేషన్ మరియు సీట్ల రొటేషన్ విధులు రాష్ట్ర ఎన్నికల కమిషన్‌కు కాకుండా డీలిమిటేషన్ కమిషన్‌కు అప్పగించాలని కమిషన్ ప్రతిపాదించింది.",
    ),

    Question(
      questionText: "ప్రధాన ఎన్నికల కమీషనర్ మరియు ఇతర ఎన్నికల కమిషనర్లను నియమించాలని జాతీయ కమిషన్ ఎలా సిఫార్సు చేస్తుంది?",
      options:[
        "ప్రధానమంత్రి ద్వారా మాత్రమే నియామకం.",
        "అపాయింట్‌మెంట్ పూర్తిగా రాష్ట్రపతిచే చేయబడుతుంది.",
        "ప్రధానమంత్రి, లోక్‌సభలో ప్రతిపక్ష నాయకుడు, రాజ్యసభలో ప్రతిపక్ష నాయకుడు, లోక్‌సభ స్పీకర్ మరియు రాజ్యసభ డిప్యూటీ ఛైర్మన్‌లతో కూడిన సంఘం ద్వారా నియామకం.",
        "పౌరులచే ప్రత్యక్ష ఎన్నికల ద్వారా నియామకం."
      ],
      correctAnswerIndex: 2,
      explanation:"ప్రధానమంత్రి, లోక్‌సభలో ప్రతిపక్ష నాయకుడు, రాజ్యసభలో ప్రతిపక్ష నాయకుడు, లోక్‌సభ స్పీకర్‌లతో కూడిన సంఘం ద్వారా ప్రధాన ఎన్నికల కమిషనర్ మరియు ఇతర ఎన్నికల కమిషనర్లను నియమించాలని జాతీయ కమిషన్ సిఫార్సు చేస్తుంది. మరియు రాజ్యసభ డిప్యూటీ ఛైర్మన్.",
    ),

    Question(
      questionText: "రాజకీయ పార్టీల కోసం సమగ్ర చట్టం యొక్క ప్రతిపాదిత నిబంధనలు ఏమిటి?",
      options:[
        "ఏదైనా నేరానికి పాల్పడిన అభ్యర్థులను మినహాయించాలని పార్టీలు కోరుతున్నాయి.",
        "పార్టీలు తమ ఖాతాలు మరియు నిధులను క్రమపద్ధతిలో బహిర్గతం చేయడాన్ని తప్పనిసరి చేయండి.",
        "కులం, సంఘం లేదా సారూప్య భేదాల ఆధారంగా వివక్ష చూపడానికి పార్టీలను అనుమతించండి.",
        "ఎలాంటి జవాబుదారీతనం లేకుండా రిజిస్టర్ చేసుకోవడానికి మరియు ఆపరేట్ చేయడానికి పార్టీలను ప్రోత్సహించండి."
      ],
      correctAnswerIndex: 1,
      explanation:"రాజకీయ పార్టీల కోసం సమగ్ర చట్టం యొక్క ప్రతిపాదిత నిబంధనలలో పార్టీలు తమ ఖాతాలు మరియు నిధులను క్రమపద్ధతిలో బహిర్గతం చేయడాన్ని తప్పనిసరి చేయడం వంటివి ఉన్నాయి.",
    ),

    Question(
      questionText: "ఫిరాయింపుల నిరోధక చట్టంపై జాతీయ కమిషన్ సిఫార్సు ప్రకారం, ఫిరాయింపుదారులకు ఏమి జరగాలి?",
      options:[
      "ఫిరాయింపుదారులు తమకు నచ్చిన ఏదైనా ప్రభుత్వ కార్యాలయాన్ని నిర్వహించడానికి అనుమతించాలి.",
      "ఫిరాయింపుదారులకు తాజా ఎన్నికల్లో పోటీ నుండి మినహాయింపు ఇవ్వాలి.",
      "ఫిరాయింపుదారులు తమ పార్లమెంట్ లేదా అసెంబ్లీ స్థానాలకు రాజీనామా చేసి తాజా ఎన్నికల్లో పోటీ చేయాలి.",
     " ఫిరాయింపుదారులకు రాజకీయంగా ఉన్నత పదవులు దక్కాలి.",
    ],
    correctAnswerIndex: 2,
    explanation:"ఫిరాయింపుల నిరోధక చట్టంపై జాతీయ కమిషన్ సిఫార్సు ప్రకారం, ఫిరాయింపుదారులు తమ పార్లమెంటరీ లేదా అసెంబ్లీ స్థానాలకు రాజీనామా చేసి తాజా ఎన్నికల్లో పోటీ చేయాలి.",
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
    home: ncrwc_te(),
  ));
}

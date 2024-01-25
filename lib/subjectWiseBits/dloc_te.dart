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

class dloc_te extends StatefulWidget {
  final String? userIdentifier;

  dloc_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<dloc_te> createState() => _dloc_teState();
}

class _dloc_teState extends State<dloc_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    //71.డీలిమిటేషన్ కమిషన్ ఆఫ్ ఇండియా

    Question(
      questionText: "డిలిమిటేషన్' అనే పదానికి అక్షరార్థం ఏమిటి?",
      options:[
        "ఎన్నికల నిర్వహణ ప్రక్రియ",
        "ప్రతినిధి సంస్థను ఏర్పాటు చేసే చర్య",
        "ప్రాదేశిక నియోజకవర్గాల పరిమితులు లేదా సరిహద్దులను నిర్ణయించే చర్య లేదా ప్రక్రియ",
        "ప్రభుత్వ అధికారుల నియామక ప్రక్రియ"
      ],
      correctAnswerIndex: 2,
      explanation:"డీలిమిటేషన్' అనే పదానికి అక్షరార్థంగా ఒక దేశం లేదా శాసన సభ ఉన్న ప్రావిన్స్‌లోని ప్రాదేశిక నియోజకవర్గాల పరిమితులు లేదా సరిహద్దులను నిర్ణయించే చర్య లేదా ప్రక్రియ అని అర్థం.",
    ),

    Question(
      questionText: "డీలిమిటేషన్ కమిషన్ లేదా బౌండరీ కమిషన్ పాత్ర ఏమిటి?",
      options:[
        "ఎన్నికలు నిర్వహించడం",
        "శాసనసభకు బడ్జెట్‌ను నిర్ణయించడం",
        "ప్రాదేశిక నియోజకవర్గాల పరిమితులు లేదా సరిహద్దులను నిర్ణయించడం",
        "శాసనసభకు సభ్యులను నియమించడం"
      ],
      correctAnswerIndex: 2,
      explanation:"డీలిమిటేషన్ కమిషన్ లేదా సరిహద్దు కమిషన్ పాత్ర ప్రాదేశిక నియోజకవర్గాల పరిమితులు లేదా సరిహద్దులను నిర్ణయించడం.",
    ),

    Question(
      questionText: "భారత పార్లమెంటరీ ప్రజాస్వామ్యంలో ఆవర్తన డీలిమిటేషన్ ఎందుకు ముఖ్యమైనదిగా పరిగణించబడుతుంది?",
      options:[
        "శాసనసభ అధికారాన్ని పెంచడానికి",
        "నియోజక వర్గాలను తగ్గించడానికి",
        "మారుతున్న గ్రౌండ్ రియాలిటీలను ప్రతిబింబించడానికి మరియు నిష్పక్షపాత ఎన్నికలను నిర్ధారించడానికి",
        "పార్లమెంటరీ ప్రజాస్వామ్యాన్ని రద్దు చేయడం"
      ],
      correctAnswerIndex: 2,
      explanation:"మారుతున్న గ్రౌండ్ రియాలిటీలను ప్రతిబింబించడానికి మరియు భారత పార్లమెంటరీ ప్రజాస్వామ్యంలో న్యాయమైన ఎన్నికలను నిర్ధారించడానికి కాలానుగుణ డీలిమిటేషన్ ముఖ్యమైనదిగా పరిగణించబడుతుంది.",
    ),

    Question(
      questionText: "డీలిమిటేషన్ సందర్భంలో 'ఒక మనిషి, ఒక ఓటు' సూత్రం ఏమిటి?",
      options:[
      "ప్రతి ఓటరుకు ఒక ఓటు ఉంటుంది, అదే ఫైనల్.",
      "ఓటర్ల ఓట్ల విలువలో అసమానత ఉండాలి.",
      "ఇది ఆదర్శవంతమైనది కానీ ఓటర్ల ఓట్ల విలువలో సమానత్వం సాధించడం కష్టం.",
      "జనాభా తేడాలతో సంబంధం లేకుండా ఓట్ల విలువ ఒకేలా ఉంటుంది."
    ],
    correctAnswerIndex: 2,
      explanation:"ఒక మనిషి, ఒక ఓటు' సూత్రం ఓటర్ల ఓట్ల విలువలో సమానత్వం ఉండాలని ఊహించింది, అయితే జనాభా వ్యత్యాసాల కారణంగా దీనిని సాధించడం కష్టం.",
    ),

    Question(
      questionText: "భారతదేశంలోని పార్లమెంటరీ మరియు అసెంబ్లీ నియోజకవర్గాల విభజనకు సంబంధించి ఏ రాజ్యాంగ నిబంధనలు వ్యవహరిస్తాయి?",
      options:[
        "ఆర్టికల్స్ 80, 81, 82, 170, మరియు 332",
        "ఆర్టికల్స్ 81, 82, 170, 330 మరియు 332",
        "ఆర్టికల్స్ 80, 81, 170, 330 మరియు 332",
        "ఆర్టికల్స్ 81, 82, 170 మరియు 330"
      ],
      correctAnswerIndex: 1,
      explanation:"భారత రాజ్యాంగంలోని 81, 82, 170, 330 మరియు 332 అధికరణలు పార్లమెంటరీ మరియు అసెంబ్లీ నియోజకవర్గాల విభజనకు సంబంధించినవి.",
    ),
    Question(
      questionText: "2002 యొక్క నాల్గవ డీలిమిటేషన్ కమిషన్ చైర్‌పర్సన్‌గా ఎవరు నియమితులయ్యారు?",
      options:[
        "ప్రధాన ఎన్నికల కమీషనర్",
        "జస్టిస్ కులదీప్ సింగ్",
        "రాష్ట్ర ఎన్నికల కమీషనర్",
        "ప్రధాన ఎన్నికల కమిషనర్ లేదా ఎన్నికల కమిషనర్"
      ],
      correctAnswerIndex: 1,
      explanation:"సుప్రీంకోర్టు యొక్క రిటైర్డ్ న్యాయమూర్తి జస్టిస్ కులదీప్ సింగ్, 2002 నాటి నాల్గవ డీలిమిటేషన్ కమిషన్ చైర్‌పర్సన్‌గా నియమితులయ్యారు.",
    ),

    Question(
      questionText: "నాల్గవ డీలిమిటేషన్ కమీషన్ ప్రతి రాష్ట్రానికి ఎంతమంది అసోసియేట్ సభ్యులను కలిగి ఉంది?",
      options:[
        "రెండు",
        "ఐదు",
        "పది",
        "పదిహేను"
      ],
      correctAnswerIndex: 2,
      explanation:"నాల్గవ డీలిమిటేషన్ కమిషన్‌లో ప్రతి రాష్ట్రానికి సంబంధించి పది మంది అసోసియేట్ సభ్యులు ఉన్నారు. వారిలో ఐదుగురు లోక్‌సభ సభ్యులు, మరో ఐదుగురు రాష్ట్ర శాసనసభ సభ్యులు.",
    ),

    Question(
      questionText: "కమీషన్ తన సిఫార్సులను ప్రభుత్వానికి ఎప్పుడు సమర్పించింది?",
      options:[
        "2002",
        "2007",
        "2008",
        "2009"
      ],
      correctAnswerIndex: 1,
      explanation:"నాల్గవ డీలిమిటేషన్ కమిషన్ తన సిఫార్సులను 2007లో ప్రభుత్వానికి సమర్పించింది.",
    ),

    Question(
      questionText: "నాల్గవ డీలిమిటేషన్ కమిషన్ సిఫార్సుల నుండి ఏ రాష్ట్రాలు మినహాయించబడ్డాయి?",
      options:[
        "అస్సాం, అరుణాచల్ ప్రదేశ్, మణిపూర్, నాగాలాండ్, జార్ఖండ్",
        "అరుణాచల్ ప్రదేశ్, మణిపూర్, నాగాలాండ్, జార్ఖండ్, పూర్వపు జమ్మూ మరియు కాశ్మీర్",
        "అస్సాం, నాగాలాండ్, జార్ఖండ్, పూర్వపు జమ్మూ మరియు కాశ్మీర్",
        "మణిపూర్, నాగాలాండ్, జార్ఖండ్, పూర్వపు జమ్మూ మరియు కాశ్మీర్"
      ],
      correctAnswerIndex: 0,
      explanation:"నాల్గవ డీలిమిటేషన్ కమిషన్ సిఫార్సులు అస్సాం, అరుణాచల్ ప్రదేశ్, మణిపూర్, నాగాలాండ్ మరియు జార్ఖండ్‌లకు వర్తించవు.",
    ),

    Question(
      questionText: "కొత్తగా విభజించబడిన నియోజకవర్గాల ఆధారంగా లోక్‌సభకు 2009 సాధారణ ఎన్నికలు ఎప్పుడు జరిగాయి?",
      options:[
        "2002",
        "2007",
        "2008",
        "2009"
      ],
      correctAnswerIndex: 3,
      explanation:"లోక్‌సభకు 2009 సాధారణ ఎన్నికలు కొత్తగా విభజించబడిన నియోజకవర్గాల ఆధారంగా జరిగాయి.",
    ),
    Question(
      questionText: "నాలుగు ఈశాన్య రాష్ట్రాలలో డీలిమిటేషన్ కసరత్తును వాయిదా వేస్తూ 2008 నోటిఫికేషన్‌ల రద్దుకు దారితీసింది ఏమిటి?",
      options:[
        "తిరుగుబాటు సంఘటనల పెరుగుదల",
        "భద్రతా పరిస్థితిలో మెరుగుదల",
        "భారతదేశ ఐక్యత మరియు సమగ్రతకు కొనసాగుతున్న ముప్పు",
        "క్షీణిస్తున్న శాంతిభద్రతల పరిస్థితి"
      ],
      correctAnswerIndex: 1,
      explanation:"భద్రతా పరిస్థితిలో మెరుగుదల, తిరుగుబాటు సంఘటనలు మరియు శాంతిభద్రతల మెరుగుదల కారణంగా నాలుగు ఈశాన్య రాష్ట్రాలలో డీలిమిటేషన్ ప్రక్రియను వాయిదా వేస్తూ 2008 నోటిఫికేషన్‌లను భారత ప్రభుత్వం రద్దు చేసింది.",
    ),

    Question(
      questionText: "మార్చి 2020లో ఏర్పాటైన డీలిమిటేషన్ కమిషన్ చైర్‌పర్సన్‌గా ఎవరు నియమితులయ్యారు?",
      options:[
        "జస్టిస్ రంజనా ప్రకాష్ దేశాయ్",
        "సుశీల్ చంద్ర",
        "జస్టిస్ కులదీప్ సింగ్",
        "రాష్ట్ర ఎన్నికల కమీషనర్"
      ],
      correctAnswerIndex: 0,
      explanation:"2020 మార్చిలో ఏర్పాటు చేసిన డీలిమిటేషన్ కమిషన్ చైర్‌పర్సన్‌గా సుప్రీంకోర్టు రిటైర్డ్ న్యాయమూర్తి జస్టిస్ రంజనా ప్రకాష్ దేశాయ్ నియమితులయ్యారు.",
    ),

    Question(
      questionText: "నాలుగు ఈశాన్య రాష్ట్రాలు మరియు జమ్మూ మరియు కాశ్మీర్ యొక్క UT కోసం డీలిమిటేషన్ కమిషన్‌కు ఏమి అప్పగించబడింది?",
      options:[
        "ఎన్నికలు నిర్వహించడానికి",
        "లా అండ్ ఆర్డర్ సమీక్షించడానికి",
        "ఆర్థిక పరిస్థితిని అంచనా వేయడానికి",
        "డిలిమిటేషన్ యాక్ట్, 2002 ప్రకారం నియోజకవర్గాలను డీలిమిట్ చేయడానికి"
      ],
      correctAnswerIndex: 3,
      explanation:"డిలిమిటేషన్ చట్టం, 2002 ప్రకారం నాలుగు ఈశాన్య రాష్ట్రాలు మరియు జమ్మూ మరియు కాశ్మీర్ యొక్క UT కోసం డీలిమిటేషన్ కమిషన్‌కు కేటాయించిన పని.",
    ),

    Question(
      questionText: "మార్చి 2021లో కమిషన్ పరిధి నుండి నాలుగు ఈశాన్య రాష్ట్రాలను ఎందుకు తొలగించారు?",
      options:[
        "భద్రతా ఆందోళనలు",
        "లా అండ్ ఆర్డర్‌లో మెరుగుదల",
        "పెరిగిన తిరుగుబాటు సంఘటనలు",
        "భారతదేశ ఐక్యత మరియు సమగ్రతకు కొనసాగుతున్న ముప్పు"
      ],
      correctAnswerIndex: 1,
      explanation:"మార్చి 2021లో, లా అండ్ ఆర్డర్‌లో మెరుగుదల కారణంగా భారత ప్రభుత్వం నాలుగు ఈశాన్య రాష్ట్రాలను కమిషన్ పరిధి నుండి తొలగించింది.",
    ),

    Question(
      questionText: "డీలిమిటేషన్ కమిషన్ తన పనిని ఎప్పుడు పూర్తి చేసింది?",
      options:[
        "మార్చి 2021",
        "మే 2022",
        "ఫిబ్రవరి 2020",
        "మార్చి 2022"
      ],
      correctAnswerIndex: 1,
      explanation:"డీలిమిటేషన్ కమిషన్ మే 2022లో తన పనిని పూర్తి చేసింది.",
    ),
    Question(
      questionText: "J&K పునర్వ్యవస్థీకరణ చట్టం, 2019 తర్వాత జమ్మూ మరియు కాశ్మీర్ కోసం డీలిమిటేషన్ వ్యాయామంలో ఏ ముఖ్యమైన మార్పు జరిగింది?",
      options:[
        "రిజర్వ్డ్ సీట్ల సంఖ్య పెంపు",
        "2026 వరకు తాజా డీలిమిటేషన్ స్తంభింపజేయడం",
        "ప్రత్యక్ష ఎన్నికల పరిచయం",
        "కొత్త అసెంబ్లీ నియోజకవర్గాల ఏర్పాటు"
      ],
      correctAnswerIndex: 1,
      explanation:"J&K పునర్వ్యవస్థీకరణ చట్టం, 2019ని అనుసరించి, 2026 సంవత్సరం తర్వాత మొదటి జనాభా గణనకు సంబంధించిన గణాంకాలు ప్రచురించబడే వరకు తాజా డీలిమిటేషన్ స్తంభింపజేయబడినందున డీలిమిటేషన్ వ్యాయామం గణనీయంగా మార్చబడింది.",
    ),

    Question(
      questionText: "J&K పునర్వ్యవస్థీకరణ చట్టం, 2019కి ముందు J&K అసెంబ్లీలో పాకిస్థాన్ ఆక్రమిత జమ్మూ మరియు కాశ్మీర్ కోసం ఎన్ని సీట్లు రిజర్వ్ చేయబడ్డాయి?",
      options:[
        "4",
        "12",
        "16",
        "24"
      ],
      correctAnswerIndex: 3,
      explanation:"J&K పునర్వ్యవస్థీకరణ చట్టం, 2019కి ముందు, J&K అసెంబ్లీలో 24 సీట్లు పాకిస్థాన్ ఆక్రమిత జమ్మూ మరియు కాశ్మీర్‌కు రిజర్వ్ చేయబడ్డాయి.",
    ),

    Question(
      questionText: "J&K పునర్వ్యవస్థీకరణ చట్టం, 2019 కేంద్ర పాలిత ప్రాంతం జమ్మూ మరియు కాశ్మీర్ యొక్క శాసనసభకు సంబంధించి ఏ నిబంధన చేసింది?",
      options:[
        "శాసనసభ రద్దు",
        "సీట్ల సంఖ్య పెంపు",
        "మహిళా సభ్యుల నామినేషన్",
        "ఆక్రమిత ప్రాంతాల మినహాయింపు"
      ],
      correctAnswerIndex: 2,
      explanation:"J&K పునర్వ్యవస్థీకరణ చట్టం, 2019 జమ్మూ మరియు కాశ్మీర్ కేంద్ర పాలిత ప్రాంతం కోసం శాసనసభను ఏర్పాటు చేసింది మరియు లెఫ్టినెంట్ గవర్నర్ చేత అసెంబ్లీకి ఇద్దరు మహిళా సభ్యులను నామినేట్ చేసే నిబంధనను చేర్చింది.",
    ),

    Question(
      questionText: "ప్రస్తుత డీలిమిటేషన్ కమీషన్ చేపట్టిన జమ్మూ మరియు కాశ్మీర్ కోసం డీలిమిటేషన్ కసరత్తు ఏ ప్రాతిపదికన జరిగింది?",
      options:[
        "1981 జనాభా లెక్కలు",
        "1991 జనాభా లెక్కలు",
        "2001 జనాభా లెక్కలు",
        "2011 జనాభా లెక్కలు"
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రస్తుత డీలిమిటేషన్ కమిషన్ 2011 జనాభా లెక్కల ఆధారంగా జమ్మూ మరియు కాశ్మీర్‌కు డీలిమిటేషన్ కసరత్తును చేపట్టింది.",
    ),

    Question(
      questionText: "సీట్ల రిజర్వేషన్ల విషయంలో పూర్వపు J&K రాష్ట్ర రాజ్యాంగం ఏమి లోపించింది?",
      options:[
        "ఎస్సీలకు రిజర్వేషన్",
        "ఎస్టీలకు రిజర్వేషన్",
        "రిజర్వేషన్ కోసం నిబంధన లేదు",
        "మహిళా సభ్యుల నామినేషన్"
      ],
      correctAnswerIndex: 1,
      explanation:"పూర్వ రాష్ట్రమైన J&K రాజ్యాంగం శాసనసభలో STలకు సీట్ల రిజర్వేషన్‌ను అందించలేదు.",
    ),
    Question(
      questionText: "షెడ్యూల్డ్ కులాల హక్కులు మరియు ప్రయోజనాలను పరిరక్షించే బాధ్యత భారతదేశంలోని ఏ కేంద్ర సంస్థ?",
      options:["యూనియన్ పబ్లిక్ సర్వీస్ కమీషన్", "స్టాఫ్ సెలక్షన్ కమిషన్", "నేషనల్ కమీషన్ ఫర్ ఎస్సీలు", "నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ"],
      correctAnswerIndex: 3,
      explanation:"జాతీయ ఎస్సీల కమిషన్ షెడ్యూల్డ్ కులాల హక్కులు మరియు ప్రయోజనాలను పరిరక్షించే బాధ్యత వహిస్తుంది.",
    ),

    Question(
      questionText: "అవినీతికి సంబంధించిన కేసులను దర్యాప్తు చేయడం మరియు నిర్వహించడం భారతదేశంలోని ఏ సంస్థకు బాధ్యత వహిస్తుంది?",
      options:["జోనల్ కౌన్సిల్స్", "సెంట్రల్ సోషల్ వెల్ఫేర్ బోర్డ్", "సెంట్రల్ విజిలెన్స్ కమిషన్", "సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్"],
      correctAnswerIndex: 3,
      explanation:"కేంద్ర విజిలెన్స్ కమిషన్ అవినీతికి సంబంధించిన కేసులను దర్యాప్తు చేయడం మరియు నిర్వహించడం బాధ్యత వహిస్తుంది.",
    ),

    Question(
      questionText: "నేషనల్ కమిషన్ ఫర్ ప్రొటెక్షన్ ఆఫ్ చైల్డ్ రైట్స్‌తో ఏ మంత్రిత్వ శాఖ అనుబంధం కలిగి ఉంది?",
      options:["మినిస్ట్రీ ఆఫ్ ఉమెన్ అండ్ చైల్డ్ డెవలప్‌మెంట్", "మినిస్ట్రీ ఆఫ్ ఫైనాన్స్", "పర్సనల్ మినిస్ట్రీ", "మినిస్ట్రీ ఆఫ్ హోమ్ అఫైర్స్"],
      correctAnswerIndex: 1,
      explanation:"నేషనల్ కమీషన్ ఫర్ ప్రొటెక్షన్ ఆఫ్ చైల్డ్ రైట్స్ మహిళా మరియు చైల్డ్ డెవలప్‌మెంట్ మంత్రిత్వ శాఖతో సంబంధం కలిగి ఉంది.",
    ),

    Question(
      questionText: "భారతదేశంలో పార్లమెంటరీ మరియు అసెంబ్లీ నియోజకవర్గాల విభజనలో ఏ కేంద్ర సంస్థ కీలక పాత్ర పోషిస్తుంది?",
      options:["డీలిమిటేషన్ కమిషన్ ఆఫ్ ఇండియా", "నేషనల్ హ్యూమన్ రైట్స్ కమీషన్", "సెంట్రల్ అడ్మినిస్ట్రేటివ్ ట్రిబ్యునల్", "ఎలక్షన్ కమిషన్ ఆఫ్ ఇండియా"],
      correctAnswerIndex: 0,
      explanation:"భారతదేశంలోని పార్లమెంటరీ మరియు అసెంబ్లీ నియోజకవర్గాల విభజనలో డీలిమిటేషన్ కమిషన్ ఆఫ్ ఇండియా కీలక పాత్ర పోషిస్తుంది.",
    ),

    Question(
      questionText: "భారతదేశంలో విపత్తు ప్రతిస్పందన మరియు నిర్వహణను సమన్వయం చేయడానికి ఏ కేంద్ర సంస్థ బాధ్యత వహిస్తుంది?",
      options:["నేషనల్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ", "గుడ్ అండ్ సర్వీసెస్ టాక్స్ కౌన్సిల్", "లోక్‌పాల్", "నీతి ఆయోగ్"],
      correctAnswerIndex: 0,
      explanation:"భారతదేశంలో విపత్తు ప్రతిస్పందన మరియు నిర్వహణను సమన్వయం చేయడానికి జాతీయ విపత్తు నిర్వహణ అథారిటీ బాధ్యత వహిస్తుంది.",
    ),

    Question(
      questionText: "జమ్మూ మరియు కాశ్మీర్ కేంద్రపాలిత ప్రాంతం కోసం డీలిమిటేషన్ ఆర్డర్‌లో షెడ్యూల్డ్ తెగలకు (STలు) ఎన్ని అసెంబ్లీ నియోజకవర్గాలు రిజర్వ్ చేయబడ్డాయి?",
      options:[
        "6",
        "7",
        "8",
        "9"
      ],
      correctAnswerIndex: 5,
      explanation:"డీలిమిటేషన్ ఆర్డర్ జమ్మూ మరియు కాశ్మీర్ కేంద్ర పాలిత ప్రాంతంలోని షెడ్యూల్డ్ తెగల (STలు) కోసం 9 అసెంబ్లీ నియోజకవర్గాలను రిజర్వు చేసింది.",
    ),

    Question(
      questionText: "అనంతనాగ్ - రాజౌరి పార్లమెంటరీ నియోజకవర్గాన్ని సృష్టించడం వెనుక ఉన్న హేతువు ఏమిటి?",
      options:[
        "నియోజకవర్గాల సంఖ్యను సమతుల్యం చేయడం",
        "సాంస్కృతిక ఏకీకరణ",
        "భౌగోళిక సామీప్యం",
        "జనాభా పంపిణీ"
      ],
      correctAnswerIndex: 3,
      explanation:"కాశ్మీర్ ప్రాంతంలోని అనంతనాగ్ ప్రాంతం మరియు జమ్మూ ప్రాంతంలోని రాజౌరీ & పూంచ్ ప్రాంతాన్ని కలపడం ద్వారా అనంతనాగ్ - రాజౌరి పార్లమెంటరీ నియోజకవర్గం సృష్టించబడింది.",
    ),

    Question(
      questionText: "జమ్మూ ప్రాంతం కోసం ఎన్ని కొత్త అసెంబ్లీ నియోజకవర్గాలు సృష్టించబడ్డాయి?",
      options:[
        "4",
        "5",
        "6",
        "7"
      ],
      correctAnswerIndex: 3,
      explanation:"డీలిమిటేషన్ ఆర్డర్ జమ్మూ ప్రాంతానికి 6 కొత్త అసెంబ్లీ నియోజకవర్గాలను సృష్టించింది.",
    ),

    Question(
      questionText: "J&K అసెంబ్లీలో కాశ్మీరీ వలసదారుల సంఘం నుండి కనీసం ఇద్దరు సభ్యుల కోసం కమిషన్ ఏ అధికారాన్ని సిఫార్సు చేసింది?",
      options:[
        "ఎన్నికైన సభ్యులకు సమాన అధికారం",
        "పుదుచ్చేరి UTతో సమానంగా నామినేటెడ్ పవర్",
        "ప్రత్యేక శాసన అధికారాలు",
        "మహిళా ప్రతినిధి నామినేషన్"
      ],
      correctAnswerIndex: 2,
      explanation:"J&K అసెంబ్లీలో కాశ్మీరీ వలసదారుల సంఘం నుండి కనీసం ఇద్దరు సభ్యులకు (వారిలో ఒకరు స్త్రీ అయి ఉండాలి) పుదుచ్చేరి UT అసెంబ్లీలో నామినేటెడ్ సభ్యుల అధికారంతో సమానంగా నామినేటెడ్ అధికారం ఇవ్వాలని కమిషన్ సిఫార్సు చేసింది. ",
    ),

    Question(
      questionText: "J&K అసెంబ్లీలో పాకిస్తాన్ ఆక్రమిత జమ్మూ మరియు కాశ్మీర్ (PoJ&K) నుండి నిర్వాసితులైన వ్యక్తుల కోసం కమిషన్ ఏ ప్రాతినిధ్యాన్ని సిఫార్సు చేసింది?",
      options:[
        "ప్రతినిధుల ప్రత్యక్ష ఎన్నిక",
        "సీట్ల రిజర్వేషన్",
        "ప్రతినిధుల నామినేషన్",
        "పరిశీలకుల స్థితి"
      ],
      correctAnswerIndex: 3,
      explanation:"PoJ&K నుండి స్థానభ్రంశం చెందిన వ్యక్తులకు J&K అసెంబ్లీలో, బహుశా ప్రతినిధులను నామినేట్ చేయడం ద్వారా కొంత ప్రాతినిధ్యం కల్పించడాన్ని కేంద్ర ప్రభుత్వం పరిశీలించవచ్చని కమిషన్ సిఫార్సు చేసింది.",
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
    home: dloc_te(),
  ));
}

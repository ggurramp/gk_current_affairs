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


class ancientHistory_4_te extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_4_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_4_te> createState() => _ancientHistory_4_teState();
}

class _ancientHistory_4_teState extends State<ancientHistory_4_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "తాజా త్రవ్వకాల ప్రకారం, మందా సింధు నాగరికత యొక్క ______ సైట్?",
      options: ["తూర్పు", "పశ్చిమ", "ఉత్తర", "దక్షిణ"],
      correctAnswerIndex: 2,
      explanation: "తాజా త్రవ్వకాల ప్రకారం, మాండ సింధు నాగరికత యొక్క ఉత్తరాన ఉన్న ప్రదేశంగా గుర్తించబడింది.",
    ),

    Question(
      questionText: "కాంస్య యుగం నాగరికతలలో ఏ నాగరికత నిస్సందేహంగా అతిపెద్దది?",
      options: ["మెసొపొటేమియా నాగరికత", "రోమన్ నాగరికత", "హరప్పా నాగరికత", "ఈజిప్టు నాగరికత"],
      correctAnswerIndex: 2,
      explanation: "హరప్పా నాగరికత నిస్సందేహంగా కాంస్య యుగం నాగరికతలలో అతిపెద్దది.",
    ),

    Question(
      questionText: "క్రీ.పూ. 326లో అలెగ్జాండర్ సైన్యం సింధును దాటినప్పుడు తక్షిలా పాలకుడు ఎవరు?",
      options: ["అభిసర", "పైన ఏదీ కాదు", "పోరస్ (పురా)", "అంభి"],
      correctAnswerIndex: 3,
      explanation: "క్రీ.పూ. 326లో అలెగ్జాండర్ సైన్యం సింధునదిని దాటినప్పుడు తక్షిలా పాలకుడు అంబి.",
    ),

    Question(
      questionText: "వల్లభాచార్య అత్యంత విశిష్టమైన బోధకుడు",
      options: ["బలరామ కల్ట్", "కృష్ణ కల్ట్", "శైవ కల్ట్", "శక్తి కల్ట్"],
      correctAnswerIndex: 1,
      explanation: "వల్లభాచార్య కృష్ణ కల్ట్ యొక్క అత్యంత విశిష్టమైన బోధకుడు.",
    ),

    Question(
      questionText: "క్రింది రాజ్యాలలో అరబ్ వ్యాపారి సులైమాన్ ఏ రాజ్యాన్ని 'రుహ్మి'గా పేర్కొన్నాడు?",
      options: ["పాలా", "ప్రతిహార", "రాష్ట్రకూట", "చోళ"],
      correctAnswerIndex: 0,
      explanation: "అరబ్ వ్యాపారి సులైమాన్ 'రుహ్మి'గా పేర్కొన్న రాజ్యం పాలా.",
    ),

    Question(
      questionText: "దాదాపు 182 BCలో భారతదేశంపై దాడి చేసి, వాయువ్యంలో గణనీయమైన భాగాన్ని స్వాధీనం చేసుకున్న బాక్టీరియన్ రాజు ఎవరు?",
      options: ["ఫిలడెల్ఫస్", "గోండోఫెర్నెస్", "డెమెట్రియస్", "యాంటిగోనస్"],
      correctAnswerIndex: 2,
      explanation: "డెమెట్రియస్ క్రీ.పూ. 182లో భారతదేశంపై దాడి చేసి వాయువ్యంలో గణనీయమైన భాగాన్ని స్వాధీనం చేసుకున్న బాక్టీరియన్ రాజు.",
    ),

    Question(
      questionText: "మెగాస్తనీస్ ఇచ్చిన ఏడు తరగతుల జాబితాలో లేకపోవడంతో స్పష్టంగా కనిపించే తరగతికి పేరు పెట్టండి",
      options: ["సాగుదారులు", "తత్వవేత్తలు", "కళాకారులు", "వ్యాపారులు"],
      correctAnswerIndex: 3,
      explanation: "మెగాస్తనీస్ యొక్క ఏడు తరగతుల జాబితాలో వ్యాపారుల తరగతి చేర్చబడలేదు.",
    ),

    Question(
      questionText: "'రాజతరంగిణి' ప్రకారం అశోకుని ఇష్ట దైవం",
      options: ["వాసుదేవ", "బుద్ధ", "శివ", "విష్ణు"],
      correctAnswerIndex: 2,
      explanation: "'రాజతరంగిణి' ప్రకారం, అశోకుని ఇష్ట దైవం శివుడు.",
    ),

    Question(
      questionText: "ఈ క్రింది రకాలైన హరప్పా కుండలలో ఏది ప్రపంచంలోనే దాని రకమైన తొలి ఉదాహరణగా చెప్పబడింది?",
      options: ["చిల్లులు", "నాబ్డ్", "పాలీక్రోమ్", "గ్లేజ్డ్"],
      correctAnswerIndex: 3,
      explanation: "ప్రపంచంలో ఈ రకమైన తొలి ఉదాహరణ మెరుస్తున్న హరప్పా కుండలు.",
    ),

    Question(
      questionText: "భారత చరిత్రలో ఏ కాలాన్ని రొమిలా థాపర్ 'థ్రెషోల్డ్ టైమ్స్'గా నియమించారు?",
      options: ["CE 300-CE 800", "CE 600-CE 1300", "BCE 200-300 CE", "CE 300-CE 600"],
      correctAnswerIndex: 1,
      explanation: "రోమిలా థాపర్ భారతీయ చరిత్రలో CE 600 నుండి CE 1300 వరకు 'థ్రెషోల్డ్ టైమ్స్'గా నిర్దేశించారు.",
    ),

    Question(
      questionText: "మన మాతృభూమి 'భారత' పేరు మొదట ప్రస్తావించబడింది",
      options: ["మార్కెండయ పురాణం", "మత్స్య పురాణం", "విష్ణు పురాణం", "వాయు పురాణం"],
      correctAnswerIndex: 2,
      explanation: "మన మాతృభూమికి 'భరత' అనే పేరు మొదట విష్ణు పురాణంలో ప్రస్తావించబడింది.",
    ),

    Question(
      questionText: "మౌర్యుల కాలం నాటి కొంటకసోధనాలు",
      options: ["క్రిమినల్ కోర్ట్", "పోలీస్ స్టేషన్లు", "రాయల్ ట్రెజరీలు", "సివిల్ కోర్టులు"],
      correctAnswerIndex: 0,
      explanation: "మౌర్యుల కాలం నాటి కొంటకశోధనలు క్రిమినల్ కోర్టులను సూచిస్తారు.",
    ),

    Question(
      questionText: "హరప్పా కాలంలో పట్టణాలు అభివృద్ధి చెందడానికి కింది వాటిలో ప్రధాన కారణం ఏది?",
      options: ["వాణిజ్యం మరియు వాణిజ్య వృద్ధి", "వ్యవసాయ మిగులు పెరుగుదల", "శాస్త్ర సాంకేతికత అభివృద్ధి", "కళలు మరియు చేతిపనుల అభివృద్ధి"],
      correctAnswerIndex: 1,
      explanation: "హరప్పా కాలంలో పట్టణాల అభివృద్ధికి ప్రధాన కారణం వ్యవసాయ మిగులు పెరుగుదల.",
    ),

    Question(
      questionText: "క్రింది ఏ నౌకాశ్రయాలలో గణనీయమైన రోమన్ నివాసం ఉంది మరియు రోమన్ ఫ్యాక్టరీ కనుగొనబడింది?",
      options: ["అరికమేడు", "కావేరీపట్టణం", "తామ్రలిప్తి", "ముజిరిస్ లేదా ముశ్రీ"],
      correctAnswerIndex: 0,
      explanation: "అరికమేడు ఓడరేవులో గణనీయమైన రోమన్ స్థావరం మరియు రోమన్ కర్మాగారం కనుగొనబడ్డాయి.",
    ),

    Question(
      questionText: "గుప్త రాజవంశం యొక్క బంగారు నాణేలు అంటారు",
      options: ["ముహర", "వరాహ", "సాతమన్", "దినారా"],
      correctAnswerIndex: 3,
      explanation: "గుప్త రాజవంశం యొక్క బంగారు నాణేలను దినారా అని పిలిచేవారు.",
    ),

    Question(
      questionText: "రోమన్ చక్రవర్తి పాలనలో భారతదేశం మరియు రోమ్ మధ్య సముద్ర వాణిజ్యం గొప్ప ఊపును పొందింది",
      options: ["ట్రాజన్", "నీరో", "ఆగస్ట్ఉస్టస్", "క్లాడియస్"],
      correctAnswerIndex: 1,
      explanation: "రోమన్ చక్రవర్తి నీరో పాలనలో భారతదేశం మరియు రోమ్ మధ్య సముద్రపు వాణిజ్యం గొప్ప ఊపును పొందింది.",
    ),

    Question(
      questionText: "క్రింది స్టేట్‌మెంట్‌లలో ఏది తప్పు?",
      options: ["చంద్రగుప్తుడు గ్రీకులకు 'అమిత్రోహేట్స్', శత్రువులను నాశనం చేసేవాడు అని పిలుస్తారు", "చంద్రగుప్తుడు దక్షిణ భారతదేశంలో నిదానంగా ఆకలితో మరణించాడని చెప్పబడింది", "కౌటిల్యుడు చంద్రగుప్తుని మార్గదర్శకుడు మరియు గురువు", "చంద్రగుప్తుడు తరువాత అధికారంలోకి వచ్చాడు అతని కుమారుడు బిందుసార"],
      correctAnswerIndex: 0,
      explanation: "చంద్రగుప్తుడు శత్రువులను నాశనం చేసే 'అమిట్రోహేట్స్' అని గ్రీకులకు తెలియదు. ఈ ప్రకటన తప్పు.",
    ),

    Question(
      questionText: "హరప్పాలోని ఆకట్టుకునే ఇటుకలతో నిర్మించిన నిర్మాణాన్ని 'ధాన్యాగారం'గా గుర్తించడంలో ఇటీవల ఏ పురావస్తు శాస్త్రవేత్త పోటీ చేశారు?",
      options: ["రేమండ్ ఆల్చిన్", "J.M. కెనోయర్", "R.E.M. వీలర్", "బ్రిడ్జేట్ ఆల్చిన్"],
      correctAnswerIndex: 1,
      explanation: "పురావస్తు శాస్త్రవేత్త J.M. కెనోయర్ ఇటీవలే హరప్పాలోని ఒక అద్భుతమైన ఇటుకతో నిర్మించిన నిర్మాణాన్ని 'ధాన్యాగారం'గా గుర్తించడాన్ని వ్యతిరేకించారు.",
    ),

    Question(
      questionText: "బాక్ట్రియన్ గ్రీకుల గురించి మాకు మాత్రమే తెలుసు",
      options: ["మాన్యుస్క్రిప్ట్‌లు", "రిలిక్‌లు", "శిలాశాసనాలు", "నాణేలు"],
      correctAnswerIndex: 3,
      explanation: "బాక్ట్రియన్ గ్రీకుల గురించి మన జ్ఞానం ప్రధానంగా నాణేల నుండి వచ్చింది.",
    ),

    Question(
      questionText: "భారత చరిత్రలో చేసిన మొట్టమొదటి అంతర్జాతీయ ఒప్పందంతో ఏ భారతీయ పాలకుడి పేరు విడదీయరాని సంబంధం కలిగి ఉంది?",
      options: ["బిందుసార", "అశోక", "మహాపద్మ నంద", "చంద్రగుప్త మౌర్య"],
      correctAnswerIndex: 3,
      explanation: "చంద్రగుప్త మౌర్యుని పేరు భారతదేశ చరిత్రలో చేసిన మొట్టమొదటి అంతర్జాతీయ ఒప్పందంతో విడదీయరాని సంబంధం కలిగి ఉంది.",
    ),
    Question(
      questionText: "ఇంపీరియల్ గుప్తాల పతనం తర్వాత వచ్చిన హునాస్ వంటి తరువాతి విదేశీ వలసదారులు కింది వాటిలో దేనితో గుర్తించారు?",
      options: ["రాజపుత్రులు", "మ్లేచ్ఛలు", "క్షత్రియులు", "పతనమైన క్షత్రియులు"],
      correctAnswerIndex: 0,
      explanation: "ఇంపీరియల్ గుప్తాల పతనం తర్వాత వచ్చిన హునాస్ వంటి తరువాతి విదేశీ వలసదారులు రాజపుత్రులతో గుర్తించబడ్డారు.",
    ),

    Question(
      questionText: "జైన మత గ్రంథం యొక్క భాష",
      options: ["ప్రాకృతం", "బెంగాలీ", "సంస్కృతం", "పాలి"],
      correctAnswerIndex: 0,
      explanation: "జైన మత గ్రంథం యొక్క భాష ప్రాకృతం.",
    ),

    Question(
      questionText: "హరప్పా ఇటుకలు ప్రధానంగా ఉన్నాయి",
      options: ["చేతితో తయారు చేసినవి", "ఉలి సహాయంతో కత్తిరించినవి", "రంపపు వాయిద్యం సహాయంతో సాన్", "ఓపెన్ అచ్చులో తయారు చేయబడినవి"],
      correctAnswerIndex: 3,
      explanation: "హరప్పా ఇటుకలు ప్రధానంగా తెరిచిన అచ్చులో తయారు చేయబడ్డాయి.",
    ),

    Question(
      questionText: "కాంస్య యుగం యొక్క ఉత్పత్తులలో హరప్పా చేతిపనులను 'సాంకేతికంగా మిగిలిన వాటితో సమానం'గా ఎవరు భావించారు?",
      options: ["R.S. బిష్ట్", "అస్కో పర్పోలా", "గోర్డాన్ చైల్డ్", "షెరీన్ రత్నాగర్"],
      correctAnswerIndex: 3,
      explanation: "షేరీన్ రత్నాగర్ హరప్పా చేతిపనులను కాంస్య యుగం యొక్క ఉత్పత్తులలో 'సాంకేతికంగా మిగిలిన వాటితో సమానంగా' పరిగణించారు.",
    ),

    Question(
      questionText: "భారతదేశంలో బంగారు నాణేలను ఎవరు ప్రవేశపెట్టారు?",
      options: ["ది గ్రీకులు", "చోళులు", "మౌర్య", "ది కుషానాలు"],
      correctAnswerIndex: 3,
      explanation: "బంగారు నాణేలను భారతదేశంలో కుషానులు ప్రవేశపెట్టారు.",
    ),

    Question(
      questionText: "హంజానమా యొక్క విషయం",
      options: ["సంగీతం", "తత్వశాస్త్రం", "ఆర్కిటెక్చర్", "పెయింటింగ్"],
      correctAnswerIndex: 3,
      explanation: "హంజానమా యొక్క అంశం పెయింటింగ్.",
    ),

    Question(
      questionText: "క్రింది స్టేట్‌మెంట్‌లలో ఏది సరైనది కాదు?",
      options: [
        "ఋగ్వేదం ఒక ఏకశిలా గ్రంథం.",
        "ఋగ్వేదం ఏకశిలా గ్రంథం కాదు మరియు అనేక సాహిత్య పొరలను కలిగి ఉంటుంది",
        "ఋగ్వేదంలో 1028 శ్లోకాలు (సూక్తాలు) ఉన్నాయి.",
        "ఋగ్వేదం అసమాన పరిమాణాల పది పుస్తకాలు (మండలాలు)గా విభజించబడింది"
      ],
      correctAnswerIndex: 0,
      explanation: "ఋగ్వేదం ఒక ఏకశిలా గ్రంథం' అనే ప్రకటన సరైనది కాదు. ఋగ్వేదం అనేక సాహిత్య పొరలను కలిగి ఉంటుంది.",
    ),

    Question(
      questionText: "మౌర్యులను శూద్ర వర్ణానికి చెందిన వారిగా క్రింది మూలాల్లో ఏది వర్ణిస్తుంది?",
      options: ["పూర్వాస్", "యూరోపియన్ క్లాసికల్ రైటర్స్", "పురాణాలు", "జాతకాలు"],
      correctAnswerIndex: 2,
      explanation: "పురాణాలు మౌర్యులను శూద్ర వర్ణానికి చెందినవారిగా వర్ణించాయి.",
    ),

    Question(
      questionText: "ప్రసిద్ధ బౌద్ధ రచయిత హరిభద్ర ఆస్థానంలో ఉన్నాడు",
      options: ["దేవపాల", "ధర్మపాల", "గోపాల", "మహిపాల"],
      correctAnswerIndex: 1,
      explanation: "ప్రసిద్ధ బౌద్ధ రచయిత హరిభద్రుడు ధర్మపాల ఆస్థానంలో ఉన్నాడు.",
    ),

    Question(
      questionText: "మినాందార్ ఎవరు?",
      options: ["ఎ సకా కింగ్", "పైన ఏదీ కాదు", "ఎ పార్థియన్ కింగ్", "ఎ బాక్ట్రియన్ గ్రీక్ కింగ్"],
      correctAnswerIndex: 3,
      explanation: "మినాండర్ ఒక బాక్ట్రియన్ గ్రీకు రాజు.",
    ),

    Question(
      questionText: "మనం మూడు దశలను ఎక్కడ కనుగొంటాము, అవి. పాలియోలిథిక్, మెసోలిథిక్ మరియు నియోలిథిక్ సంస్కృతులు వరుసగా?",
      options: ["గోదావరి లోయ", "కాశ్మీర్ వ్యాలీ", "బెలన్ లోయ", "కృష్ణాలోయ"],
      correctAnswerIndex: 2,
      explanation: "మూడు దశలు, అవి. పాలియోలిథిక్, మెసోలిథిక్ మరియు నియోలిథిక్ సంస్కృతులు వరుసగా బెలాన్ లోయలో కనిపిస్తాయి.",
    ),

    Question(
      questionText: "ఈ క్రింది వాటిలో సింధు ప్రజల ఎగుమతి యొక్క ప్రధాన వస్తువులు ఏవి? (i) బంగారం మరియు వెండి (ii) పత్తి వస్తువులు (iii) టెర్రకోటాలు (iv) సీల్స్ (v) కుండలు క్రింది కోడ్‌ల నుండి సమాధానాన్ని ఎంచుకోండి -" ,
      options: ["i, ii, iv మరియు v", "i, iii మరియు iv", "ii, iii మరియు v", "అన్నీ"],
      correctAnswerIndex: 2,
      explanation: "సింధు ప్రజల ఎగుమతి యొక్క ప్రధాన వస్తువులు పత్తి వస్తువులు, టెర్రకోటాలు మరియు కుండలు.",
    ),

    Question(
      questionText: "తర్వాత వేద రచయితలు ఈ క్రింది ప్రాంతాలలో ఏది అశుద్ధంగా మరియు వైదిక సంస్కృతి యొక్క హృదయ ప్రదేశానికి దూరంగా ఉన్నారు?",
      options: ["వంగా (గంగా డెల్టాలో)", "మగధ (దక్షిణ బీహార్)", "అంగా (తూర్పు బీహార్)", "పైన ఉన్నవన్నీ"],
      correctAnswerIndex: 3,
      explanation: "తరువాతి వేద రచయితలు వంగ, మగధ మరియు అంగలను అపవిత్రంగా మరియు వైదిక సంస్కృతికి చాలా దూరంగా ఉన్నారు.",
    ),

    Question(
      questionText: "ఏ ఋగ్వేద నదిని రవి అని మరియు ఐరావతి అని కూడా పిలుస్తారు?",
      options: ["పరుష్ని", "సుతుద్రి", "వితస్తా", "అసిక్ని"],
      correctAnswerIndex: 0,
      explanation: "రావి అని పిలువబడే ఋగ్వేద నదిని ఇరావతి అని కూడా పిలుస్తారు.",
    ),

    Question(
      questionText: "బ్రాహ్మణ మరియు భక్తి మత స్థాయిల సమావేశానికి కింది వాటిలో ఏది వేదిక?",
      options: ["ఘటికాలు", "సమాస్", "గణితాలు", "దేవాలయాలు"],
      correctAnswerIndex: 2,
      explanation: "బ్రాహ్మణ మరియు భక్తి మత స్థాయిలకు గణితం ఒక సమావేశ వేదిక.",
    ),

    Question(
      questionText: "క్రింది ఋగ్వేద దేవుళ్ళలో ఏది రీటా లేదా కాస్మిక్ ఆర్డర్‌ను సమర్థించేదిగా చెప్పబడింది?",
      options: ["వరుణ", "సోమ", "ఇంద్ర", "అగ్ని"],
      correctAnswerIndex: 0,
      explanation: "ఋగ్వేద దేవుళ్ళలో వరుణుడు రీటా లేదా కాస్మిక్ క్రమాన్ని సమర్థించేవాడు అని చెప్పబడింది.",
    ),

    Question(
      questionText: "క్రింది రాజవంశాలలో ఎవరు మొదటగా అన్ని ఆదాయ వనరులను బ్రాహ్మణులకు బదిలీ చేశారు?",
      options: ["పల్లవులు", "చాళుక్యులు", "వాకటకులు", "గుప్తులు"],
      correctAnswerIndex: 2,
      explanation: "వాకాటకులు అన్ని ఆదాయ వనరులను బ్రాహ్మణులకు బదిలీ చేసిన మొదటివారు.",
    ),

    Question(
      questionText: "పది తెగల (10 మంది రాజుల యుద్ధంలో) సమాఖ్యకు వ్యతిరేకంగా పోరాడిన ఋగ్వేద భరత తెగ అధినేత పేరు చెప్పండి",
      options: ["అత్రి", "గృత్సమద", "సుదాస్", "దివోదాస"],
      correctAnswerIndex: 2,
      explanation: "ఋగ్వేద భరత తెగకు అధిపతి అయిన సుదాస్, 10 రాజుల యుద్ధంలో పది తెగల సమాఖ్యకు వ్యతిరేకంగా పోరాడాడు.",
    ),
    Question(
      questionText: "ఇతరులు దావాను అంగీకరించనప్పటికీ, కింది పురావస్తు శాస్త్రవేత్తలలో ఎవరు సింధు లిపిని విజయవంతంగా అర్థంచేసుకున్నారని పేర్కొన్నారు?",
      options: ["K.M. శ్రీవాస్తవ", "S.R. రావు", "MEM వీలర్", "Gordon Childe"],
      correctAnswerIndex: 1,
      explanation: "S.R. రావు తాను సింధు లిపిని విజయవంతంగా అర్థంచేసుకున్నట్లు క్లెయిమ్ చేస్తున్నారు, అయితే ఇతరులు దావాను అంగీకరించలేదు.",
    ),

    Question(
      questionText: "పురాతన భారతీయ వాణిజ్య చరిత్ర సరిగ్గా ________ కాలం నుండి ప్రారంభమవుతుంది.",
      options: ["మౌర్య", "కుషాన", "హరప్పన్", "తరువాత వేద"],
      correctAnswerIndex: 2,
      explanation: "ప్రాచీన భారతీయ వాణిజ్య చరిత్ర సరిగ్గా హరప్పా కాలం నుండి ప్రారంభమవుతుంది.",
    ),

    Question(
      questionText: "బుద్ధుని యుగంలో కింది వాటిలో అత్యంత ప్రముఖమైన రాచరిక మహా-జనపదాలు ఏది?",
      options: ["వజ్జీలు లేదా వ్రిజీలు", "అవంతి మరియు మగద్", "కోసల్ మరియు వత్స", "అన్నీ B మరియు Cలో జాబితా చేయబడ్డాయి"],
      correctAnswerIndex: 3,
      explanation: "బుద్ధుని యుగంలో, అత్యంత ప్రముఖ రాచరిక మహా-జనపదాలు అవంతి మరియు మగద్ (బిలో జాబితా చేయబడ్డాయి) మరియు కోసల్ మరియు వత్స (సిలో జాబితా చేయబడ్డాయి).",
    ),

    Question(
      questionText: "కాళిదాసు రచనలలో (i) అభిజ్ఞాన శాకుంతలం (ii) మేఘదూతం (iii) రఘువంశం (iv) మాళవికాగ్నిమిత్రం (v) ఋతుసంహార (vi) కుమార సంభవ క్రింది కోడ్‌ల నుండి సమాధానాన్ని ఎంచుకోండి -",
      options: ["i, ii, iv, v మరియు vi", "i, iii, iv మరియు v", "i, ii, iii మరియు iv", "అన్నీ"],
      correctAnswerIndex: 3,
      explanation: "కాళిదాసు రచనలలో అభిజ్ఞాన శాకుంతలం, మేఘదూతం, రఘువంశం, మాళవికాగ్నిమిత్రం, ఋతుసంహార మరియు కుమార సంభవ ఉన్నాయి.",
    ),

    Question(
      questionText: "ఈ క్రింది వాటిలో ఏది ప్రారంభ రాతియుగం యొక్క ప్రధాన సాధనం కాదు?",
      options: ["క్లీవర్", "ఛాపర్", "స్క్రాపర్", "హ్యాండక్స్"],
      correctAnswerIndex: 2,
      explanation: "ప్రారంభ రాతియుగంలో స్క్రాపర్ ఒక ప్రధాన సాధనం కాదు.",
    ),

    Question(
      questionText: "సమాజాన్ని నాలుగు శ్రేణులుగా విభజించడం గురించిన తొలి ప్రస్తావన కింది ఏ గ్రంథంలో ఉంది?",
      options: ["కఠోపనిషద", "మను స్మృతి", "ఋగ్వేద సంహిత యొక్క పురుష-సూక్త", "యజుర్ వేద సంహిత"],
      correctAnswerIndex: 2,
      explanation: "సమాజం నాలుగు పొరలుగా విభజించబడటం గురించిన తొలి ప్రస్తావన ఋగ్వేద సంహితలోని పురుష-సూక్తంలో ఉంది.",
    ),

    Question(
      questionText: "శ్రీనగర్‌ను అశోక్ నిర్మించాడని కింది మూలాల్లో ఒకటి పేర్కొందిa?",
      options: ["తారానాథుని టిబెట్ చరిత్ర", "మహావంశం", "కలహనా యొక్క రాజతరంగిణి", "దివ్యవందన"],
      correctAnswerIndex: 2,
      explanation: "శ్రీనగర్‌ను అశోకుడు నిర్మించాడని కలహణ రాజతరంగిణి పేర్కొంది.",
    ),

    Question(
      questionText: "ఈ క్రింది గిరిజన సమ్మేళనాలలో ఏది సాధారణంగా గిరిజన చీఫ్ ఎన్నికలో పాల్గొంటుంది?",
      options: ["గోరా", "విదాత", "సమితి", "సభ"],
      correctAnswerIndex: 2,
      explanation: "గిరిజన ప్రధాన ఎన్నికలో పాల్గొన్న గిరిజన సభ సమితి.",
    ),

    Question(
      questionText: "విజయనగర రాజ్యంలో మధ్యయుగ కాలంలో ఋగ్వేదానికి అత్యంత ముఖ్యమైన వ్యాఖ్యానం ఎవరిచే వ్రాయబడింది?",
      options: ["కన్నడ", "సాగర్నందిన్", "చక్రపాణిదత్త", "సయన"],
      correctAnswerIndex: 3,
      explanation: "విజయనగర రాజ్యంలో మధ్యయుగ కాలంలో ఋగ్వేదంపై అత్యంత ముఖ్యమైన వ్యాఖ్యానం సయనచే రచించబడింది.",
    ),

    Question(
      questionText: "ఒరిస్సా 'గజపతి రాజవంశం' స్థాపకుడు ఎవరు?",
      options: ["ప్రతాపరుద్ర", "విద్యాధర", "పురుషోత్తం", "కపిలేంద్ర"],
      correctAnswerIndex: 3,
      explanation: "ఒరిస్సా 'గజపతి రాజవంశం' స్థాపకుడు కపిలేంద్ర.",
    ),

    Question(
      questionText: "గుప్తుల కాలం నాటి నవనిత్యకం ఒక పుస్తకం",
      options: ["గణితం", "ఖగోళ శాస్త్రం", "వైద్యం", "లోహశాస్త్రం"],
      correctAnswerIndex: 2,
      explanation: "గుప్తుల కాలం నాటి నవనిత్యకం వైద్యశాస్త్రంపై ఒక పుస్తకం.",
    ),

    Question(
      questionText: "6వ శతాబ్దపు CE నాటి మాండ్సోర్ స్తంభ శాసనం చెందినది",
      options: ["యశోధర్మన్", "తోరమణ", "అనంతవర్మ", "మిహిర్కుల"],
      correctAnswerIndex: 0,
      explanation: "క్రీ.శ. 6వ శతాబ్దానికి చెందిన మాండ్సోర్ స్తంభ శాసనం యశోధర్మునికి చెందినది.",
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
    home: ancientHistory_4_te(),
  ));
}

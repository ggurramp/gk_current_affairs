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

class parlimentary_te extends StatefulWidget {
  final String? userIdentifier;

  parlimentary_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parlimentary_te> createState() => _parlimentary_teState();
}

class _parlimentary_teState extends State<parlimentary_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//13.పార్లమెంటరీ వ్యవస్థ
    Question(
      questionText: "ఎగ్జిక్యూటివ్ తన విధానాలు మరియు చర్యలకు శాసనసభకు బాధ్యత వహించకుండా ఏ ప్రభుత్వ వ్యవస్థను కలిగి ఉంటుంది?",
      options:["పార్లమెంటరీ వ్యవస్థ", "అధ్యక్ష వ్యవస్థ", "వెస్ట్‌మిన్‌స్టర్ మోడల్", "క్యాబినెట్ ప్రభుత్వం"],
      correctAnswerIndex: 1,
      explanation:"ప్రభుత్వ అధ్యక్ష వ్యవస్థ దాని విధానాలు మరియు చర్యలకు శాసనసభకు బాధ్యత వహించని కార్యనిర్వాహక వర్గాన్ని కలిగి ఉంటుంది. ఈ వ్యవస్థ దాని పదవీ కాలానికి సంబంధించి శాసనసభ నుండి స్వతంత్రంగా ఉంటుంది.",
    ),

    Question(
      questionText: "భారతదేశం, బ్రిటన్, జపాన్ మరియు కెనడాలో ప్రబలంగా ఉన్న పార్లమెంటరీ ప్రభుత్వానికి మరొక పదం ఏమిటి?",
      options:["బాధ్యత లేని ప్రభుత్వం", "క్యాబినెట్ ప్రభుత్వం", "ఫిక్స్‌డ్ ఎగ్జిక్యూటివ్ సిస్టమ్", "వెస్ట్‌మిన్‌స్టర్ మోడల్"],
      correctAnswerIndex: 3,
      explanation:"భారతదేశం, బ్రిటన్, జపాన్ మరియు కెనడాలో ప్రబలంగా ఉన్న పార్లమెంటరీ ప్రభుత్వాన్ని వెస్ట్‌మినిస్టర్ మోడల్ ఆఫ్ గవర్నమెంట్ అని కూడా అంటారు.",
    ),

    Question(
      questionText: "పార్లమెంటరీ వ్యవస్థను 'క్యాబినెట్ వ్యవస్థ'గా మరియు బ్రిటిష్ ప్రధానమంత్రిని 'ప్రైమస్ ఇంటర్ పరేస్'గా ఎవరు అభివర్ణించారు?",
      options:["క్రాస్-మ్యాన్", "ఐవర్ జెన్నింగ్స్", "మాకింతోష్", "బ్రిటీష్ రాజ్యాంగ నిపుణులు"],
      correctAnswerIndex: 1,
      explanation:"ఐవోర్ జెన్నింగ్స్ పార్లమెంటరీ వ్యవస్థను 'క్యాబినెట్ వ్యవస్థ'గా మరియు బ్రిటీష్ ప్రధానమంత్రి 'ప్రైమస్ ఇంటర్ పరేస్' (సమానులలో మొదటిది)గా అభివర్ణించారు.",
    ),

    Question(
      questionText: "బ్రిటీష్ రాజకీయ వ్యవస్థ సందర్భంలో, మంత్రివర్గంలో ప్రధానమంత్రి యొక్క పెరిగిన శక్తి, ప్రభావం మరియు స్థానం గురించి వివరించడానికి ఏ పదాన్ని ఉపయోగిస్తారు?",
      options:["వెస్ట్‌మినిస్టర్ మోడల్", "కేబినెట్ ప్రభుత్వం", "ప్రధాన మంత్రి ప్రభుత్వం", "నాన్-పార్లమెంటరీ సిస్టమ్"],
      correctAnswerIndex: 2,
      explanation:"ఇటీవలి కాలంలో, రాజకీయ విశ్లేషకులు క్యాబినెట్‌లో బ్రిటిష్ ప్రధాన మంత్రి యొక్క పెరిగిన శక్తి, ప్రభావం మరియు స్థానాన్ని 'ప్రధాన మంత్రి ప్రభుత్వం'గా అభివర్ణించారు.",
    ),

    Question(
      questionText: "అమెరికన్ అధ్యక్ష ప్రభుత్వ వ్యవస్థకు ఆధారం ఏమిటి?",
      options:["క్యాబినెట్ ప్రభుత్వం", "వెస్ట్‌మిన్‌స్టర్ మోడల్", "అధికార విభజన సిద్ధాంతం", "బాధ్యత లేని ప్రభుత్వం"],
      correctAnswerIndex: 2,
      explanation:"అమెరికన్ ప్రెసిడెన్షియల్ సిస్టమ్ ఆఫ్ గవర్నమెంట్ యొక్క ఆధారం అధికారాల విభజన సిద్ధాంతం, ఇక్కడ శాసన, కార్యనిర్వాహక మరియు న్యాయపరమైన అధికారాలు వేరు చేయబడ్డాయి మరియు ప్రభుత్వం యొక్క స్వతంత్ర అవయవాలకు ఇవ్వబడ్డాయి.",
    ),
    Question(
      questionText: "శాసన మరియు కార్యనిర్వాహక సంస్థల మధ్య సంబంధాల పరంగా పార్లమెంటరీ వ్యవస్థ యొక్క ప్రాధమిక ప్రయోజనం ఏమిటి?",
      options:["ప్రభుత్వ స్థిరత్వం", "సామరస్య సంబంధాలు", "అధికారాల విభజన", "నియంతృత్వ ధోరణులు"],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటరీ వ్యవస్థ యొక్క గొప్ప ప్రయోజనం ఏమిటంటే అది ప్రభుత్వ శాసన మరియు కార్యనిర్వాహక సంస్థల మధ్య సామరస్యపూర్వకమైన సంబంధాన్ని మరియు సహకారాన్ని నిర్ధారిస్తుంది.",
    ),

    Question(
      questionText: "పార్లమెంటరీ వ్యవస్థ బాధ్యతాయుతమైన ప్రభుత్వాన్ని ఎలా ఏర్పాటు చేస్తుంది?",
      options:["అధికార విభజన ద్వారా", "అవిశ్వాస తీర్మానం ద్వారా", "నియంతృత్వం ద్వారా", "సమిష్టి బాధ్యత ద్వారా"],
      correctAnswerIndex: 3,
      explanation:"పార్లమెంటరీ వ్యవస్థ బాధ్యతాయుతమైన ప్రభుత్వాన్ని ఏర్పాటు చేస్తుంది, ఎందుకంటే మంత్రులు తమ చర్యలకు పార్లమెంటుకు సమిష్టిగా బాధ్యత వహిస్తారు, అవిశ్వాస తీర్మానం వంటి వివిధ మార్గాల ద్వారా జవాబుదారీగా ఉంటారు.",
    ),

    Question(
      questionText: "పార్లమెంటరీ వ్యవస్థలో నిరంకుశత్వాన్ని నిరోధించడంలో ప్రధాన ప్రయోజనం ఏమిటి?",
      options:["విధానాల కొనసాగింపు లేదు", "స్థిరమైన ప్రభుత్వం", "కార్యనిర్వాహక అధికారం చెదరగొట్టడం", "నియంతృత్వ ధోరణులు"],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటరీ వ్యవస్థలో నిరంకుశత్వాన్ని నిరోధించడం అనేది ఒకే వ్యక్తి కాకుండా వ్యక్తుల సమూహం (మంత్రుల మండలి) మధ్య కార్యనిర్వాహక అధికారాన్ని చెదరగొట్టడం ద్వారా సాధించబడుతుంది.",
    ),

    Question(
      questionText: "పార్లమెంటరీ వ్యవస్థలో, అధికార పార్టీ మెజారిటీని కోల్పోతే ఏమి జరుగుతుంది?",
      options:["తాజాగా ఎన్నికలు జరిగాయి", "రాష్ట్రపతి కొత్త ప్రధానమంత్రిని నియమిస్తారు", "ప్రత్యామ్నాయ ప్రభుత్వం ఏర్పడవచ్చు", "ప్రధానమంత్రి మరింత అధికారాన్ని పొందుతాడు"],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటరీ వ్యవస్థలో, అధికార పార్టీ మెజారిటీని కోల్పోతే, రాష్ట్ర అధినేత ప్రతిపక్ష పార్టీని ప్రభుత్వాన్ని ఏర్పాటు చేయడానికి ఆహ్వానించవచ్చు, తాజా ఎన్నికలు లేకుండా ప్రత్యామ్నాయాన్ని అందించవచ్చు.",
    ),

    Question(
      questionText: "ప్రభుత్వ స్థిరత్వం పరంగా పార్లమెంటరీ వ్యవస్థలో గుర్తించదగిన లోపం ఏమిటి?",
      options:["విధానాల కొనసాగింపు", "అస్థిర ప్రభుత్వం", "నిరంకుశత్వ నివారణ", "సమిష్టి బాధ్యత"],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటరీ వ్యవస్థ యొక్క గుర్తించదగిన లోపం ఏమిటంటే, ఎటువంటి హామీ లేకుండా అస్థిర ప్రభుత్వాన్ని అందించే దాని ధోరణి.ఒక ప్రభుత్వం తన పదవీకాలంలో మనుగడ సాగించగలదు.",
    ),
    Question(
      questionText: "అధ్యక్షుడి పాత్రకు సంబంధించి అమెరికా అధ్యక్ష వ్యవస్థలో కీలకమైన అంశం ఏమిటి?",
      options:["సెరిమోనియల్ హెడ్ మాత్రమే", "ప్రభుత్వ అధిపతి మాత్రమే", "రాష్ట్ర అధిపతి మరియు ప్రభుత్వ అధిపతి", "కాంగ్రెస్ చేత ఎన్నుకోబడినవారు"],
      correctAnswerIndex: 2,
      explanation:"అమెరికన్ అధ్యక్ష వ్యవస్థలో, అధ్యక్షుడు దేశాధినేత మరియు ప్రభుత్వ అధిపతిగా వ్యవహరిస్తారు.",
    ),

    Question(
      questionText: "అమెరికన్ ప్రెసిడెంట్ ఎలా ఎన్నికయ్యారు మరియు ఏ స్థిర పదవీకాలం కోసం?",
      options:["వేరియబుల్ పదవీకాలం కోసం ప్రత్యక్ష ప్రజాదరణ పొందిన ఓటు", "నిర్ధారిత పదవీకాలం కోసం కాంగ్రెస్ ద్వారా", "నాలుగేళ్ల నిర్ణీత పదవీకాలానికి ఎలక్టోరల్ కాలేజీ ద్వారా", "వేరియబుల్ పదవీకాలం కోసం పార్లమెంటరీ ఓటు ద్వారా"],
      correctAnswerIndex: 2,
      explanation:"అమెరికన్ ప్రెసిడెంట్ నాలుగు సంవత్సరాల నిర్ణీత పదవీకాలానికి ఎలక్టోరల్ కాలేజీ ద్వారా ఎన్నుకోబడతారు.",
    ),

    Question(
      questionText: "అమెరికన్ అధ్యక్ష వ్యవస్థలో మంత్రివర్గం పాత్ర ఏమిటి?",
      options:["లెజిస్లేచర్ నాయకుడు", "న్యాయవ్యవస్థ నాయకుడు", "కార్యనిర్వాహక నాయకుడు", "ప్రతిపక్ష నాయకుడు"],
      correctAnswerIndex: 3,
      explanation:"అమెరికన్ ప్రెసిడెన్షియల్ సిస్టమ్‌లో, ప్రెసిడెంట్ క్యాబినెట్ లేదా చిన్న సంస్థ సహాయంతో పరిపాలిస్తాడు, ప్రభుత్వ కార్యనిర్వాహక అవయవానికి నాయకత్వం వహిస్తాడు.",
    ),

    Question(
      questionText: "పాఠంలో పేర్కొన్న పార్లమెంటరీ వ్యవస్థ యొక్క లోపం ఏమిటి?",
      options:["ఔత్సాహికుల ద్వారా ప్రభుత్వం", "స్థిరమైన ప్రభుత్వం", "క్యాబినెట్ నియంతృత్వం", "సమిష్టి బాధ్యత"],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటరీ వ్యవస్థ యొక్క లోపం 'అమెచ్యూర్స్ చేత ప్రభుత్వం'గా పేర్కొనబడింది, ఎందుకంటే మంత్రులు వారి రంగాలలో నిపుణులు కాకపోవచ్చు, ఇది పరిపాలనా సామర్థ్యాన్ని ప్రభావితం చేస్తుంది.",
    ),

    Question(
      questionText: "భారతదేశంలో పార్లమెంటరీ విధానాన్ని అవలంబించడానికి రాజ్యాంగ నిర్మాతలు పేర్కొన్న కారణాలలో ఒకటి ఏమిటి?",
      options:["మరింత స్థిరత్వానికి ప్రాధాన్యత", "లెజిస్లేచర్ మరియు ఎగ్జిక్యూటివ్ మధ్య వైరుధ్యాలను నివారించడం", "సమాజం యొక్క సజాతీయత", "అధ్యక్ష వ్యవస్థ పరిచయం"],
      correctAnswerIndex: 2,
      explanation:"భారతదేశంలో పార్లమెంటరీ వ్యవస్థను అవలంబించడానికి ఉదహరించిన కారణాలలో ఒకటి శాసనసభ మరియు కార్యనిర్వాహక వర్గానికి మధ్య విభేదాలను నివారించడం, స్థిరత్వం మరియు బాధ్యతను ప్రోత్సహించడం.",
    ),
    Question(
      questionText: "కార్యనిర్వాహక వ్యవస్థకు సంబంధించి అధ్యక్ష వ్యవస్థ నుండి పార్లమెంటరీ వ్యవస్థను వేరుచేసే ముఖ్య లక్షణం ఏమిటి?",
      options:["పార్లమెంటరీ వ్యవస్థలో ద్వంద్వ కార్యనిర్వాహకుడు", "పార్లమెంటరీ వ్యవస్థలో ఒకే కార్యనిర్వాహకుడు", "అధ్యక్ష వ్యవస్థలో ద్వంద్వ కార్యనిర్వాహకుడు", "అధ్యక్ష వ్యవస్థలో ఒకే కార్యనిర్వాహకుడు"],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటరీ వ్యవస్థను వేరుచేసే ఒక ముఖ్య లక్షణం ద్వంద్వ కార్యనిర్వాహక వ్యవస్థ, అయితే అధ్యక్ష వ్యవస్థలో ఒకే కార్యనిర్వాహణాధికారి ఉంటుంది.",
    ),

    Question(
      questionText: "పార్లమెంటరీ వ్యవస్థలో, మెజారిటీ పార్టీకి సంబంధించి కార్యవర్గం ఎలా ఏర్పడుతుంది?",
      options:["అధ్యక్షుడు మరియు శాసనసభ్యులు విడివిడిగా ఎన్నుకోబడిన వారితో ఏర్పడినది", "సమిష్టి బాధ్యతతో ఏర్పడినది", "రాజకీయ సజాతీయతతో ఏర్పడినది", "ఒకే సభ్యత్వంతో ఏర్పడినది"],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటరీ వ్యవస్థలో, కార్యనిర్వాహక వ్యవస్థ రాజకీయ సజాతీయతతో ఏర్పడుతుంది, తరచుగా మెజారిటీ పార్టీకి చెందిన సభ్యులు ఉంటారు.",
    ),

    Question(
      questionText: "రాష్ట్రపతి మరియు శాసనసభ్యుల ఎన్నికకు సంబంధించి రాష్ట్రపతి వ్యవస్థ యొక్క లక్షణం ఏమిటి?",
      options:["మెజారిటీ పార్టీచే ఎన్నుకోబడినవారు", "సమిష్టి బాధ్యతతో ఎన్నుకోబడినవారు", "నిర్ణీత కాలానికి విడివిడిగా ఎన్నికయ్యారు", "ఒకే సభ్యత్వంతో ఎన్నికయ్యారు"],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్రపతి వ్యవస్థలో, రాష్ట్రపతి మరియు శాసనసభ్యులు నిర్ణీత కాలానికి విడివిడిగా ఎన్నుకోబడతారు.",
    ),

    Question(
      questionText: "ప్రభుత్వ స్థిరత్వానికి సంబంధించి పార్లమెంటరీ వ్యవస్థ యొక్క గుర్తించదగిన యోగ్యత ఏమిటి?",
      options:["అస్థిర ప్రభుత్వం", "బాధ్యత లేని ప్రభుత్వం", "స్థిర ప్రభుత్వం", "ఔత్సాహికుల ద్వారా ప్రభుత్వం"],
      correctAnswerIndex: 3,
      explanation:"పార్లమెంటరీ వ్యవస్థ యొక్క గుర్తించదగిన యోగ్యత స్థిరమైన ప్రభుత్వం.",
    ),

    Question(
      questionText: "పాలసీల పరంగా అధ్యక్ష వ్యవస్థతో సంబంధం ఉన్న లోపం ఏమిటి?",
      options:["నిపుణులచే ప్రభుత్వం", "విధానాలలో నిర్దిష్టత", "లెజిస్లేచర్ మరియు ఎగ్జిక్యూటివ్ మధ్య వైరుధ్యం", "నిరంకుశత్వానికి దారితీయవచ్చు"],
      correctAnswerIndex: 3,
      explanation:"ప్రెసిడెన్షియల్ సిస్టమ్‌తో అనుబంధించబడిన ఒక లోపం అనేది శాసనసభ మరియు కార్యనిర్వాహకుల మధ్య సంఘర్షణకు అవకాశం ఉంది, ఇది విధానాల యొక్క నిర్దిష్టతను ప్రభావితం చేస్తుంది.",
    ),
    Question(
      questionText: "బ్రిటీష్ వ్యవస్థ నుండి భారతదేశంలోని దేశాధినేతను ఏది వేరు చేస్తుంది?",
      options:["భారతదేశంలో వంశపారంపర్య స్థానం", "భారతదేశంలో ఎన్నికైన స్థానం", "భారతదేశంలో పార్లమెంటు సార్వభౌమాధికారం", "భారతదేశంలో పరిమిత అధికారాలు"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశంలో రాష్ట్రాధిపతి (అధ్యక్షుడు) ఎన్నుకోబడతారు, అయితే బ్రిటిష్ వ్యవస్థలో, రాష్ట్రాధిపతి (రాజు లేదా రాణి) వంశపారంపర్య పదవిని అనుభవిస్తారు.",
    ),

    Question(
      questionText: "భారతదేశంలోని పార్లమెంటరీ వ్యవస్థ పార్లమెంటు సార్వభౌమాధికారానికి సంబంధించి బ్రిటిష్ వ్యవస్థ నుండి ఎలా భిన్నంగా ఉంటుంది?",
      options:["భారతదేశంలో సుప్రీం పార్లమెంట్", "భారతదేశంలో పరిమిత అధికారాలు", "భారతదేశంలో సమాఖ్య వ్యవస్థ", "భారతదేశంలో లిఖిత రాజ్యాంగం"],
      correctAnswerIndex: 3,
      explanation:"బ్రిటీష్ వ్యవస్థ పార్లమెంటు సార్వభౌమాధికారంపై ఆధారపడి ఉంటుంది, భారతదేశంలో, వ్రాతపూర్వక రాజ్యాంగం, సమాఖ్య వ్యవస్థ, న్యాయ సమీక్ష మరియు ప్రాథమిక హక్కులు వంటి అంశాల కారణంగా పార్లమెంటుకు అత్యున్నత అధికారాలు లేవు.",
    ),

    Question(
      questionText: "బ్రిటన్‌లో ప్రధాన మంత్రికి భారతదేశం నుండి అర్హత ప్రమాణాల మధ్య తేడా ఏమిటి?",
      options:["బ్రిటన్‌లోని హౌస్ ఆఫ్ లార్డ్స్‌లో సభ్యత్వం", "బ్రిటన్‌లోని హౌస్ ఆఫ్ కామన్స్‌లో సభ్యత్వం", "భారతదేశంలోని ఏదైనా సభలో సభ్యత్వం", "భారతదేశంలో రాజ్యసభలో సభ్యత్వం"],
      correctAnswerIndex: 2,
      explanation:"బ్రిటన్‌లో, ప్రధాన మంత్రి హౌస్ ఆఫ్ కామన్స్‌లో సభ్యుడిగా ఉండాలి, అయితే భారతదేశంలో, ప్రధానమంత్రి పార్లమెంటు ఉభయ సభలలో దేనిలోనైనా సభ్యుడు కావచ్చు.",
    ),

    Question(
      questionText: "భారతదేశంలో లేని బ్రిటిష్ క్యాబినెట్ వ్యవస్థ యొక్క ప్రత్యేక లక్షణం ఏమిటి?",
      options:["షాడో క్యాబినెట్", "వ్రాతపూర్వక రాజ్యాంగం", "సమాఖ్య వ్యవస్థ", "మంత్రుల చట్టపరమైన బాధ్యత"],
      correctAnswerIndex: 0,
      explanation:"షాడో క్యాబినెట్' అనేది బ్రిటీష్ క్యాబినెట్ వ్యవస్థలో ఒక ప్రత్యేకమైన సంస్థ, ఇది ప్రతిపక్ష పార్టీచే ఏర్పాటు చేయబడింది మరియు భారతదేశంలో లేదు.",
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
    home: parlimentary_te(),
  ));
}

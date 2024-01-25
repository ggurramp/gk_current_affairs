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

class primeminister_te extends StatefulWidget {
  final String? userIdentifier;

  primeminister_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<primeminister_te> createState() => _primeminister_teState();
}

class _primeminister_teState extends State<primeminister_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//ప్రధాన మంత్రి
    Question(
      questionText: "మొదటి కాంగ్రెసేతర ప్రధానమంత్రి మరియు గతంలో బాంబే రాష్ట్రానికి ముఖ్యమంత్రిగా పనిచేశారు?",
      options:["VP సింగ్", "PV నరసింహారావు", "మొరార్జీ దేశాయ్", "చరణ్ సింగ్"],
      correctAnswerIndex: 2,
      explanation:"1952-56 సమయంలో మాజీ బొంబాయి రాష్ట్రానికి ముఖ్యమంత్రిగా ఉన్న మొరార్జీ దేశాయ్, మార్చి 1977లో మొదటి కాంగ్రెసేతర ప్రధానమంత్రి అయ్యారు.",
    ),

    Question(
      questionText: "1971-1973 మధ్య ఏ ప్రధానమంత్రి ఆంధ్ర ప్రదేశ్ ముఖ్యమంత్రిగా ఉన్నారా?",
      options:["PV నరసింహారావు", "VP సింగ్", "HD దేవెగౌడ", "నరేంద్ర మోడీ"],
      correctAnswerIndex: 0,
      explanation:"1971-1973 మధ్యకాలంలో దక్షిణ భారతదేశానికి చెందిన మొదటి ప్రధానమంత్రి పివి నరసింహారావు ఆంధ్రప్రదేశ్ ముఖ్యమంత్రిగా ఉన్నారు.",
    ),

    Question(
      questionText: "జూన్ 1996లో యునైటెడ్ ఫ్రంట్ ప్రభుత్వానికి నాయకత్వం వహించడానికి ముందు కర్ణాటక ముఖ్యమంత్రి ఎవరు?",
      options:["HD దేవెగౌడ", "మొరార్జీ దేశాయ్", "చరణ్ సింగ్", "నరేంద్ర మోడీ"],
      correctAnswerIndex: 0,
      explanation:"1996 జూన్‌లో యునైటెడ్ ఫ్రంట్ ప్రభుత్వానికి నాయకత్వం వహించడానికి హెచ్‌డి దేవెగౌడ ఎంపికైనప్పుడు కర్ణాటక ముఖ్యమంత్రిగా ఉన్నారు.",
    ),

    Question(
      questionText: "మే 2014లో ఎవరు ప్రధానమంత్రి అయ్యారు మరియు గతంలో గుజరాత్ ముఖ్యమంత్రిగా నాలుగు పర్యాయాలు పనిచేశారు?",
      options:["VP సింగ్", "PV నరసింహారావు", "నరేంద్ర మోడీ", "HD దేవెగౌడ"],
      correctAnswerIndex: 2,
      explanation:"గుజరాత్ ముఖ్యమంత్రిగా ఉన్న నరేంద్ర మోడీ, మే 2014లో ప్రధానమంత్రి అయ్యారు మరియు నాలుగు పర్యాయాలు ముఖ్యమంత్రిగా పనిచేశారు.",
    ),

    Question(
        questionText: "పార్లమెంటరీ వ్యవస్థల సందర్భంలో 'కేర్‌టేకర్' అనే పదం దేనిని సూచిస్తుంది?",
        options:[
          "ఏ విధమైన ముఖ్యమైన విధాన నిర్ణయాలు తీసుకోకుండా సాధారణ కార్యకలాపాలను నిర్వహించే ప్రభుత్వం",
          "ప్రజలచే నేరుగా ఎన్నుకోబడిన ప్రభుత్వం",
          "ఆపద్ధర్మ ఎన్నికల సమయంలో ఏర్పడిన ప్రభుత్వం",
          "పరిమిత కాలానికి పదవిని కలిగి ఉన్న ప్రభుత్వం"
        ],
        correctAnswerIndex: 0,
        explanation:"పార్లమెంటరీ వ్యవస్థల సందర్భంలో, ఎటువంటి ముఖ్యమైన విధాన నిర్ణయాలు తీసుకోకుండా సాధారణ కార్యకలాపాలను నిర్వహించే ప్రభుత్వాన్ని తాత్కాలిక ప్రభుత్వం సూచిస్తుంది."
    ),

    Question(
      questionText: "పార్లమెంటులోని పాపులర్ ఛాంబర్‌ను రద్దు చేసిన తర్వాత తాత్కాలిక ప్రభుత్వం ఏ పాత్ర నిర్వహిస్తుంది?",
      options:[
        "కొత్త విధానాలు మరియు ప్రాజెక్టులను ప్రారంభించండి",
        "ప్రత్యామ్నాయ ఏర్పాట్లు చేసే వరకు ఛార్జ్ పట్టుకోండి",
        "ముఖ్యమైన విధాన నిర్ణయాలు తీసుకోండి",
        "ఏ మార్పులు లేకుండా పాలన కొనసాగించండి"
      ],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటులోని పాపులర్ ఛాంబర్‌ను రద్దు చేసిన తర్వాత ప్రత్యామ్నాయ ఏర్పాట్లు చేసే వరకు ఆపద్ధర్మ ప్రభుత్వం బాధ్యత వహించాలని.",
    ),

    Question(
      questionText: "ఠాకుర్డే కమిటీ సిఫార్సు చేసిన విధంగా తాత్కాలిక ప్రభుత్వంపై ఏ పరిమితులు విధించబడ్డాయి?",
      options:[
        "కొత్త విధానాలను ప్రారంభించండి మరియు ప్రకటించండి",
        "వాగ్దానం చేయండి లేదా కొత్త ప్రాజెక్ట్‌లను ప్రారంభించండి",
        "గ్రాంట్ అలవెన్సులు లేదా రుణాలు, జీతం పెరుగుదల",
        "మంత్రులు పాల్గొనే అధికారిక కార్యక్రమాలను నిర్వహించండి"
      ],
      correctAnswerIndex: 0,
      explanation:"ఇతర పరిమితులతోపాటు, ఒక ఆపద్ధర్మ ప్రభుత్వం కొత్త విధానాలను ప్రారంభించకూడదని మరియు ప్రకటించకూడదని ఠాకుర్డే కమిటీ సిఫార్సు చేసింది.",
    ),

    Question(
      questionText: "డిసెంబర్ 1979లో ఒక తీర్పు ప్రకారం, ఆపద్ధర్మ ప్రభుత్వం అవసరం వంటి అసాధారణ పరిస్థితి దేనిని కోరుతుంది?",
      options:[
        "విస్తరించిన అధికారాలు కలిగిన ప్రభుత్వం",
        "ఎలాంటి ఆంక్షలు లేని ప్రభుత్వం",
        "పరిమిత పాత్రలతో ఆపద్ధర్మ ప్రభుత్వం",
        "అపరిమిత నిబంధనలతో కూడిన ప్రభుత్వం"
      ],
      correctAnswerIndex: 2,
      explanation:"డిసెంబరు 1979లో ఒక తీర్పు ప్రకారం, ఒక కేర్ టేకర్ ప్రభుత్వం అవసరం వంటి అసాధారణ పరిస్థితి, పరిమిత పాత్రలతో కూడిన కేర్ టేకర్ ప్రభుత్వానికి పిలుపునిస్తుంది.",
    ),

    Question(
      questionText: "టెక్స్ట్‌లో తాత్కాలిక ప్రధాన మంత్రులను నిరోధించే రెండు కారణాలు ఏమిటి?",
      options:[
        "పార్లమెంట్ ద్వారా జవాబుదారీతనం లేకపోవడం మరియు ఎన్నికల ప్రయోజనం కోసం పదవిని దుర్వినియోగం చేయడం",
        "పరిమిత అధికారాలు మరియు ఎన్నికల ప్రయోజనం కోసం పదవిని దుర్వినియోగం చేయకపోవడం",
        "ఎన్నికల ప్రయోజనం మరియు అనియంత్రిత అధికారాలు లేకపోవడం",
        "అధిక జవాబుదారీతనం మరియు ఎన్నికల ప్రయోజనం కోసం పదవి దుర్వినియోగం"
      ],
      correctAnswerIndex: 0,
      explanation:"పార్లమెంటు ద్వారా జవాబుదారీతనం లేకపోవడం మరియు ఎన్నికల ప్రయోజనం కోసం వారి పదవిని దుర్వినియోగం చేయడం వలన తాత్కాలిక ప్రధానమంత్రులు నిర్బంధించబడ్డారు.",
    ),
    Question(
      questionText: "ప్రధాన మంత్రి పదవిని లార్డ్ మోర్లీ ఎలా వర్ణించారు?",
      options:[
        "'ప్రైమస్ ఇంటర్ పరేస్' (సమానాలలో మొదటిది) మరియు 'కేబినెట్ ఆర్చ్ యొక్క కీస్టోన్'",
        "'ఇంటర్ స్టెల్లాస్ లూనా మైనర్స్' (తక్కువ నక్షత్రాలలో చంద్రుడు)",
        "గ్రహాలు తిరిగే సూర్యుడు",
        "రాష్ట్ర ఓడ కెప్టెన్"
      ],
      correctAnswerIndex: 0,
      explanation:"లార్డ్ మోర్లీ ప్రధానమంత్రిని 'ప్రైమస్ ఇంటర్ పరేస్' (సమానులలో మొదటివాడు) మరియు 'కేబినెట్ ఆర్చ్ యొక్క కీస్టోన్'గా అభివర్ణించాడు.",
    ),

    Question(
      questionText: "జెన్నింగ్స్ ప్రకారం, రాజ్యాంగంలో ప్రధానమంత్రి పాత్రను అతను ఎలా వివరించాడు?",
      options:[
        "ది కెప్టెన్ ఆఫ్ ది షిప్ ఆఫ్ ది స్టేట్",
        "గ్రహాలు తిరిగే సూర్యుడు",
        "ప్రైమస్ ఇంటర్ పరేస్ మరియు కేబినెట్ ఆర్చ్ యొక్క కీస్టోన్",
        "దాని నిర్మాణానికి కేంద్రం, దాని జీవితానికి కేంద్రం మరియు దాని మరణానికి కేంద్రం"
      ],
      correctAnswerIndex: 1,
      explanation:"జెన్నింగ్స్ ప్రధానమంత్రి పాత్రను 'అతను సూర్యుడు, దాని చుట్టూ గ్రహాలు తిరుగుతాయి. అతను రాజ్యాంగానికి కీలక రాయి' అని వర్ణించాడు.",
    ),

    Question(
      questionText: "ప్రధాన మంత్రి మరియు మంత్రివర్గం మధ్య సంబంధాన్ని హెచ్‌జె లాస్కీ ఎలా వివరించారు?",
      options:[
        "ప్రైమస్ ఇంటర్ పరేస్ మరియు కేబినెట్ ఆర్చ్ యొక్క కీస్టోన్",
        "దేశానికి యజమాని మరియు ప్రభుత్వానికి యజమాని",
        "దాని నిర్మాణానికి కేంద్రం, దాని జీవితానికి కేంద్రం మరియు దాని మరణానికి కేంద్రం",
        "మొత్తం ప్రభుత్వ నిర్వహణ తిరిగే ఇరుసు"
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రధానమంత్రిని 'మొత్తం ప్రభుత్వ నిర్వహణ తిరిగే ఇరుసు' అని హెచ్‌జె లాస్కీ అభివర్ణించారు.",
    ),

    Question(
      questionText: "ప్రధానమంత్రిని వివరించడానికి రామ్‌సే ముయిర్ ఏ పదాన్ని ఉపయోగించారు?",
      options:[
        "దేశానికి యజమాని",
        "ది కెప్టెన్ ఆఫ్ ది షిప్ ఆఫ్ ది స్టేట్",
        "ది స్టీరింగ్ వీల్ ఆఫ్ ది షిప్ ఆఫ్ ది షిప్",
        "ప్రైమస్ ఇంటర్ పరేస్ మరియు క్యాబినెట్ ఆర్చ్ యొక్క కీస్టోన్"
      ],
      correctAnswerIndex: 2,
      explanation:"రామ్సే ముయిర్ ప్రధానమంత్రిని 'రాష్ట్ర నౌక యొక్క స్టీరింగ్ వీల్ యొక్క స్టీర్స్‌మ్యాన్'గా అభివర్ణించారు.",
    ),

    Question(
      questionText: "RH క్రాస్మాన్ ప్రకారం, యుద్ధానంతర యుగంలో బ్రిటిష్ పాలనా వ్యవస్థలో ఏ పరివర్తన జరిగింది?",
      options:[
        "పార్లమెంటరీ ప్రజాస్వామ్యంగా రూపాంతరం",
        "కేబినెట్ ప్రభుత్వంగా రూపాంతరం",
        "ప్రధానమంత్రి ప్రభుత్వంగా రూపాంతరం",
        "సమాఖ్య వ్యవస్థగా రూపాంతరం"
      ],
      correctAnswerIndex: 2,
      explanation:"H క్రాస్‌మాన్ ఇలా గుర్తించాడు, 'యుద్ధాంతర యుగం క్యాబినెట్ ప్రభుత్వాన్ని ప్రధాన మంత్రి ప్రభుత్వంగా మార్చడం'",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని ఆర్టికల్ 74 రాష్ట్రపతి మరియు ప్రధాన మధ్య సంబంధానికి సంబంధించి మంత్రికి ఏమి తెలుస్తుంది?",
      options:[
        "ప్రధానమంత్రిని రాష్ట్రపతి నియమిస్తారు",
        "ప్రధానమంత్రి రాష్ట్రపతి సలహాకు అనుగుణంగా నడుచుకోవాలి",
        "అధ్యక్షుడు మంత్రి మండలి సలహాను పునఃపరిశీలించవలసి ఉంటుంది",
        "ప్రజల సభకు ప్రధానమంత్రి సమిష్టిగా బాధ్యత వహిస్తారు"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రధానమంత్రి రాష్ట్రపతి సలహాకు అనుగుణంగా నడుచుకోవాలని ఆర్టికల్ 74 నిర్దేశిస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 75 ప్రకారం, ప్రధానమంత్రికి అదనంగా మంత్రులను ఎవరు నియమిస్తారు?",
      options:[
        "రాష్ట్రపతి",
        "మంత్రి మండలి",
        "లోక్ సభ",
        "గవర్నర్"
      ],
      correctAnswerIndex: 0,
      explanation:"ఆర్టికల్ 75 ప్రకారం, మంత్రులను ప్రధానమంత్రి సలహా మేరకు రాష్ట్రపతి నియమిస్తారు.",
    ),

    Question(
      questionText: "ఆర్టికల్ 78 ప్రకారం, ప్రధానమంత్రి విధి ఏమిటి?",
      options:[
        "అధ్యక్షుని సంతోషం సమయంలో పదవిని నిర్వహించడం",
        "నిర్ణయాలను రాష్ట్రపతికి తెలియజేయడానికి మరియు విషయాలను పునఃపరిశీలనకు సమర్పించడానికి",
        "ప్రత్యామ్నాయ ఏర్పాట్లు చేసే వరకు బాధ్యతలు నిర్వహించండి",
        "ముఖ్యమైన విధాన నిర్ణయాలు తీసుకోవడానికి"
      ],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 78 ప్రకారం, ప్రధానమంత్రి విధిలో నిర్ణయాలను రాష్ట్రపతికి తెలియజేయడం మరియు మంత్రుల మండలి ద్వారా పునఃపరిశీలన కోసం వస్తువులను సమర్పించడం జరుగుతుంది.",
    ),
    Question(
      questionText: "ప్రధానమంత్రి పదవిలో ప్రవేశించే ముందు ప్రమాణ స్వీకారంలో ఏమి చేర్చబడింది?",
      options:[
        "భారత సార్వభౌమత్వాన్ని మరియు సమగ్రతను నిలబెట్టడానికి",
        "భారత రాజ్యాంగంపై నిజమైన విశ్వాసం మరియు విధేయతను కలిగి ఉండటం",
        "నిష్ఠగా మరియు మనస్సాక్షిగా కార్యాలయ విధులను నిర్వర్తించడానికి",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రధానమంత్రి ప్రమాణ స్వీకారం భారతదేశ సార్వభౌమాధికారం మరియు సమగ్రతను సమర్థించడం, భారత రాజ్యాంగంపై నిజమైన విశ్వాసం మరియు విధేయతను కలిగి ఉండటం మరియు పదవి బాధ్యతలను నమ్మకంగా మరియు మనస్సాక్షిగా నిర్వహించడం వంటివి ఉంటాయి.",
    ),

    Question(
      questionText: "ప్రధానమంత్రి పదవీకాలం ఎలా నిర్ణయించబడుతుంది?",
      options:[
        "ఐదేళ్ల స్థిర కాలవ్యవధి",
        "అధ్యక్షుని సంతోషం సమయంలో పదవీ బాధ్యతలు నిర్వర్తించారు",
        "గరిష్టంగా రెండు పదాల కోసం నియమించబడింది",
        "పార్లమెంటుచే ఎన్నుకోబడినది"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రధానమంత్రి పదవీకాలం నిర్ణయించబడలేదు మరియు అతను/ఆమె రాష్ట్రపతి సంతోషించే సమయంలో పదవిలో ఉంటారు.",
    ),

    Question(
        questionText: " ఏ పరిస్థితులలో రాష్ట్రపతి ప్రధానమంత్రిని తొలగించవచ్చు?",
        options:[
          "ఎప్పుడైనా",
          "ప్రధాని లోక్‌సభలో మెజారిటీ మద్దతు కోల్పోయినప్పుడు",
          "రెండు పదాలను పూర్తి చేసిన తర్వాత",
          "ప్రధాని రాష్ట్రపతితో విభేదిస్తే"
        ],
        correctAnswerIndex: 1,
        explanation:"ప్రధానమంత్రి లోక్‌సభ విశ్వాసాన్ని కోల్పోతే, రాష్ట్రపతి అతనిని తొలగించవచ్చు."
    ),

    Question(
      questionText: "ప్రధానమంత్రి జీతం ఎలా నిర్ణయించబడుతుంది?",
      options:[
        "రాష్ట్రపతిచే నిర్ణయించబడిన మొత్తం",
        "పార్లమెంట్ నిర్ణయించింది",
        "ఫైనాన్స్ కమిటీ సిఫార్సు ప్రకారం",
        "సొంత జీతం నిర్ణయించుకున్న ప్రధాని"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రధానమంత్రి జీతం మరియు భత్యాలు దాదాపుగా నిర్ణయించబడతాయి.",
    ),

    Question(
      questionText: "మంత్రి మండలికి సంబంధించి ప్రధాన మంత్రికి ఏ అధికారం ఉందా?",
      options:[
        "కారణం లేకుండా ఏ మంత్రిని అయినా తొలగించవచ్చు",
        "మంత్రుల మధ్య శాఖలను పునర్వ్యవస్థీకరించవచ్చు",
        "మండలి ఆమోదం లేకుండా ఏకపక్షంగా నిర్ణయాలు తీసుకోవచ్చు",
        "మండలి నిర్ణయాలను ప్రభావితం చేయలేరు"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రధానమంత్రి మంత్రులకు వివిధ శాఖలను కేటాయించవచ్చు మరియు పునర్వ్యవస్థీకరించవచ్చు.",
    ),

    Question(
      questionText: "రాష్ట్రపతికి సంబంధించి, ఆర్టికల్ 78 ప్రకారం ప్రధానమంత్రి విధి ఏమిటి?",
      options:[
        "మంత్రి మండలి నిర్ణయాలను అధ్యక్షుడికి తెలియజేయడానికి",
        "లోక్సభ రద్దును జాగ్రత్తగా చేయడానికి",
        "మంత్రి మండలి సమావేశాలకు అధ్యక్షత వహించడానికి",
        "అటార్నీ జనరల్ వంటి ముఖ్యమైన అధికారులను నియమించడం"
      ],
      correctAnswerIndex: 0,
      explanation:"ఆర్టికల్ 78 ప్రకారం, మంత్రుల మండలి యొక్క అన్ని నిర్ణయాలను రాష్ట్రపతికి తెలియజేయడం ప్రధానమంత్రి విధి.",
    ),

    Question(
      questionText: "దేశ విదేశాంగ రూపకల్పనలో ప్రధాన మంత్రి ఎలాంటి పాత్ర పోషించారు?",
      options:[
        "కేంద్ర ప్రభుత్వ ప్రధాన ప్రతినిధి",
        "నీతి ఆయోగ్ ఛైర్మన్",
        "అధికారంలో ఉన్న పార్టీ నాయకుడు",
        "విదేశాంగ రూపకల్పనలో ముఖ్యమైన పాత్ర"
      ],
      correctAnswerIndex: 3,
      explanation:"దేశ విదేశాంగ రూపకల్పనలో ప్రధానమంత్రి ముఖ్యమైన పాత్ర పోషించారు.",
    ),

    Question(
      questionText: "డా. బి.ఆర్. అంబేద్కర్ ప్రకారం, భారత రాజ్యాంగం ప్రకారం ఏ కార్యకర్తను అమెరికా అధ్యక్షుడితో పోల్చవచ్చు?",
      options:[
        "భారత రాష్ట్రపతి",
        "ప్రధాన మంత్రి",
        "భారత ప్రధాన న్యాయమూర్తి",
        "లోక్‌సభ స్పీకర్"
      ],
      correctAnswerIndex: 1,
      explanation:"భారత రాజ్యాంగం ప్రకారం ఏ కార్యకర్తనైనా అమెరికా అధ్యక్షుడితో పోల్చాలంటే అది ప్రధానమంత్రి అని డాక్టర్ బిఆర్ అంబేద్కర్ పేర్కొన్నారు.",
    ),
    Question(
      questionText: "పార్లమెంటరీ వ్యవస్థలో, రాష్ట్రపతి ఎలాంటి ప్రభుత్వ పాత్ర పోషిస్తారు?",
      options:[
        "నామమాత్రపు కార్యనిర్వాహక అధికారం",
        "నిజమైన కార్యనిర్వాహక అధికారం",
        "ప్రభుత్వ అధిపతి",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 0,
      explanation:"పార్లమెంటరీ వ్యవస్థలో, రాష్ట్రపతి నామమాత్రపు కార్యనిర్వాహక అధికారి (డి జ్యూర్ ఎగ్జిక్యూటివ్), ప్రధానమంత్రి నిజమైన కార్యనిర్వాహక అధికారి (వాస్తవ కార్యనిర్వాహకుడు).",
    ),

    Question(
      questionText: "ప్రధానమంత్రిని ఎలా నియమిస్తారు?",
      options:[
        "ప్రజల ద్వారా ప్రత్యక్ష ఎన్నికలు",
        "పార్లమెంట్ ద్వారా నియామకం",
        "రాష్ట్రపతి నియామకం",
        "సుప్రీం కోర్ట్ ద్వారా నియామకం"
      ],
      correctAnswerIndex: 2,
      explanation:"లోక్‌సభలో మెజారిటీ పార్టీ నాయకుడిని ఎన్నుకునే సంప్రదాయాన్ని అనుసరించి ప్రధానమంత్రిని రాష్ట్రపతి నియమిస్తారు.",
    ),

    Question(
      questionText: "లోక్‌సభలో ఏ పార్టీకి స్పష్టమైన మెజారిటీ లేనప్పుడు ఏమి జరుగుతుంది?",
      options:[
        "అర్హత ఉన్న వ్యక్తిని రాష్ట్రపతి నియమిస్తాడు",
        "అధ్యక్షుడు వ్యక్తిగత విచక్షణను అమలు చేస్తాడు",
        "ప్రధానమంత్రి నేరుగా ప్రజలచే ఎన్నుకోబడతారు",
        "వెళ్లిపోతున్న ప్రధానమంత్రి పదవిలో కొనసాగుతున్నారు"
      ],
      correctAnswerIndex: 1,
      explanation:"ఏ పార్టీకి స్పష్టమైన మెజారిటీ లేనప్పుడు, ప్రధానమంత్రిని ఎంపిక చేయడంలో మరియు నియమించడంలో రాష్ట్రపతి వ్యక్తిగత విచక్షణాధికారాన్ని వినియోగించుకోవచ్చు.",
    ),

    Question(
      questionText: "ప్రధానమంత్రిని నియమించడంలో రాష్ట్రపతి ఏ పరిస్థితిలో వ్యక్తిగత తీర్పును ఉపయోగించాల్సి ఉంటుంది?",
      options:[
        "ప్రధాని లోక్‌సభలో విశ్వాసం కోల్పోయినప్పుడు",
        "ప్రస్తుత ప్రధానమంత్రి మరణం తర్వాత స్పష్టమైన వారసుడు లేనప్పుడు",
        "పార్లమెంట్ నాయకత్వంలో మార్పును కోరినప్పుడు",
        "అధికార పార్టీ కొత్త నాయకుడిని ఎన్నుకున్నప్పుడు"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రస్తుత ప్రధానమంత్రి అకస్మాత్తుగా మరణించినప్పుడు మరియు స్పష్టమైన వారసుడు లేనప్పుడు రాష్ట్రపతి వ్యక్తిగత తీర్పును ఉపయోగించవచ్చు.",
    ),

    Question(
      questionText: "ప్రధానమంత్రి నియామకానికి సంబంధించి ఢిల్లీ హైకోర్టు 1980లో ఏ తీర్పు ఇచ్చింది?",
      options:[
        "ప్రధానమంత్రి నియామకానికి ముందు మెజారిటీ నిరూపించుకోవాలి",
        "ముందు ప్రధానమంత్రిని నియమించి, ఆ తర్వాత మెజారిటీ నిరూపించుకోవచ్చు",
        "ప్రధానమంత్రిని ప్రజలు నేరుగా ఎన్నుకోవాలి",
        "ప్రధానబడి మంత్రి నియామకం ఎటువంటి నిబంధనలకు లోబడి ఉండదు"
      ],
      correctAnswerIndex: 1,
      explanation:"ఢిల్లీ హైకోర్టు 1980లో ప్రధానమంత్రిని ముందుగా నియమించారు, ఆపై లోక్‌సభలో మెజారిటీని సహేతుకమైన వ్యవధిలో నిరూపించుకోవచ్చని తీర్పునిచ్చింది.",
    ),

    Question(
      questionText: "పార్లమెంటు రెండు సభలలో సభ్యుడు కాని వ్యక్తిని ప్రధానమంత్రిగా నియమించవచ్చా?",
      options:[
        "అవును, ఎటువంటి పరిమితులు లేకుండా",
        "లేదు, ఇది రాజ్యాంగబద్ధంగా అనుమతించబడదు",
        "అవును, భిన్నంగా ఒక నెల వరకు",
        "అవును, ఆ నెలల వ్యవధిలోపు సభ్యత్వం పొందాలంటే షరతుతో ఆరు నెలలు"
      ],
      correctAnswerIndex: 3,
      explanation:"పార్లమెంటు రెండు సభలలో సభ్యుడు కాని వ్యక్తిని ఆరు నెలల పాటు ప్రధానమంత్రిగా నియమించబడిన వ్యక్తిగా, ఆ లోపు వారు సభ్యుడిగా ఉండాలని సుప్రీంకోర్టు 1997లో ప్రకటించారు.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రకారం ప్రధానమంత్రి ఏ పార్లమెంటులో సభ్యుడు కావచ్చు?",
      options:[
        "లోక్ సభ మాత్రమే",
        "రాజ్యసభ మాత్రమే",
        "లోక్ సభ లేదా రాజ్యసభ",
        "లోక్ సభ మరియు రాజ్యసభ రెండూ ఏకకాలంలో"
      ],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగపరంగా, ప్రధానమంత్రి లోక్‌సభ లేదా రాజ్యసభ సభ్యుడు కావచ్చు.",
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
    home: primeminister_te(),
  ));
}

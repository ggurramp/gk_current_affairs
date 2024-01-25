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

class interStateRelations_te extends StatefulWidget {
  final String? userIdentifier;

  interStateRelations_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<interStateRelations_te> createState() => _interStateRelations_teState();
}

class _interStateRelations_teState extends State<interStateRelations_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//16.అంతర్-రాష్ట్ర సంబంధాలు
    Question(
        questionText: "భారత రాజ్యాంగంలోని అంతర్-రాష్ట్ర సమిష్టికి సంబంధించిన నిబంధనలు ఏమిటి?",
        options:[
          "అంతర్ రాష్ట్ర జల వివాదాల తీర్పు.",
          "అంతర్-రాష్ట్ర మండలిల ద్వారా సమన్వయం.",
          "పబ్లిక్ చర్యలు, రికార్డులు మరియు న్యాయ విచారణల పరస్పర గుర్తింపు.",
          "అంతర్-రాష్ట్ర వాణిజ్యం, వాణిజ్యం మరియు సంభోగం యొక్క స్వేచ్ఛ.",
          "పైన ఉన్నవన్నీ."
        ],
        correctAnswerIndex: 4,
        explanation:"ఇంటర్-స్టేట్ కమిటీకి సంబంధించిన భారత రాజ్యాంగంలోని నిబంధనలలో నీటి వివాదాల తీర్పు, కౌన్సిల్‌ల ద్వారా సమన్వయం, పబ్లిక్ చర్యలు, రికార్డులు మరియు న్యాయ విచారణల పరస్పర గుర్తింపు, అలాగే అంతర్-రాష్ట్ర వాణిజ్యం, వాణిజ్యం మరియు స్వేచ్ఛ ఉన్నాయి. సంభోగం."
    ),

    Question(
        questionText: "రాజ్యాంగంలోని ఆర్టికల్ 262 ప్రకారం, అంతర్ రాష్ట్ర జల వివాదాలకు సంబంధించి పార్లమెంటుకు ఎలాంటి అధికారాలు ఉన్నాయి?",
        options:[
          "అంతర్ రాష్ట్ర నదులకు సంబంధించిన వివాదాల తీర్పును అందించండి.",
          "అన్ని జల వివాదాలలో అధికార పరిధిని వినియోగించుకోండి.",
          "నీటి నియంత్రణ కోసం మండల పరిషత్తులను ఏర్పాటు చేయండి.",
          "అన్ని జల వివాదాలను నేరుగా సుప్రీంకోర్టుకు రిఫర్ చేయండి."
        ],
        correctAnswerIndex: 0,
        explanation:"ప్రకరణ 262 ప్రకారం, ఏదైనా అంతర్-రాష్ట్ర నదీ మరియు నదీ లోయ జలాల వినియోగం, పంపిణీ మరియు నియంత్రణకు సంబంధించిన వివాదాల తీర్పును అందించే అధికారం పార్లమెంటుకు ఉంది."
    ),

    Question(
        questionText: "అంతర్ రాష్ట్ర నదీ జలాల వివాదాల చట్టం కేంద్ర ప్రభుత్వానికి ఎలా అధికారం ఇస్తుంది?",
        options:[
        "అంతర్-రాష్ట్ర వాణిజ్యాన్ని నియంత్రించడానికి.",
        "జల వివాదాల పరిష్కారానికి తాత్కాలిక ట్రిబ్యునల్‌లను ఏర్పాటు చేయడం.",
        "సమన్వయం కోసం మండల పరిషత్తులను ఏర్పాటు చేయడానికి.",
        "రాష్ట్ర వ్యవహారాల్లో నేరుగా జోక్యం చేసుకోవాలి."
    ],
    correctAnswerIndex: 1,
    explanation:"అంతర్-రాష్ట్ర నదీ జలాల వివాదాల చట్టం, అంతర్-రాష్ట్ర నదీ లేదా నదీ లోయ జలాలకు సంబంధించి రెండు లేదా అంతకంటే ఎక్కువ రాష్ట్రాల మధ్య వివాదాల పరిష్కారానికి తాత్కాలిక ట్రిబ్యునల్‌లను ఏర్పాటు చేయడానికి కేంద్ర ప్రభుత్వానికి అధికారం ఇస్తుంది."
    ),

    Question(
        questionText: "రివర్ బోర్డుల చట్టం (1956) ప్రయోజనం ఏమిటి?",
        options:[
          "మండల పరిషత్తుల ఏర్పాటుకు.",
          "అంతర్-రాష్ట్ర వాణిజ్యాన్ని నియంత్రించడానికి.",
          "జల వివాదాల తీర్పును అందించడానికి.",
          "అంతర్-రాష్ట్ర నదీ మరియు నదీ లోయల నియంత్రణ మరియు అభివృద్ధి కోసం నదీ బోర్డులను ఏర్పాటు చేయడం."
        ],
        correctAnswerIndex: 3,
        explanation:"నదీ బోర్డుల చట్టం (1956) అంతర్-రాష్ట్ర నదీ మరియు నదీ లోయల నియంత్రణ మరియు అభివృద్ధి కోసం నదీ బోర్డులను ఏర్పాటు చేయడం, సంబంధిత విషయాలపై రాష్ట్ర ప్రభుత్వాలకు సలహా ఇవ్వడం లక్ష్యంగా పెట్టుకుంది."
    ),

    Question(
        questionText: "అంతర్-రాష్ట్ర నదీ జలాల వివాదాల చట్టం కింద ఏర్పాటైన తాత్కాలిక ట్రిబ్యునల్ నిర్ణయం అంతిమంగా మరియు కట్టుబడి ఎందుకు పరిగణించబడుతుంది?",
        options:[
          "ఎందుకంటే ఇది రాజ్యాంగాన్ని దాటవేస్తుంది.",
          "ఎందుకంటే ఇది నేరుగా సుప్రీంకోర్టుకు సంబంధించినది.",
          "ఎందుకంటే పార్లమెంటు దానిని ఆదేశించింది.",
          "ఎందుకంటే ఇది తదుపరి చట్టపరమైన సహాయం లేకుండా పరిష్కారాన్ని నిర్ధారిస్తుంది."
        ],
        correctAnswerIndex: 3,
        explanation:"ఇంటర్-స్టేట్ నదీ జలాల వివాదాల చట్టం ప్రకారం తాత్కాలిక ట్రిబ్యునల్ నిర్ణయం అంతిమంగా పరిగణించబడుతుంది మరియు తదుపరి చట్టపరమైన సహాయం అవసరం లేకుండా పరిష్కారానికి హామీ ఇస్తుంది."
    ),

    Question(
        questionText: "అంతర్-రాష్ట్ర సహకారం మరియు సమన్వయాన్ని ప్రోత్సహించడంలో జోనల్ కౌన్సిల్‌లు ఏ పాత్ర పోషిస్తాయి?",
        options:[
          "జల వివాదాలను పరిష్కరించడం.",
          "వాణిజ్యం మరియు వాణిజ్యాన్ని నియంత్రించడం.",
          "ప్రజా చర్యల పరస్పర గుర్తింపును ప్రోత్సహించడం.",
          "అంతర్-రాష్ట్ర సహకారాన్ని సమన్వయం చేయడం మరియు ప్రోత్సహించడం."
        ],
        correctAnswerIndex: 3,
        explanation:"పార్లమెంట్ ద్వారా స్థాపించబడిన జోనల్ కౌన్సిల్‌లు, అంతర్-రాష్ట్ర సహకారం మరియు సమన్వయాన్ని ప్రోత్సహించడంలో పాత్ర పోషిస్తాయి."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 263 ఇంటర్-స్టేట్ కౌన్సిల్‌ల గురించి ఏమి ఆలోచిస్తుంది?",
        options:[
          "రాష్ట్రాల మధ్య మరియు కేంద్రం మరియు రాష్ట్రాల మధ్య సమన్వయం కోసం ఇంటర్-స్టేట్ కౌన్సిల్స్ ఏర్పాటు.",
          "అధ్యక్షుని విధుల స్వభావం యొక్క నిర్వచనం.",
          "అంతర్-రాష్ట్ర వివాదాలను పరిష్కరించేందుకు సుప్రీంకోర్టుకు అధికారం.",
          "పన్ను ప్రయోజనాల కోసం ప్రాంతీయ కౌన్సిల్‌ల ఏర్పాటు."
        ],
        correctAnswerIndex: 0,
        explanation:"రాష్ట్రాల మధ్య మరియు కేంద్రం మరియు రాష్ట్రాల మధ్య సమన్వయం కోసం ఇంటర్-స్టేట్ కౌన్సిల్‌ల ఏర్పాటు గురించి ఆర్టికల్ 263 ఆలోచిస్తుంది, రాష్ట్రపతి వారి విధులను నిర్వచించడానికి వీలు కల్పిస్తుంది."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్ ఏర్పాటుకు సంబంధించి రాష్ట్రపతికి ఏ అధికారం ఉంది?",
        options:[
          "అంతర్-రాష్ట్ర వివాదాలపై కట్టుబడి నిర్ణయాలు తీసుకునే అధికారం.",
          "మండలి యొక్క విధులు, సంస్థ మరియు విధానాన్ని నిర్వచించే అధికారం.",
          "మండలికి న్యాయమూర్తులను నియమించే అధికారం.",
          "రాష్ట్ర వ్యవహారాల్లో నేరుగా జోక్యం చేసుకునే అధికారం."
        ],
        correctAnswerIndex: 1,
        explanation:"అంతర్-రాష్ట్ర కౌన్సిల్‌ను ఏర్పాటు చేయడానికి మరియు దాని విధులు, సంస్థ మరియు విధానాన్ని నిర్వచించడానికి, ఆర్టికల్ 263 ప్రకారం రాష్ట్రపతికి అధికారం ఉంది."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్‌కు ఏ విధులను కేటాయించవచ్చుఆర్టికల్ 263 కింద?",
        options:[
          "వాణిజ్యం మరియు వాణిజ్యాన్ని నియంత్రించడం.",
          "ప్రభుత్వాల మధ్య న్యాయపరమైన వివాదాలను పరిష్కరించడం.",
          "రాష్ట్రాల మధ్య వివాదాలను విచారించడం మరియు సలహా ఇవ్వడం.",
          "చట్టం కాని వివాదాలలో జోక్యం చేసుకోవడం."
        ],
        correctAnswerIndex: 2,
        explanation:"ప్రకరణ 263 రాష్ట్రాల మధ్య వివాదాలను విచారించడం మరియు సలహా ఇవ్వడం వంటి విధులను అంతర్-రాష్ట్ర మండలికి కేటాయించవచ్చని పేర్కొంటుంది."
    ),

    Question(
        questionText: "అంతర్-రాష్ట్ర మండలి పనితీరు, ఆర్టికల్ 263 ప్రకారం, ఆర్టికల్ 131 ప్రకారం సుప్రీం కోర్టు అధికార పరిధిని ఎలా పూర్తి చేస్తుంది?",
        options:[
          "సుప్రీంకోర్టు నిర్ణయాలను రద్దు చేసే అధికారం కౌన్సిల్‌కు ఉంది.",
          "సుప్రీం కోర్ట్ లాగా కాకుండా కౌన్సిల్ చట్టపరమైన వివాదాలను పరిష్కరించగలదు.",
          "సుప్రీం కోర్ట్ కట్టుబాటు నిర్ణయాల వలె కాకుండా కౌన్సిల్ యొక్క విధి సలహాదారుగా ఉంటుంది.",
          "అంతర్ రాష్ట్ర వ్యవహారాలలో కౌన్సిల్‌కు సుప్రీంకోర్టు కంటే ఎక్కువ అధికారం ఉంది."
        ],
        correctAnswerIndex: 2,
        explanation:"ఆర్టికల్ 263 ప్రకారం ఇంటర్-స్టేట్ కౌన్సిల్ యొక్క పని సలహాదారుగా ఉంటుంది, ఇది ఆర్టికల్ 131 ప్రకారం సుప్రీం కోర్ట్ కట్టుబడి ఉన్న నిర్ణయాలను పూర్తి చేస్తుంది."
    ),

    Question(
        questionText: "ఆర్టికల్ 263 ప్రకారం ఇంటర్-స్టేట్ కౌన్సిల్ ద్వారా దర్యాప్తు మరియు చర్చ కోసం ఏ అంశాలు ప్రస్తావించబడ్డాయి?",
        options:[
          "చట్టపరమైన వివాదాలు.",
          "అంతర్-రాష్ట్ర వాణిజ్యం.",
          "రాష్ట్రాలు లేదా కేంద్రం మరియు రాష్ట్రాలకు ఉమ్మడి ఆసక్తి ఉన్న అంశాలు.",
          "రాష్ట్ర వ్యవహారాల్లో జోక్యం."
        ],
        correctAnswerIndex: 2,
        explanation:"అంతర్-రాష్ట్ర మండలి రాష్ట్రాలు లేదా కేంద్రం మరియు రాష్ట్రాలకు ఉమ్మడి ఆసక్తి ఉన్న విషయాలను పరిశోధించి, చర్చించవచ్చని ఆర్టికల్ 263 పేర్కొంది."
    ),

    Question(
        questionText: "విధానం మరియు చర్య యొక్క మెరుగైన సమన్వయం కోసం ఆర్టికల్ 263 ప్రకారం రాష్ట్రపతి ఏర్పాటు చేసిన కొన్ని కౌన్సిల్‌లకు పేరు పెట్టండి.",
        options:[
          "సెంట్రల్ కౌన్సిల్ ఆఫ్ హెల్త్ అండ్ ఫ్యామిలీ వెల్ఫేర్.",
          "సెంట్రల్ కౌన్సిల్ ఆఫ్ లోకల్ గవర్నమెంట్.",
          "రీజినల్ కౌన్సిల్స్ ఫర్ సేల్స్ టాక్స్.",
          "పైన ఉన్నవన్నీ."
        ],
        correctAnswerIndex: 3,
        explanation:"విధానం మరియు చర్య యొక్క మెరుగైన సమన్వయం కోసం రాష్ట్రపతి కేంద్ర ఆరోగ్య మరియు కుటుంబ సంక్షేమ మండలి, స్థానిక ప్రభుత్వ కేంద్ర మండలి మరియు సేల్స్ టాక్స్ కోసం ప్రాంతీయ కౌన్సిల్‌లతో సహా వివిధ కౌన్సిల్‌లను ఏర్పాటు చేశారు."
    ),
    Question(
        questionText: "సర్కారియా కమిషన్ ప్రకారం, ఇంటర్-స్టేట్ కౌన్సిల్‌కు సంబంధించి అది ఏ సిఫార్సు చేసింది?",
        options:[
          "తాత్కాలిక ఇంటర్-స్టేట్ కౌన్సిల్ ఏర్పాటుకు.",
          "ఇంటర్-గవర్నమెంటల్ కౌన్సిల్‌ను స్థాపించడానికి.",
          "ఇంటర్-స్టేట్ కౌన్సిల్‌ను రద్దు చేయడానికి.",
          "సుప్రీం కోర్ట్ అధికారాలను విస్తరించడానికి."
        ],
        correctAnswerIndex: 1,
        explanation:"సర్కారియా కమిషన్ శాశ్వత ఇంటర్-స్టేట్ కౌన్సిల్‌ను ఏర్పాటు చేయాలని సిఫార్సు చేసింది, దానిని ఇంటర్-గవర్నమెంటల్ కౌన్సిల్ అని పిలవడం ద్వారా వేరు చేసింది."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్ ఎప్పుడు స్థాపించబడింది మరియు ఆ సమయంలో ప్రధాన మంత్రి ఎవరు?",
        options:[
          "V. P. సింగ్ ఆధ్వర్యంలో 1983లో స్థాపించబడింది.",
          "1990లో V. P. సింగ్ ఆధ్వర్యంలో స్థాపించబడింది.",
          "రాజీవ్ గాంధీ ఆధ్వర్యంలో 1990లో స్థాపించబడింది.",
          "రాజీవ్ గాంధీ ఆధ్వర్యంలో 1983లో స్థాపించబడింది."
        ],
        correctAnswerIndex: 2,
        explanation:"వి.పి. సింగ్ నేతృత్వంలోని జనతాదళ్ ప్రభుత్వంలో 1990లో ఇంటర్-స్టేట్ కౌన్సిల్ స్థాపించబడింది."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్ సభ్యులు ఎవరు?",
        options:[
          "ప్రధానమంత్రి, రాష్ట్రాల ముఖ్యమంత్రులు మరియు రాష్ట్రపతి పాలనలో ఉన్న రాష్ట్రాల గవర్నర్లు.",
          "ప్రధానమంత్రి, రాష్ట్రాల ముఖ్యమంత్రులు మరియు కేంద్ర క్యాబినెట్ మంత్రులు.",
          "ప్రధానమంత్రి, రాష్ట్రాల ముఖ్యమంత్రులు మరియు శాసన సభలు లేని కేంద్రపాలిత ప్రాంతాల నిర్వాహకులు.",
          "ప్రధానమంత్రి, రాష్ట్రాల ముఖ్యమంత్రులు మరియు ప్రాంతీయ మండలి సభ్యులు."
        ],
        correctAnswerIndex: 1,
        explanation:"ఇంటర్-స్టేట్ కౌన్సిల్‌లో ప్రధానమంత్రి, రాష్ట్రాల ముఖ్యమంత్రులు, కేంద్రపాలిత ప్రాంతాల ముఖ్యమంత్రులు, శాసన సభలు లేని కేంద్రపాలిత ప్రాంతాల నిర్వాహకులు మరియు నామినేట్ చేయబడిన కేంద్ర కేబినెట్ మంత్రులు ఉంటారు."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్ యొక్క విధులు ఏమిటి?",
        options:[
          "అంతర్ రాష్ట్ర వివాదాలపై కట్టుబడి నిర్ణయాలు తీసుకోవడం.",
          "సమస్యలను పరిశీలించడం, చర్చించడం మరియు చర్చించడం ద్వారా సమన్వయాన్ని ప్రోత్సహించడం.",
          "రాష్ట్ర వ్యవహారాల్లో నేరుగా జోక్యం చేసుకోవడం.",
          "అంతర్-రాష్ట్ర వాణిజ్యానికి సంబంధించిన చట్టాలను అమలు చేయడం."
        ],
        correctAnswerIndex: 1,
        explanation:"ఇంటర్-స్టేట్ కౌన్సిల్ యొక్క విధులు అంతర్-రాష్ట్ర, కేంద్ర-రాష్ట్ర మరియు కేంద్ర-కేంద్రపాలిత ప్రాంతాల సంబంధాలకు సంబంధించిన సమస్యలను పరిశీలించడం, చర్చించడం మరియు చర్చించడం ద్వారా సమన్వయాన్ని ప్రోత్సహించడం."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్ స్టాండింగ్ కమిటీ ప్రయోజనం ఏమిటి?",
        options:[
          "ఇంటర్-స్టేట్ కౌన్సిల్ స్థానంలోకి.",
          "జోనల్ కౌన్సిల్‌లకు సహాయం చేయడానికి.",
          "మండలి పరిశీలనకు సంబంధించిన విషయాలను నిరంతరం సంప్రదించడం మరియు ప్రాసెస్ చేయడం.",
          "అంతర్-రాష్ట్ర విషయాలపై కట్టుబడి నిర్ణయాలు తీసుకోవడానికి."
        ],
        correctAnswerIndex: 2,
        explanation:"ది స్టాండింగ్1996లో ఏర్పాటైన ఇంటర్-స్టేట్ కౌన్సిల్ యొక్క కమిటీ, కౌన్సిల్ పరిశీలనకు సంబంధించిన విషయాలను నిరంతరం సంప్రదింపులు మరియు ప్రాసెస్ చేసే ఉద్దేశ్యంతో పనిచేస్తుంది."
    ),

    Question(
        questionText: "ఇంటర్-స్టేట్ కౌన్సిల్‌కు ఏ సంస్థ సహాయం చేస్తుంది మరియు 1991లో ఏర్పాటైంది?",
        options:[
          "జోనల్ కౌన్సిల్స్.",
          "స్టాండింగ్ కమిటీ.",
          "సర్కారియా కమిషన్.",
          "ఇంటర్-స్టేట్ కౌన్సిల్ సెక్రటేరియట్."
        ],
        correctAnswerIndex: 3,
        explanation:"ఇంటర్-స్టేట్ కౌన్సిల్‌కు 1991లో ఏర్పాటు చేసిన ఇంటర్-స్టేట్ కౌన్సిల్ సెక్రటేరియట్ సహాయం చేస్తుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని 'పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన ఏమి సూచిస్తుంది?",
        options:[
          "ప్రతి రాష్ట్రంలో పబ్లిక్ చర్యలు, రికార్డులు మరియు న్యాయ విచారణల గుర్తింపు.",
          "వివిధ రాష్ట్రాలలో శిక్షా చట్టాల అమలు.",
          "భారతదేశంలో ఎక్కడైనా నేర తీర్పుల అమలు.",
          "అధికారిక పుస్తకాలు మరియు రిజిస్టర్ల సృష్టి."
        ],
        correctAnswerIndex: 0,
        explanation:"భారత రాజ్యాంగంలోని 'పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన భారతదేశ భూభాగం అంతటా ప్రజా చర్యలు, రికార్డులు మరియు న్యాయపరమైన చర్యలను గుర్తించడాన్ని సూచిస్తుంది."
    ),

    Question(
        questionText: "పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన సందర్భంలో 'పబ్లిక్ చర్యలు' అనే వ్యక్తీకరణ ఏమి కలిగి ఉంటుంది?",
        options:[
          "వ్యక్తుల మధ్య ప్రైవేట్ ఒప్పందాలు.",
          "ప్రభుత్వం యొక్క శాసన మరియు కార్యనిర్వాహక చర్యలు.",
          "ప్రైవేట్ పౌరులు తయారు చేసిన అధికారిక పుస్తకాలు మరియు రిజిస్టర్లు.",
          "ప్రైవేట్ వివాదాలలో న్యాయ విచారణలు."
        ],
        correctAnswerIndex: 1,
        explanation:"పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన సందర్భంలో, 'పబ్లిక్ చర్యలు' అనే వ్యక్తీకరణ ప్రభుత్వ శాసన మరియు కార్యనిర్వాహక చర్యలను కలిగి ఉంటుంది."
    ),

    Question(
        questionText: "పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన చర్యలు, రికార్డులు మరియు ప్రొసీడింగ్‌లు నిరూపించబడిన విధానాన్ని మరియు వాటి ప్రభావాన్ని ఎలా నిర్ణయిస్తాయి?",
        options:[
          "ఇది వ్యక్తిగత రాష్ట్రాల విచక్షణకు వదిలివేస్తుంది.",
          "ఇది న్యాయవ్యవస్థకు ప్రత్యేక అధికారాన్ని ఇస్తుంది.",
          "ఇది పార్లమెంటు చట్టాలకు లోబడి ఉంటుంది, ఇది రుజువు విధానం మరియు వాటి ప్రభావాన్ని నిర్ణయిస్తుంది.",
          "దీనికి రాష్ట్రపతి ఆమోదం అవసరం."
        ],
        correctAnswerIndex: 2,
        explanation:"పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన పార్లమెంటు చట్టాలకు లోబడి ఉంటుంది, ఇది రుజువు మోడ్‌ను మరియు ఒక రాష్ట్రం మరొక రాష్ట్రంలోని చర్యలు, రికార్డులు మరియు ప్రొసీడింగ్‌ల ప్రభావాన్ని నిర్ణయిస్తుంది."
    ),

    Question(
        questionText: "భారతదేశంలోని సివిల్ కోర్టుల తుది తీర్పులు మరియు ఆదేశాలు ఎంత వరకు వర్తిస్తాయి?",
        options:[
          "తీర్పు జారీ చేయబడిన రాష్ట్రంలో మాత్రమే.",
          "భారతదేశం అంతటా, తాజా సూట్ అవసరం లేకుండా.",
          "కేవలం క్రిమినల్ కేసుల్లో మాత్రమే, సివిల్ కేసుల్లో కాదు.",
          "అవి రాష్ట్ర సరిహద్దుల్లో వర్తించవు."
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలోని సివిల్ కోర్టుల తుది తీర్పులు మరియు ఆదేశాలు భారతదేశంలో ఎక్కడైనా తీర్పుపై తాజా దావా అవసరం లేకుండా అమలు చేయగలవు."
    ),

    Question(
      questionText: "పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన నేర తీర్పులకు వర్తిస్తుందా?",
      options:[
        "అవును, ఇది సివిల్ మరియు క్రిమినల్ తీర్పులు రెండింటికీ వర్తిస్తుంది.",
        "లేదు, ఇది సివిల్ తీర్పులకు మాత్రమే వర్తిస్తుంది.",
        "ఇది నేర తీర్పులకు మాత్రమే వర్తిస్తుంది.",
        "దీని అప్లికేషన్ కేసు స్వభావంపై ఆధారపడి ఉంటుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"పూర్తి విశ్వాసం మరియు క్రెడిట్' నిబంధన పౌర తీర్పులకు మాత్రమే వర్తిస్తుంది మరియు నేర తీర్పులకు కాదు.",
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని XIII భాగంలోని ఆర్టికల్ 301 యొక్క ప్రాథమిక లక్ష్యం ఏమిటి?",
        options:[
          "అంతర్ రాష్ట్ర వాణిజ్యంపై ఆంక్షలు విధించడం.",
          "భారత భూభాగం అంతటా వాణిజ్యం, వాణిజ్యం మరియు సంభోగం యొక్క ఉచిత ప్రవాహాన్ని ప్రోత్సహించడానికి.",
          "రాష్ట్రాల మధ్య సరిహద్దు అడ్డంకులు సృష్టించడానికి.",
          "కొన్ని రాష్ట్రాలకు వాణిజ్య ప్రాధాన్యతలను ఏర్పాటు చేయడానికి."
        ],
        correctAnswerIndex: 1,
        explanation:"భారత భూభాగం అంతటా వాణిజ్యం, వాణిజ్యం మరియు సంభోగం యొక్క స్వేచ్ఛా ప్రవాహాన్ని ప్రోత్సహించడం ఆర్టికల్ 301 యొక్క ప్రాథమిక లక్ష్యం."
    ),

    Question(
        questionText: "ఆర్టికల్ 301 స్వేచ్ఛ పరంగా ఏమి కలిగి ఉంది?",
        options:[
          "అంతర్-రాష్ట్ర వాణిజ్యానికి మాత్రమే స్వేచ్ఛ.",
          "రాష్ట్ర-రాష్ట్ర వాణిజ్యానికి మాత్రమే స్వేచ్ఛ.",
          "పార్ట్ XIIIలోని ఇతర నిబంధనలలో అందించబడినవి మినహా అన్ని పరిమితుల నుండి స్వేచ్ఛ.",
          "రాష్ట్రాల మధ్య వివక్ష చూపే స్వేచ్ఛ."
        ],
        correctAnswerIndex: 2,
        explanation:"ఆర్టికల్ 301 రాజ్యాంగంలోని XIII భాగంలోని ఇతర నిబంధనలలో (ఆర్టికల్ 302 నుండి 305 వరకు) అందించినవి మినహా అన్ని పరిమితుల నుండి స్వేచ్ఛను కలిగి ఉంటుంది."
    ),

    Question(
        questionText: "వాణిజ్యం, వాణిజ్యం మరియు సంభోగంపై పార్లమెంటు ఏ పరిస్థితుల్లో ఆంక్షలు విధించవచ్చు?",
        options:[
          "ఒక రాష్ట్రం కంటే మరొక రాష్ట్రానికి ప్రాధాన్యత ఇవ్వడం.",
          "అత్యవసర పరిస్థితి సమయంలో మాత్రమే.",
          "ప్రజా ప్రయోజనాల కోసం, రాష్ట్రాల మధ్య ప్రాధాన్యత లేదా వివక్ష లేకుండా.",
          "ప్రాంతీయత మరియు భాషాపరమైన అనుబంధాన్ని ప్రోత్సహించడానికి."
        ],
        correctAnswerIndex: 2,
        explanation:"పబ్‌లో వాణిజ్యం, వాణిజ్యం మరియు సంభోగంపై పార్లమెంటు పరిమితులు విధించవచ్చుlic వడ్డీ, కానీ రాష్ట్రాల మధ్య ప్రాధాన్యత లేదా వివక్ష లేకుండా."
    ),

    Question(
        questionText: "వాణిజ్యం, వాణిజ్యం మరియు సంభోగంపై పరిమితులు విధించడంలో రాష్ట్ర శాసనసభలు ఏ పాత్ర పోషిస్తాయి?",
        options:[
          "వారు ఎటువంటి షరతులు లేకుండా పరిమితులు విధించవచ్చు.",
          "వారు రాష్ట్రపతి యొక్క మునుపటి అనుమతితో మరియు రాష్ట్రాల మధ్య వివక్ష లేకుండా పరిమితులు విధించవచ్చు.",
          "వారు ఒక రాష్ట్రం కంటే మరొక రాష్ట్రానికి ప్రాధాన్యత ఇవ్వగలరు.",
          "ఆంక్షలు విధించడంలో వారికి ఎటువంటి పాత్ర లేదు."
        ],
        correctAnswerIndex: 1,
        explanation:"రాష్ట్ర శాసనసభలు రాష్ట్రపతి యొక్క మునుపటి అనుమతితో మరియు రాష్ట్రాల మధ్య వివక్ష లేకుండా సహేతుకమైన పరిమితులను విధించవచ్చు."
    ),

    Question(
        questionText: "వివక్షపూరిత పన్నుల విషయంలో ఆర్టికల్ 301 దేనిని నిషేధిస్తుంది?",
        options:[
          "దిగుమతి చేసుకున్న వస్తువులపై వివక్షపూరిత పన్నులు విధించేందుకు ఇది రాష్ట్రాలను అనుమతిస్తుంది.",
          "ఇతర రాష్ట్రాలు లేదా కేంద్రపాలిత ప్రాంతాల నుండి దిగుమతి చేసుకునే వస్తువులపై వివక్షపూరిత పన్నులు విధించడాన్ని ఇది నిషేధిస్తుంది.",
          "ఇది రాష్ట్రంలో తయారు చేయబడిన వస్తువులపై వివక్షపూరిత పన్నులను విధిస్తుంది.",
          "ఇది పన్నులు విధించడంలో రాష్ట్రాలు వివక్ష చూపడానికి అనుమతిస్తుంది."
        ],
        correctAnswerIndex: 1,
        explanation:"ఇతర రాష్ట్రాలు లేదా కేంద్రపాలిత ప్రాంతాల నుండి దిగుమతి చేసుకున్న వస్తువులపై రాష్ట్రాలు వివక్షపూరిత పన్నులు విధించడాన్ని ఆర్టికల్ 301 నిషేధిస్తుంది."
    ),

    Question(
        questionText: "ఆర్టికల్ 301 కింద ఉన్న స్వేచ్ఛ జాతీయీకరణ చట్టాలకు లోబడి ఉందా?",
        options:[
          "అవును, ఇది పూర్తిగా జాతీయీకరణ చట్టాలకు లోబడి ఉంటుంది.",
          "లేదు, ఇది జాతీయీకరణ చట్టాల నుండి పూర్తిగా మినహాయించబడింది.",
          "ఇది జాతీయీకరణ చట్టాలకు లోబడి ఉంటుంది, ప్రభుత్వం వాణిజ్యం, వ్యాపారం, పరిశ్రమలు లేదా సేవను కొనసాగించడానికి అనుమతిస్తుంది.",
          "దీని అప్లికేషన్ వాణిజ్యం లేదా వ్యాపారం యొక్క స్వభావంపై ఆధారపడి ఉంటుంది."
        ],
        correctAnswerIndex: 2,
        explanation:"ఆర్టికల్ 301 కింద ఉన్న స్వేచ్ఛ జాతీయీకరణ చట్టాలకు లోబడి ఉంటుంది, వాణిజ్యం, వ్యాపారం, పరిశ్రమలు లేదా సేవలను కొనసాగించడానికి ప్రభుత్వం చట్టాలను రూపొందించడానికి అనుమతిస్తుంది."
    ),

    Question(
        questionText: "వాణిజ్యం, వాణిజ్యం మరియు సంభోగం యొక్క స్వేచ్ఛను అమలు చేయడంలో పార్లమెంటు ఏ పాత్ర పోషిస్తుంది?",
        options:[
          "పార్లమెంట్ స్వేచ్ఛను అమలు చేసే అధికారంతో అధికారాన్ని నియమించగలదు.",
          "పార్లమెంట్ తన అధికారాలను పూర్తిగా రాష్ట్రాలకు అప్పగించగలదు.",
          "స్వేచ్ఛను అమలు చేయడంలో పార్లమెంటు పాత్ర లేదు.",
          "పార్లమెంట్ అత్యవసర సమయంలో మాత్రమే స్వేచ్ఛను అమలు చేస్తుంది."
        ],
        correctAnswerIndex: 0,
        explanation:"వాణిజ్యం, వాణిజ్యం మరియు సంభోగ స్వేచ్ఛకు సంబంధించిన నిబంధనల ప్రయోజనాలను అమలు చేయడానికి పార్లమెంటు తగిన అధికారాన్ని నియమించగలదు."
    ),

    Question(
        questionText: "జోనల్ కౌన్సిల్‌లు ఏ రకమైన సంస్థలు మరియు అవి ఎలా స్థాపించబడ్డాయి?",
        options:[
          "భారత రాజ్యాంగం ద్వారా స్థాపించబడిన రాజ్యాంగ సంస్థలు.",
          "పార్లమెంటు చట్టం ద్వారా స్థాపించబడిన చట్టబద్ధమైన సంస్థలు.",
          "అధ్యక్షునిచే స్థాపించబడిన కార్యనిర్వాహక సంస్థలు.",
          "సుప్రీం కోర్ట్ ఏర్పాటు చేసిన న్యాయ సంస్థలు."
        ],
        correctAnswerIndex: 1,
        explanation:"జోనల్ కౌన్సిల్‌లు అనేది పార్లమెంటు చట్టం, ప్రత్యేకంగా రాష్ట్రాల పునర్వ్యవస్థీకరణ చట్టం 1956 ద్వారా స్థాపించబడిన చట్టబద్ధమైన సంస్థలు."
    ),

    Question(
        questionText: "జోనల్ కౌన్సిల్‌ల కోసం జోన్‌లను రూపొందించేటప్పుడు ఏ అంశాలు పరిగణనలోకి తీసుకోబడ్డాయి?",
        options:[
          "భాషాపరమైన అనుబంధం మాత్రమే.",
          "ఆర్థిక అభివృద్ధి అవసరాలు మాత్రమే.",
          "సహజ విభజనలు, నదీ వ్యవస్థలు, సాంస్కృతిక మరియు భాషాపరమైన అనుబంధం మరియు ఆర్థికాభివృద్ధి, భద్రత మరియు శాంతిభద్రతల అవసరాలు.",
          "నదీ వ్యవస్థలు మాత్రమే."
        ],
        correctAnswerIndex: 2,
        explanation:"జోనల్ కౌన్సిల్‌ల కోసం జోన్‌లను ఏర్పాటు చేస్తున్నప్పుడు, సహజ విభజనలు, నదీ వ్యవస్థలు, సాంస్కృతిక మరియు భాషాపరమైన అనుబంధం మరియు ఆర్థికాభివృద్ధి, భద్రత మరియు శాంతిభద్రతల అవసరాలు వంటి అంశాలు పరిగణనలోకి తీసుకోబడ్డాయి."
    ),

    Question(
        questionText: "ఐదు మండల పరిషత్తుల సాధారణ ఛైర్మన్ ఎవరు?",
        options:[
          "అతిపెద్ద రాష్ట్రానికి ముఖ్యమంత్రి.",
          "భారత రాష్ట్రపతి.",
          "కేంద్ర ప్రభుత్వ హోం మంత్రి.",
          "భారత ప్రధాన మంత్రి."
        ],
        correctAnswerIndex: 2,
        explanation:"ఐదు జోనల్ కౌన్సిల్‌ల సాధారణ ఛైర్మన్ కేంద్ర ప్రభుత్వ హోం మంత్రి."
    ),

    Question(
        questionText: "జోనల్ కౌన్సిల్‌ల లక్ష్యాలు లేదా విధులు ఏమిటి?",
        options:[
          "వివిధ ప్రాంతాలలో చట్టాలను అమలు చేయడానికి.",
          "రాజ్య స్పృహ మరియు ప్రాంతీయవాదాన్ని ప్రోత్సహించడానికి.",
          "విభజన యొక్క అనంతర ప్రభావాలను సృష్టించడానికి.",
          "భావోద్వేగ ఏకీకరణను సాధించడానికి, ప్రాంతీయతను నిరోధించడానికి మరియు సామాజిక మరియు ఆర్థిక విషయాలలో సహకరించడానికి."
        ],
        correctAnswerIndex: 3,
        explanation:"జోనల్ కౌన్సిల్స్ యొక్క లక్ష్యాలు లేదా విధులు భావోద్వేగ ఏకీకరణను సాధించడం, రాష్ట్ర-స్పృహ, ప్రాంతీయవాదం మరియు భాషా ధోరణులను నిరోధించడం మరియు సామాజిక మరియు ఆర్థిక విషయాలలో సహకరించడం వంటివి ఉన్నాయి."
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
    home: interStateRelations_te(),
  ));
}

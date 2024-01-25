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

class centreStateRelations_te extends StatefulWidget {
  final String? userIdentifier;

  centreStateRelations_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<centreStateRelations_te> createState() => _centreStateRelations_teState();
}

class _centreStateRelations_teState extends State<centreStateRelations_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//15.కేంద్ర మరియు రాష్ట్ర సంబంధాలు
    Question(
      questionText: "భారత రాజ్యాంగం ప్రకారం, శాసన సబ్జెక్టుల యొక్క మూడు రెట్లు పంపిణీలు ఏమిటి?",
      options:["యూనియన్ జాబితా, రాష్ట్ర జాబితా మరియు అవశేషాల జాబితా", "ప్రత్యేక జాబితా, ఉమ్మడి జాబితా, మరియు ప్రత్యేక జాబితా", "జాతీయ జాబితా, ప్రాంతీయ జాబితా మరియు స్థానిక జాబితా", "సమాఖ్య జాబితా, ప్రాంతీయ జాబితా మరియు ఉమ్మడి జాబితా" ],
      correctAnswerIndex: 0,
      explanation:"కేంద్రం మరియు రాష్ట్రాల మధ్య శాసనపరమైన అంశాల మూడు రెట్లు పంపిణీని రాజ్యాంగం అందిస్తుంది: యూనియన్ జాబితా, రాష్ట్ర జాబితా మరియు అవశేషాల జాబితా.",
    ),

    Question(
      questionText: "జాతీయ ప్రాముఖ్యత కలిగిన అంశాలు మరియు దేశవ్యాప్త చట్టాల ఏకరూపత అవసరమయ్యేవి ఏ జాబితాలో ఉన్నాయి?",
      options:["యూనియన్ లిస్ట్", "స్టేట్ లిస్ట్", "కాంకరెంట్ లిస్ట్", "రెసిడ్యూరీ లిస్ట్"],
      correctAnswerIndex: 0,
      explanation:"జాతీయ ప్రాముఖ్యత కలిగిన అంశాలు మరియు దేశవ్యాప్త చట్టాల ఏకరూపత అవసరమయ్యేవి యూనియన్ జాబితాలో చేర్చబడ్డాయి.",
    ),

    Question(
      questionText: "యూనియన్ జాబితా మరియు రాష్ట్ర జాబితా మధ్య అతివ్యాప్తి చెందితే, ఏది ప్రబలంగా ఉండాలి?",
      options:["యూనియన్ లిస్ట్", "స్టేట్ లిస్ట్", "కాంకరెంట్ లిస్ట్", "రెసిడ్యూరీ లిస్ట్"],
      correctAnswerIndex: 0,
      explanation:"యూనియన్ జాబితా మరియు రాష్ట్ర జాబితా మధ్య అతివ్యాప్తి చెందితే, యూనియన్ జాబితా ప్రబలంగా ఉంటుంది.",
    ),
    Question(
      questionText: "కేంద్ర-రాష్ట్ర సంబంధాలను అధ్యయనం చేసే మూడు ముఖ్యాంశాలు ఏమిటి?",
      options:["శాసన సంబంధాలు", "పరిపాలన సంబంధాలు", "ఆర్థిక సంబంధాలు"],
      correctAnswerIndex: 0,
      explanation:"కేంద్ర-రాష్ట్ర సంబంధాలను మూడు ముఖ్యాంశాల క్రింద అధ్యయనం చేయవచ్చు: శాసన సంబంధాలు, పరిపాలనా సంబంధాలు మరియు ఆర్థిక సంబంధాలు.",
    ),
    Question(
      questionText: "రాష్ట్ర జాబితాలో పేర్కొనబడిన విషయాలపై పార్లమెంటు ఏ పరిస్థితులలో చట్టాలు చేయవచ్చు?",
      options:[
        "రాజ్యసభ ఒక తీర్మానాన్ని ఆమోదించినప్పుడు",
        "జాతీయ అత్యవసర సమయంలో",
        "రాష్ట్రాలు అభ్యర్థన చేసినప్పుడు",
        "అంతర్జాతీయ ఒప్పందాలను అమలు చేయడానికి",
        "రాష్ట్రపతి పాలన సమయంలో"
      ],
      correctAnswerIndex: 0,
      explanation:"రాజ్యసభ జాతీయ ప్రయోజనాల కోసం ఒక తీర్మానాన్ని ఆమోదించినప్పుడు సహా వివిధ పరిస్థితులలో రాష్ట్ర జాబితాలోని విషయాలపై పార్లమెంటు చట్టాలు చేయవచ్చు.",
    ),

    Question(
      questionText: "రాష్ట్ర జాబితాలోని అంశంపై చట్టాలను రూపొందించాలని పార్లమెంటును అభ్యర్థిస్తూ రాష్ట్ర శాసనసభలు తీర్మానాన్ని ఆమోదించడం వల్ల కలిగే ప్రభావం ఏమిటి?",
      options:[
        "రాష్ట్ర చట్టం అమలులో ఉంది",
        "పార్లమెంట్ అధికారాన్ని కోల్పోయింది",
        "విషయం రాష్ట్రాలకు ప్రత్యేకం",
        "పార్లమెంటుకు శాసనం చేసే హక్కు ఉంది",
        "రాష్ట్రం మరియు పార్లమెంటు శాసన అధికారాలను పంచుకుంటాయి"
      ],
      correctAnswerIndex: 3,
      explanation:"ఒక తీర్మానాన్ని ఆమోదించడం వలన పార్లమెంటుకు ఒక అంశంపై శాసనం చేసే అధికారం ఉంటుంది మరియు రాష్ట్ర శాసనసభ ఆ విషయంపై తన అధికారాన్ని వదులుకుంటుంది, ఇది పూర్తిగా పార్లమెంటు అధికార పరిధిలోకి వస్తుంది.",
    ),

    Question(
      questionText: "రాష్ట్ర శాసనసభ వ్యవహారాలపై పార్లమెంటు ఎలా నియంత్రణను కలిగి ఉంటుంది?",
      options:[
        "ప్రత్యక్ష చట్టం ద్వారా",
        "రాష్ట్రపతి పరిశీలన కోసం బిల్లులను రిజర్వ్ చేయడం ద్వారా",
        "ఆర్థిక అత్యవసర సమయంలో మాత్రమే",
        "రాష్ట్ర శాసనాలను పరిమితం చేయడం ద్వారా",
        "రాష్ట్ర శాసనసభ ఆమోదం ద్వారా"
      ],
      correctAnswerIndex: 1,
      explanation:"సంపూర్ణ వీటోను అందించడం ద్వారా రాష్ట్రపతి పరిశీలనకు బిల్లును రిజర్వ్ చేయడానికి గవర్నర్‌ను అనుమతించడం ద్వారా పార్లమెంటు రాష్ట్ర శాసన వ్యవహారాలపై నియంత్రణను కలిగి ఉంటుంది.",
    ),
    Question(
      questionText: "కేంద్రం మరియు రాష్ట్రాల మధ్య కార్యనిర్వాహక అధికారాల పంపిణీ ఏమిటి?",
      options:[
        "కేంద్రానికి ప్రత్యేకం",
        "దృఢమైన మరియు వంగని",
        "శాసన అధికారాల పంపిణీకి సమానం",
        "రాష్ట్ర శాసనసభలచే నియంత్రించబడుతుంది",
        "పరస్పర ఒప్పందం ద్వారా నిర్ణయించబడింది"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్రం మరియు రాష్ట్రాల మధ్య కార్యనిర్వాహక అధికారం కొన్ని మినహాయింపులతో శాసన అధికారాల పంపిణీ వలె పంపిణీ చేయబడుతుంది.",
    ),

    Question(
      questionText: "ఏ పరిస్థితులలో కేంద్రం తమ కార్యనిర్వాహక అధికారాన్ని వినియోగించుకునే విషయంలో రాష్ట్రాలకు ఆదేశాలు ఇవ్వగలదు?",
      options:[
        "ఆర్థిక అత్యవసర సమయంలో",
        "జాతీయ ప్రాముఖ్యత కలిగిన విషయాలలో",
        "రాష్ట్ర మరియు కేంద్ర చట్టాల మధ్య వైరుధ్యం ఏర్పడినప్పుడు",
        "ఒక రాష్ట్రం ఆదేశాలను పాటించడంలో విఫలమైనప్పుడు",
        "రాష్ట్ర శాసనసభ ఆమోదంతో మాత్రమే"
      ],
      correctAnswerIndex: 3,
      explanation:"ఒక రాష్ట్రం ఆదేశాలను పాటించడంలో విఫలమైనప్పుడు కేంద్రం రాష్ట్రాలకు ఆదేశాలు ఇవ్వగలదు మరియు అటువంటి ఆదేశాల వెనుక ఉన్న బలవంతపు ఆమోదం రాష్ట్రంలో రాష్ట్రపతి పాలనకు దారి తీస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 365 కింద రాష్ట్రాలకు కేంద్రం ఆదేశాలు ఇవ్వడం వెనుక బలవంతపు అనుమతి ఏమిటి?",
      options:[
        "ఆర్థిక జరిమానాలు",
        "సహకార ఫెడరలిజం",
        "రాష్ట్రపతి పాలన విధించడం",
        "సుప్రీంకోర్టుకు అప్పీల్",
        "కేంద్ర నిధుల ఉపసంహరణ"
      ],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 365 కింద కేంద్రం ఆదేశాల వెనుక బలవంతపు అనుమతి ప్రెస్సీ యొక్క సంభావ్య విధింపురాష్ట్రంలో దంతాల పాలన.",
    ),
    Question(
      questionText: "రాష్ట్ర హైకోర్టు న్యాయమూర్తుల నియామకం మరియు తొలగింపు ఎలా నియంత్రించబడుతుంది?",
      options:[
        "ప్రధానమంత్రి నియమించారు, గవర్నర్ తొలగించారు",
        "అధ్యక్షునిచే నియమించబడిన మరియు తీసివేయబడిన",
        "భారత ప్రధాన న్యాయమూర్తిచే నియమించబడినది, గవర్నర్ చేత తొలగించబడినది",
        "గవర్నర్ చేత నియమించబడినది, భారత ప్రధాన న్యాయమూర్తిచే తొలగించబడినది",
        "రాష్ట్ర శాసనసభచే నియమించబడినది మరియు తీసివేయబడినది"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర హైకోర్టు న్యాయమూర్తులు భారత ప్రధాన న్యాయమూర్తి మరియు రాష్ట్ర గవర్నర్‌తో సంప్రదించి రాష్ట్రపతిచే నియమింపబడతారు. వారిని రాష్ట్రపతి బదిలీ చేయవచ్చు మరియు తొలగించవచ్చు.",
    ),

    Question(
      questionText: "జాతీయ అత్యవసర పరిస్థితి (ఆర్టికల్ 352), రాష్ట్ర ప్రభుత్వాలపై కేంద్రానికి ఎలాంటి నియంత్రణ ఉంటుంది?",
      options:[
      "రాష్ట్ర ప్రభుత్వాల సస్పెన్షన్",
      "రాష్ట్ర ప్రభుత్వాలపై పూర్తి నియంత్రణ",
      "రాష్ట్ర ప్రభుత్వాలపై పరిమిత నియంత్రణ",
      "రాష్ట్ర ప్రభుత్వాలకు సలహా పాత్ర",
      "రాష్ట్ర ప్రభుత్వాలపై నియంత్రణ లేదు"
      ],
      correctAnswerIndex: 2,
      explanation:"జాతీయ ఎమర్జెన్సీ సమయంలో, రాష్ట్ర ప్రభుత్వాలను సస్పెండ్ చేయనప్పటికీ, రాష్ట్ర ప్రభుత్వాలను పూర్తి నియంత్రణలోకి తీసుకువస్తూ, 'ఏదైనా' విషయంలో రాష్ట్రానికి కార్యనిర్వాహక ఆదేశాలను ఇవ్వడానికి కేంద్రం అర్హత పొందుతుంది.",
    ),

    Question(
      questionText: "ఏదైనా అంతర్-రాష్ట్ర నది మరియు నదీ లోయ జలాల వినియోగం, పంపిణీ మరియు నియంత్రణకు సంబంధించిన వివాదాలు లేదా ఫిర్యాదులు ఎలా పరిష్కరించబడతాయి?",
      options:[
        "రాష్ట్ర ప్రభుత్వాల ద్వారా",
        "సుప్రీం కోర్ట్ ద్వారా",
        "ఇంటర్-స్టేట్ కౌన్సిల్ ద్వారా",
        "పార్లమెంట్ ద్వారా",
        "ప్రజా ప్రజాభిప్రాయ సేకరణ ద్వారా"
      ],
      correctAnswerIndex: 1,
      explanation:"ఏదైనా అంతర్-రాష్ట్ర నది మరియు నదీ లోయ జలాల వినియోగం, పంపిణీ మరియు నియంత్రణకు సంబంధించిన వివాదాలు లేదా ఫిర్యాదులను సుప్రీంకోర్టు ద్వారా పరిష్కరించవచ్చు.",
    ),
    Question(
      questionText: "భారతదేశంలో పన్నుల విషయంలో 101వ సవరణ చట్టం 2016 యొక్క ముఖ్యమైన సహకారం ఏమిటి?",
      options:[
        "కొత్త పన్ను విధానం పరిచయం",
        "పన్ను ఆదాయాల పంపిణీ సవరణ",
        "ప్రత్యేక పన్ను జాబితాను రూపొందించడం",
        "అన్ని పన్నుల రద్దు"
      ],
      correctAnswerIndex: 0,
      explanation:"101వ సవరణ చట్టం 2016 భారతదేశంలో కొత్త పన్ను విధానం, వస్తువులు మరియు సేవల పన్ను (GST) ప్రవేశానికి మార్గం సుగమం చేసింది.",
    ),

    Question(
      questionText: "10వ ఆర్థిక సంఘం సిఫార్సుల ఆధారంగా కేంద్రం మరియు రాష్ట్రాల మధ్య పన్ను రాబడి పంపిణీలో ఏ సవరణ మార్పులు చేసింది?",
      options:[
        "80వ సవరణ చట్టం 2000",
        "101వ సవరణ చట్టం 2016",
        "88వ సవరణ చట్టం 2003",
        "73వ సవరణ చట్టం 1992"
      ],
      correctAnswerIndex: 0,
      explanation:"2000 నాటి 80వ సవరణ చట్టం 10వ ఆర్థిక సంఘం సిఫార్సుల ఆధారంగా పన్ను రాబడి పంపిణీలో మార్పులు చేసింది.",
    ),
    Question(
      questionText: "రాజ్యాంగం ప్రకారం, పన్నులు విధించే ప్రత్యేక అధికారాన్ని పార్లమెంటుకు కలిగి ఉన్న అంశాల జాబితా ఏది?",
      options:["యూనియన్ లిస్ట్", "స్టేట్ లిస్ట్", "కాంకరెంట్ లిస్ట్", "రెసిడ్యూరీ లిస్ట్"],
      correctAnswerIndex: 0,
      explanation:"యూనియన్ లిస్ట్‌లో పేర్కొనబడిన విషయాలపై పన్నులు విధించేందుకు రాజ్యాంగం పార్లమెంటుకు ప్రత్యేక అధికారాన్ని ఇస్తుంది.",
    ),
    Question(
        questionText: "1963లో ఒక సలహా అభిప్రాయంలో, కేంద్ర పన్నుల విషయంలో ఒక రాష్ట్రానికి ఇవ్వబడిన రోగనిరోధక శక్తికి సంబంధించి సుప్రీంకోర్టు ఏమి స్పష్టం చేసింది?",
        options:[
          "రాష్ట్రాలు అన్ని కేంద్ర పన్నుల నుండి రోగనిరోధక శక్తిని కలిగి ఉన్నాయి.",
          "రోగనిరోధక శక్తి కస్టమ్స్ మరియు ఎక్సైజ్ సుంకాలకు విస్తరించింది.",
          "రాష్ట్రాలు ఏ ఉద్దేశానికైనా కేంద్రం పన్ను విధించవచ్చు.",
          "కేంద్ర పన్నుల నుండి స్థానిక అధికారులు మినహాయించబడ్డారు."
        ],
        correctAnswerIndex: 1,
        explanation:"1963లో ఒక సలహా అభిప్రాయంలో, ఒక రాష్ట్రానికి మంజూరు చేయబడిన రోగనిరోధక శక్తి కేంద్రం విధించిన కస్టమ్స్ లేదా ఎక్సైజ్ సుంకాలకు విస్తరించదని సుప్రీంకోర్టు స్పష్టం చేసింది."
    ),

    Question(
        questionText: "జాతీయ ఎమర్జెన్సీ సమయంలో, కేంద్రం మరియు రాష్ట్రాల మధ్య రాజ్యాంగబద్ధమైన ఆదాయ పంపిణీకి సంబంధించి రాష్ట్రపతికి ఏ అధికారం ఉంది?",
        options:[
          "రాష్ట్రపతి కేంద్రం మరియు రాష్ట్రాల మధ్య పన్ను భాగస్వామ్యాన్ని పెంచవచ్చు.",
          "రాష్ట్రపతి కేంద్రం నుండి రాష్ట్రాలకు ఆర్థిక బదిలీని తగ్గించవచ్చు లేదా రద్దు చేయవచ్చు.",
          "అధ్యక్షుడికి ఆర్థిక విషయాలపై అధికారం లేదు.",
          "అధ్యక్షుడి పాత్ర మారదు."
        ],
        correctAnswerIndex: 1,
        explanation:"జాతీయ ఎమర్జెన్సీ సమయంలో, రాష్ట్రపతి కేంద్రం నుండి రాష్ట్రాలకు ఆర్థిక బదిలీని తగ్గించడం లేదా రద్దు చేయడం ద్వారా కేంద్రం మరియు రాష్ట్రాల మధ్య రాజ్యాంగబద్ధమైన ఆదాయ పంపిణీని సవరించవచ్చు."
    ),

    Question(
        questionText: "కేంద్రం యొక్క అధికార పరిధికి సంబంధించి 1973లో ఆనంద్‌పూర్ సాహిబ్ తీర్మానం యొక్క ప్రధాన డిమాండ్ ఏమిటి?",
        options:[
          "రాష్ట్రాలకు పూర్తి స్వయంప్రతిపత్తి.",
          "కేంద్రం యొక్క అధికార పరిధిని నిర్దిష్టంగా పరిమితం చేయడంగా.",
          "కేంద్ర ప్రభుత్వ రద్దు.",
          "అన్ని రాష్ట్రాలకు సమాన ప్రాతినిధ్యం."
        ],
        correctAnswerIndex: 1,
        explanation:"ఆనంద్‌పూర్ సాహిబ్ రిజల్యూషన్, రక్షణ, విదేశీ వ్యవహారాలు, కమ్యూనికేషన్‌లు మరియు కరెన్సీకి కేంద్రం అధికార పరిధిని పరిమితం చేయాలని డిమాండ్ చేసింది, అవశేష అధికారాలు రాష్ట్రాలకు ఉన్నాయి."
    ),

    Question(
        questionText: "1977లో పశ్చిమ బెంగాల్ మెమోరాండం రాజ్యాంగంలో 'యూనియన్' అనే పదానికి సంబంధించి ఏమి ప్రతిపాదించింది?",
        options:[
          "యూనియన్'ని 'కాన్ఫెడరేషన్'తో భర్తీ చేయండి.",
          "యూనియన్'ని 'ఫెడరేషన్'తో భర్తీ చేయండి.",
          "యూనియన్' అనే పదాన్ని పూర్తిగా తొలగించండి.",
          "యూనియన్' అనే పదాన్ని కొనసాగించండి."
        ],
        correctAnswerIndex: 1,
        explanation:"రాజ్యాంగంలో 'యూనియన్' పదాన్ని 'ఫెడరల్'తో భర్తీ చేయాలని పశ్చిమ బెంగాల్ మెమోరాండం ప్రతిపాదించింది."
    ),

    Question(
        questionText: "సర్కారియా కమిషన్ ప్రకారం, ఫెడరలిజానికి బలమైన కేంద్రం ఎందుకు అవసరం?",
        options:[
          "సమర్థత కోసం అధికారాలను కేంద్రీకరించడానికి.",
          "జాతీయ ఐక్యత మరియు సమగ్రతను కాపాడటానికి.",
          "రాష్ట్ర స్వయంప్రతిపత్తిని ప్రోత్సహించడానికి.",
          "ప్రాంతీయ అసమతుల్యతలను పరిష్కరించడానికి."
        ],
        correctAnswerIndex: 1,
        explanation:"జాతీయ ఐక్యత మరియు సమగ్రతను, ప్రత్యేకించి ఫిసిపరస్ ధోరణులకు వ్యతిరేకంగా, ఒక బలమైన కేంద్రం అవసరమని సర్కారియా కమిషన్ నొక్కి చెప్పింది."
    ),
    Question(
        questionText: "2007లో స్థాపించబడిన కేంద్ర-రాష్ట్ర సంబంధాలపై రెండవ కమిషన్‌కు ఎవరు అధ్యక్షత వహించారు?",
        options:[
          "ఎస్.ఆర్. బొమ్మై",
          "మదన్ మోహన్ పంచి",
          "విజయ్ శంకర్",
          "అమరేష్ బాగ్చీ"
        ],
        correctAnswerIndex: 1,
        explanation:"కేంద్ర-రాష్ట్ర సంబంధాలపై 2007లో ఏర్పాటైన రెండవ కమిషన్, భారతదేశ మాజీ ప్రధాన న్యాయమూర్తి అయిన మదన్ మోహన్ పుంఛీ అధ్యక్షతన జరిగింది."
    ),

    Question(
        questionText: "తన నివేదికలో, పుంఛీ కమిషన్ ఏ ప్రయోజనం కోసం 'సహకార సమాఖ్య' యొక్క ప్రాముఖ్యతను నొక్కి చెప్పింది?",
        options:[
          "రాష్ట్ర స్వయంప్రతిపత్తిని ప్రోత్సహించడానికి.",
          "పార్లమెంటరీ ఆధిపత్యాన్ని నిర్ధారించడానికి.",
          "సమర్థత కోసం అధికారాలను కేంద్రీకరించడానికి.",
          "భారతదేశం యొక్క ఐక్యత, సమగ్రత మరియు అభివృద్ధిని కాపాడటానికి."
        ],
        correctAnswerIndex: 3,
        explanation:"భవిష్యత్తులో భారతదేశం యొక్క ఐక్యత, సమగ్రత మరియు సామాజిక మరియు ఆర్థిక అభివృద్ధిని కొనసాగించడానికి 'సహకార సమాఖ్య' చాలా కీలకమని పుంఛీ కమిషన్ నొక్కి చెప్పింది."
    ),

    Question(
        questionText: "కేంద్ర-రాష్ట్ర సంబంధాలపై పుంఛీ కమిషన్ తన నివేదికలో ఎన్ని సిఫార్సులు చేసింది?",
        options:["150", "235", "310", "400"],
        correctAnswerIndex: 2,
        explanation:"పుంఛీ కమిషన్ తన విస్తృత నివేదికలో కేంద్ర-రాష్ట్ర సంబంధాల యొక్క వివిధ అంశాలపై 310కి పైగా సిఫార్సులు చేసింది."
    ),

    Question(
        questionText: "గవర్నర్లను ఎన్నుకునేటప్పుడు కేంద్ర ప్రభుత్వానికి పుంఛీ కమిషన్ ఏ మార్గదర్శకాలను సూచించింది?",
        options:[
          "రాష్ట్ర రాజకీయాల్లో చురుకుగా పాల్గొనే వ్యక్తులను ఎంచుకోండి.",
          "రాష్ట్రంలోని స్థానిక రాజకీయాలతో లోతైన సంబంధం ఉన్నవారిని ఎంచుకోండి.",
          "ఇటీవలి ముఖ్యమైన రాజకీయ పాత్రలు కలిగిన వ్యక్తులను నియమించండి.",
          "రాష్ట్రం వెలుపల నుండి మరియు స్థానిక రాజకీయాల నుండి వేరుగా ఉండటంతో సహా, ప్రముఖులుగా ఉండటంతో సహా కఠినమైన మార్గదర్శకాలను అనుసరించండి."
        ],
        correctAnswerIndex: 3,
        explanation:"రాష్ట్రం వెలుపల ఉన్న ప్రముఖులు మరియు స్థానిక రాజకీయాలకు దూరంగా ఉండటంతో సహా గవర్నర్లను ఎంపిక చేయడానికి పుంఛీ కమిషన్ కఠినమైన మార్గదర్శకాలను సిఫార్సు చేసింది."
    ),

    Question(
        questionText: "పుంఛీ కమిషన్ ప్రకారం, హంగ్ అసెంబ్లీ విషయంలో ముఖ్యమంత్రుల నియామకంలో గవర్నర్ల పాత్ర ఏమిటి?",
        options:[
        "గవర్నర్లు మార్గదర్శకాలు లేకుండా వ్యవహరించాలి.",
        "గవర్నర్లు ముందస్తు ఎన్నికల కూటమిని ప్రత్యేకంగా అనుసరించాలి.",
        "గవర్నర్లు అతి పెద్ద సింగిల్ పార్టీకే ప్రాధాన్యత ఇవ్వాలి.",
        "ఎన్నికలకు ముందు పొత్తులు మరియు ఎన్నికల అనంతర సంకీర్ణాలతో సహా స్పష్టమైన మార్గదర్శకాలకు గవర్నర్‌లు కట్టుబడి ఉండాలి."
        ],
        correctAnswerIndex: 3,
        explanation:"ముఖ్యమంత్రులను నియమించడంలో గవర్నర్‌లకు స్పష్టమైన మార్గదర్శకాలను పుంఛీ కమిషన్ సూచించింది, అతిపెద్ద సింగిల్ పార్టీ, ఎన్నికల ముందు పొత్తులు మరియు హంగ్ అసెంబ్లీ ఏర్పడితే ఎన్నికల తర్వాత సంకీర్ణాలకు ప్రాధాన్యతనిస్తుంది."
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
    home: centreStateRelations_te(),
  ));
}

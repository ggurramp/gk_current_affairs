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

class agriculture_te extends StatefulWidget {
  final String? userIdentifier;

  agriculture_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<agriculture_te> createState() => _agriculture_teState();
}

class _agriculture_teState extends State<agriculture_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "భారతీయ పంటలలో ప్రధాన వర్గాలు ఏమిటి?",
        options:[
          "వ్యవసాయ, ఉద్యాన, ఔషధ",
          "ఆహార పంటలు, నగదు పంటలు, తోటల పంటలు, ఉద్యానవన పంటలు",
          "తృణధాన్యాలు, పప్పులు, నూనె గింజలు",
          "రబీ, ఖరీఫ్, జైద్"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతీయ పంటలను ఆహార పంటలు, నగదు పంటలు, తోటల పంటలు మరియు హార్టికల్చర్ వంటి వర్గాలుగా విభజించవచ్చు."
    ),

    Question(
        questionText: "భారతదేశంలో ఆహార పంటలకు కొన్ని ఉదాహరణలు చెప్పండి.",
        options:[
          "టీ, కాఫీ, సుగంధ ద్రవ్యాలు",
          "పత్తి, జనపనార, చెరకు",
          "వరి, గోధుమలు, మొక్కజొన్న, మినుములు",
          "రబ్బరు, కొబ్బరి, అరెకానట్"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలో ఆహార పంటలకు ఉదాహరణలలో వరి, గోధుమలు, మొక్కజొన్న, జొన్న, బజ్రా, రాగి వంటి మినుములు మరియు గ్రాము, తుర్ (అర్హర్) వంటి పప్పులు ఉన్నాయి."
    ),

    Question(
        questionText: "ఏ పంటలు నగదు పంటల వర్గంలోకి వస్తాయి?",
        options:[
          "వరి, గోధుమలు, మొక్కజొన్న",
          "పత్తి, జనపనార, చెరకు",
          "టీ, కాఫీ, సుగంధ ద్రవ్యాలు",
          "పండ్లు, కూరగాయలు, గింజలు"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో నగదు పంటలలో పత్తి, జనపనార, చెరకు, పొగాకు మరియు వేరుశెనగ, లిన్సీడ్, నువ్వులు మొదలైన వివిధ నూనె గింజలు ఉన్నాయి."
    ),

    Question(
        questionText: "భారతదేశంలో ఖరీఫ్ పంటల సీజన్‌ని ఏమంటారు?",
        options:[
          "శీతాకాలంలో విత్తడం, వేసవిలో కోయడం",
          "నైరుతి రుతుపవనాలతో విత్తడం, శరదృతువులో కోత",
          "శరదృతువులో విత్తనాలు, శీతాకాలంలో పంట",
          "మార్చి మరియు జూన్ మధ్య జైద్ పంటలు"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో ఖరీఫ్ పంటలు నైరుతి రుతుపవనాల ప్రారంభంతో విత్తుతారు మరియు రుతుపవనాలు లేదా శరదృతువు (సెప్టెంబర్/అక్టోబర్) చివరి నాటికి పండిస్తారు."
    ),

    Question(
        questionText: "ఏ పంటలను ప్రధాన రబీ పంటలుగా పరిగణిస్తారు?",
        options:[
          "బియ్యం, జొన్న, పత్తి",
          "గోధుమ, పప్పు, ఆవాలు",
          "టీ, కాఫీ, రబ్బరు",
          "చెరకు, పొగాకు, నూనె గింజలు"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో ప్రధాన రబీ పంటలలో గోధుమలు, గ్రాములు మరియు ఆవాలు మరియు రాపిసీడ్ వంటి నూనె గింజలు ఉన్నాయి, వీటిని శీతాకాలంలో పండిస్తారు మరియు ఏప్రిల్-మేలో పండిస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో జైద్ పంటల లక్షణం ఏమిటి?",
        options:[
          "శీతాకాలంలో పెరుగుతుంది, వేసవిలో పండిస్తారు",
          "వేసవిలో పండిస్తారు, శీతాకాలంలో పండిస్తారు",
          "మార్చి మరియు జూన్ మధ్య పెరిగింది",
          "ఏడాది పొడవునా పెరుగుతుంది"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలో జైద్ పంటలు ప్రధానంగా మార్చి మరియు జూన్ మధ్య నీటిపారుదల ప్రాంతాలలో పండిస్తారు, ఇందులో ఉరద్, మూంగ్, సీతాఫలాలు, పుచ్చకాయలు మొదలైనవి ఉంటాయి."
    ),

    Question(
        questionText: "భారతదేశంలో వరిని అత్యధికంగా ఉత్పత్తి చేసే రాష్ట్రాలు ఏవి?",
        options:[
          "మహారాష్ట్ర, గుజరాత్, తమిళనాడు",
          "పశ్చిమ బెంగాల్, అస్సాం, బీహార్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "కేరళ, ఆంధ్రప్రదేశ్, తమిళనాడు"
        ],
        correctAnswerIndex: 1,
        explanation:"పశ్చిమ బెంగాల్, అస్సాం, బీహార్, ఒడిశా, తమిళనాడు, ఆంధ్ర ప్రదేశ్, U.P., మహారాష్ట్ర, కర్ణాటక, ఛత్తీస్‌గఢ్ మరియు పంజాబ్ భారతదేశంలో వరిని అత్యధికంగా ఉత్పత్తి చేసే దేశాలలో ఉన్నాయి."
    ),

    Question(
        questionText: "భారతదేశంలో గోధుమల ప్రధాన ఉత్పత్తి ఎక్కడ కేంద్రీకృతమై ఉంది?",
        options:[
          "తమిళనాడు, కర్ణాటక, ఆంధ్రప్రదేశ్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "బీహార్, ఒడిశా, U.P.",
          "మహారాష్ట్ర, గుజరాత్, మధ్యప్రదేశ్"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో గోధుమల ప్రధాన ఉత్పత్తి ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా, బీహార్, మధ్యప్రదేశ్, రాజస్థాన్, మహారాష్ట్ర మరియు గుజరాత్ వంటి రాష్ట్రాల్లో కేంద్రీకృతమై ఉంది."
    ),

    Question(
        questionText: "గుజరాత్, ఎం.పి., కర్నాటక మరియు మహారాష్ట్రలోని నల్ల నేల ప్రాంతాలలో ఏ పంటను ప్రధానంగా పండిస్తారు?",
        options:[
          "టీ",
          "కాఫీ",
          "పత్తి",
          "జనపనార"
        ],
        correctAnswerIndex: 2,
        explanation:"పత్తిని ప్రధానంగా గుజరాత్, M.P., కర్ణాటక, మహారాష్ట్ర, పంజాబ్, హర్యానా మరియు రాజస్థాన్‌లోని కొన్ని ప్రాంతాలలోని నల్ల నేల ప్రాంతాలలో పండిస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో జోవర్ ప్రధానంగా ఏ రాష్ట్రాల్లో సాగు చేస్తారు?",
        options:[
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "తమిళనాడు, కర్ణాటక, మధ్యప్రదేశ్",
          "రాజస్థాన్, ఉత్తరప్రదేశ్, హర్యానా",
          "మహారాష్ట్ర, కర్ణాటక, ఆంధ్రప్రదేశ్"
        ],
        correctAnswerIndex: 3,
        explanation:"జోవర్ ప్రధానంగా మహారాష్ట్ర, కర్ణాటక, మధ్యప్రదేశ్, గుజరాత్, రాజస్థాన్, యు.పి., ఆంధ్రప్రదేశ్, హర్యానా మరియు తమిళనాడు వంటి రాష్ట్రాల్లో సాగు చేస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో టీని ప్రధాన ఉత్పత్తిదారులలో ఏ రాష్ట్రాలు ఉన్నాయి?",
        options:[
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "అస్సాం, పశ్చిమ బెంగాల్, మేఘాలయ",
          "కేరళ, తమిళనాడు, కర్ణాటక",
          "బీహార్, ఒడిశా, యు.పి."
        ],
        correctAnswerIndex: 1,
        explanation:"అస్సాం, పశ్చిమ బెంగాల్, మేఘాలయ, అరుణాచల్ ప్రదేశ్, U.P., హిమాచల్ ప్రదేశ్ మరియు తమిళనాడు I లో టీని ప్రధాన ఉత్పత్తిదారులలో ఉన్నాయి.భారతదేశం."
    ),

    Question(
        questionText: "భారతదేశంలో అతిపెద్ద రబ్బరు ఉత్పత్తి ఎక్కడ ఉంది?",
        options:[
          "కేరళ, తమిళనాడు, కర్ణాటక",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "గుజరాత్, మహారాష్ట్ర, మధ్యప్రదేశ్"
        ],
        correctAnswerIndex: 0,
        explanation:"కేరళ, తమిళనాడు మరియు కర్ణాటక మొత్తం రబ్బరు ఉత్పత్తిలో 95%కి దోహదం చేస్తాయి, భారతదేశంలో కేరళ అతిపెద్ద ఉత్పత్తిదారుగా ఉంది."
    ),
    Question(
        questionText: "భారతదేశంలో ఏ ప్రాంతం ద్రాక్ష ఉత్పత్తికి ప్రసిద్ధి చెందింది?",
        options:[
          "ఉత్తరాఖండ్, హిమాచల్ ప్రదేశ్, జమ్మూ మరియు కాశ్మీర్",
          "కర్ణాటక, తమిళనాడు, కేరళ",
          "మహారాష్ట్ర, గుజరాత్, పంజాబ్",
          "బీహార్, ఒడిశా, యు.పి."
        ],
        correctAnswerIndex: 0,
        explanation:"ద్రాక్షను ప్రధానంగా ఉత్తరాఖండ్, హిమాచల్ ప్రదేశ్ మరియు జమ్మూ మరియు కాశ్మీర్ వంటి ప్రాంతాలలో ఉత్పత్తి చేస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో స్ట్రాబెర్రీలను పండించడానికి వాతావరణ అవసరాలు ఏమిటి?",
        options:[
          "వేడి మరియు శుష్క వాతావరణం",
          "16°C కంటే ఎక్కువ ఉష్ణోగ్రతలతో కూడిన చల్లని వాతావరణం",
          "అధిక వర్షపాతంతో ఉష్ణమండల వాతావరణం",
          "10°C కంటే తక్కువ ఉష్ణోగ్రతలతో తేమ వాతావరణం"
        ],
        correctAnswerIndex: 1,
        explanation:"స్ట్రాబెర్రీలకు వాటి పెరుగుతున్న కాలంలో 16°C కంటే ఎక్కువ ఉష్ణోగ్రతలు ఉండే చల్లని వాతావరణం అవసరం."
    ),

    Question(
        questionText: "భారతదేశంలో యాపిల్ సాగుకు ప్రసిద్ధి చెందిన కొండ ప్రాంతాలు ఏవి?",
        options:[
          "పశ్చిమ కనుమలు",
          "హిమాచల్ ప్రదేశ్ మరియు జమ్మూ కాశ్మీర్‌లో హిమాలయ వాలులు",
          "తూర్పు కనుమలు",
          "తమిళనాడులోని నీలగిరి కొండలు"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో యాపిల్ సాగు హిమాలయ వాలులలో, ముఖ్యంగా హిమాచల్ ప్రదేశ్ మరియు జమ్మూ మరియు కాశ్మీర్‌లలో ప్రముఖంగా ఉంది."
    ),

    Question(
        questionText: "భారతదేశంలో అరటిని ప్రధానంగా ఎక్కడ పండిస్తారు?",
        options:[
          "కర్ణాటక, తమిళనాడు, కేరళ",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "మహారాష్ట్ర, గుజరాత్, మధ్యప్రదేశ్",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్"
        ],
        correctAnswerIndex: 0,
        explanation:"అరటిని భారతదేశంలోని కర్ణాటక, తమిళనాడు మరియు కేరళ వంటి రాష్ట్రాల్లో ప్రధానంగా సాగు చేస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో మామిడిని ఎక్కువగా ఉత్పత్తి చేసే రాష్ట్రాలు ఏవి?",
        options:[
          "ఉత్తర ప్రదేశ్, బీహార్, అస్సాం",
          "మహారాష్ట్ర, కర్ణాటక, ఆంధ్రప్రదేశ్",
          "పంజాబ్, హర్యానా, రాజస్థాన్",
          "ఒడిశా, పశ్చిమ బెంగాల్, తమిళనాడు"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో మామిడిని ప్రధాన ఉత్పత్తిదారులు మహారాష్ట్ర, కర్ణాటక, ఆంధ్రప్రదేశ్, ఉత్తరప్రదేశ్, బీహార్ మరియు తమిళనాడు."
    ),

    Question(
        questionText: "రబ్బరు ప్రధానంగా ఏ రకమైన నేలలో సాగు చేస్తారు?",
        options:[
          "లోమీ నేల",
          "నల్ల నేల",
          "లేటరైట్ నేల",
          "ఇసుక నేల"
        ],
        correctAnswerIndex: 2,
        explanation:"రబ్బరు ప్రాథమికంగా లేటరైట్ నేలల్లో సాగు చేయబడుతుంది మరియు భారతదేశంలో మొత్తం రబ్బరు ఉత్పత్తిలో 95% కేరళ దోహదం చేస్తుంది."
    ),

    Question(
        questionText: "భారతదేశంలో మిరియాలు (సుగంధ ద్రవ్యాలు) పండించడానికి ప్రాథమిక అవసరం ఏమిటి?",
        options:[
          "వేడి మరియు తేమతో కూడిన వాతావరణం",
          "చల్లని మరియు పొడి వాతావరణం",
          "ఎత్తైన ప్రాంతాలు",
          "ఇసుక మరియు లోమీ నేల"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో మిరియాలు (సుగంధ ద్రవ్యాలు) సాగుకు వేడి మరియు తేమతో కూడిన వాతావరణం అవసరం, దాని ఉత్పత్తికి కేరళ, తమిళనాడు మరియు కర్నాటక వంటి రాష్ట్రాలు అనుకూలంగా ఉంటాయి."
    ),
    Question(
        questionText: "భారతదేశంలో ఏలకుల (సుగంధ ద్రవ్యాలు) యొక్క ప్రధాన ఉత్పత్తి రాష్ట్రం ఏది?",
        options:[
          "కేరళ",
          "మధ్యప్రదేశ్",
          "అస్సాం",
          "ఉత్తర ప్రదేశ్"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో ఏలకుల (సుగంధ ద్రవ్యాలు) యొక్క ప్రధాన ఉత్పత్తిదారుగా కేరళ ఉంది, దాని ఉత్పత్తికి గణనీయంగా తోడ్పడుతోంది."
    ),

    Question(
        questionText: "భారతదేశంలో చెరకును అత్యధికంగా ఉత్పత్తి చేసే రాష్ట్రాలు ఏవి?",
        options:[
          "U.P., పంజాబ్, హర్యానా, తమిళనాడు",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్, ఒడిశా",
          "మహారాష్ట్ర, కర్ణాటక, తమిళనాడు, ఆంధ్రప్రదేశ్",
          "రాజస్థాన్, గుజరాత్, మధ్యప్రదేశ్, ఛత్తీస్‌గఢ్"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలో చెరకును అత్యధికంగా ఉత్పత్తి చేసే రాష్ట్రాలలో మహారాష్ట్ర, కర్ణాటక, తమిళనాడు మరియు ఆంధ్రప్రదేశ్ ఉన్నాయి."
    ),

    Question(
        questionText: "భారతదేశంలో కొబ్బరి పండించడానికి ఏ రకమైన నేల అనుకూలంగా ఉంటుంది?",
        options:[
          "నల్ల నేల",
          "లేటరైట్ నేల",
          "ఇసుక మట్టి",
          "ఎర్ర నేల"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో కొబ్బరి సాగు లేటరైట్ నేలల్లో అనుకూలమైనది మరియు కేరళ, ఆంధ్రప్రదేశ్, తమిళనాడు, కర్ణాటక, మహారాష్ట్ర, గుజరాత్, ఒడిశా మరియు పశ్చిమ బెంగాల్ వంటి రాష్ట్రాలు ప్రధాన ఉత్పత్తిదారులు."
    ),

    Question(
        questionText: "భారతదేశంలో ఏ రాష్ట్రాలు జనపనార ఉత్పత్తికి ప్రసిద్ధి చెందాయి?",
        options:[
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్, ఒడిశా",
          "U.P., పంజాబ్, హర్యానా, తమిళనాడు",
          "మహారాష్ట్ర, కర్ణాటక, మద్య ప్రదేశ్, రాజస్థాన్",
          "గుజరాత్, మహారాష్ట్ర, మధ్యప్రదేశ్, పంజాబ్"
        ],
        correctAnswerIndex: 0,
        explanation:"జూట్ ప్రాథమికంగా భారతదేశంలోని అస్సాం, పశ్చిమ బెంగాల్, బీహార్ మరియు ఒడిశా వంటి రాష్ట్రాల్లో ఉత్పత్తి చేయబడుతుంది."
    ),

    Question(
        questionText: "భారతదేశంలో కాఫీ యొక్క ప్రధాన సాగు ఎక్కడ ఉంది?",
        options:[
          "ఉత్తరాఖండ్, హిమాచల్ ప్రదేశ్, జమ్మూ మరియు కాశ్మీర్",
          "మహారాష్ట్ర, గుజరాత్, పంజాబ్",
          "కర్ణాటక, తమిళనాడు, కేరళ",
          "అస్సాం, పశ్చిమ బెంగాల్, మేఘాలయ"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలో కాఫీ యొక్క ప్రధాన సాగు కర్ణాటక, తమిళనాడు మరియు కేరళ వంటి రాష్ట్రాల్లో కేంద్రీకృతమై ఉంది."
    ),
    Question(
        questionText: "భారతదేశంలో వేరుశెనగ (వేరుశెనగ) యొక్క ప్రధాన ఉత్పత్తిదారులు ఏ రాష్ట్రాలు?",
        options:[
          "రాజస్థాన్, గుజరాత్, మధ్యప్రదేశ్, మహారాష్ట్ర",
          "పంజాబ్, హర్యానా, ఉత్తరప్రదేశ్, బీహార్",
          "ఆంధ్రప్రదేశ్, కర్ణాటక, తమిళనాడు, తెలంగాణ",
          "అస్సాం, పశ్చిమ బెంగాల్, ఒడిశా, జార్ఖండ్"
        ],
        correctAnswerIndex: 0,
        explanation:"వేరుశెనగ (వేరుశెనగ) భారతదేశంలోని రాజస్థాన్, గుజరాత్, మధ్యప్రదేశ్ మరియు మహారాష్ట్ర వంటి రాష్ట్రాల్లో ఎక్కువగా ఉత్పత్తి చేయబడుతుంది."
    ),

    Question(
        questionText: "భారతదేశంలో రబ్బరు యొక్క ప్రధాన సాగు ఎక్కడ ఉంది?",
        options:[
          "కేరళ, తమిళనాడు, కర్ణాటక",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "గుజరాత్, మహారాష్ట్ర, మధ్యప్రదేశ్"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో రబ్బరు యొక్క ప్రధాన సాగు కేరళ, తమిళనాడు మరియు కర్ణాటక వంటి రాష్ట్రాల్లో ఉంది, కేరళ మొత్తం ఉత్పత్తిలో 95% వాటాను కలిగి ఉంది."
    ),

    Question(
        questionText: "భారతదేశంలో ఏలకుల ఉత్పత్తికి ప్రసిద్ధి చెందిన ప్రాంతం ఏది?",
        options:[
          "పశ్చిమ కనుమలు",
          "తూర్పు కనుమలు",
          "హిమాలయ పాదాల",
          "దక్కన్ పీఠభూమి"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో ఏలకుల ఉత్పత్తి పశ్చిమ కనుమల ప్రాంతంలో కేంద్రీకృతమై ఉంది."
    ),

    Question(
        questionText: "భారతదేశంలో టీ సాగుకు అనుకూలమైన వాతావరణ పరిస్థితులు ఏమిటి?",
        options:[
          "వేడి మరియు తేమతో కూడిన వాతావరణం",
          "చల్లని మరియు పొడి వాతావరణం",
          "భారీ వర్షపాతంతో మితమైన ఉష్ణోగ్రత",
          "చల్లని మరియు శుష్క వాతావరణం"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో తేయాకు సాగుకు వేడి మరియు తేమతో కూడిన వాతావరణం అవసరం, అస్సాం, పశ్చిమ బెంగాల్ మరియు తమిళనాడు వంటి రాష్ట్రాలను దాని ఉత్పత్తికి అనుకూలం చేస్తుంది."
    ),

    Question(
        questionText: "భారతదేశంలో నూనె గింజల సాగుకు ప్రసిద్ధి చెందిన రాష్ట్రాలు ఏవి?",
        options:[
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా, తమిళనాడు",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్, ఒడిశా",
          "మహారాష్ట్ర, కర్ణాటక, తమిళనాడు, ఆంధ్రప్రదేశ్",
          "రాజస్థాన్, గుజరాత్, మధ్యప్రదేశ్, ఛత్తీస్‌గఢ్"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలో మహారాష్ట్ర, కర్ణాటక, తమిళనాడు, ఆంధ్రప్రదేశ్, గుజరాత్ మరియు పంజాబ్ వంటి రాష్ట్రాల్లో నూనె గింజలు ఎక్కువగా సాగు చేస్తారు."
    ),
    Question(
        questionText: "భారతదేశంలో బాదం ఉత్పత్తికి ప్రసిద్ధి చెందిన రాష్ట్రం ఏది?",
        options:[
          "జమ్మూ కాశ్మీర్",
          "హిమాచల్ ప్రదేశ్",
          "ఉత్తరాఖండ్",
          "అరుణాచల్ ప్రదేశ్"
        ],
        correctAnswerIndex: 0,
        explanation:"బాదంపప్పును భారతదేశంలోని జమ్మూ మరియు కాశ్మీర్ రాష్ట్రంలో ప్రధానంగా ఉత్పత్తి చేస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో మిరియాలు (సుగంధ ద్రవ్యాలు) యొక్క ప్రధాన సాగు ఎక్కడ ఉంది?",
        options:[
          "కేరళ, తమిళనాడు, కర్ణాటక",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "గుజరాత్, మహారాష్ట్ర, మధ్యప్రదేశ్"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో మిరియాలు (సుగంధ ద్రవ్యాలు) యొక్క ప్రధాన సాగు కేరళ, తమిళనాడు మరియు కర్ణాటక వంటి రాష్ట్రాల్లో ఉంది."
    ),

    Question(
        questionText: "భారతదేశంలో ఏ ప్రాంతం వాల్‌నట్ ఉత్పత్తికి ప్రసిద్ధి చెందింది?",
        options:[
          "పశ్చిమ కనుమలు",
          "హిమాలయ పాదాల",
          "తూర్పు కనుమలు",
          "దక్కన్ పీఠభూమి"
        ],
        correctAnswerIndex: 1,
        explanation:"భారతదేశంలో వాల్‌నట్ ఉత్పత్తి హిమాలయ పర్వత ప్రాంతంలో కేంద్రీకృతమై ఉంది."
    ),

    Question(
        questionText: "భారతదేశంలో టాపియోకా ప్రాథమిక సాగు ఎక్కడ ఉంది?",
        options:[
          "అస్సాం, పశ్చిమ బెంగాల్, మేఘాలయ",
          "కేరళ, తమిళనాడు, కర్ణాటక",
          "గుజరాత్, మహారాష్ట్ర, మధ్యప్రదేశ్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా"
        ],
        correctAnswerIndex: 1,
        explanation:"టేపియోకాను భారతదేశంలోని కేరళ, తమిళనాడు మరియు కర్ణాటక వంటి రాష్ట్రాల్లో ప్రధానంగా సాగు చేస్తారు."
    ),

    Question(
        questionText: "భారతదేశంలో అరెకనట్ ఉత్పత్తికి ప్రసిద్ధి చెందిన రాష్ట్రం ఏది?",
        options:[
          "కేరళ",
          "కర్ణాటక",
          "అస్సాం",
          "ఉత్తర ప్రదేశ్"
        ],
        correctAnswerIndex: 1,
        explanation:"అరెకనట్ భారతదేశంలోని కర్ణాటక రాష్ట్రంలో దాని ఉత్పత్తికి ప్రసిద్ధి చెందింది."
    ),
    Question(
        questionText: "భారతదేశంలో మిరియాలు (సుగంధ ద్రవ్యాలు) పెరగడానికి ఏ నేల రకం అనుకూలంగా ఉంటుంది?",
        options:[
          "నల్ల నేల",
          "లేటరైట్ నేల",
          "ఎరుపు కాబట్టిఇల్",
          "ఒండ్రు నేల"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో మిరియాలు (సుగంధ ద్రవ్యాలు) సాగు నల్ల నేలలో అనుకూలమైనది."
    ),

    Question(
        questionText: "భారతదేశంలో రబ్బరు ప్రాథమిక సాగు ఎక్కడ ఉంది?",
        options:[
          "కేరళ, తమిళనాడు, కర్ణాటక",
          "అస్సాం, పశ్చిమ బెంగాల్, బీహార్",
          "ఉత్తర ప్రదేశ్, పంజాబ్, హర్యానా",
          "గుజరాత్, మహారాష్ట్ర, మధ్యప్రదేశ్"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో రబ్బరు యొక్క ప్రాధమిక సాగు కేరళ, తమిళనాడు మరియు కర్ణాటక వంటి రాష్ట్రాల్లో ఉంది."
    ),

    Question(
        questionText: "భారతదేశంలో ఏలకుల ఉత్పత్తికి ప్రసిద్ధి చెందిన ప్రాంతం ఏది?",
        options:[
          "పశ్చిమ కనుమలు",
          "తూర్పు కనుమలు",
          "హిమాలయ పాదాల",
          "దక్కన్ పీఠభూమి"
        ],
        correctAnswerIndex: 0,
        explanation:"భారతదేశంలో ఏలకుల ఉత్పత్తి పశ్చిమ కనుమల ప్రాంతంలో కేంద్రీకృతమై ఉంది."
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
    home: agriculture_te(),
  ));
}

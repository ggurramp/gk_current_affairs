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

class federalSystem_te extends StatefulWidget {
  final String? userIdentifier;

  federalSystem_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<federalSystem_te> createState() => _federalSystem_teState();
}

class _federalSystem_teState extends State<federalSystem_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//14. సమాఖ్య వ్యవస్థ
    Question(
      questionText: "జాతీయ ప్రభుత్వం మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య సంబంధాల స్వభావం ఆధారంగా ప్రభుత్వాలు ఎలా వర్గీకరించబడతాయి?",
      options:[
        "ఆర్థిక బలం ద్వారా",
        "సైనిక శక్తి ద్వారా",
        "సామాజిక-సాంస్కృతిక వైవిధ్యం ద్వారా",
        "జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య సంబంధాల స్వభావం ద్వారా"
      ],
      correctAnswerIndex: 3,
      explanation:"జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య సంబంధాల స్వభావం ఆధారంగా ప్రభుత్వాలు వర్గీకరించబడ్డాయి.",
    ),

    Question(
      questionText: "ఏకీకృత ప్రభుత్వం యొక్క నిర్వచించే లక్షణం ఏమిటి?",
      options:[
        "అధికారాలు జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య విభజించబడ్డాయి",
        "ప్రాంతీయ ప్రభుత్వాలు జాతీయ ప్రభుత్వం నుండి అధికారాన్ని పొందుతాయి",
        "జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల స్వతంత్ర కార్యాచరణ",
        "ఒప్పందం లేదా ఒప్పందం ద్వారా ఏర్పడటం"
      ],
      correctAnswerIndex: 1,
      explanation:"ఏకీకృత ప్రభుత్వంలో, అధికారాలు జాతీయ ప్రభుత్వంలో ఉంటాయి మరియు ప్రాంతీయ ప్రభుత్వాలు దాని నుండి తమ అధికారాన్ని పొందుతాయి.",
    ),

    Question(
      questionText: "ఏ దేశాలు ఏకీకృత ప్రభుత్వ నమూనాను అనుసరిస్తాయి?",
      options:["US, స్విట్జర్లాండ్, ఆస్ట్రేలియా", "చైనా, ఇటలీ, స్వీడన్", "నార్వే, జపాన్, బ్రెజిల్", "ఫ్రాన్స్, బ్రిటన్, కెనడా"],
      correctAnswerIndex: 3,
      explanation:"ఫ్రాన్స్, బ్రిటన్, కెనడా మరియు ఇతరులు ఏకీకృత ప్రభుత్వ నమూనాను కలిగి ఉన్నారు.",
    ),

    Question(
      questionText: "ఒప్పందం' లేదా 'ఒప్పందం' అని అర్ధం వచ్చే లాటిన్ పదం నుండి ఏ పదం వచ్చింది?",
      options:["రాజ్యాంగం", "ఫెడరేషన్", "యూనిటరీ", "స్వయంప్రతిపత్తి"],
      correctAnswerIndex: 1,
      explanation:"ఫెడరేషన్' అనే పదం లాటిన్ పదం నుండి ఉద్భవించింది, దీని అర్థం 'ఒప్పందం' లేదా 'ఒప్పందం',",
    ),

    Question(
      questionText: "ఫెడరేషన్ ఎలా ఏర్పడుతుంది?",
      options:[
        "సైనిక బలం ద్వారా",
        "ఆర్థిక ఏకీకరణ ద్వారా",
        "ప్రావిన్సులకు స్వయంప్రతిపత్తి కల్పించడం ద్వారా",
        "బలమైన కేంద్రాన్ని ఏర్పాటు చేయడం ద్వారా"
      ],
      correctAnswerIndex: 2,
      explanation:"ప్రావిన్సులకు స్వయంప్రతిపత్తి కల్పించడం, ప్రాంతీయ ప్రయోజనాలను ప్రోత్సహించడం ద్వారా ఒక సమాఖ్యను ఏర్పాటు చేయవచ్చు.",
    ),

    Question(
      questionText: "రాజ్యాంగ నిర్మాతల ప్రకారం భారతదేశంలో సమాఖ్య వ్యవస్థను అనుసరించడానికి కారణం ఏమిటి?",
      options:[
        "సైనిక బలం",
        "సామాజిక-సాంస్కృతిక వైవిధ్యం మరియు దేశం యొక్క పెద్ద పరిమాణం",
        "ఆర్థిక ఏకీకరణ",
        "ఒప్పందం ద్వారా ఏర్పడటం"
      ],
      correctAnswerIndex: 1,
      explanation:"దేశం యొక్క పెద్ద పరిమాణం మరియు దాని సామాజిక-సాంస్కృతిక వైవిధ్యం కారణంగా ఫ్రేమ్‌లు భారతదేశంలో సమాఖ్య వ్యవస్థను స్వీకరించారు.",
    ),

    Question(
      questionText: "దేశాన్ని వివరించడానికి భారత రాజ్యాంగంలో ఏ పదం ఉపయోగించబడింది?",
      options:["ఫెడరేషన్ ఆఫ్ స్టేట్స్", "యూనియన్ ఆఫ్ స్టేట్స్", "సెంట్రల్ రిపబ్లిక్", "అటానమస్ యూనియన్"],
      correctAnswerIndex: 1,
      explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 1 భారతదేశాన్ని 'యూనియన్ ఆఫ్ స్టేట్స్'గా వివరిస్తుంది.",
    ),

    Question(
      questionText: "భారత సమాఖ్య వ్యవస్థ ఏ నమూనా ఆధారంగా ఏర్పడింది?",
      options:["అమెరికన్ మోడల్", "యూరోపియన్ మోడల్", "చైనీస్ మోడల్", "కెనడియన్ మోడల్"],
      correctAnswerIndex: 3,
      explanation:"భారత సమాఖ్య వ్యవస్థ 'కెనడియన్ మోడల్'పై ఆధారపడింది, ఇది 'అమెరికన్ మోడల్' నుండి ప్రాథమికంగా భిన్నంగా ఉంటుంది.",
    ),

    Question(
      questionText: "డా. బి.ఆర్. అంబేద్కర్ ప్రకారం, భారత రాజ్యాంగంలో 'ఫెడరేషన్ ఆఫ్ స్టేట్స్' కంటే 'యూనియన్ ఆఫ్ స్టేట్స్' అనే పదానికి ఎందుకు ప్రాధాన్యత ఇవ్వబడింది?",
      options:[
        "సైనిక బలాన్ని సూచించడానికి",
        "ఆర్థిక ఏకీకరణను నొక్కి చెప్పడం",
        "రాష్ట్రాల మధ్య ఒక ఒప్పందాన్ని సూచించడానికి",
        "సమాఖ్య నాశనం చేయలేనిది అని తెలియజేయడానికి"
      ],
      correctAnswerIndex: 3,
      explanation:"భారత సమాఖ్య అనేది రాష్ట్రాల మధ్య జరిగిన ఒప్పందం యొక్క ఫలితం కాదని మరియు రాష్ట్రాలకు విడిపోయే హక్కు లేదని సూచించడానికి 'యూనియన్ ఆఫ్ స్టేట్స్' అనే పదం 'ఫెడరేషన్ ఆఫ్ స్టేట్స్'కి ప్రాధాన్యత ఇవ్వబడింది.",
    ),

    Question(
      questionText: "భారత సమాఖ్య వ్యవస్థ కెనడియన్ సమాఖ్యను ఎలా పోలి ఉంటుంది?",
      options:[
        "దాని సైనిక శక్తిలో",
        "రిపబ్లిక్' అనే పదానికి దాని ప్రాధాన్యతలో",
        "దాని కేంద్రీకృత ధోరణిలో",
        "దాని సామాజిక-సాంస్కృతిక వైవిధ్యంలో"
      ],
      correctAnswerIndex: 2,
      explanation:"భారత సమాఖ్య వ్యవస్థ దాని కేంద్రీకృత ధోరణిలో కెనడియన్ ఫెడరేషన్‌ను పోలి ఉంటుంది, రాష్ట్రాలకు సంబంధించి కేంద్రంపై మరిన్ని అధికారాలను కలిగి ఉంటుంది.",
    ),
    Question(
      questionText: "ఫెడరల్ ప్రభుత్వం యొక్క లక్షణం ఏమిటి?",
      options:[
        "ప్రాంతీయ ప్రభుత్వాలతో ఒకే ప్రభుత్వం",
        "వ్రాతపూర్వక రాజ్యాంగం",
        "అధికార విభజన లేదు",
        "రాజ్యాంగం యొక్క ఆధిపత్యం"
      ],
      correctAnswerIndex: 0,
      explanation:"సమాఖ్య ప్రభుత్వం యొక్క లక్షణం జాతీయ ప్రభుత్వం మరియు ప్రాంతీయ ప్రభుత్వాలతో సహా ద్వంద్వ ప్రభుత్వ నిర్మాణాలను కలిగి ఉండటం.",
    ),

    Question(
      questionText: "ఏకీకృత ప్రభుత్వం యొక్క లక్షణం ఏమిటి?",
      options:[
        "కఠినమైన రాజ్యాంగం",
        "అలిఖిత రాజ్యాంగం",
        "జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య అధికారాల విభజన",
        "స్వతంత్ర న్యాయవ్యవస్థ"
      ],
      correctAnswerIndex: 2,
      explanation:"ఏకీకృత ప్రభుత్వం యొక్క లక్షణం అధికార విభజన లేకపోవడంrs, జాతీయ ప్రభుత్వానికి అన్ని అధికారాలు ఉంటాయి.",
    ),

    Question(
      questionText: "ఫెడరల్ మరియు యూనిటరీ ప్రభుత్వాలకు ఏ లక్షణం సాధారణంగా ఉంటుంది?",
      options:[
        "రాజ్యాంగం యొక్క ఆధిపత్యం",
        "వ్రాతపూర్వక రాజ్యాంగం",
        "స్వతంత్ర న్యాయవ్యవస్థ",
        "జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య అధికారాల విభజన"
      ],
      correctAnswerIndex: 2,
      explanation:"స్వతంత్ర న్యాయవ్యవస్థ ఉనికి సమాఖ్య మరియు ఏకీకృత ప్రభుత్వాలకు సాధారణ లక్షణం.",
    ),

    Question(
      questionText: "ఏకీకృత ప్రభుత్వంలో, ప్రాంతీయ ప్రభుత్వాలు తమ అధికారాన్ని ఎక్కడ నుండి పొందుతాయి?",
      options:[
        "ప్రాంతీయ ఒప్పందాలు",
        "జాతీయ ప్రభుత్వం",
        "అంతర్జాతీయ ఒప్పందాలు",
        "రాజ్యాంగ సవరణలు"
      ],
      correctAnswerIndex: 1,
      explanation:"ఏకీకృత ప్రభుత్వంలో, ప్రాంతీయ ప్రభుత్వాలు జాతీయ ప్రభుత్వం నుండి తమ అధికారాన్ని పొందుతాయి.",
    ),

    Question(
      questionText: "ఫెడరల్ ప్రభుత్వంలో రాజ్యాంగం యొక్క లక్షణం ఏమిటి?",
      options:[
        "వశ్యత",
        "దృఢత్వం",
        "న్యాయవ్యవస్థ స్వాతంత్ర్యం",
        "రాజ్యాంగం యొక్క ఆధిపత్యం"
      ],
      correctAnswerIndex: 1,
      explanation:"ఫెడరల్ ప్రభుత్వంలో రాజ్యాంగం యొక్క లక్షణం దాని దృఢత్వం.",
    ),

    Question(
      questionText: "ఏ ప్రభుత్వం ద్విసభ శాసనసభను కలిగి ఉండవచ్చు?",
      options:[
        "ఏకీకృత ప్రభుత్వం",
        "ఫెడరల్ ప్రభుత్వం",
        "రెండు",
        "కాదు"
      ],
      correctAnswerIndex: 1,
      explanation:"టెక్స్ట్‌లో పేర్కొన్నట్లుగా ఫెడరల్ ప్రభుత్వం ద్విసభ శాసనసభను కలిగి ఉండవచ్చు.",
    ),

    Question(
      questionText: "ఏ రకమైన ప్రభుత్వం జాతీయ ప్రభుత్వానికి అన్ని అధికారాలను కలిగి ఉంది?",
      options:[
        "ఫెడరల్ ప్రభుత్వం",
        "యూనిటరీ ప్రభుత్వం",
        "సమాఖ్య ప్రభుత్వం",
        "పార్లమెంటరీ ప్రభుత్వం"
      ],
      correctAnswerIndex: 1,
      explanation:"ఏకీకృత ప్రభుత్వంలో, అన్ని అధికారాలు జాతీయ ప్రభుత్వానికి ఉంటాయి.",
    ),

    Question(
      questionText: "అలిఖిత రాజ్యాంగాన్ని ఏ ప్రభుత్వం కలిగి ఉండవచ్చు?",
      options:[
        "యూనిటరీ ప్రభుత్వం",
        "ఫెడరల్ ప్రభుత్వం",
        "రెండు",
        "కాదు"
      ],
      correctAnswerIndex: 0,
      explanation:"బ్రిటన్ ఉదాహరణలో చూసినట్లుగా, అలిఖిత రాజ్యాంగం అనేది ఏకీకృత ప్రభుత్వం యొక్క లక్షణం.",
    ),

    Question(
      questionText: "ఫెడరల్ ప్రభుత్వంలో న్యాయవ్యవస్థను ఏది వేరు చేస్తుంది?",
      options:[
        "ప్రాంతీయ ప్రభుత్వాలపై ఆధారపడటం",
        "స్వాతంత్ర్యం",
        "దృఢత్వం",
        "ఆధిపత్యం"
      ],
      correctAnswerIndex: 1,
      explanation:"ఫెడరల్ ప్రభుత్వంలో న్యాయవ్యవస్థ దాని స్వతంత్రత ద్వారా వర్గీకరించబడుతుంది.",
    ),

    Question(
      questionText: "ఏ ప్రభుత్వం ఏకసభ్య శాసనసభను కలిగి ఉండవచ్చు?",
      options:[
        "యూనిటరీ ప్రభుత్వం",
        "ఫెడరల్ ప్రభుత్వం",
        "రెండు",
        "కాదు"
      ],
      correctAnswerIndex: 0,
      explanation:"ఏకసభ శాసనసభ అనేది చైనా ఉదాహరణలో చూసినట్లుగా, ఏకీకృత ప్రభుత్వం యొక్క లక్షణం.",
    ),
    Question(
      questionText: "రాజ్యాంగం ద్వారా స్థాపించబడిన ద్వంద్వ రాజకీయ నిర్మాణం ఏమిటి?",
      options:[
        "కేంద్రంలో ఒకే ప్రభుత్వం",
        "కేంద్రంలో యూనియన్ మరియు అంచున ఉన్న రాష్ట్రాలు",
        "రాష్ట్రాలు మాత్రమే",
        "ప్రాంతీయ ప్రభుత్వాలు మాత్రమే"
      ],
      correctAnswerIndex: 1,
      explanation:"రాజ్యాంగం కేంద్రంలో యూనియన్ మరియు సరిహద్దులో రాష్ట్రాలతో కూడిన ద్వంద్వ రాజకీయాన్ని ఏర్పాటు చేస్తుంది.",
    ),

    Question(
      questionText: "కేంద్రం మరియు రాష్ట్రాల మధ్య అపార్థాలు మరియు విభేదాలను రాజ్యాంగం ఎలా నివారిస్తుంది?",
      options:[
        "యూనియన్‌కు మరిన్ని అధికారాలు ఇవ్వడం ద్వారా",
        "కేంద్ర మరియు రాష్ట్ర ప్రభుత్వాల నిర్మాణం మరియు విధులను పేర్కొనడం ద్వారా",
        "రాష్ట్ర ప్రభుత్వాలను తొలగించడం ద్వారా",
        "కేంద్రం యొక్క అధికారాలను తగ్గించడం ద్వారా"
      ],
      correctAnswerIndex: 1,
      explanation:"కేంద్ర మరియు రాష్ట్ర ప్రభుత్వాల నిర్మాణం మరియు విధులను పేర్కొనడం ద్వారా రాజ్యాంగం అపార్థాలు మరియు విభేదాలను నివారిస్తుంది.",
    ),

    Question(
      questionText: "కేంద్రం మరియు రాష్ట్రాల మధ్య అధికారాల విభజన ప్రయోజనం ఏమిటి?",
      options:[
        "కేంద్రంలో అధికారాలను కేంద్రీకరించడానికి",
        "రాష్ట్ర ప్రభుత్వాలను తొలగించడానికి",
        "సమాఖ్య నిర్మాణాన్ని నిర్వహించడానికి",
        "కేంద్రం మరియు రాష్ట్రాల మధ్య విభేదాలు సృష్టించడానికి"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్రం మరియు రాష్ట్రాలకు నిర్దిష్ట అధికారాలను కేటాయించడం ద్వారా అధికారాల విభజన సమాఖ్య నిర్మాణాన్ని నిర్వహిస్తుంది.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రకారం భూమి యొక్క అత్యున్నత చట్టం ఏమిటి?",
      options:[
        "కేంద్రం రూపొందించిన చట్టాలు",
        "రాష్ట్రాలచే రూపొందించబడిన చట్టాలు",
        "సుప్రీం కోర్ట్ నిర్ణయాలు",
        "రాజ్యాంగం"
      ],
      correctAnswerIndex: 3,
      explanation:"రాజ్యాంగం భూమి యొక్క అత్యున్నత చట్టం, మరియు కేంద్రం మరియు రాష్ట్రాలు రూపొందించిన చట్టాలు దాని నిబంధనలకు అనుగుణంగా ఉండాలి.",
    ),

    Question(
      questionText: "రాజ్యాంగం ఎందుకు కఠినంగా పరిగణించబడుతుంది?",
      options:[
        "దాని పొడవు కారణంగా",
        "అధికార విభజన కారణంగా",
        "సవరణ పద్ధతి కారణంగా",
        "వ్యాసాల సంఖ్య కారణంగా"
      ],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగం దృఢమైనదిగా పరిగణించబడుతుంది డిసవరణ పద్ధతికి, ముఖ్యంగా సమాఖ్య నిర్మాణం మరియు న్యాయ సంస్థకు సంబంధించి.",
    ),

    Question(
      questionText: "స్వతంత్ర న్యాయవ్యవస్థను స్థాపించడం వల్ల ప్రయోజనం ఏమిటి?",
      options:[
        "న్యాయవ్యవస్థలో అధికారాన్ని కేంద్రీకరించడానికి",
        "రాష్ట్రాల మధ్య వివాదాలను పరిష్కరించేందుకు",
        "రాజ్యాంగ ఔన్నత్యాన్ని కాపాడటానికి",
        "సుప్రీం కోర్ట్ అధికారాన్ని తగ్గించడానికి"
      ],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగం యొక్క ఔన్నత్యాన్ని పరిరక్షించడానికి మరియు కేంద్రం మరియు రాష్ట్రాల మధ్య వివాదాలను పరిష్కరించడానికి స్వతంత్ర న్యాయవ్యవస్థ ఏర్పాటు చేయబడింది.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రకారం ద్విసభ శాసనసభ ఏమి కలిగి ఉంటుంది?",
      options:[
        "రెండు శక్తివంతమైన గదులు",
        "రెండు స్వతంత్ర శాసనసభలు",
        "ఎగువ సభ మరియు దిగువ సభ",
        "ద్వంద్వ ఫంక్షన్లతో ఒకే ఇల్లు"
      ],
      correctAnswerIndex: 2,
      explanation:"ఉభయసభల శాసనసభలో ఎగువ సభ (రాజ్యసభ) మరియు దిగువ సభ (లోక్ సభ) ఉంటాయి.",
    ),

    Question(
      questionText: "సమాఖ్య సమతౌల్యాన్ని కొనసాగించడానికి రాజ్యసభ ఎలా దోహదపడుతుంది?",
      options:[
        "కేంద్రానికి మాత్రమే ప్రాతినిధ్యం వహించడం ద్వారా",
        "భారత ప్రజలకు ప్రాతినిధ్యం వహించడం ద్వారా",
        "రాష్ట్రాల ప్రయోజనాలను పరిరక్షించడం ద్వారా",
        "రాష్ట్రాల అధికారాలను తగ్గించడం ద్వారా"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్రం నుండి అనవసర జోక్యానికి వ్యతిరేకంగా రాష్ట్రాల ప్రయోజనాలను పరిరక్షించడం ద్వారా రాజ్యసభ సమాఖ్య సమతుల్యతను నిర్వహిస్తుంది.",
    ),

    Question(
      questionText: "రాజ్యసభ యొక్క లక్షణం ఏమిటి?",
      options:[
        "మరింత శక్తివంతమైన గది",
        "తక్కువ శక్తివంతమైన గది",
        "శాసన అధికారాలు లేవు",
        "రాష్ట్రాలకు ప్రాతినిధ్యం లేదు"
      ],
      correctAnswerIndex: 1,
      explanation:"లోక్‌సభతో పోలిస్తే రాజ్యసభ తక్కువ శక్తిమంతమైన గది.",
    ),

    Question(
      questionText: "సమాఖ్య వ్యవస్థలో సుప్రీంకోర్టు ఎలాంటి పాత్ర పోషిస్తుంది?",
      options:[
        "న్యాయవ్యవస్థలో అధికారాన్ని కేంద్రీకరించడానికి",
        "కేంద్రం మరియు రాష్ట్రాల మధ్య వివాదాలను పరిష్కరించేందుకు",
        "రాష్ట్ర ప్రభుత్వాలను తొలగించడానికి",
        "సమాఖ్య నిర్మాణాన్ని బలహీనపరిచేందుకు"
      ],
      correctAnswerIndex: 1,
      explanation:"సమాఖ్య వ్యవస్థలో కేంద్రం మరియు రాష్ట్రాల మధ్య వివాదాలను పరిష్కరించడంలో సుప్రీంకోర్టు పాత్ర పోషిస్తుంది.",
    ),
    Question(
      questionText: "K.G. వేర్ భారత రాజ్యాంగాన్ని ఎలా వివరిస్తుంది?",
      options:[
        "స్ట్రిక్ట్లీ ఫెడరల్",
        "సమాఖ్య లక్షణాలతో యూనిటరీ",
        "ఫెడరల్ రిజిడ్",
        "ఏకీకృత లక్షణాలు లేని సమాఖ్య"
      ],
      correctAnswerIndex: 1,
      explanation:"K.G. వేర్ భారత రాజ్యాంగాన్ని 'సమాఖ్య లక్షణాలతో ఏకీకృతం'గా వర్ణించాడు, ఇది సాంప్రదాయ సమాఖ్య వ్యవస్థల నుండి విచలనాన్ని సూచిస్తుంది.",
    ),

    Question(
      questionText: "కె. సంతానం ప్రకారం, భారత రాజ్యాంగం యొక్క ఏకపక్ష పక్షపాతానికి ఏ అంశాలు దోహదం చేస్తాయి?",
      options:[
        "రాష్ట్రాల సాధికారత",
        "ఆర్థిక విషయాలలో రాష్ట్రాల ఆధిపత్యం",
        "ఆర్థిక విషయాలలో కేంద్రం ఆధిపత్యం మరియు ప్రణాళికా సంఘం పాత్ర",
        "సమాన అధికారాల పంపిణీ"
      ],
      correctAnswerIndex: 2,
      explanation:"ఆర్థిక విషయాలలో కేంద్రం ఆధిపత్యం మరియు ప్రణాళికా సంఘం పాత్రకు ఏకపక్ష పక్షపాతాన్ని కె. సంతానం ఆపాదించారు.",
    ),

    Question(
      questionText: "పాల్ యాపిల్‌బై భారతీయ వ్యవస్థను ఎలా వర్గీకరిస్తారు?",
      options:[
        "అత్యంత సమాఖ్య",
        "అత్యంత సమాఖ్య",
        "ఎగ్జాంప్లరీ ఫెడరల్",
        "అసాధారణ సమాఖ్య"
      ],
      correctAnswerIndex: 1,
      explanation:"పాల్ యాపిల్‌బై భారతీయ వ్యవస్థను 'అత్యంత సమాఖ్య'గా వర్ణించాడు",
    ),

    Question(
      questionText: "భారత వ్యవస్థను మోరిస్ జోన్స్ ఎలా వర్ణించారు?",
      options:[
        "బలమైన కేంద్రీకరణ ధోరణితో సమాఖ్య",
        "వదులుగా సమాఖ్య",
        "స్ట్రిక్ట్లీ యూనిటరీ",
        "సమాఖ్య"
      ],
      correctAnswerIndex: 0,
      explanation:"మోరిస్ జోన్స్ భారతీయ వ్యవస్థను 'బలమైన కేంద్రీకృత ధోరణితో కూడిన సమాఖ్య'గా అభివర్ణించారు.",
    ),

    Question(
      questionText: "డా. బి.ఆర్. అంబేద్కర్ ప్రకారం, ఫెడరలిజం యొక్క ప్రాథమిక సూత్రం ఏమిటి?",
      options:[
        "కేంద్రం ద్వారా అధికార విభజన",
        "రాష్ట్రాల వారీగా అధికార విభజన",
        "ప్రత్యేక చట్టం ద్వారా అధికార విభజన",
        "రాజ్యాంగం ద్వారానే అధికార విభజన"
      ],
      correctAnswerIndex: 3,
      explanation:"ఫెడరలిజం యొక్క ప్రాథమిక సూత్రం రాజ్యాంగం ద్వారా అధికార విభజన అని డాక్టర్ బి.ఆర్. అంబేద్కర్ పేర్కొన్నారు.",
    ),

    Question(
      questionText: "బొమ్మాయి కేసులో, సుప్రీంకోర్టు భారత రాజ్యాంగంలో ఫెడరలిజాన్ని ఎలా వర్ణించింది?",
      options:[
        "పరిపాలన సౌలభ్యం",
        "సూత్రం యొక్క విషయం",
        "తాత్కాలిక ఏర్పాటు",
        "రాజకీయ వ్యూహం"
      ],
      correctAnswerIndex: 1,
      explanation:"బొమ్మాయి కేసులో భారత రాజ్యాంగంలో ఫెడరలిజాన్ని 'సూత్రానికి సంబంధించిన అంశం'గా సుప్రీంకోర్టు వర్ణించింది.",
    ),

    Question(
      questionText: "భారత ఫెడరలిజంలో రాజీ ఏమి ప్రతిబింబిస్తుంది?",
      options:[
        "పూర్తి కేంద్రీకరణ",
        "రాష్ట్రాలకు మాత్రమే స్వయంప్రతిపత్తి",
        "సాధారణ అధికార విభజన మరియు జాతీయ సమగ్రత మధ్య రాజీ",
        "రాష్ట్రాల నిర్మూలన"
      ],
      correctAnswerIndex: 2,
    explanation:"భారత ఫెడరలిజంలో రాజీ అనేది అధికారాల సాధారణ విభజన మరియు జాతీయ సమగ్రత అవసరం మధ్య సమతుల్యతను ప్రతిబింబిస్తుంది.",
    ),

    Question(
      questionText: "భారత రాజకీయ వ్యవస్థలో సమాఖ్య స్ఫూర్తిని ప్రతిబింబించే ఒక ధోరణి ఏమిటి?",
      options:[
      "కేంద్రం యొక్క ఆధిపత్యం",
      "రాష్ట్రాల మధ్య ప్రాదేశిక వివాదాలు",
      "రాష్ట్రాలు అడ్మినిస్ట్రేటివ్ ఏజెన్సీలుగా",
      "ప్రాంతీయ పార్టీల నిర్మూలన"
    ],
    correctAnswerIndex: 1,
    explanation:"రాష్ట్రాల మధ్య ప్రాదేశిక వివాదాలు భారత రాజకీయ వ్యవస్థలో సమాఖ్య స్ఫూర్తిని ప్రతిబింబిస్తాయి.",
    ),

    Question(
      questionText: " రాష్ట్రాల అధికారాలకు సంబంధించి బొమ్మై కేసులో సుప్రీంకోర్టు ఏమి పేర్కొంది?",
      options:[
        "రాష్ట్రాలు కేంద్రానికి అనుబంధాలు",
        "రాష్ట్రాలకు స్వతంత్ర రాజ్యాంగ ఉనికి ఉంది",
        "రాష్ట్రాలు అడ్మినిస్ట్రేటివ్ ఏజెన్సీలు",
        "రాష్ట్రాలకు శాసన లేదా కార్యనిర్వాహక అధికారం లేదు"
      ],
      correctAnswerIndex: 2,
      explanation:"రాష్ట్రాలు స్వతంత్ర రాజ్యాంగ ఉనికిని కలిగి ఉన్నాయని మరియు కేంద్రం యొక్క పరిపాలనా సంస్థలు కాదని బొమ్మై కేసులో సుప్రీంకోర్టు పేర్కొంది.",
    ),

    Question(
      questionText: "డాక్టర్ బి.ఆర్. అంబేద్కర్ రాజ్యాంగం యొక్క సౌలభ్యం గురించి ఏమి గమనిస్తారు?",
      options:[
        "ఇది దృఢమైనది",
        "ఇది అనువైనది",
        "ఇది ఏకీకృత మరియు సమాఖ్య రెండూ",
        "ఇది తాత్కాలికం"
      ],
      correctAnswerIndex: 1,
      explanation:"రాజ్యాంగం యొక్క వశ్యత సమయం మరియు పరిస్థితుల అవసరాలకు అనుగుణంగా ఏకీకృత మరియు సమాఖ్య రెండింటినీ అనుమతిస్తుంది అని డాక్టర్ B.R. అంబేద్కర్ గమనించారు.",
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
    home: federalSystem_te(),
  ));
}

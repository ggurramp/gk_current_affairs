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

class plans_indian_economy_te extends StatefulWidget {
  final String? userIdentifier;

  plans_indian_economy_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<plans_indian_economy_te> createState() => _plans_indian_economy_teState();
}

class _plans_indian_economy_teState extends State<plans_indian_economy_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "విశ్వేశ్వరయ్య ప్రణాళికను ఎవరు ప్రతిపాదించారు మరియు దాని లక్ష్యం ఏమిటి?",
      options:[
        "సర్ ఎం. విశ్వేశ్వరయ్య; పారిశ్రామికీకరణ ద్వారా ఒక దశాబ్దంలో జాతీయ ఆదాయాన్ని రెట్టింపు చేయండి",
        "జవహర్ లాల్ నెహ్రూ; వేగవంతమైన వ్యవసాయ వృద్ధి",
        "పురుషోత్తమదాస్ ఠాకూర్దాస్; దిగుమతి ప్రత్యామ్నాయం మరియు ఎగుమతి నిరాశావాదం",
        "M. N. రాయ్; వ్యవసాయం మరియు ఉత్పత్తి కార్యకలాపాల జాతీయీకరణ"
      ],
      correctAnswerIndex: 0,
      explanation:"పారిశ్రామికీకరణ ద్వారా ఒక దశాబ్దంలో జాతీయ ఆదాయాన్ని రెట్టింపు చేయాలనే లక్ష్యంతో విశ్వేశ్వరయ్య ప్రణాళికను సర్ ఎం. విశ్వేశ్వరయ్య ప్రతిపాదించారు.",
    ),
    Question(
      questionText: "ఆర్థిక వ్యవస్థలో ప్రభుత్వ జోక్యం మరియు నియంత్రణపై దృష్టి సారించిన ప్రణాళిక ఏది?",
      options:[
        "నేషనల్ ప్లానింగ్ కమిటీ (NPC)",
        "బాంబే ప్లాన్",
        "ప్రజల ప్రణాళిక",
        "గాంధీయ ప్రణాళిక"
      ],
      correctAnswerIndex: 1,
      explanation:"బాంబే ప్రణాళిక అధికారికంగా ఆమోదించబడనప్పటికీ వృద్ధి కోసం ఆర్థిక వ్యవస్థలో ప్రభుత్వ జోక్యం మరియు నియంత్రణను నొక్కి చెప్పింది.",
    ),
    Question(
      questionText: "ప్రజల ప్రణాళికను ఎవరు రూపొందించారు మరియు దాని ముఖ్య సూత్రాలు ఏమిటి?",
      options:[
        "M. N. రాయ్; వ్యవసాయానికి ప్రాధాన్యత మరియు అన్ని ఉత్పత్తి కార్యకలాపాల జాతీయీకరణ",
        "S. N. అగర్వాల్; వికేంద్రీకృత ఆర్థిక నిర్మాణం మరియు స్వీయ-నియంత్రణ గ్రామాలు",
        "జై ప్రకాష్ నారాయణ్; గాంధీ ప్రణాళిక మరియు వినోబా భావే సూత్రాల నుండి ప్రేరణ పొందారు",
        "పండిట్ J.L. నెహ్రూ; ప్రణాళికా సంఘం ద్వారా పంచవర్ష ప్రణాళికల రూపకల్పన"
      ],
      correctAnswerIndex: 0,
      explanation:"M. N. రాయ్ పీపుల్స్ ప్లాన్‌ను రూపొందించారు, ఇది వ్యవసాయానికి ప్రాధాన్యతనిచ్చింది మరియు వ్యవసాయం మరియు అన్ని ఉత్పత్తి కార్యకలాపాలను జాతీయం చేయాలని సూచించింది.",
    ),
    Question(
      questionText: "గాంధీ ప్రణాళిక యొక్క ముఖ్య సూత్రాలు ఏమిటి?",
      options:[
        "వికేంద్రీకృత ఆర్థిక నిర్మాణం మరియు స్వీయ-నియంత్రణ గ్రామాలు",
        "వేగవంతమైన పారిశ్రామికీకరణ మరియు ప్రజాస్వామ్య పెట్టుబడిదారీ విధానం",
        "విదేశీ సాంకేతికత మరియు భూ సంస్కరణల ద్వారా స్వయం సమృద్ధి",
        "దిగుమతి ప్రత్యామ్నాయం మరియు ఎగుమతి నిరాశావాదం"
      ],
      correctAnswerIndex: 0,
      explanation:"గాంధేయ ప్రణాళిక వ్యవసాయంపై ఎక్కువ ప్రాధాన్యతనిస్తూ స్వయం-సమయం కలిగిన గ్రామాలతో కూడిన వికేంద్రీకృత ఆర్థిక నిర్మాణాన్ని నొక్కి చెప్పింది.",
    ),
    Question(
      questionText: "సర్వోదయ ప్రణాళికను ఎవరు రూపొందించారు మరియు దాని ముఖ్యాంశాలు ఏమిటి?",
      options:[
        "జవహర్ లాల్ నెహ్రూ; పారిశ్రామికీకరణ మరియు పట్టణీకరణ",
        "M. N. రాయ్; వ్యవసాయం మరియు జాతీయీకరణ",
        "S. N. అగర్వాల్; వికేంద్రీకృత భాగస్వామ్య ప్రణాళిక మరియు స్వయం సమృద్ధి",
        "జై ప్రకాష్ నారాయణ్; న్యాయం మరియు సమానత్వంతో వృద్ధి"
      ],
      correctAnswerIndex: 2,
      explanation:"వ్యవసాయం, చిన్న మరియు పత్తి పరిశ్రమలు మరియు భూ సంస్కరణల ద్వారా స్వయం సమృద్ధిపై దృష్టి సారించిన సర్వోదయ ప్రణాళికను జై ప్రకాష్ నారాయణ్ రూపొందించారు.",
    ),
    Question(
      questionText: "నాల్గవ పంచవర్ష ప్రణాళిక లక్ష్యం ఏమిటి?",
      options:[
        "వేగవంతమైన పారిశ్రామికీకరణ మరియు దిగుమతి ప్రత్యామ్నాయం",
        "ఆహారంలో స్వయం సమృద్ధి మరియు విదేశీ సహాయానికి నో చెప్పడం",
        "పేదరిక నిర్మూలన మరియు ఉత్పాదకత పెంపుదల",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి"
      ],
      correctAnswerIndex: 1,
      explanation:"నాల్గవ పంచవర్ష ప్రణాళిక ఆహారంలో స్వయం సమృద్ధిని సాధించడం మరియు విదేశీ సహాయాన్ని తిరస్కరించడం లక్ష్యంగా పెట్టుకుంది.",
    ),
    Question(
      questionText: "ఎనిమిదవ పంచవర్ష ప్రణాళిక యొక్క దృష్టి ఏమిటి మరియు ఈ ప్రణాళిక సమయంలో ఏ కొత్త ఆర్థిక విధానం ప్రారంభించబడింది?",
      options:[
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి; దిగుమతి ప్రత్యామ్నాయం",
        "మానవ ముఖంతో ప్రణాళిక; సరళీకరణ, ప్రైవేటీకరణ మరియు ప్రపంచీకరణ (LPG)",
        "వేగవంతమైన, మరింత సమగ్ర వృద్ధి; స్వావలంబన",
        "పేదరిక నిర్మూలన; సాంకేతికత ఆధునికీకరణ"
      ],
      correctAnswerIndex: 1,
      explanation:"ఎనిమిదవ పంచవర్ష ప్రణాళిక 'మానవ ముఖంతో ప్రణాళిక'పై దృష్టి సారించింది మరియు సరళీకరణ, ప్రైవేటీకరణ మరియు ప్రపంచీకరణ (LPG)తో కొత్త ఆర్థిక విధానాన్ని ప్రారంభించింది.",
    ),
    Question(
      questionText: "తొమ్మిదవ పంచవర్ష ప్రణాళికలో నొక్కిచెప్పబడిన ముఖ్య పరిమాణాలు ఏమిటి?",
      options:[
        "పేదరిక నిర్మూలన మరియు ఉత్పాదకత పెంపుదల",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి",
        "వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధి",
        "స్వయం సమృద్ధి మరియు దిగుమతి ప్రత్యామ్నాయం"
      ],
      correctAnswerIndex: 1,
      explanation:"తొమ్మిదవ పంచవర్ష ప్రణాళిక నాలుగు కోణాలపై నొక్కి చెప్పింది: జీవన నాణ్యత; ఉత్పాదక ఉపాధి కల్పన; ప్రాంతీయ సమతుల్యత మరియు స్వావలంబన.",
    ),
    Question(
      questionText: "పదో పంచవర్ష ప్రణాళిక లక్ష్యాలు ఏమిటి?",
      options:[
        "తలసరి ఆదాయాన్ని రెట్టింపు చేయండి మరియు పేదరిక నిష్పత్తిని 15% తగ్గించండి",
        "వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధి",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి",
        "ఆహారంలో స్వయం సమృద్ధి మరియు విదేశీ సహాయానికి నో చెప్పడం"
      ],
      correctAnswerIndex: 0,
      explanation:"పదో పంచవర్ష ప్రణాళిక తలసరి ఆదాయాన్ని రెట్టింపు చేయడం మరియు పేదరిక నిష్పత్తిని 15% తగ్గించడం లక్ష్యంగా పెట్టుకుంది.",
    ),
    Question(
      questionText: "పన్నుల దృష్టి ఏమిటిfవ పంచవర్ష ప్రణాళిక?",
      options:[
        "వేగవంతమైన, మరింత సమగ్ర వృద్ధి మరియు స్థిరమైన వృద్ధి",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి",
        "తలసరి ఆదాయాన్ని రెట్టింపు చేయండి మరియు పేదరిక నిష్పత్తిని తగ్గించండి",
        "వేగవంతమైన పారిశ్రామికీకరణ మరియు దిగుమతి ప్రత్యామ్నాయం"
      ],
      correctAnswerIndex: 0,
      explanation:"పన్నెండవ పంచవర్ష ప్రణాళిక వేగవంతమైన, మరింత సమగ్ర వృద్ధి మరియు స్థిరమైన వృద్ధిపై దృష్టి సారించింది.",
    ),
    Question(
      questionText: "2015లో ప్లానింగ్ కమిషన్ స్థానంలో ఏ సంస్థ వచ్చింది మరియు దాని ద్వంద్వ లక్ష్యాలు ఏమిటి?",
      options:[
        "నేషనల్ డెవలప్‌మెంట్ కౌన్సిల్ (NDC); ఆర్థిక అభివృద్ధి మరియు ప్రాంతీయ సమతుల్యత",
        "నీతి ఆయోగ్; స్థిరమైన అభివృద్ధి లక్ష్యాలను మరియు సహకార సమాఖ్యను సాధించడం",
        "ఎకనామిక్ ప్రోగ్రామ్ కమిటీ (EPC); మానవ వనరుల అభివృద్ధి మరియు ప్రైవేటీకరణ",
        "ప్రజల ప్రణాళిక; వ్యవసాయం మరియు జాతీయీకరణ"
      ],
      correctAnswerIndex: 1,
      explanation:"సుస్థిర అభివృద్ధి లక్ష్యాలను సాధించడం మరియు సహకార సమాఖ్య విధానాన్ని పెంపొందించడం అనే ద్వంద్వ లక్ష్యాలతో 2015లో నీతి ఆయోగ్ ప్లానింగ్ కమిషన్‌ను భర్తీ చేసింది.",
    ),

    Question(
      questionText: "నీతి ఆయోగ్ లక్ష్యాలలో ఏ కార్యక్రమాలు చేర్చబడ్డాయి?",
      options:[
        "యాక్షన్ ప్లాన్- 3 సంవత్సరాలు",
        "వ్యూహ ప్రణాళిక- 7 సంవత్సరాలు",
        "విజన్ ప్లాన్- 15 సంవత్సరాలు",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"NITI ఆయోగ్ యొక్క కార్యక్రమాలలో కార్యాచరణ ప్రణాళిక- 3 సంవత్సరాలు, వ్యూహ ప్రణాళిక- 7 సంవత్సరాలు మరియు విజన్ ప్లాన్- 15 సంవత్సరాలు.",
    ),
    Question(
      questionText: "హారోడ్ డోమర్ మోడల్ అంటే ఏమిటి మరియు దాని ఆధారంగా ఏ పంచవర్ష ప్రణాళిక రూపొందించబడింది?",
      options:[
        "వృద్ధి రేటు పెట్టుబడి రేటు మరియు మూలధన ఉత్పాదకతపై ఆధారపడి ఉంటుంది; మొదటి పంచవర్ష ప్రణాళిక",
        "వేగవంతమైన పారిశ్రామికీకరణ; రెండవ పంచవర్ష ప్రణాళిక",
        "ఆహారంలో స్వయం సమృద్ధి; నాల్గవ పంచవర్ష ప్రణాళిక",
        "జీవన నాణ్యత మరియు ప్రాంతీయ సమతుల్యత; తొమ్మిదవ పంచవర్ష ప్రణాళిక"
      ],
      correctAnswerIndex: 0,
      explanation:"హెరోడ్ డోమర్ మోడల్ వృద్ధి రేటు పెట్టుబడి రేటు మరియు మూలధన ఉత్పాదకతపై ఆధారపడి ఉంటుందని పేర్కొంది. మొదటి పంచవర్ష ప్రణాళిక ఈ నమూనాపై ఆధారపడింది.",
    ),
    Question(
      questionText: "మహాలనోబిస్ ప్రణాళిక అంటే ఏమిటి మరియు ఏ పంచవర్ష ప్రణాళికను ఈ పేరుతో పిలుస్తారు?",
      options:[
        "వ్యవసాయం నుండి పరిశ్రమలకు మారాలని యోచిస్తున్న న్యాయవాదులు; రెండవ పంచవర్ష ప్రణాళిక",
        "ఆహారంలో స్వయం సమృద్ధిని నొక్కి చెబుతుంది; నాల్గవ పంచవర్ష ప్రణాళిక",
        "మానవ వనరుల అభివృద్ధిపై ఒత్తిడి; ఎనిమిదవ పంచవర్ష ప్రణాళిక",
        "వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధిపై దృష్టి పెట్టండి; పదకొండవ పంచవర్ష ప్రణాళిక"
      ],
      correctAnswerIndex: 0,
      explanation:"మహాలనోబిస్ ప్రణాళిక వ్యవసాయం నుండి పరిశ్రమలకు మారాలని ప్రణాళికను సమర్ధిస్తుంది. దీనిని రెండవ పంచవర్ష ప్రణాళిక అని కూడా అంటారు.",
    ),
    Question(
      questionText: "ఉదారీకరణ, ప్రైవేటీకరణ మరియు ప్రపంచీకరణ (LPG)తో కొత్త ఆర్థిక విధానాన్ని ప్రారంభించిన ప్రణాళిక ఏది?",
      options:[
        "ఏడవ పంచవర్ష ప్రణాళిక",
        "ఎనిమిదవ పంచవర్ష ప్రణాళిక",
        "తొమ్మిదవ పంచవర్ష ప్రణాళిక",
        "పదో పంచవర్ష ప్రణాళిక"
      ],
      correctAnswerIndex: 1,
      explanation:"ఉదారీకరణ, ప్రైవేటీకరణ మరియు ప్రపంచీకరణ (LPG)తో కూడిన కొత్త ఆర్థిక విధానం ఎనిమిదవ పంచవర్ష ప్రణాళికలో ప్రారంభించబడింది.",
    ),
    Question(
      questionText: "ఏడవ పంచవర్ష ప్రణాళికలో 1990-1991 మరియు 1991-1992లో రెండు వార్షిక ప్రణాళికలు ఎందుకు ఉన్నాయి?",
      options:[
        "ఉత్పాదకత మరియు పనిపై దృష్టి పెట్టండి",
        "ప్రభుత్వ రంగం కంటే ప్రైవేట్ రంగానికి ప్రాధాన్యత",
        "రాజకీయ పరిస్థితుల్లో అస్థిరత",
        "ప్రపంచ ఆర్థిక మాంద్యం"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్రంలో అస్థిర రాజకీయ పరిస్థితుల కారణంగా, ఏడవ పంచవర్ష ప్రణాళికలో 1990-1991 మరియు 1991-1992 సంవత్సరానికి రెండు వార్షిక ప్రణాళికలు ప్రారంభించబడ్డాయి.",
    ),
    Question(
      questionText: "పదకొండవ పంచవర్ష ప్రణాళికలో నొక్కిచెప్పబడిన ముఖ్య పరిమాణాలు ఏమిటి?",
      options:[
        "జీవన నాణ్యత మరియు ప్రాంతీయ సమతుల్యత",
        "వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధి",
        "మానవ వనరుల అభివృద్ధి",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి"
      ],
      correctAnswerIndex: 1,
      explanation:"పదకొండవ పంచవర్ష ప్రణాళిక వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధిని నొక్కి చెప్పింది.",
    ),



    Question(
      questionText: "పన్నెండవ పంచవర్ష ప్రణాళిక యొక్క దృష్టి ఏమిటి?",
      options:[
        "వేగవంతమైన, మరింత సమగ్ర వృద్ధి మరియు స్థిరమైన వృద్ధి",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి",
        "తలసరి ఆదాయాన్ని రెట్టింపు చేయండి మరియు పేదరిక నిష్పత్తిని తగ్గించండి",
        "వేగవంతమైన పారిశ్రామికీకరణ మరియు దిగుమతి ప్రత్యామ్నాయం"
      ],
      correctAnswerIndex: 0,
      explanation:"పన్నెండవ పంచవర్ష ప్రణాళిక వేగవంతమైన, మరింత సమగ్ర వృద్ధి మరియు స్థిరమైన వృద్ధిపై దృష్టి సారించింది.",
    ),
    Question(
      questionText: "2015లో ప్లానింగ్ కమిషన్ స్థానంలో ఏ సంస్థ వచ్చింది మరియు దాని ద్వంద్వ లక్ష్యాలు ఏమిటి?",
      options:[
        "నేషనల్ డెవలప్‌మెంట్ కౌన్సిల్ (NDC); ఆర్థిక అభివృద్ధి మరియు ప్రాంతీయ సమతుల్యత",
        "నీతి ఆయోగ్; స్థిరమైన అభివృద్ధి లక్ష్యాలను మరియు సహకార సమాఖ్యను సాధించడం",
        "ఎకనామిక్ ప్రోగ్రామ్ కమిటీ (EPC); మానవ వనరులు డిఅభివృద్ధి మరియు ప్రైవేటీకరణ",
        "ప్రజల ప్రణాళిక; వ్యవసాయం మరియు జాతీయీకరణ"
      ],
      correctAnswerIndex: 1,
      explanation:"2015లో ప్రణాళికా సంఘం స్థానంలో నీతి ఆయోగ్, స్థిరమైన అభివృద్ధి లక్ష్యాలను సాధించడం మరియు సహకార సమాఖ్యవాదాన్ని పెంపొందించడం అనే ద్వంద్వ లక్ష్యాలతో.",
    ),
    Question(
      questionText: "నీతి ఆయోగ్ లక్ష్యాలలో ఏ కార్యక్రమాలు చేర్చబడ్డాయి?",
      options:[
        "యాక్షన్ ప్లాన్- 3 సంవత్సరాలు",
        "వ్యూహ ప్రణాళిక- 7 సంవత్సరాలు",
        "విజన్ ప్లాన్- 15 సంవత్సరాలు",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"NITI ఆయోగ్ యొక్క కార్యక్రమాలలో కార్యాచరణ ప్రణాళిక- 3 సంవత్సరాలు, వ్యూహ ప్రణాళిక- 7 సంవత్సరాలు మరియు విజన్ ప్లాన్- 15 సంవత్సరాలు.",
    ),
    Question(
      questionText: "హారోడ్ డోమర్ మోడల్ అంటే ఏమిటి మరియు దాని ఆధారంగా ఏ పంచవర్ష ప్రణాళిక రూపొందించబడింది?",
      options:[
        "వృద్ధి రేటు పెట్టుబడి రేటు మరియు మూలధన ఉత్పాదకతపై ఆధారపడి ఉంటుంది; మొదటి పంచవర్ష ప్రణాళిక",
        "వేగవంతమైన పారిశ్రామికీకరణ; రెండవ పంచవర్ష ప్రణాళిక",
        "ఆహారంలో స్వయం సమృద్ధి; నాల్గవ పంచవర్ష ప్రణాళిక",
        "జీవన నాణ్యత మరియు ప్రాంతీయ సమతుల్యత; తొమ్మిదవ పంచవర్ష ప్రణాళిక"
      ],
      correctAnswerIndex: 0,
      explanation:"హెరోడ్ డోమర్ మోడల్ వృద్ధి రేటు పెట్టుబడి రేటు మరియు మూలధన ఉత్పాదకతపై ఆధారపడి ఉంటుందని పేర్కొంది. మొదటి పంచవర్ష ప్రణాళిక ఈ నమూనాపై ఆధారపడింది.",
    ),
    Question(
      questionText: "మహాలనోబిస్ ప్రణాళిక అంటే ఏమిటి మరియు ఏ పంచవర్ష ప్రణాళికను ఈ పేరుతో పిలుస్తారు?",
      options:[
        "వ్యవసాయం నుండి పరిశ్రమలకు మారాలని యోచిస్తున్న న్యాయవాదులు; రెండవ పంచవర్ష ప్రణాళిక",
        "ఆహారంలో స్వయం సమృద్ధిని నొక్కి చెబుతుంది; నాల్గవ పంచవర్ష ప్రణాళిక",
        "మానవ వనరుల అభివృద్ధిపై ఒత్తిడి; ఎనిమిదవ పంచవర్ష ప్రణాళిక",
        "వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధిపై దృష్టి పెట్టండి; పదకొండవ పంచవర్ష ప్రణాళిక"
      ],
      correctAnswerIndex: 0,
      explanation:"మహాలనోబిస్ ప్రణాళిక వ్యవసాయం నుండి పరిశ్రమలకు మారాలని ప్రణాళికను సమర్ధిస్తుంది. దీనిని రెండవ పంచవర్ష ప్రణాళిక అని కూడా అంటారు.",
    ),
    Question(
      questionText: "ఉదారీకరణ, ప్రైవేటీకరణ మరియు ప్రపంచీకరణ (LPG)తో కొత్త ఆర్థిక విధానాన్ని ప్రారంభించిన ప్రణాళిక ఏది?",
      options:[
        "ఏడవ పంచవర్ష ప్రణాళిక",
        "ఎనిమిదవ పంచవర్ష ప్రణాళిక",
        "తొమ్మిదవ పంచవర్ష ప్రణాళిక",
        "పదో పంచవర్ష ప్రణాళిక"
      ],
      correctAnswerIndex: 1,
      explanation:"ఉదారీకరణ, ప్రైవేటీకరణ మరియు ప్రపంచీకరణ (LPG)తో కూడిన కొత్త ఆర్థిక విధానం ఎనిమిదవ పంచవర్ష ప్రణాళికలో ప్రారంభించబడింది.",
    ),
    Question(
      questionText: "ఏడవ పంచవర్ష ప్రణాళికలో 1990-1991 మరియు 1991-1992లో రెండు వార్షిక ప్రణాళికలు ఎందుకు ఉన్నాయి?",
      options:[
        "ఉత్పాదకత మరియు పనిపై దృష్టి పెట్టండి",
        "ప్రభుత్వ రంగం కంటే ప్రైవేట్ రంగానికి ప్రాధాన్యత",
        "రాజకీయ పరిస్థితుల్లో అస్థిరత",
        "ప్రపంచ ఆర్థిక మాంద్యం"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్రంలో అస్థిర రాజకీయ పరిస్థితుల కారణంగా, ఏడవ పంచవర్ష ప్రణాళికలో 1990-1991 మరియు 1991-1992 సంవత్సరానికి రెండు వార్షిక ప్రణాళికలు ప్రారంభించబడ్డాయి.",
    ),
    Question(
      questionText: "పదకొండవ పంచవర్ష ప్రణాళికలో నొక్కిచెప్పబడిన ముఖ్య పరిమాణాలు ఏమిటి?",
      options:[
        "జీవన నాణ్యత మరియు ప్రాంతీయ సమతుల్యత",
        "వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధి",
        "మానవ వనరుల అభివృద్ధి",
        "న్యాయం మరియు ఈక్విటీతో వృద్ధి"
      ],
      correctAnswerIndex: 1,
      explanation:"పదకొండవ పంచవర్ష ప్రణాళిక వేగవంతమైన వృద్ధి మరియు మరింత సమగ్ర వృద్ధిని నొక్కి చెప్పింది.",
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
    home: plans_indian_economy_te(),
  ));
}

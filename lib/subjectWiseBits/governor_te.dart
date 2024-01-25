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

class governor_te extends StatefulWidget {
  final String? userIdentifier;

  governor_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<governor_te> createState() => _governor_teState();
}

class _governor_teState extends State<governor_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//30.గవర్నర్

    Question(
      questionText : " సర్కారియా కమిషన్ ప్రకారం , ఏ ఒక్క పార్టీ లేదా గ్రూపు సంపూర్ణ మెజారిటీని సాధించనప్పుడు ముఖ్యమంత్రి ఎంపిక మరియు నియామకంలో ఏ సమస్య తలెత్తుతుంది?",
      options: [
        "శాసనసభ రద్దు సమస్య",
        "గవర్నర్ ద్వారా అన్యాయం లేదా పక్షపాతం సమస్య",
        "తలలను లెక్కించడం ద్వారా భౌతిక ధృవీకరణ సమస్య",
        "ముఖ్యమంత్రిని బర్తరఫ్ చేసే అంశం"
      ],
      correctAnswerIndex : 1,
      explanation: "ముఖ్యమంత్రి ఎంపిక మరియు నియామకంలో ఏ ఒక్క పార్టీ లేదా గ్రూపు సంపూర్ణ మెజారిటీ రానప్పుడు, గవర్నర్ అన్యాయం లేదా పక్షపాతం అనే సమస్య తలెత్తవచ్చు.",
    ),

    Question(
      questionText : "ఆర్టికల్ 356 ప్రకారం గవర్నర్లు రాష్ట్రపతి పాలనను సిఫార్సు చేసిన రాజకీయ అస్థిరత పరిస్థితుల్లో ఏమి విమర్శించబడింది?",
      options: [
      "ముఖ్యమంత్రి సలహాను అంగీకరిస్తున్నాను",
      "శాసనసభ రద్దు",
      "పక్షపాత ధోరణిలో ప్రవర్తించడం",
      "పోటీ చేసే పార్టీలకు సరైన అవకాశం ఇవ్వడం లేదు"
    ],
    correctAnswerIndex : 3,
      explanation : "రాజకీయ అస్థిరత పరిస్థితులలో, రాష్ట్రపతి పాలనను సిఫార్సు చేస్తున్న గవర్నర్లు పోటీ పడే పార్టీలకు సరైన అవకాశం ఇవ్వకుండా మరియు పక్షపాత ధోరణిలో ప్రవర్తిస్తున్నారని విమర్శించారు.",
    ),

    Question(
      questionText : "రాష్ట్రపతి పరిశీలన కోసం గవర్నర్ల బిల్లుల రిజర్వేషన్‌కు సంబంధించి ఏ వివాదం తలెత్తింది?",
      options: [
        "తలలను లెక్కించడం ద్వారా భౌతిక ధృవీకరణ",
        "ముఖ్యమంత్రుల తొలగింపు",
        "శాసన మండలికి సభ్యుల నామినేషన్",
        "విశ్వవిద్యాలయ విషయాలలో విచక్షణ యొక్క వ్యాయామం"
      ],
      correctAnswerIndex : 6,
      explanation : "రాష్ట్రపతి పరిశీలన కోసం గవర్నర్ల బిల్లుల రిజర్వేషన్లకు సంబంధించి వివాదం తలెత్తింది.",
    ),

    Question(
      questionText : "శాసన మండలికి సభ్యులను నామినేట్ చేయడంలో గవర్నర్లు విచక్షణాధికారాన్ని ఉపయోగించడం గురించి ఏమి విమర్శించబడింది?",
      options: [
        "శాసనసభ రద్దుకు నిరాకరణ",
        "తలలను లెక్కించడం ద్వారా భౌతిక ధృవీకరణ",
        "ముఖ్యమంత్రి సలహాను అంగీకరిస్తున్నాను",
        "తమకు ఏదీ లేనప్పుడు విచక్షణను ఉపయోగించడం"
      ],
      correctAnswerIndex : 7,
      explanation : "శాసన మండలికి సభ్యులను నామినేట్ చేయడంలో గవర్నర్లు విచక్షణాధికారాన్ని ఉపయోగించడం విమర్శించబడింది.",
    ),

    Question(
      questionText : "యూనివర్శిటీ కౌన్సిల్ లేదా యూనివర్శిటీ ఫంక్షనరీ సభ్యులను నామినేట్ చేయడంలో గవర్నర్లు ఏ హోదాలో విచక్షణను ఉపయోగించారు?",
      options: [
        "అధికార పార్టీ ప్రతినిధిగా",
        "ప్రతిపక్ష ప్రతినిధిగా",
        "యూనివర్శిటీ ఛాన్సలర్‌గా",
        "రాష్ట్ర ముఖ్యమంత్రిగా"
      ],
      correctAnswerIndex : 8,
      explanation : "యూనివర్శిటీ కౌన్సిల్ లేదా యూనివర్సిటీ ఫంక్షనరీ సభ్యులను యూనివర్సిటీ ఛాన్సలర్‌గా నామినేట్ చేయడంలో గవర్నర్‌లు విచక్షణాధికారాన్ని వినియోగించుకున్నారు.",
    ),
    Question(
      questionText : "పార్లమెంటరీ ప్రభుత్వంలో గవర్నర్ యొక్క రాజ్యాంగ స్థానం ఏమిటి?",
      options: [
        "గవర్నర్ రాష్ట్రానికి నిజమైన కార్యనిర్వాహకుడు. ",
        "గవర్నర్ మంత్రి మండలి నుండి స్వతంత్రంగా కార్యనిర్వాహక అధికారాన్ని నిర్వహిస్తారు. ",
        "గవర్నర్ నామమాత్రపు కార్యనిర్వాహకుడు, మరియు నిజమైన కార్యనిర్వాహకుడు మంత్రుల మండలి. ",
        "మంత్రి మండలి నిర్ణయాలపై గవర్నర్‌కు వీటో అధికారం ఉంది."
      ],
      correctAnswerIndex : 2,
      explanation : "పార్లమెంటరీ ప్రభుత్వ రూపంలో, గవర్నర్ నామమాత్రపు కార్యనిర్వాహకుడు, మరియు నిజమైన కార్యనిర్వాహకుడు మంత్రుల మండలి.",
    ),

    Question(
      questionText : "గవర్నర్ యొక్క రాజ్యాంగ స్థానానికి రాష్ట్రపతి స్థానం నుండి తేడా ఏమిటి?",
      options: [
        "గవర్నర్ మంత్రి సలహా లేకుండా స్వతంత్రంగా వ్యవహరిస్తారు. ",
        "రాష్ట్రపతి తన విచక్షణతో వ్యవహరించవచ్చు, కానీ గవర్నర్ చేయకపోవచ్చు. ",
        "గవర్నర్ విచక్షణ కట్టుబడి ఉంటుంది, అయితే రాష్ట్రపతి మంత్రుల సలహాను పాటించాలి. ",
        "రాష్ట్రపతి తన విచక్షణతో వ్యవహరించవచ్చు, కానీ గవర్నర్ చేయకపోవచ్చు."
      ],
      correctAnswerIndex : 1,
      explanation : "గవర్నర్ కొన్నిసార్లు తన విచక్షణతో వ్యవహరించే అవకాశాన్ని రాజ్యాంగం ఊహించినప్పటికీ, రాష్ట్రపతికి అలాంటి అవకాశం ఏదీ ఊహించబడలేదు.",
    ),

    Question(
      questionText : "ఏ విషయాలలో గవర్నర్‌కు రాజ్యాంగ విచక్షణాధికారం ఉంది?",
      options: [
        "ముఖ్యమంత్రి నియామకం మరియు మంత్రి మండలి తొలగింపు. ",
        "రాష్ట్ర శాసనసభ రద్దు మరియు ముఖ్యమంత్రి నియామకం. ",
        "రాష్ట్రపతి పరిశీలన మరియు రాష్ట్రపతి పాలనను సిఫార్సు చేయడం కోసం బిల్లును రిజర్వేషన్ చేయడం.",
        "ముఖ్యమంత్రి నియామకం మరియు రాష్ట్ర శాసనసభ రద్దు."
      ],
      correctAnswerIndex : 2,
      explanation : "రాష్ట్రపతి పరిశీలన కోసం బిల్లు రిజర్వేషన్ మరియు రాష్ట్రపతి పాలనకు సిఫార్సు చేయడం వంటి విషయాలలో గవర్నర్‌కు రాజ్యాంగ విచక్షణ ఉంటుంది.",
    ),

    Question(
      questionText : "గవర్నర్ యొక్క పరిస్థితుల విచక్షణకు ఉదాహరణ ఏమిటి?",
      options: [
        "ఒక పార్టీకి స్పష్టమైన మెజారిటీ ఉన్నప్పుడు ముఖ్యమంత్రిని నియమించడం. ",
        "మంత్రి మండలికి మెజారిటీ మద్దతు ఉన్నప్పుడు రాష్ట్ర శాసనసభను రద్దు చేయడం. ",
        "రాష్ట్ర శాసనసభ విశ్వాసాన్ని నిరూపించలేనప్పుడు మంత్రిమండలిని రద్దు చేయడం. ",
        "కొన్ని రాష్ట్రాలలో ప్రత్యేక అభివృద్ధి బోర్డుల ఏర్పాటు."
      ],
      correctAnswerIndex : 3,
      explanation : "రాష్ట్ర శాసనసభ విశ్వాసాన్ని రుజువు చేయలేనప్పుడు మంత్రి మండలిని తొలగించడం గవర్నర్ యొక్క పరిస్థితుల విచక్షణకు ఉదాహరణ.",
    ),

    Question(
      questionText : "రాష్ట్రపతి జారీ చేసిన ఆదేశాల ప్రకారం గవర్నర్‌కు ఏ ప్రత్యేక బాధ్యతలు ఉంటాయి?",
      options: [
        "కొన్ని రాష్ట్రాలలో ప్రత్యేక అభివృద్ధి బోర్డుల ఏర్పాటు. ",
        "అసోంలోని గిరిజన ప్రాంతాల పరిపాలన. ",
        "సిక్కింలో సామాజిక మరియు ఆర్థిక పురోగతికి భరోసా. ",
        "మహారాష్ట్రలో ముఖ్యమంత్రి అపాయింట్‌మెంట్."
      ],
      correctAnswerIndex : 1,
      explanation : "అసోంలోని గిరిజన ప్రాంతాల పరిపాలన వంటి రాష్ట్రపతి జారీ చేసిన ఆదేశాల ప్రకారం గవర్నర్‌కు ప్రత్యేక బాధ్యతలు ఉంటాయి.",
    ),
    Question(
      questionText : "రాష్ట్రపతి/ఆమె ఆమోదం కోసం ద్రవ్య బిల్లును సమర్పించినప్పుడు అతనికి అందుబాటులో ఉన్న రెండు ప్రత్యామ్నాయాలు ఏమిటి?",
      options: [
        "పునరాలోచన కోసం బిల్లును తిరిగి ఇవ్వండి లేదా సమ్మతిని నిలిపివేయండి. ",
        "సమ్మతిని నిలిపివేయండి లేదా బిల్లును ఆమోదం కోసం ప్రధానమంత్రికి పంపండి. ",
        "పునరాలోచన కోసం బిల్లును తిరిగి ఇవ్వండి లేదా సమ్మతి ఇవ్వండి. ",
        "బిల్లుకు ఆమోదాన్ని నిలిపివేయండి లేదా సవరణలను అభ్యర్థించండి."
      ],
      correctAnswerIndex : 0,
      explanation : "రాష్ట్రపతి పునఃపరిశీలన కోసం ద్రవ్య బిల్లును తిరిగి ఇవ్వలేరు; ప్రత్యామ్నాయాలు సమ్మతి ఇవ్వడం లేదా సమ్మతిని నిలిపివేయడం.",
    ),

    Question(
      questionText : "గవర్నర్ పరిశీలన కోసం ద్రవ్య బిల్లును రిజర్వ్ చేసినప్పుడు రాష్ట్రపతి పాత్ర ఏమిటి?",
      options: [
      "పార్లమెంట్ పునర్విచారణ కోసం రాష్ట్రపతి బిల్లును తిరిగి ఇవ్వవచ్చు. ",
      "రాష్ట్రపతి బిల్లుకు సవరణలను అభ్యర్థించవచ్చు. ",
      "అధ్యక్షుడు సమ్మతిని మాత్రమే ఇవ్వగలరు లేదా అనుమతిని నిలిపివేయగలరు. ",
      "ఆమోదం తెలిపే ముందు బిల్లును సవరించే అధికారం రాష్ట్రపతికి ఉంది."
    ],
    correctAnswerIndex : 2,
      explanation : "గవర్నర్ ద్వారా ద్రవ్య బిల్లు రిజర్వ్ చేయబడినప్పుడు మాత్రమే రాష్ట్రపతి ఆమోదం లేదా ఆమోదాన్ని నిలిపివేయగలరు.",
    ),

    Question(
      questionText : "గవర్నర్‌కు మనీ బిల్లు సమర్పించినప్పుడు అతనికి ఎన్ని ప్రత్యామ్నాయాలు ఉన్నాయి?",
      options: [
        "రెండు",
        "మూడు",
        "నాలుగు",
        "ఒకటి"
      ],
      correctAnswerIndex : 1,
      explanation : "మనీ బిల్లును సమర్పించినప్పుడు గవర్నర్‌కు మూడు ప్రత్యామ్నాయాలు ఉన్నాయి: సమ్మతి, ఆమోదాన్ని నిలిపివేయడం లేదా రాష్ట్రపతి పరిశీలనకు రిజర్వ్ చేయడం.",
    ),

    Question(
      questionText : "ఆర్డినెన్స్ రూపొందించే అధికారాలలో, రాష్ట్రపతి మరియు గవర్నర్ మధ్య సారూప్యత ఏమిటి?",
      options: [
        "వారిద్దరూ ఎలాంటి పరిమితులు లేకుండా ఆర్డినెన్స్‌లు జారీ చేయవచ్చు. ",
        "శాసనసభ సమావేశాలు లేనప్పుడు మాత్రమే వారు ఆర్డినెన్స్‌లు జారీ చేయగలరు. ",
        "వారు ఏదైనా విషయంపై ఆర్డినెన్స్‌లు జారీ చేయవచ్చు. ",
        "తక్షణ చర్య అవసరం లేకుండా వారు ఎప్పుడైనా ఆర్డినెన్స్‌లను జారీ చేయవచ్చు."
      ],
      correctAnswerIndex : 1,
      explanation : "శాసనసభ సమావేశాలు జరగనప్పుడు రాష్ట్రపతి మరియు గవర్నర్ ఇద్దరూ ఆర్డినెన్స్‌లు జారీ చేయవచ్చు.",
    ),

    Question(
      questionText : "గవర్నర్ జారీ చేసిన ఆర్డినెన్స్ కాలవ్యవధిని రాష్ట్రపతి జారీ చేసిన దానితో పోల్చడం ఎలా?",
      options: [
        "రెండూ తిరిగి అమర్చిన ఆరు వారాల తర్వాత పనిచేయడం మానేస్తాయి. ",
        "గవర్నర్ ఆర్డినెన్స్ ఆరు వారాల కంటే ఎక్కువ కాలం ఉంటుంది. ",
        "రాష్ట్రపతి ఆర్డినెన్స్ ఆరు వారాల తర్వాత కూడా కొనసాగవచ్చు. ",
        "రెండూ ఎటువంటి పరిమితులు లేకుండా ఆరు వారాలకు మించి పొడిగించవచ్చు."
      ],
      correctAnswerIndex : 0,
      explanation : "రాష్ట్రపతి మరియు గవర్నర్ ఆర్డినెన్స్‌లు కొన్ని షరతులతో తిరిగి సమావేశమైన ఆరు వారాల తర్వాత పనిచేయవు.",
    ),
    Question(
      questionText : "గవర్నర్ ఆర్థిక అధికారాలలో ఒకటి ఏమిటి?",
      options: [
        "రాష్ట్ర హైకోర్టుకు న్యాయమూర్తుల నియామకం. ",
        "జిల్లా న్యాయమూర్తుల నియామకాలు, పోస్టింగ్‌లు మరియు పదోన్నతులు కల్పించడం. ",
        "రాష్ట్ర శాసనసభ ముందు వార్షిక ఆర్థిక ప్రకటన (రాష్ట్ర బడ్జెట్) వేయడం. ",
        "రాష్ట్ర హైకోర్టు న్యాయమూర్తుల నియామకం సమయంలో రాష్ట్రపతితో సంప్రదింపులు."
      ],
      correctAnswerIndex : 2,
      explanation : "గవర్నర్ యొక్క ఆర్థిక అధికారాలలో ఒకటి వార్షిక ఆర్థిక ప్రకటన (రాష్ట్ర బడ్జెట్) రాష్ట్ర శాసనసభ ముందు ఉంచడం.",
    ),

    Question(
      questionText : "గవర్నర్‌కు క్షమాపణలు, ఉపశమనాలు మరియు శిక్షల ఉపశమనాలను మంజూరు చేయడానికి ఏ అధికారం అనుమతిస్తుంది?",
      options: [
        "ఆర్థిక శక్తి",
        "ఆర్డినెన్స్ మేకింగ్ పవర్",
        "న్యాయ అధికారం",
        "వీటో పవర్"
      ],
      correctAnswerIndex : 2,
      explanation : "గవర్నర్ యొక్క న్యాయపరమైన అధికారం అతనికి/ఆమెకు క్షమాపణలు, ఉపశమనాలు మరియు శిక్షల ఉపశమనాలను మంజూరు చేయడానికి అనుమతిస్తుంది.",
    ),

    Question(
      questionText : "గవర్నర్ పునర్విచారణ కోసం రాష్ట్ర బిల్లును తిరిగి పంపినప్పుడు రాష్ట్రపతికి ప్రత్యామ్నాయం ఏమిటి?",
      options: [
        "బిల్లుకు సమ్మతి ఇవ్వండి. ",
        "బిల్లుకు సమ్మతిని నిలిపివేయండి. ",
        "మళ్లీ పునఃపరిశీలన కోసం బిల్లును తిరిగి ఇవ్వండి. ",
        "పునరాలోచన లేకుండా నేరుగా బిల్లును అమలు చేయండి."
      ],
      correctAnswerIndex : 2,
      explanation : "రాష్ట్ర బిల్లు పునఃపరిశీలన కోసం తిరిగి వచ్చినప్పుడు, రాష్ట్రపతి ఆమోదం ఇవ్వవచ్చు, ఆమోదాన్ని నిలిపివేయవచ్చు లేదా మళ్లీ పునఃపరిశీలన కోసం బిల్లును తిరిగి ఇవ్వవచ్చు.",
    ),

    Question(
      questionText : "రాష్ట్రపతి పునర్విచారణ కోసం బిల్లును తిరిగి పంపినప్పుడు గవర్నర్ ఏ పాత్ర పోషిస్తారు?",
      options: [
        "గవర్నర్ ఆరు నెలల్లోగా బిల్లును పునఃపరిశీలించాలి. ",
        "బిల్లు అమలులో గవర్నర్ పాత్ర లేదు. ",
        "గవర్నర్ నేరుగా బిల్లును వీటో చేయవచ్చు. ",
        "బిల్లుకు గవర్నర్ తుది అధికారి అవుతారు."
      ],
      correctAnswerIndex : 1,
      explanation : "ఒక బిల్లును రాష్ట్రపతి పునర్విచారణ కోసం తిరిగి పంపినప్పుడు, బిల్లును అమలు చేయడంలో గవర్నర్‌కు తదుపరి పాత్ర ఉండదు.",
    ),

    Question(
      questionText : " పంచాయితీలు మరియు మున్సిపాలిటీల ఆర్థిక స్థితికి సంబంధించి ప్రతి ఐదు సంవత్సరాలకు గవర్నర్ ఏమి చేస్తారు ?",
      options: [
        "ఆర్థిక మంత్రిని నియమించండి. ",
        "ఆర్థిక తనిఖీని నిర్వహించండి. ",
        "ఫైనాన్స్ కమిషన్‌ను ఏర్పాటు చేయండి. ",
        "రాష్ట్ర బడ్జెట్‌ను సిద్ధం చేయండి."
      ],
      correctAnswerIndex : 2,
      explanation : "ప్రతి ఐదు సంవత్సరాలకు, పంచాయతీలు మరియు మున్సిపాలిటీల ఆర్థిక స్థితిగతులను సమీక్షించడానికి గవర్నర్ ఫైనాన్స్ కమిషన్‌ను ఏర్పాటు చేస్తారు .",
    ),
    Question(
      questionText : "రాష్ట్ర శాసనసభ రద్దులో గవర్నర్ పాత్ర ఏమిటి?",
      options: [
        "అతను/ఆమె రాష్ట్ర శాసనసభను పిలవవచ్చు లేదా ప్రోరోగ్ చేయవచ్చు. ",
        "అతను/ఆమె అసెంబ్లీ కార్యకలాపాలకు అధ్యక్షత వహించడానికి ఒక సభ్యుడిని నియమించవచ్చు. ",
        "అతను/ఆమె రాష్ట్ర శాసనసభను రద్దు చేయవచ్చు. ",
        "అతను/ఆమె ప్రతి సంవత్సరం ప్రారంభంలో రాష్ట్ర శాసనసభను ఉద్దేశించి ప్రసంగించవచ్చు."
      ],
      correctAnswerIndex : 2,
      explanation : "రాష్ట్ర శాసనసభను రద్దు చేసే అధికారం గవర్నర్‌కు ఉంది.",
    ),

    Question(
      questionText : "స్పీకర్ మరియు డిప్యూటీ స్పీకర్ స్థానాలు రెండూ ఖాళీగా ఉన్నప్పుడు ప్రొసీడింగ్స్‌కి అధ్యక్షత వహించడానికి గవర్నర్ ఎవరిని నియమించగలరు?",
      options: [
        "రాష్ట్ర శాసన మండలిలో ఎవరైనా సభ్యుడు. ",
        "రాష్ట్ర శాసన సభ సభ్యులు ఎవరైనా. ",
        "రాష్ట్ర కార్యవర్గ మండలిలో ఎవరైనా సభ్యుడు. ",
        "ఆంగ్లో-ఇండియన్ కమ్యూనిటీ నుండి ఎవరైనా సభ్యుడు."
      ],
      correctAnswerIndex : 1,
      explanation : "స్పీకర్ మరియు డిప్యూటీ స్పీకర్ స్థానాలు రెండూ ఖాళీగా ఉన్నప్పుడు గవర్నర్ రాష్ట్ర శాసనసభలో ఎవరినైనా అధ్యక్షత వహించడానికి నియమించవచ్చు.",
    ),

    Question(
      questionText : "రాష్ట్ర శాసనసభ ఆమోదించిన బిల్లులకు సంబంధించి గవర్నర్‌కు ఏ శాసనాధికారం ఉంది?",
      options: [
        "బిల్లుకు సమ్మతి మాత్రమే ఇవ్వగలరు. ",
        "బిల్లుకు సమ్మతిని నిలిపివేయవచ్చు. ",
        "పునరాలోచన కోసం బిల్లును తిరిగి ఇవ్వవచ్చు. ",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex : 3,
      explanation : "గవర్నర్ ఆమోదం ఇవ్వవచ్చు, ఆమోదాన్ని నిలిపివేయవచ్చు లేదా పునర్విచారణ కోసం బిల్లును తిరిగి పంపవచ్చు. మళ్లీ ఆమోదించినట్లయితే, గవర్నర్ తప్పనిసరిగా సమ్మతి ఇవ్వాలి లేదా కొన్ని సందర్భాల్లో రాష్ట్రపతి పరిశీలనకు రిజర్వ్ చేయాలి. ",
    ),

    Question(
      questionText : "ఏ పరిస్థితులలో గవర్నర్ బిల్లును రాష్ట్రపతి పరిశీలనకు రిజర్వ్ చేయవచ్చు?",
      options: [
        "బిల్ అల్ట్రా-వైర్స్ అయితే.",
        "బిల్లు రాష్ట్ర విధాన నిర్దేశక సూత్రాలకు విరుద్ధంగా ఉంటే. ",
        "బిల్లు దేశ ప్రయోజనాలకు వ్యతిరేకంగా ఉంటే. ",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex : 3,
      explanation: "అల్ట్రా-వైరస్‌లు, ఆదేశిక సూత్రాలకు వ్యతిరేకంగా, జాతీయ ప్రయోజనాలకు వ్యతిరేకంగా లేదా తప్పనిసరి ఆస్తిని సంపాదించడం వంటి వివిధ పరిస్థితులలో బిల్లును గవర్నర్ రాష్ట్రపతికి రిజర్వ్ చేయవచ్చు.",
    ),

    Question(
      questionText : "ఆర్డినెన్సులను ప్రకటించడానికి గవర్నర్ అధికారం యొక్క ప్రాముఖ్యత ఏమిటి?",
      options: [
        "ఇది రాష్ట్ర శాసన మండలి సభ్యులను నియమించడానికి గవర్నర్‌ను అనుమతిస్తుంది. ",
        "ఇది రాష్ట్ర శాసనసభను రద్దు చేయడానికి గవర్నర్‌ను అనుమతిస్తుంది. ",
        "శాసనసభ సెషన్‌లో లేనప్పుడు చట్టాలు చేసే అధికారం గవర్నర్‌కు ఇస్తుంది. ",
        "ఇది ప్రత్యేక జ్ఞానం లేదా అనుభవం ఉన్న సభ్యులను నామినేట్ చేయడానికి గవర్నర్‌ను అనుమతిస్తుంది."
      ],
      correctAnswerIndex : 2,
      explanation : "రాష్ట్ర శాసనసభ సెషన్‌లో లేనప్పుడు గవర్నర్ ఆర్డినెన్స్‌ల ద్వారా చట్టాలు చేయవచ్చు, అయితే ఈ ఆర్డినెన్స్‌లను ఆరు వారాల్లోగా శాసనసభ ఆమోదించాలి.",
    ),
    Question(
      questionText : "గవర్నర్‌కు ఏ అధికారాలు ఉన్నాయి, అవి భారత రాష్ట్రపతికి సమానంగా ఉంటాయి?",
      options: [
        "దౌత్య అధికారాలు. ",
        "సైనిక అధికారాలు. ",
        "అత్యవసర అధికారాలు. ",
        "కార్యనిర్వాహక, శాసన, ఆర్థిక మరియు న్యాయ అధికారాలు."
      ],
      correctAnswerIndex : 3,
      explanation: "గవర్నర్‌కు భారత రాష్ట్రపతికి సమానమైన కార్యనిర్వాహక, శాసన, ఆర్థిక మరియు న్యాయపరమైన అధికారాలు ఉంటాయి కానీ దౌత్య, సైనిక లేదా అత్యవసర అధికారాలు లేవు.",
    ),

    Question(
      questionText : "ముఖ్యమంత్రి మరియు ఇతర మంత్రుల నియామకంలో గవర్నర్ పాత్ర ఏమిటి?",
      options: [
        "అతను/ఆమె స్థానాలకు అభ్యర్థులను సిఫార్సు చేస్తారు. ",
        "అతను/ఆమె అతని/ఆమె ఆనందం సమయంలో వారిని నియమిస్తాడు. ",
        "అతను/ఆమె రాష్ట్రపతి చేసిన నియామకాలను మాత్రమే ఆమోదిస్తారు. ",
        "అపాయింట్‌మెంట్ ప్రక్రియలో అతనికి/ఆమెకు ఎలాంటి పాత్ర లేదు."
      ],
      correctAnswerIndex : 1,
      explanation : "గవర్నర్ ముఖ్యమంత్రిని మరియు ఇతర మంత్రులను నియమిస్తాడు మరియు వారు అతని/ఆమె ఇష్ట సమయంలో పదవిలో ఉంటారు.",
    ),

    Question(
      questionText : "ఒక రాష్ట్ర అడ్వకేట్ జనరల్‌కు సంబంధించి గవర్నర్‌కు ఎలాంటి అధికారాలు ఉన్నాయి?",
      options: [
        "అతను/ఆమె అడ్వకేట్ జనరల్ యొక్క వేతనాన్ని నిర్ణయిస్తారు. ",
        "అతను/ఆమె అడ్వకేట్ జనరల్‌ని నియమిస్తారు. ",
        "గవర్నర్ ఇష్ట సమయంలో అడ్వకేట్ జనరల్ పదవిలో ఉంటారు. ",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex : 3,
      explanation : "గవర్నర్ అడ్వకేట్ జనరల్‌ను నియమిస్తాడు, వారి వేతనాన్ని నిర్ణయిస్తాడు మరియు గవర్నర్ ఇష్ట సమయంలో అడ్వకేట్ జనరల్ పదవిలో ఉంటాడు.",
    ),

    Question(
      questionText : "రాష్ట్ర పబ్లిక్ సర్వీస్ కమిషన్ చైర్మన్ మరియు సభ్యులను తొలగించే అధికారం ఎవరికి ఉంది?",
      options: [
        "గవర్నర్. ",
        "రాష్ట్రపతి. ",
        "ముఖ్యమంత్రి. ",
        "రాష్ట్ర శాసనసభ."
      ],
      correctAnswerIndex : 1,
      explanation : "రాష్ట్ర పబ్లిక్ సర్వీస్ కమిషన్ ఛైర్మన్ మరియు సభ్యులను రాష్ట్రపతి మాత్రమే తొలగించగలరు, గవర్నర్ చేత కాదు.",
    ),

    Question(
      questionText : "రాష్ట్రంలో రాష్ట్రపతి పాలన ఉన్న సమయంలో గవర్నర్ ఏ హోదాలో వ్యవహరిస్తారు?",
      options: [
        "రాష్ట్ర ముఖ్య కార్యనిర్వహణాధికారిగా. ",
        "రాష్ట్రపతి ప్రతినిధిగా. ",
        "రాష్ట్ర శాసనసభకు అధిపతిగా. ",
        "విశ్వవిద్యాలయాల ఛాన్సలర్‌గా."
      ],
      correctAnswerIndex : 1,
      explanation: "రాష్ట్రంలో రాష్ట్రపతి పాలన ఉన్న సమయంలో, గవర్నర్ విస్తృతమైన కార్యనిర్వాహక అధికారాలను అనుభవిస్తూ రాష్ట్రపతికి ఏజెంట్‌గా వ్యవహరిస్తారు.",
    ),
    Question(
      questionText : "రాష్ట్ర కార్యవర్గంలో గవర్నర్ యొక్క రాజ్యాంగ పాత్ర ఏమిటి?",
      options: [
        "ప్రభుత్వానికి అధిపతిగా వ్యవహరించడానికి. ",
        "దౌత్యపరమైన అధికారాలను వినియోగించుకోవడానికి. ",
        "ప్రెసిడెంట్ వంటి అత్యవసర అధికారాలను కలిగి ఉండటానికి. ",
        "ముఖ్యమంత్రి మరియు అడ్వకేట్ జనరల్‌ను నియమించడానికి."
      ],
      correctAnswerIndex : 3,
      explanation: "ముఖ్యమంత్రి మరియు అడ్వకేట్ జనరల్‌ను నియమించడంతో సహా రాష్ట్ర కార్యవర్గంలో గవర్నర్ రాజ్యాంగపరమైన పాత్రను పోషిస్తారు, కానీ రాష్ట్రపతి వంటి దౌత్య మరియు అత్యవసర అధికారాలు లేవు.",
    ),

    Question(
      questionText : "గవర్నర్ ఎలా నియమిస్తారు మరియు వారిని ఎవరు నియమిస్తారు?",
      options: [
        "ప్రజలచే నేరుగా ఎన్నుకోబడినది. ",
        "ప్రత్యేకంగా ఏర్పాటు చేయబడిన ఎలక్టోరల్ కాలేజీ ద్వారా పరోక్షంగా ఎన్నికయ్యారు. ",
        "ప్రధానమంత్రిచే నియమించబడినది. ",
        "అతని/ఆమె చేతి మరియు ముద్ర కింద వారెంట్ ద్వారా రాష్ట్రపతిచే నియమించబడ్డారు."
      ],
      correctAnswerIndex : 3,
      explanation : "గవర్నర్‌ని రాష్ట్రపతి అతని/ఆమె చేతి మరియు ముద్ర కింద వారెంట్ ద్వారా నియమిస్తారు.",
    ),

    Question(
      questionText : "ప్రత్యక్ష ఎన్నికలకు బదులుగా రాజ్యాంగ పరిషత్తు రాష్ట్రపతిచే గవర్నర్‌ నియామకాన్ని ఎందుకు ఎంచుకున్నారు?",
      options: [
      "ప్రత్యక్ష ఎన్నికలు పార్లమెంటరీ వ్యవస్థకు అనుకూలం. ",
      "ప్రత్యక్ష ఎన్నికల వల్ల గవర్నర్‌, ముఖ్యమంత్రి మధ్య విభేదాలు తలెత్తే అవకాశం ఉంది ."
    "ప్రత్యక్ష ఎన్నిక ఖర్చుతో కూడుకున్నది. ",
    "ప్రత్యక్ష ఎన్నికలు జాతీయ ఐక్యతను ప్రోత్సహిస్తాయి."
    ],
    correctAnswerIndex : 2,
      explanation : "వ్యయ-సమర్థత మరియు గవర్నర్ మరియు ముఖ్యమంత్రి మధ్య విభేదాలను నివారించడం వంటి కారణాలను పరిగణనలోకి తీసుకుని ప్రత్యక్ష ఎన్నికలపై రాష్ట్రపతి అపాయింట్‌మెంట్‌ను రాజ్యాంగ సభ ఎంచుకుంది.",
    ),

    Question(
      questionText : "గవర్నర్‌గా ఒక వ్యక్తిని నియమించడానికి అర్హతలు ఏమిటి?",
      options: [
        "భారత పౌరుడు మరియు 40 సంవత్సరాలు నిండిన వ్యక్తి. ",
        "భారత పౌరుడు మరియు 30 సంవత్సరాల వయస్సు పూర్తి. ",
        "భారత పౌరుడు మరియు 35 సంవత్సరాల వయస్సు పూర్తి చేసారు. ",
        "ఏదైనా దేశ పౌరుడు మరియు 35 సంవత్సరాల వయస్సు పూర్తి."
      ],
      correctAnswerIndex : 2,
      explanation : "గవర్నర్‌గా నియమించబడాలంటే, ఒక వ్యక్తి భారత పౌరుడిగా ఉండాలి మరియు 35 సంవత్సరాల వయస్సు పూర్తి చేసి ఉండాలి.",
    ),

    Question(
      questionText : "గవర్నర్ ఎంతకాలం పదవిలో ఉంటారు మరియు వారిని తొలగించవచ్చా?",
      options: [
        "5 సంవత్సరాల పదవీకాలం, మరియు అవి అభిశంసన ద్వారా మాత్రమే తొలగించబడతాయి. ",
        "7 సంవత్సరాల పదవీకాలం, మరియు వాటిని రాష్ట్రపతి తొలగించవచ్చు. ",
        "5 సంవత్సరాల పదవీకాలం, మరియు వాటిని రాష్ట్రపతి ఎప్పుడైనా తొలగించవచ్చు. ",
        "4 సంవత్సరాల పదవీకాలం, మరియు వాటిని రాష్ట్ర శాసనసభ ద్వారా మాత్రమే తొలగించవచ్చు."
      ],
      correctAnswerIndex : 2,
      explanation: "గవర్నర్ 5 సంవత్సరాల పదవీకాలం పాటు పదవిలో ఉంటారు, రాష్ట్రపతి ఇష్టానికి లోబడి, వారిని ఎప్పుడైనా తొలగించవచ్చు.",
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
    home: governor_te(),
  ));
}

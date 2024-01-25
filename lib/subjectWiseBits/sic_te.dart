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

class sic_te extends StatefulWidget {
  final String? userIdentifier;

  sic_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<sic_te> createState() => _sic_teState();
}

class _sic_teState extends State<sic_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//63. రాష్ట్ర సమాచార కమిషన్

    Question(
      questionText: "సమాచార కమిషన్‌లకు సంబంధించి సమాచార హక్కు చట్టం 2005 ఏమి అందిస్తుంది?",
      options:[
        "కేవలం కేంద్ర సమాచార కమిషన్ ఏర్పాటు",
        "కేవలం రాష్ట్ర సమాచార కమిషన్ల ఏర్పాటు",
        "కేంద్ర మరియు రాష్ట్ర సమాచార కమిషన్ల ఏర్పాటు",
        "సమాచార కమీషన్లకు నిబంధన లేదు"
      ],
      correctAnswerIndex: 2,
      explanation:"సమాచార హక్కు చట్టం 2005 రాష్ట్ర స్థాయిలో సెంట్రల్ ఇన్ఫర్మేషన్ కమిషన్ మరియు స్టేట్ ఇన్ఫర్మేషన్ కమీషన్లు రెండింటినీ ఏర్పాటు చేయడానికి అందిస్తుంది.",
    ),

    Question(
      questionText: "రాష్ట్ర సమాచార కమిషన్ సభ్యులను ఎవరు నియమిస్తారు మరియు సిఫార్సు చేసిన కమిటీ కూర్పు ఏమిటి?",
      options:[
        "అధ్యక్షునిచే నియమించబడినది; కమిటీలో ప్రధానమంత్రి ఉన్నారు",
        "ముఖ్యమంత్రి నియమించారు; కమిటీలో ప్రతిపక్ష నాయకుడు మరియు రాష్ట్ర క్యాబినెట్ మంత్రి ఉంటారు",
        "గవర్నర్ చేత నియమించబడినది; కమిటీలో ముఖ్యమంత్రి, ప్రధాన న్యాయమూర్తి మరియు స్పీకర్ ఉంటారు",
        "రాష్ట్ర శాసనసభచే నియమించబడినది; కమిటీలో స్పీకర్ మరియు ప్రధాన కార్యదర్శి ఉంటారు"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర సమాచార కమిషన్ సభ్యులను ముఖ్యమంత్రి చైర్‌పర్సన్‌గా, శాసనసభలో ప్రతిపక్ష నాయకుడు మరియు ముఖ్యమంత్రి నామినేట్ చేసిన రాష్ట్ర క్యాబినెట్ మంత్రితో కూడిన కమిటీ సిఫార్సుపై గవర్నర్ నియమిస్తారు." ,
    ),

    Question(
      questionText: "రాష్ట్ర ప్రధాన సమాచార కమిషనర్ లేదా రాష్ట్ర సమాచార కమిషనర్‌గా నియమించబడటానికి వ్యక్తులు ఏ అర్హతలు కలిగి ఉండాలి?",
      options:[
        "తప్పక పార్లమెంటు సభ్యుడు లేదా శాసనసభ సభ్యుని అయి ఉండాలి",
        "రాజకీయాల్లో నేపథ్యం కలిగి ఉండాలి మరియు లాభదాయకమైన పదవిని కలిగి ఉండాలి",
        "వివిధ రంగాలలో విస్తృత జ్ఞానం మరియు అనుభవం ఉన్న ప్రజా జీవితంలో ప్రముఖులు",
        "ఒక రాజకీయ పార్టీతో సంబంధం కలిగి ఉండాలి"
      ],
      correctAnswerIndex: 2,
      explanation:"రాష్ట్ర ప్రధాన సమాచార కమిషనర్ లేదా రాష్ట్ర సమాచార కమిషనర్‌గా నియమితులైన వ్యక్తులు చట్టం, సైన్స్ అండ్ టెక్నాలజీ, సోషల్ సర్వీస్, మేనేజ్‌మెంట్, జర్నలిజం, మాస్ మీడియా లేదా అడ్మినిస్ట్రేషన్ మరియు గవర్నెన్స్‌లో విస్తృత పరిజ్ఞానం మరియు అనుభవంతో ప్రజా జీవితంలో ప్రముఖులుగా ఉండాలి." ,
    ),

    Question(
      questionText: "రాష్ట్ర ప్రధాన సమాచార కమిషనర్ లేదా ఏదైనా రాష్ట్ర సమాచార కమిషనర్‌ను తొలగించడానికి గల కారణాలు ఏమిటి?",
      options:[
        "ప్రజా ఆదరణ తగ్గుతోంది",
        "పనితీరు లక్ష్యాలను చేరుకోవడంలో అసమర్థత",
        "దుష్ప్రవర్తన లేదా అసమర్థత నిరూపించబడింది",
        "గవర్నర్‌తో వ్యక్తిగత విభేదాలు"
      ],
      correctAnswerIndex: 2,
      explanation:"రాష్ట్ర ప్రధాన సమాచార కమీషనర్ లేదా ఏదైనా రాష్ట్ర సమాచార కమిషనర్‌ను తొలగించడానికి గల కారణాలు రుజువు చేయబడిన దుష్ప్రవర్తన లేదా అసమర్థతను కలిగి ఉంటాయి. దివాలా, నేరారోపణ, కార్యాలయ విధులకు వెలుపల వేతనంతో కూడిన ఉద్యోగంలో పాల్గొనడం, అనర్హత వంటి నిర్దిష్ట పరిస్థితులలో గవర్నర్ వారిని తొలగించవచ్చు. బలహీనత కారణంగా, లేదా అధికారిక విధులకు హాని కలిగించే ప్రయోజనాలను పొందడం.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్‌ను సూచించకుండా గవర్నర్ రాష్ట్ర ప్రధాన సమాచార కమిషనర్ లేదా ఏదైనా రాష్ట్ర సమాచార కమిషనర్‌ను ఏ పరిస్థితులలో తొలగించగలరు?",
      options:[
        "ఆర్థిక అక్రమాలు",
        "అడ్మినిస్ట్రేటివ్ లోపాలు",
        "ప్రజా సెంటిమెంట్ యొక్క తప్పుడు తీర్పు",
        "రాజకీయ కార్యకలాపాలలో పాల్గొనడం"
      ],
      correctAnswerIndex: 0,
      explanation:"ఆర్థిక అవకతవకలు, పరిపాలనాపరమైన లోపాలు లేదా రాజకీయ కార్యకలాపాలలో పాల్గొనడం వంటి పరిస్థితులలో సుప్రీంకోర్టును సూచించకుండానే గవర్నర్ రాష్ట్ర ప్రధాన సమాచార కమిషనర్ లేదా ఏదైనా రాష్ట్ర సమాచార కమిషనర్‌ను తొలగించవచ్చు.",
    ),

    Question(
      questionText: "రాష్ట్ర ప్రధాన సమాచార కమిషనర్ లేదా రాష్ట్ర సమాచార కమిషనర్‌గా పదవిని నిర్వహించడానికి గరిష్ట వయస్సు ఎంత?",
      options:[
        "60 సంవత్సరాలు",
        "65 సంవత్సరాలు",
        "70 సంవత్సరాలు",
        "వయస్సు పరిమితి లేదు"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమీషనర్ కేంద్ర ప్రభుత్వం సూచించిన కాలానికి లేదా వారికి 65 సంవత్సరాల వయస్సు వచ్చే వరకు, ఏది ముందైతే అది పదవిలో కొనసాగుతారు.",
    ),

    Question(
      questionText: "రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ యొక్క జీతం, అలవెన్సులు మరియు ఇతర సేవా షరతులను ఎవరు నిర్ణయిస్తారు?",
      options:[
        "రాష్ట్ర శాసనసభ",
        "కేంద్ర ప్రభుత్వం",
        "అత్యున్నత న్యాయస్తానం",
        "గవర్నర్ కార్యాలయం"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ యొక్క జీతం, అలవెన్సులు మరియు ఇతర సేవా షరతులు కేంద్ర ప్రభుత్వంచే నిర్ణయించబడతాయి.",
    ),
    Question(
      questionText: "ఫిర్యాదులకు సంబంధించి రాష్ట్ర సమాచార కమిషన్ విధులు ఏమిటి?",
      options:[
        "రొటీన్ అడ్మినిస్ట్రేటివ్ పనులను నిర్వహించడానికి",
        "ప్రభుత్వ కార్యకలాపాలపై సాధారణ విచారణలు నిర్వహించడానికి",
        "సమాచార అభ్యర్థనలు, తిరస్కరణలు, జాప్యాలు, రుసుములు మరియు అసంపూర్ణ లేదా తప్పుడు సమాచారానికి సంబంధించిన ఫిర్యాదులను స్వీకరించడానికి మరియు విచారించడానికి",
        "ప్రజా సమాచార అధికారుల నియామకాన్ని పర్యవేక్షించడానికి"
      ],
      correctAnswerIndex: 2,
      explanation:"సమాచార అభ్యర్థనలు, తిరస్కరణలు, జాప్యాలు, రుసుములు మరియు అసంపూర్ణ లేదా తప్పుడు సమాచారానికి సంబంధించిన ఫిర్యాదులను స్వీకరించడం మరియు విచారించడం రాష్ట్ర సమాచార కమిషన్‌కు బాధ్యత ఉంది.",
    ),

    Question(
      questionText: "కమీషన్ ఏ పరిస్థితులలో ఏదైనా విషయంపై విచారణకు ఆదేశించవచ్చు?",
      options:[
        "ప్రభుత్వం కోరినప్పుడు మాత్రమే",
        "ప్రజా నిరసన ఉంటే",
        "సహేతుకమైన కారణాలు ఉంటే (సుయో-మోటో పవర్)",
        "రాష్ట్రపతి ప్రత్యేకంగా ఆదేశించినప్పుడు"
      ],
      correctAnswerIndex: 2,
      explanation:"కమీషన్ తన స్వీయ-మోటో అధికారాన్ని ఉపయోగించి, సహేతుకమైన కారణాలు ఉంటే, ఏదైనా విషయంపై విచారణకు ఆదేశించవచ్చు.",
    ),

    Question(
      questionText: "విచారణ సమయంలో కమిషన్‌కు ఎలాంటి అధికారాలు ఉంటాయి, సివిల్ కోర్టులో ఉన్నట్లే?",
      options:[
        "సాక్షులను పిలిపించడం వరకే పరిమితం",
        "హాజరీని పిలిపించడం మరియు అమలు చేయడం, పత్రాలను కనుగొనడం మరియు తనిఖీ చేయడం అవసరం, అఫిడవిట్‌పై సాక్ష్యాలను స్వీకరించడం మరియు ఇతర నిర్దిష్ట అధికారాలు",
        "సమన్లు జారీ చేయడం మాత్రమే",
        "అఫిడవిట్‌పై సాక్ష్యాలను స్వీకరించడం మరియు సాక్షులు లేదా పత్రాల పరిశీలన కోసం సమన్లు జారీ చేయడం"
      ],
      correctAnswerIndex: 1,
      explanation:"విచారణ సమయంలో, కమిషన్‌కు సివిల్ కోర్టుకు సమానమైన అధికారాలు ఉన్నాయి, ఇందులో హాజరును పిలిపించడం మరియు అమలు చేయడం, పత్రాలను కనుగొనడం మరియు తనిఖీ చేయడం అవసరం, అఫిడవిట్‌పై సాక్ష్యం స్వీకరించడం మరియు ఇతర నిర్దిష్ట అధికారాలు ఉన్నాయి.",
    ),

    Question(
      questionText: "పబ్లిక్ అథారిటీ నుండి దాని నిర్ణయాలకు అనుగుణంగా ఉండేలా కమిషన్‌కు ఏమి అధికారం ఉంది?",
      options:[
        "హెచ్చరికలు మాత్రమే జారీ చేయండి",
        "ఒక నిర్దిష్ట రూపంలో సమాచారానికి ప్రాప్యతను అందించండి, పబ్లిక్ ఇన్ఫర్మేషన్ ఆఫీసర్ నియామకాన్ని నిర్దేశించండి మరియు జరిమానాలు విధించండి",
        "చర్యలను మాత్రమే సిఫార్సు చేయండి",
        "వివరణలు అందించకుండా దరఖాస్తులను తిరస్కరించండి"
      ],
      correctAnswerIndex: 1,
      explanation:"కమీషన్ ఒక నిర్దిష్ట రూపంలో సమాచారాన్ని యాక్సెస్ చేయడం, పబ్లిక్ ఇన్ఫర్మేషన్ ఆఫీసర్‌ను నియమించడం మరియు జరిమానాలు విధించడం వంటి వాటితో సహా పబ్లిక్ అథారిటీ నుండి దాని నిర్ణయాలకు కట్టుబడి ఉండేలా చూసుకోవడానికి అధికారం కలిగి ఉంది.",
    ),

    Question(
      questionText: "కమీషన్ రాష్ట్ర ప్రభుత్వానికి ఏమి సమర్పిస్తుంది మరియు అది తదుపరి ఎలా ప్రాసెస్ చేయబడుతుంది?",
      options:[
        "తక్షణ చర్య కోసం రోజువారీ నివేదికలు",
        "పూర్తి సమీక్ష కోసం ద్వి-వార్షిక నివేదికలు",
        "నెలవారీ సమ్మతి నివేదికలు",
        "చట్టంలోని నిబంధనల అమలుపై వార్షిక నివేదిక, అది రాష్ట్ర శాసనసభ ముందు ఉంచబడుతుంది"
      ],
      correctAnswerIndex: 3,
      explanation:"చట్టంలోని నిబంధనల అమలుపై కమిషన్ వార్షిక నివేదికను రాష్ట్ర ప్రభుత్వానికి సమర్పిస్తుంది మరియు రాష్ట్ర ప్రభుత్వం ఈ నివేదికను రాష్ట్ర శాసనసభ ముందు ఉంచుతుంది.",
    ),

    Question(
      questionText: "పబ్లిక్ అథారిటీకి అనుగుణంగా లేని పక్షంలో, కమిషన్ ఏమి సిఫార్సు చేయవచ్చు?",
      options:[
        "ఆర్థిక జరిమానాలు",
        "తక్షణమే అధికారుల తొలగింపు",
        "అనుకూలతను ప్రోత్సహించే దశలు",
        "పబ్లిక్ హియరింగ్స్"
      ],
      correctAnswerIndex: 2,
      explanation:"పబ్లిక్ అథారిటీకి అనుగుణంగా లేని పక్షంలో, కమిషన్ అటువంటి అనుగుణ్యతను ప్రోత్సహించడానికి చర్యలను సిఫారసు చేయవచ్చు.",
    ),

    Question(
      questionText: "అనుకూలతను పొందే విషయంలో కమిషన్ యొక్క వివిధ అధికారాలు ఏమిటి?",
      options:[
        "హెచ్చరికలు మాత్రమే జారీ చేయడం",
        "వార్షిక నివేదికను కోరుతోంది",
        "నష్టాలను భర్తీ చేయమని ప్రభుత్వ అధికారులను ఒత్తిడి చేయడం",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"కమీషన్‌కు సమ్మతిని భద్రపరిచే విషయానికి వస్తే, హెచ్చరికలు జారీ చేయడం, వార్షిక నివేదికను కోరడం మరియు ఇతర వాటితో పాటు నష్టాలను భర్తీ చేయడానికి ప్రభుత్వ అధికారులను బలవంతం చేయడం వంటి అనేక అధికారాలు ఉన్నాయి.",
    ),

    Question(
      questionText: "ఏ పరిస్థితులలో కమిషన్ దరఖాస్తును తిరస్కరించవచ్చు?",
      options:[
        "దరఖాస్తుదారు అసంతృప్తిగా ఉంటే",
        "సమాచారం సులభంగా యాక్సెస్ చేయగలిగితే",
        "అప్లికేషన్ అసంపూర్తిగా ఉంటే",
        "ప్రజా అధికారం చట్టంలోని నిబంధనలకు అనుగుణంగా ఉండకపోతే"
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రజా అధికారం చట్టంలోని నిబంధనలకు అనుగుణంగా లేకుంటే కమిషన్ దరఖాస్తును తిరస్కరించవచ్చు.",
    ),
    Question(
      questionText: "సమాచార హక్కు (సవరణ) చట్టం, 2019 ద్వారా ప్రధాన సమాచార కమిషనర్ మరియు సమాచార కమిషనర్ పదవీకాలానికి సంబంధించి ఏ మార్పులు ప్రవేశపెట్టబడ్డాయి?",
      options:[
        "వారి పదవీకాలం 5 సంవత్సరాలుగా నిర్ణయించబడింది",
        "వారి పదవీకాలం ఇప్పుడు కేంద్ర ప్రభుత్వంచే నిర్దేశించబడింది",
        "వారు నిరవధికంగా సేవ చేయగలరు",
        "వారి పదవీకాలాన్ని రాష్ట్ర ప్రభుత్వం నిర్ణయిస్తుంది"
      ],
      correctAnswerIndex: 1,
      explanation:"సమాచార హక్కు (సవరణ) చట్టం, 2019, కేంద్ర ప్రభుత్వం ప్రధాన సమాచార కమిషనర్ మరియు సమాచార కమిషనర్ పదవీకాలాన్ని సూచించే మార్పులను ప్రవేశపెట్టింది, ఇది మునుపటి 5 సంవత్సరాల స్థిర కాలానికి భిన్నంగా.",
    ),

    Question(
      questionText: "చీఫ్ ఇన్ఫర్మేషన్ కమిషనర్ మరియు ఇన్ఫర్మేషన్ కమీషనర్ యొక్క జీతం, అలవెన్సులు మరియు సర్వీస్ షరతులకు సంబంధించి ఎలాంటి మార్పులు చేయబడ్డాయి?",
      options:[
        "మార్పులు లేవు, అవి అలాగే ఉంటాయి",
        "ఇప్పుడు ప్రధాన ఎన్నికల కమీషనర్ మాదిరిగానే",
        "ఇప్పుడు ప్రధాన కార్యదర్శి మాదిరిగానే",
        "సంబంధిత రాష్ట్ర ప్రభుత్వాలచే నిర్ణయించబడుతుంది"
      ],
      correctAnswerIndex: 1,
      explanation:"సమాచార హక్కు (సవరణ) చట్టం, 2019, ప్రధాన సమాచార కమిషనర్ మరియు సమాచార కమిషనర్‌ల జీతం, అలవెన్సులు మరియు సేవా షరతులను సవరించి, వారిని ప్రధాన ఎన్నికల కమిషనర్‌తో సమానంగా మార్చింది.",
    ),

    Question(
      questionText: "రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ పదవీకాలాన్ని సవరణ ఎలా ప్రభావితం చేసింది?",
      options:[
        "వారి పదవీకాలం ఇప్పుడు 5 సంవత్సరాలుగా నిర్ణయించబడింది",
        "వారి పదవీకాలం రాష్ట్ర ప్రభుత్వంచే నిర్ణయించబడుతుంది",
        "వారి పదవీకాలం మారదు",
        "వారి పదవీకాలం ఇప్పుడు కేంద్ర ప్రభుత్వంచే నిర్దేశించబడింది"
      ],
      correctAnswerIndex: 3,
      explanation:"సమాచార హక్కు (సవరణ) చట్టం, 2019, రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ పదవీకాలాన్ని గతంలో 5 సంవత్సరాల నిర్ణీత కాలవ్యవధిలా కాకుండా, కేంద్ర ప్రభుత్వం నిర్ణయించాలని సూచించడం ద్వారా ప్రభావితం చేసింది." ,
    ),

    Question(
      questionText: "రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ యొక్క జీతం, అలవెన్సులు మరియు సేవా పరిస్థితులకు సంబంధించి ఏ మార్పులు ప్రవేశపెట్టబడ్డాయి?",
      options:[
        "మార్పులు లేవు, అవి అలాగే ఉంటాయి",
        "ఇప్పుడు ప్రధాన ఎన్నికల కమీషనర్ మాదిరిగానే",
        "ఇప్పుడు ప్రధాన కార్యదర్శి మాదిరిగానే",
        "సంబంధిత రాష్ట్ర ప్రభుత్వాలచే నిర్ణయించబడుతుంది"
      ],
      correctAnswerIndex: 2,
      explanation:"సమాచార హక్కు (సవరణ) చట్టం, 2019, రాష్ట్ర ప్రధాన సమాచార కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ యొక్క జీతం, భత్యాలు మరియు సేవా షరతులలో మార్పులను ప్రవేశపెట్టింది, వాటిని ప్రధాన కార్యదర్శి మాదిరిగానే చేస్తుంది.",
    ),

    Question(
      questionText: "జీతం తగ్గింపులకు సంబంధించి ఏ నిర్దిష్ట నిబంధనను సవరణ తొలగించింది?",
      options:[
        "పన్ను ప్రయోజనాల కోసం తగ్గింపులు",
        "ఆరోగ్య బీమా కోసం తగ్గింపులు",
        "పెన్షన్ లేదా పదవీ విరమణ ప్రయోజనాల కారణంగా తగ్గింపులు",
        "వృత్తిపరమైన అభివృద్ధి కోసం తగ్గింపులు"
      ],
      correctAnswerIndex: 2,
      explanation:"సమాచార హక్కు (సవరణ) చట్టం, 2019, పెన్షన్ లేదా ఏదైనా ఇతర పదవీ విరమణ ప్రయోజనాల కారణంగా ప్రధాన సమాచార కమిషనర్, సమాచార కమిషనర్, రాష్ట్ర చీఫ్ ఇన్ఫర్మేషన్ కమిషనర్ మరియు రాష్ట్ర సమాచార కమిషనర్ జీతంలో తగ్గింపులకు సంబంధించిన నిబంధనలను తొలగించింది. వారి మునుపటి ప్రభుత్వ సేవ కోసం వారు అందుకున్నారు.",
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
    home: sic_te(),
  ));
}

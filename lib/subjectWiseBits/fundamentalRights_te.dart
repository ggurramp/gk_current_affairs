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

class fundamentalRights_te extends StatefulWidget {
  final String? userIdentifier;

  fundamentalRights_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fundamentalRights_te> createState() => _fundamentalRights_teState();
}

class _fundamentalRights_teState extends State<fundamentalRights_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//8 ప్రాథమిక హక్కులు
    Question(
      questionText: "రాజ్యాంగంలోని ఏ భాగం ప్రాథమిక హక్కులను కలిగి ఉంది మరియు తరచుగా 'మాగ్నా కార్టా ఆఫ్ ఇండియా'గా దేనిని సూచిస్తారు?",
      options:["పార్ట్ I", "పార్ట్ II", "పార్ట్ III", "పార్ట్ IV"],
      correctAnswerIndex: 2,
      explanation:"ప్రాథమిక హక్కులు రాజ్యాంగంలోని పార్ట్ IIIలో పొందుపరచబడ్డాయి, వీటిని తరచుగా 'మాగ్నా కార్టా ఆఫ్ ఇండియా'గా సూచిస్తారు. ఈ విభాగం న్యాయబద్ధమైన హక్కుల యొక్క సమగ్ర జాబితాను కలిగి ఉంది.",
    ),

    Question(
      questionText: "ఏ ప్రాథమిక హక్కులు పౌరులకు మాత్రమే అందుబాటులో ఉన్నాయి మరియు శత్రు గ్రహాంతరవాసులకు తప్ప విదేశీయులకు కాదు?",
      options:["సమానత్వ హక్కు (ఆర్టికల్స్ 14-18)", "దోపిడీకి వ్యతిరేకంగా హక్కు (ఆర్టికల్స్ 23-24)", "స్వేచ్ఛ హక్కు (ఆర్టికల్స్ 19-22)", "రాజ్యాంగ పరిష్కారాల హక్కు (ఆర్టికల్ 32)"] ,
      correctAnswerIndex: 0,
      explanation:"సమానత్వ హక్కు (ఆర్టికల్స్ 14-18) వంటి కొన్ని ప్రాథమిక హక్కులు పౌరులకు మాత్రమే అందుబాటులో ఉంటాయి మరియు శత్రు విదేశీయులకు తప్ప విదేశీయులకు అందుబాటులో ఉండవు.",
    ),
    Question(
      questionText: "రాజ్యాంగంలోని ఆర్టికల్ 12 ప్రకారం, పార్ట్ III (ప్రాథమిక హక్కులు) ప్రయోజనాల కోసం 'స్టేట్' అనే పదం ఎలా నిర్వచించబడింది?",
      options:["భారత ప్రభుత్వం మరియు పార్లమెంటు మాత్రమే", "భారత ప్రభుత్వం మరియు పార్లమెంటు, రాష్ట్రాల ప్రభుత్వం మరియు శాసనసభ, అన్ని స్థానిక అధికారులు", "రాష్ట్రాల ప్రభుత్వం మరియు శాసనసభ", "LIC, ONGC, SAIL వంటి చట్టబద్ధమైన అధికారులు మాత్రమే, మొదలైనవి."],
      correctAnswerIndex: 1,
      explanation:"భారత ప్రభుత్వం మరియు పార్లమెంటు, రాష్ట్రాల ప్రభుత్వం మరియు శాసనసభ మరియు అన్ని స్థానిక అధికారులను చేర్చడానికి పార్ట్ III (ప్రాథమిక హక్కులు) ప్రయోజనాల కోసం ఆర్టికల్ 12 'స్టేట్' అనే పదాన్ని నిర్వచిస్తుంది.",
    ),
    Question(
      questionText: "రాష్ట్రపతి లేదా గవర్నర్ వారి అధికారిక విధులకు సంబంధించి ఎలాంటి రోగనిరోధక శక్తిని పొందుతారు?",
      options:[
        "వారు క్రిమినల్ ప్రొసీడింగ్‌ల నుండి మాత్రమే రోగనిరోధక శక్తిని కలిగి ఉంటారు.",
        "వారు తమ కార్యాలయం యొక్క అధికారాలు మరియు విధులను అమలు చేయడం కోసం ఏ కోర్టుకు జవాబుదారీగా ఉండరు.",
        "వారు సివిల్ ప్రొసీడింగ్స్‌కు మాత్రమే రోగనిరోధక శక్తిని కలిగి ఉంటారు.",
        "వారు వారి పదవీ కాలంలో క్రిమినల్ మరియు సివిల్ ప్రొసీడింగ్‌ల నుండి రోగనిరోధక శక్తిని కలిగి ఉంటారు."
      ],
      correctAnswerIndex: 3,
      explanation:"అధ్యక్షుడు లేదా గవర్నర్ తమ కార్యాలయ అధికారాలు మరియు విధుల నిర్వహణ మరియు పనితీరు కోసం ఏ న్యాయస్థానానికి జవాబుదారీగా ఉండరు. వారు తమ పదవీ కాలంలో క్రిమినల్ మరియు సివిల్ ప్రొసీడింగ్‌ల నుండి తప్పించుకుంటారు.",
    ),
    Question(
      questionText: "చట్టం ముందు సమానత్వం మరియు చట్టాల సమాన రక్షణ గురించి రాజ్యాంగంలోని ఆర్టికల్ 14 ఏమి చెబుతుంది?",
      options:["ఇది పౌరులకు మాత్రమే వర్తిస్తుంది, విదేశీయులకు కాదు.", "ఇది పౌరులకు మాత్రమే హక్కులను అందిస్తుంది, చట్టపరమైన వ్యక్తులకు కాదు.", "ఇది పౌరులు, విదేశీయులు మరియు చట్టపరమైన వ్యక్తులతో సహా అన్ని వ్యక్తులపై హక్కులను అందిస్తుంది.", "ఇది చట్టపరమైన వ్యక్తులకు మాత్రమే వర్తిస్తుంది, వ్యక్తులకు కాదు."],
      correctAnswerIndex: 2,
      explanation:"ప్రకరణ 14 పౌరులు, విదేశీయులు మరియు చట్టపరమైన వ్యక్తులతో సహా అన్ని వ్యక్తులపై హక్కులను అందిస్తుంది, చట్టం ముందు సమానత్వం మరియు చట్టాల సమాన రక్షణను నిర్ధారిస్తుంది.",
    ),
    Question(
      questionText: "చట్టం ముందు సమానత్వం మరియు చట్టాల సమాన రక్షణ గురించి రాజ్యాంగంలోని ఆర్టికల్ 14 ఏమి చెబుతుంది?",
      options:["ఇది పౌరులకు మాత్రమే వర్తిస్తుంది, విదేశీయులకు కాదు.", "ఇది పౌరులకు మాత్రమే హక్కులను అందిస్తుంది, చట్టపరమైన వ్యక్తులకు కాదు.", "ఇది పౌరులు, విదేశీయులు మరియు చట్టపరమైన వ్యక్తులతో సహా అన్ని వ్యక్తులపై హక్కులను అందిస్తుంది.", "ఇది చట్టపరమైన వ్యక్తులకు మాత్రమే వర్తిస్తుంది, వ్యక్తులకు కాదు."],
      correctAnswerIndex: 2,
      explanation:"ప్రకరణ 14 పౌరులు, విదేశీయులు మరియు చట్టపరమైన వ్యక్తులతో సహా అన్ని వ్యక్తులపై హక్కులను అందిస్తుంది, చట్టం ముందు సమానత్వం మరియు చట్టాల సమాన రక్షణను నిర్ధారిస్తుంది.",
    ),
    Question(
      questionText: "ఆర్టికల్ 15లో దాని నిబంధనలను అర్థం చేసుకోవడానికి నొక్కిచెప్పబడిన రెండు కీలకమైన పదాలు ఏమిటి?",
      options:["మతం మరియు కులం", "వివక్ష మరియు మాత్రమే", "వైకల్యం మరియు బాధ్యత", "ప్రైవేట్ మరియు పబ్లిక్"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 15లోని రెండు కీలకమైన పదాలు 'వివక్ష' మరియు 'మాత్రమే'. అవి నిర్దిష్ట కారణాలపై ఆధారపడిన వివక్ష నిషేధాన్ని హైలైట్ చేస్తాయి.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 16 ఏమి అందిస్తుంది?",
      options:[
        "రాష్ట్రం కింద ఉపాధి విషయాలలో పౌరులందరికీ సమాన అవకాశాలు.",
        "మతం, జాతి, కులం, లింగం లేదా జన్మస్థలం ఆధారంగా వివక్షను నిషేధించడం.",
        "విద్యా సంస్థల్లో ఆర్థికంగా బలహీన వర్గాలకు రిజర్వేషన్లు.",
        "అస్పృశ్యత నిర్మూలన మరియు సామాజిక సమానత్వం ప్రచారం."
      ],
      correctAnswerIndex: 0,
      explanation:"నిర్దిష్ట ప్రాతిపదికన వివక్షను నిషేధిస్తూ, రాష్ట్ర పరిధిలోని ఉద్యోగ విషయాలలో పౌరులందరికీ సమాన అవకాశాలను కల్పించేందుకు ఆర్టికల్ 16 అందిస్తుంది.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 17 దేనితో వ్యవహరిస్తుంది?",
      options:[
        "విద్యా సంస్థలలో సీట్ల రిజర్వేషన్.",
        "డిస్క్ నిషేధంపబ్లిక్ ఎంప్లాయిమెంట్‌లో రిమినేషన్.",
        "అస్పృశ్యత నిర్మూలన మరియు దాని ఆచార నిషేధం.",
        "మత స్వేచ్ఛ హక్కు."
      ],
      correctAnswerIndex: 2,
      explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 17 అంటరానితనం నిర్మూలనకు సంబంధించింది మరియు ఏ రూపంలోనైనా దాని ఆచారాన్ని నిషేధిస్తుంది.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 18 దేనితో వ్యవహరిస్తుంది?",
      options:[
        "ప్రభుత్వ ఉపాధిలో సమానత్వం",
        "అస్పృశ్యత నిర్మూలన మరియు దాని ఆచరణ.",
        "విద్యా సంస్థలలో సీట్ల రిజర్వేషన్.",
        "బిరుదుల రద్దు మరియు వాటి ప్రదానంపై నిషేధం."
      ],
      correctAnswerIndex: 3,
      explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 18 బిరుదుల రద్దుతో వ్యవహరిస్తుంది మరియు సైనిక లేదా విద్యాపరమైన వ్యత్యాసాలు మినహా రాష్ట్రంచే బిరుదులను ప్రదానం చేయడాన్ని నిషేధిస్తుంది.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 19 ప్రకారం పౌరులందరికీ ఎన్ని హక్కులు హామీ ఇవ్వబడ్డాయి?",
      options:["నాలుగు", "ఐదు", "ఆరు", "ఏడు"],
      correctAnswerIndex: 2,
      explanation:"ప్రకరణ 19 పౌరులందరికీ వాక్ స్వాతంత్ర్యం, సభ, సంఘం, ఉద్యమం, నివాసం మరియు ఏదైనా వృత్తి లేదా వృత్తిని అభ్యసించే హక్కుతో సహా ఆరు హక్కులకు హామీ ఇస్తుంది.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 20 వ్యక్తులను దేని నుండి రక్షిస్తుంది?",
      options:["ఏకపక్ష పన్నులు", "ఏకపక్ష శిక్ష", "ఏకపక్ష నిర్బంధం", "ఏకపక్ష శోధనలు"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 20 వ్యక్తులను ఏకపక్ష మరియు మితిమీరిన శిక్షలకు వ్యతిరేకంగా రక్షిస్తుంది, ఫాక్టో-ఫాక్టో చట్టం, ద్వంద్వ ప్రమాదం మరియు స్వీయ నేరారోపణ వంటి రక్షణలను నిర్ధారిస్తుంది.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఆర్టికల్ 21లో 'చట్టం ద్వారా ఏర్పాటు చేయబడిన విధానం' అనే పదానికి ప్రాముఖ్యత ఏమిటి?",
      options:["ఇది చట్టపరమైన విచారణలలో న్యాయమైన విచారణల యొక్క ప్రాముఖ్యతను నొక్కి చెబుతుంది.", "ఇది చట్టం ఆధారంగా జీవితం మరియు వ్యక్తిగత స్వేచ్ఛను ఏకపక్షంగా హరించడాన్ని అనుమతిస్తుంది.", "ఇది జీవితం మరియు వ్యక్తిగత స్వేచ్ఛకు సంబంధించిన ఏవైనా చట్టాలను అమలు చేయకుండా రాష్ట్రాన్ని నియంత్రిస్తుంది. .", "ఇది అమెరికన్ రాజ్యాంగం వలె 'డ్యూ ప్రాసెస్ ఆఫ్ లా' భావనను పరిచయం చేస్తుంది."],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 21లోని 'చట్టం ద్వారా స్థాపించబడిన విధానం' అనే పదం చట్టం ఆధారంగా జీవితం మరియు వ్యక్తిగత స్వేచ్ఛను హరించడాన్ని అనుమతిస్తుంది, సహేతుకత, న్యాయమైన లేదా న్యాయం ఆధారంగా చట్టం యొక్క చెల్లుబాటును ప్రశ్నించలేమని నొక్కి చెబుతుంది.",
    ),
    Question(
      questionText: "విద్యకు సంబంధించి 2002 నాటి 86వ రాజ్యాంగ సవరణ చట్టం యొక్క ప్రాముఖ్యత ఏమిటి?",
      options:["ఇది ఆర్టికల్ 21లో 'చట్టం ద్వారా స్థాపించబడిన విధానం' అనే భావనను ప్రవేశపెట్టింది.", "ఇది ఆర్టికల్ 21A ప్రకారం ప్రాథమిక విద్యను ప్రాథమిక హక్కుగా చేసింది.", "ఇది ఆర్టికల్ 21లో జీవించే హక్కు మరియు వ్యక్తిగత స్వేచ్ఛను నొక్కి చెప్పింది." , "ఇది ఆర్టికల్ 20 ప్రకారం ఏకపక్ష శిక్ష నుండి రక్షణ కల్పించింది."],
      correctAnswerIndex: 1,
      explanation:"2002 నాటి 86వ రాజ్యాంగ సవరణ చట్టం ఆర్టికల్ 21A ప్రకారం ప్రాథమిక విద్యను ప్రాథమిక హక్కుగా చేసింది, ఆరు నుండి పద్నాలుగు సంవత్సరాల మధ్య వయస్సు ఉన్న పిల్లలందరికీ ఉచిత మరియు నిర్బంధ విద్యను అందిస్తుంది.",
    ),
    Question(
      questionText: "సాధారణ చట్టం ప్రకారం అరెస్టు చేయబడిన లేదా నిర్బంధించబడిన వ్యక్తికి ఆర్టికల్ 22 యొక్క మొదటి భాగం ద్వారా ఏ హక్కులు ఇవ్వబడ్డాయి?",
      options:["నిర్బంధానికి గల కారణాల గురించి తెలియజేసే హక్కు, న్యాయవాదిని సంప్రదించే హక్కు, 24 గంటలలోపు మేజిస్ట్రేట్ ముందు హాజరుపరిచే హక్కు మరియు 24 గంటల తర్వాత విడుదల చేసే హక్కు మేజిస్ట్రేట్ ద్వారా తదుపరి నిర్బంధానికి అధికారం ఉంటే తప్ప." , "న్యాయమైన విచారణకు హక్కు, మౌనంగా ఉండే హక్కు, జ్యూరీ విచారణకు మరియు సాక్షులను క్రాస్ ఎగ్జామిన్ చేసే హక్కు.", "సత్వర విచారణకు హక్కు, సాక్షులను ఎదుర్కొనే హక్కు, న్యాయవాదికి హక్కు, మరియు ఒక హక్కు పబ్లిక్ ట్రయల్.", "ఆరోపణల గురించి తెలియజేయడానికి హక్కు, న్యాయవాదికి హక్కు, జ్యూరీ ద్వారా విచారణకు హక్కు మరియు అప్పీలు చేసుకునే హక్కు."],
      correctAnswerIndex: 0,
      explanation:"ఆర్టికల్ 22 యొక్క మొదటి భాగం అరెస్టుకు గల కారణాలను తెలియజేసే హక్కు, న్యాయవాదిని సంప్రదించే హక్కు, 24 గంటలలోపు మేజిస్ట్రేట్ ముందు హాజరుపరిచే హక్కు మరియు 24 గంటల తర్వాత విడుదల చేసే హక్కు వంటి హక్కులను అందిస్తుంది. తదుపరి నిర్బంధానికి మేజిస్ట్రేట్ అధికారం ఇస్తే తప్ప.",
    ),
    Question(
      questionText: "ఆర్టికల్ 23లో పేర్కొన్నట్లుగా 'మానవులలో ట్రాఫిక్' అనే పదం ఏమి కలిగి ఉంటుంది?",
      options:["పురుషులు, స్త్రీలు మరియు వస్తువుల వంటి పిల్లలను అమ్మడం మరియు కొనడం; వ్యభిచారంతో సహా స్త్రీలు మరియు పిల్లలలో అనైతిక రవాణా; దేవదాసీలు; మరియు బానిసత్వం.", "వేతనం లేకుండా బలవంతంగా పని చేయడం; వివక్షత లేని కార్మిక పద్ధతులు; బాల కార్మికులు; మరియు చెల్లించని ఇంటర్న్‌షిప్‌లు .", "అవయవ వ్యాపారం కోసం మానవ అక్రమ రవాణా; బాల కార్మికులు; బలవంతపు వివాహం; మరియు వివక్షతతో కూడిన ఉపాధి పద్ధతులు.", "నిర్బంధ సైనిక సేవ; పబ్లిక్ ప్రాజెక్ట్‌ల కోసం నిర్బంధ కార్మికులు; బంధిత కార్మికులు; మరియు లింగం ఆధారంగా వివక్షతతో కూడిన ఉపాధి."],
      correctAnswerIndex: 0,
    explanation:"మనుష్యులలో ట్రాఫిక్' అనే పదంలో పురుషులు, స్త్రీలు మరియు పిల్లలను వస్తువుల వంటి వాటిని అమ్మడం మరియు కొనడం; స్త్రీలు మరియు పిల్లలలో అనైతిక రవాణా, వ్యభిచారం; దేవదాసీలు; మరియు బానిసత్వం.",
    ),
    Question(
      questionText: "ఆర్టికల్ 24 ప్రకారం, పిల్లల ఉద్యోగానికి సంబంధించి ఏది నిషేధిస్తుంది?",
      options:["ఏదైనా కర్మాగారంలో, గనిలో లేదా నిర్మాణ పనులు లేదా రైల్వే వంటి ప్రమాదకర కార్యకలాపాలలో 14 సంవత్సరాల కంటే తక్కువ వయస్సు ఉన్న పిల్లలను నియమించడం, హానిచేయని లేదా అమాయకమైన పని మినహా.", "ఏదైనా పారిశ్రామిక కార్యకలాపాలలో 16 సంవత్సరాల కంటే తక్కువ వయస్సు ఉన్న పిల్లలను నియమించడం. పని యొక్క స్వభావం.", "18 సంవత్సరాల కంటే తక్కువ వయస్సు ఉన్న పిల్లలను హానిచేయని లేదా అమాయక పనితో సహా ఏదైనా ప్రమాదకర కార్యకలాపాలలో నియమించడం.", "12 సంవత్సరాల కంటే తక్కువ వయస్సు ఉన్న పిల్లలను ఏ రకమైన శ్రమలోనైనా, ప్రమాదకరమైనది లేదా కాకపోయినా. "],
      correctAnswerIndex: 0,
      explanation:"నిరపాయకరమైన లేదా అమాయకమైన పని తప్ప, ఏదైనా ఫ్యాక్టరీ, గని లేదా నిర్మాణ పనులు లేదా రైల్వే వంటి ప్రమాదకర కార్యకలాపాలలో 14 సంవత్సరాల కంటే తక్కువ వయస్సు ఉన్న పిల్లలను నియమించడాన్ని ఆర్టికల్ 24 నిషేధిస్తుంది.",
    ),
    Question(
      questionText: "అందరికీ ఆర్టికల్ 25 ఏమి హామీ ఇస్తుంది?",
      options:["ఆస్తి హక్కు", "మనస్సాక్షి మరియు మతం యొక్క స్వేచ్ఛ", "విద్యా హక్కు", "ఓటు హక్కు"],
      correctAnswerIndex: 1,
      explanation:"ప్రకరణ 25 మనస్సాక్షి స్వేచ్ఛ మరియు పౌరసత్వంతో సంబంధం లేకుండా ప్రజలందరికీ మతాన్ని స్వేచ్ఛగా ప్రకటించే, ఆచరించే మరియు ప్రచారం చేసే హక్కుకు హామీ ఇస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 25 ప్రకారం, 'మనస్సాక్షి స్వేచ్ఛ' దేనిని సూచిస్తుంది?",
      options:[
        "ఆస్తి సొంతం చేసుకునే స్వేచ్ఛ",
        "ఏ వృత్తినైనా ఆచరించే స్వేచ్ఛ",
        "దేవునితో లేదా జీవులతో సంబంధం కలిగి ఉండటానికి వ్యక్తి యొక్క అంతర్గత స్వేచ్ఛ",
        "రాజకీయ కార్యకలాపాలలో పాల్గొనే స్వేచ్ఛ"
      ],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 25లోని 'మనస్సాక్షి స్వేచ్ఛ' అనేది భగవంతుడు లేదా జీవులతో తమ సంబంధాన్ని వారు కోరుకున్న విధంగా మలుచుకోవడానికి వ్యక్తి యొక్క అంతర్గత స్వేచ్ఛను సూచిస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 25 సందర్భంలో, ప్రచారం చేయడానికి హక్కు ఏమిటి?",
      options:[
        "ఇతరులను తమ మతంలోకి మార్చుకునే హక్కు",
        "మత సంస్థలను స్థాపించే హక్కు",
        "ఆస్తి స్వంతం చేసుకునే హక్కు",
        "ఏ వృత్తినైనా ఆచరించే హక్కు"
      ],
      correctAnswerIndex: 0,
      explanation:"ప్రకరణ 25 ప్రకారం ప్రచారం చేసే హక్కు, ఒకరి మత విశ్వాసాలను ఇతరులకు ప్రసారం చేయడం మరియు వ్యాప్తి చేయడంతో కూడుకున్నది కానీ బలవంతంగా మరొక వ్యక్తిని మతం మార్చే హక్కును కలిగి ఉండదు.",
    ),
    Question(
      questionText: "సుప్రీం కోర్ట్ ప్రకారం, భాషను పరిరక్షించే హక్కులో ఏమి ఉంటుంది?",
      options:[
        "రాజకీయ సిద్ధాంతాలను ప్రోత్సహించే హక్కు.",
        "అవినీతి పద్ధతులలో పాల్గొనే హక్కు.",
        "భాష రక్షణ కోసం ఉద్యమించే హక్కు.",
        "ఇతరులు భాషను ఉపయోగించకుండా నిరోధించే హక్కు."
      ],
      correctAnswerIndex: 2,
      explanation:"భాషను పరిరక్షించే హక్కులో భాషా పరిరక్షణ కోసం ఉద్యమించే హక్కు కూడా ఉంటుందని సుప్రీంకోర్టు పేర్కొంది.",
    ),
    Question(
      questionText: "అధికరణ 30 మతపరమైన లేదా భాషాపరంగా మైనారిటీలకు ఏ హక్కులను ఇస్తుంది?",
      options:[
        "విద్యా సంస్థలలో వివక్ష చూపే హక్కు.",
        "తమకు నచ్చిన విద్యాసంస్థలను స్థాపించే మరియు నిర్వహించే హక్కు.",
        "అర్హత కలిగిన విద్యార్థులకు ప్రవేశాన్ని నిరాకరించే హక్కు.",
        "ఏ విధమైన నియంత్రణ చర్యలను నివారించే హక్కు."
      ],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 30 మైనారిటీలకు తమకు నచ్చిన విద్యా సంస్థలను స్థాపించడానికి మరియు నిర్వహించే హక్కును మంజూరు చేస్తుంది.",
    ),
    Question(
      questionText: "డాక్టర్ అంబేద్కర్ ఆర్టికల్ 32ని ఏమని పిలిచారు మరియు ఎందుకు?",
      options:[
        "ఒక చిన్న వ్యాసం.",
        "ఏ ప్రాముఖ్యత లేని వ్యాసం.",
        "రాజ్యాంగంలోని అతి ముఖ్యమైన ఆర్టికల్.",
        "పరిమిత అధికారాలతో కూడిన కథనం."
      ],
      correctAnswerIndex: 2,
      explanation:"డాక్టర్ అంబేద్కర్ రాజ్యాంగంలోని అత్యంత ముఖ్యమైన ఆర్టికల్ 32 అని పేర్కొన్నాడు, ఇది దాని ఆత్మ మరియు గుండె అని పేర్కొంది.",
    ),
    Question(
      questionText: "హెబియస్ కార్పస్ రిట్ ఏమి కలిగి ఉంటుంది?",
      options:[
        "అధికారిక విధులను నిర్వహించడానికి ఒక ఆదేశం.",
        "అధికార పరిధిని మించకుండా నిరోధించడానికి ఒక ఆర్డర్.",
        "నిర్బంధించిన వ్యక్తిని ఉత్పత్తి చేయమని ఒక ఆదేశం.",
        "దిగువ కోర్టు నిర్ణయాన్ని రద్దు చేయాలనే ఆదేశం."
      ],
      correctAnswerIndex: 2,
      explanation:"హెబియస్ కార్పస్ యొక్క రిట్ నిర్బంధ చట్టబద్ధతను పరిశీలించడానికి నిర్బంధించబడిన వ్యక్తి యొక్క శరీరాన్ని ఉత్పత్తి చేసే ఆదేశాన్ని కలిగి ఉంటుంది.",
    ),
    Question(
      questionText: "ఏ ఆర్టికల్ ప్రకారం సాయుధ దళాల సభ్యుల ప్రాథమిక హక్కులను పరిమితం చేసే లేదా రద్దు చేసే అధికారం పార్లమెంటుకు ఉంది?",
      options:[
        "ఆర్టికల్ 32",
        "ఆర్టికల్ 226",
        "ఆర్టికల్ 33",
        "ఆర్టికల్ 34"
      ],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 33 ప్రకారం సాయుధ దళాల సభ్యుల ప్రాథమిక హక్కులను పరిమితం చేసే లేదా రద్దు చేసే అధికారం పార్లమెంటుకు ఉంది.",
    ),
    Question(
      questionText: "ఏ ఆర్టికల్ ప్రకారం ప్రభుత్వ ఉద్యోగులు లేదా ఇతరుల చర్యలకు గాను నష్టపరిహారం చెల్లించే అధికారం పార్లమెంటుకు ఉందిఇ మార్షల్ లా అమలులో ఉన్న ప్రాంతంలో ఆర్డర్ నిర్వహణ లేదా పునరుద్ధరణకు సంబంధించి?",
      options:[
        "ఆర్టికల్ 32",
        "ఆర్టికల్ 226",
        "ఆర్టికల్ 33",
        "ఆర్టికల్ 34"
      ],
      correctAnswerIndex: 3,
      explanation:"ఆర్టికల్ 34 ప్రకారం, భారత భూభాగంలోని ఏ ప్రాంతంలోనైనా మార్షల్ లా కింద ఆర్డర్ యొక్క నిర్వహణ లేదా పునరుద్ధరణకు సంబంధించి చేసిన చర్యలకు ప్రభుత్వ ఉద్యోగులు లేదా ఇతరులకు నష్టపరిహారం చెల్లించే అధికారం పార్లమెంటుకు ఉంది.",
    ),
    Question(
      questionText: "నిర్దిష్ట ఉద్యోగాలు లేదా నియామకాల కోసం నివాసాన్ని షరతుగా సూచించడానికి సంబంధించి ఆర్టికల్ 35 ప్రకారం చట్టాలను రూపొందించే అధికారం ఏ సంస్థకు ఉంది?",
      options:["సుప్రీం కోర్ట్", "పార్లమెంట్", "స్టేట్ లెజిస్లేచర్లు", "హై కోర్టులు"],
      correctAnswerIndex: 1,
      explanation:"నిర్దిష్ట ఉద్యోగాలు లేదా పార్లమెంట్‌కు నియామకాలకు షరతుగా నివాసాన్ని సూచించే చట్టాలను రూపొందించే అధికారాన్ని ఆర్టికల్ 35 మంజూరు చేస్తుంది.",
    ),
    Question(
      questionText: "రాజ్యాంగంలో ఆస్తి హక్కుకు సంబంధించి 1978 44వ సవరణ చట్టం ఏ చర్య తీసుకుంది?",
      options:[
        "ఇది ఆస్తి హక్కును ప్రాథమిక హక్కుగా బలపరిచింది.",
        "ఇది ఆస్తికి సంబంధించిన కొత్త ప్రాథమిక హక్కును ప్రవేశపెట్టింది.",
        "ఇది ప్రాథమిక హక్కుగా ఆస్తి హక్కును రద్దు చేసింది.",
        "ఇది ఆస్తి హక్కు పరిధిని విస్తరించింది."
      ],
      correctAnswerIndex: 2,
      explanation:"1978లోని 44వ సవరణ చట్టం ఆర్టికల్ 19(1)(ఎఫ్) మరియు ఆర్టికల్ 31ని రద్దు చేయడం ద్వారా ఆస్తిపై ప్రాథమిక హక్కుగా ఉన్న హక్కును రద్దు చేసింది.",
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
    home: fundamentalRights_te(),
  ));
}

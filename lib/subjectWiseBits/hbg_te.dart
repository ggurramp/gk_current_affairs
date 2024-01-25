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

class hbg_te extends StatefulWidget {
  final String? userIdentifier;

  hbg_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<hbg_te> createState() => _hbg_teState();
}

class _hbg_teState extends State<hbg_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//రాజ్యాంగం యొక్క చారిత్రక నేపథ్యం
    Question(
      questionText: "బ్రిటీష్ వారు భారతదేశానికి ఎప్పుడు వచ్చారు మరియు ఏ హోదాలో ఉన్నారు?",
      options:["1600 & వ్యాపారులు", "1700 & అన్వేషకులుగా", "1800 & పాలకులుగా", "1900 & స్థిరనివాసులుగా"],
      correctAnswerIndex: 0,
      explanation:
      "బ్రిటీష్ వారు 1600లో భారతదేశానికి వ్యాపారులుగా వచ్చారు, క్వీన్ ఎలిజబెత్ I మంజూరు చేసిన ప్రత్యేక వాణిజ్య హక్కులతో ఈస్ట్ ఇండియా కంపెనీని ఏర్పాటు చేశారు.",
    ),
    Question(
      questionText: "బ్రిటీష్ పాలనలో 1765లో ఏ ముఖ్యమైన సంఘటన జరిగింది?",
      options:[
        "కంపెనీ బెంగాల్, బీహార్ మరియు ఒరిస్సా యొక్క 'దివానీ'ని పొందింది.",
        "బ్రిటీష్ క్రౌన్ భారతదేశానికి ప్రత్యక్ష బాధ్యతను స్వీకరించింది.",
        "భారత రాజ్యాంగ నిర్మాణం.",
        "సిపాయిల తిరుగుబాటు."
      ],
      correctAnswerIndex: 0,
      explanation:
      "1765లో, ఈస్టిండియా కంపెనీ బెంగాల్, బీహార్ మరియు ఒరిస్సా యొక్క 'దివానీ' (రాబడి మరియు పౌర న్యాయంపై హక్కులు) పొందింది, ఇది ప్రాదేశిక శక్తిగా పరివర్తన చెందింది.",
    ),
    Question(
      questionText: "బ్రిటీష్ పాలన నుండి భారతదేశం ఎప్పుడు స్వాతంత్ర్యం పొందింది?",
      options:["ఆగస్టు 15, 1947", "ఆగస్టు 15, 1950", "జూలై 4, 1947", "జనవరి 26, 1950"],
      correctAnswerIndex: 0,
      explanation:"ఆగస్టు 15, 1947న భారతదేశం బ్రిటిష్ పాలన నుండి స్వాతంత్ర్యం పొందింది.",
    ),
    Question(
      questionText: "స్వాతంత్ర్యం తర్వాత రాజ్యాంగ సభ ఎందుకు ఏర్పడింది?",
      options:[
        "బ్రిటీష్ పాలనను స్థాపించడానికి.",
        "భారతదేశానికి కొత్త రాజ్యాంగాన్ని రూపొందించడానికి.",
        "వలస పాలన కొనసాగించడానికి.",
        "వాణిజ్య ఒప్పందాలను చర్చించడానికి."
      ],
      correctAnswerIndex: 1,
      explanation:"భారతదేశానికి కొత్త రాజ్యాంగాన్ని రూపొందించడానికి 1946లో రాజ్యాంగ సభ ఏర్పడింది, ఇది జనవరి 26, 1950 నుండి అమలులోకి వచ్చింది.",
    ),
    Question(
      questionText: "1773 యొక్క రెగ్యులేటింగ్ యాక్ట్ యొక్క ప్రాముఖ్యత ఏమిటి?",
      options:[
        "బెంగాల్ గవర్నర్ జనరల్‌ను స్థాపించారు.",
        "కలకత్తాలో సుప్రీంకోర్టును ప్రవేశపెట్టారు.",
        "నియంత్రిత ఈస్ట్ ఇండియా కంపెనీ వ్యవహారాలు.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:
      "1773 రెగ్యులేటింగ్ యాక్ట్ బెంగాల్ గవర్నర్ జనరల్‌ను ఏర్పాటు చేయడం, కలకత్తాలో సుప్రీంకోర్టును ప్రవేశపెట్టడం మరియు ఈస్టిండియా కంపెనీ వ్యవహారాలను నియంత్రించడం వంటి ముఖ్యమైన అంశం.",
    ),
    Question(
      questionText: "పిట్స్ ఇండియా చట్టం 1784 ఏమి స్థాపించింది?",
      options:[
        "కంపెనీ యొక్క వాణిజ్య మరియు రాజకీయ విధుల విభజన.",
        "రాజకీయ వ్యవహారాల కోసం నియంత్రణ బోర్డు ఏర్పాటు.",
        "ద్వంద్వ ప్రభుత్వం పరిచయం.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:
      "1784 నాటి పిట్స్ ఇండియా చట్టం వాణిజ్య మరియు రాజకీయ విధుల విభజనను స్థాపించింది, రాజకీయ వ్యవహారాల నియంత్రణ బోర్డును సృష్టించింది మరియు ద్వంద్వ ప్రభుత్వ వ్యవస్థను ప్రవేశపెట్టింది.",
    ),
    Question(
      questionText: "1833 చార్టర్ చట్టం ఏమి సాధించింది?",
      options:[
        "బెంగాల్ గవర్నర్ జనరల్‌ను భారతదేశానికి గవర్నర్ జనరల్‌గా చేసారు.",
        "ఈస్ట్ ఇండియా కంపెనీ యొక్క వాణిజ్య కార్యకలాపాలను ముగించింది.",
        "సివిల్ సర్వెంట్ల కోసం బహిరంగ పోటీ వ్యవస్థను ప్రవేశపెట్టింది.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:
      "1833 చార్టర్ చట్టం బెంగాల్ గవర్నర్-జనరల్‌ను భారత గవర్నర్ జనరల్‌గా చేసింది, కంపెనీ వాణిజ్య కార్యకలాపాలను ముగించింది మరియు పౌర సేవకులకు బహిరంగ పోటీని ప్రవేశపెట్టింది.",
    ),
    Question(
      questionText: "1853 చార్టర్ చట్టం ఏ ముఖ్యమైన మార్పును తీసుకొచ్చింది?",
      options:[
        "శాసన మరియు కార్యనిర్వాహక విధుల విభజన.",
        "సివిల్ సర్వెంట్ రిక్రూట్‌మెంట్ కోసం బహిరంగ పోటీ పరిచయం.",
        "వ్యవధిని పేర్కొనకుండా కంపెనీ పాలన పొడిగింపు.",
        "పైన ఉన్నవన్నీ."
      ],
      correctAnswerIndex: 3,
      explanation:
      "1853 యొక్క చార్టర్ చట్టం శాసన మరియు కార్యనిర్వాహక విధుల విభజనను తీసుకువచ్చింది, సివిల్ సర్వెంట్ రిక్రూట్‌మెంట్ కోసం బహిరంగ పోటీని ప్రవేశపెట్టింది మరియు వ్యవధిని పేర్కొనకుండా కంపెనీ పాలనను పొడిగించింది.",
    ),

  Question(
  questionText: "భారత ప్రభుత్వ చట్టం 1858 అమలులోకి రావడానికి ఏ ముఖ్యమైన సంఘటన దారితీసింది?",
  options:[
  "1857 తిరుగుబాటు",
  "భారత జాతీయ కాంగ్రెస్ ఏర్పాటు",
  "బెంగాల్ విభజన",
  "జలియన్ వాలాబాగ్ ఊచకోత"
  ],
  correctAnswerIndex: 0,
  explanation:
  "1857 తిరుగుబాటు నేపథ్యంలో 1858 భారత ప్రభుత్వ చట్టం రూపొందించబడింది, దీనిని మొదటి స్వాతంత్ర్య యుద్ధం లేదా 'సిపాయి తిరుగుబాటు' అని కూడా పిలుస్తారు.",
  ),
  Question(
  questionText: "భారత ప్రభుత్వ చట్టం 1858 భారతదేశ పాలనను ఎలా మార్చింది?",
  options:[
  "ఈస్ట్ ఇండియా కంపెనీని రద్దు చేసింది.",
  "భారత వైస్రాయ్ పదవిని స్థాపించారు.",
  "ద్వంద్వ ప్రభుత్వ వ్యవస్థను అంతం చేసింది.",
  "పైన ఉన్నవన్నీ."
  ],
  correctAnswerIndex: 3,
  explanation:
  "చట్టం ఈస్టిండియా కంపెనీని రద్దు చేసింది, స్థితిని స్థాపించిందిటెక్స్ట్: "),
    Question(
  questionText: "1861 ఇండియన్ కౌన్సిల్స్ యాక్ట్ ఏ మార్పులను ప్రవేశపెట్టింది?",
  options:[
  "భారతీయుల నామినేషన్‌తో ప్రాతినిధ్య సంస్థల ప్రారంభం.",
  "బొంబాయి మరియు మద్రాసు ప్రెసిడెన్సీలకు శాసన అధికారాల పునరుద్ధరణ.",
  "కొత్త శాసన మండలి స్థాపన.",
  "పైన ఉన్నవన్నీ."
  ],
  correctAnswerIndex: 3,
  explanation:
  "1861 నాటి ఇండియన్ కౌన్సిల్స్ చట్టం ప్రాతినిధ్య సంస్థలను ప్రవేశపెట్టింది, బొంబాయి మరియు మద్రాసు ప్రెసిడెన్సీలకు శాసన అధికారాలను పునరుద్ధరించింది మరియు కొత్త శాసన మండలిలను స్థాపించింది.",
  ),
  Question(
  questionText: "1892 ఇండియన్ కౌన్సిల్స్ యాక్ట్ యొక్క ప్రాముఖ్యత ఏమిటి?",
  options:[
  "శాసన మండలిలో అనధికారిక సభ్యుల సంఖ్య పెరిగింది.",
  "బడ్జెట్‌పై చర్చించే అధికారాన్ని శాసన మండలికి ఇచ్చారు.",
  "ఎన్నికల కోసం పరిమిత మరియు పరోక్ష నిబంధనను ప్రవేశపెట్టారు.",
  "పైన ఉన్నవన్నీ."
  ],
  correctAnswerIndex: 3,
  explanation:
  "1892 నాటి ఇండియన్ కౌన్సిల్స్ యాక్ట్ నాన్-అఫిషియల్ సభ్యులను పెంచింది, బడ్జెట్‌పై చర్చించడానికి కౌన్సిల్‌లకు అధికారం ఇచ్చింది మరియు ఎన్నికల కోసం పరిమిత నిబంధన చేసింది.",
  ),
  Question(
  questionText: "భారత ప్రభుత్వ చట్టం 1919 ద్వారా ఏ సంస్కరణలు ప్రవేశపెట్టబడ్డాయి?",
  options:[
  "ప్రావిన్సులపై సడలించిన కేంద్ర నియంత్రణ.",
  "ద్విసభ మరియు ప్రత్యక్ష ఎన్నికలను ప్రవేశపెట్టారు.",
  "విస్తరించిన మతపరమైన ప్రాతినిధ్యం.",
  "పైన ఉన్నవన్నీ."
  ],
  correctAnswerIndex: 3,
  explanation:
  "1919 భారత ప్రభుత్వ చట్టం కేంద్ర నియంత్రణ, ద్విసభావాదం, ప్రత్యక్ష ఎన్నికలు మరియు విస్తరించిన మతపరమైన ప్రాతినిధ్యం వంటి సంస్కరణలను ప్రవేశపెట్టింది.",
  ),
  Question(
  questionText: "1935 భారత ప్రభుత్వ చట్టం దేన్ని స్థాపించింది?",
  options:[
  "ఆల్-ఇండియా ఫెడరేషన్.",
  "ప్రాంతీయ స్వయంప్రతిపత్తి.",
  "అణగారిన తరగతులకు వర్గ ప్రాతినిధ్యం.",
  "పైన ఉన్నవన్నీ."
  ],
  correctAnswerIndex: 3,
  explanation:
  "భారత ప్రభుత్వ చట్టం 1935 అఖిల భారత సమాఖ్య, ప్రాంతీయ స్వయంప్రతిపత్తి మరియు అణగారిన తరగతులకు మత ప్రాతినిధ్యాన్ని ఏర్పాటు చేసింది.",
  ),
  Question(
  questionText: "భారతదేశంలో బ్రిటిష్ పాలన అంతానికి దారితీసింది ఏమిటి?",
  options:[
  "గవర్నమెంట్ ఆఫ్ ఇండియా యాక్ట్ ఆఫ్ 1935.",
  "మౌంట్ బాటన్ ప్లాన్.",
  "సైమన్ కమిషన్.",
  "కమ్యూనల్ అవార్డు."
  ],
  correctAnswerIndex: 1,
  explanation:
  "బ్రిటీష్ ప్రధాన మంత్రి క్లెమెంట్ అట్లీ ప్రకటనకు ప్రతిస్పందనగా మౌంట్ బాటన్ ప్రణాళిక అమలుతో భారతదేశంలో బ్రిటిష్ పాలన ముగిసింది.",
  ),
  Question(
  questionText: "1947 భారత స్వాతంత్ర్య చట్టం ఎలాంటి మార్పులను తీసుకొచ్చింది?",
  options:[
  "భారతదేశాన్ని స్వతంత్ర మరియు సార్వభౌమ రాజ్యంగా ప్రకటించింది.",
  "భారత విభజన కోసం అందించబడింది.",
  "వైస్రాయ్ కార్యాలయాన్ని రద్దు చేసారు.",
  "పైన ఉన్నవన్నీ."
  ],
  correctAnswerIndex: 3,
  explanation:
  "1947 నాటి భారత స్వాతంత్ర్య చట్టం భారతదేశాన్ని స్వతంత్రంగా ప్రకటించింది, విభజన కోసం అందించబడింది మరియు ఇతర మార్పులతో పాటు వైస్రాయ్ కార్యాలయాన్ని రద్దు చేసింది.",
  ),

  Question(
  questionText: "1946 మధ్యంతర ప్రభుత్వంలో కౌన్సిల్ ఉపాధ్యక్షుడిగా ఎవరు నియమించబడ్డారు?",
  options:[
  "జవహర్‌లాల్ నెహ్రూ",
  "సర్దార్ వల్లభాయ్ పటేల్",
  "డా. రాజేంద్ర ప్రసాద్",
  "లియాఖత్ అలీ ఖాన్"
  ],
  correctAnswerIndex: 0,
  explanation:
  "1946 మధ్యంతర ప్రభుత్వంలో, జవహర్‌లాల్ నెహ్రూ కౌన్సిల్‌కు ఉపాధ్యక్షుడిగా నియమించబడ్డారు.",
  ),
  Question(
  questionText: "సర్దార్ వల్లభాయ్ పటేల్ మధ్యంతర ప్రభుత్వంలో ఏ పోర్ట్‌ఫోలియోను కలిగి ఉన్నారు?",
  options:[
  "హోమ్, సమాచారం & ప్రసారం",
  "రైల్వేలు & రవాణా",
  "రక్షణ",
  "ఆర్థిక"
  ],
  correctAnswerIndex: 0,
  explanation:
  "సర్దార్ వల్లభాయ్ పటేల్ 1946 మధ్యంతర ప్రభుత్వంలో హోమ్, ఇన్ఫర్మేషన్ & బ్రాడ్‌కాస్టింగ్ పోర్ట్‌ఫోలియోను నిర్వహించారు.",
  ),
  Question(
  questionText: "మధ్యంతర ప్రభుత్వంలో విదేశీ వ్యవహారాలు & కామన్వెల్త్ రిలేషన్స్ పోర్ట్‌ఫోలియోకు ఎవరు బాధ్యతలు నిర్వహించారు?",
  options:[
  "డా. రాజేంద్ర ప్రసాద్",
  "సర్దార్ బలదేవ్ సింగ్",
  "లియాఖత్ అలీ ఖాన్",
  "జవహర్‌లాల్ నెహ్రూ"
  ],
  correctAnswerIndex: 3,
  explanation:
  "1946 మధ్యంతర ప్రభుత్వంలో జవహర్‌లాల్ నెహ్రూ విదేశీ వ్యవహారాలు & కామన్వెల్త్ రిలేషన్స్ పోర్ట్‌ఫోలియోకు బాధ్యత వహించారు.",
  ),
  Question(
  questionText: "మధ్యంతర ప్రభుత్వంలో ఏ సభ్యుడు ఆర్థిక పోర్ట్‌ఫోలియోను కలిగి ఉన్నారు?",
  options:[
  "లియాఖత్ అలీ ఖాన్",
  "R.K. షణ్ముగం చెట్టి",
  "జగ్జీవన్ రామ్",
  "డా. జాన్ మథాయ్"
  ],
  correctAnswerIndex: 1,
  explanation:
  "R.K. షణ్ముగం చెట్టి 1946 మధ్యంతర ప్రభుత్వంలో ఫైనాన్స్ పోర్ట్‌ఫోలియోను నిర్వహించారు.",
  ),

  Question(
  questionText: "1947లో స్వేచ్ఛా భారత తొలి మంత్రివర్గం ప్రధానమంత్రి ఎవరు?",
  options:[
  "జవహర్‌లాల్ నెహ్రూ",
  "సర్దార్ వల్లభాయ్ పటేల్",
  "మౌలానా అబుల్ కలాం ఆజాద్",
  "డా. రాజేంద్ర ప్రసాద్"
  ],
  correctAnswerIndex: 0,
  explanation:
  "జవహర్‌లాల్ నెహ్రూ1947లో స్వేచ్చా భారత తొలి మంత్రివర్గానికి ప్రధాన మంత్రి",
  ),
  Question(
  questionText: "స్వేచ్ఛ భారత తొలి మంత్రివర్గంలో డాక్టర్ రాజేంద్ర ప్రసాద్ ఏ పోర్ట్‌ఫోలియోను కలిగి ఉన్నారు?",
  options:[
  "ఆహారం & వ్యవసాయం",
  "రైల్వేలు & రవాణా",
  "ఆరోగ్యం",
  "చదువు"
  ],
  correctAnswerIndex: 0,
  explanation:
  "డా. రాజేంద్ర ప్రసాద్ 1947లో ఫ్రీ ఇండియా మొదటి క్యాబినెట్‌లో ఫుడ్ & అగ్రికల్చర్ పోర్ట్‌ఫోలియోను నిర్వహించారు.",
  ),
  Question(
  questionText: "స్వేచ్ఛ భారతదేశం యొక్క మొదటి క్యాబినెట్‌లో లా పోర్ట్‌ఫోలియోకు ఎవరు బాధ్యత వహించారు?",
  options:[
  "డాక్టర్ బి. ఆర్. అంబేద్కర్",
  "రఫీ అహ్మద్ కిద్వాయ్",
  "C.H. భాభా",
  "జోగీందర్ నాథ్ మండల్"
  ],
  correctAnswerIndex: 0,
  explanation:
  "డా. బి.ఆర్. అంబేద్కర్ 1947లో స్వేచ్ఛా భారత మొదటి మంత్రివర్గంలో లా పోర్ట్‌ఫోలియో బాధ్యతలు నిర్వర్తించారు.",
  ),
  Question(
  questionText: "స్వేచ్ఛ భారత మొదటి మంత్రివర్గంలో వర్క్స్, మైన్స్ & పవర్ పోర్ట్‌ఫోలియోను ఏ సభ్యుడు కలిగి ఉన్నారు?",
  options:[
  "V.N. గాడ్గిల్",
  "రఫీ అహ్మద్ కిద్వాయ్",
  "గజ్నాఫర్ అలీ ఖాన్",
  "C.H. భాభా"
  ],
  correctAnswerIndex: 3,
  explanation:
  "C.H. భాభా 1947లో స్వేచ్ఛా భారత మొదటి మంత్రివర్గంలో వర్క్స్, మైన్స్ & పవర్ పోర్ట్‌ఫోలియోను నిర్వహించారు.",
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
          MyBannerAdWidget(), // Add the banner ad here
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
    home: hbg_te(),
  ));
}

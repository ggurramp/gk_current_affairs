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

class soils_te extends StatefulWidget {
  final String? userIdentifier;

  soils_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<soils_te> createState() => _soils_teState();
}

class _soils_teState extends State<soils_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "మట్టి అంటే ఏమిటి మరియు అది దేనిని కలిగి ఉంటుంది?",
        options:[
          "ఘన, ద్రవ మరియు వాయు పదార్థాల మిశ్రమం భూమి యొక్క క్రస్ట్ యొక్క పై పొరను ఏర్పరుస్తుంది.",
          "పర్వత ప్రాంతాలలో రాళ్ళు మరియు ఖనిజాల కలయిక.",
          "తీర ప్రాంతాలలో అగ్నిపర్వత కార్యకలాపాల ఫలితంగా.",
          "పారిశ్రామిక కాలుష్యం మరియు మానవ కార్యకలాపాల ఉత్పత్తి."
        ],
        correctAnswerIndex: 0,
        explanation:"నేల అనేది అనేక ఘన, ద్రవ మరియు వాయు పదార్థాల మిశ్రమం, ఇది భూమి యొక్క క్రస్ట్ యొక్క పై పొరను ఏర్పరుస్తుంది."
    ),

    Question(
        questionText: "భారతదేశంలో విస్తారమైన వివిధ రకాల నేలలు ఏర్పడటానికి ఏ అంశాలు దోహదం చేస్తాయి?",
        options:[
          "జనాభా సాంద్రతలో తేడాలు.",
          "భూభాగం మరియు వాతావరణ పరిస్థితుల్లో వైవిధ్యాలు.",
          "రాజకీయ సరిహద్దులు మరియు వివాదాలు.",
          "భారతదేశానికి దిగుమతి చేసుకున్న విదేశీ మట్టి రకాల ప్రభావం."
        ],
        correctAnswerIndex: 1,
        explanation:"భూభాగం మరియు శీతోష్ణస్థితి పరిస్థితులలో తేడాల కారణంగా భారతదేశం నేలలో అనేక రకాలను ప్రదర్శిస్తుంది."
    ),

    Question(
        questionText: "భారతదేశంలోని ఏ ప్రాంతాలలో వర్ధిల్లుతున్న వ్యవసాయానికి తోడ్పడే సమృద్ధిగా ఒండ్రు నేలలు ఉన్నాయి?",
        options:[
          "తెలంగాణ మరియు రాజస్థాన్",
          "పశ్చిమ బెంగాల్ డెల్టాక్ ట్రాక్ట్ మరియు కేరళ తీర మైదానం",
          "మహారాష్ట్ర మరియు మధ్యప్రదేశ్",
          "హర్యానా మరియు బీహార్"
        ],
        correctAnswerIndex: 1,
        explanation:"పశ్చిమ బెంగాల్ యొక్క జనసాంద్రత కలిగిన డెల్టాక్ ట్రాక్ట్ మరియు కేరళ యొక్క తీర మైదానాలు సుసంపన్నమైన ఒండ్రు నేలలను కలిగి ఉన్నాయి, ఇది అభివృద్ధి చెందుతున్న వ్యవసాయానికి మద్దతు ఇస్తుంది."
    ),

    Question(
        questionText: "మట్టి ఏర్పడే ప్రక్రియను ఏమంటారు?",
        options:[
          "పెట్రోజెనిసిస్",
          "కోత",
          "పెడోజెనిసిస్",
          "జలవిశ్లేషణ"
        ],
        correctAnswerIndex: 2,
        explanation:"మట్టి ఏర్పడే ప్రక్రియను పెడోజెనిసిస్ అంటారు."
    ),

    Question(
        questionText: "మట్టి ఏర్పడే ప్రక్రియను ప్రభావితం చేసే కారకాలు ఏమిటి?",
        options:[
          "జనాభా సాంద్రత మరియు పారిశ్రామిక కార్యకలాపాలు.",
          "మాతృ పదార్థం, ఉపశమనం, వాతావరణం మరియు సహజ వృక్షసంపద.",
          "రాజకీయ సరిహద్దులు మరియు విదేశీ జోక్యాలు.",
          "వాతావరణ పీడనం మరియు సముద్ర ప్రవాహాలలో మార్పులు."
        ],
        correctAnswerIndex: 1,
        explanation:"నేల నిర్మాణం ప్రక్రియ మాతృ పదార్థం, ఉపశమనం, వాతావరణం మరియు సహజ వృక్షసంపద వంటి అంశాలపై ఆధారపడి ఉంటుంది."
    ),

    Question(
        questionText: "ఒండ్రు మట్టి భారతదేశంలో ఎలా పంపిణీ చేయబడింది?",
        options:[
          "ప్రధానంగా పర్వత ప్రాంతాలలో.",
          "డక్కన్ లావా ట్రాక్ట్‌లో కేంద్రీకృతమై ఉంది.",
          "నదీ పరీవాహక ప్రాంతాలకు మరియు తీర మైదానాలకు పరిమితమైంది.",
          "శుష్క మరియు ఎడారి ప్రాంతాలలో కనుగొనబడింది."
        ],
        correctAnswerIndex: 2,
        explanation:"ఒండ్రు నేలలు సాధారణంగా భారతదేశంలోని నదీ పరీవాహక ప్రాంతాలకు మరియు తీర మైదానాలకు పరిమితమై ఉంటాయి."
    ),

    Question(
        questionText: "భారతదేశంలో నల్ల నేలల్లో ఏ పంటలు ఎక్కువగా పండిస్తారు?",
        options:[
          "టీ మరియు కాఫీ",
          "గోధుమలు మరియు బియ్యం",
          "పత్తి, గోధుమలు మరియు మిల్లెట్లు",
          "బార్లీ మరియు పప్పులు"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలో నల్ల నేలల్లో పండించే ప్రధాన పంటలలో పత్తి, గోధుమలు, జొన్నలు, లిన్సీడ్, వర్జీనియా పొగాకు, ఆముదం, పొద్దుతిరుగుడు మరియు మిల్లెట్లు ఉన్నాయి."
    ),

    Question(
        questionText: "భారతదేశంలో ఏ ప్రాంతాలలో ఎర్ర నేలలు ఉన్నాయి?",
        options:[
          "పశ్చిమ హిమాలయాలు",
          "పశ్చిమ కనుమలు",
          "తూర్పు తీర ప్రాంతాలు",
          "మధ్య మరియు దక్షిణ భారతదేశం"
        ],
        correctAnswerIndex: 3,
        explanation:"ఎర్ర నేలలు దాదాపు మొత్తం తమిళనాడు, కర్ణాటకలోని కొన్ని ప్రాంతాలు, మహారాష్ట్రకు ఆగ్నేయం, ఆంధ్రప్రదేశ్ తూర్పు భాగాలు, మధ్యప్రదేశ్, ఒడిశా మరియు ఛోటానాగ్‌పూర్‌లో విస్తరించి ఉన్నాయి."
    ),

    Question(
        questionText: "లేటరైట్ నేలలు ఎలా ఏర్పడతాయి?",
        options:[
          "అగ్నిపర్వత విస్ఫోటనాల ద్వారా.",
          "తడి మరియు పొడి రుతువుల ప్రత్యామ్నాయాల కారణంగా సిలిసియస్ పదార్థం బయటకు పోతుంది.",
          "చిత్తడి ప్రాంతాలలో సేంద్రీయ పదార్థాల నిక్షేపణ.",
          "తీవ్రమైన మానవ కార్యకలాపాల ఫలితం."
        ],
        correctAnswerIndex: 1,
        explanation:"తడి మరియు పొడి కాలాల ప్రత్యామ్నాయాల కారణంగా లేటరైట్ నేలలు ఏర్పడతాయి, ఇవి రాళ్లలోని సిలిసియస్ పదార్థం బయటకు పోవడానికి దారితీస్తాయి."
    ),

    Question(
        questionText: "భారతదేశంలో పర్వత లేదా అటవీ నేలలు ఎక్కడ ఉన్నాయి?",
        options:[
          "తీర మైదానాలు",
          "పశ్చిమ కనుమలు",
          "ఎడారి ప్రాంతాలు",
          "హిమాలయ వాలులు"
        ],
        correctAnswerIndex: 3,
        explanation:"జమ్మూ మరియు కాశ్మీర్, హిమాచల్ ప్రదేశ్, ఉత్తరాఖండ్ మరియు సిక్కింలోని శంఖాకార అటవీ ప్రాంతంలో పర్వతాలు లేదా అటవీ నేలలు కనిపిస్తాయి."
    ),

    Question(
        questionText: "భారతదేశంలో ఎడారి లేదా శుష్క నేలల లక్షణం ఏమిటి?",
        options:[
          "అధిక సంతానోత్పత్తి మరియు గొప్ప సేంద్రీయ కంటెంట్.",
          "ఆల్కలీన్ స్వభావం మరియు ఇసుక ఆకృతి.",
          "తేమ మరియు బంకమట్టి ఆకృతి యొక్క సమృద్ధి.",
          "దట్టమైన వృక్షసంపద మరియు అటవీ విస్తీర్ణానికి మద్దతు ఇస్తుంది."
        ],
        correctAnswerIndex: 1,
        explanation:"ఎడారి లేదా శుష్క నేలలు ఇసుక ఆకృతితో ఆల్కలీన్ స్వభావం కలిగిన వంధ్య నేలలు."
    ),

    Question(questionText: "భారతదేశంలో సెలైన్ మరియు ఆల్కలీన్ నేలలు ఎక్కడ ఉన్నాయి?",
        options:[
          "పశ్చిమ కనుమలు",
          "గంగా మరియు బ్రహ్మపుత్ర నదీ లోయలు",
          "పశ్చిమ గుజరాత్ మరియు తూర్పు తీర డెల్టాలు",
          "హిమాలయ వాలులు"
        ],
        correctAnswerIndex: 2,
        explanation:"సెలైన్ మరియు ఆల్కలీన్ నేలల అభివృద్ధి పొడి వాతావరణం ఉన్న ప్రాంతాలలో జరిగింది మరియు పశ్చిమ గుజరాత్ మరియు తూర్పు తీర డెల్టాల వంటి సరైన పారుదల లేకపోవడం."
    ),

    Question(
        questionText: "భారతదేశంలో పీటీ లేదా సేంద్రీయ నేలల లక్షణం ఏమిటి?",
        options:[
          "ముదురు, భారీ మరియు ఆమ్ల.",
          "ఇసుక మరియు పోరస్.",
          "సున్నం మరియు మెగ్నీషియా సమృద్ధిగా ఉంటుంది.",
          "శుష్క మరియు ఎడారి ప్రాంతాలలో కనుగొనబడింది."
        ],
        correctAnswerIndex: 0,
        explanation:"పీటీ లేదా ఆర్గానిక్ నేలలు ముదురు, బరువైన మరియు చాలా ఆమ్లంగా ఉంటాయి, చిత్తడి ప్రాంతాలలో ఎక్కువ సేంద్రియ పదార్ధాల నిక్షేపణ వలన ఏర్పడుతుంది."
    ),

    Question(
        questionText: "USDA నేల వర్గీకరణ ప్రకారం భారతీయ నేలల ఏరియా వైజ్ వర్గీకరణ ఏమిటి?",
        options:[
          "ఇన్సెప్టిసోల్స్, ఎంటిసోల్స్ మరియు ఆల్ఫిసోల్స్",
          "అరిడిసోల్స్, అల్టిసోల్స్ మరియు మొల్లిసోల్స్",
          "వెర్టిసోల్స్, ఎంటిసోల్స్ మరియు ఇతరులు",
          "పీటీ మరియు చిత్తడి నేలలు, సెలైన్ మరియు ఆల్కలీన్ నేలలు మరియు శుష్క మరియు ఎడారి నేలలు"
        ],
        correctAnswerIndex: 0,
        explanation:"USDA నేల వర్గీకరణ ప్రకారం భారతీయ నేలల యొక్క ప్రాంతాల వారీగా వర్గీకరణ, ఇన్‌సెప్టిసోల్స్‌తో పాటు ఎంటిసోల్స్ మరియు ఆల్ఫిసోల్స్‌తో ఆధిపత్యం చెలాయిస్తుంది."
    ),
    Question(
        questionText: "ఒండ్రు మట్టి ప్రధానంగా భారతదేశంలో ఎక్కడ ఉంది?",
        options:[
          "పర్వత ప్రాంతాలు",
          "డక్కన్ లావా ట్రాక్ట్",
          "నదీ పరీవాహక ప్రాంతాలు మరియు తీర మైదానాలు",
          "శుష్క మరియు ఎడారి ప్రాంతాలు"
        ],
        correctAnswerIndex: 2,
        explanation:"ఒండ్రు నేలలు సాధారణంగా భారతదేశంలోని నదీ పరీవాహక ప్రాంతాలకు మరియు తీర మైదానాలకు పరిమితమై ఉంటాయి."
    ),

    Question(
        questionText: "నల్ల నేలల లక్షణాలు ఏమిటి?",
        options:[
          "ఇసుక మరియు పోరస్",
          "మట్టి, లోతైన మరియు అగమ్యగోచరం",
          "నత్రజని మరియు హ్యూమస్ సమృద్ధిగా",
          "పశ్చిమ హిమాలయాల్లో కనుగొనబడింది"
        ],
        correctAnswerIndex: 1,
        explanation:"నల్ల నేలలు సాధారణంగా బంకమట్టి, లోతైన మరియు అగమ్యగోచరంగా ఉంటాయి మరియు వాటిలో భాస్వరం, నత్రజని మరియు సేంద్రీయ పదార్థాలు లేవు."
    ),

    Question(
        questionText: "భారతదేశంలోని ఏ ప్రాంతాల్లో ఎర్ర నేలలు ప్రధానంగా కనిపిస్తాయి?",
        options:[
          "పశ్చిమ కనుమలు",
          "తూర్పు తీర ప్రాంతాలు",
          "హిమాలయ వాలులు",
          "మధ్య మరియు దక్షిణ భారతదేశం"
        ],
        correctAnswerIndex: 3,
        explanation:"ఎర్ర నేలలు దాదాపు మొత్తం తమిళనాడు, కర్ణాటకలోని కొన్ని ప్రాంతాలు, మహారాష్ట్రకు ఆగ్నేయం, ఆంధ్రప్రదేశ్ తూర్పు భాగాలు, మధ్యప్రదేశ్, ఒడిశా మరియు ఛోటానాగ్‌పూర్‌లో విస్తరించి ఉన్నాయి."
    ),

    Question(
        questionText: "భారతదేశంలో లేటరైట్ నేలల్లో ఏ పంటలు పండిస్తారు?",
        options:[
          "కాఫీ, రబ్బరు మరియు జీడిపప్పు",
          "గోధుమలు, బియ్యం మరియు చెరకు",
          "పత్తి, మినుములు మరియు పొగాకు",
          "టీ, కాఫీ మరియు సుగంధ ద్రవ్యాలు"
        ],
        correctAnswerIndex: 0,
        explanation:"కర్ణాటక, కేరళ, తమిళనాడు, మహారాష్ట్ర మరియు మధ్యప్రదేశ్‌లలో లాటరైట్ నేలలు సాధారణంగా కనిపిస్తాయి మరియు అవి కాఫీ, రబ్బరు మరియు జీడిపప్పు వంటి పంటలకు అనుకూలం."
    ),

    Question(
        questionText: "భారతదేశంలో ఏ ప్రాంతంలో పర్వతాలు లేదా అటవీ నేలలు ఉన్నాయి?",
        options:[
          "పశ్చిమ కనుమలు",
          "దక్కన్ పీఠభూమి",
          "తూర్పు తీర ప్రాంతాలు",
          "హిమాలయ వాలులు"
        ],
        correctAnswerIndex: 0,
        explanation:"పర్వతాలు లేదా అటవీ నేలలు జమ్మూ మరియు కాశ్మీర్, హిమాచల్ ప్రదేశ్, ఉత్తరాఖండ్ మరియు సిక్కింలోని శంఖాకార అటవీ ప్రాంతంలో ముఖ్యంగా పశ్చిమ కనుమలలో కనిపిస్తాయి."
    ),

    Question(
        questionText: "భారతదేశంలో ఎడారి లేదా శుష్క నేలల లక్షణం ఏమిటి?",
        options:[
          "అధిక సంతానోత్పత్తి మరియు గొప్ప సేంద్రీయ కంటెంట్.",
          "ఆల్కలీన్ స్వభావం మరియు ఇసుక ఆకృతి.",
          "తేమ మరియు బంకమట్టి ఆకృతి యొక్క సమృద్ధి.",
          "దట్టమైన వృక్షసంపద మరియు అటవీ విస్తీర్ణానికి మద్దతు ఇస్తుంది."
        ],
        correctAnswerIndex: 1,
        explanation:"ఎడారి లేదా శుష్క నేలలు ఇసుక ఆకృతితో ఆల్కలీన్ స్వభావం కలిగిన వంధ్య నేలలు."
    ),

    Question(
        questionText: "భారతదేశంలో ఏ ప్రాంతాలలో సెలైన్ మరియు ఆల్కలీన్ నేలలు ఉన్నాయి?",
        options:[
          "పశ్చిమ కనుమలు",
          "గంగా మరియు బ్రహ్మపుత్ర నదీ లోయలు",
          "పశ్చిమ గుజరాత్ మరియు తూర్పు తీర డెల్టాలు",
          "హిమాలయ వాలులు"
        ],
        correctAnswerIndex: 2,
        explanation:"సెలైన్ మరియు ఆల్కలీన్ నేలల అభివృద్ధి పొడి వాతావరణం ఉన్న ప్రాంతాలలో జరిగింది మరియు పశ్చిమ గుజరాత్ మరియు తూర్పు తీర డెల్టాల వంటి సరైన పారుదల లేకపోవడం."
    ),

    Question(
        questionText: "భారతదేశంలో ప్రధానంగా పీటీ లేదా ఆర్గానిక్ నేలలు ఎక్కడ ఉన్నాయి?",
        options:[
          "పశ్చిమ కనుమలు",
          "అస్సాం కొండలు",
          "సుందర్‌బన్స్ డెల్టా",
          "కేరళలోని అలెప్పి జిల్లా"
        ],
        correctAnswerIndex: 3,
        explanation:"పీటీ లేదా ఆర్గానిక్ నేలలు ప్రధానంగా కేరళలోని అలెప్పీ జిల్లా, ఉత్తరాఖండ్‌లోని అల్మోరా, సుందర్‌బన్స్ డెల్టా మరియు ఇతర దిగువ డెల్టా ప్రాంతాలలో కనిపిస్తాయి."
    ),
    Question(
        questionText: "భారతదేశంలో ఏ రకమైన నేలను 'రేగుర్' నేలలు అంటారు?",
    options:[
    "ఒండ్రు నేలలు",
    "నల్ల నేలలు",
    "ఎర్ర నేలలు",
    "లేటరైట్ నేలలు"
    ],
    correctAnswerIndex: 1,
    explanation:"భారతదేశంలోని నల్ల నేలలను పత్తి సాగుకు ప్రసిద్ధి చెందిన 'రేగుర్' నేలలు అని కూడా అంటారు."
    ),

    Question(
        questionText: "భారతదేశంలో ఎర్ర నేలల pH పరిధి ఏమిటి?",
        options:[
          "3.0 నుండి 4.5",
          "4.6 నుండి 6.0",
          "6.6 నుండి 8.0",
          "8.1 నుండి 9.0"
        ],
        correctAnswerIndex: 2,
        explanation:"భారతదేశంలోని ఎర్ర నేలలు సాధారణంగా 6.6 నుండి 8.0 వరకు pH పరిధిని కలిగి ఉంటాయి."
    ),

    Question(
        questionText: "భారతదేశంలో ఏ ప్రాంతంలో లేటరైట్ మట్టి యొక్క ప్రధాన అభివృద్ధి ఉంది?",
        options:[
          "పశ్చిమ కనుమలు",
          "ఒరిస్సా తూర్పు ఘాట్ ప్రాంతం",
          "హిమాలయ వాలులు",
          "దక్కన్ పీఠభూమి"
        ],
        correctAnswerIndex: 1,
        explanation:"ఒరిస్సాలోని తూర్పు ఘాట్ ప్రాంతంలోని ఎత్తైన ప్రాంతాలలో లేటరైట్ మట్టి యొక్క ప్రధాన అభివృద్ధి జరిగింది."
    ),

    Question(
        questionText: "భారతదేశంలో సెలైన్ మరియు ఆల్కలీన్ నేలల లక్షణం ఏమిటి?",
        options:[
          "సేంద్రీయ పదార్థంలో సమృద్ధిగా",
          "నత్రజని లోపం",
          "అధిక సున్నం కంటెంట్",
          "సోడియం, కాల్షియం మరియు మెగ్నీషియం సమృద్ధిగా"
        ],
        correctAnswerIndex: 3,
        explanation:"భారతదేశంలోని సెలైన్ మరియు ఆల్కలీన్ నేలలు సోడియం, కాల్షియం మరియు మెగ్నీషియంతో సమృద్ధిగా ఉంటాయి మరియు నత్రజని మరియు సున్నం లోపిస్తాయి."
    ),

    Question(
        questionText: "పీటీ లేదా సేంద్రీయ నేలల్లో సాగు చేయడానికి ఏ పంటలు అనుకూలంగా ఉంటాయి?",
        options:[
          "టీ, కాఫీ మరియు సుగంధ ద్రవ్యాలు",
          "గోధుమలు మరియు బియ్యం",
          "పత్తి మరియు మినుములు",
          "పండ్లు మరియు కూరగాయలు"
        ],
        correctAnswerIndex: 0,
        explanation:"పీటీ లేదా ఆర్గానిక్ నేలలు వాటి చీకటి, భారీ మరియు ఆమ్ల స్వభావం కారణంగా టీ, కాఫీ, సుగంధ ద్రవ్యాలు మరియు పండ్లతో సహా తోటలకు అనుకూలంగా ఉంటాయి."
    )


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
    home: soils_te(),
  ));
}

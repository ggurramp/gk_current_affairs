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

class counicilofministers_te extends StatefulWidget {
  final String? userIdentifier;

  counicilofministers_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<counicilofministers_te> createState() => _counicilofministers_teState();
}

class _counicilofministers_teState extends State<counicilofministers_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//మంత్రి మండలి
    Question(
      questionText: "రాజకీయ-పరిపాలన వ్యవస్థలో అత్యున్నత నిర్ణయం తీసుకునే అధికారం ఏమిటి?",
      options:[
        "కేబినెట్",
        "అంతర్గత క్యాబినెట్",
        "మంత్రుల మండలి",
        "అధ్యక్షుడు"
      ],
      correctAnswerIndex: 0,
      explanation:"రాజకీయ-పరిపాలన వ్యవస్థలో క్యాబినెట్ అత్యున్నత నిర్ణయాధికారం.",
    ),

    Question(
      questionText: "'ఇన్నార్ క్యాబినెట్' లేదా 'కిచెన్ క్యాబినెట్' అధినేత ఎవరు?",
      options:[
        "కేబినెట్ మంత్రులు",
        "ప్రధానమంత్రి కుటుంబ సభ్యులు",
        "ప్రధాన మంత్రి",
        "అధ్యక్షుడు"
      ],
      correctAnswerIndex: 2,
      explanation:"'ఇన్నర్ క్యాబినెట్' లేదా 'కిచెన్ క్యాబినెట్' ప్రధానమంత్రి అనుమతి ఉంటుంది.",
    ),

    Question(
      questionText: "రాజకీయ వ్యవస్థలో క్యాబినెట్ యొక్క ప్రధాన పాత్ర ఏమిటి?",
      options:[
        "శాసన నిర్ణయం",
        "ఆర్థిక విషయాలు",
        "విధాన రూపకల్పన",
        "విదేశీ వ్యవహారాలు"
      ],
      correctAnswerIndex: 2,
      explanation:"కేంద్ర ప్రభుత్వంలో క్యాబినెట్ ప్రధాన విధాన రూపకల్పన సంస్థ.",
    ),

    Question(
      questionText: "రామ్సే ముయిర్ క్యాబినెట్ పాత్రగా ఏమి వర్ణించారు?",
      options:[
        "ఇతర శరీరాలు తిరిగే సౌర గోళం",
        "రాష్ట్ర ఓడ యొక్క స్టీరింగ్ వీల్",
        "మొత్తం రాజకీయంగా తిరుగుతున్న ఇరుసు",
        "మాగ్నెట్ ఆఫ్ పాలసీ"
      ],
      correctAnswerIndex: 1,
      explanation:"రామ్సే ముయిర్ క్యాబినెట్‌ను 'రాష్ట్ర నౌక యొక్క స్టీరింగ్ వీల్'గా అభివర్ణించాడు.",
    ),

    Question(
      questionText: "కిచెన్ క్యాబినెట్' లేదా 'ఇన్నర్ క్యాబినెట్' అంటే ఏమిటి?",
      options:[
        "ఫార్మల్ క్యాబినెట్ యొక్క పెద్ద వెర్షన్",
        "అందరు క్యాబినెట్ మంత్రులతో కూడిన సంస్థ",
        "ప్రధానమంత్రికి సలహా ఇచ్చే చిన్న అనధికారిక సంస్థ",
        "ఒక ఎన్నికైన కమిటీ"
      ],
      correctAnswerIndex: 2,
      explanation:"కిచెన్ క్యాబినెట్' లేదా 'ఇన్నార్ క్యాబినెట్' అనేది ప్రధానమంత్రికి సలహా ఇచ్చే చిన్న అనధికారిక సంస్థ.",
    ),

    Question(
      questionText: "'ఇన్నర్ క్యాబినెట్' యొక్క మెరిట్‌లలో ఒకటి ఏమిటి?",
      options:[
        "కేబినెట్ యొక్క అధికారం మరియు హోదాను పెంచుతుంది",
        "నిర్ణయం తీసుకోవడంలో తగ్గుదల",
        "నిర్ణయం తీసుకోవడంలో గోప్యతను కాపాడుకోవడంలో",
        "చాలన ప్రక్రియను అధిగమించింది"
      ],
      correctAnswerIndex: 2,
      explanation:"ఇన్నర్ క్యాబినెట్' యొక్క యోగ్యతలలో ఒకటి, అది ప్రధానమంత్రి నిర్ణయం తీసుకోవడంలో గోప్యతను కాపాడుకోవడంలో ఉంది.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని ఏ ఆర్టికల్ భారత ప్రభుత్వ వ్యాపార నిర్వహణకు సంబంధించినది?",
      options:[
        "ఆర్టికల్ 74",
        "ఆర్టికల్ 75",
        "ఆర్టికల్ 77",
        "ఆర్టికల్ 78"
      ],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 77 భారత ప్రభుత్వ వ్యాపార ప్రవర్తనకు సంబంధించినది.",
    ),
    Question(
      questionText: "2003 91వ రాజ్యాంగ సవరణ చట్టం ప్రకారం మంత్రుల మండలి పరిమాణం ఎంత?",
      options:["లోక్ సభ మొత్తం బలంలో 10%", "లోక్ సభ మొత్తం బలంలో 12%", "లోక్ సభ మొత్తం బలంలో 15%", "లోక్ సభ మొత్తం బలంలో 20%" ],
      correctAnswerIndex: 2,
      explanation:"2003 91వ రాజ్యాంగ సవరణ చట్టం ప్రకారం, మంత్రుల మండలి పరిమాణం లోక్‌సభ మొత్తం బలంలో 15% మించకూడదు.",
    ),

    Question(
      questionText: "పార్లమెంటు దిగువ సభకు మంత్రుల మండలి యొక్క సమిష్టి బాధ్యతను అమలు చేయడానికి మంత్రి మండలిలో ఏ శ్రేణి బాధ్యత వహిస్తుంది?",
      options:["కేబినెట్ మంత్రులు", "రాష్ట్ర మంత్రులు", "డిప్యూటీ మంత్రులు", "మొత్తం మంత్రుల మండలి"],
      correctAnswerIndex: 0,
      explanation:"మండలిలో భాగంగా క్యాబినెట్ మంత్రులు, పార్లమెంట్ దిగువ సభకు సమిష్టిగా బాధ్యత వహిస్తారు.",
    ),

    Question(
      questionText: "1952 నాటి మంత్రుల జీతాలు మరియు భత్యాల చట్టం 'మంత్రి'గా ఏమి నిర్వహించింది?",
      options:["మంత్రి మండలి సభ్యుడు", "ఒక ఉప మంత్రి", "ఒక క్యాబినెట్ మంత్రి", "పార్లమెంటు సభ్యుడు"],
      correctAnswerIndex: 0,
      explanation:"1952 నాటి మంత్రుల జీతాలు మరియు భత్యాల చట్టం, 'మంత్రి'ని 'మంత్రి మండలి సభ్యుడు, ఏ పేరుతో పిలిచినా, డిప్యూటీ మంత్రిని కలిగి ఉంటాడు' అని నిర్వచించింది.",
    ),

    Question(
      questionText: "1978లో రాజ్యాంగంలోని ఆర్టికల్ 352లో మంత్రివర్గ భావనను ఏ సవరణ చేర్చారు?",
      options:["42వ రాజ్యాంగ సవరణ చట్టం", "44వ రాజ్యాంగ సవరణ చట్టం", "46వ రాజ్యాంగ సవరణ చట్టం", "48వ రాజ్యాంగ సవరణ చట్టం"],
      correctAnswerIndex: 1,
      explanation:"1978లో 44వ రాజ్యాంగ సవరణ చట్టం రాజ్యాంగంలో 352వ అధికరణలో మంత్రివర్గ భావనను చేర్చింది.",
    ),

    Question(
      questionText: "మంత్రి మండలి మరియు క్యాబినెట్ మధ్య ఉన్న తేడా ఏమిటి?",
      options:["పార్లమెంటు దిగువ సభకు సమిష్టి బాధ్యత", "ఒక సభగా సమావేశాల ఫ్రీక్వెన్సీ", "చేర్చబడిన మంత్రుల సంఖ్య", "రాజ్యాంగ నిర్వచనం"],
      correctAnswerIndex: 1,
      explanation:"ఒక వ్యత్యాసమేమిటంటే, మంత్రి మండలి ప్రభుత్వ వ్యవహారాలను నిర్వహిస్తుంది, అయితే మంత్రివర్గం తరచుగా మరియు వారానికి ఒకసారి సమావేశమవుతుంది.",
    ),

    Question(
      questionText: "కేబినెట్ తీసుకున్న నిర్ణయాలను ఏ సంస్థ అమలు చేస్తుంది?",
      options:["కేబినెట్", "మంత్రుల మండలి", "ప్రధాన మంత్రి", "పార్లమెంట్"],
      correctAnswerIndex: 1,
      explanation:"మంత్రి మండలి, ఒక సంస్థగా, క్యాబినెట్ తీసుకున్న నిర్ణయాలను అమలు చేస్తుంది.",
    ),
    Question(
      questionText: "మంత్రి మండలిలో మంత్రులందరిలో అగ్రస్థానంలో ఎవరు ఉంటారు?",
      options:["కేబినెట్ మంత్రులు", "రాష్ట్ర మంత్రులు", "డిప్యూటీ మంత్రులు", "ప్రధాన మంత్రి"],
      correctAnswerIndex: 3,
      explanation:"మంత్రి మండలి మంత్రులందరిలో ప్రధానమంత్రి దేశ అత్యున్నత పాలక అధికారిగా నిలుస్తున్నారు.",
    ),

    Question(
      questionText: "మంత్రి మండలిలో క్యాబినెట్ మంత్రుల పాత్ర ఏమిటి?",
      options:["ముఖ్యమైన మంత్రిత్వ శాఖలకు అధిపతి", "రాష్ట్ర సహాయ మంత్రులకు", "స్వతంత్రంగా పని", "డిప్యూటీ మంత్రులకు నివేదించండి"],
      correctAnswerIndex: 0,
      explanation:"క్యాబినెట్ మంత్రులు కేంద్ర ప్రభుత్వంలోని ముఖ్యమైన మంత్రిత్వ శాఖలకు నాయకత్వం వహిస్తారు, క్యాబినెట్ సమావేశాలకు హాజరవుతారు మరియు విధానాలను నిర్ణయించడంలో కీలక పాత్ర పోషిస్తారు.",
    ),

    Question(
      questionText: "మంత్రి మండలిలో రాష్ట్ర మంత్రులు ఎలా పని చేస్తారు?",
      options:["ప్రధాన స్వతంత్ర మంత్రిత్వ శాఖలు", "కేబినెట్ మంత్రులకు సహాయం చేయండి", "క్యాబినెట్ సమావేశాలకు క్రమం తప్పకుండా హాజరువ్వండి", "నిర్దిష్ట విధులు లేవు"],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్ర మంత్రులకు మంత్రిత్వ శాఖల స్వతంత్ర బాధ్యతలు ఇవ్వవచ్చు లేదా క్యాబినెట్ మంత్రులకు జోడించబడవచ్చు. వారు కేబినెట్ మంత్రుల పర్యవేక్షణ మరియు మార్గదర్శకత్వంలో పని చేస్తారు.",
    ),

    Question(
      questionText: "స్వతంత్ర బాధ్యత కలిగిన రాష్ట్ర మంత్రులకు మరియు క్యాబినెట్ మంత్రులకు అనుబంధంగా ఉన్నవారికి మధ్య ప్రధాన తేడా ఏమిటి?",
      options:["వారి ర్యాంక్", "క్యాబినెట్ సమావేశాలకు హాజరు", "బాధ్యతలు", "వేతనాలు"],
      correctAnswerIndex: 2,
      explanation:"స్వతంత్ర బాధ్యత కలిగిన రాష్ట్ర మంత్రులు వారి మంత్రిత్వ శాఖ కేబినెట్ మంత్రుల వలె అదే విధులను నిర్వహిస్తారు మరియు అదే అధికారాలను నిర్వహిస్తారు, అయితే క్యాబినెట్ మంత్రులకు అనుబంధంగా ఉన్నవారు వారి పర్యవేక్షణ మరియు మార్గదర్శకత్వంలో పని చేస్తారు.",
    ),

    Question(
      questionText: "మంత్రి మండలిలో డిప్యూటీ మంత్రుల పాత్ర ఏమిటి?",
      options:["ప్రధాన మంత్రిత్వ శాఖలు", "రాష్ట్ర సహాయ మంత్రులు", "పార్లమెంటరీ విధుల్లో సహాయం", "క్యాబినెట్ సమావేశాలకు హాజరు"],
      correctAnswerIndex: 2,
      explanation:"డిప్యూటీ మంత్రులు క్యాబినెట్ మంత్రులు లేదా రాష్ట్ర మంత్రులతో జతచేయబడతారు మరియు వారి పరిపాలన, రాజకీయ మరియు పార్లమెంటరీ విధుల్లో వారికి సహాయం చేస్తారు. వారు క్యాబినెట్ సమావేశాలకు హాజరుకారు.",
    ),

    Question(
      questionText: "పార్లమెంటరీ కార్యదర్శులను ఎవరు నియమిస్తారు మరియు మంత్రి మండలిలో వారి పాత్ర ఏమిటి?",
      options:["రాష్ట్రపతిచే నియమించబడినవారు, ప్రధాన మంత్రిత్వ శాఖలు", "ప్రధానమంత్రిచే నియమించబడినవారు, సహాయ మంత్రులు", "పార్లమెంటుచే ఎన్నుకోబడినవారు, క్యాబినెట్ సమావేశాలకు హాజరవుతారు", "ప్రధానమంత్రిచే నియమించబడినవారు, సీనియర్ మంత్రులకు సహాయం"],
      correctAnswerIndex: 3,
      explanation:"పార్లమెంటరీ కార్యదర్శులు ప్రధానమంత్రిచే నియమింపబడతారు, సీనియర్ మంత్రులకు సహాయం చేస్తారు మరియు వారి నియంత్రణలో శాఖ లేదు. వారు మంత్రి మండలిలో సభ్యులు కాదు.",
    ),
    Question(
      questionText: "పార్లమెంటరీ ప్రభుత్వ వ్యవస్థలో అంతర్లీనంగా ఉన్న ప్రాథమిక సూత్రం ఏమిటి?",
      options:["వ్యక్తిగత బాధ్యత", "చట్టపరమైన బాధ్యత", "సమిష్టి బాధ్యత", "మంత్రి స్వయంప్రతిపత్తి"],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటరీ ప్రభుత్వ వ్యవస్థలో అంతర్లీనంగా ఉన్న ప్రాథమిక సూత్రం సమిష్టి బాధ్యత, ఇక్కడ మంత్రులందరూ తమ చర్యలకు లోక్‌సభకు ఉమ్మడి బాధ్యత కలిగి ఉంటారు.",
    ),

    Question(
      questionText: "మంత్రి మండలిపై లోక్‌సభ అవిశ్వాస తీర్మానాన్ని ఆమోదించినప్పుడు ఏమి జరుగుతుంది?",
      options:["కేబినెట్ మంత్రులు రాజీనామా", "రాష్ట్ర మంత్రులు రాజీనామా", "డిప్యూటీ మంత్రులు రాజీనామా", "లోక్‌సభకు మంత్రుల మండలి సలహా"],
      correctAnswerIndex: 0,
      explanation:"మంత్రి మండలిపై లోక్‌సభ అవిశ్వాస తీర్మానాన్ని ఆమోదించినప్పుడు, రాజ్యసభకు చెందిన మంత్రులతో సహా మంత్రులందరూ రాజీనామా చేయాలి.",
    ),

    Question(
      questionText: "సమిష్టి బాధ్యత సూత్రం క్యాబినెట్ నిర్ణయాలు ఎలా తీసుకుంటారు?",
      options:["ప్రధానమంత్రికి మాత్రమే కట్టుబడి ఉంటుంది", "ఏకగ్రీవంగా అంగీకరించినట్లు మాత్రమే కట్టుబడి ఉంటుంది", "అందరు క్యాబినెట్ మంత్రులను బంధించండి", "మంత్రులకు కట్టుబడి ఉండకూడదు"],
      correctAnswerIndex: 2,
      explanation:"సమిష్టి బాధ్యత సూత్రం ప్రకారం, క్యాబినెట్ సమావేశాల సమయంలో వారు భిన్నమైన అభిప్రాయాలను కలిగి ఉంటారు, క్యాబినెట్ నిర్ణయాలు అందరు కేబినెట్ మంత్రులకు కట్టుబడి ఉంటాయి.",
    ),

    Question(
      questionText: "వ్యక్తిగత బాధ్యత ప్రకారం మంత్రిని ఏ పరిస్థితులలో పదవి నుండి తొలగించవచ్చు?",
      options:["మంత్రుల మండలి విశ్వాసం కోల్పోయినప్పుడు", "అధ్యక్షుని సంతోషం సమయంలో ఎప్పుడైనా", "మంత్రి ప్రధానమంత్రితో విభేదించినప్పుడు", "నిర్మల నేరం మోపబడిన తర్వాత మాత్రమే"],
      correctAnswerIndex: 1,
      explanation:"మంత్రులు రాష్ట్రపతికి ఇష్టమైన సమయంలో పదవీ బాధ్యతలు నిర్వహిస్తారు మరియు రాష్ట్రపతి ఎప్పుడైనా మంత్రిని తొలగించవచ్చు, కానీ ఈ తొలగింపు ప్రధానమంత్రి సలహా ప్రకారం జరుగుతుంది.",
    ),

    Question(
      questionText: "సరైన బాధ్యత విషయంలో, భారతదేశంలోని పరిస్థితి బ్రిటన్ ఎలా ఉంటుంది?",
      options:["భారతదేశంలో మంత్రులపై దావా వేయవచ్చు", "భారతదేశంలో చట్టపరమైన గుర్తించబడింది", "భారతదేశంలో మంత్రివర్గ సలహాలను కోర్టులు విచారించవచ్చు", "భారతదేశంలో బాధ్యత కోసం ఎటువంటి నిబంధనలు లేవు"],
      correctAnswerIndex: 3,
      explanation:"భారతదేశంలో, బ్రిటన్‌లో కాకుండా, బహిరంగ చర్యలకు మంత్రులను బాధ్యులను చేసే విధంగా మంత్రి యొక్క నియంత్రణ బాధ్యత వ్యవస్థకు ఎటువంటి నిబంధన లేదు.",
    ),

    Question(
      questionText: "భారతదేశంలో ప్రధానమంత్రిని ఎవరు నియమిస్తారు?",
      options:["ది లోక్ సభ", "ది ప్రెసిడెంట్", "ది కౌన్సిల్ ఆఫ్ మినిస్టర్స్", "ది సుప్రీం కోర్ట్"],
      correctAnswerIndex: 1,
      explanation:"భారతదేశంలో ప్రధానమంత్రిని రాష్ట్రపతి నియమిస్తారు.",
    ),

    Question(
      questionText: "పార్లమెంటు సభలో సభ్యులు కాని వ్యక్తి మంత్రిగా నియమితులైన ఆరు నెలలలోపు ఏమి చేయాలి?",
      options:["పదవికి రాజీనామా చేయండి", "మళ్లీ నియామకం కోరండి", "పార్లమెంటు సభ్యుడిగా అవ్వండి", "సభ్యత్వం లేకుండా ఆరు నెలల పాటు సేవ చేయండి"],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంటు సభలో సభ్యుడు కాని మరియు మంత్రిగా నియమితులైన వ్యక్తి ఆరు నెలలలోపు పార్లమెంటులో ఏదో ఒక హౌస్‌లో (ఎన్నికల ద్వారా లేదా నామినేషన్ ద్వారా) సభ్యుడిగా ఉండాలి.",
    ),

    Question(
      questionText: "ఒక మంత్రి పదవిలో ప్రవేశించే ముందు ఏ ప్రమాణం చేస్తారు?",
      options:["రాష్ట్రపతికి విధేయత ప్రమాణం", "గోప్యత మాత్రమే", "పదవీ ప్రమాణం మరియు గోప్యత", "ప్రధానమంత్రికి విధేయత ప్రమాణం"],
      correctAnswerIndex: 2,
      explanation:"పదవిలో ప్రవేశించే ముందు, ఒక మంత్రి పదవీ ప్రమాణం మరియు గోప్యత ప్రమాణం చేస్తారు. పదవీ ప్రమాణంలో రాజ్యాంగానికి విధేయత, సార్వభౌమాధికారం మరియు సమగ్రతను సమర్థించడం మరియు విధులను విశ్వసనీయంగా నిర్వహించడం వంటివి ఉంటాయి.",
    ),

    Question(
      questionText: "ఉప ప్రధానమంత్రిగా దేవీలాల్ ప్రమాణ స్వీకారం సవాలుపై సుప్రీంకోర్టు ఎలా స్పందించింది?",
      options:["ప్రమాణం చెల్లదని ప్రకటించబడింది", "ప్రమాణాన్ని చెల్లుబాటు అయ్యేదిగా సమర్థించండి", "రాజ్యాంగ సవరణను సూచించింది", "పార్లమెంటుకు సూచించబడింది"],
      correctAnswerIndex: 1,
      explanation:"ఉపప్రధానిగా దేవి లాల్ ప్రమాణం చెల్లుబాటు అయ్యేదని సుప్రీం కోర్టు సమర్థించింది, ఒక మంత్రిని ఉపప్రధానిగా వర్ణించడం వల్ల ప్రమాణం చేసినంత మాత్రాన భంగం కలగదు.",
    ),

    Question(
      questionText: "మంత్రుల జీతాలు మరియు భత్యాలు ఎలా నిర్ణయించబడతాయి?",
      options:["ప్రధానమంత్రి ద్వారా", "అధ్యక్షునిచే", "పార్లమెంటు ద్వారా", "మంత్రుల మండలి ద్వారా"],
      correctAnswerIndex: 2,
      explanation:"మంత్రుల జీతాలు మరియు భత్యాలు మంచి పార్లమెంట్ నిర్ణయించబడతాయి.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని ఏ ఆర్టికల్స్ మంత్రుల మండలి మరియు వారి విధులకు సంబంధించినవి?",
      options:["ఆర్టికల్ 77 మరియు ఆర్టికల్ 78", "ఆర్టికల్ 75 మరియు ఆర్టికల్ 77", "ఆర్టికల్ 74 మరియు ఆర్టికల్ 75", "ఆర్టికల్ 75 మరియు ఆర్టికల్ 88"],
      correctAnswerIndex: 2,
      explanation:"మంత్రి మరియు వారి విధులు భారత రాజ్యాంగంలో ఆర్టికల్ 74 మరియు ఆర్టికల్ 75 ప్రకారం నడుస్తుంది.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని ఆర్టికల్ 74 మంత్రి మండలి గురించి ఏమి చెబుతుంది?",
      options:["మంత్రుల మండలి అధ్యక్షుడికి సలహా ఇస్తుంది, కానీ సలహా ఉండదు.", "మంత్రి మండలి సలహా లేకుండా రాష్ట్రపతికి పని చేయవచ్చు.", "మంత్రుల మండలి రాష్ట్రపతికి సలహా ఇస్తుంది, మరియు సలహా కట్టుబడి ఉంది.", "అధ్యక్షుడు మంత్రి మండలి సలహాను పునఃపరిశీలించవచ్చు మరియు తదనుగుణంగా ఉంటుంది. వ్యవహరించవచ్చు."],
      correctAnswerIndex: 2,
      explanation:"మంత్రి మండలి రాష్ట్రపతికి సలహా ఇస్తుందని ఆర్టికల్ 74 మరియు సలహా కట్టుబడి ఉంటుంది. రాష్ట్రపతికి పునఃపరిశీలన అవసరం కావచ్చు, కానీ చివరికి సలహాకు అనుగుణంగా వ్యవహరిస్తారు.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రకారం ప్రధానమంత్రితో సహా మొత్తం మంత్రుల సంఖ్యను ఎలా పరిమితం చేయాలి?",
      options:["లోక్ సభ మొత్తం బలంలో 10%", "రాజ్యసభ మొత్తం బలంలో 20%", "లోక్ సభ మొత్తం బలంలో 15%", "మొత్తం బలంలో 25% పార్లమెంటు"],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగం ప్రకారం, మంత్రి మండలిలో ప్రధానమంత్రితో సహా మొత్తం మంత్రుల సంఖ్య లోక్‌సభ మొత్తం బలంలో 15% మించకూడదు.",
    ),

    Question(
      questionText: "మంత్రులు రాష్ట్రపతికి ఇచ్చే సలహాల స్వభావం ఏమిటి?",
      options:["ఆప్షనల్ మరియు నాన్-బైండింగ్", "కంపల్సరీ కానీ నాన్-బైండింగ్", "ఐచ్ఛికం మరియు బైండింగ్", "కంపల్సరీ మరియు బైండింగ్"],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్రపతికి మంత్రులు అందించే సలహా స్వభావం కట్టుబడి ఉంది, ఆర్టికల్ 74లో ఉంటుంది. కోర్టులు సలహాపై విచారణ చేయలేరు.",
    ),

    Question(
      questionText: "VNR రావు కేసు (1971), మంత్రిమండలికి సంబంధించి సుప్రీంకోర్టు ఏమి చెప్పింది?",
      options:["లోక్‌సభ సమావేశం తర్వాత మంత్రుల మండలి పదవిని నిలిపివేస్తుంది.", "మంత్రి మండలి సహాయం మరియు సలహా లేకుండా కార్యనిర్వాహక అధికారాన్ని ఉపయోగించడం రాజ్యాంగబద్ధం.", "ఆర్టికల్ 74 తప్పనిసరి కాదు.", "తప్పనిసరి"],
      correctAnswerIndex: 3,
      explanation:"VNR రావు కేసు (1971)లో, లోక్‌సభ రద్దు తర్వాత కూడా మంత్రి మండలి పదవీ విరమణ చేయదని, సహాయం మరియు సలహా తప్పనిసరి అని సుప్రీం కోర్టు చెప్పింది.",
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
    home: counicilofministers_te(),
  ));
}

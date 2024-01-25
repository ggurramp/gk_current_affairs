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

class parlimentarySystem_te extends StatefulWidget {
  final String? userIdentifier;

  parlimentarySystem_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parlimentarySystem_te> createState() => _parlimentarySystem_teState();
}

class _parlimentarySystem_teState extends State<parlimentarySystem_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//17.అత్యవసర నిబంధనలు
    Question(
        questionText: "రాజ్యాంగంలో అత్యవసర నిబంధనలను చేర్చడం వెనుక ఉన్న ప్రాథమిక హేతువు ఏమిటి?",
        options:[
          "ఏకీకృత ప్రభుత్వ వ్యవస్థను స్థాపించడానికి.",
          "అసాధారణ పరిస్థితులలో దేశ సార్వభౌమాధికారం, ఐక్యత, సమగ్రత మరియు భద్రతను కాపాడటానికి.",
          "ఫెడరలిజం మరియు వికేంద్రీకరణను ప్రోత్సహించడానికి.",
          "రాష్ట్రాలకు మరింత అధికారం ఇవ్వడానికి."
        ],
        correctAnswerIndex: 1,
        explanation:"అసాధారణ పరిస్థితులలో దేశ సార్వభౌమాధికారం, ఐక్యత, సమగ్రత మరియు భద్రతను కాపాడటమే అత్యవసర నిబంధనలను చేర్చడం వెనుక ఉన్న ప్రాథమిక కారణం."
    ),

    Question(
        questionText: "ఎమర్జెన్సీ సమయంలో భారత రాజ్యాంగంలోని ఏ ప్రత్యేక లక్షణం హైలైట్ చేయబడింది?",
        options:[
          "ఒక అధికారిక సవరణ లేకుండా సమాఖ్య నుండి ఏకీకృత వ్యవస్థకు మార్పు.",
          "యూనిటరీ నుండి సమాఖ్య వ్యవస్థకు మార్పు.",
          "రాజ్యాంగం యొక్క పూర్తి సస్పెన్షన్.",
          "పార్లమెంటరీ వ్యవస్థకు పరివర్తన."
        ],
        correctAnswerIndex: 0,
        explanation:"అత్యవసర సమయంలో, భారత రాజ్యాంగం అధికారిక సవరణ లేకుండా సమాఖ్య వ్యవస్థ నుండి ఏకీకృత వ్యవస్థకు మారే ప్రత్యేక లక్షణాన్ని ప్రదర్శిస్తుంది."
    ),

    Question(
        questionText: "రాజ్యాంగం ఎన్ని రకాల అత్యవసర పరిస్థితులను నిర్దేశిస్తుంది మరియు అవి ఏమిటి?",
        options:[
          "రెండు రకాలు: వార్ ఎమర్జెన్సీ మరియు ఫైనాన్షియల్ ఎమర్జెన్సీ.",
          "మూడు రకాలు: జాతీయ అత్యవసర పరిస్థితి, రాష్ట్ర అత్యవసర పరిస్థితి మరియు ఆర్థిక అత్యవసర పరిస్థితి.",
          "నాలుగు రకాలు: అంతర్గత అత్యవసర పరిస్థితి, బాహ్య అత్యవసర పరిస్థితి, సాయుధ తిరుగుబాటు మరియు ఆర్థిక అత్యవసర పరిస్థితి.",
          "ఒక రకం: సాధారణ అత్యవసర పరిస్థితి."
        ],
        correctAnswerIndex: 1,
        explanation:"రాజ్యాంగం మూడు రకాల అత్యవసర పరిస్థితులను నిర్దేశించింది: జాతీయ అత్యవసర పరిస్థితి, రాష్ట్ర అత్యవసర పరిస్థితి (రాష్ట్రపతి పాలన) మరియు ఆర్థిక అత్యవసర పరిస్థితి."
    ),

    Question(
        questionText: "ఏ ప్రాతిపదికన రాష్ట్రపతి జాతీయ అత్యవసర పరిస్థితిని ప్రకటించవచ్చు?",
        options:[
          "రాష్ట్రాలలో రాజ్యాంగ యంత్రాంగం వైఫల్యం.",
          "యుద్ధం, బాహ్య దురాక్రమణ లేదా సాయుధ తిరుగుబాటు కారణంగా భారతదేశ భద్రతకు ఆసన్నమైన ప్రమాదం.",
          "భారతదేశ ఆర్థిక స్థిరత్వం లేదా క్రెడిట్‌కు ముప్పు.",
          "కేంద్ర ఆదేశాలను పాటించడంలో రాష్ట్ర ప్రభుత్వాల వైఫల్యం."
        ],
        correctAnswerIndex: 1,
        explanation:"యుద్ధం, బాహ్య దురాక్రమణ లేదా సాయుధ తిరుగుబాటు కారణంగా భారతదేశ భద్రతకు ఆసన్నమైన ప్రమాదం ఉన్నప్పుడు రాష్ట్రపతి జాతీయ అత్యవసర పరిస్థితిని ప్రకటించవచ్చు."
    ),

    Question(
        questionText: "'బాహ్య అత్యవసర పరిస్థితి' అంటే ఏమిటి మరియు ఇది 'అంతర్గత అత్యవసర పరిస్థితి'కి ఎలా భిన్నంగా ఉంటుంది?",
        options:[
          "రాష్ట్రాలలో రాజ్యాంగ యంత్రాంగం వైఫల్యం కారణంగా బాహ్య ఎమర్జెన్సీ ప్రకటించబడింది, అయితే అంతర్గత అత్యవసర పరిస్థితి యుద్ధం లేదా బాహ్య దురాక్రమణ కారణంగా ఉంది.",
          "సాయుధ తిరుగుబాటు కారణంగా బాహ్య ఎమర్జెన్సీ ప్రకటించబడింది, అయితే అంతర్గత అత్యవసర పరిస్థితి యుద్ధం లేదా బాహ్య దురాక్రమణ కారణంగా ఉంది.",
          "బాహ్య అత్యవసర పరిస్థితి యుద్ధం లేదా బాహ్య దురాక్రమణ కారణంగా ప్రకటించబడింది, అయితే అంతర్గత అత్యవసర పరిస్థితి సాయుధ తిరుగుబాటు కారణంగా ఉంది.",
          "భేదం లేదు; రెండు పదాలు ఒకే పరిస్థితిని సూచిస్తాయి."
        ],
        correctAnswerIndex: 2,
        explanation:"యుద్ధం లేదా బాహ్య దురాక్రమణ కారణంగా 'బాహ్య అత్యవసర పరిస్థితి' ప్రకటించబడింది, అయితే సాయుధ తిరుగుబాటు కారణంగా 'అంతర్గత అత్యవసర పరిస్థితి' ప్రకటించబడింది."
    ),

    Question(
        questionText: "జాతీయ ఎమర్జెన్సీ ప్రకటనను ఎవరు సిఫార్సు చేయవచ్చు మరియు అది ఎప్పుడు వర్తించవచ్చు?",
        options:[
          "ప్రధానమంత్రి ఒక్కరే, ఎప్పుడైనా.",
          "ప్రధానమంత్రి సమ్మతితో కేబినెట్.",
          "ఏ సిఫారసు లేకుండా రాష్ట్రపతి ఒక్కరే.",
          "పార్లమెంట్, మూడింట రెండు వంతుల మెజారిటీతో."
        ],
        correctAnswerIndex: 1,
        explanation:"కేబినెట్ నుండి వ్రాతపూర్వక సిఫార్సును స్వీకరించిన తర్వాత, మంత్రివర్గం యొక్క సమ్మతిని నిర్ధారించిన తర్వాత మాత్రమే రాష్ట్రపతి జాతీయ అత్యవసర పరిస్థితిని ప్రకటించగలరు."
    ),

    Question(
        questionText: "1976 నాటి 42వ సవరణ చట్టం జాతీయ అత్యవసర పరిస్థితికి సంబంధించి రాష్ట్రపతిని ఏమి చేయగలిగింది?",
        options:[
          "నేషనల్ ఎమర్జెన్సీ ఆపరేషన్‌ను భారతదేశంలోని నిర్దిష్ట భాగానికి పరిమితం చేయండి.",
          "జాతీయ అత్యవసర పరిస్థితిని నిరవధికంగా పొడిగించండి.",
          "జాతీయ ఎమర్జెన్సీ సమయంలో ప్రాథమిక హక్కులను సస్పెండ్ చేయండి.",
          "జాతీయ అత్యవసర పరిస్థితిని పూర్తిగా రద్దు చేయండి."
        ],
        correctAnswerIndex: 0,
        explanation:"42వ సవరణ చట్టం 1976 జాతీయ అత్యవసర పరిస్థితిని భారతదేశంలోని నిర్దిష్ట భాగానికి పరిమితం చేయడానికి రాష్ట్రపతికి వీలు కల్పించింది."
    ),

    Question(
        questionText: "1978 నాటి 44వ సవరణ చట్టం జాతీయ అత్యవసర పరిస్థితిని ప్రకటించడానికి గల కారణాలకు సంబంధించి ఏ ప్రత్యామ్నాయం చేసింది?",
        options:[
          "అంతర్గత ఆటంకానికి' ప్రత్యామ్నాయంగా 'రాజ్యాంగ యంత్రాంగ వైఫల్యం'",
          "బయటి దురాక్రమణకు' 'ఆర్థిక స్థిరత్వానికి ముప్పు' ప్రత్యామ్నాయం.",
          "అంతర్గత భంగం' కోసం 'సాయుధ తిరుగుబాటు' ప్రత్యామ్నాయం.",
          "ఏ ప్రత్యామ్నాయం చేయలేదు."
        ],
        correctAnswerIndex: 2,
        explanation:"1978 నాటి 44వ సవరణ చట్టం జాతీయ అత్యవసర పరిస్థితిని ప్రకటించడానికి 'అంతర్గత భంగం' కోసం 'సాయుధ తిరుగుబాటు'ను ప్రత్యామ్నాయంగా ఉంచింది."
    ),

    Question(
        questionText: "1978 నాటి 44వ సవరణ చట్టం ఎలాంటి రక్షణ కల్పించిందిజాతీయ ఎమర్జెన్సీ ప్రకటనకు సంబంధించి ఓడ్యూస్?",
        options:[
          "జాతీయ అత్యవసర పరిస్థితిని ప్రకటించడానికి న్యాయపరమైన రోగనిరోధక శక్తి.",
          "జాతీయ అత్యవసర పరిస్థితిని ప్రకటించడానికి క్యాబినెట్ సమ్మతి.",
          "జాతీయ అత్యవసర పరిస్థితి ప్రకటనలో ప్రధానమంత్రికి ప్రత్యేక అధికారం.",
          "ఏ రక్షణను ప్రవేశపెట్టలేదు."
        ],
        correctAnswerIndex: 1,
        explanation:"1978 44వ సవరణ చట్టం జాతీయ అత్యవసర పరిస్థితిని ప్రకటించడానికి క్యాబినెట్ సమ్మతి అవసరమయ్యే రక్షణను ప్రవేశపెట్టింది."
    ),

    Question(
        questionText: "జాతీయ ఎమర్జెన్సీ ప్రకటనకు సంబంధించి 38వ సవరణ చట్టం 1975 ఏ నిబంధనను ప్రవేశపెట్టింది?",
        options:[
          "ఇది న్యాయ సమీక్ష నుండి డిక్లరేషన్‌ను నిరోధించేలా చేసింది.",
          "ఇది జాతీయ ఎమర్జెన్సీ సమయంలో రాష్ట్రపతి అధికారాలను పొడిగించింది.",
          "ఇది ప్రధానమంత్రికి అపరిమిత అధికారాలను ఇచ్చింది.",
          "ఇది జాతీయ అత్యవసర పరిస్థితిని పూర్తిగా రద్దు చేసింది."
        ],
        correctAnswerIndex: 0,
        explanation:"1975 నాటి 38వ సవరణ చట్టం జాతీయ అత్యవసర పరిస్థితిని న్యాయ సమీక్ష నుండి నిరోధించేలా చేసింది. ఈ నిబంధన 1978 నాటి 44వ సవరణ చట్టం ద్వారా తొలగించబడింది."
    ),

    Question(
        questionText: "మినర్వా మిల్స్ కేసులో సుప్రీంకోర్టు నిర్ణయం ప్రకారం, జాతీయ అత్యవసర పరిస్థితి ప్రకటనను ఏ ప్రాతిపదికన సవాలు చేయవచ్చు?",
        options:[
          "పరిమితులు లేకుండా ఏ కారణంతోనైనా.",
          "మాలాఫైడ్ ఆధారంగా లేదా అసంబద్ధమైన వాస్తవాల ఆధారంగా మాత్రమే.",
          "జాతీయ భద్రతకు సంబంధించిన ఏవైనా కారణాలపై.",
          "రాజకీయ విభేదాల కారణంగా మాత్రమే."
        ],
        correctAnswerIndex: 1,
        explanation:"మినర్వా మిల్స్ కేసులో సుప్రీం కోర్టు నిర్ణయం ప్రకారం, జాతీయ ఎమర్జెన్సీ ప్రకటన దుర్వినియోగం లేదా అసంబద్ధమైన వాస్తవాల ఆధారంగా కోర్టులో సవాలు చేయబడుతుంది."
    ),
    Question(
        questionText: "ఎమర్జెన్సీ ప్రకటనకు పార్లమెంటరీ ఆమోదం కోసం కాల పరిమితి ఏమిటి మరియు ఈ వ్యవధి ఎలా మార్చబడింది?",
        options:[
          "రెండు నెలలు, 1978 44వ సవరణ చట్టం ద్వారా తగ్గించబడింది.",
          "మూడు నెలలు, 1976 42వ సవరణ చట్టం ద్వారా పెంచబడింది.",
          "1975 38వ సవరణ చట్టం ద్వారా ఒక నెల పెరిగింది.",
          "ఆరు నెలలు, 1978 44వ సవరణ చట్టం ద్వారా తగ్గించబడింది."
        ],
        correctAnswerIndex: 0,
        explanation:"ఎమర్జెన్సీ ప్రకటనకు పార్లమెంటరీ ఆమోదం కోసం కాల పరిమితి ఒక నెల, 1978 44వ సవరణ చట్టం ద్వారా రెండు నెలల నుండి తగ్గించబడింది."
    ),

    Question(
        questionText: "ఎమర్జెన్సీ ప్రకటనను ఆమోదించకుండా ఒక నెల వ్యవధిలో లోక్‌సభ రద్దు చేయబడితే, ఆ ప్రకటన ఏమవుతుంది?",
        options:[
          "ఇది స్వయంచాలకంగా గడువు ముగుస్తుంది.",
          "పునర్వ్యవస్థీకరించబడిన లోక్‌సభ మొదటి సమావేశం వరకు ఇది అమలులో ఉంటుంది.",
          "దీనికి లోక్‌సభ రద్దు తర్వాత తిరిగి జారీచేయడం అవసరం.",
          "దీనికి రాష్ట్రపతి ఆమోదం మాత్రమే అవసరం."
        ],
        correctAnswerIndex: 1,
        explanation:"ఎమర్జెన్సీ ప్రకటనను ఆమోదించకుండా ఒక నెల వ్యవధిలో లోక్‌సభ రద్దు చేయబడితే, రాజ్యసభ దానిని ఆమోదించినట్లయితే, పునర్నిర్మించిన లోక్‌సభ యొక్క మొదటి సమావేశం వరకు అది అమలులో ఉంటుంది."
    ),

    Question(
        questionText: "పార్లమెంట్ ఉభయ సభలు ఆమోదించినట్లయితే ఎమర్జెన్సీ ఎంతకాలం కొనసాగుతుంది మరియు దానిని ఎలా పొడిగించవచ్చు?",
        options:[
          "ఇది ఒక సంవత్సరం పాటు కొనసాగుతుంది మరియు నిరవధికంగా పొడిగించబడుతుంది.",
          "ఇది ఆరు నెలల పాటు కొనసాగుతుంది మరియు ప్రతి ఆరు నెలలకు పార్లమెంటరీ ఆమోదంతో నిరవధిక కాలానికి పొడిగించవచ్చు.",
          "ఇది మూడు నెలల పాటు కొనసాగుతుంది మరియు సాధారణ మెజారిటీతో పొడిగించవచ్చు.",
          "రాష్ట్రపతి దానిని రద్దు చేసే వరకు ఇది కొనసాగుతుంది."
        ],
        correctAnswerIndex: 1,
        explanation:"పార్లమెంట్ ఉభయ సభలు ఆమోదించినట్లయితే, ఎమర్జెన్సీ ఆరు నెలల పాటు కొనసాగుతుంది మరియు ప్రతి ఆరు నెలలకు పార్లమెంటు ఆమోదంతో నిరవధిక కాలానికి పొడిగించబడుతుంది."
    ),

    Question(
        questionText: "ఎమర్జెన్సీకి పార్లమెంటరీ ఆమోదానికి సంబంధించి 44వ సవరణ చట్టం 1978 ఎలాంటి మార్పును తీసుకొచ్చింది?",
        options:[
          "ఆమోదం కోసం సాధారణ మెజారిటీని ప్రవేశపెట్టారు.",
          "ఆమోదం కోసం ప్రత్యేక మెజారిటీని ప్రవేశపెట్టారు.",
          "పార్లమెంటరీ ఆమోదం అవసరం తీసివేయబడింది.",
          "ఆమోదం కోసం కాలపరిమితిని పొడిగించారు."
        ],
        correctAnswerIndex: 1,
        explanation:"1978 44వ సవరణ చట్టం అత్యవసర పరిస్థితికి పార్లమెంటరీ ఆమోదం కోసం ప్రత్యేక మెజారిటీ ఆవశ్యకతను ప్రవేశపెట్టింది, ఇది మొత్తం సభ్యత్వంలో మెజారిటీ మరియు మూడింట రెండు వంతుల సభ్యులకు తక్కువ కాకుండా హాజరై మరియు ఓటు వేయడానికి అవసరం."
    ),

    Question(
        questionText: "ఎమర్జెన్సీ ప్రకటనను ఎలా ఉపసంహరించుకోవచ్చు?",
        options:[
          "దీనికి పార్లమెంటు ఉభయ సభల ఆమోదం అవసరం.",
          "దీనిని తదుపరి ప్రకటన ద్వారా ఎప్పుడైనా రాష్ట్రపతి ఉపసంహరించుకోవచ్చు.",
          "దీన్ని ప్రధాని ఒక్కరే రద్దు చేయవచ్చు.",
          "ఇది రద్దు కోసం న్యాయపరమైన జోక్యం అవసరం."
        ],
        correctAnswerIndex: 1,
        explanation:"ఎమర్జెన్సీ ప్రకటనను తదుపరి ప్రకటన ద్వారా ఎప్పుడైనా రాష్ట్రపతి ఉపసంహరించుకోవచ్చు మరియు దీనికి పార్లమెంటరీ ఆమోదం అవసరం లేదు."
    ),

    Question(
        questionText: "అయితే రాష్ట్రపతి ఏ చర్య తీసుకోవాలిఎమర్జెన్సీ కొనసాగింపును ఆమోదించని తీర్మానాన్ని లోక్‌సభ ఆమోదించిందా?",
        options:[
        "రాష్ట్రపతి తీర్మానాన్ని విస్మరించవచ్చు.",
        "రాష్ట్రపతి తప్పనిసరిగా ప్రకటనను ఉపసంహరించుకోవాలి.",
        "రాష్ట్రపతి తప్పనిసరిగా న్యాయపరమైన ఆమోదం పొందాలి.",
        "రాష్ట్రపతి లోక్‌సభను రద్దు చేయవచ్చు."
    ],
    correctAnswerIndex: 1,
    explanation:"ఎమర్జెన్సీ కొనసాగింపును తిరస్కరించే తీర్మానాన్ని లోక్‌సభ ఆమోదించినట్లయితే, రాష్ట్రపతి ఆ ప్రకటనను రద్దు చేయాలి."
    ),

    Question(
        questionText: "1978 44వ సవరణ చట్టం ఎమర్జెన్సీ రద్దుకు సంబంధించి ఏ నిబంధనను ప్రవేశపెట్టింది?",
        options:[
        "రద్దుకు పార్లమెంటు ఉభయ సభల ఆమోదం అవసరం.",
        "రద్దు చేయడం రాష్ట్రపతి మాత్రమే చేయగలరు.",
        "రద్దుకు న్యాయపరమైన ఆమోదం అవసరం.",
        "రాష్ట్రపతి రద్దుకు పార్లమెంటు ఆమోదం అవసరం లేదు."
    ],
    correctAnswerIndex: 3,
    explanation:"1978 నాటి 44వ సవరణ చట్టంలో రాష్ట్రపతి ఎమర్జెన్సీని రద్దు చేయడానికి పార్లమెంటు ఆమోదం అవసరం లేదని ప్రవేశపెట్టింది."
    ),

    Question(
        questionText: "నిర్దిష్ట వ్యవధిలోగా ఎమర్జెన్సీ కొనసాగింపును లోక్‌సభ ఆమోదించకపోతే రాష్ట్రపతి ఏ చర్య తీసుకోవాలి?",
        options:[
          "లోక్ సభ ఆమోదం లేకుండా రాష్ట్రపతి ఎమర్జెన్సీని పొడిగించవచ్చు.",
          "రాష్ట్రపతి లోక్‌సభను రద్దు చేయాలి.",
          "రాష్ట్రపతి తప్పనిసరిగా రాజ్యసభ నుండి ఆమోదం పొందాలి.",
          "రాష్ట్రపతి ప్రకటనను ఉపసంహరించుకోవాలి."
        ],
        correctAnswerIndex: 3,
        explanation:"నిర్దిష్ట వ్యవధిలోగా ఎమర్జెన్సీ కొనసాగింపును లోక్‌సభ ఆమోదించకపోతే, రాష్ట్రపతి ఆ ప్రకటనను రద్దు చేయాలి."
    ),

    Question(
        questionText: "1978 నాటి 44వ సవరణ చట్టంలో లోక్‌సభ అత్యవసర పరిస్థితి కొనసాగింపును పరిగణనలోకి తీసుకోవడానికి ఏ అదనపు నిబంధనను ప్రవేశపెట్టింది?",
        options:[
          "ఇది లోక్‌సభలో ఏకగ్రీవంగా ఓటు వేయవలసిన అవసరాన్ని ప్రవేశపెట్టింది.",
          "దానిలో పదవ వంతు మంది సభ్యుల వ్రాతపూర్వక నోటీసుపై లోక్‌సభ ప్రత్యేక సమావేశానికి ఇది ఒక నిబంధనను ప్రవేశపెట్టింది.",
          "ఇది రాష్ట్రపతి ఆమోదం కోసం ఒక అవసరాన్ని ప్రవేశపెట్టింది.",
          "ఇది ప్రజాభిప్రాయ సేకరణ కోసం ఒక నిబంధనను ప్రవేశపెట్టింది."
        ],
        correctAnswerIndex: 1,
        explanation:"1978లోని 44వ సవరణ చట్టం, ఎమర్జెన్సీ కొనసాగింపును పరిగణనలోకి తీసుకోవాలని దానిలోని పదవ వంతు సభ్యులు వ్రాతపూర్వక నోటీసుపై 14 రోజులలోపు లోక్‌సభ ప్రత్యేక సమావేశానికి ఒక నిబంధనను ప్రవేశపెట్టింది."
    ),
    Question(
      questionText: "ఏ అత్యవసర పరిస్థితుల్లో ఆర్టికల్ 358 పనిచేస్తుంది?",
      options:[
        "అంతర్గత అత్యవసర పరిస్థితి",
        "అంతర్గత మరియు బాహ్య అత్యవసర పరిస్థితులు",
        "బాహ్య అత్యవసర పరిస్థితి",
        "పైన ఏదీ కాదు"
      ],
      correctAnswerIndex: 2,
      explanation:"యుద్ధం లేదా బాహ్య దురాక్రమణ ఆధారంగా ప్రకటించబడిన బాహ్య అత్యవసర పరిస్థితి విషయంలో మాత్రమే ఆర్టికల్ 358 పనిచేస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 358తో పోలిస్తే ఆర్టికల్ 359 పరిధి ఏమిటి?",
      options:[
        "ఆర్టికల్ 359 ఆర్టికల్ 19 కింద ప్రాథమిక హక్కులకు మాత్రమే వర్తిస్తుంది, అయితే ఆర్టికల్ 358 అన్ని ప్రాథమిక హక్కులకు వర్తిస్తుంది.",
        "ఆర్టికల్ 359 అన్ని ప్రాథమిక హక్కులకు వర్తిస్తుంది, అయితే ఆర్టికల్ 358 ఆర్టికల్ 19కి మాత్రమే పరిమితం చేయబడింది.",
        "రెండు వ్యాసాలు ఒకే పరిధిని కలిగి ఉన్నాయి.",
        "ఆర్టికల్ 359 అంతర్గత అత్యవసర పరిస్థితికి మాత్రమే వర్తిస్తుంది, అయితే ఆర్టికల్ 358 బాహ్య అత్యవసర పరిస్థితికి వర్తిస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"అన్ని ప్రాథమిక హక్కులకు ఆర్టికల్ 359 వర్తిస్తుంది, దీని అమలు రాష్ట్రపతి ఉత్తర్వు ద్వారా నిలిపివేయబడింది, అయితే ఆర్టికల్ 358 కేవలం ఆర్టికల్ 19 ప్రకారం ప్రాథమిక హక్కులకు మాత్రమే పరిమితం చేయబడింది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 359 ప్రాథమిక హక్కుల అమలును ఎంతకాలం నిలిపివేస్తుంది?",
      options:[
        "ఎమర్జెన్సీ మొత్తం వ్యవధికి",
        "అధ్యక్షుడు పేర్కొన్న కాలం, ఇది మొత్తం వ్యవధి లేదా తక్కువ వ్యవధి కావచ్చు",
        "రాష్ట్రపతి ఉత్తర్వును రద్దు చేసే వరకు",
        "నిరవధికంగా"
      ],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 359 రాష్ట్రపతి పేర్కొన్న కాలానికి ప్రాథమిక హక్కుల అమలును నిలిపివేస్తుంది, ఇది అత్యవసర పరిస్థితి యొక్క మొత్తం వ్యవధి లేదా తక్కువ వ్యవధి కావచ్చు.",
    ),
    Question(
      questionText: "రాష్ట్రపతి పాలన విధించడానికి కారణాలు ఏమిటి?",
      options:[
        "బాహ్య దూకుడు మరియు అంతర్గత భంగం",
        "రాష్ట్రంలో రాజ్యాంగ యంత్రాంగం వైఫల్యం",
        "కేంద్రం నుండి వచ్చిన ఆదేశాలను పాటించకపోవడం",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"రాజ్యాంగ యంత్రాంగం వైఫల్యం, కేంద్రం ఆదేశాలను పాటించకపోవడం లేదా రాజ్యాంగ నిబంధనలకు అనుగుణంగా రాష్ట్ర ప్రభుత్వాన్ని కొనసాగించలేని పరిస్థితి ఆధారంగా రాష్ట్రపతి పాలన విధించవచ్చు.",
    ),

    Question(
      questionText: "గవర్నర్ నివేదిక లేకుండా రాష్ట్రపతి ఏ పరిస్థితులలో రాష్ట్రపతి పాలన విధించవచ్చు?",
      options:[
        "బాహ్య దూకుడు ఉన్నప్పుడు మాత్రమే",
        "అంతర్గత భంగం ఉన్నప్పుడు మాత్రమే","గవర్నర్ నివేదిక లేకుండా రాష్ట్రపతి పని చేయలేరు",
        "ఎట్టి పరిస్థితుల్లోనూ ఆర్టికల్ 356 షరతులు సంతృప్తికరంగా ఉంటాయి"
      ],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్రపతి పాలన విధించడానికి ఆర్టికల్ 356లో పేర్కొన్న షరతులను సంతృప్తిపరిచే ఏ పరిస్థితిలోనైనా గవర్నర్ నివేదిక లేకుండా రాష్ట్రపతి వ్యవహరించవచ్చు.",
    ),

    Question(
      questionText: "పార్లమెంటు ఉభయ సభలు ఆమోదించినట్లయితే రాష్ట్రపతి పాలన ఎంతకాలం కొనసాగుతుంది?",
      options:[
        "ఒక సంవత్సరం",
        "రెండు సంవత్సరాలు",
        "ఆరు నెలల",
        "మూడు సంవత్సరాలు"
      ],
      correctAnswerIndex: 0,
      explanation:"పార్లమెంటు ఉభయ సభలు ఆమోదించినట్లయితే, రాష్ట్రపతి పాలన ఒక సంవత్సరం పాటు కొనసాగవచ్చు. ప్రతి ఆరు నెలలకు పార్లమెంటు ఆమోదంతో గరిష్టంగా మూడు సంవత్సరాల పాటు పొడిగించవచ్చు.",
    ),
    Question(
      questionText: "రాష్ట్రంలో రాష్ట్రపతి పాలన విధించినప్పుడు రాష్ట్రపతికి ఎలాంటి అధికారాలు లభిస్తాయి?",
      options:[
        "కొత్త గవర్నర్‌ను నియమించే అధికారం",
        "రాష్ట్ర శాసనసభను రద్దు చేయగల సామర్థ్యం",
        "రాష్ట్ర హైకోర్టును సస్పెండ్ చేయడానికి అధికారం",
        "గవర్నర్ లేదా ఏదైనా ఇతర కార్యనిర్వాహక అధికారంలో ఉన్న రాష్ట్ర ప్రభుత్వ విధులు మరియు అధికారాలను చేపట్టడం"
      ],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్రపతి పాలన సమయంలో, రాష్ట్రపతి రాష్ట్ర ప్రభుత్వ విధులను మరియు గవర్నర్‌కు లేదా మరేదైనా కార్యనిర్వాహక అధికారంలో ఉన్న అధికారాలను చేపట్టవచ్చు.",
    ),

    Question(
      questionText: "పాఠ్యాంశం ప్రకారం రాష్ట్రపతి పాలన విధించబడినప్పుడు రాష్ట్రపతి ఎలాంటి చర్యలు తీసుకోవచ్చు?",
      options:[
        "రాష్ట్ర శాసనసభ అధికారాలను రాష్ట్రపతి అమలు చేయవలసిందిగా ప్రకటించండి",
        "రాష్ట్రంలో ఏదైనా సంస్థ లేదా అధికారానికి సంబంధించిన రాజ్యాంగ నిబంధనలను నిలిపివేయండి",
        "రాష్ట్ర శాసనసభను రద్దు చేయండి",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్రపతి పాలన సమయంలో, రాష్ట్రపతి రాష్ట్ర శాసనసభ అధికారాలను పార్లమెంటు అమలు చేసేలా ప్రకటించవచ్చు, రాజ్యాంగ నిబంధనలను నిలిపివేయవచ్చు మరియు రాష్ట్ర శాసనసభను రద్దు చేయవచ్చు.",
    ),

    Question(
      questionText: "రాష్ట్రపతి పాలనలో పార్లమెంటు లేదా రాష్ట్రపతి చేసిన చట్టాలకు ఏమవుతుంది?",
      options:[
        "రాష్ట్రపతి పాలన ముగియడంతో అవి స్వయంచాలకంగా ముగుస్తాయి",
        "రాష్ట్రపతి పాలన తర్వాత కూడా అవి అమలులో ఉంటాయి",
        "అవి రాష్ట్ర శాసనసభ ద్వారా తక్షణం రద్దుకు లోబడి ఉంటాయి",
        "రాష్ట్రపతి పాలన ముగిసిన తర్వాత వాటిని మళ్లీ అమలులోకి తీసుకురావాలి"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్రపతి పాలనలో పార్లమెంటు లేదా రాష్ట్రపతి చేసిన చట్టాలు రాష్ట్రపతి పాలన ముగిసిన తర్వాత కూడా అమలులో ఉంటాయి. వాటిని రాష్ట్ర శాసనసభ రద్దు చేయవచ్చు, మార్చవచ్చు లేదా మళ్లీ అమలు చేయవచ్చు.",
    ),
    Question(
      questionText: "టెక్స్ట్ ప్రకారం, 1950 నుండి ఎన్నిసార్లు రాష్ట్రపతి పాలన విధించబడింది?",
      options:["100 కంటే ఎక్కువ సార్లు", "సుమారు 75 సార్లు", "125 కంటే ఎక్కువ సార్లు", "సుమారు 50 సార్లు"],
      correctAnswerIndex: 2,
      explanation:"1950 నుండి, 125 కంటే ఎక్కువ సందర్భాలలో రాష్ట్రపతి పాలన విధించబడింది.",
    ),

    Question(
      questionText: "మొదటిసారి రాష్ట్రపతి పాలన ఎప్పుడు విధించబడింది మరియు ఏ రాష్ట్రంలో?",
      options:["పంజాబ్‌లో 1951", "తమిళనాడులో 1955", "1960 మహారాష్ట్రలో", "ఉత్తరప్రదేశ్‌లో 1965"],
      correctAnswerIndex: 0,
      explanation:"1951లో పంజాబ్‌లో మొదటిసారి రాష్ట్రపతి పాలన విధించబడింది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 356 ఉపయోగం గురించి డా. బి.ఆర్. అంబేద్కర్ ఏమి ఆశించారు?",
      options:[
        "క్రమాన్ని నిర్వహించడానికి ఇది తరచుగా ఉపయోగించబడుతుందని అతను ఆశించాడు.",
        "అది 'డెడ్ లెటర్'గా మిగిలిపోతుందని మరియు చివరి ప్రయత్నంగా మాత్రమే ఉపయోగించబడుతుందని అతను ఆశించాడు.",
        "పరిపాలించే రాష్ట్రాలలో ఇది ఒక సాధారణ చర్య అని అతను ఆశించాడు.",
        "ఇది రాజ్యాంగ విరుద్ధమని ప్రకటించబడుతుందని అతను ఆశించాడు."
      ],
      correctAnswerIndex: 1,
      explanation:"Dr. B.R. అంబేద్కర్ ఆర్టికల్ 356 'మృత-లేఖ'గా మిగిలిపోతుందని మరియు చివరి ప్రయత్నంగా మాత్రమే ఉపయోగించబడుతుందని ఆశించారు.",
    ),
    Question(
      questionText: "ఏ పరిస్థితులలో రాష్ట్రపతి ఆర్థిక అత్యవసర పరిస్థితిని ప్రకటించవచ్చు?",
      options:[
        "జాతీయ భద్రతకు ముప్పు ఉన్నప్పుడు.",
        "భారతదేశం యొక్క ఆర్థిక స్థిరత్వం లేదా క్రెడిట్ లేదా దాని భూభాగంలోని ఏదైనా భాగానికి ముప్పు ఉన్నప్పుడు.",
        "ఒక రాష్ట్రంలో రాజ్యాంగ యంత్రాంగం వైఫల్యం చెందినప్పుడు.",
        "దేశంలో అంతర్గత కలహాల ముప్పు ఉన్నప్పుడు."
      ],
      correctAnswerIndex: 1,
      explanation:"భారతదేశం లేదా దాని భూభాగంలోని ఏదైనా భాగానికి ఆర్థిక స్థిరత్వం లేదా క్రెడిట్‌కు ముప్పు ఏర్పడినప్పుడు రాష్ట్రపతి ఆర్థిక అత్యవసర పరిస్థితిని ప్రకటించవచ్చు.",
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
    home: parlimentarySystem_te(),
  ));
}

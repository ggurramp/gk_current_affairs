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

class national_income_te extends StatefulWidget {
  final String? userIdentifier;

  national_income_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<national_income_te> createState() => _national_income_teState();
}

class _national_income_teState extends State<national_income_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "జాతీయ ఆదాయం అంటే ఏమిటి మరియు అది ఎలా నిర్వచించబడింది?",
      options:[
        "ఎగుమతులు మరియు దిగుమతుల ద్వారా దేశం సంపాదించిన మొత్తం ఆదాయం.",
        "ఒక నిర్దిష్ట వ్యవధిలో దేశంలో ఉత్పత్తి చేయబడిన అన్ని తుది వస్తువులు మరియు సేవల మొత్తం విలువ.",
        "పన్నులు మరియు సబ్సిడీల ద్వారా ప్రభుత్వం ఉత్పత్తి చేసే ఆదాయం.",
        "ఒక దేశంలో పౌరులు వినియోగించే అన్ని వస్తువులు మరియు సేవల మొత్తం విలువ."
      ],
      correctAnswerIndex: 1,
      explanation:"జాతీయ ఆదాయం అనేది ఒక నిర్దిష్ట వ్యవధిలో (సాధారణంగా ఒక సంవత్సరం) దేశంలో ఉత్పత్తి చేయబడిన అన్ని తుది వస్తువులు మరియు సేవల మొత్తం విలువగా నిర్వచించబడింది.",
    ),
    Question(
      questionText: "జాతీయ ఆదాయం యొక్క కొలతలు ఏమిటి?",
      options:[
        "GDP, GNP, NNP, PI, DPI",
        "GNP, CPI, WPI, GDP డిఫ్లేటర్",
        "వ్యక్తిగత ఆదాయం, పునర్వినియోగపరచలేని వ్యక్తిగత ఆదాయం, నామమాత్రపు ఆదాయం",
        "GDP, NNP, CPI, DPI, GDP డిఫ్లేటర్"
      ],
      correctAnswerIndex: 0,
      explanation:"జాతీయ ఆదాయం యొక్క కొలతలలో GDP, GNP, NNP, PI (వ్యక్తిగత ఆదాయం) మరియు DPI (డిస్పోజబుల్ పర్సనల్ ఆదాయం) ఉన్నాయి.",
    ),
    Question(
      questionText: "GDP అంటే ఏమిటి మరియు అది ఎలా లెక్కించబడుతుంది?",
      options:[
        "పౌరులు మరియు విదేశీ పౌరులు ఉత్పత్తి చేసే వస్తువులు మరియు సేవల మొత్తం విలువ.",
        "ఒక నిర్దిష్ట కాలంలో దేశం యొక్క భౌగోళిక సరిహద్దులో ఉత్పత్తి చేయబడిన తుది వస్తువులు మరియు సేవల మొత్తం విలువ.",
        "ప్రత్యక్ష పన్నులను తీసివేసిన తర్వాత వ్యక్తులు పొందిన మొత్తం ఆదాయం.",
        "భారతదేశంలో మరియు విదేశాలలో భారతీయులు ఉత్పత్తి చేసే వస్తువుల మొత్తం విలువ."
      ],
      correctAnswerIndex: 1,
      explanation:"GDP అనేది ఒక నిర్దిష్ట వ్యవధిలో (సాధారణంగా ఒక సంవత్సరం) దేశం యొక్క భౌగోళిక సరిహద్దులో ఉత్పత్తి చేయబడిన తుది వస్తువులు మరియు సేవల మొత్తం విలువ.",
    ),
    Question(
      questionText: "GNP అంటే ఏమిటి మరియు ఇది GDP నుండి ఎలా భిన్నంగా ఉంటుంది?",
      options:[
        "నివాసి మరియు నాన్-రెసిడెంట్ పౌరులు ఉత్పత్తి చేసే వస్తువుల మొత్తం విలువ; భారతదేశంలోని విదేశీయుల ఆదాయాన్ని మినహాయిస్తుంది.",
        "ప్రత్యక్ష పన్నులను తీసివేసిన తర్వాత వ్యక్తులు పొందిన మొత్తం ఆదాయం.",
        "భారత జాతీయులు విదేశాల్లో ఉత్పత్తి చేసే తుది వస్తువులు మరియు సేవల మొత్తం విలువ.",
        "భారతదేశంలో భారతీయులు ఉత్పత్తి చేసే తుది వస్తువులు మరియు సేవల మొత్తం విలువ."
      ],
      correctAnswerIndex: 0,
      explanation:"GNP అనేది భారతదేశంలో నివసించే విదేశీయుల ఆదాయాన్ని మినహాయించి, దేశంలోని నివాసి మరియు నాన్-రెసిడెంట్ పౌరులు ఉత్పత్తి చేసే వస్తువుల మొత్తం విలువ.",
    ),
    Question(
      questionText: "నికర జాతీయ ఉత్పత్తి (NNP) అంటే ఏమిటి మరియు అది ఎలా లెక్కించబడుతుంది?",
      options:[
        "ప్రత్యక్ష పన్నులను తీసివేసిన తర్వాత వ్యక్తులు పొందిన మొత్తం ఆదాయం.",
        "విదేశాలలో భారతీయులు ఉత్పత్తి చేసే తుది వస్తువులు మరియు సేవల మొత్తం విలువ.",
        "GNP మైనస్ తరుగుదల.",
        "ఒక నిర్దిష్ట కాలంలో భారతీయులు ఉత్పత్తి చేసే తుది వస్తువులు మరియు సేవల మొత్తం విలువ."
      ],
      correctAnswerIndex: 2,
      explanation:"NNP స్థూల జాతీయ ఉత్పత్తి (GNP) నుండి తరుగుదల తీసివేయడం ద్వారా లెక్కించబడుతుంది: NNP = GNP – తరుగుదల.",
    ),
    Question(
      questionText: "వ్యక్తిగత ఆదాయం అంటే ఏమిటి మరియు అది ఎలా లెక్కించబడుతుంది?",
      options:[
        "పౌరులు వినియోగించే వస్తువులు మరియు సేవల మొత్తం విలువ.",
        "ప్రత్యక్ష పన్నులను తీసివేసిన తర్వాత వ్యక్తులు పొందిన మొత్తం ఆదాయం.",
        "ఎగుమతులు మరియు దిగుమతుల ద్వారా దేశం సంపాదించిన మొత్తం ఆదాయం.",
        "భారతదేశంలో భారతీయులు ఉత్పత్తి చేసే తుది వస్తువులు మరియు సేవల మొత్తం విలువ."
      ],
      correctAnswerIndex: 1,
      explanation:"వ్యక్తిగత ఆదాయం అనేది ఒక సంవత్సరంలో దేశంలోని ప్రజలు అందుకున్న మొత్తం ఆదాయం, జాతీయ ఆదాయం + బదిలీ చెల్లింపులు - కార్పొరేట్ యొక్క బహిర్గతం చేయని లాభాలు + సామాజిక భద్రతా నిబంధనల కోసం చెల్లింపు.",
    ),
    Question(
      questionText: "డిస్పోజబుల్ వ్యక్తిగత ఆదాయం అంటే ఏమిటి మరియు అది ఎలా లెక్కించబడుతుంది?",
      options:[
        "ప్రత్యక్ష పన్నులను తీసివేసిన తర్వాత వ్యక్తులకు లభించే ఆదాయం.",
        "ప్రత్యక్ష పన్నులను తీసివేయడానికి ముందు వ్యక్తులకు ఆదాయం అందుబాటులో ఉంటుంది.",
        "పరోక్ష పన్నులను తీసివేసిన తర్వాత వ్యాపారాలకు ఆదాయం అందుబాటులో ఉంటుంది.",
        "పరోక్ష పన్నులను తీసివేయడానికి ముందు వ్యాపారాలకు ఆదాయం అందుబాటులో ఉంటుంది."
      ],
      correctAnswerIndex: 0,
      explanation:"డిస్పోజబుల్ పర్సనల్ ఇన్‌కమ్ అనేది ప్రత్యక్ష పన్నులను తీసివేసిన తర్వాత వ్యక్తులకు లభించే ఆదాయం: DPI = వ్యక్తిగత ఆదాయం - ప్రత్యక్ష పన్నులు.",
    ),
    Question(
      questionText: "వాస్తవ ఆదాయం అంటే ఏమిటి మరియు అది నామమాత్రపు ఆదాయం నుండి ఎలా భిన్నంగా ఉంటుంది?",
      options:[
        "ఆదాయం బేస్ ఇయర్ ధరను ఉపయోగించి కొలుస్తారు; నామమాత్రపు ఆదాయం ప్రస్తుత సంవత్సరం ధరను ఉపయోగించి కొలుస్తారు.",
        "ఆదాయం ప్రస్తుత సంవత్సరం ధరను ఉపయోగించి కొలుస్తారు; నామమాత్రపు ఆదాయం మూల సంవత్సరం ధరను ఉపయోగించి కొలుస్తారు.",
        "ఆదాయాన్ని విదేశీ మారకపు రేట్లు ఉపయోగించి కొలుస్తారు; నామమాత్రపు ఆదాయం దేశీయ కరెన్సీని ఉపయోగించి కొలుస్తారు.",
        "ప్రభుత్వ నిర్ణయించిన ధరలను ఉపయోగించి ఆదాయం కొలుస్తారు; మార్కెట్ ధరలను ఉపయోగించి నామమాత్రపు ఆదాయం కొలుస్తారు."
      ],
      correctAnswerIndex: 0,
      explanation:"నిజమైన ఆదాయం అనేది ఆదాయాన్ని ఉపయోగించి కొలుస్తారుఆధార సంవత్సరం ధరలు, నామమాత్రపు ఆదాయాన్ని ప్రస్తుత సంవత్సరం ధరలను ఉపయోగించి కొలుస్తారు.",
    ),
    Question(
      questionText: "GDP డిఫ్లేటర్ అంటే ఏమిటి మరియు అది ఎలా లెక్కించబడుతుంది?",
      options:[
        "మొత్తం ధర పెరుగుదల కొలమానం; (నామినల్ GDP/రియల్ GDP) × 100గా లెక్కించబడుతుంది.",
        "వినియోగదారు ధరల సూచిక ఆధారంగా ద్రవ్యోల్బణం యొక్క కొలత.",
        "మార్కెట్ ధర హెచ్చుతగ్గుల కొలత; (మార్కెట్ ధర - కారకం ధర) / పరోక్ష పన్నులుగా లెక్కించబడుతుంది.",
        "మారకం రేటు హెచ్చుతగ్గుల కొలత; (దేశీయ ధరల సూచిక/విదేశీ ధర సూచిక) × 100గా లెక్కించబడుతుంది."
      ],
      correctAnswerIndex: 0,
      explanation:"GDP డిఫ్లేటర్ అనేది మొత్తం ధర పెరుగుదల యొక్క కొలత, (నామమాత్ర GDP/రియల్ GDP) × 100గా లెక్కించబడుతుంది.",
    ),
    Question(
        questionText: "జాతీయ ఆదాయాన్ని లెక్కించడానికి మొదటి ప్రయత్నం ఎప్పుడు జరిగింది మరియు 'పావర్టీ అండ్ అన్-బ్రిటీష్ రూల్ ఇన్ ఇండియా' అనే పుస్తకాన్ని ఎవరు రాశారు?",
        options:[
          "1930, జవహర్ లాల్ నెహ్రూ",
          "1868, దాదాభాయ్ నౌరోజీ",
          "1949, పి.సి. మహలనోబిస్",
          "1925-29, డా. వి.కె.ఆర్.వి. రావు"
        ],
        correctAnswerIndex: 1,
        explanation:"1868లో దాదాభాయ్ నౌరోజీ 'పావర్టీ అండ్ అన్-బ్రిటీష్ రూల్ ఇన్ ఇండియా' అనే పుస్తకాన్ని రచించినప్పుడు జాతీయ ఆదాయాన్ని లెక్కించే మొదటి ప్రయత్నం జరిగింది.",
    ),
    Question(
      questionText: "1925-29 కాలానికి శాస్త్రీయంగా జాతీయ ఆదాయాన్ని ఎవరు అంచనా వేశారు?",
      options:[
        "P.C. మహలనోబిస్",
        "జవహర్ లాల్ నెహ్రూ",
        "డా. వి.కె.ఆర్.వి. రావు",
        "దాదాభాయ్ నౌరోజీ"
      ],
      correctAnswerIndex: 2,
      explanation:"డా. వి.కె.ఆర్.వి. రావు 1925-29 కాలానికి జాతీయ ఆదాయాన్ని శాస్త్రీయంగా అంచనా వేశారు.",
    ),
    Question(
      questionText: "స్వాతంత్ర్యం తర్వాత జాతీయ ఆదాయ కమిటీ ఎప్పుడు ఏర్పడింది?",
      options:[
        "1925-29",
        "1868",
        "1949",
        "2015"
      ],
      correctAnswerIndex: 2,
      explanation:"జాతీయ ఆదాయ కమిటీ 1949లో స్వాతంత్ర్యం తర్వాత పి.సి. మహలనోబిస్ అధ్యక్షతన ఏర్పడింది.",
    ),
    Question(
      questionText: "జాతీయ ఆదాయ కమిటీ తర్వాత ఏ సంస్థ ఏర్పడింది మరియు దాని పాత్ర ఏమిటి?",
      options:[
        "లేబర్ బ్యూరో",
        "సెంట్రల్ స్టాటిస్టికల్ ఆర్గనైజేషన్ (CSO)",
        "నేషనల్ డెవలప్‌మెంట్ కౌన్సిల్ (NDC)",
        "నీతి ఆయోగ్"
      ],
      correctAnswerIndex: 1,
      explanation:"జాతీయ ఆదాయ కమిటీ తర్వాత, భారతదేశంలో జాతీయ ఆదాయాన్ని అంచనా వేయడంలో పాత్ర పోషించేందుకు సెంట్రల్ స్టాటిస్టికల్ ఆర్గనైజేషన్ (CSO) ఏర్పడింది.",
    ),
    Question(
      questionText: "భారతదేశంలో లెక్కించబడే వివిధ వెయిటెడ్ ధర సూచికలు ఏమిటి?",
      options:[
        "CPI, WPI, GDP డిఫ్లేటర్",
        "హోల్‌సేల్ ప్రైస్ ఇండెక్స్ (WPI), పాత వినియోగదారు ధర సూచిక, కొత్త వినియోగదారు ధర సూచిక, వినియోగదారు ఆహార ధరల సూచిక",
        "GDP, NNP, CPI, DPI",
        "GNP, CPI- IW, CPI- UNME, CPI-AL, CPI- RL"
      ],
      correctAnswerIndex: 1,
      explanation:"భారతదేశంలో లెక్కించబడిన వివిధ వెయిటెడ్ ధర సూచికలలో టోకు ధరల సూచిక (WPI), పాత వినియోగదారు ధర సూచిక, కొత్త వినియోగదారు ధర సూచిక మరియు వినియోగదారు ఆహార ధరల సూచిక ఉన్నాయి.",
    ),
    Question(
      questionText: "భారతదేశంలో హోల్‌సేల్ ప్రైస్ ఇండెక్స్ (WPI)కి ప్రస్తుత ఆధార సంవత్సరం ఏమిటి?",
      options:[
        "2011-12",
        "2001",
        "2012",
        "1986-87"
      ],
      correctAnswerIndex: 0,
      explanation:"భారతదేశంలో టోకు ధరల సూచిక (WPI)కి ప్రస్తుత ఆధార సంవత్సరం 2011-12.",
    ),
    Question(
      questionText: "హోల్‌సేల్ ప్రైస్ ఇండెక్స్ (WPI) దేనిని కొలుస్తుంది?",
      options:[
        "హోల్‌సేల్ మార్కెట్‌లో వర్తకం చేసే వస్తువుల ధరలో మార్పు.",
        "మార్కెట్ ధరల ఆధారంగా మొత్తం ద్రవ్యోల్బణం.",
        "పారిశ్రామిక కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పు.",
        "విదేశీ వాణిజ్యం ఆధారంగా మారకం రేటు హెచ్చుతగ్గులు."
      ],
      correctAnswerIndex: 0,
      explanation:"హోల్‌సేల్ ప్రైస్ ఇండెక్స్ (WPI) టోకు మార్కెట్‌లో వర్తకం చేసే వస్తువుల ధరలో మార్పును కొలుస్తుంది.",
    ),
    Question(
      questionText: "భారతదేశంలో హోల్‌సేల్ ప్రైస్ ఇండెక్స్ (WPI)ని ఏ సంస్థ ప్రచురిస్తుంది?",
      options:[
        "సెంట్రల్ స్టాటిస్టికల్ ఆర్గనైజేషన్ (CSO)",
        "లేబర్ బ్యూరో",
        "ఆర్థిక సలహాదారు, వాణిజ్యం & పరిశ్రమల మంత్రిత్వ శాఖ",
        "నేషనల్ డెవలప్‌మెంట్ కౌన్సిల్ (NDC)"
      ],
      correctAnswerIndex: 2,
      explanation:"భారతదేశంలో టోకు ధరల సూచిక (WPI) ఆర్థిక సలహాదారు, వాణిజ్య & పరిశ్రమల మంత్రిత్వ శాఖ ద్వారా ప్రచురించబడింది.",
    ),
    Question(
      questionText: "పారిశ్రామిక కార్మికులకు (CPI- IW) వినియోగదారుల ధరల సూచిక అంటే ఏమిటి మరియు దానిని ఎవరు ప్రచురిస్తారు?",
      options:[
        "పారిశ్రామిక కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; లేబర్ బ్యూరో ప్రచురించింది.",
        "పట్టణ నాన్-మాన్యువల్ ఉద్యోగులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; CSO ద్వారా ప్రచురించబడింది.",
        "వ్యవసాయ కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; లేబర్ బ్యూరో ప్రచురించింది.",
        "కొలతగ్రామీణ కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పు; లేబర్ బ్యూరో ప్రచురించింది."
      ],
      correctAnswerIndex: 0,
      explanation:"పారిశ్రామిక కార్మికుల వినియోగదారుల ధరల సూచిక (CPI-IW) పారిశ్రామిక కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది మరియు లేబర్ బ్యూరోచే ప్రచురించబడుతుంది.",
    ),
    Question(
      questionText: "భారతదేశంలో పారిశ్రామిక కార్మికులకు (CPI-IW) వినియోగదారుల ధరల సూచికకు ప్రస్తుత ఆధార సంవత్సరం ఏమిటి?",
      options:[
        "2011-12",
        "2001",
        "2012",
        "1986-87"
      ],
      correctAnswerIndex: 1,
      explanation:"భారతదేశంలో పారిశ్రామిక కార్మికులకు (CPI-IW) వినియోగదారుల ధరల సూచికకు ప్రస్తుత ఆధార సంవత్సరం 2001.",
    ),
    Question(
      questionText: "అర్బన్ నాన్-మాన్యువల్ ఎంప్లాయీస్ (CPI- UNME) కోసం వినియోగదారు ధర సూచిక అంటే ఏమిటి మరియు దానిని ఎవరు ప్రచురించేవారు?",
      options:[
        "పట్టణ నాన్-మాన్యువల్ ఉద్యోగులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; CSO ద్వారా ప్రచురించబడింది.",
        "వ్యవసాయ కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; లేబర్ బ్యూరో ప్రచురించింది.",
        "గ్రామీణ కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; లేబర్ బ్యూరో ప్రచురించింది.",
        "హోల్‌సేల్ మార్కెట్‌లో వర్తకం చేయబడిన వస్తువుల ధరలో మార్పును కొలుస్తుంది; ఆర్థిక సలహాదారుచే ప్రచురించబడింది."
      ],
      correctAnswerIndex: 1,
      explanation:"పట్టణ నాన్-మాన్యువల్ ఉద్యోగుల కోసం వినియోగదారు ధర సూచిక (CPI-UNME) పట్టణ మాన్యువల్ కాని ఉద్యోగులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది మరియు CSO ద్వారా ప్రచురించబడుతుంది.",
    ),
    Question(
      questionText: "భారతదేశంలో వ్యవసాయ కార్మికుల (CPI-AL) వినియోగదారుల ధరల సూచికకు ప్రస్తుత ఆధార సంవత్సరం ఏమిటి?",
      options:[
        "2011-12",
        "2001",
        "2012",
        "1986-87"
      ],
      correctAnswerIndex: 2,
      explanation:"భారతదేశంలో వ్యవసాయ కార్మికుల (CPI-AL) వినియోగదారుల ధరల సూచికకు ప్రస్తుత ఆధార సంవత్సరం 1986-87.",
    ),
    Question(
      questionText: "గ్రామీణ కార్మికులకు (CPI-RL) వినియోగదారుల ధరల సూచిక అంటే ఏమిటి మరియు దానిని ఎవరు ప్రచురిస్తారు?",
      options:[
        "వ్యవసాయ కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; లేబర్ బ్యూరో ప్రచురించింది.",
        "హోల్‌సేల్ మార్కెట్‌లో వర్తకం చేయబడిన వస్తువుల ధరలో మార్పును కొలుస్తుంది; ఆర్థిక సలహాదారుచే ప్రచురించబడింది.",
        "లేబర్ బ్యూరో ప్రచురించిన పారిశ్రామిక కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది.",
        "పట్టణ నాన్-మాన్యువల్ ఉద్యోగులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది; CSO ద్వారా ప్రచురించబడింది."
      ],
      correctAnswerIndex: 0,
      explanation:"గ్రామీణ కార్మికుల వినియోగదారుల ధరల సూచిక (CPI-RL) గ్రామీణ కార్మికులు (వ్యవసాయ కార్మికులతో సహా) వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది మరియు లేబర్ బ్యూరోచే ప్రచురించబడుతుంది.",
    ),
    Question(
      questionText: "ఫిబ్రవరి 2011లో ప్రవేశపెట్టిన కొత్త వినియోగదారు ధర సూచిక (CPI) యొక్క భాగాలు ఏమిటి?",
      options:[
        "సిపిఐ (రూరల్), సిపిఐ (అర్బన్), సిపిఐ (కంబైన్డ్)",
        "CPI (అర్బన్), CPI (కంబైన్డ్), కన్స్యూమర్ ఫుడ్ ప్రైస్ ఇండెక్స్",
        "CPI (గ్రామీణ), CPI (కంబైన్డ్), కన్స్యూమర్ ఫుడ్ ప్రైస్ ఇండెక్స్",
        "CPI (రూరల్), CPI (అర్బన్), వినియోగదారుల ఆహార ధరల సూచిక"
      ],
      correctAnswerIndex: 0,
      explanation:"ఫిబ్రవరి 2011లో ప్రవేశపెట్టిన కొత్త వినియోగదారుల ధరల సూచిక (CPI)లోని భాగాలు CPI (గ్రామీణ), CPI (అర్బన్) మరియు CPI (కంబైన్డ్) ఉన్నాయి.",
    ),
    Question(
      questionText: "కస్యూమర్ ఫుడ్ ప్రైస్ ఇండెక్స్ అంటే ఏమిటి మరియు అది ఎందుకు ఉపయోగించబడుతుంది?",
      options:[
        "హోల్‌సేల్ మార్కెట్‌లో వర్తకం చేసే వస్తువుల ధరలో మార్పును కొలుస్తుంది.",
        "ప్రజలు వినియోగించే ఆహార పదార్థాల ధరలో మార్పును కొలుస్తుంది.",
        "వ్యవసాయ కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది.",
        "పారిశ్రామిక కార్మికులు వినియోగించే వస్తువుల ధరలో మార్పును కొలుస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"వినియోగదారుల ఆహార ధరల సూచిక ప్రజలు వినియోగించే ఆహార పదార్థాల రిటైల్ ధరలలో మార్పును కొలుస్తుంది.",
    ),
    Question(
      questionText: "GDP డిఫ్లేటర్ అంటే ఏమిటి మరియు అది ఎలా లెక్కించబడుతుంది?",
      options:[
        "మొత్తం ధర పెరుగుదల కొలమానం; (నామినల్ GDP/రియల్ GDP) × 100గా లెక్కించబడుతుంది.",
        "వినియోగదారు ధరల సూచిక ఆధారంగా ద్రవ్యోల్బణం యొక్క కొలత.",
        "మార్కెట్ ధర హెచ్చుతగ్గుల కొలత; (మార్కెట్ ధర - కారకం ధర) / పరోక్ష పన్నులుగా లెక్కించబడుతుంది.",
        "మారకం రేటు హెచ్చుతగ్గుల కొలత; (దేశీయ ధరల సూచిక/విదేశీ ధర సూచిక) × 100గా లెక్కించబడుతుంది."
      ],
      correctAnswerIndex: 0,
      explanation:"GDP డిఫ్లేటర్ అనేది మొత్తం ధర పెరుగుదల యొక్క కొలత, (నామమాత్ర GDP/రియల్ GDP) × 100గా లెక్కించబడుతుంది.",
    ),
    Question(
      questionText: "GDP డిఫ్లేటర్ అత్యంత ఖచ్చితమైన కొలతగా ఎందుకు పరిగణించబడుతుంది?",
      options:[
        "ఇది ఎంచుకున్న వస్తువు బుట్టలను మాత్రమే కవర్ చేస్తుంది.",
        "ఇది ప్రతి వారం/నెలవారీగా ప్రచురించబడుతుంది.","ఇది మార్కెట్ ధరలపై ఆధారపడి ఉంటుంది.",
        "ఇది ఆర్థిక వ్యవస్థలో ఉత్పత్తి చేయబడిన అన్ని వస్తువులు మరియు సేవలను కవర్ చేస్తుంది."
      ],
      correctAnswerIndex: 3,
      explanation:"GDP డిఫ్లేటర్ అత్యంత ఖచ్చితమైన కొలమానంగా పరిగణించబడుతుంది ఎందుకంటే ఇది ఆర్థిక వ్యవస్థలో ఉత్పత్తి చేయబడిన అన్ని వస్తువులు మరియు సేవలను కవర్ చేస్తుంది, ఎంచుకున్న వస్తువు బుట్టల నుండి ఉత్పన్నమయ్యే ఇతర సూచికల వలె కాకుండా.",
    ),
    Question(
      questionText: "GDP డిఫ్లేటర్‌ను ప్రభుత్వం ఎందుకు సాధారణంగా ఉపయోగించరు?",
      options:[
        "ఇది త్రైమాసికానికి లెక్కించబడుతుంది, వారం/నెలవారీ కాదు.",
        "ఇది మార్కెట్ ధరలపై ఆధారపడి ఉంటుంది.",
        "ఇది ఆర్థిక వ్యవస్థలో ఉత్పత్తి చేయబడిన అన్ని వస్తువులు మరియు సేవలను కవర్ చేయదు.",
        "ఇది ఇతర సూచికల కంటే తక్కువ ఖచ్చితమైనది."
      ],
      correctAnswerIndex: 0,
      explanation:"GDP డిఫ్లేటర్‌ను ప్రభుత్వం సాధారణంగా ఉపయోగించదు ఎందుకంటే దాని డేటా త్రైమాసికానికి వస్తుంది, వారానికి/నెలవారీ ప్రాతిపదికన కాదు.",
    ),
    Question(
      questionText: "నీతి ఆయోగ్ ఎప్పుడు స్థాపించబడింది మరియు అది ఏ పాత్ర పోషించింది?",
      options:[
        "1950, పంచవర్ష ప్రణాళికల రూపకల్పన.",
        "2015, ప్రణాళికా సంఘం భర్తీ.",
        "1980, హరిత విప్లవం అమలు.",
        "1992, కొత్త ఆర్థిక విధానం ప్రారంభం."
      ],
      correctAnswerIndex: 1,
      explanation:"సుస్థిర అభివృద్ధి లక్ష్యాలను సాధించడం మరియు సహకార సమాఖ్య విధానాన్ని పెంపొందించడం అనే ద్వంద్వ లక్ష్యంతో ప్రణాళికా సంఘం స్థానంలో నీతి ఆయోగ్ 2015లో స్థాపించబడింది.",
    ),
    Question(
      questionText: "నీతి ఆయోగ్ యొక్క కార్యక్రమాలు ఏమిటి?",
      options:[
        "మూడు సంవత్సరాల కార్యాచరణ ప్రణాళిక, ఏడేళ్ల వ్యూహ ప్రణాళిక, పదిహేనేళ్ల విజన్ ప్లాన్.",
        "పంచవర్ష ప్రణాళికలు, వార్షిక ప్రణాళికలు, దశాబ్ధ ప్రణాళికలు.",
        "ఉదారీకరణ, ప్రైవేటీకరణ, ప్రపంచీకరణ.",
        "భూ సంస్కరణలు, స్వావలంబన, పారిశ్రామికీకరణ."
      ],
      correctAnswerIndex: 0,
      explanation:"నీతి ఆయోగ్ యొక్క చొరవలలో మూడు సంవత్సరాల కార్యాచరణ ప్రణాళిక, ఏడేళ్ల వ్యూహ ప్రణాళిక మరియు పదిహేనేళ్ల విజన్ ప్లాన్ ఉన్నాయి.",
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
    home: national_income_te(),
  ));
}

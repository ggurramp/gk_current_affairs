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

class wcstrctn_te extends StatefulWidget {
  final String? userIdentifier;

  wcstrctn_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<wcstrctn_te> createState() => _wcstrctn_teState();
}

class _wcstrctn_teState extends State<wcstrctn_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//92 .ప్రపంచ రాజ్యాంగం

    Question(
        questionText: "అమెరికన్ రాజ్యాంగం దాని సవరణ కోసం సూచించిన విధానం ఏమిటి?",
        options:[
          "కాంగ్రెస్ ఉభయ సభల మూడింట రెండు వంతుల ఓట్లతో సవరణను ప్రతిపాదించవచ్చు మరియు రాష్ట్రాల శాసనసభల్లో నాలుగింట మూడు వంతుల ఆమోదం పొందుతుంది.",
          "రాష్ట్ర శాసనసభలలో మూడింట రెండు వంతుల పిటిషన్‌పై కాంగ్రెస్ పిలిచిన రాజ్యాంగ సమావేశం ద్వారా ఒక సవరణను ప్రతిపాదించవచ్చు మరియు మూడు వంతుల రాష్ట్ర శాసనసభలలో సమావేశం ద్వారా ఆమోదించబడుతుంది.",
          "(i) మరియు (ii) రెండూ అమెరికన్ రాజ్యాంగాన్ని సవరించే పద్ధతులు.",
          "అధ్యక్షుడు ఏకపక్షంగా సవరణలను ప్రతిపాదించవచ్చు, అప్పుడు కాంగ్రెస్ ఉభయ సభల నుండి ఆమోదం అవసరం."
        ],
        correctAnswerIndex: 2,
        explanation:"అమెరికన్ రాజ్యాంగం దాని సవరణకు రెండు పద్ధతులను అందిస్తుంది: (i) కాంగ్రెస్ ఉభయ సభల మూడింట రెండు వంతుల ఓట్లతో మరియు మూడు వంతుల రాష్ట్ర శాసనసభల ఆమోదం ద్వారా. (ii) పిటిషన్‌పై కాంగ్రెస్ పిలిచిన రాజ్యాంగ సమావేశం ద్వారా మూడింట రెండు వంతుల రాష్ట్ర శాసనసభలు, మూడు వంతుల రాష్ట్ర శాసనసభల ఆమోదంతో."
    ),

    Question(
      questionText: "అమెరికన్ రాజ్యాంగం ప్రకారం అధ్యక్ష ఎన్నికల్లో గెలవడానికి అభ్యర్థికి ఎన్ని ఓట్లు అవసరం?",
      options:[
        "150 ఓట్లు",
        "200 ఓట్లు",
        "270 ఓట్లు",
        "300 ఓట్లు"
      ],
      correctAnswerIndex: 2,
      explanation:"అమెరికన్ అధ్యక్ష ఎన్నికలలో ఒక అభ్యర్థికి 270 ఓట్లు అవసరం, ఇది ఎలక్టోరల్ కాలేజీలో (538) మొత్తం ఓట్లలో సగం. ఇది గెలిచిన అభ్యర్థికి మెజారిటీని నిర్ధారిస్తుంది.",
    ),

    Question(
      questionText: "ఎలక్టోరల్ కాలేజీలో ఏ అభ్యర్థికి అవసరమైన మెజారిటీ రాకపోతే ఏమి జరుగుతుంది?",
      options:[
        "ప్రజల ఓటు ద్వారా రాష్ట్రపతి ఎంపిక చేయబడతారు.",
        "వైస్ ప్రెసిడెంట్ అధ్యక్షుడిగా బాధ్యతలు స్వీకరిస్తారు.",
        "హౌస్ ఆఫ్ రిప్రజెంటేటివ్స్ అత్యధిక ఓట్లతో మొదటి ముగ్గురు అభ్యర్థుల నుండి అధ్యక్షుడిని ఎన్నుకుంటుంది.",
        "అధ్యక్షుడిని నిర్ణయించడానికి ప్రత్యేక ఎన్నికలు నిర్వహిస్తారు."
      ],
      correctAnswerIndex: 2,
      explanation:"ఎలక్టోరల్ కాలేజీలో ఏ అభ్యర్థికి అవసరమైన మెజారిటీ రాకపోతే, ప్రతినిధుల సభ ఎలక్టోరల్ కాలేజీలో అత్యధిక ఓట్లతో మొదటి ముగ్గురు అభ్యర్థుల నుండి అధ్యక్షుడిని ఎన్నుకుంటుంది.",
    ),

    Question(
      questionText: "అమెరికన్ రాజ్యాంగం ప్రకారం అధ్యక్ష పదవికి పోటీ చేసే అభ్యర్థికి అర్హతలు ఏమిటి?",
      options:[
        "కనీసం 25 సంవత్సరాల వయస్సు, సహజసిద్ధ పౌరుడు, USAలో 10 సంవత్సరాలు నివాసి.",
        "సహజంగా జన్మించిన పౌరుడు, కనీసం 30 సంవత్సరాలు, USAలో 10 సంవత్సరాలు నివసిస్తున్నారు.",
        "కనీసం 35 సంవత్సరాలు, USAలో జన్మించి, 14 సంవత్సరాలు USAలో నివసిస్తున్నారు.",
        "సహజ పౌరుడు, కనీసం 40 సంవత్సరాలు, USAలో 12 సంవత్సరాలు నివసిస్తున్నారు."
      ],
      correctAnswerIndex: 2,
      explanation:"అమెరికన్ రాజ్యాంగం ప్రకారం, అధ్యక్ష పదవికి అభ్యర్థికి కనీసం 35 సంవత్సరాలు ఉండాలి, USAలో సహజంగా జన్మించిన పౌరుడు మరియు 14 సంవత్సరాలుగా USA నివాసి అయి ఉండాలి.",
    ),

    Question(
      questionText: "యునైటెడ్ స్టేట్స్ అధ్యక్షుని పదవీ కాలం ఎంత?",
      options:[
        "2 సంవత్సరాలు",
        "6 సంవత్సరాలు",
        "8 సంవత్సరాలు",
        "4 సంవత్సరాలు"
      ],
      correctAnswerIndex: 3,
      explanation:"యునైటెడ్ స్టేట్స్ ప్రెసిడెంట్ నాలుగు సంవత్సరాల నిర్ణీత పదవీకాలం కోసం పదవిని కలిగి ఉంటారు. 22వ సవరణ చట్టం 1951 ఒక వ్యక్తిని రెండుసార్లు కంటే ఎక్కువసార్లు అధ్యక్షుడిగా ఎన్నుకోకుండా పరిమితం చేస్తుంది, గరిష్ట మొత్తం పదేళ్ల పదవీకాలం.",
    ),

    Question(
      questionText: "అభిశంసన విషయంలో, విచారణను ఎవరు ప్రారంభిస్తారు మరియు విచారణకు ఎవరు అధ్యక్షత వహిస్తారు?",
      options:[
        "సెనేట్ ప్రారంభిస్తుంది మరియు అధ్యక్షుడు అధ్యక్షత వహిస్తాడు.",
        "ప్రతినిధుల సభ ప్రారంభిస్తుంది మరియు ఉపాధ్యక్షుడు అధ్యక్షత వహిస్తారు.",
        "ప్రతినిధుల సభ ప్రారంభిస్తుంది మరియు సుప్రీంకోర్టు ప్రధాన న్యాయమూర్తి అధ్యక్షత వహిస్తారు.",
        "అధ్యక్షుడు ప్రారంభిస్తారు మరియు సభ స్పీకర్ అధ్యక్షత వహిస్తారు."
      ],
      correctAnswerIndex: 2,
      explanation:"అభిశంసన విషయంలో, ప్రతినిధుల సభ మెజారిటీ ఓటుతో ప్రక్రియను ప్రారంభిస్తుంది. విచారణను సెనేట్ నిర్వహిస్తుంది, సుప్రీంకోర్టు ప్రధాన న్యాయమూర్తి అధ్యక్షత వహిస్తారు.",
    ),

    Question(
      questionText: "బ్రిటీష్ రాజ్యాంగం యొక్క ముఖ్యమైన లక్షణం ఏమిటి?",
      options:[
        "ఇది పూర్తిగా అమెరికన్ రాజ్యాంగం వలె వ్రాయబడింది.",
        "ఇది ప్రపంచంలోనే అతి పిన్న వయస్కుడైన ప్రజాస్వామ్య వ్యవస్థ.",
        "ఇది పురాతన రాజ్యాంగ వ్యవస్థ.",
        "ఇది ఫెడరలిజంపై ఆధారపడి ఉంటుంది."
      ],
      correctAnswerIndex: 2,
      explanation:"బ్రిటీష్ రాజ్యాంగం ప్రపంచంలోనే అత్యంత పురాతనమైనది మరియు దీనిని తరచుగా 'రాజ్యాంగాల తల్లి'గా సూచిస్తారు. ఇది రాచరికం, కులీనులు మరియు ప్రజాస్వామ్యం యొక్క మిశ్రమం.",
    ),

    Question(
      questionText: "రాజకీయ పద్ధతులు మరియు ఆచార ప్రవర్తన యొక్క అలిఖిత సూత్రాలను సూచించే బ్రిటిష్ రాజ్యాంగంలోని ప్రధాన అంశం ఏమిటి?",
      options:[
        "చట్టపరమైన వ్యాఖ్యానాలు",
        "గ్రేట్ చార్టర్స్",
        "చట్టాలు",
        "సమావేశాలు"
      ],
      correctAnswerIndex: 3,
      explanation:"సమ్మేళనాలు బ్రిటీష్ రాజ్యాంగంలో ప్రధాన అంశంగా ఉన్నాయి. అవి కాలక్రమేణా అభివృద్ధి చెందిన రాజకీయ పద్ధతులు మరియు ఆచార ప్రవర్తన యొక్క అలిఖిత సూత్రాలు.",
    ),

    Question(
      questionText: "బ్రిటీష్ రాజ్యాంగం వశ్యత పరంగా ఎలా వివరించబడింది?",
      options:[
        "ఇది దృఢమైనది మరియు సవరణ కోసం ప్రత్యేక విధానం అవసరం.",
        "ఇది రాజ్యాంగ సమావేశం ద్వారా మాత్రమే సవరించబడుతుంది.",
        "ఇది అనువైనది మరియు సాధారణ చట్టాల మాదిరిగానే పార్లమెంటు ద్వారా సవరించబడుతుంది.",
        "ఏదైనా సవరణకు రాచరికం నుండి ఆమోదం అవసరం."
      ],
      correctAnswerIndex: 2,
      explanation:"బ్రిటీష్ రాజ్యాంగం అనువైనది మరియు సవరణ కోసం ప్రత్యేక విధానాలు అవసరమయ్యే కొన్ని కఠినమైన రాజ్యాంగాల వలె కాకుండా, సాధారణ చట్టాల మాదిరిగానే పార్లమెంటు ద్వారా సవరించబడుతుంది.",
    ),

    Question(
      questionText: "బ్రిటీష్ రాజ్యాంగ చట్టం మరియు రాజకీయ వ్యవస్థ యొక్క ప్రధాన సూత్రం ఏమిటి?",
      options:[
        "రూల్ ఆఫ్ రాచరికం",
        "న్యాయం ప్రకారం",
        "పార్లమెంటు నియమం",
        "కులీనుల పాలన"
      ],
      correctAnswerIndex: 1,
      explanation:"చట్టం యొక్క నియమం యొక్క సిద్ధాంతం బ్రిటిష్ రాజ్యాంగం యొక్క ప్రాథమిక లక్షణం. ఇది చట్టం అత్యున్నతమైనది మరియు ప్రభుత్వం చట్టం యొక్క పరిమితుల్లో పని చేయాలని నొక్కి చెబుతుంది.",
    ),

    Question(
      questionText: "బ్రిటీష్ రాజ్యాంగ రాచరికంలో కిరీటం మరియు రాజు/రాణి మధ్య సంబంధం ఏమిటి?",
      options:[
        "కిరీటం మరియు రాజు/రాణి పర్యాయపదాలు.",
        "రాజు/రాణి నియమాలు, మరియు కిరీటం ప్రతీకాత్మకం.",
        "కిరీటం మర్త్యమైనది, మరియు రాజు/రాణి అమరత్వం.",
        "క్రౌన్ అనేది ఒక సంస్థ, మరియు రాజు/రాణి ఒక వ్యక్తి."
      ],
      correctAnswerIndex: 3,
      explanation:"బ్రిటీష్ రాజ్యాంగ రాచరికంలో, ఒక సంస్థగా కిరీటం మరియు ఒక వ్యక్తిగా రాజు/రాణి మధ్య వ్యత్యాసం ఉంది. కిరీటం అమరత్వం, రాజు/రాణి మర్త్యుడు.",
    ),

    Question(
      questionText: "ఐదవ గణతంత్రాన్ని స్థాపించిన ఫ్రెంచ్ రాజ్యాంగం ఏ సంవత్సరంలో అమలులోకి వచ్చింది?",
      options:["1945", "1950", "1958", "1965"],
      correctAnswerIndex: 2,
      explanation:"ప్రస్తుత ఫ్రెంచ్ రాజ్యాంగం, ఐదవ గణతంత్ర స్థాపన, 1958లో అమల్లోకి వచ్చింది. ఇది ఫ్రాన్స్‌కు బలమైన మరియు స్థిరమైన ప్రభుత్వాన్ని అందించడానికి జనరల్ డి గల్లె సూచనల మేరకు తయారు చేయబడింది.",
    ),

    Question(
      questionText: "ఫ్రెంచ్ రాజ్యాంగం యొక్క స్వభావం పరంగా దాని యొక్క ముఖ్యమైన లక్షణం ఏమిటి?",
      options:[
        "ఇది పూర్తిగా వ్రాయబడలేదు.",
        "ఇది రాచరికం మరియు ప్రజాస్వామ్యం యొక్క మిశ్రమం.",
        "ఇది దృఢమైన రాజ్యాంగం.",
        "ఇది ఏకీకృత రాజ్యాంగం."
      ],
      correctAnswerIndex: 2,
      explanation:"బ్రిటీష్ రాజ్యాంగం వలె కాకుండా, ఫ్రెంచ్ రాజ్యాంగం ప్రకృతిలో దృఢమైనది. ఇది దాని సవరణ కోసం ఒక ప్రత్యేక విధానాన్ని కలిగి ఉంది, దీనికి పార్లమెంటు ఉభయ సభలలో 60% మెజారిటీ ఓటు అవసరం లేదా రాజ్యాంగ సవరణపై జాతీయ ప్రజాభిప్రాయ సేకరణ అవసరం.",
    ),

    Question(
      questionText: "1789-1799 ఫ్రెంచ్ విప్లవం నుండి ఫ్రాన్స్ తన రాజ్యాంగాన్ని ఎంత తరచుగా మార్చుకుంది?",
      options:[
        "ప్రతి 5 సంవత్సరాలకు",
        "ప్రతి 10 సంవత్సరాలకు",
        "సగటున ప్రతి 12 సంవత్సరాలకు",
        "ఒకే ఒక్క సారి"
      ],
      correctAnswerIndex: 2,
      explanation:"ఫ్రెంచ్ విప్లవం నుండి, ఫ్రాన్స్ ప్రతి 12 సంవత్సరాల తర్వాత సగటున తన రాజ్యాంగాన్ని మార్చుకుంది. ఇది మూడు రాచరిక, రెండు నియంతృత్వ, మూడు సామ్రాజ్య మరియు నాలుగు రిపబ్లికన్ రాజ్యాంగాలను స్వీకరించింది.",
    ),

    Question(
      questionText: "ఫ్రెంచ్ రాజ్యాంగ సవరణ యొక్క ప్రాథమిక విధానం ఏమిటి?",
      options:[
        "రాష్ట్రపతి ఆమోదం",
        "పార్లమెంటు ఉభయ సభలలో 60% మెజారిటీ ఓట్లు",
        "రాజ్యాంగ మండలి ఆమోదం",
        "ప్రజాభిప్రాయ సేకరణ ద్వారా పౌరుల ప్రత్యక్ష ఆమోదం"
      ],
      correctAnswerIndex: 1,
      explanation:"ఫ్రెంచ్ రాజ్యాంగాన్ని పార్లమెంటు ఉభయ సభల్లో 60% మెజారిటీ ఓట్లతో సవరించవచ్చు. ప్రత్యామ్నాయంగా, రాజ్యాంగ సవరణపై జాతీయ ప్రజాభిప్రాయ సేకరణను రాష్ట్రపతి పిలవవచ్చు.",
    ),

    Question(
      questionText: "ఫ్రాన్స్‌లో రాజ్యాంగ మండలి పాత్ర ఏమిటి?",
      options:[
        "దీనికి కార్యనిర్వాహక అధికారాలు ఉన్నాయి.",
        "ఇది సుప్రీం లెజిస్లేటివ్ బాడీగా పనిచేస్తుంది.",
        "ఇది రాజ్యాంగానికి అనుగుణంగా ఉండేలా చూసే న్యాయపరమైన వాచ్‌డాగ్‌గా పనిచేస్తుంది.",
        "ఇది అంతర్జాతీయ సంబంధాల కోసం ఒక సలహా సంస్థ."
      ],
      correctAnswerIndex: 2,
      explanation:"ఫ్రాన్స్ ఒక రాజ్యాంగ మండలిని కలిగి ఉంది, ఇది ఒక న్యాయపరమైన వాచ్‌డాగ్‌గా పనిచేస్తుంది, కార్యనిర్వాహక ఆదేశాలు మరియు పార్లమెంటరీ చట్టాలు రాజ్యాంగంలోని నిబంధనలకు అనుగుణంగా ఉండేలా చూసుకుంటాయి. అయితే, దాని అభిప్రాయం సలహాదారు మరియు కట్టుబడి ఉండదు.",
    ),

    Question(
      questionText: "మీజీ పునరుద్ధరణ జపాన్ ఆధునిక రాష్ట్రానికి ఎప్పుడు నాంది పలికింది?",
      options:["1860", "1872", "1889", "1947"],
      correctAnswerIndex: 0,
      explanation:"1868లో జరిగిన మీజీ పునరుద్ధరణ జపాన్ ఆధునిక రాష్ట్రానికి నాంది పలికింది. తదుపరి మీజీ రాజ్యాంగం, నిరంకుశత్వం మరియు రాచరికం ఆధారంగా 58 సంవత్సరాలు అమలులో ఉంది.",
    ),

    Question(
      questionText: "1946లో జపాన్ ఎవరి ఆధ్వర్యంలో కొత్త ప్రజాస్వామ్య రాజ్యాంగాన్ని ఆమోదించింది?",
      options:["చక్రవర్తి హిరోహిటో", "ప్రధాన మంత్రి షిదేహరా", "US జనరల్ డగ్లస్ మాక్‌ఆర్థర్", "డైట్ (జపనీస్ పార్లమెంట్)"],
      correctAnswerIndex: 2,
      explanation:"US జనరల్ డగ్లస్ మాక్‌ఆర్థర్ ఆదేశాల మేరకు, 1945 నుండి 1952 వరకు మిత్రరాజ్యాల ఆక్రమణ తర్వాత జపాన్ 1946లో కొత్త ప్రజాస్వామ్య రాజ్యాంగాన్ని ఆమోదించింది.",
    ),

    Question(
      questionText: "జపాన్ యొక్క ప్రస్తుత రాజ్యాంగం యొక్క విశిష్ట లక్షణాలు ఏమిటి?",
      options:[
        "ఇది పూర్తిగా వ్రాయబడలేదు.",
        "ఇది ఏకీకృత రాజ్యాంగం.",
        "ఇది నిరంకుశత్వం మరియు రాచరికం మీద ఆధారపడి ఉంటుంది.",
        "ఇది అమెరికన్ మరియు బ్రిటిష్ వ్యవస్థల మిశ్రమం."
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రస్తుత జపాన్ రాజ్యాంగం వ్రాతపూర్వక రాజ్యాంగం, ప్రజల సార్వభౌమాధికారాన్ని నొక్కి చెబుతుంది. ఇది 1947లో ఆమోదించబడిన అమెరికన్ మరియు బ్రిటీష్ వ్యవస్థల యొక్క ప్రత్యేక సమ్మేళనం.",
    ),

    Question(
      questionText: "జపనీస్ రాజ్యాంగం ఎలా సవరించబడింది మరియు ఇది ఇప్పటివరకు సవరించబడింది?",
      options:[
        "డైట్ ద్వారా సాధారణ మెజారిటీ ఓటు ద్వారా.",
        "డైట్‌లో మూడింట రెండు వంతుల మెజారిటీ, ఆ తర్వాత జనాదరణ పొందిన ఆమోదం.",
        "చక్రవర్తి ప్రారంభించిన జాతీయ ప్రజాభిప్రాయ సేకరణ ద్వారా.",
        "ఇది 1947 నుండి ఎన్నడూ సవరించబడలేదు."
      ],
      correctAnswerIndex: 1,
      explanation:"జపాన్ రాజ్యాంగాన్ని డైట్‌లో మూడింట రెండు వంతుల మెజారిటీతో సవరించవచ్చు, ఆ తర్వాత ప్రత్యేక ప్రజాభిప్రాయ సేకరణ ద్వారా ప్రజాదరణ పొందిన ఆమోదం పొందుతుంది. ప్రస్తుతానికి, రాజ్యాంగం 1947 నుండి సవరించబడలేదు.",
    ),

    Question(
      questionText: "జపాన్ ప్రభుత్వ వ్యవస్థ యొక్క స్వభావం ఏమిటి మరియు ఇది బ్రిటన్ నుండి ఎలా భిన్నంగా ఉంటుంది?",
      options:[
        "అధ్యక్ష ప్రభుత్వ వ్యవస్థ",
        "సంపూర్ణ రాచరికం",
        "కొన్ని తేడాలతో పార్లమెంటరీ ప్రభుత్వ వ్యవస్థ",
        "ఫెడరల్ ప్రభుత్వ వ్యవస్థ"
      ],
      correctAnswerIndex: 2,
      explanation:"ప్రధానమంత్రిని చక్రవర్తి నియామకం మరియు మంత్రులపై ప్రధానమంత్రిని తొలగించే అధికారాలతో సహా బ్రిటన్ నుండి కొన్ని వ్యత్యాసాలతో జపాన్ పార్లమెంటరీ ప్రభుత్వ వ్యవస్థను కలిగి ఉంది.",
    ),

    Question(
      questionText: "సోవియట్ యూనియన్ ఏర్పాటుకు దారితీసిన 1917లో రష్యన్ విప్లవానికి నాయకత్వం వహించిన నాయకుడు ఎవరు?",
      options:["వ్లాదిమిర్ లెనిన్", "జోసెఫ్ స్టాలిన్", "లియోన్ ట్రోత్స్కీ", "నికితా క్రుష్చెవ్"],
      correctAnswerIndex: 0,
      explanation:"వ్లాదిమిర్ లెనిన్ 1917లో రష్యన్ విప్లవానికి నాయకత్వం వహించి, సోవియట్ యూనియన్‌ను స్థాపించాడు. USSR తరువాత ఆర్థిక సంక్షోభాల కారణంగా 1989-1991లో కూలిపోయింది.",
    ),

    Question(
      questionText: "USSR దాని ఉనికిలో ఎన్ని రాజ్యాంగాలను స్వీకరించింది మరియు మీరు వాటికి పేరు పెట్టగలరా?",
      options:["రెండు - 1918 మరియు 1936", "మూడు - 1918, 1924, మరియు 1977", "నాలుగు - 1918, 1924, 1936, మరియు 1977", "ఐదు - 1918, 1924, 1957, 1957," ],
      correctAnswerIndex: 2,
      explanation:"USSR దాని ఉనికిలో నాలుగు రాజ్యాంగాలను ఆమోదించింది: 1918, 1924, 1936 (స్టాలిన్ రాజ్యాంగం), మరియు 1977 (బ్రెజ్నెవ్ రాజ్యాంగం).",
    ),

    Question(
      questionText: "USSR యొక్క రాజ్యాంగ వ్యవస్థలో ఏ భావజాలం ఆధిపత్యం చెలాయించింది మరియు కమ్యూనిస్ట్ పార్టీ ఏ పాత్ర పోషించింది?",
      options:[
        "పెట్టుబడిదారీ విధానం; కమ్యూనిస్ట్ పార్టీ యొక్క పరిమిత ప్రభావం",
        "ఫాసిజం; కమ్యూనిస్ట్ పార్టీచే కేంద్రీకృత నియంత్రణ",
        "మార్క్సిజం-లెనినిజం; కమ్యూనిస్ట్ పార్టీ ఆధిపత్యం",
        "ప్రజాస్వామ్యం; కమ్యూనిస్ట్ పార్టీ మైనారిటీ పాత్ర"
      ],
      correctAnswerIndex: 2,
      explanation:"USSR యొక్క రాజ్యాంగ వ్యవస్థ మార్క్సిజం-లెనినిజం ఆధిపత్యంలో ఉంది మరియు కమ్యూనిస్ట్ పార్టీ రాజకీయ మరియు పరిపాలనా విషయాలలో ప్రధాన పాత్ర పోషించింది.",
    ),

    Question(
      questionText: "సోవియట్ ఫెడరేషన్‌లో ఎన్ని యూనియన్ రిపబ్లిక్‌లు ఏర్పడ్డాయి మరియు వాటికి ఏ అధికారాలు ఉన్నాయి?",
      options:[
        "ఐదు; పూర్తి స్వయంప్రతిపత్తి",
        "పది; పరిమిత స్వయంప్రతిపత్తి",
        "పదిహేను; విడిపోయే హక్కుతో లెక్కించబడిన అధికారాలు",
        "ఇరవై; కేంద్ర ప్రభుత్వంతో సమాన అధికారాలు"
      ],
      correctAnswerIndex: 2,
      explanation:"సోవియట్ ఫెడరేషన్ పదిహేను యూనియన్ రిపబ్లిక్‌లను కలిగి ఉంది, ఒక్కొక్కటి దాని రాజ్యాంగంతో కూడినది. వాటికి అధికారాలు మరియు USSR నుండి విడిపోయే హక్కు ఉన్నాయి.",
    ),

    Question(
      questionText: "సుప్రీం సోవియట్ చేత ఎన్నుకోబడిన ప్రత్యేకమైన పాలకమండలి ఏది మరియు USSR యొక్క సామూహిక అధ్యక్షుడిగా పనిచేసింది?",
      options:[
        "సుప్రీం కౌన్సిల్",
        "అధ్యక్ష మంత్రివర్గం",
        "పొలిట్‌బ్యూరో",
        "సుప్రీం సోవియట్ ప్రెసిడియం"
      ],
      correctAnswerIndex: 3,
      explanation:"సుప్రీం సోవియట్ యొక్క ప్రెసిడియం, సుప్రీం సోవియట్ చేత ఎన్నుకోబడింది, వివిధ విధులను మిళితం చేస్తూ USSR యొక్క సామూహిక అధ్యక్షుడిగా పనిచేసింది.",
    ),

    Question(
      questionText: "మాజీ USSR యొక్క మొత్తం వైశాల్యం మరియు జనాభాలో రష్యా ఎంత శాతం ఉంది?",
      options:[
        "విస్తీర్ణంలో 50%, జనాభాలో 30%",
        "70% ప్రాంతం, 50% జనాభా",
        "విస్తీర్ణంలో 75%, జనాభాలో 70%",
        "ప్రాంతంలో 80%, జనాభాలో 80%"
      ],
      correctAnswerIndex: 2,
      explanation:"మొత్తం విస్తీర్ణంలో రష్యా 75% కలిగి ఉంది మరియు మాజీ USSR మొత్తం జనాభాలో 50% కలిగి ఉంది.",
    ),

    Question(
      questionText: "రష్యా తన కొత్త రాజ్యాంగాన్ని ఎప్పుడు స్వీకరించింది, కొత్త రాజకీయ-పరిపాలన వ్యవస్థను స్థాపించింది?",
      options:[
        "డిసెంబర్ 1990",
        "డిసెంబర్ 1991",
        "డిసెంబర్ 1992",
        "డిసెంబర్ 1993"
      ],
      correctAnswerIndex: 3,
      explanation:"USSR రద్దు తర్వాత కొత్త రాజకీయ-పరిపాలన వ్యవస్థను స్థాపించి, రష్యా తన కొత్త రాజ్యాంగాన్ని డిసెంబర్ 20, 1993న ఆమోదించింది.",
    ),

    Question(
      questionText: "రష్యన్ ఫెడరేషన్‌లో దాని రాజ్యాంగం ప్రకారం ఎన్ని రిపబ్లిక్‌లు ఉన్నాయి?",
      options:["15 రిపబ్లిక్‌లు", "21 రిపబ్లిక్‌లు", "25 రిపబ్లిక్‌లు", "30 రిపబ్లిక్‌లు"],
      correctAnswerIndex: 1,
      explanation:"రష్యన్ రాజ్యాంగం ప్రకారం, రష్యన్ ఫెడరేషన్ 21 రిపబ్లిక్లను కలిగి ఉంటుంది.",
    ),

    Question(
      questionText: "రష్యన్ ఫెడరేషన్ అధ్యక్షుడు ఎన్నుకోబడిన పదం పొడవు ఏమిటి?",
      options:["రెండు సంవత్సరాలు", "నాలుగు సంవత్సరాలు", "ఆరు సంవత్సరాలు", "ఎనిమిది సంవత్సరాలు"],
      correctAnswerIndex: 1,
      explanation:"రష్యన్ ఫెడరేషన్ అధ్యక్షుడు నాలుగు సంవత్సరాల కాలానికి ఎన్నుకోబడతారు.",
    ),

    Question(
      questionText: "రాజ్యాంగ న్యాయస్థానం దాని రాజ్యాంగం ప్రకారం రష్యాలో ఏ పనిని నిర్వహిస్తుంది?",
      options:[
        "విదేశాంగ విధాన విషయాలను నిర్ణయించడం",
        "ప్రాంతీయ చట్టాలను సమీక్షించడం",
        "డిక్రీలు మరియు చట్టాల రాజ్యాంగబద్ధతను నిర్ణయించడం",
        "ఆర్థిక విధానాలను పర్యవేక్షించడం"
      ],
      correctAnswerIndex: 2,
      explanation:"రష్యాలోని రాజ్యాంగ న్యాయస్థానం అధ్యక్ష ఉత్తర్వులు, ప్రభుత్వ ఉత్తర్వులు మరియు ఫెడరల్ అసెంబ్లీ చట్టాల రాజ్యాంగబద్ధతను నిర్ణయించే విధిని నిర్వహిస్తుంది.",
    ),

    Question(
      questionText: "1949లో కమ్యూనిస్ట్ విప్లవం తర్వాత చైనా ఎన్ని రాజ్యాంగాలను ఆమోదించింది?",
      options:["రెండు రాజ్యాంగాలు", "మూడు రాజ్యాంగాలు", "నాలుగు రాజ్యాంగాలు", "ఐదు రాజ్యాంగాలు"],
      correctAnswerIndex: 2,
      explanation:"1949లో కమ్యూనిస్ట్ విప్లవం తర్వాత చైనా నాలుగు రాజ్యాంగాలను ఆమోదించింది.",
    ),

    Question(
      questionText: "చైనీస్ రాజ్యాంగం యొక్క స్వభావం ఏమిటి?",
      options:["ఫ్లెక్సిబుల్", "రిజిడ్", "పార్ట్లీ ఫ్లెక్సిబుల్ మరియు పాక్షికంగా రిజిడ్", "పైవేవీ కావు"],
      correctAnswerIndex: 1,
      explanation:"చైనీస్ రాజ్యాంగం దృఢమైన స్వభావం కలిగి ఉంది, దాని సవరణ కోసం ప్రత్యేక విధానాన్ని కలిగి ఉంది.",
    ),

    Question(
      questionText: "చైనీస్ రాష్ట్రం దాని స్వభావం మరియు పాలన పరంగా ఎలా వివరించబడింది?",
      options:[
        "ఫెడరల్ స్టేట్",
        "అధికార విభజనతో ఏకీకృత రాష్ట్రం",
        "కేంద్ర ప్రభుత్వ ఆధిపత్యంతో ఏకీకృత బహుళజాతి రాష్ట్రం",
        "కాన్ఫెడరల్ స్టేట్"
      ],
      correctAnswerIndex: 2,
      explanation:"చైనీస్ రాష్ట్రాన్ని కేంద్ర ప్రభుత్వ ఆధిక్యతతో దాని అన్ని జాతీయతల ప్రజలచే సంయుక్తంగా నిర్మించబడిన ఏకీకృత బహుళజాతి రాజ్యంగా వర్ణించబడింది.",
    ),

    Question(
      questionText: "చైనీస్ రాజ్యాంగం ఏ విధమైన శాసనసభను ఏర్పాటు చేస్తుంది?",
      options:["ద్విసభ శాసనసభ", "ఏకసభ శాసనసభ", "త్రిసభ్య శాసన సభ", "చతుర్భుజ శాసనసభ"],
      correctAnswerIndex: 1,
      explanation:"చైనీస్ రాజ్యాంగం నేషనల్ పీపుల్స్ కాంగ్రెస్ (NPC) అనే ఏకసభ్య శాసనసభను ఏర్పాటు చేసింది.",
    ),

    Question(
      questionText: "చైనీస్ రాజ్యాంగం ప్రకారం కమ్యూనిస్ట్ పార్టీ ఆఫ్ చైనా (CPC) ఏ పాత్ర పోషిస్తుంది?",
      options:[
        "ప్రాథమిక రాజకీయ పార్టీ",
        "సమాన హోదా కలిగిన అనేక రాజకీయ పార్టీలలో ఒకటి",
        "నిషేధించబడిన రాజకీయ పార్టీ",
        "ఎన్నికల సమయంలో మాత్రమే చురుకుగా ఉంటుంది"
      ],
      correctAnswerIndex: 0,
      explanation:"చైనీస్ రాజ్యాంగం బహుళ-పార్టీ వ్యవస్థను గుర్తిస్తుంది కానీ కమ్యూనిస్ట్ పార్టీ ఆఫ్ చైనా (CPC) యొక్క నాయకత్వ పాత్రను ఏర్పాటు చేస్తుంది.",
    ),
    Question(
      questionText: "ఇప్పటి వరకు స్విట్జర్లాండ్ ఎన్ని రాజ్యాంగాలను ఆమోదించింది?",
      options:["ఒక రాజ్యాంగం", "రెండు రాజ్యాంగాలు", "మూడు రాజ్యాంగాలు", "నాలుగు రాజ్యాంగాలు"],
      correctAnswerIndex: 2,
      explanation:"స్విట్జర్లాండ్ మూడు రాజ్యాంగాలను ఆమోదించింది: 1848, 1874 మరియు 1999.",
    ),

    Question(
      questionText: "1999లో ఆమోదించబడిన స్విట్జర్లాండ్ యొక్క మూడవ రాజ్యాంగం ఎప్పుడు అమలులోకి వచ్చింది?",
      options:["జనవరి 1, 1998", "18 ఏప్రిల్ 1999", "జనవరి 1, 2000", "డిసెంబర్ 4, 1999"],
      correctAnswerIndex: 2,
      explanation:"1999లో ఆమోదించబడిన స్విట్జర్లాండ్ యొక్క మూడవ రాజ్యాంగం 1 జనవరి 2000 నుండి అమల్లోకి వచ్చింది.",
    ),

    Question(
      questionText: "స్విస్ రాజ్యాంగం ఏ రకమైన రాజ్యాంగం?",
      options:["ఫ్లెక్సిబుల్", "రిజిడ్", "పార్ట్లీ ఫ్లెక్సిబుల్ మరియు పాక్షికంగా రిజిడ్", "పైవేవీ కావు"],
      correctAnswerIndex: 1,
      explanation:"స్విస్ రాజ్యాంగం దృఢమైన స్వభావం కలిగి ఉంది, దాని సవరణ కోసం ప్రత్యేక విధానాన్ని కలిగి ఉంది.",
    ),

    Question(
      questionText: "స్విస్ సమాఖ్య రాష్ట్ర నిర్మాణం ఎలా ఉంది?",
      options:["యూనిటరీ స్టేట్", "ఫెడరల్ స్టేట్", "కాన్ఫెడరల్ స్టేట్", "పార్లమెంటరీ స్టేట్"],
      correctAnswerIndex: 1,
      explanation:"స్విట్జర్లాండ్ అనేది ఫెడరల్ ప్రభుత్వం మరియు ఖండాల మధ్య అధికారాలు విభజించబడిన ఖండాలు అని పిలువబడే 26 యూనిట్లతో కూడిన సమాఖ్య రిపబ్లిక్.",
    ),

    Question(
      questionText: "స్విస్ రాజ్యాంగం అందించిన ప్రత్యేక కార్యనిర్వాహక వ్యవస్థ ఏమిటి?",
      options:[
        "పార్లమెంటరీ వ్యవస్థ",
        "అధ్యక్ష వ్యవస్థ",
        "కౌన్సిల్ మోడల్ ఆఫ్ గవర్నమెంట్",
        "ద్విసభ కార్యనిర్వాహక"
      ],
      correctAnswerIndex: 2,
      explanation:"స్విస్ రాజ్యాంగం ఒక విశిష్టమైన కౌన్సిల్ మోడల్ ఆఫ్ గవర్నమెంట్, ఒక బహువచన (కాలీజియల్) ఎగ్జిక్యూటివ్‌ని అందిస్తుంది.",
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
    home: wcstrctn_te(),
  ));
}

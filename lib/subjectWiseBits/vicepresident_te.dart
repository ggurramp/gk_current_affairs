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

class vicepresident_te extends StatefulWidget {
  final String? userIdentifier;

  vicepresident_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<vicepresident_te> createState() => _vicepresident_teState();
}

class _vicepresident_teState extends State<vicepresident_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    //19.వైస్ ప్రెసిడెంట్

    Question(
      questionText: "ప్రెసిడెంట్ లేకపోవడం లేదా అనారోగ్యం సమయంలో, ఎవరు కార్యాలయ విధులను నిర్వర్తిస్తారు?",
      options:["రాజ్యసభ డిప్యూటీ ఛైర్మన్", "వైస్-ప్రెసిడెంట్", "రాజ్యసభ ఛైర్మన్", "ప్రెసిడెంట్ సెక్రటరీ"],
      correctAnswerIndex: 1,
      explanation:"ప్రెసిడెంట్ లేనప్పుడు లేదా అనారోగ్యంతో, రాష్ట్రపతి పునఃప్రారంభించే వరకు ఉపాధ్యక్షుడు కార్యాలయ విధులను నిర్వహిస్తారు.",
    ),

    Question(
      questionText: "అధ్యక్షుడిగా వ్యవహరిస్తున్నప్పుడు, ఉపరాష్ట్రపతి ఏ బాధ్యతలు నిర్వర్తించరు?",
      options:["రాజ్యసభ ఛైర్మన్", "ప్రధానమంత్రి", "భారత ప్రధాన న్యాయమూర్తి", "లోక్ సభ స్పీకర్"],
      correctAnswerIndex: 0,
      explanation:"రాష్ట్రపతిగా వ్యవహరిస్తున్నప్పుడు, ఉపరాష్ట్రపతి రాజ్యసభ ఛైర్మన్ కార్యాలయ విధులను నిర్వర్తించరు. బదులుగా, ఈ విధులను రాజ్యసభ డిప్యూటీ ఛైర్మన్ నిర్వహిస్తారు.",
    ),

    Question(
      questionText: "రాజ్యాంగంలో ఉపరాష్ట్రపతికి ఎలాంటి పారితోషికాలు నిర్ణయించబడ్డాయి?",
      options:["సాధారణ జీతం", "రోజువారీ భత్యం", "వైద్య సదుపాయాలు", "ప్రయాణ భత్యం"],
      correctAnswerIndex: 0,
      explanation:"రాజ్యాంగం ఆ హోదాలో ఉపరాష్ట్రపతికి ఎటువంటి పారితోషికాన్ని నిర్ణయించలేదు. ఉపరాష్ట్రపతి రాజ్యసభ యొక్క ఎక్స్-అఫీషియో ఛైర్మన్ పాత్రలో వారి సాధారణ జీతం తీసుకుంటారు.",
    ),

    Question(
      questionText: "అధ్యక్షుడిగా వ్యవహరించే కాలంలో ఉపరాష్ట్రపతికి ఎలాంటి అర్హతలు ఉన్నాయి?",
      options:["రాజ్యసభ ఛైర్మన్ జీతం", "రాష్ట్రపతి జీతం మరియు భత్యం", "అర్హతలు లేవు", "ఉచిత నివాసం మాత్రమే"],
      correctAnswerIndex: 1,
      explanation:"వైస్-ప్రెసిడెంట్ రాష్ట్రపతిగా వ్యవహరించే కాలంలో, వారు రాష్ట్రపతి జీతం మరియు భత్యానికి అర్హులు, రాజ్యసభ ఛైర్మన్ కాదు.",
    ),

    Question(
      questionText: "అధ్యక్ష పదవికి సంబంధించిన వారసత్వానికి సంబంధించి అమెరికన్ వైస్ ప్రెసిడెంట్ పాత్రకు భారత ఉపాధ్యక్షుడి పాత్ర ఎలా భిన్నంగా ఉంటుంది?",
      options:["భారత ఉపాధ్యక్షుడు ప్రెసిడెన్సీని స్వీకరించారు", "అమెరికన్ ఉపాధ్యక్షుడు అధ్యక్షుడిగా బాధ్యతలు స్వీకరించారు", "ఇద్దరూ అధ్యక్ష బాధ్యతలను స్వీకరించారు", "అధ్యక్ష బాధ్యతలను స్వీకరించరు"],
      correctAnswerIndex: 0,
      explanation:"భారత ఉపాధ్యక్షుడు రాష్ట్రపతి పదవిని ఖాళీ అయినప్పుడు స్వీకరించరు, కానీ కొత్త అధ్యక్షుడు బాధ్యతలు స్వీకరించే వరకు తాత్కాలిక అధ్యక్షుడిగా వ్యవహరిస్తారు. దీనికి విరుద్ధంగా, అమెరికా ఉపాధ్యక్షుడు అధ్యక్ష పదవిని ఖాళీ చేసినప్పుడు విజయం సాధిస్తారు. ",
    ),

    Question(
      questionText: "వైస్-ప్రెసిడెంట్‌ను కొంతమంది పండితులు తరచుగా 'హిజ్ సూపర్‌ఫ్లూయస్ హైనెస్' అని ఎందుకు పిలుస్తారు?",
      options:["ముఖ్యమైన విధులు లేకపోవడం", "మితిమీరిన పారితోషికాలు", "రాజకీయ కొనసాగింపు", "ప్రత్యేకమైన వృక్షసంపద"],
      correctAnswerIndex: 0,
      explanation:"కొంతమంది పండితులు ఉపరాష్ట్రపతిని 'హిజ్ సూపర్‌ఫ్లూయస్ హైనెస్' అని సూచిస్తారు ఎందుకంటే రాజ్యాంగం ఆ హోదాలో ఉపరాష్ట్రపతికి ఎటువంటి ముఖ్యమైన విధులను కేటాయించలేదు.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగంలోని ఏ ఆర్టికల్ ఉపరాష్ట్రపతి ఎన్నికకు సంబంధించింది?",
      options:["ఆర్టికల్ 63", "ఆర్టికల్ 66", "ఆర్టికల్ 68", "ఆర్టికల్ 71"],
      correctAnswerIndex: 3,
      explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 71 ఉపరాష్ట్రపతి ఎన్నికకు సంబంధించిన లేదా దానికి సంబంధించిన విషయాలతో వ్యవహరిస్తుంది.",
    ),
    Question(
      questionText: "1962లో భారత ఉపరాష్ట్రపతిగా ఎవరు పనిచేశారు?",
      options:["V.V. గిరి", "G.S. పాఠక్", "B.D. జట్టి", "డా. జాకీర్ హుస్సేన్"],
      correctAnswerIndex: 3,
      explanation:"డా. జాకీర్ హుస్సేన్ 1962లో భారత ఉపరాష్ట్రపతిగా పనిచేశారు.",
    ),

    Question(
      questionText: "2007లో భారత ఉపరాష్ట్రపతిగా ఎవరు ఎన్నికయ్యారు?",
      options:["బి.ఎస్. షెకావత్", "మొహద్. హమీద్ అన్సారీ", "కృష్ణ కాంత్", "వెంకయ్య నాయుడు"],
      correctAnswerIndex: 1,
      explanation:"మొహమ్మద్. హమీద్ అన్సారీ 2007లో భారత ఉపరాష్ట్రపతిగా ఎన్నికయ్యారు.",
    ),

    Question(
      questionText: "2017 సంవత్సరంలో భారత ఉపరాష్ట్రపతి ఎవరు?",
      options:["జగ్దీప్ ధంకర్", "వెంకయ్య నాయుడు", "మొహమ్మద్. హమీద్ అన్సారీ", "బి.ఎస్. షెకావత్"],
      correctAnswerIndex: 1,
      explanation:"వెంకయ్య నాయుడు 2017లో భారత ఉపరాష్ట్రపతిగా పనిచేశారు.",
    ),

    Question(
      questionText: "ఒక వ్యక్తి ఉపాధ్యక్షుడిగా ఎన్నిక కావడానికి ఏ అర్హతలు అవసరం?",
      options:[
        "భారత పౌరసత్వం, 30 సంవత్సరాల వయస్సు, లోక్ సభ సభ్యత్వానికి అర్హత",
        "భారత పౌరసత్వం, 35 సంవత్సరాల వయస్సు, రాజ్యసభ సభ్యత్వానికి అర్హత",
        "విదేశీ పౌరసత్వం, 30 సంవత్సరాల వయస్సు, లోక్‌సభ సభ్యత్వానికి అర్హత",
        "భారత పౌరసత్వం, 40 సంవత్సరాల వయస్సు, నిర్దిష్ట అర్హతలు లేవు"
      ],
      correctAnswerIndex: 1,
      explanation:"వైస్ ప్రెసిడెంట్‌గా ఎన్నిక కావడానికి, ఒక వ్యక్తి భారతీయ పౌరుడిగా ఉండాలి, 35 ఏళ్ల వయస్సు ఉండాలి మరియు రాజ్యం సభ్యుడిగా ఎన్నిక కావడానికి అర్హత కలిగి ఉండాలిఒక సభ.",
    ),

    Question(
      questionText: "భారత ఉపరాష్ట్రపతికి ఎవరు ప్రమాణ స్వీకారం చేస్తారు?",
      options:["ప్రధాన మంత్రి", "భారత ప్రధాన న్యాయమూర్తి", "అధ్యక్షుడు లేదా నియమిత వ్యక్తి", "లోక్ సభ స్పీకర్"],
      correctAnswerIndex: 2,
      explanation:"వైస్-ప్రెసిడెంట్‌కి పదవీ ప్రమాణం రాష్ట్రపతి లేదా అతని/ఆమె చేత నియమించబడిన వ్యక్తిచే నిర్వహించబడుతుంది.",
    ),

    Question(
      questionText: "ఉపరాష్ట్రపతి పదవికి రాజ్యాంగం ఎలాంటి షరతులు విధించింది?",
      options:[
        "పార్లమెంటు సభలో ఏదో ఒక సభ్యుడై ఉండాలి",
        "లాభదాయకమైన ఏ ఇతర కార్యాలయాన్ని కలిగి ఉండకూడదు",
        "తప్పక రాజ్యసభ సభ్యుడు అయి ఉండాలి",
        "లాభదాయకమైన కార్యాలయాన్ని కలిగి ఉండాలి"
      ],
      correctAnswerIndex: 1,
      explanation:"ఉపరాష్ట్రపతి పార్లమెంటు లేదా రాష్ట్ర శాసనసభలో సభ్యులుగా ఉండకూడదని మరియు లాభదాయకమైన మరే ఇతర పదవిని కలిగి ఉండకూడదని రాజ్యాంగం నిర్దేశిస్తుంది.",
    ),
    Question(
      questionText: "అధికారిక ప్రాధాన్యత వారెంట్‌లో, ఉపరాష్ట్రపతికి ఏ ర్యాంక్ ఇవ్వబడింది?",
      options:["ఫస్ట్ ర్యాంక్", "థర్డ్ ర్యాంక్", "సెకండ్ ర్యాంక్", "నాల్గవ ర్యాంక్"],
      correctAnswerIndex: 2,
      explanation:"దేశంలో రెండవ అత్యున్నత పదవిని ఆక్రమిస్తూ, అధికారిక ప్రాధాన్యత యొక్క అధికారిక వారెంట్‌లో ఉపరాష్ట్రపతికి రాష్ట్రపతి పక్కన ర్యాంక్ ఇవ్వబడుతుంది.",
    ),

    Question(
      questionText: "ఉపాధ్యక్షుడు ఎలా ఎన్నికయ్యారు?",
      options:[
        "ప్రజల ద్వారా నేరుగా",
        "పార్లమెంటు ఉభయ సభలతో కూడిన ఎలక్టోరల్ కాలేజీ సభ్యులచే",
        "రాష్ట్ర శాసన సభల సభ్యులచే",
        "రాష్ట్రపతి ద్వారా"
      ],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటు ఉభయ సభలతో కూడిన ఎలక్టోరల్ కాలేజీ సభ్యులచే ఉపరాష్ట్రపతి ఎన్నుకోబడతారు, ప్రజలచే నేరుగా కాదు.",
    ),

    Question(
      questionText: "ఉపరాష్ట్రపతికి మరియు రాష్ట్రపతికి ఎలక్టోరల్ కాలేజీకి మధ్య ఉన్న రెండు తేడాలు ఏమిటి?",
      options:[
        "నామినేటెడ్ సభ్యుల ఉనికి మరియు రాష్ట్ర శాసనసభ సభ్యుల మినహాయింపు",
        "ఎన్నికైన మరియు నామినేటెడ్ సభ్యుల ఉనికి మరియు రాష్ట్ర శాసనసభ సభ్యుల మినహాయింపు",
        "ఎన్నికైన సభ్యులు మాత్రమే ఉండటం మరియు రాష్ట్ర శాసనసభ సభ్యులను చేర్చుకోవడం",
        "నామినేటెడ్ సభ్యుల ఉనికి మరియు రాష్ట్ర శాసనసభ సభ్యులను చేర్చుకోవడం"
      ],
      correctAnswerIndex: 1,
      explanation:"వైస్ ప్రెసిడెంట్ కోసం ఎలక్టోరల్ కాలేజీలో పార్లమెంటులో ఎన్నికైన మరియు నామినేట్ చేయబడిన సభ్యులు ఉంటారు, అయితే ప్రెసిడెంట్ ఎలక్టోరల్ కాలేజీలో ఎన్నికైన సభ్యులు మాత్రమే ఉంటారు.",
    ),

    Question(
      questionText: "డా. బి.ఆర్. అంబేద్కర్ ప్రకారం, ఉపరాష్ట్రపతి ఎన్నికలో రాష్ట్ర శాసనసభ సభ్యుల భాగస్వామ్యం ఎందుకు అవసరం లేదు?",
      options:[
        "రాష్ట్ర శాసనసభలకు పరిమిత అధికారం ఉంది",
        "వైస్-ప్రెసిడెంట్ యొక్క విధులు ప్రధానంగా కౌన్సిల్ ఆఫ్ స్టేట్స్‌కు సంబంధించినవి",
        "ఉపరాష్ట్రపతి ఎన్నికలో రాష్ట్ర శాసనసభల పాత్ర లేదు",
        "రాష్ట్ర శాసనసభలు ఇప్పటికే రాష్ట్రపతి ఎన్నికలో పాల్గొంటున్నాయి"
      ],
      correctAnswerIndex: 1,
      explanation:"రాష్ట్రాల కౌన్సిల్‌కు అధ్యక్షత వహించడం ఉపరాష్ట్రపతి యొక్క సాధారణ విధులు కాబట్టి, ఎన్నికలలో రాష్ట్ర శాసనసభల ప్రమేయం అవసరం లేదని డాక్టర్ B.R. అంబేద్కర్ సూచించారు.",
    ),

    Question(
      questionText: "ఉపరాష్ట్రపతి ఎన్నిక కోసం ఏ ఎన్నికల విధానం ఉపయోగించబడుతుంది మరియు ఓటింగ్ ఎలా నిర్వహించబడుతుంది?",
      options:[
        "ఫస్ట్-పాస్ట్-ది-పోస్ట్ సిస్టమ్, ఓపెన్ బ్యాలెట్",
        "ఒకే బదిలీ చేయగల ఓటు, రహస్య బ్యాలెట్ ద్వారా దామాషా ప్రాతినిధ్యం",
        "ఒకే బదిలీ చేయగల ఓటు, ఓపెన్ బ్యాలెట్ ద్వారా దామాషా ప్రాతినిధ్యం",
        "ఫస్ట్-పాస్ట్-ది-పోస్ట్ సిస్టమ్, సీక్రెట్ బ్యాలెట్"
      ],
      correctAnswerIndex: 2,
      explanation:"వైస్-ప్రెసిడెంట్ ఎన్నిక ఒకే బదిలీ ఓటు ద్వారా దామాషా ప్రాతినిధ్య విధానాన్ని అనుసరిస్తుంది మరియు ఓటింగ్ రహస్య బ్యాలెట్ ద్వారా జరుగుతుంది.",
    ),

    Question(
      questionText: "ఉపరాష్ట్రపతి ఎన్నికకు సంబంధించిన సందేహాలు మరియు వివాదాలను విచారించి పరిష్కరించే అధికారం ఎవరికి ఉంది?",
      options:["ఎన్నికల సంఘం", "సుప్రీం కోర్ట్", "ప్రెసిడెంట్", "పార్లమెంట్"],
      correctAnswerIndex: 1,
      explanation:"ఉపరాష్ట్రపతి ఎన్నికకు సంబంధించిన సందేహాలు మరియు వివాదాలను విచారించి పరిష్కరించే అధికారం సుప్రీంకోర్టుకు ఉంది మరియు దాని నిర్ణయమే అంతిమమైనది.",
    ),

    Question(
      questionText: "ఒక వ్యక్తిని ఉపాధ్యక్షుడిగా ఎన్నుకోవడాన్ని ఏ కారణాలతో సవాలు చేయకూడదు?",
      options:[
        "అసంపూర్ణ ఎన్నికల కళాశాల",
        "చెల్లని ఓటింగ్ ప్రక్రియ",
        "ఎలక్టోరల్ కాలేజీ సభ్యులలో ఏదైనా ఖాళీ ఉనికి",
        "అవినీతి ఆరోపణలు"
      ],
      correctAnswerIndex: 2,
      explanation:"ఒక వ్యక్తిని ఉపాధ్యక్షుడిగా ఎన్నుకోవడం సిఎలక్టోరల్ కళాశాల అసంపూర్తిగా ఉన్నందున సవాలు చేయబడింది (అంటే, ఎలక్టోరల్ కాలేజీ సభ్యులలో ఏదైనా ఖాళీ ఉండటం).",
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
    home: vicepresident_te(),
  ));
}

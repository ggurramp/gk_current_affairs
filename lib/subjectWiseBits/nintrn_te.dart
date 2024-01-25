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

class nintgn_te extends StatefulWidget {
  final String? userIdentifier;

  nintgn_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nintgn_te> createState() => _nintgn_teState();
}

class _nintgn_teState extends State<nintgn_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//87.జాతీయ సమైక్యత

    Question(
      questionText: "మైరాన్ వీనర్ ప్రకారం, జాతీయ సమైక్యత అంటే ఏమిటి?",
      options:[
        "జాతీయ ప్రయోజనాల కంటే సంకుచిత ప్రయోజనాలకు ప్రాధాన్యత.",
        "విభజన ఉద్యమాలను నివారించడం మరియు జాతీయ ప్రయోజనాలకు ప్రాధాన్యత.",
        "రాజకీయ ఏకీకరణ కోసం పారిశ్రామిక ప్రణాళికలు.",
        "వైవిధ్యమైన విభాగాల ఏకరూపత మరియు సమీకరణ."
      ],
      correctAnswerIndex: 1,
      explanation:"జాతీయ సమైక్యత అనేది విభజన ఉద్యమాలను నివారించడం మరియు సంకుచిత ప్రయోజనాల కంటే జాతీయ మరియు ప్రజా ప్రయోజనాలకు ప్రాధాన్యతనిచ్చే వైఖరులను పెంపొందించడం అని మైరాన్ వీనర్ సూచించాడు.",
    ),

    Question(
      questionText: "HA Gani జాతీయ సమైక్యతను ఎలా వివరిస్తుంది?",
      options:[
        "రాజకీయ మరియు ఆర్థిక ప్రక్రియ.",
        "ఒక సామాజిక-మానసిక మరియు విద్యా ప్రక్రియ.",
        "నిపుణులు చర్చించిన పారిశ్రామిక ప్రణాళిక.",
        "ఏకరూపత మరియు సమీకరణతో కూడిన ప్రక్రియ."
      ],
      correctAnswerIndex: 1,
      explanation:"జాతీయ ఏకీకరణను సామాజిక-మానసిక మరియు విద్యా ప్రక్రియగా HA గని వర్ణించారు, ఇది ప్రజలలో ఐక్యత, సంఘీభావం మరియు సాధారణ పౌరసత్వం యొక్క భావాన్ని అభివృద్ధి చేస్తుంది.",
    ),

    Question(
      questionText: "డా. ఎస్. రాధాకృష్ణ ప్రకారం, జాతీయ సమైక్యత అంటే ఏమిటి?",
      options:[
        "మోర్టార్ మరియు ఇటుకలతో నిర్మించిన భౌతిక నిర్మాణం.",
        "ప్రజలను పెద్ద ఎత్తున మేల్కొల్పాల్సిన చైతన్యం.",
        "నిపుణులచే చర్చించబడిన మరియు అమలు చేయబడిన ఆలోచన.",
        "విభజన ఉద్యమాల అభివ్యక్తి."
      ],
      correctAnswerIndex: 1,
      explanation:"Dr. S. రాధాకృష్ణ జాతీయ సమైక్యతను ఒక స్పృహగా భావించారు, అది ప్రజలను పెద్దగా మేల్కొల్పాలి, దాని భౌతికేతర మరియు ఆలోచనాత్మక స్వభావాన్ని నొక్కి చెబుతుంది.",
    ),

    Question(
      questionText: "రషీదుద్దీన్ ఖలీల్ జాతీయ సమైక్యతను ఎలా నిర్వచించారు?",
      options:[
        "సంయోగం, కలయిక మరియు ఏకరూపత.",
        "సయోధ్య, సమీకరణ మరియు సమీకరణ.",
        "పార్టీ ఆసక్తులకు ప్రాధాన్యత.",
        "సంగీకారం, ఐక్యత, కానీ ఏకరూపత కాదు."
      ],
      correctAnswerIndex: 3,
      explanation:"రషీదుద్దీన్ ఖలీల్ జాతీయ సమైక్యతను సంయోగం, ఐక్యతగా నిర్వచించాడు, కానీ ఏకరూపత కాదు. ఇందులో సయోధ్య, సమీకరణ మరియు వివిక్త విభాగాల సమీకరణను నివారించడం వంటివి ఉంటాయి.",
    ),

    Question(
      questionText: "జాతీయ సమైక్యతకు కొన్ని ప్రధాన అడ్డంకులు ఏమిటి?",
      options:[
        "ప్రపంచీకరణ మరియు సాంకేతిక పురోగతి.",
        "ప్రాంతీయవాదం, మతతత్వం మరియు మతపరమైన సనాతన ధర్మం.",
        "రాజకీయ సిద్ధాంతాలు మరియు ఆర్థిక అసమానతలు.",
        "పారిశ్రామీకరణ మరియు పట్టణీకరణ."
      ],
      correctAnswerIndex: 1,
      explanation:"దేశీయ సమైక్యతకు ప్రాంతీయవాదం, మతతత్వం మరియు మతపరమైన సనాతనవాదం ప్రధాన అడ్డంకులు.",
    ),

    Question(
      questionText: "కుల రాజకీయీకరణ ప్రభావం ఏమిటి?",
      options:[
        "వివిధ కుల సమూహాల మధ్య ఐక్యత మరియు సంఘీభావాన్ని ప్రోత్సహిస్తుంది.",
        "కులం ఆధారంగా రాజకీయ పార్టీలు మరియు ఒత్తిడి సమూహాల ఆవిర్భావానికి దారి తీస్తుంది.",
        "కుల సంఘర్షణలు మరియు హింసాత్మక వివాదాల నిర్మూలనలో ఫలితాలు.",
        "ఉన్నత మరియు దిగువ కులాల మధ్య సామరస్య సంబంధాలను ప్రోత్సహిస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"కులాన్ని రాజకీయం చేయడం వల్ల రాజకీయ పార్టీలు మరియు కులాల ఆధారంగా ఒత్తిడి సమూహాల ఆవిర్భావానికి దారి తీస్తుంది, విభేదాలు మరియు వివాదాల వంటి వివిధ వ్యక్తీకరణలకు దోహదం చేస్తుంది.",
    ),

    Question(
      questionText: "BK నెహ్రూ ప్రకారం, షెడ్యూల్డ్ కులాలు మరియు షెడ్యూల్డ్ తెగలకు రిజర్వేషన్ల ప్రభావం ఏమిటి?",
      options:[
        "జాతీయ సమైక్యతకు అనుకూలం.",
        "కమ్యూనల్ ఓటర్ల యొక్క అవశేష రూపానికి దారి తీస్తుంది.",
        "కుల స్పృహను తొలగిస్తుంది.",
        "వివిధ కుల సమూహాల మధ్య సామరస్యాన్ని మరియు ఐక్యతను ప్రోత్సహిస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"బికె నెహ్రూ షెడ్యూల్డ్ కులాలు మరియు షెడ్యూల్డ్ తెగలకు రిజర్వేషన్లు కుల మూలం మరియు స్పృహను నొక్కిచెబుతూ, మతపరమైన ఓటర్ల యొక్క అవశేష రూపాలుగా పనిచేస్తాయని సూచించారు.",
    ),

    Question(
      questionText: "రాజకీయ ప్రక్రియ యొక్క పర్యవసానంగా భాషావాదం ఎలా వ్యక్తమవుతుంది?",
      options:[
        "బహుభాషావాదాన్ని ప్రోత్సహించడం ద్వారా ఐక్యతను ప్రోత్సహిస్తుంది.",
        "భాష ఆధారంగా రాష్ట్రాల పునర్వ్యవస్థీకరణకు దారి తీస్తుంది.",
        "అధికారిక భాషల చట్టం అవసరాన్ని తొలగిస్తుంది.",
        "యూనియన్ కోసం ఒకే అధికారిక భాషను ప్రోత్సహిస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"భాష ఆధారంగా రాష్ట్రాల పునర్వ్యవస్థీకరణ, అలాగే యూనియన్ యొక్క అధికారిక భాష యొక్క నిర్ణయం ద్వారా రాజకీయ ప్రక్రియ యొక్క పర్యవసానంగా భాషావాదం వ్యక్తమవుతుంది.",
    ),

    Question(
      questionText: "ఏ సంఘటన భాషా ప్రాతిపదికన రాష్ట్రాల పునర్వ్యవస్థీకరణ కోసం దేశవ్యాప్తంగా డిమాండ్‌కు దారితీసింది?",
      options:[
        "అధికార భాషల చట్టం అమలు.",
        "TOP, AGP, శివసేన వంటి ప్రాంతీయ పార్టీల పెరుగుదల.",
        "1953లో ఆంధ్ర ప్రదేశ్ పునర్వ్యవస్థీకరణ.",
        "భారతదేశ రాజకీయ పటంలో నిరంతర మార్పు."
      ],
      correctAnswerIndex: 2,
      explanation:"1953లో ఆంధ్రప్రదేశ్ పునర్వ్యవస్థీకరణ ద్వారా భాషా ప్రాతిపదికన రాష్ట్రాల పునర్వ్యవస్థీకరణ కోసం దేశవ్యాప్తంగా డిమాండ్ ఏర్పడింది.",
    ),

    Question(
      questionText: "అధికారిక భాషల చట్టం (1963) భారతదేశంలో భాషా గతిశీలతను ఎలా ప్రభావితం చేసింది?",
      options:[
        "ఇది హిందీని మాత్రమే అధికారిక భాషగా ఆమోదించడానికి దారితీసింది.",
        "ఇది మూడు భాషల ఫార్ములా అమలుకు దారితీసింది.",
        "ఇది దక్షిణ భారతదేశం మరియు పశ్చిమ బెంగాల్‌లో హిందీ వ్యతిరేక ఆందోళనను రేకెత్తించింది.",
        "ఇది ఆంగ్లాన్ని ఏకైక అధికారిక భాషగా ప్రచారం చేసింది."
      ],
      correctAnswerIndex: 2,
      explanation:"అధికారిక భాషల చట్టం (1963) దక్షిణ భారతదేశం మరియు పశ్చిమ బెంగాల్‌లో హిందీ వ్యతిరేక ఆందోళనకు దారితీసింది, ఇది హిందీని యూనియన్ యొక్క అధికారిక భాషగా చేసింది, ఇది ఆంగ్ల వినియోగానికి సంబంధించి నిరసనలు మరియు హామీలను ప్రేరేపించింది.",
    ),

    Question(
      questionText: "నేషనల్ ఇంటిగ్రేషన్ కౌన్సిల్ (NIC) మొదట ఎప్పుడు సమావేశమైంది మరియు ఎందుకు స్థాపించబడింది?",
      options:[
        "ఆర్థిక విషయాలను చర్చించడానికి 1961లో సమావేశమయ్యారు.",
        "జాతీయ సమైక్యత సమస్యలను పరిష్కరించడానికి 1962లో సమావేశమయ్యారు.",
        "మతవాదాన్ని ఎదుర్కోవడానికి 1992లో స్థాపించబడింది.",
        "ప్రాంతీయవాదాన్ని ప్రోత్సహించడానికి 1961లో స్థాపించబడింది."
      ],
      correctAnswerIndex: 1,
      explanation:"NIC మొట్టమొదట 1961లో సమావేశమైంది మరియు 1962లో జాతీయ సమైక్యత, పోరాట మతోన్మాదం, కులతత్వం, ప్రాంతీయవాదం, భాషావాదం మరియు సంకుచిత మనస్తత్వానికి సంబంధించిన విషయాలను పరిష్కరించడానికి 1962లో స్థాపించబడింది.",
    ),

    Question(
      questionText: "నేషనల్ ఇంటిగ్రేషన్ కౌన్సిల్ (NIC)ని ఎవరు ఏర్పాటు చేస్తారు?",
      options:[
        "ప్రధానమంత్రి మరియు కేంద్ర మంత్రులు మాత్రమే.",
        "లోక్‌సభ మరియు రాజ్యసభలో ప్రతిపక్ష నాయకులు.",
        "అన్ని రాష్ట్రాల ముఖ్యమంత్రులు మాత్రమే.",
        "జాతీయ రాజకీయ పార్టీల నాయకులు మాత్రమే."
      ],
      correctAnswerIndex: 1,
      explanation:"NICలో ప్రధానమంత్రి, కేంద్ర మంత్రులు, లోక్‌సభ మరియు రాజ్యసభలో ప్రతిపక్ష నాయకులు, అన్ని రాష్ట్రాల ముఖ్యమంత్రులు మరియు జాతీయ మరియు ప్రాంతీయ రాజకీయ పార్టీల నాయకులు, ఇతరులు ఉన్నారు.",
    ),

    Question(
      questionText: "నేషనల్ ఫౌండేషన్ ఫర్ కమ్యూనల్ హార్మొనీ (NFCH) ఏ కార్యకలాపాలు చేపడుతుంది?",
      options:[
        "ప్రాథమికంగా బాలబాధితులకు ఆర్థిక సహాయం అందించడంపై దృష్టి పెట్టింది.",
        "ప్రధానంగా రాజకీయ కార్యకలాపాలను నిర్వహించడంలో పాల్గొంటుంది.",
        "మత సామరస్యాన్ని ప్రోత్సహించడమే లక్ష్యం.",
        "మత సామరస్యం, జాతీయ సమైక్యత మరియు వివిధ సంబంధిత కార్యకలాపాలను ప్రోత్సహించడంలో పాల్గొంటుంది."
      ],
      correctAnswerIndex: 3,
      explanation:"NFCH ప్రాథమికంగా మత సామరస్యం, జాతీయ సమైక్యత మరియు పిల్లల బాధితులకు ఆర్థిక సహాయం అందించడం, ఈవెంట్‌లు నిర్వహించడం, అధ్యయనాలు నిర్వహించడం, స్కాలర్‌షిప్‌లు మంజూరు చేయడం, అవార్డులు అందించడం మరియు దాని లక్ష్యాలను ప్రోత్సహించడంలో వివిధ సంస్థలను భాగస్వామ్యం చేయడం వంటి సంబంధిత కార్యకలాపాలను ప్రోత్సహించడంలో పాల్గొంటుంది.",
    ),

    Question(
      questionText: "నేషనల్ ఫౌండేషన్ ఫర్ కమ్యూనల్ హార్మొనీ (NFCH) ఎప్పుడు స్థాపించబడింది మరియు దాని దృష్టి ఏమిటి?",
      options:[
        "ఆర్థిక అభివృద్ధిపై దృష్టి సారించి 1962లో స్థాపించబడింది.",
        "మత సామరస్యం మరియు జాతీయ సమైక్యతపై దృష్టి సారించి 1992లో స్థాపించబడింది.",
        "రాజకీయ సమస్యలపై దృష్టి సారించి 1961లో స్థాపించబడింది.",
        "ప్రాంతీయ అభివృద్ధిపై దృష్టి సారించి 2000లో స్థాపించబడింది."
      ],
      correctAnswerIndex: 1,
      explanation:"NFCH 1992లో మత సామరస్యం, సౌభ్రాతృత్వం మరియు జాతీయ సమైక్యతను ప్రోత్సహించడంపై దృష్టి సారించి స్థాపించబడింది.",
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
    home: nintgn_te(),
  ));
}

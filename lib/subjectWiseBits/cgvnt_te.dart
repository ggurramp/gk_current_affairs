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

class cgvnt_te extends StatefulWidget {
  final String? userIdentifier;

  cgvnt_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cgvnt_te> createState() => _cgvnt_teState();
}

class _cgvnt_teState extends State<cgvnt_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//84.సంకీర్ణ ప్రభుత్వం

    Question(
      questionText: "సంకీర్ణం' అనే పదానికి శబ్దవ్యుత్పత్తి మూలం ఏమిటి?",
      options:[
        "ఇది గ్రీకు నుండి ఉద్భవించింది, దీని అర్థం 'ఏకీకరించడం'",
        "ఇది లాటిన్ పదం 'కూటమి-' నుండి వచ్చింది, దీని అర్థం 'కలిసి పెరగడం',",
        "దీని మూలాలను పాత ఆంగ్లంలో గుర్తించవచ్చు, ఇది 'రాజకీయ కూటమి'ని సూచిస్తుంది.",
        "ఈ పదానికి నిర్దిష్ట శబ్దవ్యుత్పత్తి మూలం లేదు."
      ],
      correctAnswerIndex: 1,
      explanation:"కూటమి' అనే పదం లాటిన్ పదం 'కూటమి-' నుండి ఉద్భవించింది, దీని అర్థం 'కలిసి పెరగడం'",
    ),

    Question(
      questionText: "రాజకీయాల సందర్భంలో సంకీర్ణం ఎలా నిర్వచించబడుతుంది?",
      options:[
        "పరస్పర ప్రయోజనం కోసం వ్యాపారాల సహకారం.",
        "ఆర్థిక వృద్ధి కోసం దేశాల మధ్య కూటమి.",
        "ప్రభుత్వ ఏర్పాటుకు రాజకీయ పార్టీల మధ్య ఒప్పందం.",
        "సామాజిక కారణాల కోసం వ్యక్తుల యూనియన్."
      ],
      correctAnswerIndex: 2,
      explanation:"రాజకీయాల్లో, సంకీర్ణం అనేది ప్రభుత్వాన్ని ఏర్పాటు చేయడానికి చేతులు కలిపే విభిన్న రాజకీయ పార్టీల కూటమిని సూచిస్తుంది.",
    ),

    Question(
      questionText: "ఆధునిక పార్లమెంట్‌లలో సాధారణంగా ఏ పరిస్థితుల్లో సంకీర్ణాలు ఏర్పడతాయి?",
      options:[
        "ఒకే రాజకీయ పార్టీకి స్పష్టమైన మెజారిటీ ఉన్నప్పుడు.",
        "రెండు లేదా అంతకంటే ఎక్కువ పార్టీలు తీవ్రమైన రాజీలను అంగీకరించినప్పుడు.",
        "ఏ ఒక్క పార్టీ కూడా మెజారిటీ ఓట్లను కూడగట్టలేనప్పుడు.",
        "పార్టీలు వారి వ్యక్తిగత విధానాలకు ఖచ్చితంగా కట్టుబడి ఉన్నప్పుడు."
      ],
      correctAnswerIndex: 2,
      explanation:"సాధారణంగా ఆధునిక పార్లమెంటులలో ఏ ఒక్క రాజకీయ పార్టీ కూడా మెజారిటీ ఓట్లను కూడగట్టలేనప్పుడు సంకీర్ణాలు ఏర్పడతాయి.",
    ),

    Question(
      questionText: "సంకీర్ణ ప్రభుత్వం యొక్క ప్రయోజనం ఏమిటి?",
      options:[
        "కఠినమైన సిద్ధాంతాన్ని మరియు సైద్ధాంతిక స్వచ్ఛతను ప్రోత్సహించడానికి.",
        "స్థిరమైన మరియు మార్పులేని రాజకీయ వ్యవస్థను స్థాపించడానికి.",
        "కనీస ప్రోగ్రామ్ ఆధారంగా పని చేయడానికి.",
        "వ్యావహారిక సర్దుబాట్ల కంటే సూత్రాలకు ప్రాధాన్యత ఇవ్వడానికి."
      ],
      correctAnswerIndex: 2,
      explanation:"సంకీర్ణ ప్రభుత్వం యొక్క ఉద్దేశ్యం కనీస కార్యక్రమం ఆధారంగా పని చేయడం.",
    ),

    Question(
      questionText: "JC జోహరి ప్రకారం సంకీర్ణ రాజకీయాల లక్షణాలు లేదా చిక్కులు ఏమిటి?",
      options:[
        "ఇది దృఢమైన సిద్ధాంతం మరియు రాజీలేని సూత్రాలపై ఆధారపడి ఉంటుంది.",
        "ఇది స్థిరమైన మరియు మార్పులేని వ్యవహారం.",
        "ఇది నిర్దిష్ట ఆసక్తుల యొక్క తాత్కాలిక కలయికను కలిగి ఉంటుంది.",
        "ఇది కేవలం సైద్ధాంతిక ప్రాతిపదికన పనిచేస్తుంది."
      ],
      correctAnswerIndex: 2,
      explanation:"JC జోహరి ప్రకారం, సంకీర్ణ వ్యవస్థ యొక్క అంతర్లీన సూత్రం నిర్దిష్ట ప్రయోజనాల తాత్కాలిక కలయికపై నిలుస్తుంది.",
    ),

    Question(
      questionText: "మొదటి నాలుగు లోక్‌సభ ఎన్నికలలో (1952-1967) కాంగ్రెస్ పార్టీకి ఎన్నికల ఫలితాలు ఏమిటి?",
      options:[
    "నాలుగు ఎన్నికల్లో కాంగ్రెస్ పార్టీ మెజారిటీ సాధించింది.",
      "కాంగ్రెస్ పార్టీ 1969లో ఓటమిని ఎదుర్కొన్నప్పటికీ మైనారిటీ ప్రభుత్వాన్ని నిర్వహించింది.",
      "కాంగ్రెస్ పార్టీ 1962 మరియు 1967 ఎన్నికలలో గెలిచింది, కానీ 1969లో చీలికను ఎదుర్కొంది.",
      "కాంగ్రెస్ పార్టీ 1971 ఎన్నికలలో గెలిచి ఒకే పార్టీ ప్రభుత్వాన్ని ఏర్పాటు చేసింది."
      ],
      correctAnswerIndex: 3,
      explanation:"కాంగ్రెస్ పార్టీ మొదటి నాలుగు లోక్‌సభ ఎన్నికలలో (1952-1967) గెలిచింది మరియు 1969లో చీలికను ఎదుర్కొంది, కానీ మైనారిటీ ప్రభుత్వంతో కొనసాగగలిగింది.",
    ),

    Question(
      questionText: "1977-1979 కాలంలో ఏ రాజకీయ పార్టీలు సంకీర్ణ ప్రభుత్వాన్ని ఏర్పాటు చేశాయి?",
      options:[
        "జనతా దళ్ (సోషలిస్ట్) లేదా సమాజ్ వాదీ జనతా పార్టీ",
        "యునైటెడ్ ఫ్రంట్",
        "జనతా పార్టీ",
        "జనతాదళ్ (ఎస్) మరియు జనతా పార్టీ"
      ],
      correctAnswerIndex: 2,
      explanation:"1977-1979 కాలంలో సంకీర్ణ ప్రభుత్వం జనతా పార్టీచే ఏర్పాటు చేయబడింది.",
    ),

    Question(
      questionText: "1997-1998 కాలంలో సంకీర్ణ ప్రభుత్వానికి ఎవరు నాయకత్వం వహించారు?",
      options:[
        "మొరార్జీ దేశాయ్ (కాంగ్రెస్ (ఓ))",
        "చరణ్ సింగ్ (జనతా (ఎస్))",
        "చంద్ర శేఖర్ (జనతా దళ్ (ఎస్) లేదా సమాజ్ వాదీ జనతా పార్టీ)",
        "ఐకే గుజ్రాల్ (జనతాదళ్)"
      ],
      correctAnswerIndex: 2,
      explanation:"1997-1998 కాలంలో చంద్ర శేఖర్ సంకీర్ణ ప్రభుత్వానికి నాయకత్వం వహించారు.",
    ),

    Question(
      questionText: "1999-2004 సంవత్సరాలలో ఏ సంకీర్ణ ప్రభుత్వం అధికారంలో ఉంది?",
      options:[
        "యునైటెడ్ ప్రోగ్రెసివ్ అలయన్స్ (UPA)",
        "నేషనల్ డెమోక్రటిక్ అలయన్స్ (NDA)",
        "యునైటెడ్ ప్రోగ్రెసివ్ అలయన్స్-II (UPA-II)",
        "నేషనల్ డెమోక్రటిక్ అలయన్స్ (NDA)"
      ],
      correctAnswerIndex: 1,
      explanation:"1999-2004 సంవత్సరాలలో నేషనల్ డెమోక్రటిక్ అలయన్స్ (NDA) అధికారంలో ఉంది.",
    ),

    Question(
      questionText: "సంకీర్ణ ప్రభుత్వాల ప్రధాన ప్రతికూలతగా ఏది గుర్తించబడింది?",
      options:[
        "అధిక స్థిరత్వం చైతన్యం లేకపోవటానికి దారి తీస్తుంది.",
        "చిన్న భాగాలను అధిగమించే ధోరణి.",
        "సంకీర్ణ భాగస్వాముల మధ్య అభిప్రాయ భేదాల కారణంగా అస్థిరత.",
        "మెరుగైన నిర్ణయం తీసుకునే సామర్థ్యం."
      ],
      correctAnswerIndex: 2,
      explanation:"సంకీర్ణ ప్రభుత్వాల యొక్క ప్రధాన ప్రతికూలత వాటి అస్థిరత, తరచుగా సంకీర్ణ భాగస్వాముల మధ్య అభిప్రాయ భేదాల వల్ల కలుగుతుంది.",
    ),

    Question(
      questionText: "సంకీర్ణ ప్రభుత్వంలో ప్రధానమంత్రి నాయకత్వానికి ఒకే పార్టీ ప్రభుత్వంలో ఉన్న నాయకత్వానికి తేడా ఎలా ఉంటుంది?",
      options:[
        "సంకీర్ణ ప్రభుత్వంలో ప్రధానమంత్రికి అపరిమితమైన శక్తి ఉంది.",
        "సంకీర్ణ ప్రభుత్వంలో ప్రధానమంత్రి 'సూపర్ ప్రైమ్ మినిస్టర్', నిర్ణయాధికారం తగ్గించే స్వయంప్రతిపత్తి.",
        "సంకీర్ణ ప్రభుత్వంలో ప్రధానమంత్రి సంకీర్ణ భాగస్వాములను సంప్రదించరు.",
        "సంకీర్ణ ప్రభుత్వంలో ప్రధానమంత్రి పాత్ర మారదు."
      ],
      correctAnswerIndex: 1,
      explanation:"సంకీర్ణ ప్రభుత్వంలో, ప్రధానమంత్రి నాయకత్వం పరిమితం చేయబడింది మరియు విమర్శకులు వారిని 'సూపర్ ప్రైమ్ మినిస్టర్స్' లేదా 'అల్ట్రా ప్రైమ్ మినిస్టర్స్' అని పేర్కొన్నారు.",
    ),

    Question(
      questionText: "సంకీర్ణ ప్రభుత్వంలో స్టీరింగ్ కమిటీ లేదా కో-ఆర్డినేషన్ కమిటీ పాత్ర ఏమిటి?",
      options:[
        "ఇది నిర్ణయం తీసుకోవడంలో మంత్రివర్గం యొక్క స్థానాన్ని బలపరుస్తుంది.",
        "ఇది ఒక 'సూపర్-క్యాబినెట్' వలె పనిచేస్తుంది మరియు మంత్రివర్గం పాత్రను బలహీనపరుస్తుంది.",
        "ఇది ప్రభుత్వ పనితీరును ప్రభావితం చేయకుండా ఒక చిన్న సలహా పాత్రను పోషిస్తుంది.",
        "ఇది మరింత శక్తిని డిమాండ్ చేయడంలో చిన్న భాగాలకు మద్దతు ఇస్తుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"సంకీర్ణ ప్రభుత్వంలో స్టీరింగ్ కమిటీ లేదా కో-ఆర్డినేషన్ కమిటీ 'సూపర్-క్యాబినెట్'గా వ్యవహరిస్తుంది మరియు మంత్రివర్గం యొక్క పాత్ర మరియు స్థానాన్ని బలహీనపరుస్తుంది.",
    ),

    Question(
      questionText: "సంకీర్ణ ప్రభుత్వంలో మంత్రుల మండలి పరిమాణానికి సంబంధించిన సంభావ్య సమస్య ఏమిటి?",
      options:[
        "పరిమిత ప్రాతినిధ్యంతో కూడిన చిన్న మంత్రుల మండలి.",
        "పోర్ట్‌ఫోలియోల సమర్ధవంతమైన పంపిణీ మరియు సరైన సమన్వయం.",
        "అధిక సంఖ్యలో మంత్రులతో 'జంబో మంత్రిత్వ శాఖ' అవకాశం.",
        "పరిపాలన వైఫల్యాలకు సభ్యులు బాధ్యత వహిస్తారు."
      ],
      correctAnswerIndex: 2,
      explanation:"సంకీర్ణ ప్రభుత్వంలో మంత్రుల మండలి పరిమాణం చాలా పెద్దదిగా ఉంటుంది, ఇది పోర్ట్‌ఫోలియోల పంపిణీలో సమస్యలకు దారి తీస్తుంది మరియు 1999లో 'జంబో మంత్రిత్వ శాఖ' ఉదాహరణ వంటి సరైన సమన్వయం.",
    ),

    Question(
      questionText: "సంకీర్ణ ప్రభుత్వాల సభ్యులు తరచుగా పరిపాలనా వైఫల్యాలను ఎలా నిర్వహిస్తారు?",
      options:[
        "వారు సమిష్టి బాధ్యతను స్వీకరిస్తారు మరియు అభివృద్ధికి కృషి చేస్తారు.",
        "వారు నింద గేమ్‌లలో పాల్గొంటారు మరియు సామూహిక మరియు వ్యక్తిగత బాధ్యత నుండి తప్పించుకుంటారు.",
        "వారు జవాబుదారీతనానికి ప్రాధాన్యత ఇస్తారు మరియు తక్షణ దిద్దుబాటు చర్యలను తీసుకుంటారు.",
        "నైతిక ప్రమాణాలను నిలబెట్టడానికి వారు తమ పదవులకు రాజీనామా చేస్తారు."
      ],
      correctAnswerIndex: 1,
      explanation:"సంకీర్ణ ప్రభుత్వాల సభ్యులు తరచుగా నిందారోపణలలో పాల్గొంటారు మరియు పరిపాలనా వైఫల్యాలకు సామూహిక మరియు వ్యక్తిగత బాధ్యతల నుండి తప్పించుకుంటారు.",
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
    home: cgvnt_te(),
  ));
}

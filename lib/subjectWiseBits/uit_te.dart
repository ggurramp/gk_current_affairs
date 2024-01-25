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

class uit_te extends StatefulWidget {
  final String? userIdentifier;

  uit_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<uit_te> createState() => _uit_teState();
}

class _uit_teState extends State<uit_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//యూనియన్ అండ్ ఇట్స్ టెరిటరీ
    Question(
        questionText: "మహారాష్ట్ర రాష్ట్రంగా ఏర్పడటానికి వెనుక ఉన్న చారిత్రక సందర్భం ఏమిటి?",
        options:[
          "ఆదివాసి ఆకాంక్షలను తీర్చడానికి",
          "భాషా పునర్వ్యవస్థీకరణ ఫలితంగా",
          "సాంస్కృతిక పరిశీలనల ఆధారంగా రూపొందించబడింది",
          "మధ్యప్రదేశ్ నుండి చెక్కబడింది"
        ],
        correctAnswerIndex: 1,
        explanation:"భాషా పునర్వ్యవస్థీకరణ ఫలితంగా మే 1, 1960న మహారాష్ట్ర ఏర్పడింది. మరాఠీ మాట్లాడే రాష్ట్రాన్ని సృష్టించేందుకు ఇది ద్విభాషా బొంబాయి రాష్ట్రం నుండి వేరు చేయబడింది."
    ),

    Question(
        questionText: "కేంద్రపాలిత ప్రాంతంగా ఉండి, 1961లో పోర్చుగీస్ పాలన నుండి విలీనమైన తర్వాత ఏ రాష్ట్రం రాష్ట్ర హోదాను పొందింది?",
        options:["మణిపూర్", "గోవా", "మేఘాలయ", "మిజోరం"],
        correctAnswerIndex: 1,
        explanation:"యూనియన్ టెరిటరీ అయిన తర్వాత గోవా మే 30, 1987న రాష్ట్ర హోదాను పొందింది. 1961లో పోర్చుగీస్ పాలన నుండి విలీనము దాని రాష్ట్ర హోదాకు ముందు జరిగింది."
    ),

    Question(
        questionText: "ఛత్తీస్‌గఢ్ రాష్ట్రంగా ఏర్పడటానికి వెనుక ఉన్న చారిత్రక సందర్భం ఏమిటి?",
        options:[
          "ఆదివాసి ఆకాంక్షలను తీర్చడానికి",
          "భాషా పునర్వ్యవస్థీకరణ ఫలితంగా",
          "సాంస్కృతిక పరిశీలనల ఆధారంగా రూపొందించబడింది",
          "మధ్యప్రదేశ్ నుండి చెక్కబడింది"
        ],
        correctAnswerIndex: 3,
        explanation:"నవంబర్ 1, 2000న ఏర్పడిన ఛత్తీస్‌గఢ్, ప్రాంతీయ అసమతుల్యతలను పరిష్కరించడానికి మరియు మెరుగైన పాలన అందించడానికి మధ్యప్రదేశ్ నుండి వేరు చేయబడింది."
    ),

    Question(
        questionText: "తెలంగాణ ఎప్పుడు ఏర్పడింది మరియు ఆంధ్ర ప్రదేశ్ నుండి విడిపోవడానికి ప్రాథమిక కారణం ఏమిటి?",
        options:[
          "భాషాపరమైన కారణాల కోసం జనవరి 21, 1972న ఏర్పడింది",
          "సాంస్కృతిక పరిశీలనల కోసం ఫిబ్రవరి 20, 1987న ఏర్పడింది",
          "ప్రాంతీయ అసమతుల్యత కోసం నవంబర్ 1, 2000న ఏర్పడింది",
          "ప్రాంతీయ మరియు అభివృద్ధి పరిగణనల ఆధారంగా జూన్ 2, 2014న ఏర్పడింది"
        ],
        correctAnswerIndex: 3,
        explanation:"ప్రాంతీయ మరియు అభివృద్ధి పరిగణనల ఆధారంగా ఆంధ్రప్రదేశ్ నుండి విడిపోయి జూన్ 2, 2014న తెలంగాణ ఏర్పడింది."
    ),
    Question(
      questionText: "మే 1, 1960న భాషాపరమైన పరిశీలనల ఆధారంగా ద్విభాషా బొంబాయి రాష్ట్రం నుండి ఏ రాష్ట్రం రూపొందించబడింది?",
      options:["మహారాష్ట్ర", "గుజరాత్", "గోవా", "మణిపూర్"],
      correctAnswerIndex: 0,
      explanation:"మహారాష్ట్ర మే 1, 1960న, రాష్ట్రాల భాషాపరమైన పునర్వ్యవస్థీకరణ ద్వారా ఏర్పడింది, దానిని ద్విభాషా బొంబాయి రాష్ట్రం నుండి వేరు చేసింది. ఈ నిర్ణయం మరాఠీ మాట్లాడే రాష్ట్రాన్ని సృష్టించడం లక్ష్యంగా పెట్టుకుంది.",
    ),

    Question(
      questionText: "మే 30, 1987న గోవా రాష్ట్రంగా ఏర్పడటానికి ఏ చారిత్రక సందర్భం దారి తీసింది?",
      options:["భాషా పునర్వ్యవస్థీకరణ", "రాచరిక రాష్ట్రాల ఏకీకరణ", "పోర్చుగీస్ పాలన నుండి విలీనము", "గిరిజన ఆకాంక్షలు"],
      correctAnswerIndex: 2,
      explanation:"యూనియన్ టెరిటరీ అయిన తర్వాత గోవా మే 30, 1987న రాష్ట్ర హోదాను పొందింది. చారిత్రక సందర్భం 1961లో పోర్చుగీస్ పాలన నుండి విలీనమై దాని రాష్ట్ర హోదాకు మార్గం సుగమం చేస్తుంది.",
    ),

    Question(
      questionText: "త్రిపురి మాట్లాడే జనాభా యొక్క ప్రత్యేక గుర్తింపును పరిష్కరించడానికి జనవరి 21, 1972న ఏ రాష్ట్రం ఏర్పడింది, కేంద్రపాలిత ప్రాంతం నుండి పూర్తి స్థాయి రాష్ట్రంగా మారింది?",
      options:["మేఘాలయ", "మణిపూర్", "త్రిపుర", "మిజోరం"],
      correctAnswerIndex: 2,
      explanation:"జనవరి 21, 1972న త్రిపుర ఒక రాష్ట్రంగా అవతరించి, కేంద్రపాలిత ప్రాంతం నుండి పరివర్తన చెందింది. ఈ చర్య త్రిపురి మాట్లాడే జనాభా యొక్క ప్రత్యేక గుర్తింపు మరియు ఆకాంక్షలను పరిష్కరించడానికి లక్ష్యంగా పెట్టుకుంది.",
    ),

    Question(
      questionText: "నవంబర్ 1, 2000న, ప్రాంతీయ అసమతుల్యతలను పరిష్కరించడానికి మరియు మెరుగైన పాలన అందించడానికి మధ్యప్రదేశ్ నుండి ఏ రాష్ట్రం ఏర్పడింది?",
      options:["జార్ఖండ్", "ఛత్తీస్‌గఢ్", "ఉత్తరాఖండ్", "తెలంగాణ"],
      correctAnswerIndex: 1,
      explanation:"చత్తీస్‌గఢ్ నవంబర్ 1, 2000న మధ్యప్రదేశ్ నుండి వేరుచేయడం ద్వారా ఏర్పడింది. ఈ నిర్ణయం ప్రాంతీయ అసమానతలను పరిష్కరించడం మరియు కొత్తగా ఏర్పడిన రాష్ట్రంలో మెరుగైన పాలనను ప్రోత్సహించడం లక్ష్యంగా పెట్టుకుంది.",
    ),

    Question(
      questionText: "ఫిబ్రవరి 20, 1987న అరుణాచల్ ప్రదేశ్ రాష్ట్రంగా ఏర్పడటం వెనుక ఉన్న చారిత్రక సందర్భం ఏమిటి?",
      options:["రాజ్యాల ఏకీకరణ", "భాషా పునర్వ్యవస్థీకరణ", "పోర్చుగీస్ పాలన నుండి అనుబంధం", "గిరిజన ఆకాంక్షలు"],
      correctAnswerIndex: 1,
      explanation:"అరుణాచల్ ప్రదేశ్ ఫిబ్రవరి 20, 1987న ఒక రాష్ట్రంగా అవతరించింది, ఇది భాషా పునర్వ్యవస్థీకరణలో పాతుకుపోయిన చారిత్రక సందర్భంతో ఉంది. అంతకుముందు కేంద్రపాలిత ప్రాంతం, ఈ ప్రాంతం యొక్క ప్రత్యేక సాంస్కృతిక మరియు భాషా లక్షణాలను పరిష్కరించడానికి రాష్ట్ర హోదా ఇవ్వబడింది.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలో 'ఫెడరేషన్'కి బదులుగా 'యూనియన్ ఆఫ్ స్టేట్స్' అనే పదాన్ని ఎందుకు ఉపయోగించారు?",
      options:["రాష్ట్ర ఒప్పందాల కారణంగా", "రాష్ట్రాలు విడిపోవడానికి అనుమతించడం", "భాషాపరమైన పరిశీలనల ఫలితంగా", "ఫెడరలిజాన్ని నొక్కి చెప్పడం"],correctAnswerIndex: 1,
      explanation:"యూనియన్ ఆఫ్ స్టేట్స్' అనే పదం 'ఫెడరేషన్' కంటే ఎంపిక చేయబడింది, ఎందుకంటే ఇండియన్ ఫెడరేషన్ రాష్ట్ర ఒప్పందాల ఫలితంగా లేదు మరియు రాష్ట్రాలకు విడిపోయే హక్కు లేదు.",
    ),

    Question(
      questionText: "ఆర్టికల్ 1 ప్రకారం భారత భూభాగాన్ని ఏ మూడు వర్గాలుగా వర్గీకరించారు?",
      options:["ప్రావిన్సులు, భూభాగాలు మరియు కాలనీలు", "రాష్ట్రాలు, భూభాగాలు మరియు జిల్లాలు", "భారత ప్రభుత్వం స్వాధీనం చేసుకున్న రాష్ట్రాలు, కేంద్ర పాలిత ప్రాంతాలు మరియు భూభాగాలు", "ఉత్తరం, దక్షిణం మరియు మధ్య"],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 1 భారత భూభాగాన్ని మూడు వర్గాలుగా వర్గీకరిస్తుంది: రాష్ట్రాలు, కేంద్రపాలిత ప్రాంతాలు మరియు భారత ప్రభుత్వం స్వాధీనం చేసుకునే ప్రాంతాలు.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని ఏ షెడ్యూల్‌లు రాష్ట్రాలలోని షెడ్యూల్డ్ మరియు గిరిజన ప్రాంతాలను సూచిస్తాయి?",
      options:["రెండవ మరియు మూడవ షెడ్యూల్‌లు", "మూడవ మరియు నాల్గవ షెడ్యూల్‌లు", "ఐదవ మరియు ఆరవ షెడ్యూల్‌లు", "ఆరవ మరియు ఏడవ షెడ్యూల్‌లు"],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగంలోని ఐదవ మరియు ఆరవ షెడ్యూల్‌లు రాష్ట్రాలలోని షెడ్యూల్డ్ మరియు గిరిజన ప్రాంతాల చిరునామా.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని ఆర్టికల్ 2 పార్లమెంటుకు ఏ అధికారం ఇస్తుంది?",
      options:["రాష్ట్రాలను విడిపోయే అధికారం", "కొత్త రాష్ట్రాలను అంగీకరించే అధికారం", "రాష్ట్రాలను రద్దు చేసే అధికారం", "రాష్ట్ర సరిహద్దులను మార్చే అధికారం"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 2 కొత్త రాష్ట్రాలను అంగీకరించడానికి లేదా వాటిని స్థాపించడానికి పార్లమెంటుకు అధికారం ఇస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 3 ప్రకారం, ప్రస్తుత రాష్ట్రాల పునర్వ్యవస్థీకరణలో పార్లమెంటుకు ఏ అధికారం ఉంది?",
      options:["హద్దులను మార్చండి", "రాష్ట్ర పేర్లను మార్చండి", "కొత్త రాష్ట్రాలను ఏర్పరచండి", "పైవన్నీ"],
      correctAnswerIndex: 3,
      explanation:"ప్రస్తుత రాష్ట్రాల పునర్వ్యవస్థీకరణలో సరిహద్దులను మార్చడానికి, పేర్లను మార్చడానికి మరియు కొత్త రాష్ట్రాలను ఏర్పాటు చేయడానికి పార్లమెంటు అధికారాన్ని ఆర్టికల్ 3 వివరిస్తుంది.",
    ),

    Question(
      questionText: "రాష్ట్రాలను పునర్వ్యవస్థీకరించడానికి పార్లమెంటు అధికారంలో ముఖ్యమైన అంశం ఏమిటి?",
      options:["రాష్ట్రాలకు వీటో అధికారం ఉంది", "రాష్ట్రపతి సిఫార్సు ఐచ్ఛికం", "రాష్ట్ర శాసనసభ అభిప్రాయాలు కట్టుబడి ఉంటాయి", "రాష్ట్ర శాసనసభ అభిప్రాయానికి పార్లమెంటు కట్టుబడి ఉండదు"],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్రాల పునర్వ్యవస్థీకరణలో, పార్లమెంటు అధికారం ముఖ్యమైనది మరియు రాష్ట్ర శాసనసభ అభిప్రాయానికి కట్టుబడి ఉండదు, అయినప్పటికీ రాష్ట్రపతి సిఫార్సు అవసరం.",
    ),

    Question(
      questionText: "ఆర్టికల్ 3 ప్రకారం, భారత భూభాగాన్ని విదేశీ దేశానికి అప్పగించడం ద్వారా పార్లమెంటు రాష్ట్ర విస్తీర్ణాన్ని తగ్గించవచ్చా?",
      options:["అవును", "లేదు", "రాష్ట్ర శాసనసభ ఆమోదంతో మాత్రమే", "రాష్ట్రపతి సిఫార్సుతో మాత్రమే"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 3 కింద ఒక రాష్ట్ర విస్తీర్ణాన్ని తగ్గించే అధికారం విదేశీ దేశానికి భారత భూభాగాన్ని అప్పగించడాన్ని కలిగి ఉండదు; అటువంటి చర్యలకు రాజ్యాంగ సవరణ అవసరం.",
    ),

    Question(
      questionText: "ఏ రాజ్యాంగ సవరణ చట్టం 2015లో బంగ్లాదేశ్‌తో భూభాగాల మార్పిడిని సులభతరం చేసింది?",
      options:["95వ రాజ్యాంగ సవరణ చట్టం", "100వ రాజ్యాంగ సవరణ చట్టం", "105వ రాజ్యాంగ సవరణ చట్టం", "110వ రాజ్యాంగ సవరణ చట్టం"],
      correctAnswerIndex: 1,
      explanation:"100వ రాజ్యాంగ సవరణ చట్టం (2015) బంగ్లాదేశ్‌తో భూభాగాల మార్పిడిని సులభతరం చేసింది, ఇందులో ఎన్‌క్లేవ్‌ల బదిలీ ఉంటుంది.",
    ),

    Question(
      questionText: "రాజ్యాల ఏకీకరణ మరియు భాషాపరమైన పునర్వ్యవస్థీకరణతో సహా భారతదేశ రాజకీయ పటాన్ని చారిత్రాత్మకంగా ఆకృతి చేసింది ఏమిటి?",
      options:["సాంస్కృతిక విప్లవాలు", "వలస పాలన ప్రభావం", "ఆర్థిక సంస్కరణలు", "రాచరిక రాష్ట్రాల ఏకీకరణ మరియు భాషా పునర్వ్యవస్థీకరణ"],
      correctAnswerIndex: 3,
      explanation:"చారిత్రాత్మకంగా, రాచరిక రాష్ట్రాల ఏకీకరణ మరియు భాషాపరమైన పునర్వ్యవస్థీకరణ భారతదేశ రాజకీయ పటాన్ని ఆకృతి చేసింది.",
    ),

    Question(
      questionText: "మహారాష్ట్ర, గుజరాత్, గోవా, మణిపూర్ మరియు ఇతర రాష్ట్రాల ఏర్పాటును ఏ పరిగణనలు ప్రభావితం చేశాయి?",
      options:["ఆర్థిక కారకాలు", "మతపరమైన పరిశీలనలు", "భాషా లేదా ప్రాంతీయ పరిగణనలు", "వలస చరిత్ర"],
      correctAnswerIndex: 2,
      explanation:"మహారాష్ట్ర, గుజరాత్, గోవా, మణిపూర్ మొదలైన రాష్ట్రాలు భాషా లేదా ప్రాంతీయ పరిశీలనల ఆధారంగా సృష్టించబడ్డాయి.",
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
    home: uit_te(),
  ));
}

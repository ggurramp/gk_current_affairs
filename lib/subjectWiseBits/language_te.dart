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

class language_te extends StatefulWidget {
  final String? userIdentifier;

  language_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<language_te> createState() => _language_teState();
}

class _language_teState extends State<language_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//73.అధికారిక భాష

    Question(
      questionText: "రాజ్యాంగంలోని XVII భాగంలోని నిబంధనల ప్రకారం యూనియన్ అధికారిక భాష ఏమిటి?",
      options:["ఇంగ్లీష్", "దేవనాగరి", "దేవనాగరి లిపిలో వ్రాయబడిన హిందీ", "సంస్కృతం"],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగంలోని XVII భాగం ప్రకారం, దేవనాగరి లిపిలో వ్రాయబడిన హిందీ యూనియన్ యొక్క అధికారిక భాష.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రారంభమైన మొదటి పదిహేనేళ్లలో, యూనియన్ అధికారిక ప్రయోజనాల కోసం ఆంగ్ల భాష యొక్క స్థితి ఏమిటి?",
      options:[
        "ఇది పూర్తిగా హిందీ ద్వారా భర్తీ చేయబడింది",
        "ఇది అన్ని అధికారిక ప్రయోజనాల కోసం ఉపయోగించడం కొనసాగింది",
        "ఇది నిర్దిష్ట ప్రయోజనాల కోసం మాత్రమే ఉపయోగించబడింది",
        "ఇది ప్రాంతీయ భాషగా ఉపయోగించబడింది"
      ],
      correctAnswerIndex: 1,
      explanation:"మొదటి పదిహేనేళ్లలో, 1950 నుండి 1965 వరకు, యూనియన్ యొక్క అన్ని అధికారిక ప్రయోజనాల కోసం ఆంగ్ల భాష ఉపయోగించడం కొనసాగింది.",
    ),

    Question(
      questionText: "ప్రారంభ పదిహేనేళ్ల తర్వాత ఇంగ్లీషు భాష వినియోగానికి సంబంధించి పార్లమెంటు ఏ నిబంధన చేసింది?",
      options:[
        "ఇది ఆంగ్లాన్ని పూర్తిగా హిందీతో భర్తీ చేయడాన్ని తప్పనిసరి చేసింది",
        "ఇది ఏ ఉద్దేశానికైనా ఆంగ్లాన్ని ఉపయోగించడాన్ని నిషేధించింది",
        "ఇది నిర్దిష్ట ప్రయోజనాల కోసం ఆంగ్లం యొక్క నిరంతర వినియోగాన్ని అనుమతించింది",
        "ఇది వ్యక్తులకు ఆంగ్లాన్ని ఐచ్ఛికం చేసింది"
      ],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంట్ ప్రారంభ పదిహేనేళ్ల తర్వాత కూడా నిర్దిష్ట ప్రయోజనాల కోసం హిందీతో పాటు ఆంగ్ల భాషను కొనసాగించడానికి అనుమతించింది.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రారంభమైన ఐదు సంవత్సరాల పదేళ్ల ముగింపులో రాష్ట్రపతి దేనిని నియమించారు?",
      options:[
        "అధికారిక భాషా సంఘం",
        "పార్లమెంటరీ భాషా కమిటీ",
        "ఇంగ్లీష్ లాంగ్వేజ్ కమిటీ",
        "ప్రాంతీయ భాషా సంఘం"
      ],
      correctAnswerIndex: 0,
      explanation:"రాజ్యాంగం ప్రారంభమైన ఐదు సంవత్సరాల మరియు పదేళ్ల ముగింపులో రాష్ట్రపతి అధికార భాషా సంఘాన్ని నియమించారు.",
    ),

    Question(
      questionText: "1963 అధికారిక భాషల చట్టం యూనియన్ యొక్క అధికారిక ప్రయోజనాల కోసం ఆంగ్లాన్ని ఉపయోగించడం గురించి ఏమి అందిస్తుంది?",
      options:[
        "ఇది ఇంగ్లీష్ వాడకాన్ని పూర్తిగా రద్దు చేసింది",
        "ఇది కొన్ని ప్రాంతాలలో మాత్రమే ఆంగ్ల వినియోగాన్ని అనుమతించింది",
        "ఇది అన్ని సందర్భాలలో ఆంగ్ల వినియోగాన్ని తప్పనిసరి చేసింది",
        "ఇది హిందీతో పాటు నిరవధికంగా ఇంగ్లీషును ఉపయోగించడానికి అందించబడింది"
      ],
      correctAnswerIndex: 3,
      explanation:"1963 అధికారిక భాషల చట్టం యూనియన్ యొక్క అన్ని అధికారిక ప్రయోజనాల కోసం హిందీతో పాటు నిరవధికంగా ఆంగ్లాన్ని ఉపయోగించడాన్ని అనుమతిస్తుంది.",
    ),

    Question(
      questionText: "రాష్ట్ర శాసనసభ ఏదైనా ఇతర భాషను స్వీకరించే వరకు రాష్ట్ర అధికార భాషగా ఏ భాష పరిగణించబడుతుంది?",
      options:[
        "దేవనాగరి",
        "సంస్కృతం",
        "ఆంగ్ల",
        "హిందీ లేదా రాష్ట్రంలో వాడుకలో ఉన్న భాషలు"
      ],
      correctAnswerIndex: 3,
      explanation:"ఒక రాష్ట్ర శాసనసభ ఏదైనా ఇతర భాషని స్వీకరించే వరకు, హిందీ లేదా రాష్ట్రంలో వాడుకలో ఉన్న భాషలు ఆ రాష్ట్ర అధికార భాషగా పరిగణించబడతాయి.",
    ),

    Question(
      questionText: "యూనియన్ మరియు రాష్ట్రాల మధ్య లేదా వివిధ రాష్ట్రాల మధ్య కమ్యూనికేషన్ కోసం లింక్ భాషగా ఏ భాష మిగిలి ఉంది?",
      options:[
        "సంస్కృతం",
        "ఆంగ్ల",
        "హిందీ",
        "దేవనాగరి"
      ],
      correctAnswerIndex: 1,
      explanation:"యూనియన్ మరియు హిందీయేతర రాష్ట్రాల మధ్య కమ్యూనికేషన్ కోసం, రెండు లేదా అంతకంటే ఎక్కువ రాష్ట్రాలు తమ మధ్య కమ్యూనికేషన్ కోసం హిందీని ఉపయోగించడానికి అంగీకరిస్తే తప్ప, ఆంగ్లం అనుసంధాన భాషగా ఉంటుంది.",
    ),

    Question(
      questionText: "ఒక రాష్ట్రంలోని జనాభాలో గణనీయమైన నిష్పత్తిలో మాట్లాడే భాషను గుర్తించడానికి రాజ్యాంగం ఏ నిబంధన చేస్తుంది?",
      options:[
        "పార్లమెంట్ భాషను నిర్ణయించగలదు",
        "గవర్నర్ భాషకు అధికారం ఇవ్వగలరు",
        "రాష్ట్రపతి భాష యొక్క గుర్తింపును నిర్దేశించగలరు",
        "రాష్ట్ర శాసనసభ భాషను సూచించగలదు"
      ],
      correctAnswerIndex: 2,
      explanation:"రాష్ట్రంలో జనాభాలో గణనీయమైన నిష్పత్తిలో మాట్లాడే భాష యొక్క గుర్తింపును రాష్ట్రపతి నిర్దేశించగలరు.",
    ),

    Question(
      questionText: "సుప్రీంకోర్టులో మరియు ప్రతి హైకోర్టులో పార్లమెంటు వేరేవిధంగా అందించే వరకు ఏ భాషలో విచారణ జరగాలి?",
      options:[
        "హిందీ",
        "సంస్కృతం",
        "ఆంగ్ల",
        "దేవనాగరి"
      ],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంట్ లేకపోతే అందించే వరకు, సుప్రీంకోర్టు మరియు ప్రతి హైకోర్టులో విచారణలు ఆంగ్ల భాషలోనే ఉండాలి.",
    ),

    Question(
      questionText: "రాష్ట్ర హైకోర్టులలో హిందీ వాడకానికి సంబంధించి 1963 అధికారిక భాషల చట్టం దేనిని అనుమతిస్తుంది?",
      options:[
        "ఇది ఉపయోగించిన ఏకైక భాషగా హిందీని అనుమతిస్తుంది",
        "ఇది విచారణలు, తీర్పులు, డిక్రీలు మరియు ఉత్తర్వుల కోసం హిందీని ఉపయోగించడానికి అనుమతిస్తుంది",
        "ఇది రాష్ట్ర హైకోర్టులలో హిందీ వాడకాన్ని నిషేధిస్తుంది",
        "ఇది నిర్దిష్ట ప్రాంతాలలో మాత్రమే హిందీని ఉపయోగించడానికి అనుమతిస్తుంది"
      ],
      correctAnswerIndex: 1,
      explanation:"1963 అధికారిక భాషల చట్టం, రాష్ట్ర హైకోర్టులలో విచారణ కోసం హిందీని ఉపయోగించడానికి అనుమతిస్తుంది, అయితే తీర్పులు, డిక్రీలు మరియు ఉత్తర్వులు తప్పనిసరిగా ఇంగ్లీషులోనే ఉండాలి, పార్లమెంటు లేకపోతే తప్ప.",
    ),

    Question(
      questionText: "ప్రతి బాధిత వ్యక్తికి ఫిర్యాదుల పరిష్కారానికి ప్రాతినిధ్యాన్ని సమర్పించగల భాషకు సంబంధించి ఏ హక్కు ఉంది?",
      options:[
        "అధికారిక భాషలో మాత్రమే",
        "హిందీలో మాత్రమే",
        "మాతృభాషలో మాత్రమే",
        "యూనియన్ లేదా రాష్ట్రంలో ఉపయోగించే ఏదైనా భాషలో"
      ],
      correctAnswerIndex: 3,
      explanation:"ప్రతి బాధిత వ్యక్తికి యూనియన్‌లో లేదా రాష్ట్రంలో ఉపయోగించబడే ఏదైనా భాషలో ఫిర్యాదుల పరిష్కారం కోసం ప్రాతినిధ్యాన్ని సమర్పించే హక్కు ఉంటుంది.",
    ),

    Question(
      questionText: "హిందీ భాషకు సంబంధించి రాజ్యాంగం కేంద్రంపై ఏ విధిని విధించింది?",
      options:[
        "హిందీని ఏకైక అధికార భాషగా చేయడానికి",
        "హిందీ వ్యాప్తి మరియు అభివృద్ధిని ప్రోత్సహించడానికి",
        "హిందీని పౌరులందరికీ మాతృభాషగా మార్చడం",
        "విద్యలో ప్రత్యేకంగా హిందీని ఉపయోగించడం"
      ],
      correctAnswerIndex: 1,
      explanation:"హిందీ భాష వ్యాప్తి మరియు అభివృద్ధిని ప్రోత్సహించడానికి రాజ్యాంగం కేంద్రంపై విధిని విధించింది.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని ఎనిమిదవ షెడ్యూల్‌లో ప్రస్తుతం ఎన్ని భాషలు పేర్కొనబడ్డాయి?",
      options:["14", "18", "22", "26"],
      correctAnswerIndex: 2,
      explanation:"ప్రస్తుతం, రాజ్యాంగంలోని ఎనిమిదవ షెడ్యూల్‌లో పేర్కొన్న 22 భాషలు ఉన్నాయి.",
    ),

    Question(
      questionText: "ఎనిమిదవ షెడ్యూల్‌లో ప్రాంతీయ భాషలను పేర్కొనడం వెనుక ఉన్న లక్ష్యాలలో ఒకటి ఏమిటి?",
      options:[
        "ప్రాంతీయ భాషల వినియోగాన్ని పరిమితం చేయడానికి",
        "ఇంగ్లీష్ వినియోగాన్ని ప్రోత్సహించడానికి",
        "అధికారిక భాషా సంఘంలో ప్రాతినిధ్యాన్ని నిర్ధారించడానికి",
        "హిందీ స్థానంలో ప్రాంతీయ భాషలతో"
      ],
      correctAnswerIndex: 3,
      explanation:"నిర్దిష్ట భాషల సభ్యులకు అధికార భాషా సంఘంలో ప్రాతినిధ్యం కల్పించడం లక్ష్యాలలో ఒకటి.",
    ),

    Question(
      questionText: "అధికారిక భాషపై పార్లమెంటు కమిటీ ప్రాథమిక విధి ఏమిటి?",
      options:[
        "ప్రాంతీయ భాషలను ప్రోత్సహించడానికి",
        "అధికారిక ప్రయోజనాల కోసం హిందీ పురోగతిని సమీక్షించడానికి",
        "అంతర్జాతీయ భాషా పురస్కారాలను పర్యవేక్షించడానికి",
        "క్లాసికల్ లాంగ్వేజెస్ కోసం విశ్వవిద్యాలయాలను స్థాపించడం"
      ],
      correctAnswerIndex: 1,
      explanation:"యూనియన్ యొక్క అధికారిక ప్రయోజనాల కోసం హిందీని ఉపయోగించడంలో సాధించిన పురోగతిని సమీక్షించడం మరియు సిఫార్సులను సమర్పించడం అధికార భాషపై పార్లమెంటు కమిటీ యొక్క ప్రాథమిక విధి.",
    ),

    Question(
      questionText: "అధికారిక భాషపై పార్లమెంటు కమిటీ ఛైర్మన్‌గా సాధారణంగా ఎవరు ఎన్నుకోబడతారు?",
      options:[
        "రాష్ట్రపతి",
        "కమిటీ కార్యదర్శి",
        "కేంద్ర హోం మంత్రి",
        "కమిటీ సభ్యుడు"
      ],
      correctAnswerIndex: 2,
      explanation:"ఒక కన్వెన్షన్‌గా, అధికార భాషపై పార్లమెంటు కమిటీకి కేంద్ర హోంమంత్రి ఎప్పటికప్పుడు ఛైర్మన్‌గా ఎన్నికయ్యారు.",
    ),

    Question(
      questionText: "అధికారిక భాషపై పార్లమెంటు కమిటీని ఎంత మంది సభ్యులు ఏర్పాటు చేస్తారు?",
      options:["10", "20", "30", "40"],
      correctAnswerIndex: 2,
      explanation:"అధికారిక భాషపై పార్లమెంటు కమిటీలో 30 మంది పార్లమెంటు సభ్యులు, 20 మంది లోక్ సభ మరియు 10 మంది రాజ్యసభ సభ్యులు ఉంటారు.",
    ),

    Question(
      questionText: "క్లాసికల్ లాంగ్వేజెస్‌గా ప్రకటించబడిన లేదా నోటిఫై చేయబడిన భాషలకు ఏ ప్రయోజనాలు అందుబాటులో ఉన్నాయి?",
      options:[
        "అపరిమిత ప్రభుత్వ నిధులకు ప్రాప్యత",
        "విద్వాంసులకు ప్రధాన అంతర్జాతీయ అవార్డులు",
        "పార్లమెంటులో ప్రత్యేక ప్రాతినిధ్యం",
        "ఎనిమిదవ షెడ్యూల్‌లో స్వయంచాలకంగా చేర్చడం"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రయోజనాలలో సాంప్రదాయ భారతీయ భాషలలో ప్రముఖులైన పండితులకు ప్రధాన అంతర్జాతీయ అవార్డులు ఉన్నాయి.",
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
    home: language_te(),
  ));
}

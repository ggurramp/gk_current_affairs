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

class basicstructure12_te extends StatefulWidget {
  final String? userIdentifier;

  basicstructure12_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<basicstructure12_te> createState() => _basicstructure12_teState();
}

class _basicstructure12_teState extends State<basicstructure12_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


  //అధ్యాయం 12 రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణం
  Question(
  questionText: "ఆర్టికల్ 368 కింద ప్రాథమిక హక్కులతో సహా రాజ్యాంగాన్ని సవరించడానికి పార్లమెంటు అధికారం గురించి ప్రస్తుత స్థానం ఏమిటి?",
  options:[
  "రాజ్యాంగంలోని ఏ భాగాన్ని పార్లమెంటు సవరించదు.",
  "పార్లమెంట్ రాజ్యాంగంలోని ఏదైనా భాగాన్ని పరిమితులు లేకుండా సవరించవచ్చు.",
  "ప్రాథమిక హక్కులు తప్ప పార్లమెంటు రాజ్యాంగంలోని ఏ భాగాన్ని అయినా సవరించవచ్చు.",
  "పార్లమెంట్ రాజ్యాంగంలోని ఏదైనా భాగాన్ని సవరించగలదు, కానీ రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం' కాదు."
  ],
  correctAnswerIndex: 3,
  explanation:"ప్రస్తుత స్థానం ఏమిటంటే, ఆర్టికల్ 368 ప్రకారం, రాజ్యాంగంలోని 'ప్రాథమిక నిర్మాణాన్ని' ప్రభావితం చేయనింత వరకు, ప్రాథమిక హక్కులతో సహా రాజ్యాంగంలోని ఏదైనా భాగాన్ని సవరించవచ్చు.",
  ),

  Question(
  questionText: "రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం'కి సంబంధించి సుప్రీంకోర్టు ఇంకా ఏమి నిర్వచించలేదు లేదా స్పష్టం చేయలేదు?",
  options:[
  "పార్లమెంట్ ప్రాథమిక హక్కులను సవరించగలదా.",
  "న్యాయ సమీక్ష యొక్క పరిధి.",
  "రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం' ఏమిటి.",
  "లెజిస్లేచర్, ఎగ్జిక్యూటివ్ మరియు న్యాయవ్యవస్థ మధ్య అధికారాల విభజన."
  ],
  correctAnswerIndex: 2,
  explanation:"రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం' ఏమిటో సుప్రీంకోర్టు ఇంకా నిర్వచించలేదు లేదా స్పష్టం చేయలేదు.",
  ),

  Question(
  questionText: "రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం'లో కింది వాటిలో ఏది ఒక అంశంగా పరిగణించబడుతుంది?",
  options:[
  "సామాజిక-ఆర్థిక న్యాయం",
  "సుప్రీం కోర్ట్ యొక్క సలహా అధికార పరిధి",
  "రాష్ట్రాల ఏర్పాటు",
  "పార్లమెంటులో కోరం"
  ],
  correctAnswerIndex: 0,
  explanation:"సామాజిక-ఆర్థిక న్యాయం రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం'లో ఒక అంశంగా పరిగణించబడుతుంది.",
  ),

  Question(
  questionText: "సుప్రీం కోర్ట్ ప్రకారం రాజ్యాంగం యొక్క 'ప్రాథమిక లక్షణాలలో' ఒకటి ఏమిటి?",
  options:[
  "పార్లమెంట్ యొక్క సంపూర్ణ అధికారం",
  "సంక్షేమ రాజ్యం",
  "పార్లమెంట్ ద్వారా అపరిమిత సవరణలు",
  "పూర్తి అధికార విభజన"
  ],
  correctAnswerIndex: 1,
  explanation:"సంక్షేమ రాష్ట్రం (సామాజిక-ఆర్థిక న్యాయం) రాజ్యాంగంలోని 'ప్రాథమిక లక్షణాల'లో ఒకటిగా పరిగణించబడుతుంది.",
  ),

  Question(
  questionText: "సుప్రీం కోర్ట్ ప్రకారం, రాజ్యాంగ సవరణకు సంబంధించి పార్లమెంటుకు ఉన్న పరిమిత అధికారం ఏమిటి?",
  options:[
  "పార్లమెంట్ రాజ్యాంగాన్ని రద్దు చేయగలదు.",
  "పార్లమెంట్ ఆదేశిక సూత్రాలను సవరించదు.",
  "పార్లమెంట్ తన సవరణ శక్తిని విస్తరించగలదు.",
  "రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణాన్ని' పార్లమెంటు మార్చదు."
  ],
  correctAnswerIndex: 3,
  explanation:"సుప్రీం కోర్ట్ ప్రకారం, రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణాన్ని' పార్లమెంటు మార్చదు.",
  ),
  Question(
  questionText: "శంకరీ ప్రసాద్ కేసులో (1951), ప్రాథమిక హక్కులను సవరించే పార్లమెంటు అధికారం గురించి సుప్రీం కోర్ట్ ఏ తీర్పునిచ్చింది?",
  options:[
  "పార్లమెంట్ ప్రాథమిక హక్కులను సవరించదు.",
  "ఆర్టికల్ 368 ప్రకారం ప్రాథమిక హక్కులను సవరించే అధికారం పార్లమెంటుకు ఉంది.",
  "ప్రాథమిక హక్కులను అస్సలు సవరించలేరు.",
  "ప్రాథమిక హక్కులను సవరించే అధికారం రాజ్యాంగం ఇవ్వలేదు."
  ],
  correctAnswerIndex: 1,
  explanation:"అత్యున్నత న్యాయస్థానం శంకరి ప్రసాద్ కేసు (1951)లో ఆర్టికల్ 368 ప్రకారం రాజ్యాంగాన్ని సవరించే అధికారం పార్లమెంటుకు ప్రాథమిక హక్కులను సవరించే అధికారం ఉందని తీర్పు చెప్పింది.",
  ),

  Question(
  questionText: "ప్రాథమిక హక్కులను తగ్గించడానికి లేదా తొలగించడానికి పార్లమెంటు అధికారం గురించి గోలక్ నాథ్ కేసు (1967) ఏమి నిర్ణయించింది?",
  options:[
  "పార్లమెంట్ ప్రాథమిక హక్కులను తగ్గించవచ్చు లేదా తీసివేయవచ్చు.",
  "ప్రాథమిక హక్కులు 'అతీంద్రియమైనవి మరియు మార్పులేనివి'",
  "ప్రాథమిక హక్కులను సవరించే అధికారం పార్లమెంటుకు లేదు.",
  "మూడు వంతుల మెజారిటీతో మాత్రమే ప్రాథమిక హక్కులు సవరించబడతాయి."
  ],
  correctAnswerIndex: 2,
  explanation:"గోలక్ నాథ్ కేసు (1967)లో, సుప్రీంకోర్టు ప్రాథమిక హక్కులను సంక్షిప్తం చేయడం లేదా తీసివేయడం సాధ్యం కాదని, దాని మునుపటి వైఖరిని తిప్పికొట్టాలని తీర్పు చెప్పింది.",
  ),

  Question(
  questionText: "గోలక్ నాథ్ కేసు (1967)లో సుప్రీంకోర్టు తీర్పుపై పార్లమెంటు ఎలా స్పందించింది?",
  options:[
  "24వ సవరణ చట్టం (1971) అమలులోకి వచ్చింది",
  "42వ సవరణ చట్టం (1976) అమలులోకి వచ్చింది",
  "రద్దు చేయబడిన ఆర్టికల్ 368",
  "గోలక్ నాథ్ కేసుపై సమీక్ష కోరింది"
  ],
  correctAnswerIndex: 0,
  explanation:"గోలక్ నాథ్ కేసు (1967)కి ప్రతిస్పందనగా, ఆర్టికల్ 368 ప్రకారం ప్రాథమిక హక్కులను సంక్షిప్తీకరించడానికి లేదా తీసివేయడానికి తన అధికారాన్ని నొక్కిచెప్పడానికి పార్లమెంటు 24వ సవరణ చట్టాన్ని (1971) రూపొందించింది.",
  ),

  Question(
  questionText: "కేశవానంద భారతి కేసు (1973) ప్రకారం, సుప్రీం కోర్ట్ రూల్ ఏమి చేసిందిరాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం'కి దూరంగా ఉందా?",
  options:[
  "ప్రాథమిక నిర్మాణం సాధారణ సవరణలకు లోబడి ఉంటుంది.",
  "పార్లమెంట్ ప్రాథమిక నిర్మాణాన్ని సవరించదు.",
  "ప్రాథమిక నిర్మాణం రాజ్యాంగంలో నిర్వచించబడలేదు.",
  "ప్రాథమిక నిర్మాణం' సిద్ధాంతం వర్తించదు."
  ],
  correctAnswerIndex: 1,
  explanation:"కేశవానంద భారతి కేసులో (1973), రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణాన్ని' పార్లమెంటు సవరించడానికి వీలులేదని సుప్రీంకోర్టు తీర్పు చెప్పింది.",
  ),

  Question(
  questionText: "ఇందిరా నెహ్రూ గాంధీ కేసు (1975)లో సుప్రీంకోర్టు నిర్ణయానికి పార్లమెంటు ఎలా స్పందించింది?",
  options:[
  "39వ సవరణ చట్టం (1975) అమలులోకి వచ్చింది",
  "42వ సవరణ చట్టం (1976) అమలులోకి వచ్చింది",
  "ఇందిరా నెహ్రూ గాంధీ కేసుపై సమీక్ష కోరింది",
  "రద్దు చేయబడిన ఆర్టికల్ 13"
  ],
  correctAnswerIndex: 1,
  explanation:"ఇందిరా నెహ్రూ గాంధీ కేసు (1975)కి ప్రతిస్పందనగా, న్యాయ సమీక్షను పరిమితం చేయడానికి మరియు దాని రాజ్యాంగ అధికారాన్ని నొక్కిచెప్పడానికి పార్లమెంటు 42వ సవరణ చట్టం (1976)ను రూపొందించింది.",
  ),

  Question(
  questionText: "రాజ్యాంగాన్ని సవరించే పార్లమెంటు అధికారానికి సంబంధించి మినర్వా మిల్స్ కేసు (1980)లో సుప్రీంకోర్టు ఏమి తీర్పునిచ్చింది?",
  options:[
  "పరిమితులు లేకుండా పార్లమెంటు తన సవరణ శక్తిని విస్తరించగలదు.",
  "పార్లమెంట్ రాజ్యాంగాన్ని అస్సలు సవరించదు.",
  "ప్రాథమిక నిర్మాణం' సిద్ధాంతం వర్తించదు.",
  "పార్లమెంట్ పరిమిత శక్తిని అపరిమిత శక్తిగా మార్చదు."
  ],
  correctAnswerIndex: 3,
  explanation:"మినర్వా మిల్స్ కేసు (1980)లో, రాజ్యాంగాన్ని రద్దు చేసే లేదా రద్దు చేసే సంపూర్ణ హక్కును పొందేందుకు ఆర్టికల్ 368 ప్రకారం పార్లమెంటు తన సవరణ అధికారాన్ని విస్తరించదని సుప్రీం కోర్టు తీర్పు చెప్పింది.",
  ),
  Question(
  questionText: "ఏ కేసు 'ప్రాథమిక హక్కుల కేసు'గా ప్రసిద్ధి చెందింది?",
  options:[
  "ఇందిరా నెహ్రూ గాంధీ కేసు (1975)",
  "మినర్వా మిల్స్ కేసు (1980)",
  "కేశవానంద భారతి కేసు (1973)",
  "ఎస్.ఆర్. బొమ్మై కేసు (1994)"
  ],
  correctAnswerIndex: 2,
  explanation:"కేశవానంద భారతి కేసు (1973) 'ప్రాథమిక హక్కుల కేసు'గా ప్రసిద్ధి చెందింది.",
  ),

  Question(
  questionText: "ఇందిరా నెహ్రూ గాంధీ కేసు (1975) ప్రకారం రాజ్యాంగం యొక్క 'ప్రాథమిక లక్షణాలలో' ఏది ఒకటిగా పరిగణించబడుతుంది?",
  options:[
  "అధికార విభజన",
  "న్యాయం ప్రకారం",
  "సంక్షేమ రాజ్యం",
  "భారత సార్వభౌమాధికారం మరియు ఐక్యత"
  ],
  correctAnswerIndex: 3,
  explanation:"ఇందిరా నెహ్రూ గాంధీ కేసు (1975) ప్రకారం భారత సార్వభౌమాధికారం మరియు ఐక్యత రాజ్యాంగం యొక్క 'ప్రాథమిక లక్షణాల'లో ఒకటిగా పరిగణించబడుతుంది.",
  ),

  Question(
  questionText: "ఏ కేసు 'ప్రాథమిక నిర్మాణం' యొక్క సిద్ధాంతాన్ని పునరుద్ఘాటించింది మరియు ఇది ఏప్రిల్ 24, 1973 తర్వాత రూపొందించబడిన రాజ్యాంగ సవరణలకు వర్తిస్తుందని స్పష్టం చేసింది?",
  options:[
  "ఇంద్ర సాహ్నీ II కేసు (1999)",
  "S.P. SfJmpath కుమార్ కేసు (1986)",
  "ఉమెన్ రూ కేసులు (1980)",
  "కేశవానంద భారతి కేసు (1973)"
  ],
  correctAnswerIndex: 0,
  explanation:"ఇంద్ర సాహ్నీ II కేసు (1999) 'ప్రాథమిక నిర్మాణం' యొక్క సిద్ధాంతాన్ని పునరుద్ఘాటించింది మరియు ఇది ఏప్రిల్ 24, 1973 తర్వాత రూపొందించబడిన రాజ్యాంగ సవరణలకు వర్తిస్తుందని స్పష్టం చేసింది.",
  ),

  Question(
  questionText: "ఏ కేసును 'ఎన్నికల కేసు' అని పిలుస్తారు?",
  options:[
  "మినర్వా మిల్స్ కేసు (1980)",
  "ఇంద్ర సాహ్నీ కేసు (1992)",
  "ఇందిరా నెహ్రూ గాంధీ కేసు (1975)",
  "ఎల్ చంద్ర కుమార్ కేసు (1997)"
  ],
  correctAnswerIndex: 2,
  explanation:"ఇందిరా నెహ్రూ గాంధీ కేసు (1975)ని 'ఎన్నికల కేసు' అని పిలుస్తారు.",
  ),

  Question(
  questionText: "రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం' సందర్భంలో, ఎం. నాగరాజ్ కేసు (2006)లో సుప్రీంకోర్టు ప్రకటించిన అంశంగా ఏది ప్రస్తావించబడింది?",
  options:[
  "ఫెడరలిజం",
  "ప్రజాస్వామ్యం",
  "సామాజిక న్యాయం",
  "న్యాయ సమీక్ష"
  ],
  correctAnswerIndex: 2,
  explanation:"ఎం. నాగరాజ్ కేసు (2006), సామాజిక న్యాయం రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణం'లో ఒక అంశంగా పేర్కొనబడింది.",
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
    home: basicstructure12_te(),
  ));
}

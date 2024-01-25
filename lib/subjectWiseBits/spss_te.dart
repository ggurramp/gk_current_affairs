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

class spss_te extends StatefulWidget {
  final String? userIdentifier;

  spss_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<spss_te> createState() => _spss_teState();
}

class _spss_teState extends State<spss_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//77.కొన్ని రాష్ట్రాలకు ప్రత్యేక నిబంధన

    Question(
      questionText: "రాజ్యాంగంలోని పార్ట్ XXIలోని ఆర్టికల్ 371 నుండి 371-జె వరకు ఏ రాష్ట్రాలు కవర్ చేయబడ్డాయి?",
      options:["మహారాష్ట్ర, గుజరాత్, నాగాలాండ్, అస్సాం, మణిపూర్, ఆంధ్రప్రదేశ్, తెలంగాణ", "సిక్కిం, మిజోరం, అరుణాచల్ ప్రదేశ్, గోవా, కర్ణాటక", "మహారాష్ట్ర, గుజరాత్, నాగాలాండ్, అస్సాం, మణిపూర్, ఆంధ్రప్రదేశ్, తెలంగాణ, సిక్కిం , మిజోరం, అరుణాచల్ ప్రదేశ్, గోవా, కర్ణాటక", "పంజాబ్, హర్యానా, రాజస్థాన్, ఉత్తరప్రదేశ్, బీహార్, పశ్చిమ బెంగాల్"],
    correctAnswerIndex: 2,
      explanation:"రాజ్యాంగంలోని పార్ట్ XXIలోని ఆర్టికల్ 371 నుండి 371-జె వరకు మహారాష్ట్ర, గుజరాత్, నాగాలాండ్, అస్సాం, మణిపూర్, ఆంధ్రప్రదేశ్, తెలంగాణ, సిక్కిం, మిజోరాం, అరుణాచల్ ప్రదేశ్, గోవా మరియు కర్ణాటకతో సహా పన్నెండు రాష్ట్రాలకు ప్రత్యేక నిబంధనలు ఉన్నాయి. ",
    ),

    Question(
      questionText: "ఆర్టికల్స్ 371 నుండి 371-జెలో పేర్కొన్న ప్రత్యేక నిబంధనల వెనుక ప్రాథమిక ఉద్దేశం ఏమిటి?",
      options:["ఆర్థిక అభివృద్ధిని ప్రోత్సహించండి", "ఆదివాసీ ప్రజల సాంస్కృతిక మరియు ఆర్థిక ప్రయోజనాలను రక్షించండి", "లా అండ్ ఆర్డర్ పరిస్థితులతో వ్యవహరించండి", "పైవన్నీ"],
      correctAnswerIndex: 3,
      explanation:"ఆర్టికల్స్ 371 నుండి 371-జెలోని ప్రత్యేక నిబంధనలు వెనుకబడిన ప్రాంతాల ప్రజల ఆకాంక్షలను తీర్చడం, గిరిజన ప్రజల సాంస్కృతిక మరియు ఆర్థిక ప్రయోజనాలను పరిరక్షించడం మరియు కొన్ని రాష్ట్రాల్లో శాంతిభద్రతల పరిస్థితులను పరిష్కరించడం లక్ష్యంగా పెట్టుకున్నాయి.",
    ),

    Question(
      questionText: "ఆర్టికల్ 371 ప్రకారం, మహారాష్ట్ర మరియు గుజరాత్ గవర్నర్‌కు ప్రత్యేక బాధ్యత ఏమిటి?",
      options:["పర్యావరణ పరిరక్షణ", "మొత్తం రాష్ట్రంలో లా అండ్ ఆర్డర్", "ప్రత్యేక అభివృద్ధి బోర్డుల ఏర్పాటు", "విదేశీ వ్యవహారాలు"],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 371 ప్రకారం, మహారాష్ట్ర మరియు గుజరాత్ గవర్నర్‌లు రాష్ట్రాలలో నిర్దిష్ట ప్రాంతాల కోసం ప్రత్యేక అభివృద్ధి బోర్డుల ఏర్పాటుకు ప్రత్యేక బాధ్యతను కలిగి ఉంటారు.",
    ),
    Question(
      questionText: "అస్సాంకు సంబంధించి ఆర్టికల్ 371-బి ప్రయోజనం ఏమిటి?",
      options:["కొండ ప్రాంతాల కోసం ప్రత్యేక కమిటీల ఏర్పాటు", "గవర్నర్ ద్వారా కమిటీల సరైన పనితీరును పొందడం", "కొండ ప్రాంతాల పరిపాలనపై రాష్ట్ర ప్రభుత్వానికి దిశానిర్దేశం చేయడం", "పైవన్నీ"],
      correctAnswerIndex: 3,
      explanation:"ప్రత్యేక కమిటీల ఏర్పాటు, సరైన కమిటీ పనితీరు కోసం గవర్నర్ ప్రత్యేక బాధ్యతను నిర్దేశించడం మరియు అస్సాంలోని హిల్ ఏరియాస్ అడ్మినిస్ట్రేషన్‌కు సంబంధించి రాష్ట్ర ప్రభుత్వానికి ఆదేశాలు ఇవ్వడానికి రాష్ట్రపతికి ఆర్టికల్ 371-బి అధికారం ఇస్తుంది.",
    ),

    Question(
      questionText: "మణిపూర్ కోసం ఆర్టికల్ 371-సి ఏ ప్రత్యేక నిబంధనలను చేస్తుంది?",
      options:["గిరిజన ప్రాంతాల కోసం కమిటీల ఏర్పాటు", "కొండ ప్రాంతాల కమిటీకి గవర్నర్ ప్రత్యేక బాధ్యత", "గవర్నర్ వార్షిక నివేదికల సమర్పణ", "పైవన్నీ"],
      correctAnswerIndex: 3,
      explanation:"ఆర్టికల్ 371-C మణిపూర్ కోసం ప్రత్యేక నిబంధనలను చేస్తుంది, ఇందులో కొండ ప్రాంతాల కోసం కమిటీల ఏర్పాటు, గవర్నర్‌కు ప్రత్యేక బాధ్యతలు అప్పగించడం మరియు కొండ ప్రాంతాల పరిపాలనపై వార్షిక నివేదికలు అవసరం.",
    ),

    Question(
      questionText: "ఆర్టికల్ 371-డి ప్రకారం, ఆంధ్రప్రదేశ్ లేదా తెలంగాణలో రాష్ట్రపతికి ఏ అధికారం ఉంది?",
      options:["అడ్మినిస్ట్రేటివ్ ట్రిబ్యునల్ ఏర్పాటు", "సమానమైన అవకాశాలు మరియు సౌకర్యాలను అందించడం", "సివిల్ పోస్టులపై రాష్ట్ర ప్రభుత్వాన్ని నిర్దేశించడం", "పైవన్నీ"],
      correctAnswerIndex: 3,
      explanation:"ఆర్టికల్ 371-D సమాన అవకాశాలు మరియు సౌకర్యాలను అందించడానికి, రాష్ట్ర ప్రభుత్వాన్ని సివిల్ పోస్టులపై నిర్దేశించడానికి మరియు ఆంధ్రప్రదేశ్ లేదా తెలంగాణలో అడ్మినిస్ట్రేటివ్ ట్రిబ్యునల్‌ను ఏర్పాటు చేయడానికి రాష్ట్రపతికి అధికారం ఇస్తుంది.",
    ),

    Question(
      questionText: "ఏ రాజ్యాంగ సవరణ సిక్కింను భారత యూనియన్‌లో పూర్తి స్థాయి రాష్ట్రంగా చేసింది మరియు ఆర్టికల్ 371-ఎఫ్ కింద ప్రత్యేక నిబంధనలను ప్రవేశపెట్టింది?",
      options:["26వ రాజ్యాంగ సవరణ చట్టం", "36వ రాజ్యాంగ సవరణ చట్టం", "46వ రాజ్యాంగ సవరణ చట్టం", "56వ రాజ్యాంగ సవరణ చట్టం"],
      correctAnswerIndex: 1,
      explanation:"1975 నాటి 36వ రాజ్యాంగ సవరణ చట్టం సిక్కింను భారత యూనియన్‌లో పూర్తి స్థాయి రాష్ట్రంగా చేసింది మరియు ఆర్టికల్ 371-ఎఫ్ కింద ప్రత్యేక నిబంధనలను ప్రవేశపెట్టింది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 371-ఎఫ్ కింద సిక్కిం గవర్నర్‌కు ప్రత్యేక బాధ్యత ఏమిటి?",
      options:["లెజిస్లేటివ్ అసెంబ్లీ యొక్క పరిపాలనా పర్యవేక్షణ", "జనాభాలోని వివిధ వర్గాల సామాజిక మరియు ఆర్థిక పురోగతిని నిర్ధారించడం", "శాసన వ్యవహారాలపై రాష్ట్రపతికి దిశానిర్దేశం చేయడం", "పార్లమెంటరీ నియోజకవర్గాల సరిహద్దులను సమీక్షించడం"],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 371-F ప్రకారం, సిక్కిం గవర్నర్‌కు శాంతి కోసం ప్రత్యేక బాధ్యత ఉంది మరియు రాష్ట్రపతి జారీ చేసిన ఆదేశాలకు లోబడి సిక్కిం జనాభాలోని వివిధ వర్గాల సామాజిక మరియు ఆర్థిక పురోగతిని నిర్ధారించడానికి సమానమైన ఏర్పాటు ఉంటుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 371-G ప్రకారం, మిజోరంలో పార్లమెంటు చట్టాల దరఖాస్తు నుండి ఏ విషయాలు మినహాయించబడ్డాయి?",
      options:["ఆర్థిక విధానాలు", "మిజోస్ యొక్క మతపరమైన లేదా సామాజిక పద్ధతులు", "పరిపాలన విధానాలు", "భూమి యాజమాన్యం మరియు బదిలీ"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 371-G మిజోస్ యొక్క మతపరమైన లేదా సామాజిక అభ్యాసాలకు సంబంధించిన పార్లమెంట్ చట్టాలు, మిజో సంప్రదాయ చట్టం, మిజో సంప్రదాయ చట్టం ప్రకారం పౌర మరియు నేర న్యాయ నిర్వహణ మరియు భూమి యొక్క యాజమాన్యం మరియు బదిలీ తప్ప మిజోరాంకు వర్తించదని పేర్కొంది రాష్ట్ర శాసనసభ నిర్ణయిస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 371-జె ప్రకారం కర్ణాటక గవర్నర్‌కు ఏ ప్రత్యేక బాధ్యత అప్పగించబడింది?",
      options:[
        "రాష్ట్రంలో శాంతి భద్రతలకు భరోసా",
        "హైదరాబాద్-కర్ణాటక ప్రాంతానికి ప్రత్యేక అభివృద్ధి బోర్డు ఏర్పాటు",
        "శాసనపరమైన విషయాలపై రాష్ట్రపతికి దిశానిర్దేశం",
        "రాష్ట్ర ప్రభుత్వ పర్యవేక్షణ"
      ],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 371-జె ప్రకారం, హైదరాబాద్-కర్ణాటక ప్రాంతానికి ప్రత్యేక అభివృద్ధి బోర్డు ఏర్పాటుకు ప్రత్యేక బాధ్యత వహించడానికి కర్ణాటక గవర్నర్‌కు అధికారం ఉంది.",
    ),

    Question(
      questionText: "హైదరాబాద్-కర్ణాటక ప్రాంతానికి సంబంధించి ఆర్టికల్ 371-జెలో పేర్కొన్న నిబంధనలలో ఒకటి ఏమిటి?",
      options:[
        "సెంట్రల్ యూనివర్శిటీ స్థాపన",
        "అభివృద్ధి వ్యయానికి సమానమైన నిధుల కేటాయింపు",
        "లోక్‌సభలో సీట్ల రిజర్వేషన్",
        "ప్రత్యేక కమిషనర్ నియామకం"
      ],
      correctAnswerIndex: 2,
      explanation:"హైదరాబాద్-కర్ణాటక ప్రాంతానికి సంబంధించిన ఆర్టికల్ 371-జె కింద ఉన్న నిబంధనలలో ఒకటి ఆ ప్రాంతంపై అభివృద్ధి ఖర్చులకు సమానమైన నిధుల కేటాయింపు.",
    ),

    Question(
      questionText: "కర్ణాటకలోని హైదరాబాద్-కర్ణాటక ప్రాంతానికి ప్రత్యేక నిబంధనలను కల్పిస్తూ ఆర్టికల్ 371-జెను ఏ రాజ్యాంగ సవరణ చట్టం ప్రవేశపెట్టింది?",
      options:[
        "86వ రాజ్యాంగ సవరణ చట్టం",
        "98వ రాజ్యాంగ సవరణ చట్టం",
        "112వ రాజ్యాంగ సవరణ చట్టం",
        "124వ రాజ్యాంగ సవరణ చట్టం"
      ],
      correctAnswerIndex: 1,
      explanation:"2012 నాటి 98వ రాజ్యాంగ సవరణ చట్టం ద్వారా కర్ణాటకలోని హైదరాబాద్-కర్ణాటక ప్రాంతానికి ప్రత్యేక నిబంధనలను అందించే ఆర్టికల్ 371-జె రాజ్యాంగంలో చేర్చబడింది.",
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
    home: spss_te(),
  ));
}

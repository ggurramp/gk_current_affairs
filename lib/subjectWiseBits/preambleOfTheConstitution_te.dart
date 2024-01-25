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

class preambleOfTheConstitution_te extends StatefulWidget {
  final String? userIdentifier;

  preambleOfTheConstitution_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<preambleOfTheConstitution_te> createState() => _preambleOfTheConstitution_teState();
}

class _preambleOfTheConstitution_teState extends State<preambleOfTheConstitution_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//అధ్యాయం:5 రాజ్యాంగ ప్రవేశిక ప్రశ్నలు
    Question(
        questionText: "భారత రాజ్యాంగంలో ప్రవేశిక యొక్క ఉద్దేశ్యం ఏమిటి?",
        options:[
          "పౌరుల ప్రాథమిక హక్కులను వివరించడానికి",
          "ప్రభుత్వంలోని వివిధ అవయవాల మధ్య అధికారాల పంపిణీని వివరించడానికి",
          "రాజ్యాంగం యొక్క సారాంశాన్ని పరిచయం చేయడానికి మరియు సంగ్రహించడానికి",
          "రాజ్యాంగ సవరణ ప్రక్రియను రూపొందించడానికి"
        ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగంలో ఉపోద్ఘాతం యొక్క ఉద్దేశ్యం రాజ్యాంగం యొక్క ప్రాథమిక సూత్రాలు మరియు విలువలను వివరిస్తూ, రాజ్యాంగం యొక్క సారాంశాన్ని పరిచయం చేయడం మరియు సంగ్రహించడం."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ప్రవేశికలోని అంశాలను ఏ అంశాలు కలిగి ఉన్నాయి?",
        options:[
          "అధికార మూలం (భారత ప్రజలు)",
          "అధికార మూలం, భారత రాష్ట్ర స్వభావం, రాజ్యాంగం యొక్క లక్ష్యాలు, ఆమోదించబడిన తేదీ",
          "భారత రాష్ట్ర స్వభావం మరియు దత్తత తేదీ",
          "రాజ్యాంగం యొక్క లక్ష్యాలు మాత్రమే"
        ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగంలోని ఉపోద్ఘాతంలోని విషయాలలో అధికార మూలం, భారత రాష్ట్ర స్వభావం, రాజ్యాంగం యొక్క లక్ష్యాలు మరియు ఆమోదించబడిన తేదీ ఉన్నాయి."
    ),

    Question(
        questionText: "భారత రాజ్యాంగం యొక్క పీఠికలోని 'సౌభ్రాతృత్వం' అనే పదం ప్రధానంగా దేనిని నొక్కి చెబుతుంది?",
        options:[
          "ఆర్థిక శ్రేయస్సు",
          "సాంస్కృతిక భిన్నత్వం",
          "రాజకీయ ఐక్యత మరియు సమగ్రత",
          "వ్యక్తిగత స్వేచ్ఛ"
        ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగం యొక్క పీఠికలోని 'సౌభ్రాతృత్వం' అనే పదం ప్రధానంగా రాజకీయ ఐక్యత మరియు సమగ్రతను నొక్కి చెబుతుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగ ప్రవేశికలో 'సెక్యులర్' అనే పదం దేనిని సూచిస్తుంది?",
        options:[
          "అన్ని మతాలకు సమాన మద్దతు మరియు రాష్ట్రం యొక్క తటస్థ వైఖరి",
          "ఒక నిర్దిష్ట మతానికి ప్రాధాన్యత చికిత్స",
          "మత సంస్థలపై ప్రభుత్వ నియంత్రణ",
          "ఒక మతం ఇతరులపై ఆధిపత్యం"
        ],
        correctAnswerIndex: 0,
        explanation:"ఉపోద్ఘాతంలోని 'సెక్యులర్' అనే పదం అన్ని మతాలకు సమాన మద్దతు మరియు రాష్ట్రం యొక్క తటస్థ వైఖరిని నిర్ధారిస్తుంది."
    ),

    Question(
        questionText: "భారత రాజ్యాంగ ప్రవేశికలో 'సోషలిస్ట్' అనే పదం దేనిని నొక్కి చెబుతుంది?",
        options:[
          "ప్రభుత్వంచే ఆర్థిక గుత్తాధిపత్యం",
          "వర్గ వివక్షను ప్రోత్సహించడం",
          "ప్రజాస్వామ్య సామ్యవాదం వైపు పరిణామం చెందడం, సమానత్వం మరియు సామాజిక యాజమాన్యాన్ని నొక్కి చెప్పడం",
          "ఆర్థిక విధానాలలో పెట్టుబడిదారీ సూత్రాలు"
        ],
        correctAnswerIndex: 2,
        explanation:"ప్రారంభంలో 'సోషలిస్ట్' అనే పదం ప్రజాస్వామ్య సామ్యవాదం వైపు పరిణామం చెందుతుందని, సమానత్వం మరియు సామాజిక యాజమాన్యాన్ని నొక్కి చెబుతుంది."
    ),
    Question(
        questionText: "ప్రారంభంలో వివరించిన విధంగా కింది వాటిలో ఏది భారత రాష్ట్ర స్వభావాన్ని సరిగ్గా నిర్వచిస్తుంది?",
        options:[
          "రాచరికం",
          "ఒలిగార్కీ",
          "సార్వభౌమ, సామ్యవాద, లౌకిక, ప్రజాస్వామ్య, గణతంత్ర",
          "నిరంకుశవాదం"
        ],
        correctAnswerIndex: 2,
        explanation:"పీఠిక భారత రాజ్యం యొక్క స్వభావాన్ని సార్వభౌమ, సామ్యవాద, లౌకిక, ప్రజాస్వామ్య మరియు గణతంత్రంగా నిర్వచిస్తుంది."
    ),

    Question(
        questionText: "ప్రారంభంలో 'డెమోక్రటిక్' అనే పదం ఏ కీలక భావనను నొక్కి చెబుతుంది?",
        options:[
          "మత ఆధిపత్యం",
          "ప్రాతినిధ్య ప్రజాస్వామ్యం ద్వారా ప్రజా సార్వభౌమాధికారం",
          "ఆర్థిక పెట్టుబడిదారీ విధానం",
          "సైనిక పాలన"
        ],
        correctAnswerIndex: 1,
        explanation:"ప్రాతినిధ్య ప్రజాస్వామ్యం ద్వారా ప్రజా సార్వభౌమాధికారాన్ని పీఠికలోని 'డెమోక్రటిక్' అనే పదం నొక్కి చెబుతుంది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగంలోని ఏ నిబంధన ప్రకారం ప్రవేశికను సవరించవచ్చు?",
        options:[
          "ఆర్టికల్ 370",
          "ఆర్టికల్ 356",
          "ఆర్టికల్ 368",
          "ఆర్టికల్ 352"
        ],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగంలోని ఆర్టికల్ 368 ప్రకారం ప్రవేశికను సవరించవచ్చు."
    ),

    Question(
        questionText: "పీఠిక సవరణకు సంబంధించి ఏ పరిమితి ఉంది?",
        options:[
          "ఇది ఎట్టి పరిస్థితుల్లోనూ సవరించబడదు.",
          "ఇది ఎటువంటి పరిమితులు లేకుండా స్వేచ్ఛగా సవరించబడుతుంది.",
          "దాని ప్రాథమిక లక్షణాలను మార్చడం మినహా దీనిని సవరించవచ్చు.",
          "ఇది రాష్ట్రపతి అనుమతితో మాత్రమే సవరించబడుతుంది."
        ],
        correctAnswerIndex: 2,
        explanation:"ప్రకరణ 368 క్రింద ఉన్న పరిమితుల ప్రకారం దాని ప్రాథమిక లక్షణాలను మార్చడం మినహా పీఠికను సవరించవచ్చు."
    ),
    Question(
        questionText: "ఉపోద్ఘాతం సందర్భంలో 'సెక్యులర్' అనే పదానికి అర్థం ఏమిటి?",
        options:[
          "రాష్ట్రం ద్వారా ఒక నిర్దిష్ట మతానికి మద్దతు.",
          "రాజ్యం ద్వారా అన్ని మతాల పట్ల సమాన హోదా మరియు తటస్థ వైఖరి.",
          "రాష్ట్ర వ్యవహారాలలో మతం పూర్తిగా లేకపోవడం.",
          "రాజ్యం ద్వారా ఒకే మతాన్ని ప్రోత్సహించడం."
        ],
        correctAnswerIndex: 1,
    explanation:"ఉపోద్ఘాతంలో, 'సెక్యులర్' అనేది అన్ని మతాల పట్ల రాజ్యం యొక్క తటస్థ వైఖరిని సూచిస్తుంది, ఏదైనా నిర్దిష్ట మతానికి అనుకూలంగా లేకుండా సమాన మద్దతును నిర్ధారిస్తుంది."
    ),

    Question(
        questionText: "ఉపోద్ఘాతం సందర్భంలో 'డెమోక్రటిక్' అంటే ఏమిటి?",
        options:[
          "ఒకే వ్యక్తి ద్వారా సంపూర్ణ పాలన.",
          "అధికారం సైన్యం చేతుల్లో ఉంది.",
          "ప్రాతినిధ్య ప్రజాస్వామ్యం ద్వారా ప్రజా సార్వభౌమాధికారం.",
          "పాలనలో పాల్గొనకుండా పౌరులను మినహాయించడం."
        ],
        correctAnswerIndex: 2,
        explanation:"ఉపోద్ఘాతంలో, 'ప్రజాస్వామ్య' అనేది ప్రాతినిధ్య ప్రజాస్వామ్యం ద్వారా ప్రజా సార్వభౌమాధికారాన్ని సూచిస్తుంది, ఇక్కడ ప్రజలు అత్యున్నత అధికారాన్ని కలిగి ఉంటారు."
    ),

    Question(
        questionText: "పీఠిక ప్రకారం 'న్యాయం' అనే పదం యొక్క సారాంశం ఏమిటి?",
        options:[
          "నిర్దిష్ట సమూహాల పట్ల సామాజిక అనుకూలత.",
          "కొంతమంది పౌరులకు మాత్రమే రాజకీయ హక్కులు ఇవ్వబడ్డాయి.",
          "పౌరులలో ఆర్థిక అసమానతలు లేకపోవడం.",
          "వ్యక్తులందరికీ సామాజిక, ఆర్థిక మరియు రాజకీయ హక్కులను పొందడం."
        ],
        correctAnswerIndex: 3,
        explanation:"ఉపోద్ఘాతంలోని 'న్యాయం' అనే పదం అన్ని వ్యక్తులకు సామాజిక, ఆర్థిక మరియు రాజకీయ హక్కులను పొందడం, సమానత్వాన్ని నిర్ధారిస్తుంది."
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
    home: preambleOfTheConstitution_te(),
  ));
}

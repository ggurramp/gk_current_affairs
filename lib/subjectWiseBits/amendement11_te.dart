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

class amendement11_te extends StatefulWidget {
  final String? userIdentifier;

  amendement11_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<amendement11_te> createState() => _amendement11_teState();
}

class _amendement11_teState extends State<amendement11_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణాన్ని' రూపొందించే నిబంధనలను పార్లమెంటు సవరించలేదని ఏ కేసు తీర్పు ఇచ్చింది?",
      options:["కేశవానంద భారతి కేసు (1973)", "వామన్ రావు కేసు (1981)", "ఇందిరా గాంధీ కేసు (1975)", "మేనకా గాంధీ కేసు (1978)"],
      correctAnswerIndex: 0,
      explanation:"రాజ్యాంగం యొక్క 'ప్రాథమిక నిర్మాణాన్ని' రూపొందించే నిబంధనలను పార్లమెంటు సవరించలేమని కేశవానంద భారతి కేసు (1973) తీర్పు చెప్పింది.",
    ),

    Question(
      questionText: "పార్లమెంటులోని ప్రతి సభలో రాజ్యాంగ సవరణ బిల్లును ఆమోదించడానికి అవసరమైన ప్రత్యేక మెజారిటీ ఎంత?",
      options:["సాధారణ మెజారిటీ", "మొత్తం మెంబర్‌షిప్‌లో మూడింట రెండు వంతులు", "మొత్తం మెంబర్‌షిప్‌లో మూడింట ఒక వంతు", "సగం సభ్యులు హాజరై ఓటింగ్"],
      correctAnswerIndex: 1,
      explanation:"పార్లమెంటులోని ప్రతి సభలో రాజ్యాంగ సవరణ బిల్లును ఆమోదించడానికి ప్రత్యేక మెజారిటీ మొత్తం సభ్యత్వంలో మూడింట రెండు వంతులు అవసరం.",
    ),

    Question(
      questionText: "పార్లమెంటు సాధారణ మెజారిటీ ద్వారా రాజ్యాంగంలోని ఏ నిబంధనలను సవరించవచ్చు?",
      options:["ప్రాథమిక హక్కులు", "రాష్ట్ర విధాన నిర్దేశక సూత్రాలు", "పార్లమెంటులో కోరం", "యూనియన్ మరియు రాష్ట్రాల మధ్య శాసన అధికారాల పంపిణీ"],
      correctAnswerIndex: 2,
      explanation:"పార్లమెంట్‌లోని కోరం వంటి నిబంధనలను పార్లమెంటు ఉభయ సభల్లో సాధారణ మెజారిటీతో సవరించవచ్చు.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగ సవరణ ప్రక్రియకు సంబంధించి ఏ విమర్శలు తలెత్తాయి?",
      options:["వశ్యత లేకపోవడం", "రాజ్యాంగ ఒప్పందాన్ని చేర్చడం", "రాష్ట్ర ఆమోదం కోసం సమయ ఫ్రేమ్‌ను సూచించడం", "చాలా వివరణాత్మక నిబంధనలు"],
      correctAnswerIndex: 0,
      explanation:"కొందరి అభిప్రాయం ప్రకారం చాలా దృఢంగా లేదా చాలా అనువైనది కాదు, వశ్యత లేని సవరణ విధానాన్ని విమర్శకులు విమర్శించారు.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగంలోని XXలోని ఆర్టికల్ 368 దేనితో వ్యవహరిస్తుంది?",
      options:["రాష్ట్ర విధాన నిర్దేశక సూత్రాలు", "రాజ్యాంగ సవరణ విధానం", "ప్రాథమిక హక్కులు", "రాష్ట్రపతి ఎన్నిక"],
      correctAnswerIndex: 1,
      explanation:"భారత రాజ్యాంగంలోని పార్ట్ XXలోని ఆర్టికల్ 368 రాజ్యాంగాన్ని మరియు దాని విధానాన్ని సవరించడానికి పార్లమెంటుకు ఉన్న అధికారాలతో వ్యవహరిస్తుంది.",
    ),
    Question(
      questionText: "రాజ్యాంగంలో సవరించడానికి ఎన్ని మార్గాలు ఉన్నాయి?",
      options:["ఒకటి", "రెండు", "మూడు", "నాలుగు"],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగం దానిని సవరించడానికి మూడు మార్గాలను పేర్కొంది: పార్లమెంటు సాధారణ మెజారిటీ ద్వారా సవరణ, పార్లమెంటు ప్రత్యేక మెజారిటీ ద్వారా సవరణ మరియు పార్లమెంటు ప్రత్యేక మెజారిటీ ద్వారా సవరణ మరియు రాష్ట్ర శాసనసభలలో సగం సమ్మతి.",
    ),


    Question(
      questionText: "రాజ్యాంగంలోని ఏ నిబంధనల ప్రకారం సవరణ కోసం పార్లమెంటు ప్రత్యేక మెజారిటీ మరియు సగం రాష్ట్ర శాసనసభల సమ్మతి అవసరం?",
      options:[
        "సుప్రీం కోర్ట్ మరియు హైకోర్టులు",
        "గూడ్స్ అండ్ సర్వీసెస్ టాక్స్ కౌన్సిల్",
        "పార్లమెంటులో రాష్ట్రాల ప్రాతినిధ్యం",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"సుప్రీంకోర్టు మరియు హైకోర్టులు, వస్తువులు మరియు సేవల పన్ను మండలి, మరియు పార్లమెంటులో రాష్ట్రాల ప్రాతినిధ్యం వంటి నిబంధనలకు పార్లమెంటులో ప్రత్యేక మెజారిటీ అవసరం మరియు సవరణ కోసం రాష్ట్ర శాసనసభలలో సగం మంది ఆమోదం అవసరం.",
    ),
    Question(
      questionText: "భారత రాజ్యాంగ సవరణ ప్రక్రియకు సంబంధించి ఏ విమర్శలు తలెత్తాయి?",
      options:[
        "వశ్యత లేకపోవడం",
        "రాజ్యాంగపరమైన సమావేశం లేదా అసెంబ్లీ లేకపోవడం",
        "రాష్ట్ర ఆమోదం కోసం కాలపరిమితిని నిర్దేశించడం",
        "దృఢత్వానికి దారితీసే వివరణాత్మక నిబంధనలు"
      ],
      correctAnswerIndex: 1,
      explanation:"రాజ్యాంగాన్ని సవరించడానికి రాజ్యాంగ సమావేశం లేదా అసెంబ్లీ వంటి ప్రత్యేక సంస్థ లేకపోవడంపై విమర్శకులు ఆందోళన వ్యక్తం చేశారు మరియు బదులుగా, రాజ్యాంగ అధికారాన్ని ప్రధానంగా పార్లమెంటుకు అప్పగించారు.",
    ),

    Question(
      questionText: "విమర్శకుల అభిప్రాయం ప్రకారం, రాజ్యాంగ సవరణను ప్రారంభించడంలో పార్లమెంటుకు ఏ అధికారం ఉంది?",
      options:[
        "ఏ పరిమితులు లేని ప్రత్యేక శక్తి",
        "రాష్ట్ర శాసనసభలతో అధికారాన్ని పంచుకున్నారు",
        "ఉమ్మడి తీర్మానం అవసరంతో పరిమిత శక్తి",
        "అధికారం లేదు, దీనికి రాష్ట్ర శాసనసభల దీక్ష అవసరం"
      ],
      correctAnswerIndex: 0,
      explanation:"విమర్శకుల ప్రకారం, రాష్ట్ర శాసనసభల ప్రమేయం లేకుండా రాజ్యాంగంలో సవరణను ప్రారంభించే అధికారం ప్రధానంగా పార్లమెంటుకు ఉంటుంది.",
    ),

    Question(
      questionText: "రాజ్యాంగంలోని మెజారిటీని పార్లమెంటు మాత్రమే సవరించడం గురించి ఏ ఆందోళన వ్యక్తం చేయబడింది?",
      options:[
        "అధిక ప్రభావాన్ని కలిగి ఉన్న రాష్ట్రాలు",
        "కేంద్ర అధికారం లేకపోవడం",
        "మూడింట రెండు వంతుల మెజారిటీ కావాలి",
        "రాష్ట్ర శాసనసభల పరిమిత పాత్ర"
      ],
      correctAnswerIndex: 3,
      explanation:"రాష్ట్ర శాసనసభల పరిమిత ప్రమేయంతో మరియు నిర్దిష్ట సందర్భాలలో మాత్రమే రాజ్యాంగంలోని ప్రధాన భాగాన్ని పార్లమెంటు మాత్రమే సవరించడం గురించి విమర్శకులు ఆందోళన వ్యక్తం చేస్తున్నారు.",
    ),

    Question(
      questionText: "సవరణ విధానంలో కాలపరిమితికి సంబంధించి ఏ సమస్య విమర్శించబడింది?",
      options:[
        "ధృవీకరణ కోసం అధిక సమయ పరిమితులు",
        "సవరణలను ఆమోదించడానికి లేదా తిరస్కరించడానికి రాష్ట్ర శాసనసభలకు సమయ పరిమితులు లేకపోవడం",
        "సమయ ఫ్రేమ్‌లలో అస్థిరత",
        "సమయ పరిమితులకు ఖచ్చితంగా కట్టుబడి ఉండటం"
      ],
      correctAnswerIndex: 1,
      explanation:"సంభావ్య జాప్యాలు లేదా అనిశ్చితులకు దారితీసే సవరణను రాష్ట్ర శాసనసభలు ఆమోదించడానికి లేదా తిరస్కరించడానికి రాజ్యాంగం కాలపరిమితిని సూచించలేదని విమర్శకులు అభిప్రాయపడుతున్నారు.",
    ),

    Question(
      questionText: "ప్రతిష్టంభన ఏర్పడితే పార్లమెంటు ఉభయ సభల ఉమ్మడి సమావేశాన్ని నిర్వహించాలనే నిబంధనకు సంబంధించి ఏమి విమర్శించబడింది?",
      options:[
        "జాయింట్ సిట్టింగ్‌కు సదుపాయం లేకపోవడం",
        "అన్ని సందర్భాలలో జాయింట్ సిట్టింగ్ అవసరం",
        "సామాన్య బిల్లులలో ఉభయ సభ ఉనికిని కలిగి ఉంటుంది కానీ రాజ్యాంగ సవరణలలో కాదు",
        "ఉమ్మడి సమావేశంలో సమాన ప్రాతినిధ్యం"
      ],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగ సవరణ బిల్లును ఆమోదించడంపై ప్రతిష్టంభన ఏర్పడితే పార్లమెంటు ఉభయ సభల సంయుక్త సమావేశాన్ని నిర్వహించే నిబంధన లేకపోవడంపై విమర్శకులు విమర్శిస్తున్నారు, అయితే సాధారణ బిల్లులకు అలాంటి నిబంధన ఉంది.",
    ),

    Question(
      questionText: "భారత రాజ్యాంగంలోని వివిధ సవరణ విధానాలకు సంబంధించి K.C.వేర్ ఏమని ప్రశంసించారు?",
      options:[
        "విధానాల యొక్క దృఢత్వం",
        "వైవిధ్యం లేకపోవడం",
        "సవరణ ప్రక్రియలో వైవిధ్యం",
        "విధానాల సంక్లిష్టత"
      ],
      correctAnswerIndex: 2,
      explanation:"కె.సి. వేర్ భారత రాజ్యాంగంలో ఉన్న వివిధ రకాల సవరణ విధానాలను మెచ్చుకున్నారు, ఇది తెలివైనది మరియు చాలా అరుదుగా కనుగొనబడింది.",
    ),

    Question(
      questionText: "గ్రాన్‌విల్లే ఆస్టిన్ ప్రకారం, రాజ్యాంగంలోని ఏ అంశం సమర్థంగా భావించబడిందని నిరూపించబడింది?",
      options:[
        "శాసన అధికారాల పంపిణీ",
        "రాజ్యాంగాన్ని సవరించే విధానం",
        "రాష్ట్ర విధాన నిర్దేశక సూత్రాలు",
        "పార్లమెంటు నిర్మాణం"
      ],
      correctAnswerIndex: 1,
      explanation:"సవరణ ప్రక్రియ సంక్లిష్టంగా కనిపించినప్పటికీ, రాజ్యాంగంలోని అత్యంత సమర్ధవంతంగా రూపొందించబడిన అంశాలలో ఒకటిగా నిరూపించబడిందని గ్రాన్విల్లే ఆస్టిన్ పేర్కొన్నాడు.",
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
    home: amendement11_te(),
  ));
}

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

class coc_te extends StatefulWidget {
  final String? userIdentifier;

  coc_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<coc_te> createState() => _coc_teState();
}

class _coc_teState extends State<coc_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//రాజ్యాంగం యొక్క భావన
    Question(
      questionText: "'రాజ్యాంగం' అనే పదం యొక్క లాటిన్ మూలం ఏమిటి మరియు దాని అర్థం ఏమిటి?",
      options:["రాజ్యాంగం", "రాజ్యాంగం", "రాజ్యాంగం", "రాజ్యాంగం"],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగం' అనే పదం యొక్క లాటిన్ మూలం 'కాన్స్టిట్యూరే', దీని అర్థం 'స్థాపన' లేదా 'ఏర్పరచడం'",
    ),

    Question(
      questionText: "గిల్‌క్రిస్ట్ ప్రకారం, అతను రాజ్యాంగాన్ని ఎలా నిర్వచించాడు?",
      options:["చట్టాల సమితి", "ప్రభుత్వ సంస్థను నిర్ణయించే నియమావళి", "వ్యక్తిగత హక్కులను నియంత్రించే సూత్రాలు", "రాజకీయ భావజాలాలకు పునాది"],
      correctAnswerIndex: 1,
      explanation:"గిల్‌క్రిస్ట్ ప్రకారం, రాజ్యాంగం ప్రభుత్వ సంస్థను మరియు అధికారాల పంపిణీని నిర్ణయించే నియమాలు లేదా చట్టాలను కలిగి ఉంటుంది.",
    ),

    Question(
      questionText: "రాజ్యాంగానికి సంబంధించి ఇలియట్ బుల్మర్ గుర్తించిన విధులు ఏమిటి?",
      options:[
        "రాజకీయ సంఘం యొక్క సరిహద్దులను నిర్వచించండి",
        "జాతీయ సంఘం యొక్క గుర్తింపు మరియు విలువలను వ్యక్తపరచండి",
        "రాజకీయ సంస్థలను స్థాపించడం మరియు నియంత్రించడం",
        "పైన ఉన్నవన్నీ"
      ],
      correctAnswerIndex: 3,
      explanation:"ఎలియట్ బుల్మెర్ సరిహద్దులను నిర్వచించడం, గుర్తింపు మరియు విలువలను వ్యక్తీకరించడం మరియు రాజకీయ సంస్థలను స్థాపించడం/నియంత్రించడం వంటి రాజ్యాంగ విధులను గుర్తించాడు.",
    ),

    Question(
      questionText: "మంచి రాజ్యాంగానికి ఏ లక్షణాలు అవసరం?",
      options:["పొడవు", "అస్పష్టత", "స్థిరత్వం", "దృఢత్వం"],
      correctAnswerIndex: 2,
      explanation:"మంచి రాజ్యాంగం యొక్క గుణాలలో స్థిరత్వం, స్పష్టత, నిర్ధిష్టత మరియు ప్రజల అవసరాలకు అనుకూలత ఉన్నాయి.",
    ),

    Question(
      questionText: "సవరణ పద్ధతి ఆధారంగా రాజ్యాంగాలు ఎలా వర్గీకరించబడ్డాయి?",
      options:["రిజిడ్ అండ్ ఫ్లెక్సిబుల్", "ఎవాల్వ్డ్ అండ్ ఎనేక్ట్డ్", "ఫెడరల్ అండ్ యూనిటరీ", "వ్రైన్ అండ్ అలిఖిత"],
      correctAnswerIndex: 0,
      explanation:"రాజ్యాంగాలు సవరణ పద్ధతి ఆధారంగా దృఢమైనవి లేదా అనువైనవిగా వర్గీకరించబడ్డాయి.",
    ),

    Question(
      questionText: "వ్రాతపూర్వక రాజ్యాంగం మరియు అలిఖిత రాజ్యాంగం మధ్య తేడా ఏమిటి?",
      options:["పత్రం యొక్క పొడవు", "నిబంధనలను చేర్చడం", "సవరణ విధానం", "అనుకూల ప్రక్రియ"],
      correctAnswerIndex: 1,
      explanation:"వ్రాతపూర్వక మరియు అలిఖిత రాజ్యాంగం మధ్య వ్యత్యాసం పత్రబద్ధమైన రూపాన్ని కలిగి ఉన్న నిబంధనలను చేర్చడంపై ఆధారపడి ఉంటుంది.",
    ),

    Question(
      questionText: "లార్డ్ జేమ్స్ బ్రైస్ సవరణ పద్ధతి ఆధారంగా రాజ్యాంగాలను ఎలా వర్గీకరించారు?",
      options:["రిజిడ్ అండ్ ఫ్లెక్సిబుల్", "ఎవాల్వ్డ్ అండ్ ఎనాక్ట్డ్", "ఫెడరల్ అండ్ యూనిటరీ", "ప్రోసీడ్యూరల్ అండ్ ప్రిస్క్రిప్టివ్"],
      correctAnswerIndex: 3,
      explanation:"లార్డ్ జేమ్స్ బ్రైస్ రాజ్యాంగాలను సవరణ పద్ధతి ఆధారంగా విధానపరమైన మరియు ఆదేశికంగా వర్గీకరించారు.",
    ),

    Question(
      questionText: "జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య సంబంధాల ఆధారంగా రాజ్యాంగాల వర్గీకరణ ఏమిటి?",
      options:["ఎవాల్వ్డ్ అండ్ ఎనాక్ట్డ్", "ఫెడరల్ అండ్ యూనిటరీ", "రిజిడ్ అండ్ ఫ్లెక్సిబుల్", "ప్రోసీడ్యూరల్ అండ్ ప్రిస్క్రిప్టివ్"],
      correctAnswerIndex: 1,
      explanation:"జాతీయ మరియు ప్రాంతీయ ప్రభుత్వాల మధ్య సంబంధాల ఆధారంగా రాజ్యాంగాలు సమాఖ్య లేదా ఏకీకృతంగా వర్గీకరించబడ్డాయి.",
    ),

    Question(
      questionText: "లూయిస్ హెన్కిన్ ప్రకారం, రాజ్యాంగవాదంలోని ఎనిమిది అంశాలు ఏమిటి?",
      options:[
        "అధికార పాలన",
        "సైనిక పౌర నియంత్రణ",
        "ప్రజా సార్వభౌమాధికారం",
        "అపరిమిత ప్రభుత్వ శక్తి"
      ],
      correctAnswerIndex: 2,
      explanation:"లూయిస్ హెన్కిన్ ప్రజా సార్వభౌమాధికారం, చట్ట పాలన మరియు సైన్యంపై పౌర నియంత్రణతో సహా రాజ్యాంగవాదంలోని ఎనిమిది అంశాలను గుర్తించారు.",
    ),

    Question(
        questionText: "రాజ్యాంగం మరియు రాజ్యాంగవాదం మధ్య తేడా ఏమిటి?",
        options:[
          "రాజ్యాంగం ప్రభుత్వ సంస్థపై దృష్టి పెడుతుంది, అయితే రాజ్యాంగవాదం ప్రభుత్వ అధికారంపై పరిమితులను నొక్కి చెబుతుంది.",
          "రాజ్యాంగవాదం అపరిమిత ప్రభుత్వ అధికారానికి సంబంధించినది, అయితే రాజ్యాంగం ప్రజాస్వామ్య పాలన గురించి.",
          "రెండు పదాలకు ఒకే అర్థం ఉంది.",
          "రాజ్యాంగవాదం అనేది 'రాజ్యాంగం' అనే పదం యొక్క లాటిన్ మూలం."
        ],
        correctAnswerIndex: 0,
        explanation:"రాజ్యాంగం ప్రభుత్వ సంస్థపై దృష్టి పెడుతుంది, అయితే రాజ్యాంగవాదం ప్రభుత్వ అధికారంపై పరిమితులను నొక్కి చెబుతుంది."
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
    home: coc_te(),
  ));
}

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

class sprcc_te extends StatefulWidget {
  final String? userIdentifier;

  sprcc_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<sprcc_te> createState() => _sprcc_teState();
}

class _sprcc_teState extends State<sprcc_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//76.కొన్ని తరగతులకు సంబంధించిన ప్రత్యేక నిబంధన

    Question(
      questionText: "రాజ్యాంగంలోని ఏ భాగం షెడ్యూల్డ్ కులాలు (SCలు), షెడ్యూల్డ్ తెగలు (STలు), వెనుకబడిన తరగతులు (BCలు) మరియు ఆంగ్లో-ఇండియన్లకు ప్రత్యేక నిబంధనలను కలిగి ఉంది?",
      options:["పార్ట్ I", "పార్ట్ II", "పార్ట్ III", "పార్ట్ XVI"],
      correctAnswerIndex: 3,
      explanation:"SCలు, STలు, BCలు మరియు ఆంగ్లో-ఇండియన్ల కోసం ప్రత్యేక నిబంధనలు రాజ్యాంగంలోని XVI భాగంలో ఉన్నాయి.",
    ),

    Question(
      questionText: "నిర్దిష్ట తరగతులకు ప్రత్యేక నిబంధనలను వర్గీకరించగల విస్తృత వర్గాలు ఏమిటి?",
      options:["శాశ్వత మరియు తాత్కాలిక", "రక్షణ మరియు అభివృద్ధి", "A మరియు B రెండూ", "A లేదా B కాదు"],
      correctAnswerIndex: 2,
      explanation:"ప్రత్యేక నిబంధనలను శాశ్వత మరియు తాత్కాలిక, అలాగే రక్షణ మరియు అభివృద్ధి విభాగాలుగా వర్గీకరించవచ్చు.",
    ),

    Question(
      questionText: "ప్రతి రాష్ట్రం మరియు కేంద్రపాలిత ప్రాంతంలో షెడ్యూల్డ్ కులాలు (SCలు) మరియు షెడ్యూల్డ్ తెగలు (STలు)గా పరిగణించబడే కులాలు లేదా తెగలను పేర్కొనే అధికారం ఎవరికి ఉంది?",
      options:["రాష్ట్ర గవర్నర్", "రాష్ట్రపతి", "ప్రధాన మంత్రి", "పార్లమెంట్"],
      correctAnswerIndex: 1,
      explanation:"సంబంధిత రాష్ట్ర గవర్నర్‌ను సంప్రదించిన తర్వాత కులాలు లేదా తెగలను SC మరియు STలుగా పేర్కొనే అధికారం రాష్ట్రపతికి ఉంది.",
    ),

    Question(
      questionText: "2021 105వ సవరణ చట్టం ప్రకారం, 'సెంట్రల్ లిస్ట్' అనే వ్యక్తీకరణకు అర్థం ఏమిటి?",
      options:["కేంద్ర ప్రభుత్వం నిర్వహించే జాబితా", "పార్లమెంట్ సిద్ధం చేసిన జాబితా", "రాష్ట్రపతి నిర్వహించే జాబితా", "ప్రధానమంత్రి సిద్ధం చేసిన జాబితా"],
      correctAnswerIndex: 0,
      explanation:"కేంద్ర జాబితా' అనే వ్యక్తీకరణ అంటే సామాజికంగా మరియు విద్యాపరంగా వెనుకబడిన తరగతుల జాబితాను కేంద్ర ప్రభుత్వం తయారు చేసి నిర్వహించడం.",
    ),

    Question(
      questionText: "2018 102వ సవరణ చట్టం ప్రకారం, చట్టసభల్లో షెడ్యూల్డ్ కులాలు (SCలు) మరియు షెడ్యూల్డ్ తెగలు (STలు) రిజర్వేషన్లకు సంబంధించి రాజ్యాంగంలో ఏ ఆర్టికల్ చొప్పించబడింది?",
      options:["ఆర్టికల్ 330", "ఆర్టికల్ 332", "ఆర్టికల్ 342A", "ఆర్టికల్ 345"],
      correctAnswerIndex: 2,
      explanation:"2018 యొక్క 102వ సవరణ చట్టం రాజ్యాంగంలో ఆర్టికల్ 342Aని చొప్పించింది, తరువాత దీనిని 2021 యొక్క 105వ సవరణ చట్టం ద్వారా సవరించబడింది.",
    ),

    Question(
      questionText: "వాస్తవానికి, చట్టసభలలో SC మరియు STలకు రిజర్వేషన్లు ఎంతకాలం అమలు చేయాలి?",
      options:["5 సంవత్సరాలు", "10 సంవత్సరాలు", "20 సంవత్సరాలు", "30 సంవత్సరాలు"],
      correctAnswerIndex: 1,
      explanation:"వాస్తవానికి, చట్టసభలలో SC మరియు STలకు రిజర్వేషన్ల సదుపాయం పదేళ్లపాటు అమలు చేయబడాలి, కానీ అది నిరంతరంగా పొడిగించబడింది మరియు ఇప్పుడు 104వ సవరణ చట్టం 2019 ప్రకారం 2030 వరకు కొనసాగుతుంది.",
    ),

    Question(
      questionText: "2000 నాటి 82వ సవరణ చట్టం ప్రకారం, పబ్లిక్ సర్వీసెస్‌కు ప్రమోషన్ విషయంలో SC మరియు STలకు అర్హత మార్కులలో సడలింపు లేదా మూల్యాంకన ప్రమాణాలను తగ్గించడానికి ఏ నిబంధన చేయబడింది?",
      options:["ప్రత్యక్ష పదోన్నతుల కోసం కేటాయింపు", "ప్రమోషన్లలో రిజర్వేషన్ కోసం నిబంధన", "పరీక్షలలో అదనపు ప్రయత్నాల కోసం నిబంధన", "నైపుణ్యం-ఆధారిత మూల్యాంకనాల కోసం కేటాయింపు"],
      correctAnswerIndex: 1,
      explanation:"2000 నాటి 82వ సవరణ చట్టం SC మరియు STలకు అర్హత మార్కులలో సడలింపు కోసం లేదా మూల్యాంకన ప్రమాణాలను తగ్గించడం కోసం, ప్రత్యేకించి పబ్లిక్ సర్వీసెస్‌కు ప్రమోషన్ విషయాలలో రిజర్వేషన్ కోసం నిబంధనలను రూపొందించడానికి అందిస్తుంది.",
    ),

    Question(
      questionText: "SCలకు రాజ్యాంగపరమైన భద్రతలకు సంబంధించిన విషయాలను పరిశోధించడానికి రాష్ట్రపతి జాతీయ షెడ్యూల్డ్ కులాల (SCలు) కోసం రాజ్యాంగంలోని ఏ ఆర్టికల్ ప్రకారం ఒక జాతీయ కమిషన్‌ను ఏర్పాటు చేయాలి?",
      options:["ఆర్టికల్ 338", "ఆర్టికల్ 338-A", "ఆర్టికల్ 339", "ఆర్టికల్ 340"],
      correctAnswerIndex: 0,
      explanation:"ఎస్సీలకు రాజ్యాంగపరమైన భద్రతలకు సంబంధించిన విషయాలను పరిశోధించడానికి రాష్ట్రపతి రాజ్యాంగంలోని ఆర్టికల్ 338 ప్రకారం ఎస్సీల కోసం జాతీయ కమిషన్‌ను ఏర్పాటు చేయాలి.",
    ),

    Question(
      questionText: "ఏ సవరణ చట్టం 2019 చట్టసభలలో ఆంగ్లో-ఇండియన్లకు ప్రత్యేక ప్రాతినిధ్యాన్ని నిలిపివేసింది?",
      options:["95వ సవరణ చట్టం", "102వ సవరణ చట్టం", "104వ సవరణ చట్టం", "2019వ సవరణ చట్టం"],
      correctAnswerIndex: 2,
      explanation:"104వ సవరణ చట్టం, 2019, నామినేషన్ ద్వారా చట్టసభలలో ఆంగ్లో-ఇండియన్లకు ప్రత్యేక ప్రాతినిధ్యం కల్పించడాన్ని నిలిపివేసింది.",
    ),

    Question(
      questionText: "1953లో నియమించబడిన మొదటి వెనుకబడిన తరగతుల కమిషన్‌కు ఎవరు అధ్యక్షత వహించారు?",
      options:["VP సింగ్", "కాకా కలేల్కర్", "BP మండల్", "కాకా కిన్లేకర్"],
      correctAnswerIndex: 1,
      explanation:"1953లో నియమించబడిన మొదటి వెనుకబడిన తరగతుల కమిషన్‌కు కాకా కలేల్కర్ అధ్యక్షత వహించారు.",
    ),

    Question(
      questionText: "1955లో మొదటి వెనుకబడిన తరగతుల కమిషన్ సిఫార్సులను అమలు చేయకపోవడానికి ప్రాథమిక కారణం ఏమిటి?",
      options:["ప్రభుత్వ మద్దతు లేకపోవడం", "అస్పష్టత మరియు అసాధ్యత", "సభ్యుల మధ్య పదునైన విభజన", "ఆర్థిక పరిమితులు"],
      correctAnswerIndex: 2,
      explanation:"1955లో మొదటి వెనుకబడిన తరగతుల కమీషన్ యొక్క సిఫార్సులు వారి గ్రహించిన అస్పష్టత మరియు అసాధ్యత కారణంగా, వెనుకబాటుతనం యొక్క ప్రమాణంపై కమిషన్ సభ్యుల మధ్య తీవ్ర విభజనతో పాటుగా అమలు కాలేదు.",
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
    home: sprcc_te(),
  ));
}

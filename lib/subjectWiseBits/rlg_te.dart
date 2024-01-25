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

class rlg_te extends StatefulWidget {
  final String? userIdentifier;

  rlg_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<rlg_te> createState() => _rlg_teState();
}

class _rlg_teState extends State<rlg_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//75.ప్రభుత్వ హక్కులు మరియు బాధ్యతలు

    Question(
      questionText: "రాజ్యాంగంలోని XlIలోని ఆర్టికల్స్ 294 నుండి 300 ప్రకారం, భారతదేశం లేదా రాచరిక రాష్ట్రాల యొక్క ఆస్తి, హక్కులు మరియు బాధ్యతలకు ఏమి జరుగుతుంది?",
      options:[
        "అవి ఇంగ్లండ్ రాజు ఆస్తిగా మారాయి.",
        "వారు భారతదేశ ఆధిపత్యంతో ఉంటారు.",
        "వారు యూనియన్ లేదా సంబంధిత రాష్ట్రంలో అధికారం కలిగి ఉన్నారు.",
        "వారు భారత రాష్ట్ర పాలకుడి ఆస్తిగా మారతారు."
      ],
      correctAnswerIndex: 2,
      explanation:"రాజ్యాంగం ప్రారంభానికి ముందు భారతదేశం యొక్క డొమినియన్ లేదా రాచరిక రాష్ట్రాల యొక్క అన్ని ఆస్తి మరియు ఆస్తులు యూనియన్ లేదా సంబంధిత రాష్ట్రానికి చెందుతాయి.",
    ),

    Question(
      questionText: "ఆర్టికల్ 300 ప్రకారం, ఏ చట్టపరమైన సంస్థలు దావాలు మరియు విచారణల కోసం న్యాయపరమైన వ్యక్తులుగా పరిగణించబడతాయి?",
      options:[
        "భారత ప్రభుత్వం మరియు రాష్ట్రాలు",
        "వ్యక్తిగత అధికారులు",
        "ఇంగ్లండ్ రాజు మరియు రాచరిక రాష్ట్రాల పాలకులు",
        "ఈస్ట్ ఇండియా కంపెనీ"
      ],
      correctAnswerIndex: 0,
      explanation:"యూనియన్ ఆఫ్ ఇండియా మరియు రాష్ట్రాలు సూట్‌లు మరియు ప్రొసీడింగ్‌ల కోసం న్యాయపరమైన వ్యక్తులుగా పరిగణించబడుతున్నాయని ఆర్టికల్ 300 నిర్ధారిస్తుంది, యూనియన్ ప్రభుత్వం లేదా రాష్ట్రాల ప్రభుత్వం కాదు.",
    ),

    Question(
      questionText: "రాజ్యాంగం ప్రకారం యూనియన్ లేదా రాష్ట్రం కుదుర్చుకున్న ఒప్పందాలకు ఏ షరతులు తప్పనిసరి?",
      options:[
        "ఇంగ్లండ్ రాజు ఆమోదం",
        "గవర్నర్ జనరల్ ఆమోదం",
        "అధ్యక్షుడు లేదా గవర్నర్ చేత వ్యక్తీకరించబడినది, వారి తరపున అమలు చేయబడుతుంది మరియు వారిచే నిర్దేశించబడిన లేదా అధికారం ఇవ్వబడినది",
        "పార్లమెంట్ ఆమోదం"
      ],
      correctAnswerIndex: 2,
      explanation:"యూనియన్ లేదా రాష్ట్రం ద్వారా కుదుర్చుకున్న ఒప్పందాలు రాష్ట్రపతి లేదా గవర్నర్ ద్వారా వ్యక్తీకరించబడాలని, వారి తరపున అమలు చేయబడాలని మరియు వారిచే నిర్దేశించబడాలని లేదా అధికారం ఇవ్వబడాలని రాజ్యాంగం ఆదేశించింది.",
    ),

    Question(
      questionText: "ఈస్టిండియా కంపెనీ సార్వభౌమాధికారం కోసం చట్టపరమైన బాధ్యత నుండి రక్షింపబడటానికి ఏ చారిత్రక సూత్రం దారితీసింది?",
      options:[
        "డాక్ట్రిన్ ఆఫ్ ఎగ్జిక్యూటివ్ ప్రివిలేజ్",
        "డాక్ట్రిన్ ఆఫ్ సావరిన్ ఇమ్యూనిటీ",
        "జోక్యం లేని నియమం",
        "దూకుడు లేని సూత్రం"
      ],
      correctAnswerIndex: 1,
      explanation:"ఈస్ట్ ఇండియా కంపెనీ తన సార్వభౌమ విధుల కోసం చట్టపరమైన బాధ్యత నుండి రోగనిరోధక శక్తి 'డాక్ట్రిన్ ఆఫ్ సావరిన్ ఇమ్యూనిటీ' అని పిలువబడే ఆంగ్ల సాధారణ న్యాయ సూత్రంపై ఆధారపడింది.",
    ),

    Question(
      questionText: "ఏ సందర్భంలో సుప్రీం కోర్ట్ సార్వభౌమ నిరోధక సిద్ధాంతాన్ని విమర్శించింది మరియు రాష్ట్రం యొక్క బాధాకరమైన బాధ్యత పట్ల ఉదారవాద విధానాన్ని అవలంబించింది?",
      options:[
        "P మరియు O స్టీమ్ నావిగేషన్ కంపెనీ కేసు",
        "కస్తూరిలాల్ కేసు",
        "నాగేంద్రరావు కేసు",
        "కామన్ కాజ్ కేసు"
      ],
      correctAnswerIndex: 2,
      explanation:"నాగేంద్రరావు కేసు (1994)లో సర్వోన్నత న్యాయస్థానం సార్వభౌమాధికారం యొక్క సిద్ధాంతాన్ని విమర్శించింది మరియు రాష్ట్రం యొక్క బాధాకరమైన బాధ్యత పట్ల ఉదారవాద విధానాన్ని అవలంబించింది.",
    ),

    Question(
      questionText: "భారత రాష్ట్రపతి మరియు గవర్నర్‌లకు వారి అధికారిక చర్యలకు సంబంధించి ఎలాంటి మినహాయింపులు ఇవ్వబడతాయి?",
      options:[
        "వారి అధికారిక అధికారాలు మరియు విధులను అమలు చేయడంలో చేసిన ఏదైనా చర్య కోసం వారి పదవీ కాలంలో దావా వేయవచ్చు.",
        "వారి అధికారిక అధికారాలు మరియు విధులను అమలు చేయడంలో చేసిన ఏదైనా చర్య కోసం వారి పదవీ కాలంలో దావా వేయలేరు.",
        "వారు వారి పదవీ కాలంలో సివిల్ ప్రొసీడింగ్స్ నుండి తప్పించుకుంటారు.",
        "వారు వారి పదవీ కాలంలో క్రిమినల్ ప్రొసీడింగ్‌ల నుండి తప్పించుకుంటారు."
      ],
      correctAnswerIndex: 1,
      explanation:"భారత రాష్ట్రపతి మరియు గవర్నర్‌లు వారి అధికారిక అధికారాలు మరియు విధులను అమలు చేయడం మరియు పనితీరులో చేసిన ఏ చర్యకైనా వారి పదవీ కాలంలో దావా వేయలేరు.",
    ),

    Question(
      questionText: "మంత్రులు తమ అధికారిక చర్యలకు సంబంధించి ఎలాంటి రోగనిరోధక శక్తిని పొందుతారు?",
      options:[
        "వారు అన్ని చట్టపరమైన చర్యల నుండి రోగనిరోధక శక్తిని కలిగి ఉన్నారు.",
        "వారు క్రిమినల్ ప్రొసీడింగ్స్ నుండి మాత్రమే తప్పించుకుంటారు.",
        "వారు సివిల్ ప్రొసీడింగ్స్ నుండి మాత్రమే రోగనిరోధక శక్తిని కలిగి ఉన్నారు.",
        "వారు తమ అధికారిక చర్యలకు ఎటువంటి రోగనిరోధక శక్తిని పొందరు."
      ],
      correctAnswerIndex: 3,
      explanation:"మంత్రులు వారి అధికారిక చర్యలకు ఎటువంటి మినహాయింపును పొందరు, మరియు సాధారణ పౌరుల మాదిరిగానే సాధారణ న్యాయస్థానాలలో నేరాలు మరియు టార్ట్‌లపై దావా వేయవచ్చు.",
    ),

    Question(
      questionText: "జ్యుడీషియల్ ఆఫీసర్స్ ప్రొటెక్షన్ యాక్ట్ (1850) ప్రకారం, వారి అధికారిక చర్యల కోసం న్యాయ అధికారుల బాధ్యత గురించి ఇది ఏమి నిర్దేశిస్తుంది?",
      options:[
        "వారు చేసిన ఏ చర్యకైనా సివిల్ కోర్టులో దావా వేయడానికి వారు పూర్తిగా బాధ్యత వహిస్తారు.",
        "వారి అధికారిక విధి నిర్వహణలో చేసిన ఏ చర్యకైనా వారు దావా వేయలేరు.",
        "అధ్యక్షుని అనుమతితో మాత్రమే వారు దావా వేయబడతారు.",
        "వారు క్రిమినల్ ప్రొసీడింగ్స్ నుండి మాత్రమే రోగనిరోధక శక్తిని కలిగి ఉన్నారు."
      ],
      correctAnswerIndex: 1,
      explanation:"జ్యుడీషియల్ ఆఫీసర్స్ ప్రొటెక్షన్ యాక్ట్ (1850) న్యాయపరంగా వ్యవహరించే న్యాయాధికారులు తమ అధికారిక విధి నిర్వహణలో వారు చేసిన ఏదైనా చర్య కోసం ఏ సివిల్ కోర్టులో దావా వేయబడరని పేర్కొంటుంది.",
    ),

    Question(
      questionText: "అధికారిక ఒప్పందాలకు సంబంధించి పౌర సేవకులకు ఎలాంటి రోగనిరోధక శక్తి ఉంది?",
      options:[
        "వారు అధికారిక ఒప్పందాలకు వ్యక్తిగతంగా బాధ్యత వహిస్తారు.",
        "అధికారిక ఒప్పందాల కోసం వారు ఎటువంటి చట్టపరమైన బాధ్యత నుండి తప్పించుకుంటారు.",
        "రాజ్యాంగంలో పేర్కొన్న షరతులను పాటించకుండా ఒప్పందం చేసుకున్నట్లయితే మాత్రమే వారు బాధ్యత వహిస్తారు.",
        "వారు హింసాత్మక చర్యలకు మాత్రమే చట్టపరమైన బాధ్యత నుండి రోగనిరోధక శక్తిని పొందుతారు."
      ],
      correctAnswerIndex: 1,
      explanation:"అధికారిక ఒప్పందాల కోసం చట్టపరమైన బాధ్యత నుండి పౌర సేవకులకు వ్యక్తిగత రోగనిరోధక శక్తి ఇవ్వబడుతుంది, అంటే అలాంటి ఒప్పందాలకు వారు వ్యక్తిగతంగా బాధ్యత వహించరు.",
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
    home: rlg_te(),
  ));
}

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

class lci_te extends StatefulWidget {
  final String? userIdentifier;

  lci_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<lci_te> createState() => _lci_teState();
}

class _lci_teState extends State<lci_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//70 .భారతదేశ లా కమిషన్

    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియా యొక్క ప్రాథమిక విధి ఏమిటి?",
      options:[
        "చట్టాలను అమలు చేయడం",
        "శాసనపరమైన చర్యలను సిఫార్సు చేయడం",
        "చట్టపరమైన వివాదాలను పరిష్కరించడం",
        "ప్రభుత్వ విధానాలను అమలు చేయడం"],
      correctAnswerIndex: 1,
      explanation:"చట్టాల ఏకీకరణ మరియు క్రోడీకరణ కోసం శాసనపరమైన చర్యలను సిఫారసు చేయడం లా కమిషన్ ఆఫ్ ఇండియా యొక్క ప్రాథమిక విధి.",
    ),

    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియా సిఫార్సులు ప్రభుత్వంపై కట్టుబడి ఉన్నాయా?",
      options:[
        "అవును",
        "లేదు",
      ],
      correctAnswerIndex: 1,
      explanation:"లేదు, భారత లా కమిషన్ సిఫార్సులు ప్రభుత్వానికి కట్టుబడి ఉండవు.",
    ),

    Question(
      questionText: "బ్రిటీష్ పాలనలో, 19వ శతాబ్దంలో ఎన్ని లా కమిషన్లు స్థాపించబడ్డాయి?",
      options:["రెండు", "మూడు", "నాలుగు", "ఐదు"],
      correctAnswerIndex: 2,
      explanation:"19వ శతాబ్దంలో బ్రిటిష్ పాలనలో నాలుగు లా కమీషన్లు స్థాపించబడ్డాయి.",
    ),

    Question(
      questionText: "1955లో ఏర్పాటైన స్వతంత్ర భారత మొదటి లా కమిషన్‌కు ఛైర్మన్‌ ఎవరు?",
      options:[
        "మీ సెతల్వాద్",
        "అటార్నీ-జనరల్ ఆఫ్ ఇండియా",
        "భారత ప్రధాన న్యాయమూర్తి",
        "భారత ప్రధాన మంత్రి"
      ],
      correctAnswerIndex: 0,
      explanation:"నేను సెతల్వాద్ 1955లో ఏర్పాటైన స్వతంత్ర భారత మొదటి లా కమిషన్‌కు ఛైర్మన్‌గా పనిచేశాను.",
    ),

    Question(
      questionText: "భారతదేశంలో ప్రతి లా కమిషన్ పదవీకాలం ఎంత?",
      options:[
        "ఒక సంవత్సరం",
        "రెండు సంవత్సరాలు",
        "మూడు సంవత్సరాలు",
        "ఐదేళ్లు"
      ],
      correctAnswerIndex: 2,
      explanation:"భారతదేశంలో ప్రతి లా కమిషన్ కాలపరిమితి మూడు సంవత్సరాలు.",
    ),
    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియా కూర్పు ఏమిటి?",
      options:[
        "నిర్ణీత సంఖ్యలో సభ్యులతో స్థిర కూర్పు",
        "ఇది ఒక కమిషన్ నుండి మరొక కమిషన్కు మారుతుంది",
        "ఎల్లప్పుడూ న్యాయమూర్తులు మాత్రమే ఉంటారు",
        "ప్రభుత్వ ప్రభావం నుండి పూర్తిగా స్వతంత్రం"
      ],
      correctAnswerIndex: 1,
      explanation:"లా కమిషన్ ఆఫ్ ఇండియా యొక్క కూర్పు ఒక కమిషన్ నుండి మరొక కమిషన్‌కు మారుతుంది.",
    ),

    Question(
      questionText: "భారతీయ లా కమిషన్ చైర్మన్ లేదా పూర్తి సమయం సభ్యులుగా ఎవరు పనిచేయగలరు?",
      options:[
        "విశ్రాంత న్యాయమూర్తులు మాత్రమే",
        "సేవ చేస్తున్న లేదా పదవీ విరమణ పొందిన న్యాయమూర్తులు, న్యాయ నిపుణులు, న్యాయనిపుణులు లేదా న్యాయ ప్రొఫెసర్లు",
        "కేవలం న్యాయ నిపుణులు",
        "ఇండియన్ లీగల్ సర్వీస్ సభ్యులు"
      ],
      correctAnswerIndex: 1,
      explanation:"భారతీయ లా కమిషన్ ఛైర్మన్ మరియు పూర్తి-సమయం సభ్యులు పని చేస్తున్న లేదా పదవీ విరమణ చేసిన న్యాయమూర్తులు, న్యాయ నిపుణులు, న్యాయనిపుణులు లేదా న్యాయశాస్త్ర ఆచార్యులు కావచ్చు.",
    ),

    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియా మెంబర్-సెక్రటరీ ర్యాంక్ ఎంత?",
      options:[
        "న్యాయమూర్తి",
        "భారత ప్రభుత్వానికి అదనపు కార్యదర్శి లేదా కార్యదర్శి",
        "అటార్నీ జనరల్",
        "ప్రొఫెసర్ ఆఫ్ లా"
      ],
      correctAnswerIndex: 1,
      explanation:"లా కమిషన్ ఆఫ్ ఇండియా మెంబర్-సెక్రటరీ ఇండియన్ లీగల్ సర్వీస్‌కు చెందినవారు మరియు భారత ప్రభుత్వానికి అదనపు కార్యదర్శి లేదా కార్యదర్శి హోదాను కలిగి ఉంటారు.",
    ),

    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియాలో పార్ట్ టైమ్ సభ్యులు ఎవరు?",
      options:[
        "న్యాయమూర్తులు మాత్రమే",
        "ఇండియన్ లీగల్ సర్వీస్ సభ్యులు",
        "బార్‌లోని ప్రముఖ సభ్యులు, ప్రముఖ పండితులు లేదా చట్టంలో ప్రత్యేక పరిజ్ఞానం ఉన్న వ్యక్తులు",
        "రాజకీయ నాయకులు"
      ],
      correctAnswerIndex: 2,
      explanation:"భారతీయ లా కమీషన్ యొక్క పార్ట్-టైమ్ సభ్యులు బార్‌లోని ప్రముఖ సభ్యులు, ప్రఖ్యాత పండితులు లేదా నిర్దిష్ట చట్టంలో ప్రత్యేక పరిజ్ఞానం ఉన్న వ్యక్తుల నుండి నియమించబడ్డారు.",
    ),

    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియా యొక్క విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "ఇప్పటికే ఉన్న చట్టాలను అమలు చేయండి",
        "నిరుపయోగమైన చట్టాలను గుర్తించండి మరియు రద్దు చేయండి",
        "చట్టపరమైన వివాదాలను పరిష్కరించండి",
        "ప్రభుత్వ విధానాలను అమలు చేయండి"
      ],
      correctAnswerIndex: 1,
      explanation:"భారత న్యాయ కమిషన్ యొక్క విధుల్లో ఒకటి, ఇకపై అవసరం లేని లేదా సంబంధిత చట్టాలను గుర్తించడం మరియు వెంటనే రద్దు చేయవచ్చు.",
    ),
    Question(
      questionText: "లా కమీషన్ ఆఫ్ ఇండియా కోసం పని చేసే సాధారణ ప్రక్రియ ఏమిటి?",
      options:[
        "ప్రాజెక్టులు ప్రభుత్వంచే ప్రారంభించబడతాయి మరియు కమిషన్ వాటిని సమీక్షిస్తుంది.",
        "కమీషన్ ప్రాధాన్యతలను చర్చిస్తుంది, అంశాలను గుర్తిస్తుంది, సన్నాహక పనిని అప్పగిస్తుంది మరియు అభిప్రాయం కోసం పని పత్రాలను ప్రసారం చేస్తుంది.",
        "కమీషన్ స్థిరమైన పని విధానాలను కలిగి ఉంది మరియు అంశాల స్వభావానికి అనుగుణంగా లేదు.",
        "కమీషన్ తన పని ప్రక్రియ కోసం ప్రజల అభిప్రాయాలపై మాత్రమే ఆధారపడుతుంది."
      ],
      correctAnswerIndex: 1,
      explanation:"లా కమిషన్ ఆఫ్ ఇండియా యొక్క పని ప్రక్రియలో ప్రాధాన్యతలను చర్చించడం, అంశాలను గుర్తించడం, సన్నాహక పనిని కేటాయించడం మరియు అభిప్రాయం కోసం పని పత్రాలను ప్రసారం చేయడం వంటివి ఉంటాయి.",
    ),

    Question(
      questionText: "ప్రజలకు మరియు ఆసక్తిగల సమూహాలకు వర్కింగ్ పేపర్ సర్క్యులేట్ చేయబడిన తర్వాత ఏమి జరుగుతుంది?",
      options:[
        "ఇది వెంటనే ఖరారు చేసి ప్రభుత్వానికి పంపబడుతుంది.",
        "స్పందనలు మూల్యాంకనం చేయబడతాయి మరియు సమాచారం విస్మరించబడుతుంది.",
        "స్పందనలు మూల్యాంకనం చేయబడ్డాయి మరియు సమాచారం తుది నివేదికలో పొందుపరచబడింది.",
        "కమీషన్ ప్రజల నుండి వచ్చిన ప్రతిస్పందనలను విస్మరిస్తుంది."
      ],
      correctAnswerIndex: 2,
      explanation:"వర్కింగ్ పేపర్ సర్క్యులేట్ అయిన తర్వాత, ప్రతిస్పందనలు మూల్యాంకనం చేయబడతాయి మరియు సమాచారం తుది నివేదికలో చేర్చబడుతుంది.",
    ),

    Question(
      questionText: "లా కమిషన్ ఆఫ్ ఇండియా నివేదికలను ప్రభుత్వం ఎలా పరిగణిస్తుంది?",
      options:[
        "వారు ప్రభుత్వంచే విస్మరించబడ్డారు.",
        "వారు ఎటువంటి సంప్రదింపులు లేకుండా పరిగణించబడతారు.",
        "సంబంధిత అడ్మినిస్ట్రేటివ్ మినిస్ట్రీలతో సంప్రదించి లా అండ్ జస్టిస్ మంత్రిత్వ శాఖ వాటిని పరిగణిస్తుంది.",
        "అవి ఎటువంటి పరిశీలన లేకుండా వెంటనే అమలు చేయబడతాయి."
      ],
      correctAnswerIndex: 2,
      explanation:"భారతీయ లా కమిషన్ నివేదికలను సంబంధిత పరిపాలనా మంత్రిత్వ శాఖలతో సంప్రదించి న్యాయ మరియు న్యాయ మంత్రిత్వ శాఖ పరిగణలోకి తీసుకుంటుంది.",
    ),

    Question(
      questionText: "న్యాయ పంపిణీ వ్యవస్థలో లా కమిషన్ ఆఫ్ ఇండియా ఎలాంటి పాత్ర పోషిస్తుంది?",
      options:[
        "ఇది ఇప్పటికే ఉన్న చట్టాలను మాత్రమే అధ్యయనం చేస్తుంది.",
        "న్యాయ పంపిణీ వ్యవస్థలో దీనికి ఎటువంటి పాత్ర లేదు.",
        "ఇది న్యాయ బట్వాడా వ్యవస్థలలో సంస్కరణలు తీసుకురావడానికి అధ్యయనాలు మరియు పరిశోధనలను చేపడుతుంది.",
        "ఇది నేరుగా కోర్టులలో చట్టాలను అమలు చేస్తుంది."
      ],
      correctAnswerIndex: 3,
      explanation:"న్యాయ డెలివరీ సిస్టమ్స్‌లో సంస్కరణలు తీసుకురావడానికి భారత లా కమిషన్ అధ్యయనాలు మరియు పరిశోధనలను చేపట్టింది.",
    ),

    Question(
      questionText: "21వ లా కమిషన్ ఆఫ్ ఇండియా (2015-2018) ఎన్ని నివేదికలు సమర్పించింది?",
      options:["15", "21", "25", "12"],
      correctAnswerIndex: 15,
      explanation:"భారతీయ 21వ లా కమిషన్ (2015-2018) వివిధ విషయాలపై మొత్తం 15 నివేదికలను సమర్పించింది.",
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
    home: lci_te(),
  ));
}

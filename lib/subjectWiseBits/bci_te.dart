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

class bci_te extends StatefulWidget {
  final String? userIdentifier;

  bci_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<bci_te> createState() => _bci_teState();
}

class _bci_teState extends State<bci_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//69.బార్ కౌన్సిల్ ఆఫ్ ఇండియా

    Question(
      questionText: "బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) స్థాపనకు ఏ చట్టం దారితీసింది?",
      options:[
        "భారత రాజ్యాంగం",
        "ది లీగల్ ప్రాక్టీషనర్స్ (రెగ్యులేషన్) యాక్ట్, 1879",
        "న్యాయవాదుల చట్టం, 1961",
        "ది లాయర్స్ అండ్ లీగల్ ప్రాక్టీషనర్స్ యాక్ట్, 1955"],
      correctAnswerIndex: 3,
      explanation:"బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) న్యాయవాదుల చట్టం, 1961 ప్రకారం స్థాపించబడింది.",
    ),

    Question(
      questionText: "బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) యొక్క ఎక్స్-అఫీషియో సభ్యులు ఎవరు?",
      options:[
        "రాష్ట్ర బార్ కౌన్సిల్స్ నుండి ఎన్నికైన సభ్యులు",
        "ది అటార్నీ-జనరల్ ఆఫ్ ఇండియా అండ్ ది సొలిసిటర్ జనరల్ ఆఫ్ ఇండియా",
        "భారత ప్రధాన న్యాయమూర్తిచే నామినేట్ చేయబడిన సభ్యులు",
        "న్యాయ విశ్వవిద్యాలయాల నుండి ప్రతినిధులు"],
      correctAnswerIndex: 2,
      explanation:"భారతదేశ అటార్నీ-జనరల్ మరియు సొలిసిటర్ జనరల్ ఆఫ్ ఇండియా బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) యొక్క ఎక్స్-అఫీషియో సభ్యులు.",
    ),

    Question(
      questionText: "బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) యొక్క క్రమశిక్షణా కమిటీ యొక్క విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "న్యాయ విద్యను ప్రోత్సహించడం",
        "విదేశీ విశ్వవిద్యాలయాల గుర్తింపు",
        "న్యాయవాదులకు వృత్తిపరమైన ప్రవర్తన మరియు మర్యాద ప్రమాణాలను నిర్దేశించడం",
        "నిధుల పెట్టుబడి"],
      correctAnswerIndex: 3,
      explanation:"BCI యొక్క క్రమశిక్షణా కమిటీ యొక్క విధుల్లో ఒకటి న్యాయవాదులకు వృత్తిపరమైన ప్రవర్తన మరియు మర్యాద ప్రమాణాలను నిర్దేశించడం.",
    ),

    Question(
      questionText: "బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) ఛైర్మన్ మరియు వైస్-ఛైర్మెన్‌ని ఎవరు ఎన్నుకుంటారు?",
      options:[
        "భారత ప్రధాన న్యాయమూర్తి",
        "రాష్ట్ర బార్ కౌన్సిల్స్‌కు ఎన్నికైన సభ్యులు",
        "భారత రాష్ట్రపతిచే నామినేట్ చేయబడిన సభ్యులు",
        "ప్రధాన మంత్రి"],
      correctAnswerIndex: 2,
      explanation:"BCI యొక్క ఛైర్మన్ మరియు వైస్-చైర్మన్ కౌన్సిల్ దాని సభ్యుల నుండి ఎన్నుకోబడతారు.",
    ),

    Question(
      questionText: "న్యాయ విద్యకు సంబంధించి బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "పేదలకు న్యాయ సహాయం అందించడం",
        "చట్ట సంస్కరణను ప్రోత్సహించడం",
        "నిధుల నిర్వహణ మరియు పెట్టుబడి",
        "విశ్వవిద్యాలయాలతో సంప్రదించి న్యాయ విద్య యొక్క ప్రమాణాలను నిర్దేశించడం"],
      correctAnswerIndex: 9,
      explanation:"న్యాయ విద్యకు సంబంధించి BCI యొక్క విధుల్లో ఒకటి భారతదేశంలోని విశ్వవిద్యాలయాలతో సంప్రదించి న్యాయ విద్య యొక్క ప్రమాణాలను నిర్దేశించడం.",
    ),
    Question(
      questionText: "పది వేల కంటే ఎక్కువ మంది న్యాయవాదులు ఉన్న రాష్ట్ర బార్ కౌన్సిల్ (SBC)కి ఎంత మంది సభ్యులు ఎన్నికయ్యారు?",
      options:[
        "10 మంది సభ్యులు",
        "15 మంది సభ్యులు",
        "20 మంది సభ్యులు",
        "25 మంది సభ్యులు"],
      correctAnswerIndex: 3,
      explanation:"పది వేల కంటే ఎక్కువ మంది న్యాయవాదులను కలిగి ఉన్న రాష్ట్ర బార్ కౌన్సిల్ (SBC) విషయంలో, 25 మంది సభ్యులు ఎన్నికయ్యారు.",
    ),

    Question(
      questionText: "స్టేట్ బార్ కౌన్సిల్ (SBC) ఎక్స్-అఫీషియో మెంబర్ ఎవరు?",
      options:[
        "బార్ కౌన్సిల్ ఆఫ్ ఇండియా (BCI) ఛైర్మన్",
        "అడిషనల్ సొలిసిటర్-జనరల్ ఆఫ్ ఇండియా",
        "హైకోర్టు ప్రధాన న్యాయమూర్తి",
        "రాష్ట్ర అడ్వకేట్-జనరల్"],
      correctAnswerIndex: 3,
      explanation:"ఏదైనా రాష్ట్ర బార్ కౌన్సిల్ (SBC) విషయంలో, రాష్ట్ర అడ్వకేట్-జనరల్ ఎక్స్-అఫీషియో సభ్యుడు.",
    ),

    Question(
      questionText: "ఏదైనా రాష్ట్ర బార్ కౌన్సిల్ (SBC)లో ఎన్నికైన సభ్యుని పదవీ కాలం ఎంత?",
      options:[
        "రెండు సంవత్సరాలు",
        "మూడు సంవత్సరాలు",
        "నాలుగు సంవత్సరాలు",
        "ఐదు సంవత్సరాలు"],
      correctAnswerIndex: 3,
      explanation:"ఏదైనా రాష్ట్ర బార్ కౌన్సిల్ (SBC)లో ఎన్నికైన సభ్యుని పదవీ కాలం ఐదు సంవత్సరాలు.",
    ),

    Question(
      questionText: "స్టేట్ బార్ కౌన్సిల్ (SBC) యొక్క ఏ కమిటీ న్యాయవాదులపై దుష్ప్రవర్తన కేసులను అలరిస్తుంది మరియు నిర్ణయిస్తుంది?",
      options:[
        "లీగల్ ఎయిడ్ కమిటీ",
        "కార్య నిర్వాహక కమిటీ",
        "క్రమశిక్షణా సంఘం",
        "నమోదు కమిటీ"],
      correctAnswerIndex: 2,
      explanation:"స్టేట్ బార్ కౌన్సిల్ (SBC) యొక్క క్రమశిక్షణా కమిటీ న్యాయవాదులపై దుష్ప్రవర్తన కేసులను అలరిస్తుంది మరియు నిర్ణయిస్తుంది.",
    ),

    Question(
      questionText: "న్యాయ సంస్కరణకు సంబంధించి స్టేట్ బార్ కౌన్సిల్ (SBC) విధుల్లో ఒకటి ఏమిటి?",
      options:[
        "వృత్తిపరమైన ప్రవర్తన యొక్క ప్రమాణాలను నిర్దేశించడం",
        "పేదలకు న్యాయ సహాయం అందించడం",
        "చట్టపరమైన అంశాలపై సెమినార్లు నిర్వహించడం",
        "చట్ట సంస్కరణను ప్రోత్సహించడం మరియు మద్దతు ఇవ్వడం"],
      correctAnswerIndex: 3,
      explanation:"స్టేట్ బార్ కౌన్సిల్ (SBC) యొక్క విధుల్లో ఒకటి చట్ట సంస్కరణలను ప్రోత్సహించడం మరియు మద్దతు ఇవ్వడం.",
    ),
    Question(
      questionText: "అడ్వకేట్-ఆన్-రికార్డ్ లేకుండా సుప్రీం కోర్ట్ ముందు న్యాయవాద వృత్తి చేయడానికి ఏ వర్గం న్యాయవాదులు అర్హులు?",
      options:[
        "అడ్వకేట్-ఆన్-రికార్డ్",
        "సీనియర్ అడ్వకేట్",
        "ఇతర న్యాయవాదులు",
        "బార్ కౌన్సిల్ నియమించిన న్యాయవాదులు"],
      correctAnswerIndex: 1,
      explanation:"సీనియర్ అడ్వకేట్‌లు సుప్రీంకోర్టు ముందు న్యాయవాద సాధనకు అర్హులు కానీ అడ్వకేట్-ఆన్-రికార్డ్ లేకుండా హాజరు కాలేరు.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్‌లో పార్టీ తరపున హాజరయ్యేందుకు లేదా చర్య తీసుకునేందుకు ఎవరు అర్హులు?",
      options:[
        "ప్రధాన న్యాయమూర్తిచే నియమించబడిన న్యాయవాది",
        "ఏ ప్రాక్టీస్ చేసే న్యాయవాది",
        "అడ్వకేట్-ఆన్-రికార్డ్",
        "అడ్వకేట్ సీనియర్ అడ్వకేట్‌గా నియమించబడ్డాడు"],
      correctAnswerIndex: 2,
      explanation:"ఒక అడ్వకేట్-ఆన్-రికార్డ్ మాత్రమే సుప్రీం కోర్ట్‌లో ఒక పక్షానికి హాజరు కావడానికి లేదా చట్టం చేయడానికి అర్హత కలిగి ఉంటాడు.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్‌లో సీనియర్ న్యాయవాదుల హోదాకు సంబంధించిన విషయాలను డీల్ చేయడానికి ఏ కమిటీ బాధ్యత వహిస్తుంది?",
      options:[
        "సీనియర్ అడ్వకేట్స్ కమిటీ",
        "అడ్వకేట్-ఆన్-రికార్డ్ కమిటీ",
        "సుప్రీం కోర్ట్ రూల్స్ కమిటీ",
        "ప్రధాన న్యాయమూర్తి ఏర్పాటు చేసిన శాశ్వత కమిటీ"],
      correctAnswerIndex: 3,
      explanation:"భారత ప్రధాన న్యాయమూర్తి ఏర్పాటు చేసిన శాశ్వత కమిటీ సుప్రీంకోర్టులో సీనియర్ న్యాయవాదుల హోదాకు సంబంధించిన విషయాలతో వ్యవహరిస్తుంది.",
    ),

    Question(
      questionText: "సుప్రీం కోర్ట్ కోసం అడ్వకేట్-ఆన్-రికార్డ్ పరీక్షను ఎవరు నిర్వహిస్తారు?",
      options:[
        "భారత ప్రధాన న్యాయమూర్తి",
        "బార్ కౌన్సిల్ ఆఫ్ ఇండియా",
        "ఎగ్జామినేషన్ కమిటీ",
        "బోర్డ్ ఆఫ్ ఎగ్జామినర్స్"],
      correctAnswerIndex: 2,
      explanation:"సుప్రీం కోర్ట్ కోసం అడ్వకేట్-ఆన్-రికార్డ్ పరీక్షను ఎగ్జామినేషన్ కమిటీ ఆమోదంతో సుప్రీం కోర్ట్ రిజిస్ట్రీ నిర్వహిస్తుంది.",
    ),

    Question(
      questionText: "అడ్వకేట్-ఆన్-రికార్డ్ సూచన లేకుండా ఏ వర్గం న్యాయవాదులు సుప్రీం కోర్ట్‌లోని ఏ విషయంలోనూ హాజరుకాలేరు, వాదించలేరు మరియు కోర్టుకు ప్రసంగించలేరు?",
      options:[
        "అడ్వకేట్ సీనియర్ అడ్వకేట్‌గా నియమించబడ్డాడు",
        "అడ్వకేట్-ఆన్-రికార్డ్",
        "సీనియర్ న్యాయవాదులు",
        "ఇతర న్యాయవాదులు"],
      correctAnswerIndex: 3,
      explanation:"అడ్వకేట్-ఆన్-రికార్డ్ సూచన లేకుండా ఇతర న్యాయవాదులు సుప్రీం కోర్టులో కోర్టుకు హాజరుకాలేరు, వాదించలేరు మరియు ప్రసంగించలేరు.",
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
    home: bci_te(),
  ));
}

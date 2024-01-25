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

class moc_te extends StatefulWidget {
  final String? userIdentifier;

  moc_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<moc_te> createState() => _moc_teState();
}

class _moc_teState extends State<moc_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//రాజ్యాంగాన్ని తయారు చేయడం
    Question(
        questionText: "1. భారతదేశానికి రాజ్యాంగ పరిషత్ ఆలోచన మొదట ఎప్పుడు ప్రతిపాదించబడింది?",
        options:[
          "1935",
          "1938",
          "1940",
          "1942"
        ],
        correctAnswerIndex: 0,
        explanation:"1935లో, భారత జాతీయ కాంగ్రెస్ అధికారికంగా భారత రాజ్యాంగాన్ని రూపొందించడానికి రాజ్యాంగ సభను కోరింది."
    ),

    Question(
        questionText: "2. నవంబర్ 1946లో రాజ్యాంగ సభ యొక్క కూర్పు ఏమిటి?",
        options:[
          "మొత్తం బలం: 389 మంది సభ్యులు",
          "బ్రిటిష్ ఇండియా: 296 సీట్లు, ప్రిన్స్లీ స్టేట్స్: 93 సీట్లు",
          "వివిధ సంఘాలకు ప్రాతినిధ్యం వహిస్తూ పాక్షికంగా ఎన్నుకోబడిన మరియు పాక్షికంగా నామినేట్ చేయబడిన సభ్యులు",
          "పైన ఉన్నవన్నీ"
        ],
        correctAnswerIndex: 3,
        explanation:"రాజ్యాంగ అసెంబ్లీలో మొత్తం 389 మంది సభ్యుల బలం ఉంది, బ్రిటీష్ ఇండియాకు 296 సీట్లు మరియు రాచరిక రాష్ట్రాలకు 93 సీట్లు కేటాయించబడ్డాయి. సభ్యులు పాక్షికంగా ఎన్నికయ్యారు మరియు పాక్షికంగా నామినేట్ అయ్యారు, వివిధ వర్గాలకు ప్రాతినిధ్యం వహిస్తారు."
    ),

    Question(
        questionText: "3. రాజ్యాంగ సభ మొదటి సమావేశాన్ని ఎప్పుడు నిర్వహించింది?",
        options:[
          "డిసెంబర్ 9, 1945",
          "డిసెంబర్ 9, 1946",
          "జనవరి 22, 1947",
          "జనవరి 26, 1950"
        ],
        correctAnswerIndex: 1,
        explanation:"డిసెంబర్ 9, 1946న రాజ్యాంగ సభ తన మొదటి సమావేశాన్ని నిర్వహించింది, తాత్కాలిక అధ్యక్షుడిగా డాక్టర్ సచ్చిదానంద సిన్హా ఎన్నికయ్యారు."
    ),

    Question(
        questionText: "4. రాజ్యాంగ సభలో చారిత్రాత్మక 'ఆబ్జెక్టివ్స్ రిజల్యూషన్'ను ఎవరు ప్రవేశపెట్టారు?",
        options:[
          "జవహర్‌లాల్ నెహ్రూ",
          "సర్దార్ వల్లభాయ్ పటేల్",
          "డా. రాజేంద్ర ప్రసాద్",
          "మౌలానా అబుల్ కలాం ఆజాద్"
        ],
        correctAnswerIndex: 0,
        explanation:"జవహర్‌లాల్ నెహ్రూ డిసెంబర్ 13, 1946న రాజ్యాంగ సభలో చారిత్రాత్మక 'లక్ష్యాల తీర్మానం'ను ప్రవేశపెట్టారు."
    ),

    Question(
        questionText: "5. భారత స్వాతంత్ర్య చట్టం 1947 ద్వారా రాజ్యాంగ పరిషత్ స్థానంలో ఏ మార్పులు చేయబడ్డాయి?",
        options:[
          "ఇది పూర్తిగా సార్వభౌమాధికార సంస్థగా మారింది.",
          "ఏదైనా రాజ్యాంగాన్ని రూపొందించడానికి అధికారం ఉంది.",
          "రాజ్యాంగాన్ని రూపొందించడానికి మరియు చట్టాలను రూపొందించడానికి శాసనమండలిగా మారింది.",
          "పైన ఉన్నవన్నీ"
        ],
        correctAnswerIndex: 3,
        explanation:"1947 నాటి భారత స్వాతంత్ర్య చట్టం రాజ్యాంగ సభను పూర్తి సార్వభౌమాధికార సంస్థగా చేసింది, ఏదైనా రాజ్యాంగాన్ని రూపొందించడానికి అధికారం ఇచ్చింది. ఇది రాజ్యాంగాన్ని రూపొందించడానికి మరియు చట్టాలను రూపొందించడానికి ఒక శాసన సంస్థగా కూడా మారింది."
    ),

    Question(
        questionText: "6. రాజ్యాంగాన్ని రూపొందించడంతో పాటు రాజ్యాంగ సభ ఏ విధులు నిర్వర్తించింది?",
        options:[
          "కామన్వెల్త్‌లో భారతదేశ సభ్యత్వాన్ని ఆమోదించింది.",
          "జాతీయ జెండా, గీతం మరియు పాటను స్వీకరించారు.",
          "భారత తొలి రాష్ట్రపతిగా డాక్టర్ రాజేంద్ర ప్రసాద్ ఎన్నికయ్యారు.",
          "పైన ఉన్నవన్నీ"
        ],
        correctAnswerIndex: 3,
        explanation:"రాజ్యాంగాన్ని రూపొందించడంతో పాటు, రాజ్యాంగ సభ కామన్వెల్త్‌లో భారతదేశ సభ్యత్వాన్ని ఆమోదించింది, జాతీయ జెండా, గీతం మరియు పాటను ఆమోదించింది మరియు భారతదేశానికి మొదటి రాష్ట్రపతిగా డాక్టర్ రాజేంద్ర ప్రసాద్‌ను ఎన్నుకుంది."
    ),

    Question(
        questionText: "7. రాజ్యాంగ సభ తన చివరి సమావేశాన్ని ఎప్పుడు నిర్వహించింది?",
        options:[
          "జనవరి 22, 1950",
          "జనవరి 24, 1950",
          "జనవరి 26, 1950",
          "జనవరి 30, 1950"
        ],
        correctAnswerIndex: 1,
        explanation:"రాజ్యాంగ సభ జనవరి 24, 1950న తన చివరి సెషన్‌ను నిర్వహించింది మరియు 1951-52లో మొదటి సాధారణ ఎన్నికల తర్వాత కొత్త పార్లమెంటు ఏర్పడే వరకు జనవరి 26, 1950 నుండి తాత్కాలిక పార్లమెంట్‌గా కొనసాగింది."
    ),
    Question(
        questionText: "రాజ్యాంగ సభలో యూనియన్ అధికారాల కమిటీ ఛైర్మన్ ఎవరు?",
        options:["సర్దార్ పటేల్", "డా. బి.ఆర్. అంబేద్కర్", "జవహర్‌లాల్ నెహ్రూ", "జి.వి. మావలంకర్"],
        correctAnswerIndex: 2,
        explanation:"జవహర్‌లాల్ నెహ్రూ రాజ్యాంగ సభలో యూనియన్ పవర్స్ కమిటీకి ఛైర్మన్‌గా పనిచేశారు."
    ),

    Question(
        questionText: "రాజ్యాంగం యొక్క మొదటి ముసాయిదాను రూపొందించడానికి ఏ కమిటీ బాధ్యత వహిస్తుంది?",
        options:[
          "యూనియన్ రాజ్యాంగ కమిటీ",
          "డ్రాఫ్టింగ్ కమిటీ",
          "ప్రాథమిక హక్కులపై సలహా కమిటీ",
          "రాష్ట్రాల కమిటీ"
        ],
        correctAnswerIndex: 1,
        explanation:"డా. బి.ఆర్. అంబేద్కర్ అధ్యక్షతన ఉన్న ముసాయిదా కమిటీ, రాజ్యాంగం యొక్క మొదటి ముసాయిదాను తయారు చేయడానికి బాధ్యత వహించింది."
    ),

    Question(
        questionText: "రాజ్యాంగ అసెంబ్లీలో రాజ్యాంగం యొక్క తుది ముసాయిదాను ఎవరు ప్రవేశపెట్టారు?",
        options:[
          "జవహర్‌లాల్ నెహ్రూ",
          "డా. రాజేంద్ర ప్రసాద్",
          "సర్దార్ పటేల్",
          "డాక్టర్ బి. ఆర్. అంబేద్కర్"
        ],
        correctAnswerIndex: 3,
        explanation:"నవంబర్ 4, 1948న రాజ్యాంగ సభలో డా. బి.ఆర్. అంబేద్కర్ రాజ్యాంగం యొక్క తుది ముసాయిదాను ప్రవేశపెట్టారు."
    ),

    Question(
        questionText: "ముసాయిదా రాజ్యాంగం యొక్క మూడవ పఠనం ఎప్పుడు ప్రారంభమైంది?",
        options:[
          "నవంబర్ 9, 1948",
          "నవంబర్ 15, 1948",
          "అక్టోబర్ 17, 1949",
          "నవంబర్ఆర్ 26, 1949"
        ],
        correctAnswerIndex: 2,
        explanation:"ముసాయిదా రాజ్యాంగం యొక్క మూడవ పఠనం నవంబర్ 14, 1949న ప్రారంభమై, నవంబర్ 26, 1949న ముగిసింది."
    ),

    Question(
        questionText: "భారత రాజ్యాంగం ఏ రోజు అమలులోకి వచ్చింది?",
        options:[
          "నవంబర్ 26, 1949",
          "జనవరి 26, 1950",
          "డిసెంబర్ 9, 1946",
          "అక్టోబర్ 17, 1949"
        ],
        correctAnswerIndex: 1,
        explanation:"భారత రాజ్యాంగం జనవరి 26, 1950న అమలులోకి వచ్చింది, దీనిని గణతంత్ర దినోత్సవంగా జరుపుకుంటారు."
    ),

    Question(
        questionText: "58వ రాజ్యాంగ సవరణ చట్టం 1987 రాజ్యాంగంలోని హిందీ గ్రంథానికి సంబంధించి ఎలాంటి మార్పులు చేసింది?",
        options:[
          "ఇది హిందీని ఏకైక అధికారిక భాషగా స్థాపించింది.",
          "ఇది రాజ్యాంగం యొక్క అధికార గ్రంథంగా హిందీని చేసింది.",
          "ఇది రాజ్యాంగాన్ని హిందీలోకి అనువదించడానికి అందించింది.",
          "ఇది హిందీని ప్రాంతీయ భాషగా పరిచయం చేసింది."
        ],
        correctAnswerIndex: 2,
        explanation:"1987 58వ రాజ్యాంగ సవరణ చట్టం రాజ్యాంగాన్ని హిందీలోకి అనువదించడానికి మరియు అన్ని ప్రయోజనాల కోసం హిందీ పాఠాన్ని అధికారికంగా చేసింది."
    ),
    Question(
        questionText: "U.S. రాజ్యాంగ నిర్మాతలు తమ పనిని పూర్తి చేయడానికి ఎంత సమయం పట్టింది?",
        options:["2 నెలల కంటే తక్కువ", "4 నెలల కంటే తక్కువ", "సుమారు 6 నెలలు", "ఒక సంవత్సరం పైగా"],
        correctAnswerIndex: 1,
        explanation:"U.S. రాజ్యాంగ నిర్మాతలు మే 25, 1787 నుండి సెప్టెంబర్ 17, 1787 వరకు తమ పనిని పూర్తి చేయడానికి 4 నెలల కన్నా తక్కువ సమయం పట్టారు."
    ),

    Question(
        questionText: "కెనడాలో రాజ్యాంగ నిర్మాణ ప్రక్రియ యొక్క వ్యవధి ఎంత?",
        options:["సుమారు 1 సంవత్సరం", "సుమారు 2 సంవత్సరాలు మరియు 6 నెలలు", "సుమారు 5 సంవత్సరాలు", "10 సంవత్సరాలకు పైగా"],
        correctAnswerIndex: 1,
        explanation:"కెనడాలో రాజ్యాంగ నిర్మాణ ప్రక్రియ అక్టోబరు 10, 1864 నుండి మార్చి 1867 వరకు సుమారు 2 సంవత్సరాల 6 నెలలు పట్టింది."
    ),

    Question(
        questionText: "ఆస్ట్రేలియన్ రాజ్యాంగ నిర్మాతలు తమ పనిని పూర్తి చేయడానికి ఎంత సమయం పట్టింది?",
        options:["6 నెలల కంటే తక్కువ", "సుమారు 9 సంవత్సరాలు", "15 సంవత్సరాలకు పైగా", "సుమారు 5 సంవత్సరాలు"],
        correctAnswerIndex: 1,
        explanation:"ఆస్ట్రేలియన్ రాజ్యాంగ నిర్మాతలు తమ పనిని పూర్తి చేయడానికి దాదాపు 9 సంవత్సరాలు పట్టింది, మార్చి 1891 నుండి జూలై 9, 1900 వరకు."
    ),

    Question(
        questionText: "దక్షిణాఫ్రికాలో రాజ్యాంగ నిర్మాణ ప్రక్రియ యొక్క వ్యవధి ఎంత?",
        options:["6 నెలల కంటే తక్కువ", "సుమారు 1 సంవత్సరం", "2 సంవత్సరాలకు పైగా", "సుమారు 4 సంవత్సరాలు"],
        correctAnswerIndex: 1,
        explanation:"దక్షిణాఫ్రికాలో రాజ్యాంగ నిర్మాణ ప్రక్రియ అక్టోబర్ 1908 నుండి సెప్టెంబర్ 20, 1909 వరకు సుమారు 1 సంవత్సరం పట్టింది."
    ),
    Question(
        questionText: "భారత రాజ్యాంగ సభ (1946)లో బ్రిటిష్ ఇండియన్ ప్రావిన్స్‌లకు ఎన్ని సీట్లు కేటాయించబడ్డాయి?",
        options:["293", "389", "292", "296"],
        correctAnswerIndex: 2,
        explanation:"భారత రాజ్యాంగ సభ (1946)లో మొత్తం 389 సీట్లు కేటాయించబడ్డాయి. వీటిలో 292 సీట్లు బ్రిటిష్ ఇండియన్ ప్రావిన్స్‌లకు కేటాయించబడ్డాయి."

    ),

    Question(
        questionText: "రాజ్యాంగ అసెంబ్లీకి జరిగిన ఎన్నికలలో (జూలై-ఆగస్టు 1946) అత్యధిక స్థానాలను గెలుచుకున్న పార్టీ ఏది?",
        options:["ముస్లిం లీగ్", "యూనియనిస్ట్ పార్టీ", "కాంగ్రెస్", "కమ్యూనిస్ట్ పార్టీ"],
        correctAnswerIndex: 2,
        explanation:"కాంగ్రెస్ పార్టీ రాజ్యాంగ పరిషత్తుకు జరిగిన ఎన్నికలలో (జూలై-ఆగస్టు 1946) అత్యధిక స్థానాలను కైవసం చేసుకోవడం ద్వారా, మొత్తం 208 స్థానాలు సాధించడం ద్వారా విజయం సాధించింది."

    ),

    Question(
        questionText: "రాజ్యాంగ సభలో (1946) సిక్కుల సమాజ వారీగా ప్రాతినిధ్యం ఏమిటి?",
        options:["2", "3", "4", "5"],
        correctAnswerIndex: 2,
        explanation:"రాజ్యాంగ సభలో (1946) సిక్కులు 4 స్థానాలతో ప్రాతినిధ్యం వహించారు. ఈ కేటాయింపు విభిన్న ప్రాతినిధ్యాన్ని నిర్ధారించడానికి కమ్యూనిటీ వారీగా సీట్ల పంపిణీలో భాగం."
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
    home: moc_te(),
  ));
}

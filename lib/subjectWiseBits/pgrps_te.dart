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

class pgrps_te extends StatefulWidget {
  final String? userIdentifier;

  pgrps_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<pgrps_te> createState() => _pgrps_teState();
}

class _pgrps_teState extends State<pgrps_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//86.ప్రెజర్ గ్రూపులు

    Question(
      questionText: "వారి ఉమ్మడి ప్రయోజనాలను ప్రోత్సహించడం మరియు రక్షించుకోవడం కోసం చురుగ్గా నిర్వహించబడిన వ్యక్తుల సమూహాన్ని వివరించడానికి ఏ పదం ఉపయోగించబడుతుంది?",
      options:["రాజకీయ పార్టీ", "ఒత్తిడి సమూహం", "ఆసక్తి సమూహం", "స్థితుల సమూహం"],
      correctAnswerIndex: 2,
      explanation:"ఒత్తిడి సమూహం' అనే పదాన్ని వారి ఉమ్మడి ప్రయోజనాలను ప్రోత్సహించడం మరియు రక్షించుకోవడం కోసం చురుకుగా నిర్వహించబడే వ్యక్తుల సమూహాన్ని వివరించడానికి ఉపయోగిస్తారు.",
    ),

    Question(
      questionText: "ప్రజా విధానంలో మార్పు తీసుకురావడానికి ఒత్తిడి సమూహాలు ఎలా ప్రయత్నిస్తాయి?",
      options:[
      "ఎన్నికలలో పోటీ చేయడం ద్వారా",
      "రాజకీయ అధికారాన్ని స్వాధీనం చేసుకోవడం ద్వారా",
      "ప్రభుత్వంపై ఒత్తిడి తేవడం ద్వారా",
    "రాజకీయ పార్టీలను ఏర్పాటు చేయడం ద్వారా"
    ],
    correctAnswerIndex: 2,
    explanation:"ప్రభుత్వంపై ఒత్తిడి తీసుకురావడం ద్వారా ప్రభుత్వ విధానంలో మార్పు తీసుకురావడానికి ఒత్తిడి సమూహాలు ప్రయత్నిస్తాయి.",
    ),

    Question(
      questionText: "రాజకీయ పార్టీల నుండి ఒత్తిడి సమూహాలను ఏది వేరు చేస్తుంది?",
      options:[
        "ఒత్తిడి గ్రూపులు ఎన్నికల్లో పోటీ చేస్తాయి.",
        "ఒత్తిడి సమూహాలు రాజకీయ అధికారాన్ని స్వాధీనం చేసుకుంటాయి.",
        "ఒత్తిడి సమూహాలు నిర్దిష్ట సమస్యలపై దృష్టి పెడతాయి, ఎన్నికలు లేదా అధికారం కాదు.",
        "ఒత్తిడి సమూహాలు ప్రజాభిప్రాయాన్ని చట్టవిరుద్ధంగా ప్రభావితం చేస్తాయి."
      ],
      correctAnswerIndex: 2,
      explanation:"ఒత్తిడి సమూహాలు రాజకీయ పార్టీల నుండి విభిన్నంగా ఉంటాయి, ఎందుకంటే అవి నిర్దిష్ట సమస్యలపై దృష్టి పెడతాయి మరియు ఎన్నికల్లో పోటీ చేయవు లేదా రాజకీయ అధికారాన్ని చేజిక్కించుకోవడానికి ప్రయత్నించవు.",
    ),

    Question(
      questionText: "ఓడెగార్డ్ ప్రకారం, ఒత్తిడి సమూహాలు తమ ప్రయోజనాలను భద్రపరచుకోవడానికి ఉపయోగించే మూడు పద్ధతులు ఏమిటి?",
      options:["స్ట్రైక్‌లు, లాబీయింగ్, పబ్లిక్ డిబేటింగ్", "ఎన్నికలు, లాబీయింగ్, ప్రచారం", "అవినీతి, పిటిషన్, ప్రచారం", "హింసాత్మక కార్యకలాపాలు, ఉత్తర ప్రత్యుత్తరాలు, లాబీయింగ్"],
      correctAnswerIndex: 1,
      explanation:"ఓడెగార్డ్ ప్రకారం, ప్రెజర్ గ్రూపులు మూడు పద్ధతులను ఉపయోగిస్తాయి: ఎన్నికల ప్రచారం, లాబీయింగ్ మరియు వారి ప్రయోజనాలను కాపాడుకోవడానికి ప్రచారం చేయడం.",
    ),

    Question(
      questionText: "FICCI మరియు ASSOCHAM వంటి పారిశ్రామిక మరియు వాణిజ్య సంస్థలను ఏ వర్గం ఒత్తిడి సమూహాలు కలిగి ఉన్నాయి?",
      options:["ట్రేడ్ యూనియన్లు", "వ్యవసాయ సమూహాలు", "వ్యాపార సమూహాలు", "వృత్తిపరమైన సంఘాలు"],
      correctAnswerIndex: 2,
      explanation:"FICCI మరియు ASSOCHAMతో సహా వ్యాపార సమూహాలు వ్యాపార సమూహాలుగా పిలవబడే ఒత్తిడి సమూహాల వర్గంలోకి వస్తాయి.",
    ),

    Question(
      questionText: "ఏ ట్రేడ్ యూనియన్ బిజెపికి అనుబంధంగా ఉంది?",
      options:["AITUC", "INTUC", "HMS", "BMS"],
      correctAnswerIndex: 3,
      explanation:"భారతీయ మజ్దూర్ సంఘ్ (BMS) BJPకి అనుబంధంగా ఉంది.",
    ),

    Question(
      questionText: "వ్యవసాయ సమూహాలు దేనికి ప్రాతినిధ్యం వహిస్తాయి?",
      options:["పారిశ్రామిక కార్మికులు", "రైతులు మరియు వ్యవసాయ కార్మిక వర్గం", "వైద్యులు, న్యాయవాదులు, పాత్రికేయులు మరియు ఉపాధ్యాయులు", "విద్యార్థులు"],
      correctAnswerIndex: 1,
      explanation:"వ్యవసాయ సమూహాలు రైతులు మరియు వ్యవసాయ కార్మిక వర్గానికి ప్రాతినిధ్యం వహిస్తాయి.",
    ),

    Question(
      questionText: "భారత రాజకీయాల్లో ముఖ్యమైన పాత్ర పోషిస్తున్న మత సంస్థ ఏది?",
      options:["RSS", "VHP", "జమాత్-ఇ-ఇస్లామీ", "శిరోమణి అకాలీదళ్"],
      correctAnswerIndex: 0,
      explanation:"భారత రాజకీయాల్లో రాష్ట్రీయ స్వయంసేవక్ సంఘ్ (RSS) ఒక ముఖ్యమైన పాత్ర పోషిస్తున్నట్లు పేర్కొన్నారు.",
    ),

    Question(
      questionText: "భారత యూనియన్‌లోని అనేక రాష్ట్రాలలో పోటీ రాజకీయాలకు ఆధారం ఏమిటి?",
      options:["మతం", "కులం", "భాష", "గిరిజన గుర్తింపు"],
      correctAnswerIndex: 1,
      explanation:"ఇండియన్ యూనియన్‌లోని అనేక రాష్ట్రాలలో పోటీ రాజకీయాలు కుల వైరుధ్యాలపై ఆధారపడి ఉన్నాయి.",
    ),

    Question(
      questionText: "ఏ జంట కుల పోటీని సూచిస్తుంది?",
      options:["బ్రాహ్మిన్ వర్సెస్ నాన్-బ్రాహ్మిన్", "రాజ్‌పుత్ వర్సెస్ జాట్", "కమ్మ వర్సెస్ రెడ్డి", "కాయస్థ వర్సెస్ రాజ్‌పుత్"],
      correctAnswerIndex: 0,
      explanation:"బ్రాహ్మణ వర్సెస్ నాన్-బ్రాహ్మణ అనేది ఒక కుల పోటీ, ముఖ్యంగా తమిళనాడు మరియు మహారాష్ట్రలో.",
    ),

    Question(
      questionText: "గిరిజన సంస్థల దృష్టి ఏమిటి?",
      options:[
        "భారతదేశంలో సంస్కరణలు",
        "భారతదేశం నుండి వేర్పాటు",
        "మత కార్యకలాపాలు",
        "రాజకీయ లాబీయింగ్"
      ],
      correctAnswerIndex: 1,
      explanation:"ఆదివాసి సంస్థలు వివిధ రాష్ట్రాల్లో చురుకుగా ఉన్నాయి మరియు వారి డిమాండ్లు సంస్కరణల నుండి భారతదేశం నుండి వేర్పాటు వరకు ఉంటాయి.",
    ),

    Question(
        questionText: "రాజకీయ పార్టీలు మరియు ఒత్తిడి సమూహాల ఆవిర్భావానికి కులం, మతం మరియు తెగతో పాటుగా ఏ అంశం కారణం?",
        options:["ఆర్థిక స్థితి", "భాష", "భౌగోళికం", "విద్యా నేపథ్యం"],
        correctAnswerIndex: 1,
        explanation:"పాఠం ప్రకారం, కులం, మతం మరియు తెగలతో పాటు భాష కూడా రాజకీయ పార్టీలు మరియు ఒత్తిడి సమూహాల ఆవిర్భావానికి కారణమైంది."
    ),

    Question(
      questionText: "భావజాలం-ఆధారిత సమూహాలను ఏది వర్ణిస్తుంది?",
      options:[
        "ఆర్థిక ప్రయోజనాలను అనుసరించడం",
        "సాంప్రదాయ పద్ధతులను అనుసరించడం",
        "ఒక కారణం, సూత్రం లేదా కార్యక్రమం కోసం వాదించడం",
        "యాదృచ్ఛిక పురోగతులలో పాల్గొనడం"
      ],
      correctAnswerIndex: 2,
      explanation:"ఐడియాలజీ-ఆధారిత సమూహాలు ఒక నిర్దిష్ట భావజాలాన్ని అనుసరించడానికి ఏర్పడతాయి, అనగా ఒక కారణం, ఒక సూత్రం లేదా ప్రోగ్రామ్.",
    ),

    Question(
      questionText: "ఆల్మండ్ మరియు పావెల్ నిర్వచించినట్లుగా అనోమిక్ ప్రెజర్ గ్రూపులు ఏమి కలిగి ఉంటాయి?",
      options:["చట్టబద్ధమైన రాజకీయ కార్యకలాపాలు", "సాంకేతిక మరియు రాజకీయ వ్యతిరేక ఆలోచన", "శాంతియుత నిరసనలు", "ఆర్థిక అభివృద్ధి"],
      correctAnswerIndex: 1,
      explanation:"అనామిక్ ప్రెజర్ గ్రూపులు ఆల్మండ్ మరియు పావెల్ ప్రకారం, అల్లర్లు, ప్రదర్శనలు మరియు హత్యలు వంటి సమాజం నుండి రాజకీయ వ్యవస్థలోకి యాదృచ్ఛిక పురోగతిని కలిగి ఉంటాయి.",
    ),

    Question(
      questionText: "ఏ సమూహాన్ని అనోమిక్ ప్రెజర్ గ్రూప్‌గా పేర్కొనబడింది?",
      options:["నర్మదా బచావో ఆందోళన్", "జమ్మూ అండ్ కాశ్మీర్ లిబరేషన్ ఫ్రంట్", "గాంధీ పీస్ ఫౌండేషన్", "మహిళా హక్కుల సంస్థలు"],
      correctAnswerIndex: 0,
      explanation:"నర్మదా బచావో ఆందోళన్‌ను పర్యావరణ పరిరక్షణ సమూహంగా పేర్కొన్నారు, అనోమిక్ ప్రెజర్ గ్రూప్ కాదు. అనోమిక్ ప్రెజర్ గ్రూప్‌కు సరైన సమాధానం జమ్మూ అండ్ కాశ్మీర్ లిబరేషన్ ఫ్రంట్ (JKLF).",
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
    home: pgrps_te(),
  ));
}

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

class pserv_te extends StatefulWidget {
  final String? userIdentifier;

  pserv_te({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<pserv_te> createState() => _pserv_teState();
}

class _pserv_teState extends State<pserv_te> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//74.పబ్లిక్ సర్వీసెస్

    Question(
      questionText: "ఆల్-ఇండియా సర్వీసెస్‌లో మూడు వర్గాలు ఏమిటి?",
      options:["ఎగ్జిక్యూటివ్, లెజిస్లేటివ్, జ్యుడీషియల్", "సూపర్ టైమ్ స్కేల్, సీనియర్ స్కేల్, జూనియర్ స్కేల్", "IAS, IPS, IFS", "సెంట్రల్, స్టేట్, యూనియన్ టెరిటరీలు"],
      correctAnswerIndex: 2,
      explanation:"మూడు ఆల్-ఇండియా సర్వీసెస్ IAS (ఇండియన్ అడ్మినిస్ట్రేటివ్ సర్వీస్), IPS (ఇండియన్ పోలీస్ సర్వీస్), మరియు IFS (ఇండియన్ ఫారెస్ట్ సర్వీస్).",
    ),

    Question(
      questionText: "తరచుగా 'అఖిల భారత సేవల పితామహుడు'గా ఎవరు పరిగణిస్తారు?",
      options:["జవహర్‌లాల్ నెహ్రూ", "సర్దార్ వల్లభాయ్ పటేల్", "BR అంబేద్కర్", "ఇందిరా గాంధీ"],
      correctAnswerIndex: 1,
      explanation:"సర్దార్ వల్లభ్ భాయ్ పటేల్ వారి రాజ్యాంగ హోదా కోసం వాదించడంలో అతని పాత్ర కోసం తరచుగా 'అఖిల భారత సేవల పితామహుడు'గా పరిగణించబడతారు.",
    ),

    Question(
      questionText: "ఐపిఎస్ (ఇండియన్ పోలీస్ సర్వీస్) ఏ మంత్రిత్వ శాఖ క్రింద నిర్వహించబడుతుంది మరియు నియంత్రించబడుతుంది?",
      options:["మినిస్ట్రీ ఆఫ్ పర్సనల్, పబ్లిక్ గ్రీవెన్స్ మరియు పెన్షన్స్", "మినిస్ట్రీ ఆఫ్ హోమ్ అఫైర్స్", "మినిస్ట్రీ ఆఫ్ ఎన్విరాన్‌మెంట్, ఫారెస్ట్ అండ్ క్లైమేట్ చేంజ్", "మినిస్ట్రీ ఆఫ్ డిఫెన్స్"],
      correctAnswerIndex: 1,
      explanation:"IPS (ఇండియన్ పోలీస్ సర్వీస్) హోం వ్యవహారాల మంత్రిత్వ శాఖచే నిర్వహించబడుతుంది మరియు నియంత్రించబడుతుంది.",
    ),

    Question(
      questionText: "అఖిల భారత సర్వీసుల కోసం ప్రస్తుతం ఎన్ని రాష్ట్ర కేడర్‌లు ఉన్నాయి?",
      options:["పది", "పదిహేను", "ఇరవై ఆరు", "ముప్పై"],
      correctAnswerIndex: 2,
      explanation:"ప్రస్తుతం, ఆల్-ఇండియా సర్వీసెస్ కోసం ఇరవై ఆరు రాష్ట్ర కేడర్‌లు ఉన్నాయి.",
    ),
    Question(
      questionText: "స్వాతంత్ర్యానికి ముందు, కేంద్ర సర్వీసులు ఎలా వర్గీకరించబడ్డాయి?",
      options:[
        "గ్రూప్ A, గ్రూప్ B, గ్రూప్ C, మరియు గ్రూప్ D",
        "క్లాస్ I, క్లాస్ II, సబార్డినేట్ మరియు ఇన్ఫీరియర్",
        "గెజిటెడ్, నాన్-గెజిటెడ్, క్లరికల్ మరియు మాన్యువల్",
        "మొదటి వేతన సంఘం, రెండవ వేతన సంఘం, మూడవ వేతన సంఘం మరియు నాల్గవ వేతన సంఘం"
      ],
      correctAnswerIndex: 1,
      explanation:"స్వాతంత్ర్యానికి ముందు, కేంద్ర సర్వీసులు క్లాస్ I, క్లాస్ II, సబార్డినేట్ మరియు ఇన్ఫీరియర్ సర్వీసులుగా వర్గీకరించబడ్డాయి.",
    ),

    Question(
      questionText: "స్వాతంత్ర్యం తర్వాత 'సబార్డినేట్ అండ్ ఇన్‌ఫీరియర్ సర్వీసెస్' అనే నామకరణాన్ని భర్తీ చేయడానికి దారితీసింది ఏమిటి?",
      options:[
        "మొదటి వేతన సంఘం సిఫార్సు",
        "రెండవ వేతన సంఘం సిఫార్సు",
        "మూడవ వేతన సంఘం సిఫార్సు",
        "నాల్గవ వేతన సంఘం సిఫార్సు"
      ],
      correctAnswerIndex: 0,
      explanation:"సబార్డినేట్ మరియు ఇన్‌ఫీరియర్ సర్వీసెస్' అనే నామకరణం మొదటి వేతన సంఘం (1946-1947) సిఫార్సు ఆధారంగా క్లాస్ III మరియు క్లాస్ IV సర్వీసెస్‌తో భర్తీ చేయబడింది.",
    ),

    Question(
      questionText: "ఇప్పటికి, కేంద్ర సేవలు ఎలా వర్గీకరించబడ్డాయి?",
      options:[
        "క్లాస్ I, క్లాస్ II, క్లాస్ III మరియు క్లాస్ IV",
        "గ్రూప్ A, గ్రూప్ B, గ్రూప్ C, మరియు గ్రూప్ D",
        "గెజిటెడ్, నాన్-గెజిటెడ్, క్లరికల్ మరియు మాన్యువల్",
        "మొదటి వేతన సంఘం, రెండవ వేతన సంఘం, మూడవ వేతన సంఘం మరియు నాల్గవ వేతన సంఘం"
      ],
      correctAnswerIndex: 1,
      explanation:"ప్రస్తుతం, సెంట్రల్ సర్వీసెస్ నాలుగు విభాగాలుగా వర్గీకరించబడ్డాయి: గ్రూప్ A, గ్రూప్ B, గ్రూప్ C మరియు గ్రూప్ D.",
    ),

    Question(
      questionText: "ప్రతిష్టలు, హోదా, వేతనం మరియు పారితోషికాల పరంగా ఏ సేవ అత్యుత్తమ కేంద్ర సేవగా పరిగణించబడుతుంది?",
      options:[
        "ఇండియన్ అడ్మినిస్ట్రేటివ్ సర్వీస్ (IAS)",
        "ఇండియన్ పోలీస్ సర్వీస్ (IPS)",
        "ఇండియన్ ఫారిన్ సర్వీస్ (IFS)",
        "ఇండియన్ రెవెన్యూ సర్వీస్ (IRS)"
      ],
      correctAnswerIndex: 2,
      explanation:"ఇండియన్ ఫారిన్ సర్వీస్ (IFS) అనేది ప్రతిష్ట, హోదా, వేతనం మరియు పారితోషికాల పరంగా అగ్రశ్రేణి కేంద్ర సేవ. ఇది స్థానం మరియు పే స్కేల్స్‌లో అఖిల-భారత సేవలతో పోటీపడుతుంది.",
    ),
    Question(
      questionText: "ఆర్టికల్ 309లో పేర్కొన్న విధంగా రిక్రూట్‌మెంట్‌లో ఏమి ఉంటుంది?",
      options:["కేవలం అపాయింట్‌మెంట్", "ఎంపిక మాత్రమే", "అపాయింట్‌మెంట్, ఎంపిక, డిప్యుటేషన్, ప్రమోషన్ మరియు బదిలీ ద్వారా నియామకం", "ప్రమోషన్ మాత్రమే"],
      correctAnswerIndex: 2,
      explanation:"రిక్రూట్‌మెంట్, ఆర్టికల్ 309 ప్రకారం, నియామకం, ఎంపిక, డిప్యుటేషన్, పదోన్నతి మరియు బదిలీ ద్వారా నియామకం వంటి పబ్లిక్ సర్వీస్‌లో ఒక వ్యక్తిని చేర్చుకోవడానికి అందించిన ఏదైనా పద్ధతిని కలిగి ఉంటుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 310 ప్రకారం, రక్షణ సేవలు, కేంద్రం యొక్క పౌర సేవలు మరియు అఖిల భారత సర్వీసుల సభ్యులు ఎవరి సంతోషం సమయంలో పదవిలో ఉంటారు?",
      options:["ప్రధాన మంత్రి", "గవర్నర్", "ప్రెసిడెంట్", "పార్లమెంట్"],
      correctAnswerIndex: 2,
      explanation:"రక్షణ సేవలు, కేంద్రంలోని పౌర సేవలు మరియు అఖిల భారత సర్వీసుల సభ్యులు రాష్ట్రపతి ఆమోదం సమయంలో, ఆర్టికల్ 310లో పేర్కొన్నట్లుగా పదవీ బాధ్యతలు నిర్వహిస్తారు.",
    ),

    Question(
      questionText: "ఆర్టికల్ 310 ప్రకారం ఆనందంతో తొలగించే సాధారణ నియమానికి మినహాయింపు ఏమిటి?",
      options:["దుష్ప్రవర్తనకు మాత్రమే", "ఒక నేరారోపణపై నేరారోపణ జరిగితే", "పోస్ట్ రద్దు చేయబడితే", "మిలిటరీ పోస్టులకు మాత్రమే"],
      correctAnswerIndex: 2,
      explanation:"కాంట్రాక్ట్ వ్యవధి ముగిసేలోపు పోస్ట్ రద్దు చేయబడినప్పుడు లేదా వ్యక్తి దుష్ప్రవర్తనతో సంబంధం లేని కారణాల వల్ల పోస్ట్‌ను ఖాళీ చేయవలసి వచ్చినప్పుడు ఆర్టికల్ 310 కింద ఆనందంతో తొలగించే సాధారణ నియమానికి మినహాయింపు.",
    ),

    Question(
      questionText: "ఆర్టికల్ 311 ప్రకారం, వారు నియమించబడిన దానికి లోబడి ఉన్న అధికారం ద్వారా ఎవరిని తొలగించలేరు లేదా తొలగించలేరు?",
      options:["రక్షణ సేవల సభ్యులు", "సివిల్ సర్వెంట్లు", "మిలిటరీ పోస్టులను కలిగి ఉన్న వ్యక్తులు", "అఖిల భారత సేవలు"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 311 ఒక సివిల్ సర్వెంట్‌ను తొలగించడం లేదా వారు నియమించబడిన అధికారానికి లోబడి ఉన్న అధికారం ద్వారా తొలగించడం సాధ్యం కాదని రక్షణ కల్పిస్తుంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 311 ప్రకారం రెండవ రక్షణ (విచారణ నిర్వహించడం) ఏ సందర్భాలలో అందుబాటులో లేదు?",
      options:["నేర ఆరోపణలకు మాత్రమే", "అధికారం అసాధ్యమని భావిస్తే", "రాష్ట్ర భద్రత దృష్ట్యా", "పైవన్నీ"],
      correctAnswerIndex: 3,
      explanation:"ఒక సివిల్ సర్వెంట్ తొలగించబడిన లేదా నేరారోపణల ఆధారంగా తొలగించబడిన సందర్భాల్లో, లేదా అధికారం అసాధ్యమని భావించినట్లయితే లేదా రాష్ట్ర భద్రత దృష్ట్యా రెండవ రక్షణ (విచారణ నిర్వహించడం) అందుబాటులో ఉండదు.",
    ),

    Question(
      questionText: "ఆర్టికల్ 312 ప్రకారం, అఖిల భారత సేవలకు సంబంధించి పార్లమెంటుకు ఏ అధికారం ఉంది?",
      options:["సృష్టి మాత్రమే", "రిక్రూట్‌మెంట్ నియంత్రణ మాత్రమే", "సేవా షరతుల సృష్టి మరియు నియంత్రణ రెండూ", "పైన ఏదీ కాదు"],
      correctAnswerIndex: 2,
      explanation:"ఆర్టికల్ 312 ప్రకారం కొత్త ఆల్-ఇండియా సేవలను సృష్టించడానికి మరియు అఖిల భారత సేవలకు నియమించబడిన వ్యక్తుల నియామకం మరియు సేవా షరతులను నియంత్రించడానికి పార్లమెంటుకు అధికారం ఉంది.",
    ),

    Question(
      questionText: "ఆర్టికల్ 312 ప్రకారం కొత్త అఖిల భారత సర్వీసుల సృష్టికి రాజ్యసభలో ఏ తీర్మానం అవసరం?",
      options:["సాధారణ మెజారిటీ", "మూడింట రెండు వంతుల మెజారిటీ", "సంపూర్ణ మెజారిటీ", "మెజారిటీ ఆఫ్ ది క్యాబినెట్"],
      correctAnswerIndex: 1,
      explanation:"కొత్త ఆల్-ఇండియా సర్వీసుల సృష్టి కోసం, ఆర్టికల్ 312 ప్రకారం రాజ్యసభలో తీర్మానానికి హాజరైన మరియు ఓటింగ్ చేస్తున్న మూడింట రెండు వంతుల సభ్యులు మద్దతు ఇవ్వాలి.",
    ),

    Question(
      questionText: "ఆర్టికల్ 312 ప్రకారం, ఏ సేవలు పార్లమెంటుచే సృష్టించబడిన సేవలుగా పరిగణించబడతాయి?",
      options:["1976 తర్వాత సృష్టించబడిన సేవలు", "రాజ్యాంగం ప్రారంభమైనప్పుడు తెలిసిన సేవలు", "రాష్ట్రపతి సృష్టించిన సేవలు", "కేంద్రంలోని అన్ని సేవలు"],
      correctAnswerIndex: 1,
      explanation:"రాజ్యాంగం ప్రారంభంలో తెలిసిన సేవలు (ఇండియన్ అడ్మినిస్ట్రేటివ్ సర్వీస్ మరియు ఇండియన్ పోలీస్ సర్వీస్) ఆర్టికల్ 312 ప్రకారం పార్లమెంట్ రూపొందించిన సేవలుగా పరిగణించబడతాయి.",
    ),

    Question(
      questionText: "అఖిల భారత న్యాయ సేవ యొక్క సృష్టిపై ఆర్టికల్ 312 విధించిన పరిమితి ఏమిటి?",
      options:["సృష్టికి అనుమతి లేదు", "జిల్లా న్యాయమూర్తి కంటే తక్కువ పోస్ట్ లేదు", "రక్షణ సిబ్బందికి సేవ లేదు", "న్యాయవ్యవస్థకు రిక్రూట్‌మెంట్ లేదు"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 312 ప్రకారం, అఖిల భారత న్యాయ సేవలో జిల్లా జడ్జి కంటే తక్కువ స్థాయి ఏదీ ఉండకూడదు.",
    ),

    Question(
      questionText: "1950కి ముందు భారతదేశంలో క్రౌన్ యొక్క సివిల్ సర్వీస్‌కి నియమితులైన వ్యక్తుల సర్వీస్ షరతులను మార్చడానికి లేదా రద్దు చేయడానికి పార్లమెంటుకు అధికారాలను ఏ ఆర్టికల్ అందిస్తుంది?",
      options:["ఆర్టికల్ 311", "ఆర్టికల్ 312A", "ఆర్టికల్ 313", "ఆర్టికల్ 314"],
      correctAnswerIndex: 1,
      explanation:"ఆర్టికల్ 312A 1950కి ముందు భారతదేశంలో క్రౌన్ యొక్క పౌర సేవకు నియమితులైన వ్యక్తుల సేవా షరతులను మార్చడానికి లేదా రద్దు చేయడానికి పార్లమెంటుకు అధికారాలను అందిస్తుంది.",
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
    home: pserv_te(),
  ));
}

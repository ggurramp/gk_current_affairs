import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async package

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

class World_capitals_currencies_Europe extends StatefulWidget {
  final String? userIdentifier;

  World_capitals_currencies_Europe({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<World_capitals_currencies_Europe> createState() => _World_capitals_currencies_EuropeState();
}

class _World_capitals_currencies_EuropeState extends State<World_capitals_currencies_Europe> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What are the capital and currency of Albania?",
      options: ["Tirana & Lek", "Durrës & Euro", "Vlorë & Dinar", "Shkodër & Drachma"],
      correctAnswerIndex: 0,
      explanation: "The capital of Albania is Tirana and its currency is the Lek.",
    ),

    Question(
      questionText: "What are the capital and currency of Austria?",
      options: ["Linz & Shilling", "Salzburg & Krone", "Vienna & Euro", "Graz & Franc"],
      correctAnswerIndex: 2,
      explanation: "The capital of Austria is Vienna and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Belarus?",
      options: ["Gomel & Ruble", "Mogilev & Euro", "Vitebsk & Koruna", "Minsk & Belarusian ruble"],
      correctAnswerIndex: 3,
      explanation: "The capital of Belarus is Minsk and its currency is the Belarusian ruble.",
    ),

    Question(
      questionText: "What are the capital and currency of Belgium?",
      options: ["Bruges & Franc", "Ghent & Pound", "Antwerp & Drachma", "Brussels & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Belgium is Brussels and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Bosnia and Herzegovina?",
      options: ["Mostar & Convertible mark", "Tuzla & Dinar", "Sarajevo & Bosnia and Herzegovina convertible mark", "Banja Luka & Franc"],
      correctAnswerIndex: 2,
      explanation: "The capital of Bosnia and Herzegovina is Sarajevo and its currency is the Bosnia and Herzegovina convertible mark.",
    ),

    Question(
      questionText: "What are the capital and currency of Bulgaria?",
      options: ["Plovdiv & Lev", "Burgas & Dinar", "Varna & Euro", "Sofia & Bulgarian lev"],
      correctAnswerIndex: 3,
      explanation: "The capital of Bulgaria is Sofia and its currency is the Bulgarian lev.",
    ),
    Question(
      questionText: "What are the capital and currency of Croatia?",
      options: ["Zagreb & Croatian kuna", "Split & Euro", "Rijeka & Dinar", "Dubrovnik & Pound"],
      correctAnswerIndex: 0,
      explanation: "The capital of Croatia is Zagreb and its currency is the Croatian kuna.",
    ),

    Question(
      questionText: "What are the capital and currency of Czech Republic?",
      options: ["Brno & Koruna", "Ostrava & Euro", "Plzeň & Zloty", "Prague & Czech koruna"],
      correctAnswerIndex: 3,
      explanation: "The capital of the Czech Republic is Prague and its currency is the Czech koruna.",
    ),

    Question(
      questionText: "What are the capital and currency of Denmark?",
      options: ["Copenhagen & Danish krone", "Aarhus & Euro", "Odense & Dinar", "Aalborg & Pound"],
      correctAnswerIndex: 0,
      explanation: "The capital of Denmark is Copenhagen and its currency is the Danish krone.",
    ),

    Question(
      questionText: "What are the capital and currency of Estonia?",
      options: ["Tartu & Kroon", "Pärnu & Lira", "Narva & Pound", "Tallinn & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Estonia is Tallinn and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Finland?",
      options: ["Tampere & Markka", "Turku & Franc", "Oulu & Pound", "Helsinki & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Finland is Helsinki and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of France?",
      options: ["Lyon & Franc", "Marseille & Lira", "Toulouse & Drachma", "Paris & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of France is Paris and its currency is the Euro.",
    ),
    Question(
      questionText: "What are the capital and currency of Germany?",
      options: ["Munich & Deutsche Mark", "Frankfurt & Dinar", "Berlin & Euro", "Hamburg & Franc"],
      correctAnswerIndex: 2,
      explanation: "The capital of Germany is Berlin and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Greece?",
      options: ["Thessaloniki & Drachma", "Patras & Lira", "Heraklion & Franc", "Athens & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Greece is Athens and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Hungary?",
      options: ["Debrecen & Forint", "Szeged & Koruna", "Pécs & Zloty", "Budapest & Hungarian forint"],
      correctAnswerIndex: 3,
      explanation: "The capital of Hungary is Budapest and its currency is the Hungarian forint.",
    ),

    Question(
      questionText: "What are the capital and currency of Iceland?",
      options: ["Akureyri & Krona", "Kópavogur & Dinar", "Reykjavik & Icelandic króna", "Hafnarfjörður & Euro"],
      correctAnswerIndex: 2,
      explanation: "The capital of Iceland is Reykjavik and its currency is the Icelandic króna.",
    ),

    Question(
      questionText: "What are the capital and currency of Ireland?",
      options: ["Limerick & Pound", "Galway & Franc", "Cork & Drachma", "Dublin & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Ireland is Dublin and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Italy?",
      options: ["Milan & Lira", "Rome & Euro", "Naples & Franc", "Turin & Krona"],
      correctAnswerIndex: 1,
      explanation: "The capital of Italy is Rome and its currency is the Euro.",
    ),
    Question(
      questionText: "What are the capital and currency of Latvia?",
      options: ["Daugavpils & Lats", "Riga & Euro", "Jelgava & Lira", "Liepāja & Drachma"],
      correctAnswerIndex: 1,
      explanation: "The capital of Latvia is Riga and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Lithuania?",
      options: ["Kaunas & Litas", "Vilnius & Euro", "Klaipėda & Franc", "Šiauliai & Zloty"],
      correctAnswerIndex: 1,
      explanation: "The capital of Lithuania is Vilnius and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Luxembourg?",
      options: ["Esch-sur-Alzette & Franc", "Dudelange & Dinar", "Luxembourg & Euro", "Schifflange & Koruna"],
      correctAnswerIndex: 2,
      explanation: "The capital of Luxembourg is Luxembourg and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Macedonia (North Macedonia)?",
      options: ["Ohrid & Macedonian denar", "Bitola & Euro", "Skopje & Macedonian denar", "Prilep & Lira"],
      correctAnswerIndex: 2,
      explanation: "The capital of North Macedonia is Skopje and its currency is the Macedonian denar.",
    ),

    Question(
      questionText: "What are the capital and currency of Malta?",
      options: ["Victoria & Lira", "Mdina & Franc", "Valletta & Euro", "Birgu & Dinar"],
      correctAnswerIndex: 2,
      explanation: "The capital of Malta is Valletta and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Moldova?",
      options: ["Bălți & Leu", "Tiraspol & Transnistrian ruble", "Chișinău & Moldovan leu", "Bender & Euro"],
      correctAnswerIndex: 2,
      explanation: "The capital of Moldova is Chișinău and its currency is the Moldovan leu.",
    ),
    Question(
      questionText: "What are the capital and currency of Monaco?",
      options: ["Monte Carlo & Franc", "Monaco & Euro", "La Condamine & Drachma", "Fontvieille & Lira"],
      correctAnswerIndex: 1,
      explanation: "The capital of Monaco is Monaco and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Montenegro?",
      options: ["Podgorica & Euro", "Nikšić & Dinar", "Budva & Franc", "Kotor & Drachma"],
      correctAnswerIndex: 0,
      explanation: "The capital of Montenegro is Podgorica and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Netherlands?",
      options: ["Rotterdam & Guilder", "Utrecht & Franc", "Amsterdam & Euro", "The Hague & Pound"],
      correctAnswerIndex: 2,
      explanation: "The capital of Netherlands is Amsterdam and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Norway?",
      options: ["Bergen & Krone", "Trondheim & Dinar", "Stavanger & Franc", "Oslo & Norwegian krone"],
      correctAnswerIndex: 3,
      explanation: "The capital of Norway is Oslo and its currency is the Norwegian krone.",
    ),

    Question(
      questionText: "What are the capital and currency of Poland?",
      options: ["Kraków & Złoty", "Wrocław & Euro", "Poznań & Dinar", "Warsaw & Polish złoty"],
      correctAnswerIndex: 3,
      explanation: "The capital of Poland is Warsaw and its currency is the Polish złoty.",
    ),

    Question(
      questionText: "What are the capital and currency of Portugal?",
      options: ["Porto & Escudo", "Lisbon & Euro", "Vila Nova de Gaia & Franc", "Amadora & Pound"],
      correctAnswerIndex: 1,
      explanation: "The capital of Portugal is Lisbon and its currency is the Euro.",
    ),
    Question(
      questionText: "What are the capital and currency of Romania?",
      options: ["Cluj-Napoca & Leu", "Brașov & Franc", "Iași & Euro", "Bucharest & Romanian leu"],
      correctAnswerIndex: 3,
      explanation: "The capital of Romania is Bucharest and its currency is the Romanian leu.",
    ),

    Question(
      questionText: "What are the capital and currency of Russia?",
      options: ["Saint Petersburg & Rouble", "Novosibirsk & Euro", "Yekaterinburg & Dinar", "Moscow & Russian rouble"],
      correctAnswerIndex: 3,
      explanation: "The capital of Russia is Moscow and its currency is the Russian rouble.",
    ),

    Question(
      questionText: "What are the capital and currency of San Marino?",
      options: ["Serravalle & Lira", "Borgo Maggiore & Dinar", "City of San Marino & Euro", "Domagnano & Franc"],
      correctAnswerIndex: 2,
      explanation: "The capital of San Marino is City of San Marino and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Serbia?",
      options: ["Novi Sad & Serbian dinar", "Niš & Euro", "Kragujevac & Franc", "Belgrade & Serbian dinar"],
      correctAnswerIndex: 3,
      explanation: "The capital of Serbia is Belgrade and its currency is the Serbian dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Slovakia?",
      options: ["Košice & Slovak koruna", "Prešov & Euro", "Žilina & Franc", "Bratislava & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Slovakia is Bratislava and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Slovenia?",
      options: ["Maribor & Tolar", "Kranj & Euro", "Celje & Franc", "Ljubljana & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Slovenia is Ljubljana and its currency is the Euro.",
    ),
    Question(
      questionText: "What are the capital and currency of Spain?",
      options: ["Barcelona & Peseta", "Valencia & Euro", "Seville & Franc", "Madrid & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Spain is Madrid and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Sweden?",
      options: ["Malmö & Swedish krona", "Gothenburg & Euro", "Stockholm & Swedish krona", "Uppsala & Pound"],
      correctAnswerIndex: 2,
      explanation: "The capital of Sweden is Stockholm and its currency is the Swedish krona.",
    ),

    Question(
      questionText: "What are the capital and currency of Switzerland?",
      options: ["Geneva & Franc", "Zurich & Euro", "Basel & Drachma", "Bern & Swiss franc"],
      correctAnswerIndex: 3,
      explanation: "The capital of Switzerland is Bern and its currency is the Swiss franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Turkey?",
      options: ["Istanbul & Lira", "Ankara & Turkish lira", "Izmir & Drachma", "Bursa & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Turkey is Ankara and its currency is the Turkish lira.",
    ),

    Question(
      questionText: "What are the capital and currency of Ukraine?",
      options: ["Kharkiv & Hryvnia", "Odessa & Euro", "Dnipro & Drachma", "Kiev & Ukrainian hryvnia"],
      correctAnswerIndex: 3,
      explanation: "The capital of Ukraine is Kiev and its currency is the Ukrainian hryvnia.",
    ),

    Question(
      questionText: "What are the capital and currency of United Kingdom?",
      options: ["Birmingham & Pound", "Manchester & Euro", "London & British pound", "Liverpool & Franc"],
      correctAnswerIndex: 2,
      explanation: "The capital of the United Kingdom is London and its currency is the British pound.",
    ),
    Question(
      questionText: "What are the capital and currency of Kosovo?",
      options: ["Mitrovica & Euro", "Gjakova & Franc", "Peć & Lira", "Pristina & Euro"],
      correctAnswerIndex: 3,
      explanation: "The capital of Kosovo is Pristina and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Liechtenstein?",
      options: ["Schaan & Swiss franc", "Vaduz & Swiss franc", "Balzers & Euro", "Eschen & Lira"],
      correctAnswerIndex: 1,
      explanation: "The capital of Liechtenstein is Vaduz and its currency is the Swiss franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Vatican City?",
      options: ["Rome & Lira", "Vatican City & Vatican euro", "Saint Peter & Franc", "San Marino & Euro"],
      correctAnswerIndex: 1,
      explanation: "The capital of Vatican City is Vatican City and its currency is the Vatican euro.",
    ),

  ];
  int _elapsedTimeInSeconds = 0; // Elapsed exam time in seconds

  late Timer _examTimer;

  @override
  void initState() {
    super.initState();
    _loadLikedData();
    //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
    _startpresidentsOfIndiaTimer();
  }
  void _startpresidentsOfIndiaTimer() {
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
    home: World_capitals_currencies_Europe(),
  ));
}

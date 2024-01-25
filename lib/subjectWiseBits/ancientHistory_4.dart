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

class ancientHistory_4 extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_4({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_4> createState() => _ancientHistory_4State();
}

class _ancientHistory_4State extends State<ancientHistory_4> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "According to the latest excavations, Manda is the ______ site of the Indus civilization?",
      options: ["Easternmost", "Westernmost", "Northernmost", "Southernmost"],
      correctAnswerIndex: 2,
      explanation: "According to the latest excavations, Manda is identified as the northernmost site of the Indus civilization.",
    ),

    Question(
      questionText: "Which civilization was undoubtedly the largest in extent among the Bronze age civilizations?",
      options: ["Mesopotamian civilization", "Roman civilization", "The Harappan civilization", "Egyptian civilization"],
      correctAnswerIndex: 2,
      explanation: "The Harappan civilization was undoubtedly the largest in extent among the Bronze age civilizations.",
    ),

    Question(
      questionText: "Who was the ruler of Taxila when Alexander's army crossed the Indus in 326 BC?",
      options: ["Abhisara", "None of the above", "Porus (Pura)", "Ambhi"],
      correctAnswerIndex: 3,
      explanation: "The ruler of Taxila when Alexander's army crossed the Indus in 326 BC was Ambhi.",
    ),

    Question(
      questionText: "Vallabhacharya was the most distinguished preacher of the",
      options: ["Balaram Cult", "Krishna Cult", "Shaiva Cult", "Shakti Cult"],
      correctAnswerIndex: 1,
      explanation: "Vallabhacharya was the most distinguished preacher of the Krishna Cult.",
    ),

    Question(
      questionText: "Which of the following kingdoms was referred to as 'Ruhmi' by the Arab merchant Sulaiman?",
      options: ["Pala", "Pratihara", "Rashtrakuta", "Chola"],
      correctAnswerIndex: 0,
      explanation: "The kingdom referred to as 'Ruhmi' by the Arab merchant Sulaiman was Pala.",
    ),

    Question(
      questionText: "Who was the Bacterian King that invaded India in about 182 BC and wrested a considerable part of the North-West?",
      options: ["Philadelphus", "Gondophernes", "Demetrius", "Antigonus"],
      correctAnswerIndex: 2,
      explanation: "Demetrius was the Bacterian King that invaded India in about 182 BC and wrested a considerable part of the North-West.",
    ),

    Question(
      questionText: "Name the class which is conspicuous by its absence from the list of seven classes given by Megasthenes",
      options: ["Cultivators", "Philosophers", "Artisans", "Traders"],
      correctAnswerIndex: 3,
      explanation: "Megasthenes' list of seven classes does not include the class of Traders.",
    ),

    Question(
      questionText: "According to 'Rajatarangini' Ashoka's favorite deity was",
      options: ["Vasudeva", "Buddha", "Siva", "Vishnu"],
      correctAnswerIndex: 2,
      explanation: "According to 'Rajatarangini', Ashoka's favorite deity was Siva.",
    ),

    Question(
      questionText: "Which one of the following types of Harappan pottery is said to be the earliest example of its kind in the world?",
      options: ["Perforated", "Knobbed", "Polychrome", "Glazed"],
      correctAnswerIndex: 3,
      explanation: "The earliest example of its kind in the world is the Glazed Harappan pottery.",
    ),

    Question(
      questionText: "Which period of Indian history has been designated by Romila Thapar as 'Threshold Times'?",
      options: ["CE 300-CE 800", "CE 600-CE 1300", "BCE 200-300 CE", "CE 300-CE 600"],
      correctAnswerIndex: 1,
      explanation: "Romila Thapar designates the period from CE 600 to CE 1300 as 'Threshold Times' in Indian history.",
    ),

    Question(
      questionText: "The name of our motherland 'Bharata' was first mentioned in",
      options: ["Markendaya Purana", "Matsya Purana", "Vishnu Purana", "Vayu Purana"],
      correctAnswerIndex: 2,
      explanation: "The name 'Bharata' for our motherland was first mentioned in the Vishnu Purana.",
    ),

    Question(
      questionText: "Kontakasodhanas of the Mauryan period was",
      options: ["Criminal court", "Police stations", "Royal treasuries", "Civil courts"],
      correctAnswerIndex: 0,
      explanation: "Kontakasodhanas of the Mauryan period referred to Criminal courts.",
    ),

    Question(
      questionText: "Which of the following is the main reason for the development of towns in the Harappan period?",
      options: ["Growth of Trade and commerce", "Increase in Agrarian surplus", "Development of Science and technology", "Development of Arts and crafts"],
      correctAnswerIndex: 1,
      explanation: "The main reason for the development of towns in the Harappan period was the increase in Agrarian surplus.",
    ),

    Question(
      questionText: "At which of the following Ports have a sizable Roman settlement and a Roman factory have been discovered?",
      options: ["Arikamedu", "Kaveripattanam", "Tamralipti", "Muziris or Mushri"],
      correctAnswerIndex: 0,
      explanation: "A sizable Roman settlement and a Roman factory have been discovered at the port of Arikamedu.",
    ),

    Question(
      questionText: "The Gold coins of the Gupta dynasty were known as",
      options: ["Muhara", "Varaha", "Sataman", "Dinara"],
      correctAnswerIndex: 3,
      explanation: "The Gold coins of the Gupta dynasty were known as Dinara.",
    ),

    Question(
      questionText: "Seaborne trade between India and Rome received great impetus during the reign of Roman Emperor",
      options: ["Trajan", "Nero", "Augustus", "Claudius"],
      correctAnswerIndex: 1,
      explanation: "Seaborne trade between India and Rome received great impetus during the reign of the Roman Emperor Nero.",
    ),

    Question(
      questionText: "Which of the following statements is incorrect?",
      options: ["Chandragupta was known to the Greeks as 'Amitroehates', the destroyer of foes", "Chandragupta is said to have died of slow starvation in south India", "Kautilya was Chandragupta's guide and mentor", "Chandragupta was succeeded by his son Bindusara"],
      correctAnswerIndex: 0,
      explanation: "Chandragupta was not known to the Greeks as 'Amitroehates', the destroyer of foes. This statement is incorrect.",
    ),

    Question(
      questionText: "Which archaeologist has recently contested the identification of an impressive brick-built structure at Harappa as a 'Granary'?",
      options: ["Raymond Allchin", "J.M. Kenoyer", "R.E.M. Wheeler", "Bridget Allchin"],
      correctAnswerIndex: 1,
      explanation: "Archaeologist J.M. Kenoyer has recently contested the identification of an impressive brick-built structure at Harappa as a 'Granary'.",
    ),

    Question(
      questionText: "We know about the Bactrian Greeks only from",
      options: ["Manuscripts", "Relics", "Inscriptions", "Coins"],
      correctAnswerIndex: 3,
      explanation: "Our knowledge about the Bactrian Greeks comes primarily from Coins.",
    ),

    Question(
      questionText: "Name of which Indian ruler is inseparably associated with the first known International treaty made in Indian history?",
      options: ["Bindusara", "Asoka", "Mahapadma Nanda", "Chandragupta Maurya"],
      correctAnswerIndex: 3,
      explanation: "The name of Chandragupta Maurya is inseparably associated with the first known International treaty made in Indian history.",
    ),
    Question(
      questionText: "With which one of the following is the later foreign immigrants like Hunas, who came after the fall of Imperial Guptas, identified?",
      options: ["Rajputs", "Mlechchas", "Kshatriyas", "Fallen Kshatriyas"],
      correctAnswerIndex: 0,
      explanation: "The later foreign immigrants like Hunas, who came after the fall of Imperial Guptas, are identified with Rajputs.",
    ),

    Question(
      questionText: "The language of the Jaina religious text was",
      options: ["Prakrit", "Bengali", "Sanskrit", "Pali"],
      correctAnswerIndex: 0,
      explanation: "The language of the Jaina religious text was Prakrit.",
    ),

    Question(
      questionText: "The Harappan bricks were mainly",
      options: ["Hand-made", "Cut with the help of a chisel", "Sawn with the help of a saw-like instrument", "Made in an open mould"],
      correctAnswerIndex: 3,
      explanation: "The Harappan bricks were mainly made in an open mould.",
    ),

    Question(
      questionText: "Who considered the Harappan crafts 'technically the peer of the rest' among products of the Bronze Age?",
      options: ["R.S. Bisht", "Asco Parpola", "Gordon Childe", "Shereen Ratnagar"],
      correctAnswerIndex: 3,
      explanation: "Shereen Ratnagar considered the Harappan crafts 'technically the peer of the rest' among products of the Bronze Age.",
    ),

    Question(
      questionText: "Who introduced Gold Coins in India?",
      options: ["The Greeks", "The Cholas", "The Maurya", "The Kushanas"],
      correctAnswerIndex: 3,
      explanation: "Gold Coins were introduced in India by The Kushanas.",
    ),

    Question(
      questionText: "The subject matter of Hamzahnamah is",
      options: ["Music", "Philosophy", "Architecture", "Painting"],
      correctAnswerIndex: 3,
      explanation: "The subject matter of Hamzahnamah is Painting.",
    ),

    Question(
      questionText: "Which of the following statements is not correct?",
      options: [
        "The Rigveda is a monolithic text.",
        "The Rigveda is not a monolithic text and consists of several literary layers",
        "The Rigveda consists of 1028 hymns (Suktas).",
        "The Rigveda is divided into ten books (mandalas) of unequal sizes"
      ],
      correctAnswerIndex: 0,
      explanation: "The statement 'The Rigveda is a monolithic text' is not correct. The Rigveda consists of several literary layers.",
    ),

    Question(
      questionText: "Which of the following sources describe the Mauryas as belonging to the Sudra Varna?",
      options: ["Purvas", "European Classical Writers", "Puranas", "Jatakas"],
      correctAnswerIndex: 2,
      explanation: "The Puranas describe the Mauryas as belonging to the Sudra Varna.",
    ),

    Question(
      questionText: "Haribhadra, the famous Buddhist author was at the court of",
      options: ["Devapala", "Dharmapala", "Gopala", "Mahipala"],
      correctAnswerIndex: 1,
      explanation: "Haribhadra, the famous Buddhist author, was at the court of Dharmapala.",
    ),

    Question(
      questionText: "Who was Minandar?",
      options: ["A Saka King", "None of the above", "A Parthian King", "A Bactrian Greek King"],
      correctAnswerIndex: 3,
      explanation: "Minandar was a Bactrian Greek King.",
    ),

    Question(
      questionText: "Where do we find the three phases, viz. Paleolithic, Mesolithic and Neolithic Cultures in sequence?",
      options: ["Godavari Valley", "Kashmir Valley", "Belan valley", "Krishna Valley"],
      correctAnswerIndex: 2,
      explanation: "The three phases, viz. Paleolithic, Mesolithic, and Neolithic Cultures in sequence are found in Belan valley.",
    ),

    Question(
      questionText: "Which of the following were the main items of export of the Indus people? (i) Gold and Silver (ii) Cotton goods (iii) Terracottas (iv) Seals (v) Pottery Select the answer from the codes below -",
      options: ["i, ii, iv and v", "i, iii and iv", "ii, iii and v", "All of them"],
      correctAnswerIndex: 2,
      explanation: "The main items of export of the Indus people were Cotton goods, Terracottas, and Pottery.",
    ),

    Question(
      questionText: "Which of the following areas were viewed by the later Vedic authors as impure and far away from the heartland of the Vedic culture?",
      options: ["Vanga (in the Ganga delta)", "Magadha (Southern Bihar)", "Anga (Eastern Bihar)", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The later Vedic authors viewed Vanga, Magadha, and Anga as impure and far away from the heartland of the Vedic culture.",
    ),

    Question(
      questionText: "Which Rigvedic river is known as Ravi and also as Iravati?",
      options: ["Parushni", "Sutudri", "Vitasta", "Asikni"],
      correctAnswerIndex: 0,
      explanation: "The Rigvedic river known as Ravi is also called Iravati.",
    ),

    Question(
      questionText: "Which one of the following was the meeting ground for the Brahmanical and devotional religious levels?",
      options: ["Ghatikas", "Samas", "Maths", "Temples"],
      correctAnswerIndex: 2,
      explanation: "Maths was the meeting ground for the Brahmanical and devotional religious levels.",
    ),

    Question(
      questionText: "Which of the following Rig Vedic Gods is said to be the upholder of the Rita or Cosmic Order?",
      options: ["Varuna", "Soma", "Indra", "Agni"],
      correctAnswerIndex: 0,
      explanation: "Varuna is said to be the upholder of the Rita or Cosmic Order in Rig Vedic Gods.",
    ),

    Question(
      questionText: "Who among the following dynasties were the first to transfer all sources of revenue to the Brahmans?",
      options: ["Pallavas", "Chalukyas", "Vakatakas", "Guptas"],
      correctAnswerIndex: 2,
      explanation: "The Vakatakas were the first to transfer all sources of revenue to the Brahmans.",
    ),

    Question(
      questionText: "Name the chief of the Rigvedic Bharata tribe who fought against a confederacy of ten tribes (in the battle of 10 kings)",
      options: ["Atri", "Gritsamada", "Sudas", "Divodasa"],
      correctAnswerIndex: 2,
      explanation: "Sudas, the chief of the Rigvedic Bharata tribe, fought against a confederacy of ten tribes in the battle of 10 kings.",
    ),
    Question(
      questionText: "Who among the following archeologists has been claiming that he was successfully deciphered the Indus script, though others have not accepted the claim?",
      options: ["K.M. Srivastava", "S.R. Rao", "MEM Wheeler", "Gordon Childe"],
      correctAnswerIndex: 1,
      explanation: "S.R. Rao has been claiming that he successfully deciphered the Indus script, though others have not accepted the claim.",
    ),

    Question(
      questionText: "The history of ancient Indian trade rightly begins from the ________ period.",
      options: ["Maurya", "Kushana", "Harappan", "Later Vedic"],
      correctAnswerIndex: 2,
      explanation: "The history of ancient Indian trade rightly begins from the Harappan period.",
    ),

    Question(
      questionText: "Which of the following was the most prominent monarchical Maha-Janapadas, during the age of the Buddha?",
      options: ["Vajjis or Vrijis", "Avanti and Magadh", "Kosal and Vatsa", "All listed in B and C"],
      correctAnswerIndex: 3,
      explanation: "During the age of the Buddha, the most prominent monarchical Maha-Janapadas were Avanti and Magadh (listed in B) and Kosal and Vatsa (listed in C).",
    ),

    Question(
      questionText: "Kalidasa's work include (i) Abhigyana Sakuntalam (ii) Meghadootam (iii) Raghuvamsa (iv) Malavikagnimitram (v) Ritusamhara (vi) Kumara Sambhava Select the answer from the codes below -",
      options: ["i, ii, iv, v and vi", "i, iii, iv and v", "i, ii, iii and iv", "All of them"],
      correctAnswerIndex: 3,
      explanation: "Kalidasa's works include Abhigyana Sakuntalam, Meghadootam, Raghuvamsa, Malavikagnimitram, Ritusamhara, and Kumara Sambhava.",
    ),

    Question(
      questionText: "Which of the following is not a principal tool of the Early Stone Age?",
      options: ["Cleaver", "Chopper", "Scrapper", "Handaxe"],
      correctAnswerIndex: 2,
      explanation: "Scrapper is not a principal tool of the Early Stone Age.",
    ),

    Question(
      questionText: "The earliest reference to the division of society into four strata occurs in which of the following texts?",
      options: ["Kathopanishada", "Manu Smriti", "The Purusha-sukta of the Rig Veda Samhita", "Yajur Veda Samhita"],
      correctAnswerIndex: 2,
      explanation: "The earliest reference to the division of society into four strata occurs in The Purusha-sukta of the Rig Veda Samhita.",
    ),

    Question(
      questionText: "Which one of the following sources states that Srinagar was built by Asoka?",
      options: ["Taranatha's History of Tibet", "Mahavamsa", "Kalahana's Rajatarangini", "Divyavandana"],
      correctAnswerIndex: 2,
      explanation: "Kalahana's Rajatarangini states that Srinagar was built by Asoka.",
    ),

    Question(
      questionText: "Which one of the following tribal assemblies has normally involved in the election of the tribal chief?",
      options: ["Gora", "Vidata", "Samiti", "Sabha"],
      correctAnswerIndex: 2,
      explanation: "The tribal assembly involved in the election of the tribal chief is Samiti.",
    ),

    Question(
      questionText: "By whom was the most significant commentary on the Rigveda composed in the medieval period in the Vijayanagar realm?",
      options: ["Kannada", "Sagarnandin", "Chakrapanidatta", "Sayana"],
      correctAnswerIndex: 3,
      explanation: "The most significant commentary on the Rigveda in the medieval period in the Vijayanagar realm was composed by Sayana.",
    ),

    Question(
      questionText: "Who was the founder of `Gajapati Dynasty' of Orissa?",
      options: ["Prataparudra", "Vidyadhara", "Purushottam", "Kapilendra"],
      correctAnswerIndex: 3,
      explanation: "The founder of the 'Gajapati Dynasty' of Orissa was Kapilendra.",
    ),

    Question(
      questionText: "Navanityakam of the Gupta period was a book on",
      options: ["Mathematics", "Astronomy", "Medicine", "Metallurgy"],
      correctAnswerIndex: 2,
      explanation: "Navanityakam of the Gupta period was a book on Medicine.",
    ),

    Question(
      questionText: "Mandsor pillar inscription of the early 6th Century CE belongs to",
      options: ["Yasodharman", "Toramana", "Anantavarma", "Mihirkula"],
      correctAnswerIndex: 0,
      explanation: "The Mandsor pillar inscription of the early 6th Century CE belongs to Yasodharman.",
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
    home: ancientHistory_4(),
  ));
}

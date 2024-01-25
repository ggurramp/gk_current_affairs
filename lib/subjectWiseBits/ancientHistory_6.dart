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

class ancientHistory_6 extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_6({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_6> createState() => _ancientHistory_6State();
}

class _ancientHistory_6State extends State<ancientHistory_6> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "Who is called as the 'Second Ashoka'?",
      options: ["Saniudra Gupta", "Chandra Gupta Maurya", "Kanishka", "Harshavardhana"],
      correctAnswerIndex: 2,
      explanation: "Kanishka is called the 'Second Ashoka'.",
    ),

    Question(
      questionText: "Which metal was first used by the Vedic people?",
      options: ["Silver", "Gold", "Iron", "Copper"],
      correctAnswerIndex: 3,
      explanation: "The Vedic people first used Copper.",
    ),

    Question(
      questionText: "Who built the famous Shiva temple at Ellora?",
      options: ["Rashtrakuta Ruler Krishna I", "Mauryan Emperor Ashoka", "Gupta King Samudra Gupta", "Chalukyan King Pulikeshi II"],
      correctAnswerIndex: 0,
      explanation: "The famous Shiva temple at Ellora was built by Rashtrakuta Ruler Krishna I.",
    ),

    Question(
      questionText: "The paintings of Ajanta depict the stories of",
      options: ["Ramayana", "Mahabharata", "Jataka", "Panchatantra"],
      correctAnswerIndex: 2,
      explanation: "The paintings of Ajanta depict the stories of Jataka.",
    ),

    Question(
      questionText: "Buddha gave his first religious message at",
      options: ["Rajagriha", "Pataliputra", "Gaya", "Sarnath"],
      correctAnswerIndex: 3,
      explanation: "Buddha gave his first religious message at Sarnath.",
    ),

    Question(
      questionText: "The language used to write source materials in ancient time was",
      options: ["Sanskrit", "Pali", "Brahmi", "Kharosthi"],
      correctAnswerIndex: 1,
      explanation: "The language used to write source materials in ancient time was Pali.",
    ),

    Question(
      questionText: "Who among the following was the pioneer of Yoga?",
      options: ["Patanjali", "Vagbhata", "Atreya", "Vrudukanta"],
      correctAnswerIndex: 0,
      explanation: "Patanjali was the pioneer of Yoga.",
    ),

    Question(
      questionText: "The greatest development in the Kushana period was in the field of",
      options: ["Religion", "Art", "Literature", "Architecture"],
      correctAnswerIndex: 1,
      explanation: "The greatest development in the Kushana period was in the field of Art.",
    ),

    Question(
      questionText: "The famous rock-cut temple of Kailasa is at",
      options: ["Ajanta", "Badami", "Mahabalipuram", "Ellora"],
      correctAnswerIndex: 3,
      explanation: "The famous rock-cut temple of Kailasa is at Ellora.",
    ),

    Question(
      questionText: "The Chola kings were ruling over",
      options: ["Tamil Nadu", "Andhra", "Kerala", "Bengal"],
      correctAnswerIndex: 0,
      explanation: "The Chola kings were ruling over Tamil Nadu.",
    ),

    Question(
      questionText: "Bindusara sent Asoka to quell the rebellion in",
      options: ["Swarnagiri", "Taxila", "Ujjain", "Tosali"],
      correctAnswerIndex: 1,
      explanation: "Bindusara sent Asoka to quell the rebellion in Taxila.",
    ),

    Question(
      questionText: "The Rashtrakuta kingdom was founded by",
      options: ["Dandi Durga (Danti Durga)", "Amoghavarsha", "Govinda III", "Indra III"],
      correctAnswerIndex: 0,
      explanation: "The Rashtrakuta kingdom was founded by Dandi Durga (Danti Durga).",
    ),
    Question(
      questionText: "Kalibangan is situated in",
      options: ["Uttar Pradesh", "Sindh", "Rajasthan", "Gujarat"],
      correctAnswerIndex: 2,
      explanation: "Kalibangan is situated in Rajasthan.",
    ),

    Question(
      questionText: "In which state was the Nalanda University located in India?",
      options: ["Bengal", "Bihar", "Orissa", "Uttar Pradesh"],
      correctAnswerIndex: 1,
      explanation: "Nalanda University was located in Bihar.",
    ),

    Question(
      questionText: "Who were the first kings to issue gold coins in India?",
      options: ["Mauryas", "Indo-Greeks", "Guptas", "Kushans"],
      correctAnswerIndex: 1,
      explanation: "The first kings to issue gold coins in India were Indo-Greeks.",
    ),

    Question(
      questionText: "The word 'Veda' means",
      options: ["Knowledge", "Wisdom", "Meditation", "Power"],
      correctAnswerIndex: 0,
      explanation: "The word 'Veda' means Knowledge.",
    ),

    Question(
      questionText: "The first metal used by man was",
      options: ["Aluminium", "Copper", "Iron", "Silver"],
      correctAnswerIndex: 1,
      explanation: "The first metal used by man was Copper.",
    ),

    Question(
      questionText: "Name the Republic which was a confederacy of tribes in the 6th century B.C.",
      options: ["Gandhara", "Vajji", "Kosala", "Avanti"],
      correctAnswerIndex: 1,
      explanation: "The Republic which was a confederacy of tribes in the 6th century B.C. was Vajji.",
    ),

    Question(
      questionText: "Who established Mahabalipuram?",
      options: ["Pallava", "Pandya", "Chola", "Chalukya"],
      correctAnswerIndex: 0,
      explanation: "Mahabalipuram was established by the Pallavas.",
    ),

    Question(
      questionText: "Who among the following, propounded the theory of zero?",
      options: ["Charak", "Chanakya", "Aryabhatta", "Varahamihira"],
      correctAnswerIndex: 2,
      explanation: "The theory of zero was propounded by Aryabhatta.",
    ),

    Question(
      questionText: "Mention the centre of the Roman trade during the Sangam Age.",
      options: ["Madurai", "Arikamedu", "Poompuhar", "Musiri"],
      correctAnswerIndex: 3,
      explanation: "The centre of the Roman trade during the Sangam Age was Musiri.",
    ),

    Question(
      questionText: "Which of the following dynasty succeeded the Mauryas?",
      options: ["Satavahanas", "Sungas", "Yavanas", "Pandya"],
      correctAnswerIndex: 1,
      explanation: "The Sungas dynasty succeeded the Mauryas.",
    ),

    Question(
      questionText: "Which is the port-town of the Indus Valley civilization?",
      options: ["Kalibangan", "Lothal", "Ropar", "Mohenjodaro"],
      correctAnswerIndex: 1,
      explanation: "Lothal is the port-town of the Indus Valley civilization.",
    ),

    Question(
      questionText: "Which one of the following coins was issued in silver during the Gupta period?",
      options: ["Kakini", "Nishka", "Rupyaka", "Dinar"],
      correctAnswerIndex: 2,
      explanation: "Rupyaka coins were issued in silver during the Gupta period.",
    ),

    Question(
      questionText: "Which of the Kushana rulers patronized Buddhism?",
      options: ["Ashoka", "Vikramaditya", "Kanishka", "Kautilya"],
      correctAnswerIndex: 2,
      explanation: "Kanishka, the Kushana ruler, patronized Buddhism.",
    ),

    Question(
      questionText: "Who was called India's Napoleon because of his victories?",
      options: ["Skandagupta", "Chandragupta", "Brahmagupta", "Samudragupta"],
      correctAnswerIndex: 3,
      explanation: "Samudragupta was called India's Napoleon because of his victories.",
    ),

    Question(
      questionText: "Epigraphy means",
      options: ["The study of coins", "The study of inscriptions", "The study of epics", "The study of geography"],
      correctAnswerIndex: 1,
      explanation: "Epigraphy means the study of inscriptions.",
    ),

    Question(
      questionText: "The caves of Ajanta and Ellora belonged to:",
      options: ["Jains", "Buddhists", "Hindus", "Sikhs"],
      correctAnswerIndex: 1,
      explanation: "The caves of Ajanta and Ellora belonged to Buddhists.",
    ),

    Question(
      questionText: "The Greeks were driven out of India by",
      options: ["Chandragupta Maurya", "Chandragupta Vikramaditya", "Ashoka", "Bindusara"],
      correctAnswerIndex: 0,
      explanation: "The Greeks were driven out of India by Chandragupta Maurya.",
    ),

    Question(
      questionText: "Sangam Age is associated with the history of",
      options: ["Benaras", "Allahabad", "Tamil Nadu", "Khajuraho"],
      correctAnswerIndex: 2,
      explanation: "Sangam Age is associated with the history of Tamil Nadu.",
    ),
    Question(
      questionText: "Lothal is a site where dockyards of which of the following civilization were found?",
      options: ["Indus Valley", "Mesopotamian", "Egyptian", "Persian"],
      correctAnswerIndex: 0,
      explanation: "Lothal is a site where dockyards of the Indus Valley Civilization were found.",
    ),

    Question(
      questionText: "Which one of the following was the last Buddhist text produced in India?",
      options: ["Divya Vandana", "Dohakosa", "Vajrachedika", "Vamsathapakasini"],
      correctAnswerIndex: 3,
      explanation: "The last Buddhist text produced in India was Vamsathapakasini.",
    ),

    Question(
      questionText: "Arrange the following Magadhan dynasties in chronological order: I. Nandas II. Sisunagas III. Mauryas IV. Haryankas",
      options: ["IV, II, III and I", "II, I, IV and III", "IV, II, I and III", "III, I, IV and II"],
      correctAnswerIndex: 2,
      explanation: "The chronological order is IV, II, I, and III for Magadhan dynasties.",
    ),

    Question(
      questionText: "Name the capital of the Pallavas",
      options: ["Kanchi", "Vatapi", "Trichnapalli", "Mahabalipuram"],
      correctAnswerIndex: 0,
      explanation: "The capital of the Pallavas was Kanchi.",
    ),

    Question(
      questionText: "In which language were the Buddhist texts Pitakas composed?",
      options: ["Sanskrit", "Ardhamadhi", "Pali", "Prakrit"],
      correctAnswerIndex: 2,
      explanation: "The Buddhist texts Pitakas were composed in Pali.",
    ),

    Question(
      questionText: "The Uttaramerur inscription provides information on the administration of the",
      options: ["Chalukyas", "Satavahanas", "Pallavas", "Cholas"],
      correctAnswerIndex: 3,
      explanation: "The Uttaramerur inscription provides information on the administration of the Cholas.",
    ),

    Question(
      questionText: "Which ruler murdered his father, Bimbisara, to ascend the throne?",
      options: ["Ashoka", "Ajatasatru", "Kanishka", "Simukha"],
      correctAnswerIndex: 1,
      explanation: "Ajatasatru murdered his father, Bimbisara, to ascend the throne.",
    ),

    Question(
      questionText: "The caves and rock-cut temples at Ellora are",
      options: ["Hindu and Buddhist", "Buddhist and Jain", "Hindu and Jain", "Hindu, Buddhist and Jain"],
      correctAnswerIndex: 3,
      explanation: "The caves and rock-cut temples at Ellora are Hindu, Buddhist, and Jain.",
    ),

    Question(
      questionText: "Which of the following is not one of the animals carved on the Sarnath Pillar?",
      options: ["Humped Bull", "Deer", "Elephant", "Horse"],
      correctAnswerIndex: 1,
      explanation: "Deer is not one of the animals carved on the Sarnath Pillar.",
    ),

    Question(
      questionText: "Jaina literature is known as",
      options: ["Tripitakas", "Epics", "Aryasutras", "Angas"],
      correctAnswerIndex: 3,
      explanation: "Jaina literature is known as Angas.",
    ),

    Question(
      questionText: "Name the oldest Indian civilization.",
      options: ["Indus Valley civilization", "Mesopotamian civilization", "Egyptian civilization", "None of these"],
      correctAnswerIndex: 0,
      explanation: "The oldest Indian civilization is the Indus Valley civilization.",
    ),
    Question(
      questionText: "The site of birth (nativity) of Gautam Buddha is marked by:",
      options: ["a monastery", "a 'Rumminder Pillar' of Ashok Maurya", "a statue", "a Peepal Tree"],
      correctAnswerIndex: 1,
      explanation: "The site of birth (nativity) of Gautam Buddha is marked by a 'Rumminder Pillar' of Ashok Maurya.",
    ),

    Question(
      questionText: "Which of the following Vedas provides information about the civilization of the Early Vedic Age?",
      options: ["Rig-Veda", "Yajur-veda", "Atharva-veda", "Sama-veda"],
      correctAnswerIndex: 0,
      explanation: "The Rig-Veda provides information about the civilization of the Early Vedic Age.",
    ),

    Question(
      questionText: "During which of the following periods of Indian History did the Kshatriya have a distinct identity?",
      options: ["Age of the Buddha", "Maurya period", "Post-Maurya age", "Gupta period"],
      correctAnswerIndex: 0,
      explanation: "The Kshatriya had a distinct identity during the Age of the Buddha.",
    ),

    Question(
      questionText: "Who was called Lichchavi Dauhitra?",
      options: ["Chandragupta I", "Skandagupta", "Kumaragupta", "Samudragupta"],
      correctAnswerIndex: 0,
      explanation: "Chandragupta I was called Lichchavi Dauhitra.",
    ),

    Question(
      questionText: "Who built the Kailasanatha Temple at Ellora?",
      options: ["Rajendra I", "Mahendra Varman I", "Krishna I", "Govinda I"],
      correctAnswerIndex: 2,
      explanation: "Krishna I built the Kailasanatha Temple at Ellora.",
    ),

    Question(
      questionText: "The Rathas of Mahabalipuram, were built during the reign of the",
      options: ["Palas", "Cholas", "Rashtrakutas", "Pallavas"],
      correctAnswerIndex: 3,
      explanation: "The Rathas of Mahabalipuram were built during the reign of the Pallavas.",
    ),

    Question(
      questionText: "Harshvardhana was defeated by",
      options: ["Prabhakaravardhana", "Pulakesin II", "Narasimhasvarrna Pallava", "Sasanka"],
      correctAnswerIndex: 1,
      explanation: "Harshvardhana was defeated by Pulakesin II.",
    ),

    Question(
      questionText: "Who among the following were contemporaries of Kanishka?",
      options: ["Kamban, Banabhatta, Asvagosha", "Nagarjuna, Asvagosha, Vasumitra", "Asvagosha, Kalidasa, Banabhatta", "Kalidasa, Kamban, Vasumitra"],
      correctAnswerIndex: 1,
      explanation: "Nagarjuna, Asvagosha, and Vasumitra were contemporaries of Kanishka.",
    ),

    Question(
      questionText: "Most of the Chola temples were dedicated to",
      options: ["Ganesh", "Shiva", "Durga", "Vishnu"],
      correctAnswerIndex: 1,
      explanation: "Most of the Chola temples were dedicated to Shiva.",
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
        backgroundColor: Colors.greenAccent,
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
    home: ancientHistory_6(),
  ));
}

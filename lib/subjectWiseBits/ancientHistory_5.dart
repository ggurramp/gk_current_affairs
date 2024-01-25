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

class ancientHistory_5 extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_5({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_5> createState() => _ancientHistory_5State();
}

class _ancientHistory_5State extends State<ancientHistory_5> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "Which one of the following has not been mentioned as 'asineva' in Ashokan inscriptions",
      options: ["Pride and fury", "Envy and revenge", "Greed and passion", "Cruelty and anger"],
      correctAnswerIndex: 2,
      explanation: "Greed and passion have not been mentioned as 'asineva' in Ashokan inscriptions.",
    ),

    Question(
      questionText: "`House burials' are reported from",
      options: ["Uleri in Almora", "Balathal in Rajasthan", "Gufral in Kashmir", "Ghaligal - in the northeast"],
      correctAnswerIndex: 0,
      explanation: "House burials are reported from Uleri in Almora.",
    ),

    Question(
      questionText: "The famous Jaina temples at Dilwara were built by?",
      options: ["Solankis", "Chauhans", "Paramaras", "Chandellas"],
      correctAnswerIndex: 0,
      explanation: "The famous Jaina temples at Dilwara were built by the Solankis.",
    ),

    Question(
      questionText: "When were the Silkworms introduced into the Byzantine empire from China, adversely affecting India's already declining foreign trade?",
      options: ["615 AD", "351 AD", "451 AD", "551 AD"],
      correctAnswerIndex: 3,
      explanation: "Silkworms were introduced into the Byzantine empire from China in 551 AD, adversely affecting India's already declining foreign trade.",
    ),

    Question(
      questionText: "Which of the following pairs is not correctly matched?",
      options: ["Arrian—Indica", "Claudius Aelianus—Naturalis Historica", "Diodorus Sicilus—Bibliotheca Historica", "Strabo Geography"],
      correctAnswerIndex: 1,
      explanation: "Claudius Aelianus—Naturalis Historica is not a correctly matched pair.",
    ),

    Question(
      questionText: "Who tells us that 'India' (i.e. Indus Valley) was the 20th and most prosperous satrapy (province) of the Persian empire?",
      options: ["Fa Hien", "Yijing", "Herodotus", "Megasthenese"],
      correctAnswerIndex: 2,
      explanation: "Herodotus tells us that 'India' (i.e. Indus Valley) was the 20th and most prosperous satrapy (province) of the Persian empire.",
    ),

    Question(
      questionText: "Which of the following is/are the well-known ancient geographical epithets of India?",
      options: ["Bharatvarsha", "Saptadvipa", "Both A and B", "Jambudvipa"],
      correctAnswerIndex: 2,
      explanation: "Bharatvarsha and Saptadvipa are well-known ancient geographical epithets of India.",
    ),

    Question(
      questionText: "Which one of the following Brahmana texts belongs to the Rigveda?",
      options: ["Aitareya Brahmana", "Gopatha Brahmana", "Shatapatha Brahmana", "Taittiriya Brahmana"],
      correctAnswerIndex: 0,
      explanation: "Aitareya Brahmana belongs to the Rigveda.",
    ),

    Question(
      questionText: "Who was the author of ‘Indica’?",
      options: ["Plutarch", "Justin", "Herodotus", "Megasthenes"],
      correctAnswerIndex: 3,
      explanation: "Megasthenes was the author of 'Indica'.",
    ),

    Question(
      questionText: "Which of the kings has been mentioned as ‘Piydassi’ and ‘Devanampriya’ in inscriptions?",
      options: ["Chandragupta Maurya", "Ashoka", "Samudragupta", "Harshvardhana"],
      correctAnswerIndex: 1,
      explanation: "Ashoka has been mentioned as ‘Piydassi’ and ‘Devanampriya’ in inscriptions.",
    ),

    Question(
      questionText: "What is the total number of Sanskaras?",
      options: ["10", "12", "15", "16"],
      correctAnswerIndex: 3,
      explanation: "The total number of Sanskaras is 16.",
    ),

    Question(
      questionText: "The Gupta empire granted tax-free agrarian land to which of the following?",
      options: ["Military officials", "Civil officials", "Brahmins", "Court scholars"],
      correctAnswerIndex: 2,
      explanation: "The Gupta empire granted tax-free agrarian land to Brahmins.",
    ),

    Question(
      questionText: "Which of the following Buddhist literature contains the Buddha’s sermons on matters of ethics and doctrine?",
      options: ["Vinayaka Pitaka", "Jataka Stories", "Abhidamma Pitaka", "Sutta Pitaka"],
      correctAnswerIndex: 3,
      explanation: "Sutta Pitaka contains the Buddha’s sermons on matters of ethics and doctrine.",
    ),

    Question(
      questionText: "Who among the following is not related to the Philosophy of Vedanta?",
      options: ["Shankaracharya", "Abhinavagupt", "Ramanuja", "Madhava"],
      correctAnswerIndex: 1,
      explanation: "Abhinavagupt is not related to the Philosophy of Vedanta.",
    ),

    Question(
      questionText: "Dynasty famous for efficient rural administration was",
      options: ["Cholas", "Rashtrakutas", "Chalukyas", "Pallavas"],
      correctAnswerIndex: 0,
      explanation: "Cholas were a dynasty famous for efficient rural administration.",
    ),
    Question(
      questionText: "Which of the following is not an Indus Valley Civilization site?",
      options: ["Kalibangan", "Ropar", "Patliputra", "Lothal"],
      correctAnswerIndex: 2,
      explanation: "Patliputra is not an Indus Valley Civilization site.",
    ),

    Question(
      questionText: "From which Veda Sanskrit literature has begun?",
      options: ["Yajurveda", "Atharveda", "Samaveda", "Rigveda"],
      correctAnswerIndex: 3,
      explanation: "Sanskrit literature has begun from Rigveda.",
    ),

    Question(
      questionText: "‘Panchtantra’ is originally written by",
      options: ["Kalidas", "Vishnu Sharma", "Tulsidas", "Raidas"],
      correctAnswerIndex: 1,
      explanation: "‘Panchtantra’ is originally written by Vishnu Sharma.",
    ),

    Question(
      questionText: "Which of the following is not included in ‘Chardham’?",
      options: ["Puri", "Dwaraka", "Mansarovar", "Rameshwaram"],
      correctAnswerIndex: 2,
      explanation: "Mansarovar is not included in ‘Chardham’.",
    ),

    Question(
      questionText: "After how many years ‘Mahakumbh’ is held?",
      options: ["12 years", "10 years", "9 years", "6 years"],
      correctAnswerIndex: 0,
      explanation: "‘Mahakumbh’ is held after 12 years.",
    ),

    Question(
      questionText: "Which of the following musical instruments is not of Indo-Islamic origin?",
      options: ["Sitar", "Tabla", "Sarangi", "Sehnai"],
      correctAnswerIndex: 3,
      explanation: "Sehnai is not of Indo-Islamic origin.",
    ),

    Question(
      questionText: "The ancestors of Shungas originated from:",
      options: ["Magadha", "Prayag", "Ujjain", "Saurashtra"],
      correctAnswerIndex: 2,
      explanation: "The ancestors of Shungas originated from Ujjain.",
    ),

    Question(
      questionText: "In ancient period, which Varna was also called as Sarthavaha?",
      options: ["Brahmana", "Kshatriya", "Vaishya", "Shudra"],
      correctAnswerIndex: 2,
      explanation: "In ancient period, Vaishya was also called as Sarthavaha.",
    ),

    Question(
      questionText: "With which religion is Kalika Purana associated?",
      options: ["Vaishnavism", "Shaktism", "Buddhism", "Jainism"],
      correctAnswerIndex: 3,
      explanation: "Kalika Purana is associated with Jainism.",
    ),

    Question(
      questionText: "Vardhman Mahavir is also known as",
      options: ["Jina", "Great teacher", "Great preacher", "Jain"],
      correctAnswerIndex: 0,
      explanation: "Vardhman Mahavir is also known as Jina.",
    ),

    Question(
      questionText: "The Virupaksha Temple was built by the",
      options: ["Chalukyas", "Pallavas", "Vakatakas", "Satvahanas"],
      correctAnswerIndex: 0,
      explanation: "The Virupaksha Temple was built by the Chalukyas.",
    ),

    Question(
      questionText: "Mention the place where Buddha attained enlightenment",
      options: ["Sarnath", "Bodh Gaya", "Kapilavastu", "Rajgriha"],
      correctAnswerIndex: 1,
      explanation: "Buddha attained enlightenment at Bodh Gaya.",
    ),

    Question(
      questionText: "The rulers of which dynasty started the practice of granting tax-free villages to Brahmanas and Buddhist Monks?",
      options: ["Satavahanas", "Mauryas", "Guptas", "Cholas"],
      correctAnswerIndex: 0,
      explanation: "The rulers of the Satavahanas dynasty started the practice of granting tax-free villages to Brahmanas and Buddhist Monks.",
    ),

    Question(
      questionText: "Vaishakha Poornima has great significance because it was on this day",
      options: ["Buddha was born", "Buddha got enlightened", "Buddha died", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "Vaishakha Poornima has great significance because it was on this day that Buddha was born, got enlightened, and died.",
    ),

    Question(
      questionText: "The Buddhist monk who spread Buddhism in Tibet was",
      options: ["Nagarjuna", "Ananda", "Asanga", "Padmasambhava"],
      correctAnswerIndex: 3,
      explanation: "The Buddhist monk who spread Buddhism in Tibet was Padmasambhava.",
    ),

    Question(
      questionText: "The words 'Satyameva Jayate' in the State Emblem of India were taken from",
      options: ["Upanishads", "Sama Veda", "Rig Veda", "Ramayana"],
      correctAnswerIndex: 0,
      explanation: "The words 'Satyameva Jayate' in the State Emblem of India were taken from the Upanishads.",
    ),
    Question(
      questionText: "The term ‘Upanishad’ literally implies",
      options: ["Knowledge", "Wisdom", "Sitting near", "Recitation"],
      correctAnswerIndex: 2,
      explanation: "The term ‘Upanishad’ literally implies 'Sitting near.'",
    ),

    Question(
      questionText: "Worship of Mother Goddess was associated with",
      options: ["Aryan Civilization", "Mediterranean Civilization", "Indus Valley Civilization", "Later Vedic Civilization"],
      correctAnswerIndex: 2,
      explanation: "Worship of Mother Goddess was associated with Indus Valley Civilization.",
    ),

    Question(
      questionText: "Which of the following are beliefs of Buddhism? a. The world is full of sorrows. b. People suffer on account of desires. c. If desires are conquered, nirvana will be attained. d. The existence of God and Soul must be recognised.",
      options: ["a, b, c and d", "b and c", "a, b and c", "b, c and d"],
      correctAnswerIndex: 2,
      explanation: "Beliefs of Buddhism include: a. The world is full of sorrows. b. People suffer on account of desires. c. If desires are conquered, nirvana will be attained.",
    ),

    Question(
      questionText: "India's trade with the Roman Empire came to an end with the invasion of Rome by the",
      options: ["Arabs", "Hungarians", "Hunas", "Turks"],
      correctAnswerIndex: 2,
      explanation: "India's trade with the Roman Empire came to an end with the invasion of Rome by the Hunas.",
    ),

    Question(
      questionText: "The most distinguished ruler of the Chalukyan dynasty was",
      options: ["Jayasimha II", "Vikramaditya VI", "Somesvara II", "Pulakeshin II"],
      correctAnswerIndex: 3,
      explanation: "The most distinguished ruler of the Chalukyan dynasty was Pulakeshin II.",
    ),

    Question(
      questionText: "Which dynasty succeeded the Chalukyas in Western India?",
      options: ["Cholas", "Kakatiyas", "Pallavas", "Rashtrakutas"],
      correctAnswerIndex: 3,
      explanation: "The Rashtrakutas succeeded the Chalukyas in Western India.",
    ),

    Question(
      questionText: "Who was the mother of Mahavira?",
      options: ["Yashoda", "Trishala", "Jameli", "Mahamaya"],
      correctAnswerIndex: 1,
      explanation: "The mother of Mahavira was Trishala.",
    ),

    Question(
      questionText: "The essential feature of the Indus Valley Civilisation was",
      options: ["Worship of forces of nature", "Organised city life", "Pastoral farming", "Caste society"],
      correctAnswerIndex: 1,
      explanation: "The essential feature of the Indus Valley Civilisation was organised city life.",
    ),

    Question(
      questionText: "Subject matter which Manu Smriti deals with is related to",
      options: ["Economics", "Politics", "Law", "Art"],
      correctAnswerIndex: 2,
      explanation: "Manu Smriti deals with the subject matter related to Law.",
    ),

    Question(
      questionText: "The number system 'Zero' was invented by",
      options: ["Ramanujam", "Aryabhatta", "Patanjali", "An unknown person"],
      correctAnswerIndex: 1,
      explanation: "The number system 'Zero' was invented by Aryabhatta.",
    ),
    Question(
      questionText: "Which among the following is the oldest dynasty?",
      options: ["Maurya", "Gupta", "Kushan", "Kanva"],
      correctAnswerIndex: 0,
      explanation: "The Maurya dynasty is considered the oldest among the given options.",
    ),

    Question(
      questionText: "6th-century B.C. was an age of",
      options: ["Reasoning", "Intellectual awakening", "Political unrest", "Religious ferment"],
      correctAnswerIndex: 3,
      explanation: "6th-century B.C. was an age of Religious ferment.",
    ),

    Question(
      questionText: "Lothal, the dockyard site of the Indus Valley Civilization, is situated in",
      options: ["Gujarat", "Punjab", "Pakistan", "Haryana"],
      correctAnswerIndex: 0,
      explanation: "Lothal, the dockyard site of the Indus Valley Civilization, is situated in Gujarat.",
    ),

    Question(
      questionText: "The first grammarian of the Sanskrit language was",
      options: ["Kalhana", "Maitreyi", "Kalidasa", "Panini"],
      correctAnswerIndex: 3,
      explanation: "The first grammarian of the Sanskrit language was Panini.",
    ),

    Question(
      questionText: "The Saka era commencing from A.D. 78, was founded by",
      options: ["Kanishka", "Asoka", "Chandragupta", "Vikramaditya"],
      correctAnswerIndex: 0,
      explanation: "The Saka era commencing from A.D. 78 was founded by Kanishka.",
    ),

    Question(
      questionText: "With which of the following centres of learning, Chanakya, the famous teacher of Chandragapta Maurya, was associated?",
      options: ["Takshashila", "Nalanda", "Vikramashila", "Vaishali"],
      correctAnswerIndex: 0,
      explanation: "Chanakya, the famous teacher of Chandragapta Maurya, was associated with Takshashila.",
    ),

    Question(
      questionText: "The religion, which preached 'Desire is the cause for all sufferings' is",
      options: ["Buddhism", "Jainism", "Sikhism", "Hinduism"],
      correctAnswerIndex: 0,
      explanation: "The religion that preached 'Desire is the cause for all sufferings' is Buddhism.",
    ),

    Question(
      questionText: "Which of the following was the early capital of the Rashtrakutas?",
      options: ["Sopam", "Ellora", "Vatapi", "Ajanta"],
      correctAnswerIndex: 1,
      explanation: "The early capital of the Rashtrakutas was Ellora.",
    ),

    Question(
      questionText: "Most of the Chola temples were dedicated to",
      options: ["Vishnu", "Shiva", "Brahma", "Durga"],
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
    home: ancientHistory_5(),
  ));
}

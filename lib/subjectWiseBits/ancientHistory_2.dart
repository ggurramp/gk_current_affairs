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

class ancientHistory_2 extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_2({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_2> createState() => _ancientHistory_2State();
}

class _ancientHistory_2State extends State<ancientHistory_2> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "Who composed Allahabad Prasasti?",
      options: ["Harisena", "Vasumitra", "Asvaghosha", "Nagarjuna"],
      correctAnswerIndex: 0,
      explanation: "Harisena, also called Harishena or Hirisena, was a 4th-century Sanskrit poet, panegyrist, and government minister. He was an important figure in the court of the Gupta emperor, Samudragupta. His most famous poem, written c. 345 C.E., describes the bravery of Samudragupta and is inscribed on the Allahabad Pillar.",
    ),
    Question(
      questionText: "To which period of Indian history did Aryabhatta and Varahamihira (Scientist and Mathematician respectively) belong?",
      options: ["Pala period", "Delhi Sultanate", "Maurya period", "Gupta period"],
      correctAnswerIndex: 3,
      explanation: "Aryabhatiya and Surya Siddhanta were written Aryabhatta. He belongs to the Gupta period. He is credited with the invention of the decimal system and zero. He told for the first time that the Earth is not static, it rotates around the sun.",
    ),
    Question(
      questionText: "Who among the following said 'All men are my Children' and just as I desire happiness in those worlds and the next, so also I desire to all men?",
      options: ["Chandragupta", "Ashoka", "Ajatsatru", "Bindusara"],
      correctAnswerIndex: 1,
      explanation: "Ashoka",
    ),
    Question(
      questionText: "Lion capital in currency notes was discovered from",
      options: ["Delhi", "Sarnath", "Bodh Gaya", "Sanchi"],
      correctAnswerIndex: 1,
      explanation: "Sarnath",
    ),
    Question(
      questionText: "The Lion capital of currency notes was discovered from",
      options: ["Bodh Gaya", "Sarnath", "Bharut", "Sanchi"],
      correctAnswerIndex: 1,
      explanation: "Sarnath",
    ),
    Question(
      questionText: "Who among the Gupta rulers was known as 'Lichchavidauhitra'?",
      options: ["Kumaragupta", "Skandagupta", "Samudragupta", "Chandragupta II"],
      correctAnswerIndex: 2,
      explanation: "Samudragupta was the greatest king of the Gupta dynasty and called the Hero of Hundred Battles and Napoleon of India. He never faced defeat in any battle in his life. He was the son of the Gupta emperor Chandragupta I and the Lichchhavi princess Kumaradevi.",
    ),
    Question(
      questionText: "Chandragupta Maurya defeated of",
      options: ["Seleucus", "Kalashoka", "Poros", "Alexander"],
      correctAnswerIndex: 0,
      explanation: "Chandragupta overthrew the Nanda dynasty and then ascended to the throne of the Magadha kingdom, in present-day Bihar state, India, about 325 BCE. Alexander the Great died in 323, leaving Chandragupta to win the Punjab region about 322. Eventually, then Chandragupta defeated the invasion led by Seleucus I, a Macedonian general from Alexander's army, and gained additional territory west of the Indus River.",
    ),
    Question(
      questionText: "Who introduces Kulinism?",
      options: ["Ballal Sen", "Lakshman Sen", "Samanta Sen", "Hemanta Sen"],
      correctAnswerIndex: 0,
      explanation: "Kulinism is Hindu caste and marriage rules reputedly introduced by Raja Ballala Sena of Bengal. The name derives from the Sanskrit word कु लीन (kulina). Kulin (higher social status) refers to the marriage of a kulina girl to a man in the same class as well as marriage to one in a higher class. It essentially asserts that a kulina woman must not have her status lowered by marrying into a group of lower rank. One's Kulin status remains valid for 36 years according to the rules stated by Ballala Sena.",
    ),
    Question(
      questionText: "Fo-Kuo-King was authored by whom?",
      options: ["Hiuen Tsang", "Megasthenes", "It-Tsing", "Fa-Hien"],
      correctAnswerIndex: 3,
      explanation: "Fa-Hien/Faxian was a Buddhist traveler from China, who came to India during Chandragupta II and written Fo-Kuo-King.",
    ),
    Question(
      questionText: "Who was Megasthenes?",
      options: ["A Greek pilgrim", "A Chinese traveler", "Ambassador of Seleucus", "Prime Minister of Chandragupta Maurya"],
      correctAnswerIndex: 2,
      explanation: "Megasthenes was an ancient Greek historian, diplomat, and Indian ethnographer and explorer in the Hellenistic period. He was an ambassador of Seleucus I to the court of Chandragupta Maurya. His observations about the Indian subcontinent are documented in his famous work 'Indica.'",
    ),
    Question(
      questionText: "The Mauryan ruler who used the name 'Piyadasi' in his official declarations was",
      options: ["Chandragupta Maurya", "Brihaddrata", "Bimbisara", "Ashoka"],
      correctAnswerIndex: 3,
      explanation: "Ashoka",
    ),
    Question(
      questionText: "Si- U - Ki was authored by",
      options: ["Megasthenes", "I- Tsing", "Huen - Tsang", "Fa- Hien"],
      correctAnswerIndex: 2,
      explanation: "Huan-Tsang was a Chinese traveler who came to Indian during 630 CE in the time of Harshavardhana. He was in India for 14 years. During this time he has studied Hindu and Buddhist religious text from Śīlabhadra for five years. He mentioned the Harshavardhana as the greatest king of north India and Pulokesin II as the greatest king of south India in his book Si-Yu-Ki.",
    ),
    Question(
      questionText: "The Vikramasila-Vihara was founded by",
      options: ["Surapala", "Dharmapala", "Mahipala I", "Devapala"],
      correctAnswerIndex: 1,
      explanation: "Dharmapala",
    ),
    Question(
      questionText: "The first historical emperor of ancient India was",
      options: ["Mahapadmananda", "Bimbisara", "Chandragupta Maurya", "Samudragupta"],
      correctAnswerIndex: 2,
      explanation: "Chandragupta Maurya",
    ),
    Question(
      questionText: "Who was known as Amitraghata?",
      options: ["Ashoka", "Samudragupta", "Bindusara", "Bimbisara"],
      correctAnswerIndex: 2,
      explanation: "Bindusara was the second Mauryan emperor of India. He was also known as Amitrochates (in Greek) or Amitraghata (in Sanskrit) meaning Slayer of all enemies.",
    ),
    Question(
      questionText: "Who was the founder of the Gupta dynasty?",
      options: ["Samudragupta", "Skandagupta", "Chandragupta", "Srigupta"],
      correctAnswerIndex: 3,
      explanation: "Gupta empire was emerged around the late 3rd century and brought Magadha under the control of founding member Srigupta. He was succeeded by Ghototkacha Gupta. The empire got prominent under the control of Chandragupta I (319-335 CE).",
    ),
    Question(
      questionText: "Surya Siddhanta was authored by?",
      options: ["Vararuchi", "Sushruta", "Aryabhatta", "Varahamihir"],
      correctAnswerIndex: 2,
      explanation: "It is unknown who is the original writer of Surya Sidhanta. There are several works with the same name. Brahmagupta summarized the Surya Sidhanta in his book Panchsiddhakta.",
    ),
    Question(
      questionText: "According to Buddhist tradition, Chandragupta Maurya belonged to the Maurya tribe of",
      options: ["Brahmanas", "Kshatriya", "Sudras", "Vaishya"],
      correctAnswerIndex: 1,
      explanation: "Kshatriya",
    ),
    Question(
      questionText: "Which of the following Gupta rulers was known as Vikramaditya?",
      options: ["Chandragupta-II", "Skandagupta", "Chandragupta-I", "Samudragupta"],
      correctAnswerIndex: 0,
      explanation: "Chandragupta-II",
    ),
    Question(
      questionText: "In his inscriptions, Ashoka calls himself",
      options: ["Daivaputra", "Devanampriya Priyadarsin", "Priyadarshi", "Dhammasoka"],
      correctAnswerIndex: 1,
      explanation: "Devanampriya Priyadarsin",
    ),
    Question(
      questionText: "The Kalinga war is mentioned in the",
      options: ["Bhabru Rock Edict", "8th Rock Edict", "13th Rock Edict", "12th Rock Edict"],
      correctAnswerIndex: 2,
      explanation: "It was mentioned in Rock Edict No. 13 in Shahbazgarhi and Manasera that after Ashoka witnessed the slaughter on the battle-field of Kalinga, he regarded conquest by the dharma as the best conquest.",
    ),
    Question(
      questionText: "The University of Vikramshila was established by",
      options: ["Dharmapala", "Mahipala", "Devpala", "Gopala"],
      correctAnswerIndex: 0,
      explanation: "Dharmapala",
    ),
    Question(
      questionText: "Chandragupta Maurya was succeeded by",
      options: ["Ashoka", "Harsha", "Bindusara", "Ajatasatru"],
      correctAnswerIndex: 2,
      explanation: "Bindusara was the father of Ashoka. Who ruled between 297 BCE to 273 BCE.",
    ),
    Question(
      questionText: "The famous mathematician of ancient India was",
      options: ["Rudrasena", "Bhabadhuti", "Kalhana", "Aryabhatta"],
      correctAnswerIndex: 3,
      explanation: "Aryabhatta",
    ),
    Question(
      questionText: "Who among the following transferred his royal residence permanently from Rajgriha to Pataliputra.",
      options: ["Chandra Gupta Maurya", "Bimbisara", "Udayin", "Kakavarna"],
      correctAnswerIndex: 2,
      explanation: "Udayin",
    ),
    Question(
      questionText: "Sandhyakar Nandi was",
      options: ["Writer of Doha", "Physician", "The writer of Ramcharita Kavya", "Court poet of Chandra Gupta II"],
      correctAnswerIndex: 2,
      explanation: "The writer of Ramcharita Kavya",
    ),
    Question(
      questionText: "The greatest scholar of Medical Science during Ancient India",
      options: ["Charaka", "Vāgbhata", "Bhatta", "Sushruta"],
      correctAnswerIndex: 0,
      explanation: "Charaka was one of the principal contributors to Ayurveda, a system of medicine and lifestyle developed in Ancient India. Charaka Samhita was authored by him. He was born around 300 BC.",
    ),
    Question(
      questionText: "Sasanka belonged to the",
      options: ["Gauda dynasty", "Kamrup dynasty", "Pal dynasty", "Sen dynasty"],
      correctAnswerIndex: 0,
      explanation: "Sasanka was the first independent ruler of Bengal. Sasanka was a king of the Gauda Kingdom and the capital was Karnasubarna, in present-day Murshidabad in West Bengal.",
    ),
    Question(
      questionText: "Gopal was the founder of",
      options: ["Pratihara dynasty", "Chalukya dynasty", "Pala dynasty", "Pallava dynasty"],
      correctAnswerIndex: 2,
      explanation: "Pala dynasty",
    ),
    Question(
      questionText: "Chalukya's established their empire in",
      options: ["Deccan", "Far South India", "Gujarat", "Malwa"],
      correctAnswerIndex: 0,
      explanation: "Deccan",
    ),
    Question(
      questionText: "An important port in the time of Satabahans was",
      options: ["Mathura", "Pataliputra", "Sopara", "Taxila"],
      correctAnswerIndex: 2,
      explanation: "Sopara",
    ),
    Question(
      questionText: "Indica was written by",
      options: ["V. Smith", "William Jones", "Gondophernes", "Megasthenes"],
      correctAnswerIndex: 3,
      explanation: "Megasthenes was an ambassador to Indian king Chandragupta Marya. He was from Greek and sent by Seleucus I Nicator. Seleucus was defeated by the armies of the Maurya Empire and made peace by marrying his daughter to king Chandragupta and sent Megasthenes to India as an ambassador.",
    ),
    Question(
      questionText: "The 'Ratha temples' of Mahabalipuram were constructed in the reign of",
      options: ["Raja Raja", "Rajendra Chola", "Narasingha Varman I", "Narasingha Varman II"],
      correctAnswerIndex: 2,
      explanation: "Narasingha Varman I",
    ),
    Question(
      questionText: "Who among the following persons wrote Mitakshara?",
      options: ["Bilhan", "Vijnanesvar", "Nyayachandra", "Gangadhar"],
      correctAnswerIndex: 1,
      explanation: "Vijnanesvar",
    ),
    Question(
      questionText: "The Khalimpur Copper Plate informs us about the military exploits of the Pala ruler",
      options: ["Dharmapala", "Mahipala I", "Devapala", "Rampala"],
      correctAnswerIndex: 0,
      explanation: "Dharmapala",
    ),
    Question(
      questionText: "Who constructed the Rajrajeshwara Temple ?",
      options: ["Rajadhiraja", "Virrajendra", "Rajendra", "Raja Raja"],
      correctAnswerIndex: 3,
      explanation: "Raja Raja",
    ),
    Question(
      questionText: "Under whose Patronage was Kailas Temple at Ellora constructed",
      options: ["Pallavas", "Cholas", "Chalukya", "Rastrakut"],
      correctAnswerIndex: 3,
      explanation: "Rastrakut",
    ),
    Question(
      questionText: "Who was the Chola King to have conquered Bengal ?",
      options: ["Rajendra Chola", "Rajadhiraja", "Raja Raja", "Rajendra Chola I"],
      correctAnswerIndex: 3,
      explanation: "Rajendra Chola I, was the greatest rulers of the Chola dynasty. His achievements are described in Tanjore and Tirumala inscription. He conquered Bangal and assumed the title of 'Ganga conqueror' (Gangaikonda Cholapuram) or Ganga winner Chola king.",
    ),
    Question(
      questionText: "Ankor Wat' was built by",
      options: ["Suryavarman", "Kaniska", "Chandragnpta II", "Ajatasatru"],
      correctAnswerIndex: 0,
      explanation: "It is the largest religious monument in the world, located in Cambodia. Initially, it was a Hindu temple (dedicated to Vishnu) for the Khmer Empire and gradually transformed into a Buddhist temple. It was built by Suryavarman II.",
    ),
    Question(
      questionText: "Who was the founder of the Satvahana Dynasty?",
      options: ["Satakasni", "Gautamiputra Satakarni", "Simuk", "Krishna"],
      correctAnswerIndex: 2,
      explanation: "Simuk",
    ),
    Question(
      questionText: "Who was the Kaivartta chief who rebelled against the Pala ruler Mahipala II of Bengal?",
      options: ["Divya", "Mayuraddhvaja", "Dhekata", "Gandhata"],
      correctAnswerIndex: 0,
      explanation: "The Varendra rebellion means the revolt against King Mahipala II led by Divya. The Kaivarta were able to capture Varendra by this rebellion. Later on, in 1082 CE, King Rampala was succeeded in recapturing his fatherland Varendra by defeating Vim with the assistance of neighboring vassals.",
    ),
    Question(
      questionText: "The author of Kadambari was",
      options: ["Bhababhuti", "Banabhatta", "Khemendra", "Kalhana"],
      correctAnswerIndex: 1,
      explanation: "Banabhatta",
    ),
    Question(
      questionText: "Which King founded Vikramasila University?",
      options: ["Devapala", "Ballal Sen", "Dharmapala", "Dhruva"],
      correctAnswerIndex: 2,
      explanation: "Dharmapala",
    ),
    Question(
      questionText: "Who of the following were the first rulers to make land grants to the Brahmanas",
      options: ["Satavahana", "Shakas and Kushanas", "Shunga", "Kushans"],
      correctAnswerIndex: 0,
      explanation: "Satavahana",
    ),
    Question(
      questionText: "Who issued the Nasik Inscription?",
      options: ["Dharmapala", "Samudragupta", "Gautamiputra Satkarni", "Harshavardhan"],
      correctAnswerIndex: 2,
      explanation: "It was written by Gautami Balashree about the achievement of her son Satkarni. Gautamiputa Satkarni was the greatest ruler of the Satavahana dynasty. He called himself only Brahmana. He patronized Bramisam yet gave donations to Buddhist.",
    ),
    Question(
      questionText: "Who among the following kings performed Asvamedh Yagya?",
      options: ["Kirtivarman", "Mangalesh", "Pulakesin I", "Pulakesin II"],
      correctAnswerIndex: 3,
      explanation: "Pulakesin II",
    ),
    Question(
      questionText: "Identify the dynasty that ruled over the Malay Archipelago",
      options: ["Pandya", "Sailendra", "Chola", "Mira"],
      correctAnswerIndex: 1,
      explanation: "Sailendra",
    ),
    Question(
      questionText: "Who issued the Nasik Prasasti (Inscription)?",
      options: ["Harshavardhan", "Dharmapala", "Gautamiputra", "Samudragupta"],
      correctAnswerIndex: 2,
      explanation: "Gautamiputra",
    ),
    Question(
      questionText: "The Gandhara School of Art is associated with",
      options: ["Harshavardhana", "Pushyamitra", "Kaniska", "Pulakesi"],
      correctAnswerIndex: 2,
      explanation: "Kaniska",
    ),
    Question(
      questionText: "Who is known as 'Kunik' in the history of India?",
      options: ["Bindusara", "Ashoka", "Bimbisara", "Ajatsatru"],
      correctAnswerIndex: 3,
      explanation: "Ajatsatru",
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
    home: ancientHistory_2(),
  ));
}

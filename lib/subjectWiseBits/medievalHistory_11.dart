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

class medievalHistory_11 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_11({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_11> createState() => _medievalHistory_11State();
}

class _medievalHistory_11State extends State<medievalHistory_11> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Who was the Guru of Kabir?",
        options: ["Ramanuja", "Ramananda", "Vallabhacharya", "Namadeva"],
        correctAnswerIndex: 1,
        explanation: "The Guru of Kabir was Ramananda. Kabir, a prominent saint and poet, was greatly influenced by the teachings of Ramananda, a leading figure in the Bhakti movement."
    ),

    Question(
        questionText: "Mughal painting reached its zenith under",
        options: ["Shah Jahan", "Aklatu", "Jahangir", "Aurangzeb"],
        correctAnswerIndex: 2,
        explanation: "Mughal painting reached its zenith under Jahangir. His reign is considered a golden period for Mughal art, with the development of a distinct style characterized by detailed naturalistic imagery."
    ),

    Question(
        questionText: "Arrange the dynasties of Delhi Sultanate in chronological order: a. Slave b. Khilji c. Tughlaq d. Sayyad",
        options: ["d, a, c, b", "a, d, b, c", "a, b, c, d", "d, a, b, c"],
        correctAnswerIndex: 3,
        explanation: "The chronological order is Slave (Mamluk), Khilji, Tughlaq, Sayyad. This sequence reflects the historical succession of ruling dynasties in the Delhi Sultanate."
    ),

    Question(
        questionText: "Who was the greatest Bhakti poet of Maharashtra?",
        options: ["Ramdas", "Tukuram", "Namdeva", "Eknath"],
        correctAnswerIndex: 1,
        explanation: "The greatest Bhakti poet of Maharashtra was Tukuram. His compositions are cherished for their devotional fervor and philosophical depth."
    ),

    Question(
        questionText: "The greatness of Shershah lies in his:",
        options: ["Secular attitude", "Victories against Humayun", "Superior generalship", "Administrative reforms"],
        correctAnswerIndex: 3,
        explanation: "The greatness of Shershah lies in his administrative reforms. Shershah's innovative administrative policies, including the introduction of the 'Rupiya' currency, left a lasting impact on the governance of the region."
    ),

    Question(
        questionText: "Which is the holy book of the Sikh religion?",
        options: ["Bhagwad Gita", "Baani", "Gurmukhi", "Guru Granth Sahib"],
        correctAnswerIndex: 3,
        explanation: "The holy book of the Sikh religion is Guru Granth Sahib. It serves as the central religious scripture for Sikhs, containing the teachings of Sikh Gurus and other spiritual leaders."
    ),

    Question(
        questionText: "The basic purpose of the formulation Din-i-Ilahi was",
        options: ["Universal brotherhood", "Universal faith", "Universal harmony", "Universal belief"],
        correctAnswerIndex: 1,
        explanation: "The basic purpose of the formulation Din-i-Ilahi was universal faith. Din-i-Ilahi, introduced by Akbar, aimed at fostering a syncretic and inclusive spiritual movement that transcended religious boundaries."
    ),

    Question(
        questionText: "Who wrote 'Ain-i-Akbari,' the great historical work?",
        options: ["Abut raze", "Amir Khusrau", "Firoz Shah", "Abdul Rashid"],
        correctAnswerIndex: 0,
        explanation: "The great historical work 'Ain-i-Akbari' was written by Abu'l Fazl. It provides a comprehensive account of the administration, culture, and society during Akbar's reign."
    ),

    Question(
        questionText: "Tansen, a great musician of his times, was in the Court of",
        options: ["Jahangir", "Akbar", "Shah Jahan", "Bahadur Shah"],
        correctAnswerIndex: 1,
        explanation: "Tansen, a great musician, was in the Court of Akbar. Known for his exceptional musical talents, Tansen's association with Akbar's court contributed to the cultural richness of the Mughal era."
    ),

    Question(
        questionText: "The famous Bhakti Saint who belonged to the royal family of Mewar was",
        options: ["Chaitanya", "Andal", "Meerabai", "Ramabai"],
        correctAnswerIndex: 2,
        explanation: "The famous Bhakti Saint who belonged to the royal family of Mewar was Meerabai. Her devotional poetry and unwavering devotion to Lord Krishna have left an indelible mark on Indian spiritual literature."
    ),

    Question(
        questionText: "Which one is not situated at Fatehpur Sikri?",
        options: ["The Panch Mahal", "Moti Masjid", "Tomb of Salim Chishti", "The Mariam Palace"],
        correctAnswerIndex: 1,
        explanation: "Moti Masjid is not situated at Fatehpur Sikri. Fatehpur Sikri is renowned for its architectural splendors, including structures like the Panch Mahal, Tomb of Salim Chishti, and the Mariam Palace."
    ),

    Question(
        questionText: "Which Khilji ruler killed his father-in-law to ascend the throne of Delhi?",
        options: ["Qutb-ud-din Aibak", "Jalal-ud-din Khilji", "Ghiyas-ud-din", "Ala-ud-din Khilji"],
        correctAnswerIndex: 3,
        explanation: "Ala-ud-din Khilji killed his father-in-law to ascend the throne of Delhi. This event marked a significant turning point in the history of the Delhi Sultanate."
    ),

    Question(
        questionText: "The court language of the Delhi Sultanate was",
        options: ["Urdu", "Persian", "Hindi", "Arabic"],
        correctAnswerIndex: 1,
        explanation: "The court language of the Delhi Sultanate was Persian. Persian was the language of administration, culture, and literature during the medieval period in the Delhi Sultanate."
    ),

    Question(
        questionText: "Which of the following was the founder of the house of Peshawar?",
        options: ["Ramachandra Pant", "Balaji Vishwanath", "Balaji Baji Rao", "Parsuram Triamsuk"],
        correctAnswerIndex: 1,
        explanation: "The founder of the house of Peshawar was Balaji Vishwanath. He played a crucial role in the establishment and consolidation of Maratha power in the region."
    ),

    Question(
        questionText: "Who built 'Adhai Din Ka Jhopra' or 'A hut of two and a half days' at Ajmeer?",
        options: ["Qutbuddin Aibak", "Balban", "Alauddin Khalji", "Muhammad-bin-Thghlaq"],
        correctAnswerIndex: 0,
        explanation: "Qutbuddin Aibak built 'Adhai Din Ka Jhopra' at Ajmeer. This structure is known for its unique architecture and historical significance."
    ),

    Question(
        questionText: "Name the language that was designated as the 'Camp Language' during the Medieval Period",
        options: ["Sanskrit", "Pali", "Hindi", "Urdu"],
        correctAnswerIndex: 3,
        explanation: "Urdu was designated as the 'Camp Language' during the Medieval Period. It emerged as a language of communication and cultural exchange among diverse linguistic communities."
    ),

    Question(
        questionText: "Who was the founder of the city of Agra?",
        options: ["Firoz Tiighlaq", "Mohammed-bin-Tughlaq", "Alauddin Khilji", "Sikandar Lodi"],
        correctAnswerIndex: 3,
        explanation: "The founder of the city of Agra was Sikandar Lodi. Agra later became a prominent center of Mughal architecture and culture."
    ),

    Question(
        questionText: "Ibn Batuta visited India during the reign of",
        options: ["Iltutmish", "Ala-ud-din Khalji", "Muhammad bin Tughluq", "Balban"],
        correctAnswerIndex: 2,
        explanation: "Ibn Batuta visited India during the reign of Muhammad bin Tughluq. His extensive travels provide valuable insights into the medieval Indian socio-cultural landscape."
    ),

    Question(
        questionText: "What was the original name of Nur Jahan?",
        options: ["Zeb-un-Nissa", "Fatima Begum", "Mehr-un-Nissa", "Jahanara"],
        correctAnswerIndex: 2,
        explanation: "The original name of Nur Jahan was Mehr-un-Nissa. She played a significant role in the Mughal court and was known for her political acumen and cultural patronage."
    ),

    Question(
        questionText: "Which of the following monuments is the oldest?",
        options: ["Qutub Minar", "Khajuraho", "Ajanta Caves", "Taj Mahal"],
        correctAnswerIndex: 2,
        explanation: "Ajanta Caves is the oldest monument among the given options. The caves showcase ancient Buddhist rock-cut architecture and paintings."
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
    home: medievalHistory_11(),
  ));
}

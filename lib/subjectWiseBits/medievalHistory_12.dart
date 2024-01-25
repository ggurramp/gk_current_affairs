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

class medievalHistory_12 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_12({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_12> createState() => _medievalHistory_12State();
}

class _medievalHistory_12State extends State<medievalHistory_12> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Which Sultan described himself as 'The Second Alexander' (Sikander-i-Sant)?",
        options: ["Balban", "Alauddin Khilji", "Muhammad bin Tughluq", "Sikander Lodi"],
        correctAnswerIndex: 1,
        explanation: "Alauddin Khilji described himself as 'The Second Alexander' (Sikander-i-Sant). This title reflects his military ambitions and conquests, drawing a parallel with the legendary conqueror Alexander the Great."
    ),

    Question(
        questionText: "What was the name of the Hall of Worship constructed by Akbar?",
        options: ["Diwan-e-Khas", "Diwan-e-Aam", "Ibadat Khana", "Buland Darwaza"],
        correctAnswerIndex: 2,
        explanation: "The Hall of Worship constructed by Akbar was called 'Ibadat Khana.' This architectural marvel served as a place for religious discussions and debates among scholars of different faiths during Akbar's reign."
    ),

    Question(
        questionText: "Which is the tallest of all Medieval Indian temples?",
        options: ["Kailasa Temple at Ellora", "Sun Temple at Konark", "Nilakantheswara Temple at Udaipur", "Brihadeswara Temple at Tanjore"],
        correctAnswerIndex: 3,
        explanation: "The tallest of all Medieval Indian temples is the Brihadeswara Temple at Tanjore. This masterpiece of Chola architecture stands as a testament to the artistic and engineering prowess of ancient India."
    ),

    Question(
        questionText: "A renowned Jain scholar greatly honored by Akbar was",
        options: ["Hemachandra", "Harivijaya", "Vastupala", "Bhadrabahu"],
        correctAnswerIndex: 1,
        explanation: "A renowned Jain scholar greatly honored by Akbar was Harivijaya. Akbar's patronage of scholars from diverse religious backgrounds contributed to the cultural and intellectual vibrancy of his court."
    ),

    Question(
        questionText: "Multan was named by the Arabs as",
        options: ["City of beauty", "City of wealth", "City of gold", "Pink city"],
        correctAnswerIndex: 2,
        explanation: "Multan was named by the Arabs as the 'City of gold.' This name reflects the city's historical significance as a center of trade and prosperity in the region."
    ),

    Question(
        questionText: "By which treaty did Shivaji cede forts to the Mughals?",
        options: ["Chittor", "Pune", "Purandar", "Torna"],
        correctAnswerIndex: 2,
        explanation: "Shivaji ceded the forts to the Mughals by the treaty of Purandar. This treaty marked a diplomatic agreement between Shivaji and the Mughal Empire, shaping the political dynamics of the time."
    ),

    Question(
        questionText: "The writer of Ram Charit Manas, Tulsidas, was related to which ruler?",
        options: ["Chandragupta Maurya", "Nawab Vajid Ali Sah", "Harsha", "Akbar"],
        correctAnswerIndex: 3,
        explanation: "Tulsidas, the writer of Ram Charit Manas, was related to Akbar. This association highlights the influence of literature and culture in the Mughal court during Akbar's reign."
    ),

    Question(
        questionText: "Which Mughal monarch vividly described Indian flora & fauna, seasons, fruits etc., in his diary?",
        options: ["Akbar", "Jahangir", "Babur", "Aurangzeb"],
        correctAnswerIndex: 2,
        explanation: "Babur, the Mughal monarch, vividly described Indian flora & fauna, seasons, fruits, etc., in his diary. His detailed observations provide valuable insights into the natural and cultural aspects of the Indian subcontinent during the 16th century."
    ),

    Question(
        questionText: "Match the capitals of the ruling dynasties of early Medieval India: Pratiharas, Chandellas, Parmars, Chalukyas",
        options: ["Kannauj, Khajuraho, Dhar, Anhilwad", "Kannauj, Dhar, Anhilwad, Khajuraho", "Khajuraho, Anhilwad, Kannauj, Dhar", "Anhilwad, Kannauj, Dhar, Khajuraho"],
        correctAnswerIndex: 0,
        explanation: "The correct match is Pratiharas - Kannauj, Chandellas - Khajuraho, Parmars - Dhar, Chalukyas - Anhilwad."
    ),

    Question(
        questionText: "In which town is 'Moti Masjid' situated?",
        options: ["Agra", "Jaipur", "Lahore", "Ahmedabad"],
        correctAnswerIndex: 0,
        explanation: "'Moti Masjid' is situated in Agra. This architectural gem is part of the Agra Fort complex, showcasing the grandeur of Mughal craftsmanship."
    ),

    Question(
        questionText: "Who got the Gita translated into Persian?",
        options: ["Shah Jahan", "Akbar", "Murad", "Dara Shikoh"],
        correctAnswerIndex: 3,
        explanation: "Dara Shikoh got the Gita translated into Persian. His scholarly pursuits aimed at exploring the commonalities between Hindu and Islamic philosophies."
    ),

    Question(
        questionText: "Todar Mal, the brilliant revenue officer, served under:",
        options: ["Sher Shah", "Bhagwan Das", "Humayun", "Baz Bahadur"],
        correctAnswerIndex: 0,
        explanation: "Todar Mal, the brilliant revenue officer, served under Sher Shah. His expertise in revenue administration contributed to the efficiency of Sher Shah's administration."
    ),

    Question(
        questionText: "During Akbar's reign, the Mahabharat was translated into Persian and is known as",
        options: ["Iqbal Namah", "Razm Namah", "Akbar Namah", "Sakinat-ul-Auliys"],
        correctAnswerIndex: 1,
        explanation: "During Akbar's reign, the Mahabharat was translated into Persian and is known as 'Razm Namah.' This translation reflects Akbar's interest in promoting cultural exchange and understanding among diverse communities."
    ),

    Question(
        questionText: "Krishnadevaraya built the Krishnaswami temple in Hampi, situated in the present state of:",
        options: ["Karnataka", "Calcutta", "Jammu and Kashmir", "Kerala"],
        correctAnswerIndex: 0,
        explanation: "Krishnadevaraya built the Krishnaswami temple in Hampi, which is situated in Karnataka. The temple stands as a testimony to the Vijayanagara Empire's architectural and cultural achievements."
    ),

    Question(
        questionText: "Who wrote Akbarnama?",
        options: ["Akbar", "Birbal", "Abul Fazal", "Bhagavan Das"],
        correctAnswerIndex: 2,
        explanation: "Akbarnama was written by Abul Fazal. This historical account provides insights into the life and reign of Akbar, commissioned by the emperor himself."
    ),

    Question(
        questionText: "'Khalsa' was founded by",
        options: ["Guru Gobind Singh", "Guru Ramdas", "Guru Nanak", "Arjun Dev"],
        correctAnswerIndex: 0,
        explanation: "'Khalsa' was founded by Guru Gobind Singh. The Khalsa played a significant role in Sikh history and identity."
    ),

    Question(
        questionText: "Which Mughal Emperor transferred the Mughal Capital from Agra to Delhi?",
        options: ["Jahangir", "Aurangzeb", "Shahjahan", "Bahadur Shah"],
        correctAnswerIndex: 2,
        explanation: "Mughal Emperor Shahjahan transferred the Mughal Capital from Agra to Delhi. This shift had architectural implications, leading to the construction of iconic structures such as the Red Fort and Jama Masjid in Delhi."
    ),

    Question(
        questionText: "Who among the following was the last Mughal emperor?",
        options: ["Alaingir II", "Shah Alam II", "Bahadur Shah II", "Akbar II"],
        correctAnswerIndex: 2,
        explanation: "The last Mughal emperor was Bahadur Shah II. His reign marked the end of the Mughal Empire, witnessing significant historical events like the Indian Rebellion of 1857."
    ),

    Question(
        questionText: "The Sultans of which dynasty ruled for the longest time?",
        options: ["Khilji dynasty", "Tughluq dynasty", "Slave dynasty", "Lodi dynasty"],
        correctAnswerIndex: 1,
        explanation: "The Sultans of the Tughluq dynasty ruled for the longest time. This dynasty, known for its administrative reforms, faced challenges such as the revolts of peasants and nobles during its rule."
    ),

    Question(
        questionText: "Sher Shah defeated Humayun and captured Gaur in the battle of",
        options: ["Ghaghra in 1529 A.D.", "Chausa in 1539 A.D.", "Panipat in 1526 A.D.", "Khanwa in 1527 A.D."],
        correctAnswerIndex: 1,
        explanation: "Sher Shah defeated Humayun and captured Gaur in the battle of Chausa in 1539 A.D. This victory played a crucial role in Sher Shah's rise to power and establishment of the Sur dynasty."
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
    home: medievalHistory_12(),
  ));
}

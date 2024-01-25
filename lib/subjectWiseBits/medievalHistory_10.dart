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

class medievalHistory_10 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_10({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_10> createState() => _medievalHistory_10State();
}

class _medievalHistory_10State extends State<medievalHistory_10> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Head of the military department under the recognized central machinery of administration during Akbar's reign was:",
        options: ["Diwan", "Mir Bakshi", "Mir Saman", "Bakshi"],
        correctAnswerIndex: 1,
        explanation: "Head of the military department under the recognized central machinery of administration during Akbar's reign was Mir Bakshi. The Mir Bakshi was responsible for the organization and leadership of the imperial army."
    ),

    Question(
        questionText: "The members of Shivaji's Ashtapradhan who looked after foreign affairs were:",
        options: ["Peshwa", "Sachiv", "Pandit Rao", "Sumant"],
        correctAnswerIndex: 3,
        explanation: "Among the members of Shivaji's Ashtapradhan, Sumant looked after foreign affairs. Sachiv was the minister in charge of royal correspondence, and Pandit Rao was in charge of religious matters."
    ),

    Question(
        questionText: "Which of the following languages was in vogue during the Mughal period in the courts of India?",
        options: ["French", "Persian", "Portuguese", "Arabic"],
        correctAnswerIndex: 1,
        explanation: "During the Mughal period, Persian was in vogue in the courts of India. Persian served as the official language for administration, culture, and communication in the Mughal courts."
    ),

    Question(
        questionText: "The only Hindu Courtier of Akbar who accepted Din-i-Ilahi was:",
        options: ["Todermal", "Birbal", "Tansen", "Man Singh"],
        correctAnswerIndex: 1,
        explanation: "The only Hindu Courtier of Akbar who accepted Din-i-Ilahi was Birbal. Birbal, also known as Raja Birbal, was a close advisor and confidant of Emperor Akbar."
    ),

    Question(
        questionText: "Who was called the 'Second founder of the Maratha Kingdom'?",
        options: ["Raja Ram", "Balaji Viswanath", "Baji Rao I", "Balaji Baji Rao"],
        correctAnswerIndex: 2,
        explanation: "Baji Rao I was called the 'Second founder of the Maratha Kingdom.' His military campaigns and administrative reforms played a crucial role in expanding and consolidating the Maratha Empire."
    ),

    Question(
        questionText: "The Upanishads were translated by Dara Shikoh in Persian under the title of",
        options: ["Mayma-ul-Bahrain", "Sirr-i-Akbar", "Al-Fihrist", "Kitabul Bayan"],
        correctAnswerIndex: 1,
        explanation: "Dara Shikoh translated the Upanishads into Persian under the title of Sirr-i-Akbar. This work aimed to bridge the philosophical and spiritual traditions of Hinduism and Islam."
    ),

    Question(
        questionText: "Famous Battle of Talikota was fought in",
        options: ["1565 A.D.", "1575 A.D.", "1585 A.D.", "1570 A.D."],
        correctAnswerIndex: 0,
        explanation: "The famous Battle of Talikota was fought in 1565 A.D. This battle had a significant impact on the Deccan region and led to the decline of the Vijayanagara Empire."
    ),

    Question(
        questionText: "Which of the following are incorrectly paired?",
        options: ["Krishnadeva Raya - Amukta Malyada", "Harshavardhana - Nagananda", "Kalidasa - Ritusamhara", "Visakhadatta - Kiratarjuniyam"],
        correctAnswerIndex: 3,
        explanation: "The incorrect pairing is Visakhadatta - Kiratarjuniyam. Visakhadatta was the author of Mudrarakshasa, not Kiratarjuniyam."
    ),

    Question(
        questionText: "The Delhi Sultan who fell to his death while playing polo was",
        options: ["Qutbuddin Aibak", "Alauddin Khilji", "Feroz Shah Tughlaq", "Ghiasuddin Tughlaq"],
        correctAnswerIndex: 0,
        explanation: "The Delhi Sultan who fell to his death while playing polo was Qutbuddin Aibak. This incident marked the end of the Slave Dynasty and the beginning of the Khalji Dynasty."
    ),

    Question(
        questionText: "Who built Purana Quilla?",
        options: ["Akbar", "Shershah", "Aurangzeb", "Babar"],
        correctAnswerIndex: 1,
        explanation: "Purana Quilla was built by Shershah. It is one of the historical forts in Delhi and showcases Shershah's architectural prowess."
    ),

    Question(
        questionText: "Mughal presence in the Red Ford ceased with the fall of",
        options: ["Aurangzeb", "Muhammad Shah", "Shah Alam", "Bahadur Shah Zafar"],
        correctAnswerIndex: 3,
        explanation: "Mughal presence in the Red Ford ceased with the fall of Bahadur Shah Zafar. This event marked the end of the Mughal Empire and the beginning of the British Raj."
    ),

    Question(
        questionText: "The Sufi saint who maintained that devotional music was one way of moving closer to God was",
        options: ["Muin-ud-din-Chisti", "Baba Farid", "Saiyid Muharnmed", "Shah Alam Bukhari"],
        correctAnswerIndex: 1,
        explanation: "The Sufi saint who maintained that devotional music was one way of moving closer to God was Baba Farid. Sufi saints often used music and poetry as a means of expressing their spiritual teachings."
    ),

    Question(
        questionText: "Who was the first Vijayanagar ruler to wrest the important fort of Goa from the Bahamanis?",
        options: ["Reva Rayall", "Harihara I", "Harihara II", "Bukka I"],
        correctAnswerIndex: 2,
        explanation: "The first Vijayanagar ruler to wrest the important fort of Goa from the Bahamanis was Harihara II. This marked a strategic victory for the Vijayanagara Empire."
    ),

    Question(
        questionText: "The first Bhakti Movement was organized by",
        options: ["Nanak", "Meera", "Ramdas", "Ramanujacharya"],
        correctAnswerIndex: 3,
        explanation: "The first Bhakti Movement was organized by Ramanujacharya. He was a prominent theologian and philosopher who played a key role in the development of the Bhakti movement."
    ),

    Question(
        questionText: "The Market Regulation system was introduced by",
        options: ["Muhammad-Bin Tughlaq", "Iltutmish", "Ala-ud-din-Khilji", "Ghias-ud-din"],
        correctAnswerIndex: 2,
        explanation: "The Market Regulation system was introduced by Ala-ud-din-Khilji. He implemented various economic reforms during his reign, including measures to regulate markets and control prices."
    ),

    Question(
        questionText: "What was the official language of the Sultanate?",
        options: ["Persian", "Urdu", "Arabic", "Hindi"],
        correctAnswerIndex: 0,
        explanation: "The official language of the Sultanate was Persian. Persian was the language of administration and culture during the Delhi Sultanate."
    ),

    Question(
        questionText: "Who was the author of Gita Govinda?",
        options: ["Jayadeva", "Kalhana", "Kalidasa", "Raja Rao"],
        correctAnswerIndex: 0,
        explanation: "Jayadeva was the author of Gita Govinda. It is a renowned Sanskrit work that celebrates the divine love between Radha and Krishna."
    ),

    Question(
        questionText: "The Sikh military sect 'the Khalsa' was introduced by",
        options: ["Har Rai", "Harkishan", "Gobind Singh", "Tegh Bahadur"],
        correctAnswerIndex: 2,
        explanation: "The Sikh military sect 'the Khalsa' was introduced by Gobind Singh. The Khalsa played a crucial role in the defense of Sikhism and the establishment of the Sikh Empire."
    ),

    Question(
        questionText: "Muhammad-Bin-Tughlaq was proficient in",
        options: ["Art", "Music", "Calligraphy", "Philosophy"],
        correctAnswerIndex: 3,
        explanation: "Muhammad-Bin-Tughlaq was proficient in Philosophy. He was known for his intellectual pursuits, including interest in logic, philosophy, and other scholarly disciplines."
    ),

    Question(
        questionText: "Where was saint Kabir born?",
        options: ["Delhi", "Varanasi", "Mathura", "Hyderabad"],
        correctAnswerIndex: 1,
        explanation: "Saint Kabir was born in Varanasi. Kabir is one of the most revered saints in the Bhakti movement, known for his philosophical and devotional poetry."
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
    home: medievalHistory_10(),
  ));
}

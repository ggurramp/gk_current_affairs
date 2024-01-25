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

class medievalHistory_8 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_8({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_8> createState() => _medievalHistory_8State();
}

class _medievalHistory_8State extends State<medievalHistory_8> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
        questionText: "Who described the Din-i-Ilahi as the monument of Akbar's folly?",
        options: ["Badaoni", "Faizy", "V. A. Smith", "Elliot"],
        correctAnswerIndex: 2,
        explanation: "V. A. Smith described the Din-i-Ilahi as the monument of Akbar's folly."
    ),

    Question(
        questionText: "Who founded Sikhism?",
        options: ["Nanak", "Hargovind", "Gobind Singh", "Ramdas"],
        correctAnswerIndex: 0,
        explanation: "Sikhism was founded by Nanak."
    ),

    Question(
        questionText: "India's earliest contact with Islam came through",
        options: ["Arab merchants of Malabar coast", "Sufi saints and Arab travelers", "Arab invasion of Sindh in the seventh century", "Turkish invasions of the eleventh-twelfth centuries"],
        correctAnswerIndex: 0,
        explanation: "India's earliest contact with Islam came through Arab merchants of the Malabar coast."
    ),

    Question(
        questionText: "Who succeeded Murshid Quli Khan as the ruler of Bengal?",
        options: ["Alivardi Khan", "Shujauddin", "Sarfaraz Khan", "Shaukat Jung"],
        correctAnswerIndex: 1,
        explanation: "Shujauddin succeeded Murshid Quli Khan as the ruler of Bengal."
    ),

    Question(
        questionText: "Who introduced the Duh-Aspah Sih-Aspah system?",
        options: ["Jahangir", "Aurangzeb", "Shah Jahan", "Akbar"],
        correctAnswerIndex: 0,
        explanation: "Jahangir introduced the Duh-Aspah Sih-Aspah system."
    ),

    Question(
        questionText: "The capital of Tipu Sultan was at",
        options: ["Sringeri", "Belur", "Mysore", "Seringapattam"],
        correctAnswerIndex: 3,
        explanation: "The capital of Tipu Sultan was at Seringapattam."
    ),

    Question(
        questionText: "Nawab of Bengal who transferred the Capital from Dacca to Murshidabad was",
        options: ["Murshid-Quli-Khan", "Akbar", "Mirkashim", "Sirajuddaulah"],
        correctAnswerIndex: 0,
        explanation: "Nawab of Bengal who transferred the Capital from Dacca to Murshidabad was Murshid-Quli-Khan."
    ),

    Question(
        questionText: "Who organized the 'Council of Barabhais'?",
        options: ["Mahadji Scindia", "Nana Phadnavis", "Madhav Rao Narayan", "Baji Rao II"],
        correctAnswerIndex: 1,
        explanation: "Nana Phadnavis organized the 'Council of Barabhais'."
    ),

    Question(
        questionText: "Which historian is famous for his research on Mughal History?",
        options: ["Sushobhan Chandra Sarkar", "S. Gopal", "Sumit Sarkar", "Jadunath Sarkar"],
        correctAnswerIndex: 3,
        explanation: "Jadunath Sarkar is famous for his research on Mughal History."
    ),

    Question(
        questionText: "The Third Battle of Panipat was fought between",
        options: ["Sikhs and Jats", "Pathans and Satnamis", "Marathas and Afghans", "British and Rohillas"],
        correctAnswerIndex: 2,
        explanation: "The Third Battle of Panipat was fought between Marathas and Afghans."
    ),

    Question(
        questionText: "Who said: 'Sab Lal ho Jayega'?",
        options: ["Tegh Bahadur", "Ranjit Singh", "Guru Gobind Sing", "Ajit Singh"],
        correctAnswerIndex: 1,
        explanation: "'Sab Lal ho Jayega' was said by Ranjit Singh."
    ),

    Question(
        questionText: "Lilavati was translated into Persian by",
        options: ["Dasa", "Abu Talib Kasim", "Faizi", "Abul Fazi"],
        correctAnswerIndex: 2,
        explanation: "Lilavati was translated into Persian by Faizi."
    ),

    Question(
        questionText: "What did the Sikh mean by Misl?",
        options: ["A political unit", "A book", "A tax", "Area Conquered by them"],
        correctAnswerIndex: 0,
        explanation: "Misl means a political unit."
    ),

    Question(
        questionText: "Who was the Hindu ruler defeated in the Second Battle of Terrain?",
        options: ["Joypal", "Raja Shankar", "Lakshmansena", "Prithviraj"],
        correctAnswerIndex: 3,
        explanation: "The Hindu ruler defeated in the Second Battle of Terrain was Prithviraj."
    ),

    Question(
        questionText: "Ahaliya Bai belonged to the family of the",
        options: ["Sindhia", "Bhosle", "Holkar", "Gaekward"],
        correctAnswerIndex: 2,
        explanation: "Ahaliya Bai belonged to the family of Holkar."
    ),

    Question(
        questionText: "Who were the participants in the tripartite struggle in northern India from the 8th to the 10th Century?",
        options: ["Cholas, Pratiharas, Rashtrakutas", "Palas, Cholas, Rashtrakutas", "Palas, Cholas, Pallavas", "Palas, Pratiharas, Rashtrakutas"],
        correctAnswerIndex: 3,
        explanation: "The participants in the tripartite struggle in northern India from the 8th to the 10th Century were Palas, Pratiharas, Rashtrakutas."
    ),

    Question(
        questionText: "Ranjit Singh was a leader of the",
        options: ["Kanheyamisl", "Gobindmisl", "Sukerchakia misl", "Bhangi misl"],
        correctAnswerIndex: 2,
        explanation: "Ranjit Singh was a leader of the Sukerchakia misl."
    ),

    Question(
        questionText: "'Ram Rahim ek hai, nam dhara hai do' who preached during the Sultanate?",
        options: ["Nanak", "Dadu", "Sri Chaitanya", "Kabir"],
        correctAnswerIndex: 3,
        explanation: "'Ram Rahim ek hai, nam dhara hai do' was preached by Kabir."
    ),

    Question(
        questionText: "Who among the following was not involved in the conspiracy against Siraj-ud-Daulah?",
        options: ["Mohanlal", "Clive", "Manikchand", "Omichand"],
        correctAnswerIndex: 0,
        explanation: "Mohanlal was not involved in the conspiracy against Siraj-ud-Daulah."
    ),

    Question(
        questionText: "Which Muslim invader conquered Bengal during the time of Lakshmanasena?",
        options: ["Qutbuddin Aibak", "Iltutmish", "Muhammad Ghori", "Bakhtiyar Khilji"],
        correctAnswerIndex: 3,
        explanation: "Bakhtiyar Khilji conquered Bengal during the time of Lakshmanasena."
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
    home: medievalHistory_8(),
  ));
}

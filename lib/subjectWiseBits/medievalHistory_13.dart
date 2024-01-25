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

class medievalHistory_13 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_13({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_13> createState() => _medievalHistory_13State();
}

class _medievalHistory_13State extends State<medievalHistory_13> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "From which European power did Shivaji obtain cannons and ammunition?",
        options: ["The French", "The Portuguese", "The Dutch", "The English"],
        correctAnswerIndex: 1,
        explanation: "Shivaji obtained cannons and ammunition from The Portuguese. This strategic move played a crucial role in enhancing his military capabilities and strengthening the Maratha Empire."
    ),

    Question(
        questionText: "Who was sent as an ambassador to the royal court of Jahangir by James I, the then king of England?",
        options: ["John Hawkins", "William Todd", "Sir Thomas Roe", "Sir Walter Raleigh"],
        correctAnswerIndex: 0,
        explanation: "John Hawkins was sent as an ambassador to the royal court of Jahangir by James I. This diplomatic mission aimed to foster relations between the Mughal Empire and England."
    ),

    Question(
        questionText: "What was the capital of Shivaji?",
        options: ["Poona", "Raigarh", "Singhgarh", "Panhala"],
        correctAnswerIndex: 1,
        explanation: "Raigarh was the capital of Shivaji. This hill fort served as the center of Maratha power and witnessed significant historical events during Shivaji's reign."
    ),

    Question(
        questionText: "What is Bijapur known for?",
        options: ["Severe drought condition", "Gol Gumbaz", "Heavy rainfall", "Statue of Gomateswara"],
        correctAnswerIndex: 1,
        explanation: "Bijapur is known for Gol Gumbaz. This mausoleum, with its iconic dome, is a prominent architectural landmark in Bijapur, Karnataka."
    ),

    Question(
        questionText: "Match the following historical structures with their builders: Tughlaqabad Fort, Red Fort (at Delhi), The City of Siri, Qutb Minar",
        options: ["Alauddin Khilji, Shah Jahan, Iltutmish, Ghlyas-ud-din-Tughlaq", "Ghlyas-ud-din-Tughlaq, Shah Jahan, Alauddin Khilji, Iltutmish", "Ghlyas-ud-din-Tughlaq, Shah Jahan, Iltutmish, Alauddin Khilji", "Iltutmish, Shah Jahan, Ghlyas-ud-din-Tughlaq, Alauddin Khilji"],
        correctAnswerIndex: 2,
        explanation: "The correct match is Tughlaqabad Fort - Ghlyas-ud-din-Tughlaq, Red Fort (at Delhi) - Shah Jahan, The City of Siri - Alauddin Khilji, Qutb Minar - Iltutmish."
    ),

    Question(
        questionText: "Who was the innovator of the Revenue settlement during the rule of Akbar?",
        options: ["Raja Mansingh", "Raja Bhagwan Das", "Raja Todarmal", "Raja Birbal"],
        correctAnswerIndex: 2,
        explanation: "The innovator of the Revenue settlement during the rule of Akbar was Raja Todarmal. His systematic approach to revenue administration significantly contributed to the stability of the Mughal Empire."
    ),

    Question(
        questionText: "Which of the following pairs is incorrect?",
        options: ["Babar vs. Sangram Singh", "Sher Shah vs. Humayun", "Chengiz Khan vs. Alauddin Khilji", "Akbar vs. Hemu"],
        correctAnswerIndex: 2,
        explanation: "The incorrect pair is Chengiz Khan vs. Alauddin Khilji. Chengiz Khan, the founder of the Mongol Empire, did not engage in direct conflict with Alauddin Khilji."
    ),

    Question(
        questionText: "Who built the 'Kirti Stambha' (Tower of Victory) at Chittor?",
        options: ["Rana Pratap", "Rana Kumbha", "Rana Sanga", "Bappa Raval"],
        correctAnswerIndex: 1,
        explanation: "The 'Kirti Stambha' at Chittor was built by Rana Kumbha. This tower stands as a symbol of Rajput valor and victory."
    ),

    Question(
        questionText: "The second Battle of Panipat was fought between whom?",
        options: ["Akbar and Hemu", "Rajputs and Mughals", "Babur and Ibrahim Lodi", "Sikander and Adilshah"],
        correctAnswerIndex: 0,
        explanation: "The second Battle of Panipat was fought between Akbar and Hemu. This battle was a significant conflict between the Mughal Empire and the forces led by Hemu during the 16th century."
    ),

    Question(
        questionText: "Din-i-Ilahi' was the new religion started by whom?",
        options: ["Humayun", "Jahangir", "Akbar", "Shahjahan"],
        correctAnswerIndex: 2,
        explanation: "Din-i-Ilahi' was the new religion started by Akbar. This syncretic religion aimed at incorporating elements from various faiths and fostering religious tolerance within the Mughal Empire."
    ),

    Question(
        questionText: "Where did Aurangzeb die?",
        options: ["Pune", "Aurangabad", "Ahmad Nagar", "Mumbai"],
        correctAnswerIndex: 2,
        explanation: "Aurangzeb died in Ahmad Nagar. His death marked the end of a long and eventful reign, during which the Mughal Empire faced challenges and transformations."
    ),

    Question(
        questionText: "Which Sultan of Delhi tried to prohibit sati?",
        options: ["Alauddin Khilji", "Mohammad Bin Tughlaq", "Jalauddin Khilji", "Firoz Tughlaq"],
        correctAnswerIndex: 1,
        explanation: "Mohammad Bin Tughlaq tried to prohibit sati. His reign was characterized by various administrative reforms and initiatives."
    ),

    Question(
        questionText: "Where is the Muslim mosque situated where a hair of Prophet Mohammad Saheb has been preserved?",
        options: ["Ajmer", "Ahmedabad", "Srinagar", "Mecca"],
        correctAnswerIndex: 2,
        explanation: "The Muslim mosque where a hair of Prophet Mohammad Saheb has been preserved is situated in Srinagar. This mosque holds religious significance for the Muslim community."
    ),

    Question(
        questionText: "Who wrote Rajatarangini?",
        options: ["Kalhana", "Alberuni", "Harsha Vardhana", "Kautilya"],
        correctAnswerIndex: 0,
        explanation: "Rajatarangini was written by Kalhana. This historical chronicle provides valuable insights into the history of Kashmir."
    ),

    Question(
        questionText: "Who was Akbar's famous revenue minister?",
        options: ["Tansen", "Todarmal", "Rana Pratap Singh", "Humayun"],
        correctAnswerIndex: 1,
        explanation: "Akbar's famous revenue minister was Todarmal. His contributions to revenue administration and fiscal policies played a key role in the economic stability of the Mughal Empire."
    ),

    Question(
        questionText: "Which Sultan of Delhi established an employment bureau, a charity bureau, and a charitable hospital?",
        options: ["Firoz Tughlaq", "Mohammad Tughlaq", "Alauddin Khilji", "Balban"],
        correctAnswerIndex: 0,
        explanation: "Firoz Tughlaq established an employment bureau, a charity bureau, and a charitable hospital. His reign was marked by various social welfare initiatives."
    ),

    Question(
        questionText: "Before assuming the office of the Sultan of Delhi, Balban was the Prime Minister of which Sultan?",
        options: ["Nasir-ud-din", "Qutub-ud-din-Aibak", "Bahram Shah", "Aram Shah"],
        correctAnswerIndex: 0,
        explanation: "Before assuming the office of the Sultan of Delhi, Balban was the Prime Minister of Sultan Nasir-ud-din. His role in the administration paved the way for his eventual ascent to the throne."
    ),

    Question(
        questionText: "During which reign did painting reach its highest level of development in the Mughal Empire?",
        options: ["Akbar", "Aurangzeb", "Jahangir", "Shah Jahan"],
        correctAnswerIndex: 2,
        explanation: "Painting reached its highest level of development during the reign of Jahangir. The Mughal school of painting flourished, producing exquisite artworks and manuscripts."
    ),

    Question(
        questionText: "Who built the Khajuraho temples?",
        options: ["Holkars", "Scindias", "Bundela Rajputs", "Chandela Rajputs"],
        correctAnswerIndex: 3,
        explanation: "The Khajuraho temples were built by the Chandela Rajputs. These temples are renowned for their intricate and sensuous sculptures."
    ),

    Question(
        questionText: "During the reign of which Mughal ruler did Mughal painting reach its zenith?",
        options: ["Akbar", "Jahangir", "Shahjahan", "Aurangzeb"],
        correctAnswerIndex: 1,
        explanation: "During the reign of Jahangir, Mughal painting reached its zenith. The emperor's patronage of the arts led to the creation of some of the most iconic works in the Mughal painting tradition."
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
    home: medievalHistory_13(),
  ));
}

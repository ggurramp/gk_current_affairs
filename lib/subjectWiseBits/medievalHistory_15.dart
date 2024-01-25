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

class medievalHistory_15 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_15({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_15> createState() => _medievalHistory_15State();
}

class _medievalHistory_15State extends State<medievalHistory_15> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Who was the first Muslim woman to rule Northern India?",
        options: ["Razia Sultana", "Mumtaz", "Nurjahan", "None of the above"],
        correctAnswerIndex: 0,
        explanation: "The first Muslim woman who ruled Northern India was Razia Sultana."
    ),

    Question(
        questionText: "Which historical figure pioneered Guerilla warfare?",
        options: ["Aurangzeb", "Akbar", "Shivaji", "Balaji Rao"],
        correctAnswerIndex: 2,
        explanation: "Guerilla warfare was pioneered by Shivaji."
    ),

    Question(
        questionText: "The 'Quwwat-ul-Islam' Mosque was constructed by which ruler?",
        options: ["Qutub-ud-din Aibak", "Alauddin Khilji", "Iltutmish", "Mohammad Adilshah"],
        correctAnswerIndex: 0,
        explanation: "'Quwwat-ul-Islam' Mosque was built by Qutub-ud-din Aibak."
    ),

    Question(
        questionText: "What is the modern name of the medieval city of Vijayanagar?",
        options: ["Chandragiri", "Halebidu", "Hampi", "Kondavidu"],
        correctAnswerIndex: 2,
        explanation: "The medieval city of Vijayanagar is now known as Hampi."
    ),

    Question(
        questionText: "Which of the following forts was not constructed by Akbar?",
        options: ["Gwalior Fort", "Agra Fort", "Lahore Fort", "Allahabad Fort"],
        correctAnswerIndex: 0,
        explanation: "Gwalior Fort was not built by Akbar."
    ),

    Question(
        questionText: "During whose reign was the Grand Trunk Road built?",
        options: ["Sher Shah Suri", "Babur", "Shah Jahan", "Akbar"],
        correctAnswerIndex: 0,
        explanation: "The Grand Trunk Road was built during the reign of Sher Shah Suri."
    ),

    Question(
        questionText: "Who served as Akbar's guardian?",
        options: ["Amir Khusru", "Abul Fazl", "Tansen", "Bairam Khan"],
        correctAnswerIndex: 3,
        explanation: "Bairam Khan was Akbar's guardian."
    ),

    Question(
        questionText: "With which European power did Krishnadevaraya maintain friendly relations?",
        options: ["French", "British", "Portuguese", "Dutch"],
        correctAnswerIndex: 2,
        explanation: "Krishnadevaraya maintained friendly relations with the Portuguese."
    ),

    Question(
        questionText: "Who acted as the regent of Akbar in his early days?",
        options: ["Abul Fazl", "Bairam Khan", "Tansen", "Todarmal"],
        correctAnswerIndex: 1,
        explanation: "Bairam Khan was the regent of Akbar in his early days."
    ),

    Question(
        questionText: "Among the Delhi Sultans, who pursued the policy of 'blood and iron'?",
        options: ["Alauddin Khilji", "Ghiyasuddin Tughlaq", "Balban", "Iltutmish"],
        correctAnswerIndex: 2,
        explanation: "Balban pursued the policy of 'blood and iron'."
    ),

    Question(
        questionText: "In whose reign did Tulsidas write Ramcharitmanas?",
        options: ["Babur", "Akbar", "Aurangzeb", "Jahangir"],
        correctAnswerIndex: 1,
        explanation: "Tulsidas wrote Ramcharitmanas in the reign of Akbar."
    ),

    Question(
        questionText: "Where did Babar choose to be buried?",
        options: ["Agra", "Farghana", "Samarqand", "Kabul"],
        correctAnswerIndex: 3,
        explanation: "The dead body of Babar, by his own choice, lies buried in Kabul."
    ),

    Question(
        questionText: "In which year did the 1st Battle of Panipat take place?",
        options: ["1761", "1516", "1526", "1556"],
        correctAnswerIndex: 2,
        explanation: "The 1st Battle of Panipat was fought in the year 1526."
    ),

    Question(
        questionText: "Who was the first Sultan of Delhi to attempt the conquest of South India?",
        options: ["Qutb-ud-din Mubarak", "Nasir-ud-din Khusrav Shah", "Ala-ud-din Khilji", "Jala-ud-din Firoz"],
        correctAnswerIndex: 2,
        explanation: "The first Sultan of Delhi who attempted the conquest of South India was Ala-ud-din Khilji."
    ),

    Question(
        questionText: "Which Indian king oversaw the construction of 'Rayagopurams' in front of various temples?",
        options: ["Vidyaranya", "Krishnadevaraya", "Harihara", "Rajaraja"],
        correctAnswerIndex: 1,
        explanation: "Krishnadevaraya got the monuments 'Rayagopurams' in front of the temples at Hampi, Tiruv-annamalai, Chidambaram, Srirangam, Tirupati, etc., constructed."
    ),

    Question(
        questionText: "In the Sufi tradition, what does the term 'pir' refer to?",
        options: ["The Supreme God", "The Guru of the Sufis", "The greatest of all Sufi saints", "The orthodox teacher who contests the Sufi beliefs"],
        correctAnswerIndex: 1,
        explanation: "In the Sufi tradition, a 'pir' is The Guru of the Sufis."
    ),

    Question(
        questionText: "The Dilwara temple at Mount Abu in Rajasthan was built by the followers of which religion?",
        options: ["Buddhism", "Jainism", "Hinduism", "Sikhism"],
        correctAnswerIndex: 1,
        explanation: "The Dilwara temple at Mount Abu in Rajasthan was built by the followers of Jainism."
    ),

    Question(
        questionText: "What type of land was considered 'Inam'?",
        options: ["Scholars and religious persons", "Mansabdars", "Hereditary revenue collectors", "Nobles"],
        correctAnswerIndex: 0,
        explanation: "The Inam land was one which was assigned to Scholars and religious persons."
    ),

    Question(
        questionText: "Which Indian king warmly received the Portuguese traveler Vasco-da-Gama upon his landing at Calicut?",
        options: ["Asaf Jah Ismail Mulk", "Devaraya", "Zarnorin", "Krishnadevaraya"],
        correctAnswerIndex: 2,
        explanation: "The Indian king who warmly received the Portuguese traveler Vasco-da-Gama when he landed at Calicut was Zarnorin."
    ),

    Question(
        questionText: "Who among the following was the biographer of Akbar?",
        options: ["Abul Fazi", "Faizi", "Abdul Nabi Khan", "Birbal"],
        correctAnswerIndex: 0,
        explanation: "The biographer of Akbar was Abul Fazi."
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
    home: medievalHistory_15(),
  ));
}

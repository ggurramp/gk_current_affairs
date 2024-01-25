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

class spss extends StatefulWidget {
  final String? userIdentifier;

  spss({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<spss> createState() => _spssState();
}

class _spssState extends State<spss> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//77.SPECIAL PROVISION FOR SOME STATES

    Question(
      questionText: "Which states are covered by Articles 371 to 371-J in Part XXI of the Constitution?",
      options: ["Maharashtra, Gujarat, Nagaland, Assam, Manipur, Andhra Pradesh, Telangana", "Sikkim, Mizoram, Arunachal Pradesh, Goa, Karnataka", "Maharashtra, Gujarat, Nagaland, Assam, Manipur, Andhra Pradesh, Telangana, Sikkim, Mizoram, Arunachal Pradesh, Goa, Karnataka", "Punjab, Haryana, Rajasthan, Uttar Pradesh, Bihar, West Bengal"],
      correctAnswerIndex: 2,
      explanation: "Articles 371 to 371-J in Part XXI of the Constitution contain special provisions for twelve states, including Maharashtra, Gujarat, Nagaland, Assam, Manipur, Andhra Pradesh, Telangana, Sikkim, Mizoram, Arunachal Pradesh, Goa, and Karnataka.",
    ),

    Question(
      questionText: "What is the primary intention behind the special provisions mentioned in Articles 371 to 371-J?",
      options: ["Promote economic development", "Protect cultural and economic interests of tribal people", "Deal with law and order conditions", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The special provisions in Articles 371 to 371-J aim to meet the aspirations of people in backward regions, protect the cultural and economic interests of tribal people, and address law and order conditions in certain states.",
    ),

    Question(
      questionText: "Under Article 371, what is the special responsibility given to the Governor of Maharashtra and Gujarat?",
      options: ["Environmental protection", "Law and order in the entire state", "Establishment of separate development boards", "Foreign affairs"],
      correctAnswerIndex: 2,
      explanation: "Under Article 371, the Governor of Maharashtra and Gujarat is authorized to have a special responsibility for the establishment of separate development boards for specific regions within the states.",
    ),
    Question(
      questionText: "What is the purpose of Article 371-B in relation to Assam?",
      options: ["Creation of special committees for the Hill Areas", "Securing proper functioning of committees by the Governor", "Directing the State Government on Hill Areas administration", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "Article 371-B empowers the President to provide for the creation of special committees, direct the Governor's special responsibility for proper committee functioning, and give directions to the State Government regarding Hill Areas administration in Assam.",
    ),

    Question(
      questionText: "What special provisions does Article 371-C make for Manipur?",
      options: ["Creation of committees for Tribal Areas", "Governor's special responsibility for Hill Areas committee", "Submission of annual reports by the Governor", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "Article 371-C makes special provisions for Manipur, including the creation of committees for Hill Areas, assigning special responsibility to the Governor, and requiring annual reports on the administration of Hill Areas.",
    ),

    Question(
      questionText: "Under Article 371-D, what authority does the President have in Andhra Pradesh or Telangana?",
      options: ["Establishing Administrative Tribunal", "Providing equitable opportunities and facilities", "Directing State Government on civil posts", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "Article 371-D empowers the President to provide equitable opportunities and facilities, direct the State Government on civil posts, and establish an Administrative Tribunal in Andhra Pradesh or Telangana.",
    ),

    Question(
      questionText: "Which constitutional amendment made Sikkim a full-fledged state of the Indian Union and introduced special provisions under Article 371-F?",
      options: ["26th Constitutional Amendment Act", "36th Constitutional Amendment Act", "46th Constitutional Amendment Act", "56th Constitutional Amendment Act"],
      correctAnswerIndex: 1,
      explanation: "The 36th Constitutional Amendment Act of 1975 made Sikkim a full-fledged state of the Indian Union and introduced special provisions under Article 371-F.",
    ),

    Question(
      questionText: "What is the special responsibility given to the Governor of Sikkim under Article 371-F?",
      options: ["Administrative supervision of the Legislative Assembly", "Ensuring social and economic advancement of different sections of the population", "Directing the President on legislative matters", "Reviewing Parliamentary constituency boundaries"],
      correctAnswerIndex: 2,
      explanation: "Under Article 371-F, the Governor of Sikkim has the special responsibility for peace and an equitable arrangement for ensuring the social and economic advancement of different sections of the Sikkim population, subject to the directions issued by the President.",
    ),

    Question(
      questionText: "Which matters are exempted from the application of Acts of Parliament in Mizoram, according to Article 371-G?",
      options: ["Economic policies", "Religious or social practices of the Mizos", "Administrative procedures", "Ownership and transfer of land"],
      correctAnswerIndex: 1,
      explanation: "Article 371-G specifies that Acts of Parliament related to religious or social practices of the Mizos, Mizo customary law, administration of civil and criminal justice according to Mizo customary law, and ownership and transfer of land would not apply to Mizoram unless the State Legislative Assembly decides.",
    ),

    Question(
      questionText: "What special responsibility is assigned to the Governor of Karnataka under Article 371-J?",
      options: [
        "Ensuring peace and security in the state",
        "Establishment of a separate development board for Hyderabad-Karnataka region",
        "Directing the President on legislative matters",
        "Supervising the state government"
      ],
      correctAnswerIndex: 1,
      explanation: "Under Article 371-J, the Governor of Karnataka is empowered to have a special responsibility for the establishment of a separate development board for the Hyderabad-Karnataka region.",
    ),

    Question(
      questionText: "What is one of the provisions mentioned in Article 371-J for the Hyderabad-Karnataka region?",
      options: [
        "Establishment of a Central University",
        "Equitable allocation of funds for developmental expenditure",
        "Reservation of seats in Lok Sabha",
        "Appointment of a special commissioner"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the provisions under Article 371-J for the Hyderabad-Karnataka region is the equitable allocation of funds for developmental expenditure over the region.",
    ),

    Question(
      questionText: "Which Constitutional Amendment Act introduced Article 371-J, providing special provisions for the Hyderabad-Karnataka region of Karnataka?",
      options: [
        "86th Constitutional Amendment Act",
        "98th Constitutional Amendment Act",
        "112th Constitutional Amendment Act",
        "124th Constitutional Amendment Act"
      ],
      correctAnswerIndex: 1,
      explanation: "Article 371-J, providing special provisions for the Hyderabad-Karnataka region of Karnataka, was inserted in the Constitution by the 98th Constitutional Amendment Act of 2012.",
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
    home: spss(),
  ));
}

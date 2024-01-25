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

class salientFeaturesOfTheConstitution extends StatefulWidget {
  final String? userIdentifier;

  salientFeaturesOfTheConstitution({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<salientFeaturesOfTheConstitution> createState() => _salientFeaturesOfTheConstitutionState();
}

class _salientFeaturesOfTheConstitutionState extends State<salientFeaturesOfTheConstitution> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Which governmental system does the Indian Constitution adopt, emphasizing cooperation between legislative and executive branches?",
        options: [
          "Presidential System",
          "Monarchical System",
          "Parliamentary System",
          "Unitary System"
        ],
        correctAnswerIndex: 2,
        explanation: "The Indian Constitution adopts the Parliamentary System, focusing on cooperation and coordination between the legislative and executive branches."
    ),
    Question(
        questionText: "What provision of the Indian Constitution allows the Supreme Court to declare parliamentary laws unconstitutional?",
        options: [
          "Article 368",
          "Article 356",
          "Article 44",
          "Article 131"
        ],
        correctAnswerIndex: 0,
        explanation: "Article 368 allows the Supreme Court to declare parliamentary laws unconstitutional, balancing parliamentary sovereignty and judicial supremacy."
    ),
    Question(
        questionText: "Which judicial body holds the top position in the Indian judiciary?",
        options: [
          "High Court",
          "District Court",
          "Supreme Court",
          "Constitutional Court"
        ],
        correctAnswerIndex: 2,
        explanation: "The Supreme Court holds the top position in the Indian judiciary, ensuring an integrated and independent judicial system."
    ),
    Question(
        questionText: "How many fundamental rights are guaranteed under Part III of the Indian Constitution?",
        options: [
        "Four",
        "Five",
        "Six",
        "Seven"
        ],
        correctAnswerIndex: 2,
        explanation: "Part III of the Indian Constitution guarantees six fundamental rights, promoting political democracy and restricting the powers of the executive and legislature."
    ),
    Question(
        questionText: "Are the Directive Principles of State Policy justiciable in the Indian legal system?",
        options: [
        "Yes",
        "No",
        "Sometimes",
        "Depends on the situation"
        ],
        correctAnswerIndex: 1,
        explanation: "The Directive Principles of State Policy in the Indian Constitution are non-justiciable, imposing a moral obligation on the state to apply them."
    ),
    Question(
        questionText: "Which body among the following is responsible for conducting elections in India?",
        options: [
        "Supreme Court",
        "Election Commission",
        "Union Public Service Commission",
        "Comptroller and Auditor-General"
        ],
        correctAnswerIndex: 1,
        explanation: "The Election Commission is an independent body responsible for conducting elections in India as established by the Indian Constitution."
    ),
    Question(
        questionText: "What do the elaborate provisions for national, state, and financial emergencies in the Indian Constitution safeguard?",
    options: [
        "Individual rights",
        "Sovereignty, unity, and integrity",
        "State government powers",
        "Citizenship rights"
        ],
        correctAnswerIndex: 1,
        explanation: "The detailed emergency provisions in the Indian Constitution safeguard sovereignty, unity, and integrity during crises."
    ),
    Question(
        questionText: "How many tiers initially formed the government structure according to the Indian Constitution?",
    options: [
    "One",
        "Two",
        "Three",
        "Four"
        ],
        correctAnswerIndex: 1,
        explanation: "Originally, the Indian government structure consisted of two tiers before the addition of local self-government, forming a three-tier system."
    ),
    Question(
        questionText: "What does the Indian Constitution adopt regarding the voting rights of citizens?",
        options: [
        "Universal Adult Franchise",
        "Limited Adult Franchise",
        "Property-based Franchise",
        "Caste-based Franchise"
        ],
        correctAnswerIndex: 0,
        explanation: "The Indian Constitution adopts Universal Adult Franchise, allowing every citizen above 18 years of age to vote without discrimination."
    ),
    Question(
        questionText: "Despite its federal structure, what type of citizenship does the Indian Constitution provide for all citizens?",
    options: [
        "Multiple Citizenship",
        "State-based Citizenship",
        "Single Citizenship",
        "Regional Citizenship"
        ],
        correctAnswerIndex: 2,
        explanation: "The Indian Constitution provides for Single Citizenship for all citizens, irrespective of their state, despite the federal structure."
    ),
    Question(
        questionText: "Which Constitutional Amendment Act introduced Fundamental Duties into the Indian Constitution?",
    options: [
    "37th Amendment Act",
        "42nd Amendment Act",
        "52nd Amendment Act",
        "63rd Amendment Act"
        ],
        correctAnswerIndex: 1,
        explanation: "The Fundamental Duties were added to the Indian Constitution by the 42nd Amendment Act in 1976."
    ),
    Question(
        questionText: "What aspects contribute to the Indian Constitution being labeled the lengthiest written constitution?",
    options: [
    "Its inclusion of various borrowed provisions",
        "Factors such as geographical diversity and historical influences",
        "The synthesis of parliamentary sovereignty and judicial supremacy",
        "The implementation of the three-tier government system"
        ],
        correctAnswerIndex: 1,
        explanation: "The Indian Constitution's lengthiness is attributed to factors such as geographical diversity, historical influences, the single Constitution for the Center and states, and the dominance of legal experts."
    ),
    Question(
        questionText: "Which article in the Indian Constitution enables a blend of rigidity and flexibility?",
        options: [
        "Article 368",
        "Article 370",
        "Article 356",
        "Article 51"
        ],
        correctAnswerIndex: 0,
        explanation: "Article 368 in the Indian Constitution allows for two types of amendments—special majority or special majority with state ratification—enabling a blend of rigidity and flexibility."
    ),
    Question(
        questionText: "What was the primary criticism leveled against the Indian Constitution, claiming it replicated many provisions from the Government of India Act of 1935?",
    options: [
    "It lacked clarity in the division of powers between the Center and states.",
        "It focused excessively on administrative details.",
        "It failed to address fundamental rights adequately.",
        "It excluded the provision for emergency situations."
        ],
        correctAnswerIndex: 1,
        explanation: "Critics argued that the Indian Constitution focused excessively on administrative details similar to the Government of India Act of 1935, which was seen as a primary criticism."
    ),
    Question(
        questionText: "Which amendment to the Indian Constitution granted constitutional status and protection to co-operative societies?",
    options: [
        "42nd Constitutional Amendment Act",
        "66th Constitutional Amendment Act",
        "97th Constitutional Amendment Act",
        "84th Constitutional Amendment Act"
        ],
        correctAnswerIndex: 2,
        explanation: "The 97th Constitutional Amendment Act (2011), provided constitutional status and protection to co-operative societies, making it a fundamental right."
    ),
    Question(
        questionText: "What distinguishes the Indian Constitution's approach to the judiciary?",
        options: [
          "It establishes multiple independent judiciary bodies.",
          "It guarantees financial autonomy for judges.",
          "It integrates a single judiciary with the Supreme Court at the top.",
          "It appoints judges based on political considerations."
        ],
        correctAnswerIndex: 2,
        explanation: "The Indian Constitution integrates a single, independent judiciary with the Supreme Court at the top, ensuring judicial independence."
    ),
    Question(
        questionText: "Which Part of the Indian Constitution outlines principles for social and economic democracy?",
    options: [
    "Part II",
        "Part III",
        "Part IV",
        "Part V"
        ],
        correctAnswerIndex: 2,
        explanation: "Part IV of the Indian Constitution outlines Directive Principles of State Policy, which aim for social and economic democracy."
    ),
    Question(
        questionText: "Which amendment added Fundamental Duties to the Indian Constitution?",
        options: [
          "22nd Constitutional Amendment Act",
          "42nd Constitutional Amendment Act",
          "66th Constitutional Amendment Act",
          "84th Constitutional Amendment Act"
        ],
        correctAnswerIndex: 1,
        explanation: "Fundamental Duties were added to the Indian Constitution by the 42nd Constitutional Amendment Act in 1976."
    ),
    Question(
        questionText: "What makes the Indian Constitution a blend of rigidity and flexibility?",
        options: [
          "Article 370 provisions",
          "Dual citizenship provisions",
          "Article 368 provisions",
          "Part IV provisions"
        ],
        correctAnswerIndex: 2,
        explanation: "The Indian Constitution is a blend of rigidity and flexibility due to Article 368, which allows for two types of amendments—special majority or special majority with state ratification."
    ),
    Question(
        questionText: "Which part of the Indian Constitution guarantees six fundamental rights?",
        options: [
          "Part II",
          "Part III",
          "Part IV",
          "Part V"
        ],
        correctAnswerIndex: 1,
        explanation: "Part III of the Indian Constitution guarantees six fundamental rights,"
    ),
    Question(
        questionText: "What makes the Indian Constitution the lengthiest written constitution in the world?",
        options: [
          "Its inclusion of over 470 Articles, 25 Parts, and 12 Schedules.",
          "The dominance of legal experts in its drafting.",
          "Its focus on geographical diversity and historical influences.",
          "The extensive borrowing of provisions from various constitutions globally."
        ],
        correctAnswerIndex: 0,
        explanation: "The Indian Constitution is the lengthiest written constitution due to its inclusion of over 470 Articles, 25 Parts, and 12 Schedules, encompassing various aspects likegeographical diversity, historical influences, and the contribution of legal experts."
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
    home: salientFeaturesOfTheConstitution(),
  ));
}

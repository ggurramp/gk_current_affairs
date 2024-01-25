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

class hbg extends StatefulWidget {
  final String? userIdentifier;

  hbg({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<hbg> createState() => _hbgState();
}

class _hbgState extends State<hbg> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//Historical Background of the Constitution
    Question(
      questionText: "When did the British come to India and in what capacity?",
      options: ["1600 as traders", "1700 as explorers", "1800 as rulers", "1900 as settlers"],
      correctAnswerIndex: 0,
      explanation:
      "The British came to India in 1600 as traders, forming the East India Company with exclusive trading rights granted by Queen Elizabeth I.",
    ),
    Question(
      questionText: "What significant event happened in 1765 during British rule?",
      options: [
        "Company obtained the 'diwani' of Bengal, Bihar, and Orissa.",
        "British Crown assumed direct responsibility for India.",
        "Formation of the Indian Constitution.",
        "Sepoy mutiny."
      ],
      correctAnswerIndex: 0,
      explanation:
      "In 1765, the East India Company gained the 'diwani' (rights over revenue and civil justice) of Bengal, Bihar, and Orissa, marking its transition to a territorial power.",
    ),
    Question(
      questionText: "When did India gain independence from British rule?",
      options: ["August 15, 1947", "August 15, 1950", "July 4, 1947", "January 26, 1950"],
      correctAnswerIndex: 0,
      explanation: "India gained independence from British rule on August 15, 1947.",
    ),
    Question(
      questionText: "Why was a Constituent Assembly formed post-independence?",
      options: [
        "To establish British rule.",
        "To create a new Constitution for India.",
        "To continue colonial governance.",
        "To negotiate trade agreements."
      ],
      correctAnswerIndex: 1,
      explanation: "A Constituent Assembly was formed in 1946 to create a new Constitution for India, which came into effect on January 26, 1950.",
    ),
    Question(
      questionText: "What was the Regulating Act of 1773's significance?",
      options: [
        "Established the Governor-General of Bengal.",
        "Introduced a Supreme Court in Calcutta.",
        "Controlled East India Company's affairs.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Regulating Act of 1773 was significant as it established the Governor-General of Bengal, introduced a Supreme Court in Calcutta, and controlled the East India Company's affairs.",
    ),
    Question(
      questionText: "What did the Pitt's India Act of 1784 establish?",
      options: [
        "Separation of commercial and political functions of the Company.",
        "Creation of the Board of Control for political affairs.",
        "Introduction of double government.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Pitt's India Act of 1784 established the separation of commercial and political functions, created the Board of Control for political affairs, and introduced a system of double government.",
    ),
    Question(
      questionText: "What did the Charter Act of 1833 accomplish?",
      options: [
        "Made the Governor-General of Bengal the Governor-General of India.",
        "Ended East India Company's commercial activities.",
        "Introduced a system of open competition for civil servants.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Charter Act of 1833 made the Governor-General of Bengal the Governor-General of India, ended the Company's commercial activities, and introduced open competition for civil servants.",
    ),
    Question(
      questionText: "What significant change did the Charter Act of 1853 bring?",
      options: [
        "Separation of legislative and executive functions.",
        "Introduction of open competition for civil servant recruitment.",
        "Extension of the Company's rule without specifying a period.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Charter Act of 1853 brought the separation of legislative and executive functions, introduced open competition for civil servant recruitment, and extended the Company's rule without specifying a period.",
    ),
  ];
  List<Question> governmentActsQuestions = [
    Question(
      questionText: "What significant event led to the enactment of the Government of India Act of 1858?",
      options: [
        "Revolt of 1857",
        "Formation of Indian National Congress",
        "Partition of Bengal",
        "Jallianwala Bagh massacre"
      ],
      correctAnswerIndex: 0,
      explanation:
      "The Government of India Act of 1858 was enacted in the wake of the Revolt of 1857, also known as the First War of Independence or the 'sepoy mutiny.'",
    ),
    Question(
      questionText: "How did the Government of India Act of 1858 change the governance of India?",
      options: [
        "Abolished the East India Company.",
        "Established the position of Viceroy of India.",
        "Ended the system of double Government.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Act abolished the East India Company, established the position of Viceroy of India, and ended the system of double Government.",
    ),
    Question(
      questionText: "What changes did the Indian Councils Act of 1861 introduce?",
      options: [
        "Beginning of representative institutions with the nomination of Indians.",
        "Restoration of legislative powers to Bombay and Madras Presidencies.",
        "Establishment of new legislative councils.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Indian Councils Act of 1861 introduced representative institutions, restored legislative powers to Bombay and Madras Presidencies, and established new legislative councils.",
    ),
    Question(
      questionText: "What is the significance of the Indian Councils Act of 1892?",
      options: [
        "Increased non-official members in legislative councils.",
        "Gave legislative councils power to discuss the budget.",
        "Introduced limited and indirect provision for election.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Indian Councils Act of 1892 increased non-official members, gave councils power to discuss the budget, and made a limited provision for election.",
    ),
    Question(
      questionText: "What reforms were introduced by the Government of India Act of 1919?",
      options: [
        "Relaxed central control over provinces.",
        "Introduced bicameralism and direct elections.",
        "Extended communal representation.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Government of India Act of 1919 introduced reforms like relaxing central control, bicameralism, direct elections, and extended communal representation.",
    ),
    Question(
      questionText: "What did the Government of India Act of 1935 establish?",
      options: [
        "All-India Federation.",
        "Provincial autonomy.",
        "Communal representation for depressed classes.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Government of India Act of 1935 established the All-India Federation, provincial autonomy, and communal representation for depressed classes.",
    ),
    Question(
      questionText: "What led to the end of British rule in India?",
      options: [
        "Government of India Act of 1935.",
        "Mountbatten Plan.",
        "Simon Commission.",
        "Communal Award."
      ],
      correctAnswerIndex: 1,
      explanation:
      "The British rule in India ended with the implementation of the Mountbatten Plan in response to the announcement of the British Prime Minister Clement Atlee.",
    ),
    Question(
      questionText: "What changes did the Indian Independence Act of 1947 bring?",
      options: [
        "Declared India as an independent and sovereign state.",
        "Provided for the partition of India.",
        "Abolished the office of Viceroy.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation:
      "The Indian Independence Act of 1947 declared India independent, provided for partition, and abolished the office of Viceroy among other changes.",
    ),

    Question(
      questionText: "Who was designated as the Vice-President of the Council in the Interim Government of 1946?",
      options: [
        "Jawaharlal Nehru",
        "Sardar Vallabhbhai Patel",
        "Dr. Rajendra Prasad",
        "Liaquat Ali Khan"
      ],
      correctAnswerIndex: 0,
      explanation:
      "In the Interim Government of 1946, Jawaharlal Nehru was designated as the Vice-President of the Council.",
    ),
    Question(
      questionText: "Which portfolio did Sardar Vallabhbhai Patel hold in the Interim Government?",
      options: [
        "Home, Information & Broadcasting",
        "Railways & Transport",
        "Defence",
        "Finance"
      ],
      correctAnswerIndex: 0,
      explanation:
      "Sardar Vallabhbhai Patel held the portfolio of Home, Information & Broadcasting in the Interim Government of 1946.",
    ),
    Question(
      questionText: "Who was in charge of the External Affairs & Commonwealth Relations portfolio in the Interim Government?",
      options: [
        "Dr. Rajendra Prasad",
        "Sardar Baldev Singh",
        "Liaquat Ali Khan",
        "Jawaharlal Nehru"
      ],
      correctAnswerIndex: 3,
      explanation:
      "Jawaharlal Nehru was in charge of the External Affairs & Commonwealth Relations portfolio in the Interim Government of 1946.",
    ),
    Question(
      questionText: "Which member of the Interim Government held the Finance portfolio?",
      options: [
        "Liaquat Ali Khan",
        "R.K. Shanmugham Chetty",
        "Jagjivan Ram",
        "Dr. John Mathai"
      ],
      correctAnswerIndex: 1,
      explanation:
      "R.K. Shanmugham Chetty held the Finance portfolio in the Interim Government of 1946.",
    ),

    Question(
      questionText: "Who was the Prime Minister of the First Cabinet of Free India in 1947?",
      options: [
        "Jawaharlal Nehru",
        "Sardar Vallabhbhai Patel",
        "Maulana Abul Kalam Azad",
        "Dr. Rajendra Prasad"
      ],
      correctAnswerIndex: 0,
      explanation:
      "Jawaharlal Nehru was the Prime Minister of the First Cabinet of Free India in 1947.",
    ),
    Question(
      questionText: "Which portfolio did Dr. Rajendra Prasad hold in the First Cabinet of Free India?",
      options: [
        "Food & Agriculture",
        "Railways & Transport",
        "Health",
        "Education"
      ],
      correctAnswerIndex: 0,
      explanation:
      "Dr. Rajendra Prasad held the portfolio of Food & Agriculture in the First Cabinet of Free India in 1947.",
    ),
    Question(
      questionText: "Who was in charge of the Law portfolio in the First Cabinet of Free India?",
      options: [
        "Dr. B.R. Ambedkar",
        "Rafi Ahmed Kidwai",
        "C.H. Bhabha",
        "Joginder Nath Mandal"
      ],
      correctAnswerIndex: 0,
      explanation:
      "Dr. B.R. Ambedkar was in charge of the Law portfolio in the First Cabinet of Free India in 1947.",
    ),
    Question(
      questionText: "Which member held the portfolio of Works, Mines & Power in the First Cabinet of Free India?",
      options: [
        "V.N. Gadgil",
        "Rafi Ahmed Kidwai",
        "Ghaznafar Ali Khan",
        "C.H. Bhabha"
      ],
      correctAnswerIndex: 3,
      explanation:
      "C.H. Bhabha held the portfolio of Works, Mines & Power in the First Cabinet of Free India in 1947.",
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
          MyBannerAdWidget(), // Add the banner ad here
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
    home: hbg(),
  ));
}

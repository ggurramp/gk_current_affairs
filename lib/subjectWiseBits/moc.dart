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

class moc extends StatefulWidget {
  final String? userIdentifier;

  moc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<moc> createState() => _mocState();
}

class _mocState extends State<moc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//making of the constitution

    Question(
        questionText: "1. When was the idea of a Constituent Assembly for India first proposed?",
        options: [
          "1935",
          "1938",
          "1940",
          "1942"
        ],
        correctAnswerIndex: 0,
        explanation: "In 1935, the Indian National Congress officially demanded a Constituent Assembly for framing the Constitution of India."
    ),

    Question(
        questionText: "2. What was the composition of the Constituent Assembly in November 1946?",
        options: [
          "Total Strength: 389 members",
          "British India: 296 seats, Princely States: 93 seats",
          "Members partly elected and partly nominated, representing various communities",
          "All of the above"
        ],
        correctAnswerIndex: 3,
        explanation: "The Constituent Assembly had a total strength of 389 members, with 296 seats allotted to British India and 93 seats to the princely states. Members were partly elected and partly nominated, representing various communities."
    ),

    Question(
        questionText: "3. When did the Constituent Assembly hold its first meeting?",
        options: [
          "December 9, 1945",
          "December 9, 1946",
          "January 22, 1947",
          "January 26, 1950"
        ],
        correctAnswerIndex: 1,
        explanation: "The Constituent Assembly held its first meeting on December 9, 1946, with Dr. Sachchidananda Sinha elected as the temporary President."
    ),

    Question(
        questionText: "4. Who moved the historic 'Objectives Resolution' in the Constituent Assembly?",
        options: [
          "Jawaharlal Nehru",
          "Sardar Vallabhbhai Patel",
          "Dr. Rajendra Prasad",
          "Maulana Abul Kalam Azad"
        ],
        correctAnswerIndex: 0,
        explanation: "Jawaharlal Nehru moved the historic 'Objectives Resolution' in the Constituent Assembly on December 13, 1946."
    ),

    Question(
        questionText: "5. What changes were made by the Indian Independence Act of 1947 in the position of the Constituent Assembly?",
        options: [
          "It became a fully sovereign body.",
          "Empowered to frame any Constitution.",
          "Became a legislative body for making the Constitution and enacting laws.",
          "All of the above"
        ],
        correctAnswerIndex: 3,
        explanation: "The Indian Independence Act of 1947 made the Constituent Assembly a fully sovereign body, empowered to frame any Constitution. It also became a legislative body for making the Constitution and enacting laws."
    ),

    Question(
        questionText: "6. What functions did the Constituent Assembly perform in addition to making the Constitution?",
        options: [
          "Ratified India's membership in the Commonwealth.",
          "Adopted the national flag, anthem, and song.",
          "Elected Dr. Rajendra Prasad as the first President of India.",
          "All of the above"
        ],
        correctAnswerIndex: 3,
        explanation: "In addition to making the Constitution, the Constituent Assembly ratified India's membership in the Commonwealth, adopted the national flag, anthem, and song, and elected Dr. Rajendra Prasad as the first President of India."
    ),

    Question(
        questionText: "7. When did the Constituent Assembly hold its final session?",
        options: [
          "January 22, 1950",
          "January 24, 1950",
          "January 26, 1950",
          "January 30, 1950"
        ],
        correctAnswerIndex: 1,
        explanation: "The Constituent Assembly held its final session on January 24, 1950, and continued as the provisional parliament of India from January 26, 1950, until the formation of the new Parliament after the first general elections in 1951–52."
    ),
    Question(
        questionText: "Who was the Chairman of the Union Powers Committee in the Constituent Assembly?",
        options: ["Sardar Patel", "Dr. B.R. Ambedkar", "Jawaharlal Nehru", "G.V. Mavalankar"],
        correctAnswerIndex: 2,
        explanation: "Jawaharlal Nehru served as the Chairman of the Union Powers Committee in the Constituent Assembly."
    ),

    Question(
        questionText: "Which committee was responsible for preparing the first draft of the Constitution?",
        options: [
          "Union Constitution Committee",
          "Drafting Committee",
          "Advisory Committee on Fundamental Rights",
          "States Committee"
        ],
        correctAnswerIndex: 1,
        explanation: "The Drafting Committee, chaired by Dr. B.R. Ambedkar, was responsible for preparing the first draft of the Constitution."
    ),

    Question(
        questionText: "Who introduced the final draft of the Constitution in the Constituent Assembly?",
        options: [
          "Jawaharlal Nehru",
          "Dr. Rajendra Prasad",
          "Sardar Patel",
          "Dr. B.R. Ambedkar"
        ],
        correctAnswerIndex: 3,
        explanation: "Dr. B.R. Ambedkar introduced the final draft of the Constitution in the Constituent Assembly on November 4, 1948."
    ),

    Question(
        questionText: "When did the third reading of the draft Constitution start?",
        options: [
          "November 9, 1948",
          "November 15, 1948",
          "October 17, 1949",
          "November 26, 1949"
        ],
        correctAnswerIndex: 2,
        explanation: "The third reading of the draft Constitution started on November 14, 1949, and concluded on November 26, 1949."
    ),

    Question(
        questionText: "On which day did the Constitution of India come into force?",
        options: [
          "November 26, 1949",
          "January 26, 1950",
          "December 9, 1946",
          "October 17, 1949"
        ],
        correctAnswerIndex: 1,
        explanation: "The Constitution of India came into force on January 26, 1950, celebrated as Republic Day."
    ),

    Question(
        questionText: "What changes did the 58th Constitutional Amendment Act of 1987 make regarding the Hindi text of the Constitution?",
        options: [
          "It established Hindi as the sole official language.",
          "It made Hindi the authoritative text of the Constitution.",
          "It provided for the translation of the Constitution into Hindi.",
          "It introduced Hindi as a regional language."
        ],
        correctAnswerIndex: 2,
        explanation: "The 58th Constitutional Amendment Act of 1987 provided for the translation of the Constitution into Hindi and made the Hindi text authoritative for all purposes."
    ),
    Question(
        questionText: "How long did it take the framers of the U.S. Constitution to complete their work?",
        options: ["Less than 2 months", "Less than 4 months", "Around 6 months", "Over a year"],
        correctAnswerIndex: 1,
        explanation: "The framers of the U.S. Constitution took less than 4 months to complete their work, from May 25, 1787, to September 17, 1787."
    ),

    Question(
        questionText: "What was the duration of the constitution-making process in Canada?",
        options: ["About 1 year", "About 2 years and 6 months", "Around 5 years", "Over 10 years"],
        correctAnswerIndex: 1,
        explanation: "The constitution-making process in Canada took about 2 years and 6 months, from October 10, 1864, to March 1867."
    ),

    Question(
        questionText: "How long did it take the framers of the Australian Constitution to complete their work?",
        options: ["Less than 6 months", "Around 9 years", "Over 15 years", "About 5 years"],
        correctAnswerIndex: 1,
        explanation: "The framers of the Australian Constitution took about 9 years to complete their work, from March 1891 to July 9, 1900."
    ),

    Question(
        questionText: "What was the duration of the constitution-making process in South Africa?",
        options: ["Less than 6 months", "Around 1 year", "Over 2 years", "About 4 years"],
        correctAnswerIndex: 1,
        explanation: "The constitution-making process in South Africa took approximately 1 year, from October 1908 to September 20, 1909."
    ),
    Question(
        questionText: "How many seats were allocated to the British Indian Provinces in the Constituent Assembly of India (1946)?",
        options: ["293", "389", "292", "296"],
        correctAnswerIndex: 2,
        explanation: "In the Constituent Assembly of India (1946), a total of 389 seats were allocated. Out of these, 292 seats were allotted to the British Indian Provinces."

    ),

    Question(
        questionText: "Which party won the highest number of seats in the Elections to the Constituent Assembly (July–August 1946)?",
        options: ["Muslim League", "Unionist Party", "Congress", "Communist Party"],
        correctAnswerIndex: 2,
        explanation: "The Congress party emerged victorious in the Elections to the Constituent Assembly (July–August 1946) by securing the highest number of seats, totaling 208."

    ),

    Question(
        questionText: "What was the community-wise representation of Sikhs in the Constituent Assembly (1946)?",
        options: ["2", "3", "4", "5"],
        correctAnswerIndex: 2,
        explanation: "Sikhs were represented with 4 seats in the Constituent Assembly (1946). This allocation was part of the community-wise distribution of seats to ensure diverse representation."
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
    home: moc(),
  ));
}

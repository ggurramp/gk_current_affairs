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

class citizenship extends StatefulWidget {
  final String? userIdentifier;

  citizenship({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<citizenship> createState() => _citizenshipState();
}

class _citizenshipState extends State<citizenship> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//Chapter 7 Citizenship questions
    Question(
        questionText: "What are some of the civil and political rights enjoyed by citizens in India?",
        options: ["Right to bear arms", "Right to discrimination", "Right to equality of opportunity", "Right to conceal information"],
        correctAnswerIndex: 2,
        explanation: "Citizens in India enjoy civil and political rights such as the right to equality of opportunity, freedom of speech, cultural and educational rights, and the right to vote and contest elections."
    ),

    Question(
        questionText: "In terms of citizenship, how does India differ from federal states like the USA?",
        options: ["India has dual citizenship", "India has state citizenship", "India follows a system of single citizenship", "India grants citizenship based on religion"],
        correctAnswerIndex: 2,
        explanation: "India follows a system of single citizenship, where allegiance is solely to the Union, unlike federal states like the USA with dual citizenship involving allegiance to both the nation and the state."
    ),

    Question(
        questionText: "What exceptions exist to the general rule of absence of discrimination among Indian citizens?",
        options: ["Discrimination based on gender", "Discrimination based on residence", "Discrimination based on occupation", "Discrimination based on education"],
        correctAnswerIndex: 1,
        explanation: "Exceptions include Parliament's ability to prescribe residence conditions for certain employments and constitutional provisions prohibiting discrimination based on religion, race, caste, sex, or place of birth (not residence)."
    ),

    Question(
        questionText: "What historical context is mentioned regarding special provisions for Jammu and Kashmir?",
        options: ["Special provisions for education", "Special provisions for employment", "Special provisions for healthcare", "Special provisions for agriculture"],
        correctAnswerIndex: 1,
        explanation: "Special provisions for Jammu and Kashmir include defining permanent residents and granting special rights, privileges, and scholarships, with historical context related to the revocation of special status in 2019."
    ),

    Question(
        questionText: "Despite the constitutional emphasis on uniform rights, what challenges does the text acknowledge in India?",
        options: ["Economic challenges", "Political challenges", "Communal riots, class conflicts, caste wars, linguistic clashes, and ethnic disputes", "Environmental challenges"],
        correctAnswerIndex: 2,
        explanation: "The text acknowledges challenges such as communal riots, class conflicts, caste wars, linguistic clashes, and ethnic disputes, suggesting that the goal of building a fully united and integrated Indian nation has not been completely realized."
    ),
    Question(
        questionText: "What are the three ways outlined in the Citizenship Act (1955) for losing Indian citizenship?",
        options: ["Renunciation, Extension, Deprivation", "Termination, Deprivation, Rejection", "Termination, Acquisition, Disqualification", "Renunciation, Termination, Deprivation"],
        correctAnswerIndex: 3,
        explanation: "The Citizenship Act (1955) outlines three ways of losing Indian citizenship: Renunciation, Termination, and Deprivation."
    ),

    Question(
        questionText: "When does renunciation of Indian citizenship take place?",
        options: ["During peacetime only", "During wartime only", "At any time for full-age citizens", "Never allowed"],
        correctAnswerIndex: 2,
        explanation: "Renunciation of Indian citizenship can take place at any time for full-age citizens, with exceptions during wartime."
    ),

    Question(
        questionText: "What is one of the reasons for the compulsory termination of Indian citizenship under deprivation?",
        options: ["Prolonged residence outside India", "Acquiring foreign citizenship", "Being a minor child", "Participating in government service"],
        correctAnswerIndex: 1,
        explanation: "Compulsory termination of Indian citizenship under deprivation can occur if an individual voluntarily acquires foreign citizenship."
    ),

    Question(
        questionText: "What was the purpose of the committee formed in 2000 regarding the Citizenship Act?",
        options: ["To amend the Constitution", "To study the Indian Diaspora", "To promote dual citizenship", "To review the Overseas Citizen scheme"],
        correctAnswerIndex: 1,
        explanation: "The committee formed in 2000 had the mandate to conduct a comprehensive study of the global Indian Diaspora."
    ),

    Question(
        questionText: "What rights do Overseas Citizen of India (OCI) Cardholders have, as per the summary?",
        options: ["Equal opportunity in public employment", "Eligibility for election as President", "Entitlement to vote", "Appointment to public services"],
        correctAnswerIndex: 2,
        explanation: "OCI Cardholders are entitled to certain rights but are restricted from voting in India's elections."
    ),

    Question(
        questionText: "Under what circumstances can the Central Government cancel the registration of an OCI Cardholder?",
        options: ["Having dual citizenship", "Violation of laws", "Dissolution of marriage", "Continuous residence outside India"],
        correctAnswerIndex: 1,
        explanation: "The Central Government can cancel OCI registration for reasons like violations of laws, including the Citizenship Act."
    ),
    Question(
        questionText: "What is the significance of the single citizenship system in India?",
        options: [
          "It promotes dual allegiance to both the nation and the state.",
          "It prevents discrimination among citizens based on birth or residence.",
          "It grants special rights and privileges to citizens.",
          "It allows for the revocation of citizenship based on political decisions."
        ],
        correctAnswerIndex: 1,
        explanation: "The single citizenship system in India prevents discrimination among citizens based on their place of birth or residence, fostering unity and equality."
    ),
    Question(
        questionText: "What is the purpose of introducing Overseas Citizenship of India (OCI)?",
        options: [
          "To grant dual citizenship to all individuals of Indian origin.",
          "To restrict the rights of Persons of Indian Origin (PIOs).",
          "To provide certain rights to PIOs while restricting specific rights granted to Indian citizens.",
          "To exclude individuals from specified countries from obtaining OCI."
        ],
        correctAnswerIndex: 2,
        explanation: "The purpose of introducing Overseas Citizenship of India (OCI) is to provide certain rights to Persons of Indian Origin (PIOs) while restricting specific rights granted to Indian citizens."
    ),


    Question(
        questionText: "What does the text mention as one of the categories for acquiring Indian citizenship?",
        options: [
          "By marriage to an Indian citizen.",
          "By being born in a foreign territory.",
          "By renouncing foreign citizenship.",
          "By participating in cultural and educational programs."
        ],
        correctAnswerIndex: 3,
        explanation: "One of the categories for acquiring Indian citizenship is by renouncing foreign citizenship, as stated in the text."
    ),
    Question(
        questionText: "What are the ways outlined in the text for losing Indian citizenship?",
        options: [
          "By marriage to a foreign citizen.",
          "By renunciation, termination, and deprivation.",
          "By participating in unlawful activities.",
          "By continuous residence outside India for five years."
        ],
        correctAnswerIndex: 1,
        explanation: "The text outlines three ways of losing Indian citizenship: renunciation, termination, and deprivation."
    ),

    Question(
        questionText: "According to the text, what are the reasons for the Central Government to compulsorily terminate citizenship?",
        options: [
          "Participating in cultural and educational programs.",
          "Continuous residence outside India for seven years.",
          "Obtaining citizenship through registration.",
          "Having dual citizenship."
        ],
        correctAnswerIndex: 1,
        explanation: "The Central Government can compulsorily terminate citizenship for reasons such as continuous residence outside India for seven years, as mentioned in the text."
    ),
    Question(
        questionText: "According to the text, what are the reasons for the Central Government to cancel OCI registration?",
        options: [
          "Participating in cultural and educational programs.",
          "Having dual citizenship.",
          "Continuous residence outside India for seven years.",
          "Obtaining OCI through fraud or disaffection towards the Constitution."
        ],
        correctAnswerIndex: 3,
        explanation: "The Central Government may cancel OCI registration for reasons such as continuous residence outside India for seven years, as mentioned in the text."
    ),

    Question(
        questionText: "What is the historical context mentioned in the text regarding special provisions for Jammu and Kashmir?",
        options: [
          "The formation of the state in 1947.",
          "The integration of the region with the rest of India in 2019.",
          "The grant of special rights and privileges.",
          "The revocation of special status in 2019."
        ],
        correctAnswerIndex: 3,
        explanation: "The text mentions the historical context of special provisions for Jammu and Kashmir, including defining permanent residents and granting special rights, privileges, and scholarships. The revocation of special status in 2019 aimed to integrate the region more closely with the rest of India."
    ),
    Question(
        questionText: "In which part of the Indian Constitution is citizenship addressed?",
        options: [
          "Part I",
          "Part II",
          "Part III",
          "Part IV"
        ],
        correctAnswerIndex: 1,
        explanation: "Citizenship is addressed in Articles 5 to 11 under Part II of the Indian Constitution."
    ),

    Question(
        questionText: "What is the significance of the absence of state citizenship in India?",
        options: [
          "It promotes discrimination based on residence.",
          "It helps prevent discrimination based on place of birth or residence.",
          "It limits citizens' rights.",
          "It leads to dual citizenship."
        ],
        correctAnswerIndex: 1,
        explanation: "The absence of state citizenship in India helps prevent discrimination among citizens based on their place of birth or residence, as mentioned in the text."
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
    home: citizenship(),
  ));
}

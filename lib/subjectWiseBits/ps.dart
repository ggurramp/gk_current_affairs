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

class ps extends StatefulWidget {
  final String? userIdentifier;

  ps({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ps> createState() => _psState();
}

class _psState extends State<ps> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//74.PUBLIC SERVICES

    Question(
      questionText: "What are the three categories of All-India Services?",
      options: ["Executive, Legislative, Judicial", "Super Time Scale, Senior Scale, Junior Scale", "IAS, IPS, IFS", "Central, State, Union Territories"],
      correctAnswerIndex: 2,
      explanation: "The three All-India Services are IAS (Indian Administrative Service), IPS (Indian Police Service), and IFS (Indian Forest Service).",
    ),

    Question(
      questionText: "Who is often regarded as the 'Father of All-India Services'?",
      options: ["Jawaharlal Nehru", "Sardar Vallabhbhai Patel", "B.R. Ambedkar", "Indira Gandhi"],
      correctAnswerIndex: 1,
      explanation: "Sardar Vallabhbhai Patel is often regarded as the 'Father of All-India Services' for his role in advocating for their constitutional status.",
    ),

    Question(
      questionText: "Under which Ministry is the IPS (Indian Police Service) managed and controlled?",
      options: ["Ministry of Personnel, Public Grievances, and Pensions", "Ministry of Home Affairs", "Ministry of Environment, Forest and Climate Change", "Ministry of Defence"],
      correctAnswerIndex: 1,
      explanation: "The IPS (Indian Police Service) is managed and controlled by the Ministry of Home Affairs.",
    ),

    Question(
      questionText: "How many state cadres are there presently for the All-India Services?",
      options: ["Ten", "Fifteen", "Twenty-Six", "Thirty"],
      correctAnswerIndex: 2,
      explanation: "Presently, there are twenty-six state cadres for the All-India Services.",
    ),
    Question(
      questionText: "Before independence, how were the Central Services classified?",
      options: [
        "Group A, Group B, Group C, and Group D",
        "Class I, Class II, Subordinate, and Inferior",
        "Gazetted, Non-Gazetted, Clerical, and Manual",
        "First Pay Commission, Second Pay Commission, Third Pay Commission, and Fourth Pay Commission"
      ],
      correctAnswerIndex: 1,
      explanation: "Before independence, the Central Services were classified into Class I, Class II, Subordinate, and Inferior services.",
    ),

    Question(
      questionText: "What led to the replacement of the nomenclature 'Subordinate and Inferior Services' after independence?",
      options: [
        "Recommendation of the First Pay Commission",
        "Recommendation of the Second Pay Commission",
        "Recommendation of the Third Pay Commission",
        "Recommendation of the Fourth Pay Commission"
      ],
      correctAnswerIndex: 0,
      explanation: "The nomenclature 'Subordinate and Inferior Services' was replaced by Class III and Class IV Services based on the recommendation of the First Pay Commission (1946-1947).",
    ),

    Question(
      questionText: "As of now, how are Central Services classified?",
      options: [
        "Class I, Class II, Class III, and Class IV",
        "Group A, Group B, Group C, and Group D",
        "Gazetted, Non-Gazetted, Clerical, and Manual",
        "First Pay Commission, Second Pay Commission, Third Pay Commission, and Fourth Pay Commission"
      ],
      correctAnswerIndex: 1,
      explanation: "As of now, Central Services are classified into four categories: Group A, Group B, Group C, and Group D.",
    ),

    Question(
      questionText: "Which service is considered the topmost Central Service in terms of prestige, status, pay, and emoluments?",
      options: [
        "Indian Administrative Service (IAS)",
        "Indian Police Service (IPS)",
        "Indian Foreign Service (IFS)",
        "Indian Revenue Service (IRS)"
      ],
      correctAnswerIndex: 2,
      explanation: "The Indian Foreign Service (IFS) is the topmost Central Service in terms of prestige, status, pay, and emoluments. It competes with the All-India Services in position and pay scales.",
    ),
    Question(
      questionText: "What does recruitment, as mentioned in Article 309, include?",
      options: ["Only appointment", "Only selection", "Appointment, selection, deputation, promotion, and appointment by transfer", "Only promotion"],
      correctAnswerIndex: 2,
      explanation: "Recruitment, as per Article 309, includes any method provided for inducting a person in public service like appointment, selection, deputation, promotion, and appointment by transfer.",
    ),

    Question(
      questionText: "Under Article 310, members of the defense services, civil services of the Centre, and all-India services hold office during the pleasure of whom?",
      options: ["Prime Minister", "Governor", "President", "Parliament"],
      correctAnswerIndex: 2,
      explanation: "Members of the defense services, civil services of the Centre, and all-India services hold office during the pleasure of the President, as mentioned in Article 310.",
    ),

    Question(
      questionText: "What is the exception to the general rule of dismissal at pleasure under Article 310?",
      options: ["For misconduct only", "In case of conviction on a criminal charge", "If the post is abolished", "Only for military posts"],
      correctAnswerIndex: 2,
      explanation: "The exception to the general rule of dismissal at pleasure under Article 310 is when the post is abolished before the expiration of the contractual period or if the person is required to vacate the post for reasons not connected with misconduct.",
    ),

    Question(
      questionText: "According to Article 311, who cannot be dismissed or removed by an authority subordinate to that by which they were appointed?",
      options: ["Members of the defense services", "Civil servants", "Persons holding military posts", "All-India services"],
      correctAnswerIndex: 1,
      explanation: "Article 311 provides a safeguard that a civil servant cannot be dismissed or removed by an authority subordinate to that by which they were appointed.",
    ),

    Question(
      questionText: "In which cases is the second safeguard (holding inquiry) not available according to Article 311?",
      options: ["Only for criminal charges", "If the authority finds it impracticable", "In the interest of state security", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The second safeguard (holding inquiry) is not available in cases where a civil servant is dismissed or removed based on criminal charges, or if the authority finds it impracticable, or in the interest of state security.",
    ),

    Question(
      questionText: "Under Article 312, what power does Parliament have regarding all-India services?",
      options: ["Creation only", "Regulation of recruitment only", "Both creation and regulation of conditions of service", "None of the above"],
      correctAnswerIndex: 2,
      explanation: "Parliament has the power under Article 312 to create new all-India services and regulate the recruitment and conditions of service of persons appointed to all-India services.",
    ),

    Question(
      questionText: "Which resolution in the Rajya Sabha is required for the creation of new all-India services, as per Article 312?",
      options: ["Simple majority", "Two-thirds majority", "Absolute majority", "Majority of the Cabinet"],
      correctAnswerIndex: 1,
      explanation: "For the creation of new all-India services, a resolution in the Rajya Sabha should be supported by two-thirds of the members present and voting, as per Article 312.",
    ),

    Question(
      questionText: "Under Article 312, which services are deemed to be services created by Parliament?",
      options: ["Services created after 1976", "Services known at the commencement of the Constitution", "Services created by the President", "All services under the Centre"],
      correctAnswerIndex: 1,
      explanation: "Services known at the commencement of the Constitution (Indian Administrative Service and Indian Police Service) are deemed to be services created by Parliament under Article 312.",
    ),

    Question(
      questionText: "What is the restriction imposed by Article 312 on the creation of the all-India judicial service?",
      options: ["No creation allowed", "No post inferior to that of a district judge", "No service for defense personnel", "No recruitment for the judiciary"],
      correctAnswerIndex: 1,
      explanation: "According to Article 312, the all-India judicial service should not include any post inferior to that of a district judge.",
    ),

    Question(
      questionText: "Which Article confers powers on Parliament to vary or revoke the conditions of service of persons appointed to a civil service of the Crown in India before 1950?",
      options: ["Article 311", "Article 312A", "Article 313", "Article 314"],
      correctAnswerIndex: 1,
      explanation: "Article 312A confers powers on Parliament to vary or revoke the conditions of service of persons appointed to a civil service of the Crown in India before 1950.",
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
    home: ps(),
  ));
}

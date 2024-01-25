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

class cic extends StatefulWidget {
  final String? userIdentifier;

  cic({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cic> createState() => _cicState();
}

class _cicState extends State<cic> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//62.CENTRAL INFORMATION COMMISSION

    Question(
      questionText: "Under which act was the Central Information Commission constituted?",
      options: ["Constitution of India", "Information Disclosure Act", "Right to Information Act (2005)", "Central Government Empowerment Act"],
      correctAnswerIndex: 2,
      explanation: "The Central Information Commission was constituted under the provisions of the Right to Information Act (2005).",
    ),

    Question(
      questionText: "What is the composition of the Central Information Commission?",
      options: [
        "A Chief Information Commissioner and ten Information Commissioners appointed by the Prime Minister",
        "A Chief Information Commissioner and ten Information Commissioners appointed by the President",
        "A Chief Information Commissioner and five Information Commissioners appointed by the Prime Minister",
        "A Chief Information Commissioner and five Information Commissioners appointed by the President"
      ],
      correctAnswerIndex: 1,
      explanation: "The Central Information Commission consists of a Chief Information Commissioner and not more than ten Information Commissioners, appointed by the President on the recommendation of a committee.",
    ),

    Question(
      questionText: "Who is part of the committee responsible for recommending the appointment of Chief Information Commissioner and Information Commissioners?",
      options: ["President, Prime Minister, and Chief Justice of India", "Prime Minister, Leader of Opposition, and Chief Justice of India", "President, Prime Minister, and Speaker of Lok Sabha", "Prime Minister, Speaker of Lok Sabha, and Chief Justice of India"],
      correctAnswerIndex: 1,
      explanation: "The committee recommending the appointment consists of the Prime Minister as Chairperson, the Leader of Opposition in the Lok Sabha, and a Union Cabinet Minister nominated by the Prime Minister.",
    ),

    Question(
      questionText: "What are the eligibility criteria for persons appointed as Chief Information Commissioner or Information Commissioners?",
      options: [
        "Must be a Member of Parliament or Member of the Legislature of any State or Union Territory",
        "Should not have any experience in law, science, and technology",
        "Must hold another office of profit or be connected with any political party",
        "Should be persons of eminence in public life with wide knowledge and experience in specified fields"
      ],
      correctAnswerIndex: 3,
      explanation: "Persons appointed as Chief Information Commissioner or Information Commissioners should be persons of eminence in public life with wide knowledge and experience in law, science and technology, social service, management, journalism, mass media, or administration and governance.",
    ),

    Question(
      questionText: "What are the grounds for the removal of the Chief Information Commissioner or any Information Commissioner?",
      options: [
        "Disagreement with government policies",
        "Proven misbehaviour or incapacity",
        "Taking a stance against corruption",
        "Exercising the right to freedom of speech"
      ],
      correctAnswerIndex: 1,
      explanation: "The grounds for the removal of the Chief Information Commissioner or any Information Commissioner include proven misbehaviour or incapacity.",
    ),

    Question(
      questionText: "Under what circumstances can the President remove the Chief Information Commissioner or any Information Commissioner?",
      options: [
        "If they criticize government decisions",
        "If adjudged an insolvent, convicted of an offense, engaged in paid employment outside office duties, unfit due to infirmity of mind or body, or has acquired a prejudicial financial or other interest",
        "If they hold a different political ideology",
        "If they oppose the government's policies"
      ],
      correctAnswerIndex: 1,
      explanation: "The President can remove the Chief Information Commissioner or any Information Commissioner under circumstances such as being adjudged an insolvent, convicted of an offense, engaged in paid employment outside office duties, unfit due to infirmity of mind or body, or acquiring a prejudicial financial or other interest.",
    ),

    Question(
      questionText: "What is the tenure of the Chief Information Commissioner and an Information Commissioner?",
      options: [
        "Appointed for life",
        "Appointed until the age of 70",
        "Appointed for a specific term prescribed by the Central Government or until the age of 65, whichever is earlier",
        "Appointed for a fixed term of 10 years"
      ],
      correctAnswerIndex: 2,
      explanation: "The Chief Information Commissioner and an Information Commissioner hold office for a term prescribed by the Central Government or until they attain the age of 65, whichever is earlier.",
    ),

    Question(
      questionText: "What is the role of the Central Information Commission in handling complaints and appeals?",
      options: [
        "It only handles complaints related to constitutional matters",
        "It only entertains complaints related to financial institutions",
        "It looks into complaints and decides appeals related to various offices, financial institutions, public sector undertakings, etc., under the Central Government and Union Territories",
        "It focuses exclusively on complaints against the President and Prime Minister"
      ],
      correctAnswerIndex: 2,
      explanation: "The Central Information Commission looks into complaints and decides appeals related to various offices, financial institutions, public sector undertakings, etc., under the Central Government and Union Territories.",
    ),

    Question(
      questionText: "What is the role of the committee recommending the appointment of Chief Information Commissioner and Information Commissioners?",
      options: [
        "To ensure the loyalty of appointees to the ruling party",
        "To assess the popularity of potential appointees",
        "To evaluate the qualifications and eminence of the candidates in public life with knowledge and experience in specified fields",
        "To determine the political affiliation of the candidates"
      ],
      correctAnswerIndex: 2,
      explanation: "The committee recommending the appointment evaluates the qualifications and eminence of the candidates in public life with knowledge and experience in specified fields.",
    ),
    Question(
      questionText: "What is one of the duties of the Central Information Commission mentioned in the text?",
      options: [
        "Ensuring compliance with government policies",
        "Receiving and inquiring into complaints related to information requests",
        "Reviewing financial records of public authorities",
        "Conducting investigations into criminal activities"
      ],
      correctAnswerIndex: 1,
      explanation: "One of the duties of the Central Information Commission is to receive and inquire into complaints from individuals who face issues such as non-appointment of a Public Information Officer, refusal of requested information, delayed responses, unreasonable fees, incomplete or misleading information, and other matters related to obtaining information.",
    ),

    Question(
      questionText: "What power does the Commission have in ordering an inquiry into a matter?",
      options: [
        "Executive power",
        "Judicial power",
        "Legislative power",
        "Advisory power"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission has the power to order an inquiry into any matter if there are reasonable grounds, and it possesses quasi-judicial powers during the inquiry.",
    ),

    Question(
      questionText: "What powers does the Commission have during the inquiry of a complaint?",
      options: [
        "Only the power to request information",
        "Executive powers to enforce its decisions",
        "Powers of a civil court, including summoning witnesses, receiving evidence, and inspecting documents",
        "Legislative powers to make new laws"
      ],
      correctAnswerIndex: 2,
      explanation: "During the inquiry of a complaint, the Commission has the powers of a civil court, including summoning and enforcing attendance of persons, compelling them to give oral or written evidence on oath, and requisitioning public records, among other powers.",
    ),

    Question(
      questionText: "What action can the Commission take to secure compliance with its decisions?",
      options: [
        "Publishing reports on non-compliance",
        "Imposing penalties on applicants",
        "Rejecting applications for information",
        "Directing the public authority to appoint a Public Information Officer, imposing penalties, and recommending disciplinary action"
      ],
      correctAnswerIndex: 3,
      explanation: "The Commission can secure compliance with its decisions by taking actions such as directing the public authority to appoint a Public Information Officer, imposing penalties, recommending disciplinary action, and more.",
    ),

    Question(
      questionText: "What does the Commission submit to the Central Government, and what does the government do with it?",
      options: [
        "Financial reports; implements the recommendations",
        "Annual report on the implementation of the provisions of the Act; places it before each House of Parliament",
        "List of complaints received; takes necessary actions",
        "Details of ongoing inquiries; uses it for policymaking"
      ],
      correctAnswerIndex: 1,
      explanation: "The Commission submits an annual report to the Central Government on the implementation of the provisions of the Right to Information Act, and the Central Government places this report before each House of Parliament.",
    ),

    Question(
      questionText: "When a public authority does not conform to the provisions of the Act, what can the Commission recommend?",
      options: [
        "Imposing fines on the public authority",
        "Issuing warnings to the public authority",
        "Recommending steps for promoting conformity to the authority",
        "Taking legal action against the public authority"
      ],
      correctAnswerIndex: 2,
      explanation: "When a public authority does not conform to the provisions of the Act, the Commission may recommend steps that ought to be taken for promoting such conformity.",
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
    home: cic(),
  ));
}

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

class directivePriciplesOfTheState extends StatefulWidget {
  final String? userIdentifier;

  directivePriciplesOfTheState({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<directivePriciplesOfTheState> createState() => _directivePriciplesOfTheStateState();
}

class _directivePriciplesOfTheStateState extends State<directivePriciplesOfTheState> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//Chapter 9
    Question(
      questionText: "Who described the Directive Principles and the Fundamental Rights as the 'Conscience of the Constitution'?",
      options: ["Dr. B.R. Ambedkar", "Granville Austin", "Gandhi", "Jawaharlal Nehru"],
      correctAnswerIndex: 1,
      explanation: "Granville Austin described the Directive Principles and the Fundamental Rights as the 'Conscience of the Constitution.'",
    ),
    Question(
      questionText: "Which category of Directive Principles represents the ideology of liberalism?",
      options: ["Socialistic Principles", "Gandhian Principles", "Liberal-Intellectual Principles", "None of the above"],
      correctAnswerIndex: 2,
      explanation: "The principles included in the Liberal-Intellectual category represent the ideology of liberalism.",
    ),
    Question(
      questionText: "Which amendment added a Directive Principle requiring the State to minimize inequalities in income, status, facilities, and opportunities?",
      options: ["42nd Amendment Act", "44th Amendment Act", "86th Amendment Act", "97th Amendment Act"],
      correctAnswerIndex: 1,
      explanation: "The 44th Amendment Act of 1978 added a Directive Principle requiring the State to minimize inequalities in income, status, facilities, and opportunities (Article 38).",
    ),
    Question(
      questionText: "Why did the framers of the Constitution make the Directive Principles non-justiciable and legally non-enforceable?",
      options: [
        "Due to a lack of belief in the principles",
        "To prioritize court procedures over public opinion",
        "Because the country lacked sufficient financial resources",
        "To avoid political accountability"
      ],
      correctAnswerIndex: 2,
      explanation: "The framers made the Directive Principles non-justiciable due to a lack of sufficient financial resources, diversity, and the need for the state to decide the order, time, place, and mode of implementation.",
    ),
    Question(
      questionText: "What criticism has been directed towards the Directive Principles regarding their legal force?",
      options: [
        "They are deemed outdated for the 21st century.",
        "They are compared to a cheque on a bank.",
        "They are criticized for illogical arrangement.",
        "They lead to constitutional conflicts."
      ],
      correctAnswerIndex: 1,
      explanation: "The criticism regarding legal force suggests that they are compared to a cheque on a bank, payable only when the resources permit.",
    ),
    Question(
      questionText: "According to M.C. Chagla, what would India be if all Directive Principles are fully carried out?",
      options: [
        "A democracy in the political sense",
        "A dictatorship",
        "A heaven on earth",
        "A socialist state"
      ],
      correctAnswerIndex: 2,
      explanation: "M.C. Chagla expressed the opinion that if all Directive Principles are fully carried out, India would be a heaven on earth.",
    ),
    Question(
      questionText: "In the Champakam Dorairajan case (1951), what did the Supreme Court rule regarding the conflict between Fundamental Rights and Directive Principles?",
      options: [
        "Directive Principles prevail over Fundamental Rights",
        "Fundamental Rights prevail over Directive Principles",
        "Both have equal weight",
        "No conflict was mentioned"
      ],
      correctAnswerIndex: 1,
      explanation: "In the Champakam Dorairajan case (1951), the Supreme Court ruled that in case of any conflict between the Fundamental Rights and the Directive Principles, the Fundamental Rights would prevail.",
    ),
    Question(
      questionText: "Which body replaced the Planning Commission in 2015 for the planned development of the country?",
      options: [
        "National Institution for Transforming India (NITI Aayog)",
        "Union Planning Board",
        "National Development Council",
        "Economic Advisory Council"
      ],
      correctAnswerIndex: 0,
      explanation: "In 2015, the Planning Commission was replaced by a new body called National Institution for Transforming India (NITI Aayog) for the planned development of the country.",
    ),
    Question(
      questionText: "Which article in Part XVI of the Constitution deals with the claims of SCs and STs to services, considering efficiency of administration?",
      options: [
        "Article 330",
        "Article 332",
        "Article 335",
        "Article 337"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 335 in Part XVI deals with the claims of the members of the Scheduled Castes and the Scheduled Tribes to services, taking into consideration the maintenance of efficiency of administration.",
    ),
    Question(
      questionText: "According to Article 39 of the Constitution, what is the objective related to the distribution of material resources of the community?",
      options: [
        "Prevention of concentration of wealth and means of production",
        "Equal pay for equal work for men and women",
        "Promotion of voluntary formation of cooperative societies",
        "Protection of monuments, places, and objects of artistic or historic interest"
      ],
      correctAnswerIndex: 0,
      explanation: "Article 39 aims at securing a social order permeated by justice-social, economic, and political, and includes the objective of preventing the concentration of wealth and means of production for the common good.",
    ),
    Question(
      questionText: "Which Amendment Act of 1976 added four new Directive Principles to the original list?",
      options: [
        "42nd Amendment Act",
        "44th Amendment Act",
        "86th Amendment Act",
        "97th Amendment Act"
      ],
      correctAnswerIndex: 0,
      explanation: "The 42nd Amendment Act of 1976 added four new Directive Principles to the original list.",
    ),
    Question(
      questionText: "What is a key difference between Fundamental Rights and Directive Principles?",
      options: [
        "Fundamental Rights are negative, while Directive Principles are positive.",
        "Fundamental Rights are non-justiciable, while Directive Principles are justiciable.",
        "Fundamental Rights aim at social and economic democracy, while Directive Principles aim at political democracy.",
        "Fundamental Rights have moral and political sanctions, while Directive Principles have legal sanctions."
      ],
      correctAnswerIndex: 0,
      explanation: "A key difference is that Fundamental Rights are negative as they prohibit the State from doing certain things, while Directive Principles are positive as they require the State to do certain things.",
    ),
    Question(
      questionText: "What criticism has been directed towards the Directive Principles of State Policy?",
      options: [
        "They lack legal force, making them like 'pious superfluities.'",
        "They are illogically arranged and lack a consistent philosophy.",
        "They are considered conservative, reflecting 19th-century England's political philosophy.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The Directive Principles have been criticized for lacking legal force, being illogically arranged, and reflecting a conservative political philosophy.",
    ),

    Question(
      questionText: "Which Amendment Act declared that Parliament has the power to abridge or take away any of the Fundamental Rights?",
      options: ["24th Amendment Act (1971)", "25th Amendment Act (1971)", "42nd Amendment Act (1976)", "44th Amendment Act (1978)"],
      correctAnswerIndex: 0,
      explanation: "The 24th Amendment Act (1971) declared that Parliament has the power to abridge or take away any of the Fundamental Rights by enacting Constitutional Amendment Acts.",
    ),
    Question(
      questionText: "What did the Supreme Court declare unconstitutional in the Kesavananda Bharati case (1973)?",
      options: ["First provision of Article 31C", "Second provision of Article 31C", "Article 39 (b) and (c)", "Article 14 and Article 19"],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court declared the second provision of Article 31C as unconstitutional in the Kesavananda Bharati case (1973), stating that judicial review is a basic feature of the Constitution and cannot be taken away.",
    ),
    Question(
      questionText: "Which Amendment Act extended the scope of Article 31C to include any law to implement Directive Principles?",
      options: ["24th Amendment Act (1971)", "42nd Amendment Act (1976)", "44th Amendment Act (1978)", "73rd Amendment Act (1992)"],
      correctAnswerIndex: 1,
      explanation: "The 42nd Amendment Act (1976) extended the scope of Article 31C to include any law to implement Directive Principles, but this extension was later declared unconstitutional in the Minerva Mills case (1980).",
    ),
    Question(
      questionText: "What did the 44th Amendment Act (1978) do regarding Article 31?",
      options: ["Omitted Article 31", "Extended Article 31C", "Amended Article 31", "Replaced Article 31"],
      correctAnswerIndex: 0,
      explanation: "The 44th Amendment Act (1978) omitted Article 31 from the Constitution.",
    ),
    Question(
      questionText: "Which Amendment Act bifurcated the National Commission for Scheduled Castes and Scheduled Tribes into two separate bodies?",
      options: ["65th Amendment Act (1990)", "89th Amendment Act (2003)", "103rd Amendment Act (2019)", "122nd Amendment Act (2018)"],
      correctAnswerIndex: 1,
      explanation: "The 89th Amendment Act (2003) bifurcated the National Commission for Scheduled Castes and Scheduled Tribes into two separate bodies, namely, National Commission for Scheduled Castes and National Commission for Scheduled Tribes.",
    ),
    Question(
      questionText: "What reservation was provided by the 103rd Amendment Act of 2019?",
      options: ["Reservation for women in educational institutions", "Reservation for economically weaker sections (EWSs)", "Reservation for backward classes", "Reservation for SCs and STs"],
      correctAnswerIndex: 1,
      explanation: "The 103rd Amendment Act of 2019 provided 10% reservation to the Economically Weaker Sections (EWSs) in admission to educational institutions and civil posts and services in the Government of India.",
    ),
    Question(
      questionText: "Which Act established a nationwide network to provide free and competent legal aid to the poor?",
      options: ["Legal Services Authorities Act (1987)", "Maternity Benefit Act (1961)", "Equal Remuneration Act (1976)", "Child Labour Prohibition and Regulation Act (1986)"],
      correctAnswerIndex: 0,
      explanation: "The Legal Services Authorities Act (1987) established a nationwide network to provide free and competent legal aid to the poor and to organize lok adalat for promoting equal justice.",
    ),
    Question(
      questionText: "Which Programme was launched for raising the standard of living of people and is a statutory forum for conciliatory settlement of legal disputes?",
      options: ["Minimum Needs Programme (1974)", "Jawahar Rozgar Yojana (1989)", "Integrated Rural Development Programme (1978)", "National Rural Employment Guarantee Programme (2006)"],
      correctAnswerIndex: 3,
      explanation: "The National Rural Employment Guarantee Programme (2006) was launched for raising the standard of living of people and is a statutory forum for conciliatory settlement of legal disputes.",
    ),
    Question(
      questionText: "Which Act separated the judiciary from the executive in the public services of the state?",
      options: ["Factories Act (1948)", "Mines Act (1952)", "Industrial Disputes Act (1947)", "Criminal Procedure Code (1973)"],
      correctAnswerIndex: 3,
      explanation: "The Criminal Procedure Code (1973) separated the judiciary from the executive in the public services of the state, taking away judicial powers from executive authorities.",
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
    home: directivePriciplesOfTheState(),
  ));
}

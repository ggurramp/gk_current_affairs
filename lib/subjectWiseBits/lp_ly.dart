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

class lp_ly extends StatefulWidget {
  final String? userIdentifier;

  lp_ly({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<lp_ly> createState() => _lp_lyState();
}

class _lp_lyState extends State<lp_ly> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//66.LOKPAL AND LOKAYUKTA

    Question(
      questionText: "What is the primary focus of modern democratic states, leading to an increased role of government in socio-economic development?",
      options: ["Military power", "Welfare orientation", "Cultural preservation", "Technological innovation"],
      correctAnswerIndex: 1,
      explanation: "Modern democratic states are characterized by a welfare orientation, leading to an increased role of government in socio-economic development.",
    ),

    Question(
      questionText: "Which institutional device, originating in Sweden in 1809, was created for the redressal of citizens' grievances against administrative actions?",
      options: ["Procurator System", "Administrative Courts System", "Ombudsman System", "Lokpal/Lokayukta"],
      correctAnswerIndex: 2,
      explanation: "The Ombudsman System, originating in Sweden in 1809, was created for the redressal of citizens' grievances against administrative actions.",
    ),

    Question(
      questionText: "In what matters does the Swedish Ombudsman deal with citizens' grievances?",
      options: ["Cultural disputes", "Military interventions", "Administrative corruption, nepotism, discourtesy", "Technological advancements"],
      correctAnswerIndex: 2,
      explanation: "The Swedish Ombudsman deals with citizens' grievances in matters such as abuse of administrative discretion, maladministration, administrative corruption, nepotism, and discourtesy.",
    ),

    Question(
      questionText: "What term is used in Sweden for a person who acts as the representative or spokesman of another person?",
      options: ["Advocate", "Ombudsman", "Legislator", "Delegate"],
      correctAnswerIndex: 1,
      explanation: "In Sweden, the term 'Ombud' is used for a person who acts as the representative or spokesman of another person.",
    ),

    Question(
      questionText: "According to Donald C. Rowat, what role does the Ombudsman play in democratic government?",
      options: ["Bulkwork against officialdom", "Enforcement of laws", "Punishment of officials", "Judicial decision-making"],
      correctAnswerIndex: 0,
      explanation: "Donald C. Rowat describes the Ombudsman as a 'bulkwork of democratic government against the tyranny of officialdom.'",
    ),
    Question(
      questionText: "What is the main purpose of the Public Servants (Enquiries) Act, 1850, in India?",
      options: ["To establish rules for conduct of civil servants", "To investigate corruption allegations against public servants", "To define penalties for citizens' grievances", "To regulate the functioning of police establishments"],
      correctAnswerIndex: 1,
      explanation: "The Public Servants (Enquiries) Act, 1850, in India primarily serves the purpose of investigating corruption allegations against public servants.",
    ),

    Question(
      questionText: "Which act specifically deals with the prohibition of benami transactions in India?",
      options: ["Prevention of Corruption Act, 1988", "Commissions of Inquiry Act, 1952", "Benami Transactions (Prohibition) Act, 1988", "Vigilance organisations in ministries"],
      correctAnswerIndex: 2,
      explanation: "The Benami Transactions (Prohibition) Act, 1988, is the legislation in India that specifically addresses the prohibition of benami transactions.",
    ),

    Question(
      questionText: "Established in 1963, which organization is responsible for investigating and combating corruption at the national level in India?",
      options: ["Central Vigilance Commission", "National Commission for SCs", "Central Bureau of Investigation", "Lokayukta"],
      correctAnswerIndex: 2,
      explanation: "The Central Bureau of Investigation (CBI), established in 1963, is responsible for investigating and combating corruption at the national level in India.",
    ),

    Question(
      questionText: "What is the purpose of the 'File to Field' programme mentioned in the text?",
      options: ["A scheme to classify and control civil services", "A mechanism for public grievances redressal", "An initiative to protect whistleblowers", "A system for conducting inquiries against public servants"],
      correctAnswerIndex: 1,
      explanation: "The 'File to Field' programme is a scheme in some states like Kerala, where administrators go to villages/areas, hear public grievances, and take immediate action wherever possible.",
    ),

    Question(
      questionText: "Enacted in 2014, which legislation provides protection to whistleblowers in India?",
      options: ["Whistle Blowers Protection Act, 2014", "Indian Penal Code, 1860", "Prevention of Corruption Act, 1988", "Special Police Establishment Act, 1941"],
      correctAnswerIndex: 0,
      explanation: "The Whistle Blowers Protection Act, 2014, provides legal protection to whistleblowers in India.",
    ),
    Question(
      questionText: "According to the First Administrative Reforms Commission (ARC), what were the main recommendations regarding the establishment of Lokpal and Lokayukta in India?",
      options: ["They should be appointed by the Prime Minister", "They should focus on matters involving acts of terrorism", "Their investigations should be formal and public", "They should be demonstratively independent and impartial"],
      correctAnswerIndex: 3,
      explanation: "According to the ARC, the recommendations for Lokpal and Lokayukta included being demonstratively independent and impartial.",
    ),

    Question(
      questionText: "How is the appointment of Lokpal proposed to be done according to the ARC's recommendations?",
      options: ["Appointed by the Prime Minister", "Appointed by the President after consultation with specific authorities", "Elected by the Lok Sabha", "Appointed by the Chief Justice of India"],
      correctAnswerIndex: 1,
      explanation: "According to the ARC's recommendations, the Lokpal is proposed to be appointed by the President after consultation with the Chief Justice of India, the Speaker of Lok Sabha, and the Chairman of the Rajya Sabha.",
    ),

    Question(
      questionText: "What is the primary focus of Lokpal, according to the ARC's recommendations?",
      options: ["Dealing with complaints against common citizens", "Handling matters in the discretionary field involving acts of terrorism", "Investigating corruption allegations against ministers and secretaries", "Addressing grievances related to consumer disputes"],
      correctAnswerIndex: 2,
      explanation: "According to the ARC, Lokpal's primary focus is to deal with complaints against ministers and secretaries at both Central and state levels, particularly related to corruption allegations.",
    ),

    Question(
      questionText: "How many official attempts have been made to bring about legislation regarding Lokpal in India, according to the provided information?",
      options: ["Five", "Eight", "Ten", "Twelve"],
      correctAnswerIndex: 2,
      explanation: "So far, according to the provided information, ten official attempts have been made to bring about legislation regarding Lokpal in India.",
    ),

    Question(
      questionText: "Which government headed by Rajiv Gandhi introduced a bill related to Lokpal in August 1985?",
      options: ["Janata Government", "National Front Government", "NDA Government", "Congress Government"],
      correctAnswerIndex: 3,
      explanation: "The bill related to Lokpal in August 1985 was introduced by the Congress Government headed by Rajiv Gandhi.",
    ),
    Question(
      questionText: "What is the primary objective of the Lokpal and Lokayuktas Act (2013)?",
      options: ["To establish Lokayuktas at the Centre and States", "To provide a uniform vigilance and anti-corruption roadmap", "To exclude the Prime Minister from Lokpal's jurisdiction", "To focus on handling complaints against common citizens"],
      correctAnswerIndex: 1,
      explanation: "The primary objective of the Lokpal and Lokayuktas Act (2013) is to provide a uniform vigilance and anti-corruption roadmap for the nation, both at the Centre and in the States.",
    ),

    Question(
      questionText: "What is the composition of Lokpal, according to the features mentioned?",
      options: ["Chairperson and Vice-Chairperson", "Chairperson and five members, 50% of which are judicial members", "Chairperson and ten members", "Prime Minister and Chief Justice of India"],
      correctAnswerIndex: 1,
      explanation: "According to the features mentioned, Lokpal is to consist of a Chairperson and five members, with 50% of them being judicial members.",
    ),

    Question(
      questionText: "How is the selection of the Chairperson and members of Lokpal proposed to be done?",
      options: ["Selected by the Prime Minister", "Through public elections", "By a Selection Committee, including the Prime Minister, Speaker of Lok Sabha, and others", "Appointed by the President without consultation"],
      correctAnswerIndex: 2,
      explanation: "The selection of the Chairperson and members of Lokpal is proposed to be done through a Selection Committee consisting of the Prime Minister, Speaker of Lok Sabha, Leader of the Opposition, Chief Justice of India, and an eminent jurist.",
    ),

    Question(
      questionText: "What entities are brought under the jurisdiction of Lokpal in relation to foreign contributions?",
      options: ["Only government-aided institutions", "All entities receiving donations from foreign sources exceeding 10 lakhs per year", "Entities receiving donations from any source", "Entities receiving donations in excess of 1 crore"],
      correctAnswerIndex: 1,
      explanation: "All entities receiving donations from foreign sources in excess of 10 lakhs per year are brought under the jurisdiction of Lokpal in the context of the Foreign Contribution Regulation Act (FCRA).",
    ),

    Question(
      questionText: "What is one of the drawbacks mentioned regarding Lokpal's proceedings against public servants?",
      options: ["Anonymous complaints are allowed", "Emphasis on the substance of complaints", "Limitation period of 7 years to file complaints", "Suo motu proceedings against any public servant"],
      correctAnswerIndex: 3,
      explanation: "One of the drawbacks mentioned is the limitation period of 7 years to file complaints against public servants.",
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
    home: lp_ly(),
  ));
}

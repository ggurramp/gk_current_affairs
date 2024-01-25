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

class nintgn extends StatefulWidget {
  final String? userIdentifier;

  nintgn({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nintgn> createState() => _nintgnState();
}

class _nintgnState extends State<nintgn> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//87.NATIONAL INTEGRATION

    Question(
      questionText: "According to Myron Weiner, what does national integration imply?",
      options: [
        "Preference for parochial interests over national interests.",
        "Avoidance of divisive movements and preference for national interests.",
        "Industrial plans for political integration.",
        "Uniformity and assimilation of diverse segments."
      ],
      correctAnswerIndex: 1,
      explanation: "Myron Weiner suggests that national integration implies avoiding divisive movements and fostering attitudes that prioritise national and public interests over parochial interests.",
    ),

    Question(
      questionText: "How does H.A. Gani describe national integration?",
      options: [
        "A political and economic process.",
        "A socio-psychological and educational process.",
        "An industrial plan discussed by experts.",
        "A process involving uniformity and assimilation."
      ],
      correctAnswerIndex: 1,
      explanation: "H.A. Gani describes national integration as a socio-psychological and educational process that develops unity, solidarity, and a sense of common citizenship among people.",
    ),

    Question(
      questionText: "According to Dr. S. Radhakrishna, what is national integration?",
      options: [
        "A physical structure built with mortar and bricks.",
        "A consciousness that must awaken the people at large.",
        "A thought discussed and implemented by experts.",
        "A manifestation of divisive movements."
      ],
      correctAnswerIndex: 1,
      explanation: "Dr. S. Radhakrishna views national integration as a consciousness that must awaken the people at large, emphasising its non-physical and thoughtful nature.",
    ),

    Question(
      questionText: "How does Rasheeduddin Khalil define national integration?",
      options: [
        "Cohesion, fusion, and uniformity.",
        "Reconciliation, agglomeration, and assimilation.",
        "Preference to parochial interests.",
        "Cohesion, unity, but not uniformity."
      ],
      correctAnswerIndex: 3,
      explanation: "Rasheeduddin Khalil defines national integration as cohesion, unity, but not uniformity. It involves reconciliation, agglomeration, and avoiding assimilation of discrete segments.",
    ),

    Question(
      questionText: "What are some major obstacles to national integration?",
      options: [
        "Globalisation and technological advancements.",
        "Regionalism, communalism, and religious orthodoxy.",
        "Political ideologies and economic disparities.",
        "Industrialization and urbanisation."
      ],
      correctAnswerIndex: 1,
      explanation: "The regionalism, communalism, and religious orthodoxy as major obstacles to national integration.",
    ),

    Question(
        questionText: "What is the impact of the politicisation of caste?",
        options: [
          "Promotes unity and solidarity among different caste groups.",
          "Leads to the emergence of political parties and pressure groups based on caste.",
          "Results in the eradication of caste conflicts and violent disputes.",
          "Encourages harmonious relations between higher and lower castes."
        ],
        correctAnswerIndex: 1,
        explanation: "The politicisation of caste leads to the emergence of political parties and pressure groups based on caste, contributing to various manifestations like conflicts and disputes.",
    ),

    Question(
      questionText: "According to B.K. Nehru, what is the impact of reservations for Scheduled Castes and Scheduled Tribes?",
      options: [
        "Conducive to national integration.",
        "Leads to the vestigial form of communal electorates.",
        "Eliminates caste consciousness.",
        "Encourages harmony and unity among different caste groups."
      ],
      correctAnswerIndex: 1,
      explanation: "B.K. Nehru suggests that reservations for Scheduled Castes and Scheduled Tribes serve as vestigial forms of communal electorates, emphasising caste origin and consciousness.",
    ),

    Question(
      questionText: "How does linguism manifest as a consequence of the political process?",
      options: [
        "Promotes unity by encouraging multilingualism.",
        "Leads to the reorganisation of states based on language.",
        "Eliminates the need for an Official Languages Act.",
        "Encourages a single official language for the Union."
      ],
      correctAnswerIndex: 1,
      explanation: "Linguism manifests as a consequence of the political process through the reorganisation of states based on language, as well as the determination of the official language of the Union.",
    ),

    Question(
      questionText: "What event led to the countrywide demand for the reorganisation of states on the basis of language?",
      options: [
        "The enactment of the Official Languages Act.",
        "The rise of regional parties like TOP, AGP, Shiv Sena.",
        "The reorganisation of Andhra Pradesh in 1953.",
        "The continuous change in the political map of India."
      ],
      correctAnswerIndex: 2,
      explanation: "The countrywide demand for the reorganisation of states on the basis of language was triggered by the reorganisation of Andhra Pradesh in 1953.",
    ),

    Question(
      questionText: "How did the Official Languages Act (1963) impact language dynamics in India?",
      options: [
        "It led to the acceptance of Hindi as the only official language.",
        "It resulted in the implementation of the three-language formula.",
        "It sparked anti-Hindi agitation in South India and West Bengal.",
        "It promoted English as the sole official language."
      ],
      correctAnswerIndex: 2,
      explanation: "The Official Languages Act (1963) led to anti-Hindi agitation in South India and West Bengal, as it made Hindi the Official Language of the Union, prompting protests and assurances regarding the use of English.",
    ),

    Question(
      questionText: "When was the National Integration Council (NIC) first convened, and why was it established?",
      options: [
        "Convened in 1961 to discuss economic matters.",
        "Convened in 1962 to address national integration issues.",
        "Established in 1992 to combat communalism.",
        "Established in 1961 to promote regionalism."
      ],
      correctAnswerIndex: 1,
      explanation: "The NIC was first convened in 1961 and established in 1962 to address matters related to national integration, combat communalism, casteism, regionalism, linguism, and narrow-mindedness.",
    ),

    Question(
      questionText: "Who constitutes the National Integration Council (NIC)?",
      options: [
        "Only Prime Minister and Union Ministers.",
        "Leaders of the Opposition in the Lok Sabha and the Rajya Sabha.",
        "Only Chief Ministers of all states.",
        "Leaders of national political parties only."
      ],
      correctAnswerIndex: 1,
      explanation: "The NIC includes the Prime Minister, Union Ministers, Leaders of the Opposition in the Lok Sabha and the Rajya Sabha, Chief Ministers of all states, and leaders of national and regional political parties, among others.",
    ),

    Question(
      questionText: "What activities does the National Foundation for Communal Harmony (NFCH) undertake?",
      options: [
        "Primarily focused on providing financial assistance to child victims.",
        "Mainly involved in organising political activities.",
        "Aims to promote communal disharmony.",
        "Engages in promoting communal harmony, national integration, and various related activities."
      ],
      correctAnswerIndex: 3,
      explanation: "The NFCH primarily engages in promoting communal harmony, national integration, and related activities such as providing financial assistance to child victims, organising events, conducting studies, granting scholarships, conferring awards, and involving various organisations in promoting its objectives.",
    ),

    Question(
      questionText: "When was the National Foundation for Communal Harmony (NFCH) established, and what is its focus?",
      options: [
        "Established in 1962 with a focus on economic development.",
        "Established in 1992 with a focus on communal harmony and national integration.",
        "Established in 1961 with a focus on political issues.",
        "Established in 2000 with a focus on regional development."
      ],
      correctAnswerIndex: 1,
      explanation: "The NFCH was established in 1992 with a focus on promoting communal harmony, fraternity, and national integration.",
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
    home: nintgn(),
  ));
}

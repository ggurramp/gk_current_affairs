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

class federalSystem extends StatefulWidget {
  final String? userIdentifier;

  federalSystem({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<federalSystem> createState() => _federalSystemState();
}

class _federalSystemState extends State<federalSystem> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//14. Federal system
    Question(
      questionText: "How are governments classified based on the nature of relations between the national government and regional governments?",
      options: [
        "By economic strength",
        "By military power",
        "By socio-cultural diversity",
        "By the nature of relations between the national and regional governments"
      ],
      correctAnswerIndex: 3,
      explanation: "Governments are classified based on the nature of relations between the national and regional governments.",
    ),

    Question(
      questionText: "What is the defining characteristic of a unitary government?",
      options: [
        "Powers divided between national and regional governments",
        "Regional governments derive authority from the national government",
        "Independent operation of national and regional governments",
        "Formation through a treaty or agreement"
      ],
      correctAnswerIndex: 1,
      explanation: "In a unitary government, powers are vested in the national government, and regional governments derive their authority from it.",
    ),

    Question(
      questionText: "Which countries follow a unitary model of government?",
      options: ["US, Switzerland, Australia", "China, Italy, Sweden", "Norway, Japan, Brazil", "France, Britain, Canada"],
      correctAnswerIndex: 3,
      explanation: "France, Britain, Canada, and others have a unitary model of government.",
    ),

    Question(
      questionText: "What term is derived from a Latin word meaning 'treaty' or 'agreement'?",
      options: ["Constitution", "Federation", "Unitary", "Autonomy"],
      correctAnswerIndex: 1,
      explanation: "The term 'federation' is derived from a Latin word meaning 'treaty' or 'agreement.'",
    ),

    Question(
      questionText: "How can a federation be formed?",
      options: [
        "By military strength",
        "By economic integration",
        "By granting autonomy to provinces",
        "By establishing a strong center"
      ],
      correctAnswerIndex: 2,
      explanation: "A federation can be formed by granting autonomy to provinces, promoting regional interests.",
    ),

    Question(
      questionText: "What was the reason behind adopting a federal system in India according to the framers of the Constitution?",
      options: [
        "Military strength",
        "Socio-cultural diversity and large size of the country",
        "Economic integration",
        "Formation through an agreement"
      ],
      correctAnswerIndex: 1,
      explanation: "The framers adopted the federal system in India due to the large size of the country and its socio-cultural diversity.",
    ),

    Question(
      questionText: "What term is used in the Indian Constitution to describe the country?",
      options: ["Federation of States", "Union of States", "Central Republic", "Autonomous Union"],
      correctAnswerIndex: 1,
      explanation: "Article 1 of the Indian Constitution describes India as the 'Union of States.'",
    ),

    Question(
      questionText: "Based on which model is the Indian federal system formed?",
      options: ["American model", "European model", "Chinese model", "Canadian model"],
      correctAnswerIndex: 3,
      explanation: "The Indian federal system is based on the 'Canadian model,' which differs fundamentally from the 'American model.'",
    ),

    Question(
      questionText: "According to Dr. B.R. Ambedkar, why was the term 'Union of States' preferred over 'Federation of States' in the Indian Constitution?",
      options: [
        "To indicate military strength",
        "To emphasize economic integration",
        "To signify an agreement among states",
        "To convey that the federation is indestructible"
      ],
      correctAnswerIndex: 3,
      explanation: "The term 'Union of States' was preferred to 'Federation of States' to indicate that the Indian federation is not the result of an agreement among the states, and the states have no right to secede.",
    ),

    Question(
      questionText: "How does the Indian federal system resemble the Canadian federation?",
      options: [
        "In its military strength",
        "In its preference for the term 'Republic'",
        "In its centralizing tendency",
        "In its socio-cultural diversity"
      ],
      correctAnswerIndex: 2,
      explanation: "The Indian federal system resembles the Canadian federation in its centralizing tendency, vesting more powers in the center vis-a-vis the states.",
    ),
    Question(
      questionText: "What is a characteristic of a federal government?",
      options: [
        "Single government with regional governments",
        "Written Constitution",
        "No division of powers",
        "Supremacy of the constitution"
      ],
      correctAnswerIndex: 0,
      explanation: "A characteristic of a federal government is having dual government structures, including a national government and regional governments.",
    ),

    Question(
      questionText: "What is a characteristic of a unitary government?",
      options: [
        "Rigid Constitution",
        "Unwritten Constitution",
        "Division of powers between national and regional government",
        "Independent Judiciary"
      ],
      correctAnswerIndex: 2,
      explanation: "A characteristic of a unitary government is the absence of division of powers, with all powers vested in the national government.",
    ),

    Question(
      questionText: "Which feature is common to both federal and unitary governments?",
      options: [
        "Supremacy of the constitution",
        "Written Constitution",
        "Independent Judiciary",
        "Division of powers between national and regional government"
      ],
      correctAnswerIndex: 2,
      explanation: "The presence of an independent judiciary is a feature common to both federal and unitary governments.",
    ),

    Question(
      questionText: "In a unitary government, where do regional governments derive their authority from?",
      options: [
        "Regional agreements",
        "National government",
        "International treaties",
        "Constitutional amendments"
      ],
      correctAnswerIndex: 1,
      explanation: "In a unitary government, regional governments derive their authority from the national government.",
    ),

    Question(
      questionText: "What is a characteristic of the constitution in a federal government?",
      options: [
        "Flexibility",
        "Rigidity",
        "Independence of the judiciary",
        "Supremacy of the constitution"
      ],
      correctAnswerIndex: 1,
      explanation: "A characteristic of the constitution in a federal government is its rigidity.",
    ),

    Question(
      questionText: "Which government may have a bicameral legislature?",
      options: [
        "Unitary government",
        "Federal government",
        "Both",
        "Neither"
      ],
      correctAnswerIndex: 1,
      explanation: "A federal government may have a bicameral legislature, as mentioned in the text.",
    ),

    Question(
      questionText: "What type of government has all powers vested in the national government?",
      options: [
        "Federal government",
        "Unitary government",
        "Confederal government",
        "Parliamentary government"
      ],
      correctAnswerIndex: 1,
      explanation: "In a unitary government, all powers are vested in the national government.",
    ),

    Question(
      questionText: "Which government may have an unwritten constitution?",
      options: [
        "Unitary government",
        "Federal government",
        "Both",
        "Neither"
      ],
      correctAnswerIndex: 0,
      explanation: "An unwritten constitution is a characteristic of a unitary government, as seen in the example of Britain.",
    ),

    Question(
      questionText: "What distinguishes the judiciary in a federal government?",
      options: [
        "Dependence on regional governments",
        "Independence",
        "Rigidity",
        "Supremacy"
      ],
      correctAnswerIndex: 1,
      explanation: "The judiciary in a federal government is characterized by its independence.",
    ),

    Question(
      questionText: "Which government may have a unicameral legislature?",
      options: [
        "Unitary government",
        "Federal government",
        "Both",
        "Neither"
      ],
      correctAnswerIndex: 0,
      explanation: "A unicameral legislature is a feature of a unitary government, as seen in the example of China.",
    ),
    Question(
      questionText: "What is the structure of the dual polity established by the Constitution?",
      options: [
        "Single government at the Centre",
        "Union at the Centre and states at the periphery",
        "States only",
        "Regional governments only"
      ],
      correctAnswerIndex: 1,
      explanation: "The Constitution establishes a dual polity consisting of the Union at the Centre and the states at the periphery.",
    ),

    Question(
      questionText: "How does the Constitution avoid misunderstandings and disagreements between the Union and states?",
      options: [
        "By giving more powers to the Union",
        "By specifying the structure and functions of both the Centre and state governments",
        "By eliminating state governments",
        "By reducing the powers of the Centre"
      ],
      correctAnswerIndex: 1,
      explanation: "The Constitution avoids misunderstandings and disagreements by specifying the structure and functions of both the Centre and state governments.",
    ),

    Question(
      questionText: "What is the purpose of the division of powers between the Centre and the states?",
      options: [
        "To concentrate powers in the Centre",
        "To eliminate state governments",
        "To maintain federal structure",
        "To create conflicts between Centre and states"
      ],
      correctAnswerIndex: 2,
      explanation: "The division of powers maintains the federal structure by allocating specific powers to the Centre and states.",
    ),

    Question(
      questionText: "What is the highest law of the land according to the Constitution?",
      options: [
        "Laws enacted by the Centre",
        "Laws enacted by the states",
        "Supreme Court decisions",
        "The Constitution"
      ],
      correctAnswerIndex: 3,
      explanation: "The Constitution is the highest law of the land, and laws enacted by the Centre and states must conform to its provisions.",
    ),

    Question(
      questionText: "Why is the Constitution considered rigid?",
      options: [
        "Due to its length",
        "Due to the division of powers",
        "Due to the method of amendment",
        "Due to the number of articles"
      ],
      correctAnswerIndex: 2,
      explanation: "The Constitution is considered rigid due to the method of amendment, especially concerning federal structure and judicial organization.",
    ),

    Question(
      questionText: "What is the purpose of establishing an independent judiciary?",
      options: [
        "To concentrate power in the judiciary",
        "To settle disputes between states",
        "To protect the supremacy of the Constitution",
        "To reduce the power of the Supreme Court"
      ],
      correctAnswerIndex: 2,
      explanation: "An independent judiciary is established to protect the supremacy of the Constitution and settle disputes between Centre and states.",
    ),

    Question(
      questionText: "What does a bicameral legislature consist of according to the Constitution?",
      options: [
        "Two powerful chambers",
        "Two independent legislatures",
        "Upper House and Lower House",
        "Single House with dual functions"
      ],
      correctAnswerIndex: 2,
      explanation: "A bicameral legislature consists of an Upper House (Rajya Sabha) and a Lower House (Lok Sabha).",
    ),

    Question(
      questionText: "How does the Rajya Sabha contribute to maintaining federal equilibrium?",
      options: [
        "By representing only the Centre",
        "By representing the people of India",
        "By protecting the interests of the states",
        "By reducing the powers of the states"
      ],
      correctAnswerIndex: 2,
      explanation: "The Rajya Sabha maintains federal equilibrium by protecting the interests of the states against undue interference from the Centre.",
    ),

    Question(
      questionText: "What is a characteristic of the Rajya Sabha?",
      options: [
        "More powerful chamber",
        "Less powerful chamber",
        "No legislative powers",
        "No representation of states"
      ],
      correctAnswerIndex: 1,
      explanation: "The Rajya Sabha is a less powerful chamber compared to the Lok Sabha.",
    ),

    Question(
      questionText: "What role does the Supreme Court play in the federal system?",
      options: [
        "To concentrate power in the judiciary",
        "To settle disputes between Centre and states",
        "To eliminate state governments",
        "To weaken the federal structure"
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court plays a role in settling disputes between Centre and states in the federal system.",
    ),
    Question(
      questionText: "How does K.G. Wheare describe the Constitution of India?",
      options: [
        "Strictly federal",
        "Unitary with federal features",
        "Federally rigid",
        "Federal with no unitary features"
      ],
      correctAnswerIndex: 1,
      explanation: "K.G. Wheare describes the Constitution of India as 'unitary with federal features,' suggesting a deviation from traditional federal systems.",
    ),

    Question(
      questionText: "According to K. Santhanam, what factors contribute to the unitary bias of the Indian Constitution?",
      options: [
        "Empowerment of states",
        "Dominance of states in financial matters",
        "Dominance of the Centre in financial matters and the role of the planning commission",
        "Equal distribution of powers"
      ],
      correctAnswerIndex: 2,
      explanation: "K. Santhanam attributes the unitary bias to the dominance of the Centre in financial matters and the role of the planning commission.",
    ),

    Question(
      questionText: "How does Paul Appleby characterize the Indian system?",
      options: [
        "Highly federal",
        "Extremely federal",
        "Exemplary federal",
        "Extraordinarily federal"
      ],
      correctAnswerIndex: 1,
      explanation: "Paul Appleby characterizes the Indian system as 'extremely federal.'",
    ),

    Question(
      questionText: "How does Morris Jones describe the Indian system?",
      options: [
        "Federal with a strong centralizing tendency",
        "Loosely federal",
        "Strictly unitary",
        "Confederal"
      ],
      correctAnswerIndex: 0,
      explanation: "Morris Jones describes the Indian system as 'federal with a strong centralizing tendency.'",
    ),

    Question(
      questionText: "According to Dr. B.R. Ambedkar, what is the basic principle of federalism?",
      options: [
        "Partition of power by the Centre",
        "Partition of power by states",
        "Partition of power by a special law",
        "Partition of power by the Constitution itself"
      ],
      correctAnswerIndex: 3,
      explanation: "Dr. B.R. Ambedkar states that the basic principle of federalism is the partition of power by the Constitution itself.",
    ),

    Question(
      questionText: "In the Bommai case, how does the Supreme Court characterize federalism in the Indian Constitution?",
      options: [
        "Administrative convenience",
        "A matter of principle",
        "A temporary arrangement",
        "A political strategy"
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court characterizes federalism in the Indian Constitution as a 'matter of principle' in the Bommai case.",
    ),

    Question(
      questionText: "What does the compromise in the Indian federalism reflect?",
      options: [
        "Complete centralization",
        "Autonomy for states only",
        "Compromise between normal division of powers and national integrity",
        "Elimination of states"
      ],
      correctAnswerIndex: 2,
      explanation: "The compromise in Indian federalism reflects a balance between the normal division of powers and the need for national integrity.",
    ),

    Question(
      questionText: "What is one trend reflecting the federal spirit in the Indian political system?",
      options: [
        "Supremacy of the Centre",
        "Territorial disputes between states",
        "States as administrative agencies",
        "Elimination of regional parties"
      ],
      correctAnswerIndex: 1,
      explanation: "Territorial disputes between states reflect the federal spirit in the Indian political system.",
    ),

    Question(
      questionText: "What did the Supreme Court state in the Bommai case regarding the powers of states?",
      options: [
        "States are appendages of the Centre",
        "States have independent constitutional existence",
        "States are administrative agencies",
        "States have no legislative or executive authority"
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court stated in the Bommai case that states have independent constitutional existence and are not administrative agencies of the Centre.",
    ),

    Question(
      questionText: "What does Dr. B.R. Ambedkar observe about the Constitution's flexibility?",
      options: [
        "It is rigid",
        "It is flexible",
        "It is both unitary and federal",
        "It is temporary"
      ],
      correctAnswerIndex: 1,
      explanation: "Dr. B.R. Ambedkar observes that the Constitution's flexibility allows it to be both unitary and federal according to the requirements of time and circumstances.",
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
    home: federalSystem(),
  ));
}

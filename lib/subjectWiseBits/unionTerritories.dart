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

class unionTerritories extends StatefulWidget {
  final String? userIdentifier;

  unionTerritories({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<unionTerritories> createState() => _unionTerritoriesState();
}

class _unionTerritoriesState extends State<unionTerritories> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//41.UNION TERRITORIES

    Question(
      questionText: "Under Article 1 of the Constitution, how many categories of territories does the territory of India comprise?",
      options: ["Two", "Three", "Four", "Five"],
      correctAnswerIndex: 1,
      explanation: "Under Article 1 of the Constitution, the territory of India comprises three categories of territories: territories of the states, union territories, and territories that may be acquired by the Government of India at any time.",
    ),

    Question(
      questionText: "What distinguishes union territories from states in India?",
      options: ["Population density", "Direct control by the Central government", "Cultural distinctiveness", "Federal system"],
      correctAnswerIndex: 1,
      explanation: "Union territories in India are areas under the direct control and administration of the Central government, making them distinct from states.",
    ),

    Question(
      questionText: "How were union territories created during the British Rule?",
      options: ["Scheduled districts", "Chief commissioners provinces", "States Reorganisation Act", "Constitutional Amendment Act"],
      correctAnswerIndex: 1,
      explanation: "During the British Rule, certain areas were constituted as 'chief commissioners provinces,' and later, they became union territories after independence.",
    ),

    Question(
      questionText: "Which union territories have been created for strategic importance?",
      options: ["Delhi and Chandigarh", "Puducherry and Dadra Nagar Haveli", "Andaman and Nicobar Islands and Lakshadweep", "Jammu and Kashmir and Ladakh"],
      correctAnswerIndex: 2,
      explanation: "Union territories like Andaman and Nicobar Islands and Lakshadweep were created for their strategic importance.",
    ),

    Question(
      questionText: "In 2019, what was the reason given for bifurcating the state of Jammu and Kashmir into two union territories?",
      options: ["Cultural distinctiveness", "Population density", "Strategic importance", "Realizing aspirations and internal security"],
      correctAnswerIndex: 3,
      explanation: "The creation of the Union territories of Jammu and Kashmir and Ladakh was justified based on realizing the aspirations of Ladakh's people and addressing the internal security situation in Jammu and Kashmir.",
    ),

    Question(
      questionText: "Why were Dadra and Nagar Haveli and Daman and Diu merged into a single union territory in 2020?",
      options: ["Political and administrative consideration", "Cultural distinctiveness", "Strategic importance", "Efficiency and Minimum Government policy"],
      correctAnswerIndex: 3,
      explanation: "The merger of Dadra and Nagar Haveli and Daman and Diu into a single union territory was driven by the aim of achieving efficiency, avoiding duplication, and aligning with the policy of 'Minimum Government, Maximum Governance.'",
    ),
    Question(
      questionText: "Who administers union territories in India, and how are they appointed?",
      options: ["Governors", "Chief Ministers", "Administrators appointed by the President", "Local Legislatures"],
      correctAnswerIndex: 2,
      explanation: "Union territories in India are administered by the President through administrators appointed by him/her. The President can specify the designation, such as Lieutenant Governor or Chief Commissioner.",
    ),

    Question(
      questionText: "What political institutions are provided to certain union territories like Puducherry, Delhi, and Jammu and Kashmir?",
      options: ["Governor", "Chief Minister", "Legislative Assembly and Council of Ministers", "Local Panchayats"],
      correctAnswerIndex: 2,
      explanation: "Puducherry, Delhi, and Jammu and Kashmir are provided with a Legislative Assembly and a Council of Ministers headed by a Chief Minister.",
    ),

    Question(
      questionText: "What legislative powers does the Parliament have over union territories?",
      options: ["Limited to Concurrent List", "Full legislative power", "No legislative power", "Depends on the President's discretion"],
      correctAnswerIndex: 1,
      explanation: "The Parliament can make laws on any subject of the three lists, including the State List, for union territories. This power extends even to those with local legislatures like Puducherry, Delhi, and Jammu and Kashmir.",
    ),

    Question(
      questionText: "How can the President legislate for union territories, and what is the effect of such regulations?",
      options: ["By passing acts", "By making regulations", "Through local legislatures", "By appointing Governors"],
      correctAnswerIndex: 1,
      explanation: "The President can legislate for union territories by making regulations. Regulations made by the President have the same force and effect as an act of Parliament and can also repeal or amend any act of Parliament.",
    ),

    Question(
      questionText: "Which union territory is the only one with its own high court, and which high court has jurisdiction over Dadra and Nagar Haveli and Daman and Diu?",
      options: ["Chandigarh; Bombay High Court", "Delhi; Delhi High Court", "Lakshadweep; Calcutta High Court", "Jammu and Kashmir; Jammu and Kashmir High Court"],
      correctAnswerIndex: 1,
      explanation: "Delhi is the only union territory with its own high court. The Bombay High Court has jurisdiction over Dadra and Nagar Haveli and Daman and Diu.",
    ),

    Question(
      questionText: "What administrative system, including executive, legislature, and judiciary, summarizes the structure of union territories?",
      options: ["Governor-led administration", "Parliamentary control", "President-appointed administrator", "President-led administration"],
      correctAnswerIndex: 2,
      explanation: "The administrative system of union territories includes an administrator appointed by the President, legislative powers granted by the Parliament, and judiciary arrangements.",
    ),
    Question(
      questionText: "What did the 69th Constitutional Amendment Act of 1991 provide for the Union Territory of Delhi?",
      options: ["Redesignated it as a state", "Established a legislative assembly", "Abolished the legislative assembly", "Merged it with a neighboring state"],
      correctAnswerIndex: 1,
      explanation: "The 69th Constitutional Amendment Act of 1991 provided a special status to the Union Territory of Delhi, redesignating it as the National Capital Territory of Delhi and establishing a legislative assembly.",
    ),

    Question(
      questionText: "How is the strength of the Legislative Assembly of Delhi determined, and what subjects can it make laws on?",
      options: ["Appointed by the President; State List matters", "Directly elected; State and Concurrent List matters", "Appointed by the Lieutenant Governor; State List matters", "Chosen by the Chief Minister; Concurrent List matters"],
      correctAnswerIndex: 1,
      explanation: "The Legislative Assembly of Delhi is directly elected by the people, with a fixed strength of 70 members. It can make laws on all matters of the State List and the Concurrent List except public order, police, and land.",
    ),

    Question(
      questionText: "Who appoints the Chief Minister and other ministers in Delhi, and how is the Chief Minister appointed?",
      options: ["Lieutenant Governor; Appointed by the President", "Elected by the Legislative Assembly; Appointed by the President", "Lieutenant Governor; Elected by the people", "Appointed by the President; Elected by the people"],
      correctAnswerIndex: 0,
      explanation: "The Chief Minister and other ministers in Delhi are appointed by the Lieutenant Governor. The Chief Minister is appointed by the President on the Lieutenant Governor's advice.",
    ),

    Question(
      questionText: "What powers does the Council of Ministers in Delhi have, and to whom are they collectively responsible?",
      options: ["Independent powers; Responsible to the Lieutenant Governor", "Advisory powers; Responsible to the President", "Executive powers; Responsible to the Legislative Assembly", "Discretionary powers; Responsible to the Parliament"],
      correctAnswerIndex: 2,
      explanation: "The Council of Ministers in Delhi, headed by the Chief Minister, has executive powers and is collectively responsible to the Legislative Assembly.",
    ),

    Question(
      questionText: "Under what circumstances can the President suspend the operation of provisions related to Delhi's administration?",
      options: ["During election periods", "In case of administrative difficulties", "On the request of the Legislative Assembly", "When the Chief Minister resigns"],
      correctAnswerIndex: 1,
      explanation: "The President can suspend the operation of provisions for Delhi's administration in case of a situation where the administration cannot be carried on in accordance with the existing provisions.",
    ),

    Question(
      questionText: "What power does the Lieutenant Governor of Delhi have regarding ordinances, and how are they approved?",
      options: ["Can promulgate ordinances independently; No approval required", "Requires the Chief Minister's approval to promulgate ordinances", "Can withdraw ordinances at any time; Approval by the Parliament", "Can promulgate ordinances during assembly recess; Must be approved by the assembly"],
      correctAnswerIndex: 3,
      explanation: "The Lieutenant Governor of Delhi can promulgate ordinances during assembly recess, and every ordinance must be approved by the assembly within six weeks from its reassembly.",
    ),
    Question(
      questionText: "Which ministry is the nodal ministry for all matters of Union Territories related to legislation, finance, and appointment of Lt. Governors and Administrators?",
      options: ["Ministry of Finance", "Ministry of Home Affairs", "Ministry of External Affairs", "Ministry of Law and Justice"],
      correctAnswerIndex: 1,
      explanation: "The Ministry of Home Affairs is the nodal ministry for all matters of Union Territories related to legislation, finance, and appointment of Lt. Governors and Administrators.",
    ),

    Question(
      questionText: "What committees exist for Union Territories without a legislature, and who chairs these committees?",
      options: ["Legislative Assembly Committees; Chaired by the Chief Minister", "Home Minister's Advisory Committee (HMAC) and Administrator's Advisory Committee (AAC); Chaired by the Union Home Minister and Administrator, respectively", "Parliamentary Committees; Chaired by the Prime Minister", "Finance Committees; Chaired by the Finance Minister"],
      correctAnswerIndex: 1,
      explanation: "Union Territories without a legislature have the Home Minister's Advisory Committee (HMAC) and Administrator's Advisory Committee (AAC), chaired by the Union Home Minister and Administrator, respectively.",
    ),

    Question(
      questionText: "Who are the members of the Home Minister's Advisory Committee (HMAC) and Administrator's Advisory Committee (AAC) among others?",
      options: ["Union Home Minister and Chief Ministers only", "Members of Parliament and elected members from local bodies", "Ministers from the nodal ministry only", "Governors and Lt. Governors only"],
      correctAnswerIndex: 1,
      explanation: "Members of Parliament and elected members from local bodies, such as District Panchayats and Municipal Councils, are among the members of the Home Minister's Advisory Committee (HMAC) and Administrator's Advisory Committee (AAC).",
    ),

    Question(
      questionText: "What is the purpose of Home Minister's Advisory Committee (HMAC) and Administrator's Advisory Committee (AAC)?",
      options: ["To discuss matters related to national security only", "To discuss general issues related to social and economic development of Union Territories", "To create new legislation for Union Territories", "To appoint Lt. Governors and Administrators"],
      correctAnswerIndex: 1,
      explanation: "Home Minister's Advisory Committee (HMAC) and Administrator's Advisory Committee (AAC) discuss general issues related to the social and economic development of Union Territories.",
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
    home: unionTerritories(),
  ));
}

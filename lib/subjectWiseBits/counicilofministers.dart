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

class counicilofministers extends StatefulWidget {
  final String? userIdentifier;

  counicilofministers({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<counicilofministers> createState() => _counicilofministersState();
}

class _counicilofministersState extends State<counicilofministers> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What is the highest decision-making authority in the politico-administrative system?",
      options: [
        "Cabinet",
        "Inner Cabinet",
        "Council of Ministers",
        "President"
      ],
      correctAnswerIndex: 0,
      explanation: "The Cabinet is the highest decision-making authority in the politico-administrative system.",
    ),

    Question(
      questionText: "Who is the head of the 'Inner Cabinet' or 'Kitchen Cabinet'?",
      options: [
        "Cabinet ministers",
        "Family members of the Prime Minister",
        "Prime Minister",
        "President"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Inner Cabinet' or 'Kitchen Cabinet' is headed by the Prime Minister.",
    ),

    Question(
      questionText: "What is the chief role of the Cabinet in the political system?",
      options: [
        "Legislative decision-making",
        "Financial matters",
        "Policy formulation",
        "Foreign affairs"
      ],
      correctAnswerIndex: 2,
      explanation: "The Cabinet is the chief policy-formulating body in the central government.",
    ),

    Question(
      questionText: "What does Ramsay Muir describe as the role of the Cabinet?",
      options: [
        "Solar orb around which other bodies revolve",
        "Steering wheel of the ship of the state",
        "Pivot around which the whole political machinery revolves",
        "Magnet of policy"
      ],
      correctAnswerIndex: 1,
      explanation: "Ramsay Muir describes the Cabinet as the 'steering wheel of the ship of the state.'",
    ),

    Question(
      questionText: "What is the 'Kitchen Cabinet' or 'Inner Cabinet'?",
      options: [
        "A larger version of the formal Cabinet",
        "A body consisting of all cabinet ministers",
        "A smaller informal body advising the Prime Minister",
        "An elected committee"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Kitchen Cabinet' or 'Inner Cabinet' is a smaller informal body advising the Prime Minister.",
    ),

    Question(
      questionText: "What is one of the merits of the 'Inner Cabinet'?",
      options: [
        "Increases the authority and status of the Cabinet",
        "Reduces efficiency in decision-making",
        "Helps in maintaining secrecy in decision-making",
        "Circumvents the legal process"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the merits of the 'Inner Cabinet' is that it helps the Prime Minister in maintaining secrecy in decision-making.",
    ),

    Question(
      questionText: "Which article of the Constitution pertains to the conduct of business of the Government of India?",
      options: [
        "Article 74",
        "Article 75",
        "Article 77",
        "Article 78"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 77 pertains to the conduct of business of the Government of India.",
    ),
    Question(
      questionText: "What is the maximum size of the council of ministers according to the 91st Constitutional Amendment Act of 2003?",
      options: ["10% of the total strength of Lok Sabha", "12% of the total strength of Lok Sabha", "15% of the total strength of Lok Sabha", "20% of the total strength of Lok Sabha"],
      correctAnswerIndex: 2,
      explanation: "The maximum size of the council of ministers should not exceed 15% of the total strength of Lok Sabha, as per the 91st Constitutional Amendment Act of 2003.",
    ),

    Question(
      questionText: "Which tier of the council of ministers is responsible for enforcing the collective responsibility of the council of ministers to the lower House of Parliament?",
      options: ["Cabinet Ministers", "Ministers of State", "Deputy Ministers", "The entire council of ministers"],
      correctAnswerIndex: 0,
      explanation: "Cabinet Ministers, as a part of the council of ministers, are collectively responsible to the lower House of Parliament.",
    ),

    Question(
      questionText: "What does the Salaries and Allowances of Ministers Act of 1952 define as a 'minister'?",
      options: ["A member of the council of ministers", "A deputy minister", "A cabinet minister", "A member of Parliament"],
      correctAnswerIndex: 0,
      explanation: "The Salaries and Allowances of Ministers Act of 1952 defines a 'minister' as a 'member of the council of ministers, by whatever name called, and includes a deputy minister.'",
    ),

    Question(
      questionText: "Which amendment inserted the concept of the cabinet into Article 352 of the Constitution in 1978?",
      options: ["42nd Constitutional Amendment Act", "44th Constitutional Amendment Act", "46th Constitutional Amendment Act", "48th Constitutional Amendment Act"],
      correctAnswerIndex: 1,
      explanation: "The 44th Constitutional Amendment Act in 1978 inserted the concept of the cabinet into Article 352 of the Constitution.",
    ),

    Question(
      questionText: "What is one of the differences between the council of ministers and the cabinet?",
      options: ["Collective responsibility to the lower House of Parliament", "Frequency of meetings as a body", "Number of ministers included", "Constitutional definition"],
      correctAnswerIndex: 1,
      explanation: "One of the differences is that the council of ministers does not meet as a body to transact government business, while the cabinet meets frequently and usually once a week.",
    ),

    Question(
      questionText: "Which body implements the decisions taken by the cabinet?",
      options: ["Cabinet", "Council of Ministers", "Prime Minister", "Parliament"],
      correctAnswerIndex: 1,
      explanation: "The council of ministers, as a body, implements the decisions taken by the cabinet.",
    ),
    Question(
      questionText: "Who stands at the top of all ministers in the council of ministers?",
      options: ["Cabinet Ministers", "Ministers of State", "Deputy Ministers", "Prime Minister"],
      correctAnswerIndex: 3,
      explanation: "The Prime Minister stands at the top of all ministers in the council of ministers as the supreme governing authority of the country.",
    ),

    Question(
      questionText: "What is the role of cabinet ministers in the council of ministers?",
      options: ["Head important ministries", "Assist ministers of state", "Work independently", "Report to deputy ministers"],
      correctAnswerIndex: 0,
      explanation: "Cabinet ministers head important ministries of the Central government, attend cabinet meetings, and play a crucial role in deciding policies.",
    ),

    Question(
      questionText: "How do ministers of state function in the council of ministers?",
      options: ["Head independent ministries", "Assist cabinet ministers", "Attend cabinet meetings regularly", "Have no specific functions"],
      correctAnswerIndex: 1,
      explanation: "Ministers of state can either be given independent charge of ministries or be attached to cabinet ministers. They work under the supervision and guidance of cabinet ministers.",
    ),

    Question(
      questionText: "What is the main difference between ministers of state with independent charge and those attached to cabinet ministers?",
      options: ["Their rank", "Attendance at cabinet meetings", "Responsibilities", "Emoluments"],
      correctAnswerIndex: 2,
      explanation: "Ministers of state with independent charge perform the same functions and exercise the same powers as cabinet ministers in their ministries, while those attached to cabinet ministers work under their supervision and guidance.",
    ),

    Question(
      questionText: "What is the role of deputy ministers in the council of ministers?",
      options: ["Head ministries", "Assist ministers of state", "Assist in parliamentary duties", "Attend cabinet meetings"],
      correctAnswerIndex: 2,
      explanation: "Deputy ministers are attached to cabinet ministers or ministers of state and assist them in their administrative, political, and parliamentary duties. They do not attend cabinet meetings.",
    ),

    Question(
      questionText: "Who appoints parliamentary secretaries, and what is their role in the council of ministers?",
      options: ["Appointed by the President, head ministries", "Appointed by the Prime Minister, assist ministers", "Elected by the Parliament, attend cabinet meetings", "Appointed by the Prime Minister, assist senior ministers"],
      correctAnswerIndex: 3,
      explanation: "Parliamentary secretaries are appointed by the Prime Minister, assist senior ministers, and have no department under their control. They are not members of the council of ministers.",
    ),
    Question(
      questionText: "What is the fundamental principle underlying the parliamentary system of government?",
      options: ["Individual responsibility", "Legal responsibility", "Collective responsibility", "Ministerial autonomy"],
      correctAnswerIndex: 2,
      explanation: "The fundamental principle underlying the parliamentary system of government is collective responsibility, where all ministers own joint responsibility to the Lok Sabha for their actions.",
    ),

    Question(
      questionText: "What happens when the Lok Sabha passes a no-confidence motion against the council of ministers?",
      options: ["Cabinet ministers resign", "Ministers of State resign", "Deputy ministers resign", "Council of ministers advises Lok Sabha"],
      correctAnswerIndex: 0,
      explanation: "When the Lok Sabha passes a no-confidence motion against the council of ministers, all ministers, including those from the Rajya Sabha, have to resign.",
    ),

    Question(
      questionText: "According to the principle of collective responsibility, how are cabinet decisions regarded?",
      options: ["Only binding on the Prime Minister", "Binding only if unanimously agreed upon", "Bind all cabinet ministers", "Not binding on ministers"],
      correctAnswerIndex: 2,
      explanation: "According to the principle of collective responsibility, cabinet decisions bind all cabinet ministers, even if they had different opinions during cabinet meetings.",
    ),

    Question(
      questionText: "Under what circumstances can a minister be removed from office according to individual responsibility?",
      options: ["When the council of ministers loses confidence", "At any time during the pleasure of the President", "When the minister disagrees with the Prime Minister", "Only after being charged with a legal offense"],
      correctAnswerIndex: 1,
      explanation: "Ministers hold office during the pleasure of the President, and the President can remove a minister at any time, but this removal happens on the advice of the Prime Minister.",
    ),

    Question(
      questionText: "In the context of legal responsibility, how does the situation in India differ from Britain?",
      options: ["Ministers can be sued in India", "Legal responsibility is recognized in India", "Courts can enquire into ministerial advice in India", "No provision for legal responsibility in India"],
      correctAnswerIndex: 3,
      explanation: "In India, there is no provision for the system of legal responsibility of a minister, unlike in Britain where ministers can be held responsible for public acts.",
    ),

    Question(
      questionText: "Who appoints the Prime Minister in India?",
      options: ["The Lok Sabha", "The President", "The Council of Ministers", "The Supreme Court"],
      correctAnswerIndex: 1,
      explanation: "The Prime Minister in India is appointed by the President.",
    ),

    Question(
      questionText: "What must a person who is not a member of either House of Parliament do within six months of being appointed as a minister?",
      options: ["Resign from the position", "Seek reappointment", "Become a member of Parliament", "Serve for six months without membership"],
      correctAnswerIndex: 2,
      explanation: "A person who is not a member of either House of Parliament and is appointed as a minister must become a member (either by election or by nomination) of either House of Parliament within six months.",
    ),

    Question(
      questionText: "What oath does a minister take before entering office?",
      options: ["Oath of allegiance to the President", "Oath of secrecy only", "Oath of office and secrecy", "Oath of loyalty to the Prime Minister"],
      correctAnswerIndex: 2,
      explanation: "Before entering office, a minister takes the oaths of office and secrecy. The oath of office includes allegiance to the Constitution, upholding the sovereignty and integrity of India, and faithful discharge of duties.",
    ),

    Question(
      questionText: "How did the Supreme Court respond to the challenge of Devi Lal's oath as Deputy Prime Minister?",
      options: ["Declared the oath invalid", "Upheld the oath as valid", "Suggested a constitutional amendment", "Referred the matter to Parliament"],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court upheld the oath of Devi Lal as Deputy Prime Minister as valid, stating that the description of a minister as Deputy Prime Minister does not vitiate the oath taken.",
    ),

    Question(
      questionText: "How are the salaries and allowances of ministers determined?",
      options: ["By the Prime Minister", "By the President", "By Parliament", "By the Council of Ministers"],
      correctAnswerIndex: 2,
      explanation: "The salaries and allowances of ministers are determined by Parliament from time to time.",
    ),
    Question(
      questionText: "Which articles in the Constitution of India deal with the council of ministers and their functions?",
      options: ["Article 77 and Article 78", "Article 75 and Article 77", "Article 74 and Article 75", "Article 75 and Article 88"],
      correctAnswerIndex: 2,
      explanation: "The council of ministers and their functions are dealt with in the Constitution of India under Article 74 and Article 75.",
    ),

    Question(
      questionText: "What does Article 74 of the Constitution state regarding the council of ministers?",
      options: ["The council of ministers advises the President, but the advice is not binding.", "The President can act without the advice of the council of ministers.", "The council of ministers advises the President, and the advice is binding.", "The President can reconsider the advice of the council of ministers and act accordingly."],
      correctAnswerIndex: 2,
      explanation: "Article 74 states that the council of ministers advises the President, and the advice is binding. The President can require reconsideration, but ultimately acts in accordance with the advice.",
    ),

    Question(
      questionText: "How is the total number of ministers, including the Prime Minister, limited according to the Constitution?",
      options: ["10% of the total strength of the Lok Sabha", "20% of the total strength of the Rajya Sabha", "15% of the total strength of the Lok Sabha", "25% of the total strength of the Parliament"],
      correctAnswerIndex: 2,
      explanation: "According to the Constitution, the total number of ministers, including the Prime Minister, in the Council of Ministers shall not exceed 15% of the total strength of the Lok Sabha.",
    ),

    Question(
      questionText: "What is the nature of advice tendered by ministers to the President?",
      options: ["Optional and non-binding", "Compulsory but non-binding", "Optional and binding", "Compulsory and binding"],
      correctAnswerIndex: 3,
      explanation: "The nature of advice tendered by ministers to the President is binding, as stated in Article 74. Courts cannot inquire into the advice.",
    ),

    Question(
      questionText: "In the V.N.R. Rao case (1971), what did the Supreme Court emphasize regarding the council of ministers?",
      options: ["The council of ministers ceases to hold office after the dissolution of the Lok Sabha.", "The exercise of executive power without the aid and advice of the council of ministers is constitutional.", "Article 74 is not mandatory.", "The council of ministers does not cease to hold office even after the dissolution of the Lok Sabha, and the aid and advice are mandatory."],
      correctAnswerIndex: 3,
      explanation: "In the V.N.R. Rao case (1971), the Supreme Court emphasized that the council of ministers does not cease to hold office even after the dissolution of the Lok Sabha, and the aid and advice are mandatory.",
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
    home: counicilofministers(),
  ));
}

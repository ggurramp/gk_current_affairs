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

class primeminister extends StatefulWidget {
  final String? userIdentifier;

  primeminister({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<primeminister> createState() => _primeministerState();
}

class _primeministerState extends State<primeminister> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "Who was the first non-Congress Prime Minister and had previously served as the Chief Minister of the erstwhile Bombay State?",
      options: ["V.P. Singh", "P.V. Narasimha Rao", "Morarji Desai", "Charan Singh"],
      correctAnswerIndex: 2,
      explanation: "Morarji Desai, who was Chief Minister of the erstwhile Bombay State during 1952-56, became the first non-Congress Prime Minister in March 1977.",
    ),

    Question(
      questionText: "Which Prime Minister held the position of Chief Minister of Andhra Pradesh between 1971-1973?",
      options: ["P.V. Narasimha Rao", "V.P. Singh", "H.D. Deve Gowda", "Narendra Modi"],
      correctAnswerIndex: 0,
      explanation: "P.V. Narasimha Rao, the first Prime Minister from South India, was Chief Minister of Andhra Pradesh between 1971-1973.",
    ),

    Question(
      questionText: "Who was Chief Minister of Karnataka before being chosen to lead the United Front government in June 1996?",
      options: ["H.D. Deve Gowda", "Morarji Desai", "Charan Singh", "Narendra Modi"],
      correctAnswerIndex: 0,
      explanation: "H.D. Deve Gowda was Chief Minister of Karnataka when he was chosen to lead the United Front government in June 1996.",
    ),

    Question(
      questionText: "Who became the Prime Minister in May 2014 and had previously served as the Chief Minister of Gujarat for four terms?",
      options: ["V.P. Singh", "P.V. Narasimha Rao", "Narendra Modi", "H.D. Deve Gowda"],
      correctAnswerIndex: 2,
      explanation: "Narendra Modi, who was the Chief Minister of Gujarat, became the Prime Minister in May 2014 and served as Chief Minister for four terms.",
    ),

    Question(
      questionText: "What does the term 'caretaker government' refer to in the context of parliamentary systems?",
      options: [
        "A government that manages routine activities without making any significant policy decisions",
        "A government elected directly by the people",
        "A government formed during caretaker elections",
        "A government that holds office for a limited term"
      ],
      correctAnswerIndex: 0,
      explanation: "In the context of parliamentary systems, a caretaker government refers to a government that manages routine activities without making any significant policy decisions.",
    ),

    Question(
      questionText: "What role is a caretaker government expected to play after the dissolution of the popular chamber of the Parliament?",
      options: [
        "Initiate new policies and projects",
        "Hold charge until alternative arrangements are made",
        "Make significant policy decisions",
        "Continue governing without any changes"
      ],
      correctAnswerIndex: 1,
      explanation: "A caretaker government is expected to hold charge until alternative arrangements are made after the dissolution of the popular chamber of the Parliament.",
    ),

    Question(
      questionText: "What limitations are placed on a caretaker government, as recommended by the Thakurde Committee?",
      options: [
        "Initiate and announce new policies",
        "Promise or start new projects",
        "Grant allowances or loans, salary increases",
        "Hold official functions attended by ministers"
      ],
      correctAnswerIndex: 0,
      explanation: "The Thakurde Committee recommended that a caretaker government should not initiate and announce new policies, among other limitations.",
    ),

    Question(
      questionText: "According to a judgment in December 1979, what does an extraordinary situation, such as the need for a caretaker government, call for?",
      options: [
        "A government with expanded powers",
        "A government without any restrictions",
        "A caretaker government with limited roles",
        "A government with unlimited terms"
      ],
      correctAnswerIndex: 2,
      explanation: "An extraordinary situation, such as the need for a caretaker government, calls for a caretaker government with limited roles, according to a judgment in December 1979.",
    ),

    Question(
      questionText: "What are the two reasons that constrain caretaker Prime Ministers, as mentioned in the text?",
      options: [
        "Lack of accountability through Parliament and abuse of position for electoral advantage",
        "Limited powers and non-abuse of position for electoral advantage",
        "Absence of electoral advantage and unrestricted powers",
        "High accountability and abuse of position for electoral advantage"
      ],
      correctAnswerIndex: 0,
      explanation: "Caretaker Prime Ministers are constrained by the lack of accountability through Parliament and the potential abuse of their position for electoral advantage.",
    ),
    Question(
      questionText: "How did Lord Morley describe the Prime Minister's position?",
      options: [
        "'Primus inter pares' (first among equals) and 'keystone of the cabinet arch'",
        "'Inter stellas luna minores' (a moon among lesser stars)",
        "A sun around which planets revolve",
        "The captain of the ship of the state"
      ],
      correctAnswerIndex: 0,
      explanation: "Lord Morley described the Prime Minister as 'primus inter pares' (first among equals) and 'keystone of the cabinet arch'.",
    ),

    Question(
      questionText: "According to Jennings, how did he characterize the Prime Minister's role in the constitution?",
      options: [
        "The captain of the ship of the state",
        "The sun around which planets revolve",
        "Primus inter pares and keystone of the cabinet arch",
        "Central to its formation, central to its life, and central to its death"
      ],
      correctAnswerIndex: 1,
      explanation: "Jennings characterized the Prime Minister's role as 'He is, rather, a sun around which planets revolve. He is the keystone of the constitution.'",
    ),

    Question(
      questionText: "How did H.J. Laski describe the relationship between the Prime Minister and the cabinet?",
      options: [
        "Primus inter pares and keystone of the cabinet arch",
        "The master of the country and master of the government",
        "Central to its formation, central to its life, and central to its death",
        "The pivot around which the entire governmental machinery revolves"
      ],
      correctAnswerIndex: 3,
      explanation: "H.J. Laski described the Prime Minister as 'The pivot around which the entire governmental machinery revolves.'",
    ),

    Question(
      questionText: "What term did Ramsay Muir use to describe the Prime Minister?",
      options: [
        "The master of the country",
        "The captain of the ship of the state",
        "The steersman of the steering wheel of the ship",
        "Primus inter pares and keystone of the cabinet arch"
      ],
      correctAnswerIndex: 2,
      explanation: "Ramsay Muir described the Prime Minister as 'the steersman of the steering wheel of the ship of the state.'",
    ),

    Question(
      questionText: "According to R.H. Crossman, what transformation occurred in the British system of governing in the post-war epoch?",
      options: [
        "Transformation into parliamentary democracy",
        "Transformation into cabinet government",
        "Transformation into Prime Ministerial government",
        "Transformation into a federal system"
      ],
      correctAnswerIndex: 2,
      explanation: "R.H. Crossman stated, 'The post-war epoch has been the final transformation of cabinet government into Prime Ministerial government.'",
    ),

    Question(
      questionText: "What does Article 74 of the Constitution specify regarding the relationship between the President and the Prime Minister?",
      options: [
        "The Prime Minister shall be appointed by the President",
        "The Prime Minister shall act in accordance with the advice of the President",
        "The President may require the council of ministers to reconsider advice",
        "The Prime Minister is collectively responsible to the House of the People"
      ],
      correctAnswerIndex: 1,
      explanation: "Article 74 specifies that the Prime Minister shall act in accordance with the advice of the President.",
    ),

    Question(
      questionText: "Under Article 75, who appoints the ministers in addition to the Prime Minister?",
      options: [
        "The President",
        "The Council of Ministers",
        "The Lok Sabha",
        "The Governor"
      ],
      correctAnswerIndex: 0,
      explanation: "Under Article 75, the ministers are appointed by the President on the advice of the Prime Minister.",
    ),

    Question(
      questionText: "According to Article 78, what is the duty of the Prime Minister?",
      options: [
        "To hold office during the pleasure of the President",
        "To communicate decisions to the President and submit matters for reconsideration",
        "To hold charge until alternative arrangements are made",
        "To make significant policy decisions"
      ],
      correctAnswerIndex: 1,
      explanation: "According to Article 78, the duty of the Prime Minister includes communicating decisions to the President and submitting matters for reconsideration by the council of ministers.",
    ),
    Question(
      questionText: "What is included in the oath of office that the Prime Minister takes before entering office?",
      options: [
        "To uphold the sovereignty and integrity of India",
        "To bear true faith and allegiance to the Constitution of India",
        "To faithfully and conscientiously discharge the duties of the office",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The oath of office for the Prime Minister includes upholding the sovereignty and integrity of India, bearing true faith and allegiance to the Constitution of India, and faithfully and conscientiously discharging the duties of the office.",
    ),

    Question(
      questionText: "How is the term of the Prime Minister determined?",
      options: [
        "Fixed term of five years",
        "Holds office during the pleasure of the President",
        "Appointed for a maximum of two terms",
        "Elected by the Parliament"
      ],
      correctAnswerIndex: 1,
      explanation: "The term of the Prime Minister is not fixed, and he/she holds office during the pleasure of the President.",
    ),

    Question(
      questionText: "Under what circumstances can the President dismiss the Prime Minister?",
      options: [
        "At any time",
        "When the Prime Minister loses majority support in the Lok Sabha",
        "After completing two terms",
        "If the Prime Minister disagrees with the President"
      ],
      correctAnswerIndex: 1,
      explanation: "The President can dismiss the Prime Minister if he/she loses the confidence of the Lok Sabha.",
    ),

    Question(
      questionText: "How is the salary of the Prime Minister determined?",
      options: [
        "Fixed amount by the President",
        "Decided by the Parliament",
        "As per the recommendation of the Finance Commission",
        "Prime Minister sets own salary"
      ],
      correctAnswerIndex: 1,
      explanation: "The salary and allowances of the Prime Minister are determined by the Parliament from time to time.",
    ),

    Question(
      questionText: "What power does the Prime Minister have regarding the council of ministers?",
      options: [
        "Can dismiss any minister without reason",
        "Can reshuffle portfolios among ministers",
        "Can unilaterally make decisions without council approval",
        "Cannot influence the decisions of the council"
      ],
      correctAnswerIndex: 1,
      explanation: "The Prime Minister can allocate and reshuffle various portfolios among the ministers.",
    ),

    Question(
      questionText: "In relation to the President, what is the Prime Minister's duty according to Article 78?",
      options: [
        "To communicate to the President decisions of the council of ministers",
        "To recommend dissolution of the Lok Sabha",
        "To preside over the meetings of the council of ministers",
        "To appoint important officials like the attorney general"
      ],
      correctAnswerIndex: 0,
      explanation: "According to Article 78, it is the duty of the Prime Minister to communicate to the President all decisions of the council of ministers.",
    ),

    Question(
      questionText: "What role does the Prime Minister play in shaping the foreign policy of the country?",
      options: [
        "Chief spokesperson of the Union government",
        "Chairman of NITI Aayog",
        "Leader of the party in power",
        "Significant role in shaping foreign policy"
      ],
      correctAnswerIndex: 3,
      explanation: "The Prime Minister plays a significant role in shaping the foreign policy of the country.",
    ),

    Question(
      questionText: "According to Dr. B.R. Ambedkar, which functionary under the Indian constitution can be compared to the US President?",
      options: [
        "The President of India",
        "The Prime Minister",
        "The Chief Justice of India",
        "The Lok Sabha Speaker"
      ],
      correctAnswerIndex: 1,
      explanation: "Dr. B.R. Ambedkar stated that if any functionary under the Indian constitution is to be compared with the US President, it is the Prime Minister.",
    ),
    Question(
      questionText: "In the parliamentary system of government, what role does the President play?",
      options: [
        "Nominal executive authority",
        "Real executive authority",
        "Head of the government",
        "All of the above"
      ],
      correctAnswerIndex: 0,
      explanation: "In the parliamentary system, the President is the nominal executive authority (de jure executive), while the Prime Minister is the real executive authority (de facto executive).",
    ),

    Question(
      questionText: "How is the Prime Minister appointed?",
      options: [
        "Direct election by the people",
        "Appointment by the Parliament",
        "Appointment by the President",
        "Appointment by the Supreme Court"
      ],
      correctAnswerIndex: 2,
      explanation: "The Prime Minister is appointed by the President, following the convention of selecting the leader of the majority party in the Lok Sabha.",
    ),

    Question(
      questionText: "What happens when no party has a clear majority in the Lok Sabha?",
      options: [
        "The President appoints any eligible individual",
        "The President exercises personal discretion",
        "The Prime Minister is directly elected by the people",
        "The outgoing Prime Minister continues in office"
      ],
      correctAnswerIndex: 1,
      explanation: "When no party has a clear majority, the President may exercise personal discretion in selecting and appointing the Prime Minister.",
    ),

    Question(
      questionText: "In what situation may the President have to use individual judgment in appointing the Prime Minister?",
      options: [
        "When the Prime Minister loses confidence in the Lok Sabha",
        "When there is no obvious successor after the death of the incumbent Prime Minister",
        "When the Parliament demands a change in leadership",
        "When the ruling party elects a new leader"
      ],
      correctAnswerIndex: 1,
      explanation: "The President may use individual judgment when the incumbent Prime Minister dies suddenly, and there is no obvious successor.",
    ),

    Question(
      questionText: "What did the Delhi High Court rule in 1980 regarding the appointment of the Prime Minister?",
      options: [
        "Prime Minister must prove majority before appointment",
        "Prime Minister can be appointed first and then prove majority",
        "Prime Minister should be directly elected by the people",
        "Prime Minister's appointment is not subject to any rules"
      ],
      correctAnswerIndex: 1,
      explanation: "The Delhi High Court ruled in 1980 that the Prime Minister can be appointed first, and then prove the majority in the Lok Sabha within a reasonable period.",
    ),

    Question(
      questionText: "Can a person who is not a member of either House of Parliament be appointed as Prime Minister?",
      options: [
        "Yes, without any restrictions",
        "No, it is not constitutionally allowed",
        "Yes, for a maximum of one month",
        "Yes, for six months with the condition to become a member within that period"
      ],
      correctAnswerIndex: 3,
      explanation: "The Supreme Court held in 1997 that a person who is not a member of either House of Parliament can be appointed as Prime Minister for six months, within which they should become a member.",
    ),

    Question(
      questionText: "Which house of Parliament can the Prime Minister be a member of, according to the Constitution?",
      options: [
        "Only the Lok Sabha",
        "Only the Rajya Sabha",
        "Either the Lok Sabha or the Rajya Sabha",
        "Both the Lok Sabha and the Rajya Sabha simultaneously"
      ],
      correctAnswerIndex: 2,
      explanation: "Constitutionally, the Prime Minister may be a member of either the Lok Sabha or the Rajya Sabha.",
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
    home: primeminister(),
  ));
}

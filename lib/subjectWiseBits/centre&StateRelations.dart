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

class centreStateRelations extends StatefulWidget {
  final String? userIdentifier;

  centreStateRelations({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<centreStateRelations> createState() => _centreStateRelationsState();
}

class _centreStateRelationsState extends State<centreStateRelations> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//15.Central and state relations
    Question(
      questionText: "According to the Constitution of India, what are the three-fold distributions of legislative subjects?",
      options: ["Union List, State List, and Residuary List", "Exclusive List, Concurrent List, and Special List", "National List, Regional List, and Local List", "Federal List, Provincial List, and Concurrent List"],
      correctAnswerIndex: 0,
      explanation: "The Constitution provides for a three-fold distribution of legislative subjects between the Centre and the states: Union List, State List, and Residuary List.",
    ),

    Question(
      questionText: "Which list includes matters of national importance and those requiring uniformity of legislation nationwide?",
      options: ["Union List", "State List", "Concurrent List", "Residuary List"],
      correctAnswerIndex: 0,
      explanation: "Matters of national importance and those requiring uniformity of legislation nationwide are included in the Union List.",
    ),

    Question(
      questionText: "In case of overlapping between the Union List and the State List, what should prevail?",
      options: ["Union List", "State List", "Concurrent List", "Residuary List"],
      correctAnswerIndex: 0,
      explanation: "In case of overlapping between the Union List and the State List, the Union List should prevail.",
    ),
    Question(
      questionText: "What are the three heads under which Centre-state relations can be studied?",
      options: ["Legislative relations", "Administrative relations", "Financial relations"],
      correctAnswerIndex: 0,
      explanation: "Centre-state relations can be studied under three heads: Legislative relations, Administrative relations, and Financial relations.",
    ),
    Question(
      questionText: "Under what circumstances can the Parliament make laws on matters enumerated in the State List?",
      options: [
        "When the Rajya Sabha passes a resolution",
        "During a national emergency",
        "When states make a request",
        "To implement international agreements",
        "During President's rule"
      ],
      correctAnswerIndex: 0,
      explanation: "The Parliament can make laws on matters in the State List under various circumstances, including when the Rajya Sabha passes a resolution in the national interest.",
    ),

    Question(
      questionText: "What is the effect of passing a resolution by the state legislatures requesting Parliament to enact laws on a matter in the State List?",
      options: [
        "The state law prevails",
        "Parliament loses power",
        "The matter becomes exclusive to the states",
        "The Parliament becomes entitled to legislate",
        "State and Parliament share legislative power"
      ],
      correctAnswerIndex: 3,
      explanation: "Passing a resolution empowers Parliament to legislate on a matter, and the state legislature relinquishes its power on that matter, which becomes solely under Parliament's jurisdiction.",
    ),

    Question(
      questionText: "How can the Parliament exercise control over state legislative matters?",
      options: [
        "Through direct legislation",
        "By reserving bills for the President's consideration",
        "Only during a financial emergency",
        "By restricting state ordinances",
        "Through state legislature approval"
      ],
      correctAnswerIndex: 1,
      explanation: "The Parliament can exercise control over state legislative matters by allowing the Governor to reserve a bill for the President's consideration, providing an absolute veto.",
    ),
    Question(
      questionText: "What is the distribution of executive powers between the Centre and the states?",
      options: [
        "Exclusive to the Centre",
        "Rigid and inflexible",
        "Similar to the distribution of legislative powers",
        "Controlled by state legislatures",
        "Decided by mutual agreement"
      ],
      correctAnswerIndex: 2,
      explanation: "The executive power is distributed between the Centre and the states similar to the distribution of legislative powers, with some exceptions.",
    ),

    Question(
      questionText: "Under what circumstances can the Centre give directions to the states regarding the exercise of their executive power?",
      options: [
        "During a financial emergency",
        "In matters of national importance",
        "When there is a conflict between state and central laws",
        "When a state fails to comply with directions",
        "Only with the state legislature's approval"
      ],
      correctAnswerIndex: 3,
      explanation: "The Centre can give directions to the states when a state fails to comply with directions, and the coercive sanction behind such directions can lead to President's rule in the state.",
    ),

    Question(
      questionText: "What is the coercive sanction behind the Centre's directions to the states under Article 365?",
      options: [
        "Financial penalties",
        "Cooperative federalism",
        "Imposition of President's rule",
        "Appeal to the Supreme Court",
        "Withdrawal of central funds"
      ],
      correctAnswerIndex: 2,
      explanation: "The coercive sanction behind the Centre's directions under Article 365 is the potential imposition of President's rule in the state.",
    ),
    Question(
      questionText: "How is the appointment and removal of judges of a state high court regulated?",
      options: [
        "Appointed by the Prime Minister, removed by the Governor",
        "Appointed and removed by the President",
        "Appointed by the Chief Justice of India, removed by the Governor",
        "Appointed by the Governor, removed by the Chief Justice of India",
        "Appointed and removed by the state legislature"
      ],
      correctAnswerIndex: 1,
      explanation: "The judges of a state high court are appointed by the President in consultation with the Chief Justice of India and the governor of the state. They can also be transferred and removed by the President.",
    ),

    Question(
      questionText: "During the operation of a national emergency (Article 352), what control does the Centre have over the state governments?",
      options: [
        "Suspension of state governments",
        "Complete control over state governments",
        "Limited control over state governments",
        "Advisory role to state governments",
        "No control over state governments"
      ],
      correctAnswerIndex: 2,
      explanation: "During the operation of a national emergency, the Centre becomes entitled to give executive directions to a state on 'any' matter, bringing state governments under complete control, though they are not suspended.",
    ),

    Question(
      questionText: "How are disputes or complaints regarding the use, distribution, and control of waters of any inter-state river and river valley resolved?",
      options: [
        "By the state governments",
        "Through the Supreme Court",
        "By the Inter-State Council",
        "By the Parliament",
        "Through public referendums"
      ],
      correctAnswerIndex: 1,
      explanation: "Disputes or complaints regarding the use, distribution, and control of waters of any inter-state river and river valley can be adjudicated through the Supreme Court.",
    ),
    Question(
      questionText: "What is the 101st Amendment Act of 2016's significant contribution to taxation in India?",
      options: [
        "Introduction of a new tax regime",
        "Amendment of the distribution of tax revenues",
        "Creation of a separate tax list",
        "Abolishment of all taxes"
      ],
      correctAnswerIndex: 0,
      explanation: "The 101st Amendment Act of 2016 paved the way for the introduction of a new tax regime, the Goods and Services Tax (GST), in India.",
    ),

    Question(
      questionText: "Which amendment made changes in the distribution of tax revenues between the Centre and the states based on the recommendations of the 10th Finance Commission?",
      options: [
        "80th Amendment Act of 2000",
        "101st Amendment Act of 2016",
        "88th Amendment Act of 2003",
        "73rd Amendment Act of 1992"
      ],
      correctAnswerIndex: 0,
      explanation: "The 80th Amendment Act of 2000 made changes in the distribution of tax revenues based on the recommendations of the 10th Finance Commission.",
    ),
    Question(
      questionText: "According to the Constitution, which list enumerates the subjects on which the Parliament has exclusive power to levy taxes?",
      options: ["Union List", "State List", "Concurrent List", "Residuary List"],
      correctAnswerIndex: 0,
      explanation: "The Constitution grants exclusive power to the Parliament to levy taxes on subjects enumerated in the Union List.",
    ),
    Question(
        questionText: "In an advisory opinion in 1963, what did the Supreme Court clarify regarding the immunity granted to a state in respect of Central taxation?",
        options: [
          "States are immune from all Central taxes.",
          "The immunity extends to customs and excise duties.",
          "States can be taxed by the Centre for any purpose.",
          "Local authorities are exempted from Central taxation."
        ],
        correctAnswerIndex: 1,
        explanation: "In an advisory opinion in 1963, the Supreme Court clarified that the immunity granted to a state does not extend to customs or excise duties imposed by the Centre."
    ),

    Question(
        questionText: "During a National Emergency, what power does the President have regarding the constitutional distribution of revenues between the Centre and states?",
        options: [
          "The President can increase tax-sharing between Centre and states.",
          "The President can reduce or cancel the transfer of finances from Centre to states.",
          "The President has no authority over financial matters.",
          "The President's role remains unchanged."
        ],
        correctAnswerIndex: 1,
        explanation: "During a National Emergency, the President can modify the constitutional distribution of revenues between the Centre and states by reducing or canceling the transfer of finances from Centre to states."
    ),

    Question(
        questionText: "What was the key demand of the Anandpur Sahib Resolution in 1973 regarding the Centre's jurisdiction?",
        options: [
          "Complete autonomy for states.",
          "Restriction of Centre's jurisdiction to specific areas.",
          "Abolition of the Central government.",
          "Equal representation for all states."
        ],
        correctAnswerIndex: 1,
        explanation: "The Anandpur Sahib Resolution demanded the restriction of the Centre's jurisdiction to defense, foreign affairs, communications, and currency, with the residuary powers vested in the states."
    ),

    Question(
        questionText: "What did the West Bengal Memorandum in 1977 propose regarding the word 'union' in the Constitution?",
        options: [
          "Replace 'union' with 'confederation'.",
          "Replace 'union' with 'federation'.",
          "Remove the term 'union' entirely.",
          "Retain the term 'union'."
        ],
        correctAnswerIndex: 1,
        explanation: "The West Bengal Memorandum proposed replacing the word 'union' with 'federal' in the Constitution."
    ),

    Question(
        questionText: "According to the Sarkaria Commission, why did federalism require a strong Centre?",
        options: [
          "To centralize powers for efficiency.",
          "To safeguard national unity and integrity.",
          "To promote state autonomy.",
          "To address regional imbalances."
        ],
        correctAnswerIndex: 1,
        explanation: "The Sarkaria Commission emphasized that a strong Centre is essential to safeguard national unity and integrity, especially against fissiparous tendencies."
    ),
    Question(
        questionText: "Who chaired the Second Commission on Centre-State Relations established in 2007?",
        options: [
          "S.R. Bommai",
          "Madan Mohan Punchhi",
          "Vijay Shanker",
          "Amaresh Bagchi"
        ],
        correctAnswerIndex: 1,
        explanation: "The Second Commission on Centre-State Relations, formed in 2007, was chaired by Madan Mohan Punchhi, a former Chief Justice of India."
    ),

    Question(
        questionText: "In its report, the Punchhi Commission stressed the importance of 'cooperative federalism' for what purpose?",
        options: [
          "To promote state autonomy.",
          "To ensure parliamentary supremacy.",
          "To centralize powers for efficiency.",
          "To safeguard India's unity, integrity, and development."
        ],
        correctAnswerIndex: 3,
        explanation: "The Punchhi Commission emphasized that 'cooperative federalism' is crucial for sustaining India's unity, integrity, and social as well as economic development in the future."
    ),

    Question(
        questionText: "How many recommendations did the Punchhi Commission make in its report on Centre-State Relations?",
        options: ["150", "235", "310", "400"],
        correctAnswerIndex: 2,
        explanation: "The Punchhi Commission made over 310 recommendations on various aspects of Centre-State Relations in its extensive report."
    ),

    Question(
        questionText: "What guideline did the Punchhi Commission suggest for the Central Government while selecting Governors?",
        options: [
          "Select individuals actively involved in state politics.",
          "Choose those deeply connected with the local politics of the state.",
          "Appoint individuals with recent significant political roles.",
          "Follow strict guidelines, including being eminent, from outside the state, and detached from local politics."
        ],
        correctAnswerIndex: 3,
        explanation: "The Punchhi Commission recommended strict guidelines for selecting Governors, including being eminent, from outside the state, and detached from local politics."
    ),

    Question(
        questionText: "According to the Punchhi Commission, what should be the role of Governors in the appointment of Chief Ministers in the case of a hung assembly?",
        options: [
          "Governors should act without guidelines.",
          "Governors should follow the pre-poll alliance exclusively.",
          "Governors should prioritize the largest single party.",
          "Governors should adhere to clear guidelines, including pre-poll alliances and post-electoral coalitions."
        ],
        correctAnswerIndex: 3,
        explanation: "The Punchhi Commission suggested clear guidelines for Governors in appointing Chief Ministers, prioritizing the largest single party, pre-poll alliances, and post-electoral coalitions in case of a hung assembly."
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
    home: centreStateRelations(),
  ));
}

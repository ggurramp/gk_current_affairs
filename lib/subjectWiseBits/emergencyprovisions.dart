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

class parlimentarySystem extends StatefulWidget {
  final String? userIdentifier;

  parlimentarySystem({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parlimentarySystem> createState() => _parlimentarySystemState();
}

class _parlimentarySystemState extends State<parlimentarySystem> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//17.Emergency Provisions
    Question(
        questionText: "What is the primary rationale behind the incorporation of Emergency provisions in the Constitution?",
        options: [
          "To establish a unitary system of government.",
          "To safeguard the sovereignty, unity, integrity, and security of the country during abnormal situations.",
          "To promote federalism and decentralization.",
          "To grant more power to the states."
        ],
        correctAnswerIndex: 1,
        explanation: "The primary rationale behind incorporating Emergency provisions is to safeguard the sovereignty, unity, integrity, and security of the country during abnormal situations."
    ),

    Question(
        questionText: "What unique feature of the Indian Constitution is highlighted during an Emergency?",
        options: [
          "A shift from federal to a unitary system without a formal amendment.",
          "A shift from unitary to a federal system.",
          "A complete suspension of the Constitution.",
          "A transition to a parliamentary system."
        ],
        correctAnswerIndex: 0,
        explanation: "During an Emergency, the Indian Constitution exhibits a unique feature of shifting from a federal system to a unitary one without a formal amendment."
    ),

    Question(
        questionText: "How many types of emergencies does the Constitution stipulate, and what are they?",
        options: [
          "Two types: War Emergency and Financial Emergency.",
          "Three types: National Emergency, State Emergency, and Financial Emergency.",
          "Four types: Internal Emergency, External Emergency, Armed Rebellion, and Financial Emergency.",
          "One type: General Emergency."
        ],
        correctAnswerIndex: 1,
        explanation: "The Constitution stipulates three types of emergencies: National Emergency, State Emergency (President's Rule), and Financial Emergency."
    ),

    Question(
        questionText: "Under what grounds can the President declare a National Emergency?",
        options: [
          "Failure of constitutional machinery in the states.",
          "Imminent danger to the security of India due to war, external aggression, or armed rebellion.",
          "Threat to financial stability or credit of India.",
          "Failure of state governments to comply with central directives."
        ],
        correctAnswerIndex: 1,
        explanation: "The President can declare a National Emergency when there is an imminent danger to the security of India due to war, external aggression, or armed rebellion."
    ),

    Question(
        questionText: "What is an 'External Emergency,' and how is it different from an 'Internal Emergency'?",
        options: [
          "External Emergency is declared due to failure of constitutional machinery in states, while Internal Emergency is due to war or external aggression.",
          "External Emergency is declared due to armed rebellion, while Internal Emergency is due to war or external aggression.",
          "External Emergency is declared due to war or external aggression, while Internal Emergency is due to armed rebellion.",
          "There is no difference; both terms refer to the same situation."
        ],
        correctAnswerIndex: 2,
        explanation: "An 'External Emergency' is declared due to war or external aggression, while an 'Internal Emergency' is declared due to armed rebellion."
    ),

    Question(
        questionText: "Who can recommend the declaration of a National Emergency, and when can it be applicable?",
        options: [
          "The Prime Minister alone, at any time.",
          "The Cabinet, with the concurrence of the Prime Minister.",
          "The President alone, without any recommendation.",
          "The Parliament, with a two-thirds majority."
        ],
        correctAnswerIndex: 1,
        explanation: "The President can declare a National Emergency only after receiving a written recommendation from the Cabinet, ensuring the concurrence of the Cabinet."
    ),

    Question(
        questionText: "What did the 42nd Amendment Act of 1976 enable the President to do regarding the National Emergency?",
        options: [
          "Limit the operation of National Emergency to a specified part of India.",
          "Extend the duration of National Emergency indefinitely.",
          "Suspend fundamental rights during National Emergency.",
          "Abolish National Emergency altogether."
        ],
        correctAnswerIndex: 0,
        explanation: "The 42nd Amendment Act of 1976 enabled the President to limit the operation of a National Emergency to a specified part of India."
    ),

    Question(
        questionText: "What substitution did the 44th Amendment Act of 1978 make regarding the grounds for the proclamation of National Emergency?",
        options: [
          "Substituted 'failure of constitutional machinery' for 'internal disturbance.'",
          "Substituted 'threat to financial stability' for 'external aggression.'",
          "Substituted 'armed rebellion' for 'internal disturbance.'",
          "No substitution was made."
        ],
        correctAnswerIndex: 2,
        explanation: "The 44th Amendment Act of 1978 substituted 'armed rebellion' for 'internal disturbance' as a ground for the proclamation of National Emergency."
    ),

    Question(
        questionText: "What safeguard did the 44th Amendment Act of 1978 introduce regarding the declaration of National Emergency?",
        options: [
          "Judicial immunity for the declaration of National Emergency.",
          "Cabinet concurrence for the declaration of National Emergency.",
          "Exclusive power for the Prime Minister in the declaration of National Emergency.",
          "No safeguard was introduced."
        ],
        correctAnswerIndex: 1,
        explanation: "The 44th Amendment Act of 1978 introduced the safeguard of requiring Cabinet concurrence for the declaration of National Emergency."
    ),

    Question(
        questionText: "What provision did the 38th Amendment Act of 1975 introduce regarding the declaration of National Emergency?",
        options: [
          "It made the declaration immune from judicial review.",
          "It extended the powers of the President during National Emergency.",
          "It granted unlimited powers to the Prime Minister.",
          "It abolished National Emergency altogether."
        ],
        correctAnswerIndex: 0,
        explanation: "The 38th Amendment Act of 1975 made the declaration of National Emergency immune from judicial review. This provision was later deleted by the 44th Amendment Act of 1978."
    ),

    Question(
        questionText: "According to the Supreme Court decision in the Minerva Mills case, on what grounds can the proclamation of National Emergency be challenged?",
        options: [
          "On any grounds without restrictions.",
          "Only on the grounds of malafide or based on irrelevant facts.",
          "On any grounds related to national security.",
          "Only on the grounds of political disagreement."
        ],
        correctAnswerIndex: 1,
        explanation: "According to the Supreme Court decision in the Minerva Mills case, the proclamation of National Emergency can be challenged in court on the grounds of malafide or based on irrelevant facts."
    ),
    Question(
        questionText: "What is the time limit for parliamentary approval of a proclamation of Emergency, and how was this duration changed?",
        options: [
          "Two months, reduced by the 44th Amendment Act of 1978.",
          "Three months, increased by the 42nd Amendment Act of 1976.",
          "One month, increased by the 38th Amendment Act of 1975.",
          "Six months, reduced by the 44th Amendment Act of 1978."
        ],
        correctAnswerIndex: 0,
        explanation: "The time limit for parliamentary approval of a proclamation of Emergency is one month, reduced from two months by the 44th Amendment Act of 1978."
    ),

    Question(
        questionText: "If the Lok Sabha is dissolved during the one-month period without approving the Emergency proclamation, what happens to the proclamation?",
        options: [
          "It automatically expires.",
          "It remains in force until the first sitting of the reconstituted Lok Sabha.",
          "It requires reissuing after the Lok Sabha dissolution.",
          "It requires approval from the President alone."
        ],
        correctAnswerIndex: 1,
        explanation: "If the Lok Sabha is dissolved during the one-month period without approving the Emergency proclamation, it remains in force until the first sitting of the reconstituted Lok Sabha, provided the Rajya Sabha has approved it."
    ),

    Question(
        questionText: "How long does the Emergency continue if approved by both Houses of Parliament, and how can it be extended?",
        options: [
          "It continues for one year and can be extended indefinitely.",
          "It continues for six months and can be extended for an indefinite period with parliamentary approval every six months.",
          "It continues for three months and can be extended with a simple majority.",
          "It continues until the President revokes it."
        ],
        correctAnswerIndex: 1,
        explanation: "If approved by both Houses of Parliament, the Emergency continues for six months and can be extended for an indefinite period with parliamentary approval every six months."
    ),

    Question(
        questionText: "What change did the 44th Amendment Act of 1978 bring regarding the parliamentary approval of Emergency?",
        options: [
          "Introduced a simple majority for approval.",
          "Introduced a special majority for approval.",
          "Removed the need for parliamentary approval.",
          "Extended the time limit for approval."
        ],
        correctAnswerIndex: 1,
        explanation: "The 44th Amendment Act of 1978 introduced a special majority requirement for the parliamentary approval of Emergency, requiring a majority of the total membership and not less than two-thirds of members present and voting."
    ),

    Question(
        questionText: "How can a proclamation of Emergency be revoked?",
        options: [
          "It requires approval from both Houses of Parliament.",
          "It can be revoked by the President at any time through a subsequent proclamation.",
          "It can be revoked by the Prime Minister alone.",
          "It requires judicial intervention for revocation."
        ],
        correctAnswerIndex: 1,
        explanation: "A proclamation of Emergency can be revoked by the President at any time through a subsequent proclamation, and it does not require parliamentary approval."
    ),

    Question(
        questionText: "What action must the President take if the Lok Sabha passes a resolution disapproving the continuation of Emergency?",
        options: [
          "The President can ignore the resolution.",
          "The President must revoke the proclamation.",
          "The President must seek judicial approval.",
          "The President can dissolve the Lok Sabha."
        ],
        correctAnswerIndex: 1,
        explanation: "If the Lok Sabha passes a resolution disapproving the continuation of Emergency, the President must revoke the proclamation."
    ),

    Question(
        questionText: "What provision did the 44th Amendment Act of 1978 introduce regarding the revocation of Emergency?",
        options: [
          "Revocation requires approval from both Houses of Parliament.",
          "Revocation can only be done by the President.",
          "Revocation requires judicial approval.",
          "Revocation by the President does not require parliamentary approval."
        ],
        correctAnswerIndex: 3,
        explanation: "The 44th Amendment Act of 1978 introduced that the revocation of Emergency by the President does not require parliamentary approval."
    ),

    Question(
        questionText: "What action must the President take if the Lok Sabha does not approve the continuation of Emergency within a specified period?",
        options: [
          "The President can extend Emergency without Lok Sabha approval.",
          "The President must dissolve the Lok Sabha.",
          "The President must seek approval from the Rajya Sabha.",
          "The President must revoke the proclamation."
        ],
        correctAnswerIndex: 3,
        explanation: "If the Lok Sabha does not approve the continuation of Emergency within a specified period, the President must revoke the proclamation."
    ),

    Question(
        questionText: "What additional provision did the 44th Amendment Act of 1978 introduce for the Lok Sabha to consider the continuation of Emergency?",
        options: [
          "It introduced a requirement for a unanimous vote in the Lok Sabha.",
          "It introduced a provision for a special sitting of the Lok Sabha upon a written notice by one-tenth of its members.",
          "It introduced a requirement for approval from the President.",
          "It introduced a provision for a referendum."
        ],
        correctAnswerIndex: 1,
        explanation: "The 44th Amendment Act of 1978 introduced a provision for a special sitting of the Lok Sabha within 14 days upon a written notice by one-tenth of its members to consider the continuation of Emergency."
    ),
    Question(
      questionText: "During which emergencies does Article 358 operate?",
      options: [
        "Internal Emergency",
        "Both Internal and External Emergencies",
        "External Emergency",
        "None of the above"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 358 operates only in the case of External Emergency, declared on the grounds of war or external aggression.",
    ),

    Question(
      questionText: "What is the scope of Article 359 compared to Article 358?",
      options: [
        "Article 359 applies to Fundamental Rights under Article 19 only, while Article 358 extends to all Fundamental Rights.",
        "Article 359 applies to all Fundamental Rights, while Article 358 is confined to Article 19 only.",
        "Both Articles have the same scope.",
        "Article 359 applies only to Internal Emergency, while Article 358 applies to External Emergency."
      ],
      correctAnswerIndex: 1,
      explanation: "Article 359 applies to all Fundamental Rights whose enforcement is suspended by the Presidential Order, while Article 358 is confined to Fundamental Rights under Article 19 only.",
    ),

    Question(
      questionText: "How long does Article 359 suspend the enforcement of Fundamental Rights?",
      options: [
        "For the entire duration of Emergency",
        "A period specified by the President, which may be the entire duration or a shorter period",
        "Until the President revokes the order",
        "Indefinitely"
      ],
      correctAnswerIndex: 1,
      explanation: "Article 359 suspends the enforcement of Fundamental Rights for a period specified by the President, which may either be the entire duration of Emergency or a shorter period.",
    ),
    Question(
      questionText: "What are the grounds for the imposition of President's Rule?",
      options: [
        "External aggression and internal disturbance",
        "Failure of constitutional machinery in the state",
        "Non-compliance with directions from the Centre",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "President's Rule can be imposed based on the failure of constitutional machinery, non-compliance with directions from the Centre, or a situation where the government of a state cannot be carried on in accordance with the provisions of the Constitution.",
    ),

    Question(
      questionText: "Under what circumstances can the President act to impose President's Rule without the governor's report?",
      options: [
        "Only when there is external aggression",
        "Only when there is internal disturbance",
        "The President cannot act without the governor's report",
        "In any situation satisfying Article 356 conditions"
      ],
      correctAnswerIndex: 3,
      explanation: "The President can act without the governor's report in any situation satisfying the conditions specified in Article 356 for the imposition of President's Rule.",
    ),

    Question(
      questionText: "How long can President's Rule continue if approved by both Houses of Parliament?",
      options: [
        "One year",
        "Two years",
        "Six months",
        "Three years"
      ],
      correctAnswerIndex: 0,
      explanation: "If approved by both Houses of Parliament, President's Rule can continue for one year. It can be extended for a maximum period of three years with parliamentary approval every six months.",
    ),
    Question(
      questionText: "What powers does the President acquire when President's Rule is imposed in a state?",
      options: [
        "Authority to appoint a new governor",
        "Ability to dissolve the state legislature",
        "Authorization to suspend the state high court",
        "Taking up functions of the state government and powers vested in the governor or any other executive authority"
      ],
      correctAnswerIndex: 3,
      explanation: "During President's Rule, the President can take up the functions of the state government and powers vested in the governor or any other executive authority.",
    ),

    Question(
      questionText: "What steps can the President take when President's Rule is imposed, according to the text?",
      options: [
        "Declare the powers of the state legislature to be exercised by the President",
        "Suspend the constitutional provisions relating to any body or authority in the state",
        "Dismiss the state legislative assembly",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "During President's Rule, the President can declare the powers of the state legislature to be exercised by the Parliament, suspend constitutional provisions, and dismiss the state legislative assembly.",
    ),

    Question(
      questionText: "What happens to laws made by the Parliament or the President during President's Rule?",
      options: [
        "They automatically expire with the end of President's Rule",
        "They remain in force even after President's Rule",
        "They are subject to immediate repeal by the state legislature",
        "They require re-enactment after the end of President's Rule"
      ],
      correctAnswerIndex: 1,
      explanation: "Laws made by the Parliament or the President during President's Rule remain in force even after the end of President's Rule. They can be repealed, altered, or re-enacted by the state legislature.",
    ),
    Question(
      questionText: "How many times has President's Rule been imposed since 1950, according to the text?",
      options: ["More than 100 times", "Around 75 times", "Over 125 occasions", "Approximately 50 times"],
      correctAnswerIndex: 2,
      explanation: "Since 1950, President's Rule has been imposed on more than 125 occasions.",
    ),

    Question(
      questionText: "When was the first time President's Rule imposed, and in which state?",
      options: ["1951 in Punjab", "1955 in Tamil Nadu", "1960 in Maharashtra", "1965 in Uttar Pradesh"],
      correctAnswerIndex: 0,
      explanation: "The first time President's Rule was imposed was in 1951 in Punjab.",
    ),

    Question(
      questionText: "What did Dr. B.R. Ambedkar hope regarding the use of Article 356?",
      options: [
        "He hoped it would be frequently used to maintain order.",
        "He hoped it would remain a 'dead-letter' and used only as a last resort.",
        "He hoped it would be a routine measure in governing states.",
        "He hoped it would be declared unconstitutional."
      ],
      correctAnswerIndex: 1,
      explanation: "Dr. B.R. Ambedkar hoped that Article 356 would remain a 'dead-letter' and be used only as a measure of last resort.",
    ),
    Question(
      questionText: "Under what circumstances can the President proclaim a Financial Emergency?",
      options: [
        "When there is a threat to national security.",
        "When there is a threat to the financial stability or credit of India or any part of its territory.",
        "When there is a failure of constitutional machinery in a state.",
        "When there is a threat of internal disturbance in the country."
      ],
      correctAnswerIndex: 1,
      explanation: "The President can proclaim a Financial Emergency when there is a threat to the financial stability or credit of India or any part of its territory.",
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
    home: parlimentarySystem(),
  ));
}

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

class funRights extends StatefulWidget {
  final String? userIdentifier;

  funRights({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<funRights> createState() => _funRightsState();
}

class _funRightsState extends State<funRights> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//8 Fundamental Rights
    Question(
      questionText: "Which part of the Constitution contains the Fundamental Rights, and what is often referred to as the 'Magna Carta of India'?",
      options: ["Part I", "Part II", "Part III", "Part IV"],
      correctAnswerIndex: 2,
      explanation: "The Fundamental Rights are enshrined in Part III of the Constitution, often referred to as the 'Magna Carta of India.' This section contains a comprehensive list of justiciable rights.",
    ),

    Question(
      questionText: "Which Fundamental Rights are available only to citizens and not to foreigners, except enemy aliens?",
      options: ["Right to equality (Articles 14-18)", "Right against exploitation (Articles 23-24)", "Right to freedom (Articles 19-22)", "Right to constitutional remedies (Article 32)"],
      correctAnswerIndex: 0,
      explanation: "Some Fundamental Rights, like the Right to equality (Articles 14-18), are available only to citizens and not to foreigners, except enemy aliens.",
    ),
    Question(
      questionText: "According to Article 12 of the Constitution, how is the term 'State' defined for the purposes of Part III (Fundamental Rights)?",
      options: ["Only the Government and Parliament of India", "Government and Parliament of India, Government and legislature of states, All local authorities", "Government and legislature of states", "Only statutory authorities like LIC, ONGC, SAIL, etc."],
      correctAnswerIndex: 1,
      explanation: "Article 12 defines the term 'State' for the purposes of Part III (Fundamental Rights) to include the Government and Parliament of India, Government and legislature of states, and all local authorities.",
    ),
    Question(
      questionText: "What immunity does the President or Governor enjoy in relation to their official duties?",
      options: [
        "They are immune to criminal proceedings only.",
        "They are not answerable to any court for the exercise of powers and duties of their office.",
        "They are immune to civil proceedings only.",
        "They are immune to both criminal and civil proceedings during their term of office."
      ],
      correctAnswerIndex: 3,
      explanation: "The President or Governor is not answerable to any court for the exercise and performance of the powers and duties of their office. They are immune to both criminal and civil proceedings during their term of office.",
    ),
    Question(
      questionText: "What does Article 14 of the Constitution state regarding equality before the law and equal protection of laws?",
      options: ["It applies only to citizens, not foreigners.", "It confers rights only on citizens, not legal persons.", "It confers rights on all persons, including citizens, foreigners, and legal persons.", "It applies only to legal persons, not individuals."],
      correctAnswerIndex: 2,
      explanation: "Article 14 confers rights on all persons, including citizens, foreigners, and legal persons, ensuring equality before the law and equal protection of laws.",
    ),
    Question(
      questionText: "What does Article 14 of the Constitution state regarding equality before the law and equal protection of laws?",
      options: ["It applies only to citizens, not foreigners.", "It confers rights only on citizens, not legal persons.", "It confers rights on all persons, including citizens, foreigners, and legal persons.", "It applies only to legal persons, not individuals."],
      correctAnswerIndex: 2,
      explanation: "Article 14 confers rights on all persons, including citizens, foreigners, and legal persons, ensuring equality before the law and equal protection of laws.",
    ),
    Question(
      questionText: "What are the two crucial words in Article 15 that are emphasized for understanding its provisions?",
      options: ["Religion and caste", "Discrimination and only", "Disability and liability", "Private and public"],
      correctAnswerIndex: 1,
      explanation: "The two crucial words in Article 15 are 'discrimination' and 'only'. They highlight the prohibition of discrimination based on specific grounds.",
    ),
    Question(
      questionText: "What does Article 16 of the Indian Constitution provide?",
      options: [
        "Equality of opportunity for all citizens in matters of employment under the State.",
        "Prohibition of discrimination on grounds of religion, race, caste, sex, or place of birth.",
        "Reservations for economically weaker sections in educational institutions.",
        "Abolition of untouchability and promotion of social equality."
      ],
      correctAnswerIndex: 0,
      explanation: "Article 16 provides for equality of opportunity for all citizens in matters of employment under the State, prohibiting discrimination on specified grounds.",
    ),
    Question(
      questionText: "What does Article 17 of the Indian Constitution deal with?",
      options: [
        "Reservation of seats in educational institutions.",
        "Prohibition of discrimination in public employment.",
        "Abolition of untouchability and prohibition of its practice.",
        "Right to freedom of religion."
      ],
      correctAnswerIndex: 2,
      explanation: "Article 17 of the Indian Constitution deals with the abolition of untouchability and forbids its practice in any form.",
    ),
    Question(
      questionText: "What does Article 18 of the Indian Constitution deal with?",
      options: [
        "Equality of opportunity in public employment.",
        "Abolition of untouchability and its practice.",
        "Reservation of seats in educational institutions.",
        "Abolition of titles and prohibition of their conferment."
      ],
      correctAnswerIndex: 3,
      explanation: "Article 18 of the Indian Constitution deals with the abolition of titles and prohibits the conferment of titles by the state, except military or academic distinctions.",
    ),
    Question(
      questionText: "How many rights are guaranteed to all citizens under Article 19 of the Indian Constitution?",
      options: ["Four", "Five", "Six", "Seven"],
      correctAnswerIndex: 2,
      explanation: "Article 19 guarantees six rights to all citizens, including freedom of speech, assembly, association, movement, residence, and the right to practice any profession or occupation.",
    ),
    Question(
      questionText: "What does Article 20 of the Indian Constitution protect individuals against?",
      options: ["Arbitrary taxation", "Arbitrary punishment", "Arbitrary detention", "Arbitrary searches"],
      correctAnswerIndex: 1,
      explanation: "Article 20 protects individuals against arbitrary and excessive punishment, ensuring safeguards such as no ex-post-facto law, no double jeopardy, and no self-incrimination.",
    ),
    Question(
      questionText: "What is the significance of the term 'procedure established by law' in Article 21 of the Indian Constitution?",
      options: ["It emphasizes the importance of fair trials in legal proceedings.", "It allows for arbitrary deprivation of life and personal liberty based on a law.", "It restricts the State from enforcing any laws related to life and personal liberty.", "It introduces the concept of 'due process of law' similar to the American Constitution."],
      correctAnswerIndex: 1,
      explanation: "The term 'procedure established by law' in Article 21 allows for the deprivation of life and personal liberty based on a law, emphasizing that the validity of the law cannot be questioned on grounds of reasonableness, fairness, or justice.",
    ),
    Question(
      questionText: "What is the significance of the 86th Constitutional Amendment Act of 2002 in relation to education?",
      options: ["It introduced the concept of 'procedure established by law' in Article 21.", "It made elementary education a Fundamental Right under Article 21A.", "It emphasized the right to life and personal liberty in Article 21.", "It granted protection against arbitrary punishment under Article 20."],
      correctAnswerIndex: 1,
      explanation: "The 86th Constitutional Amendment Act of 2002 made elementary education a Fundamental Right under Article 21A, providing free and compulsory education for all children between the ages of six to fourteen years.",
    ),
    Question(
      questionText: "What are the rights conferred by the first part of Article 22 on a person arrested or detained under ordinary law?",
      options: ["Right to be informed of the grounds of arrest, right to consult a legal practitioner, right to be produced before a magistrate within 24 hours, and right to be released after 24 hours unless further detention is authorized by the magistrate.", "Right to a fair trial, right to remain silent, right to a jury trial, and right to cross-examine witnesses.", "Right to a speedy trial, right to confront witnesses, right to an attorney, and right to a public trial.", "Right to be informed of the charges, right to a lawyer, right to trial by jury, and right to appeal."],
      correctAnswerIndex: 0,
      explanation: "The first part of Article 22 confers rights such as the right to be informed of the grounds of arrest, right to consult a legal practitioner, right to be produced before a magistrate within 24 hours, and right to be released after 24 hours unless further detention is authorized by the magistrate.",
    ),
    Question(
      questionText: "What does the term 'traffic in human beings' include, as mentioned in Article 23?",
      options: ["Selling and buying of men, women, and children like goods; immoral traffic in women and children, including prostitution; devadasis; and slavery.", "Forced labor without remuneration; discriminatory labor practices; child labor; and unpaid internships.", "Human trafficking for organ trade; child labor; forced marriage; and discriminatory employment practices.", "Compulsory military service; forced labor for public projects; bonded labor; and discriminatory employment based on gender."],
      correctAnswerIndex: 0,
      explanation: "The term 'traffic in human beings' includes selling and buying of men, women, and children like goods; immoral traffic in women and children, including prostitution; devadasis; and slavery.",
    ),
    Question(
      questionText: "According to Article 24, what does it prohibit regarding the employment of children?",
      options: ["Employment of children below the age of 14 in any factory, mine, or hazardous activities like construction work or railway, except harmless or innocent work.", "Employment of children below the age of 16 in any industrial activities, regardless of the nature of work.", "Employment of children below the age of 18 in any hazardous activities, including harmless or innocent work.", "Employment of children below the age of 12 in any form of labor, whether hazardous or not."],
      correctAnswerIndex: 0,
      explanation: "Article 24 prohibits the employment of children below the age of 14 in any factory, mine, or hazardous activities like construction work or railway, except harmless or innocent work.",
    ),
    Question(
      questionText: "What does Article 25 guarantee to all persons?",
      options: ["Right to own property", "Freedom of conscience and religion", "Right to education", "Right to vote"],
      correctAnswerIndex: 1,
      explanation: "Article 25 guarantees freedom of conscience and the right to freely profess, practice, and propagate religion to all persons, regardless of citizenship.",
    ),

    Question(
      questionText: "According to Article 25, what does 'freedom of conscience' refer to?",
      options: [
        "Freedom to own property",
        "Freedom to practice any profession",
        "Inner freedom of an individual to relate with God or Creatures",
        "Freedom to participate in political activities"
      ],
      correctAnswerIndex: 2,
      explanation: " 'Freedom of conscience' in Article 25 refers to the inner freedom of an individual to mold their relation with God or Creatures in whatever way they desire.",
    ),

    Question(
      questionText: "In the context of Article 25, what is the right to propagate?",
      options: [
        "Right to convert others to one's religion",
        "Right to establish religious institutions",
        "Right to own property",
        "Right to practice any profession"
      ],
      correctAnswerIndex: 0,
      explanation: "The right to propagate, as per Article 25, involves the transmission and dissemination of one's religious beliefs to others but does not include the right to convert another person forcibly.",
    ),
    Question(
      questionText: "According to the Supreme Court, what does the right to conserve language include?",
      options: [
        "The right to promote political ideologies.",
        "The right to engage in corrupt practices.",
        "The right to agitate for language protection.",
        "The right to prevent others from using the language."
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court held that the right to conserve language includes the right to agitate for the protection of the language.",
    ),
    Question(
      questionText: "What rights does Article 30 grant to minorities, whether religious or linguistic?",
      options: [
        "The right to discriminate in educational institutions.",
        "The right to establish and administer educational institutions of their choice.",
        "The right to deny admission to eligible students.",
        "The right to avoid any regulatory measures."
      ],
      correctAnswerIndex: 1,
      explanation: "Article 30 grants minorities the right to establish and administer educational institutions of their choice.",
    ),
    Question(
      questionText: "What did Dr. Ambedkar call Article 32 and why?",
      options: [
        "An insignificant article.",
        "An article without any importance.",
        "The most important article of the Constitution.",
        "An article with limited powers."
      ],
      correctAnswerIndex: 2,
      explanation: "Dr. Ambedkar called Article 32 the most important article of the Constitution, stating that it is the very soul and heart of it.",
    ),
    Question(
      questionText: "What does the writ of habeas corpus involve?",
      options: [
        "A command to perform official duties.",
        "An order to prevent exceeding jurisdiction.",
        "A command to produce a detained person.",
        "An order to quash a lower court's decision."
      ],
      correctAnswerIndex: 2,
      explanation: "The writ of habeas corpus involves a command to produce the body of a detained person for examination of the legality of detention.",
    ),
    Question(
      questionText: "Under which article does Parliament have the power to restrict or abrogate fundamental rights for members of armed forces?",
      options: [
        "Article 32",
        "Article 226",
        "Article 33",
        "Article 34"
      ],
      correctAnswerIndex: 2,
      explanation: "Parliament has the power to restrict or abrogate fundamental rights for members of armed forces under Article 33.",
    ),
    Question(
      questionText: "Under which article does Parliament have the power to indemnify government servants or others for acts done in connection with the maintenance or restoration of order in an area where martial law was in force?",
      options: [
        "Article 32",
        "Article 226",
        "Article 33",
        "Article 34"
      ],
      correctAnswerIndex: 3,
      explanation: "Parliament has the power to indemnify government servants or others for acts done in connection with the maintenance or restoration of order under martial law in any area within the territory of India, as per Article 34.",
    ),
    Question(
      questionText: "Under Article 35, which body has the power to make laws with respect to prescribing residence as a condition for certain employments or appointments?",
      options: ["Supreme Court", "Parliament", "State Legislatures", "High Courts"],
      correctAnswerIndex: 1,
      explanation: "Article 35 grants the power to make laws regarding prescribing residence as a condition for certain employments or appointments to the Parliament.",
    ),
    Question(
      questionText: "What action did the 44th Amendment Act of 1978 take regarding the right to property in the Constitution?",
      options: [
        "It strengthened the right to property as a fundamental right.",
        "It introduced a new fundamental right related to property.",
        "It abolished the right to property as a fundamental right.",
        "It expanded the scope of the right to property."
      ],
      correctAnswerIndex: 2,
      explanation: "The 44th Amendment Act of 1978 abolished the right to property as a fundamental right by repealing Article 19(1)(f) and Article 31.",
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
    home: funRights(),
  ));
}

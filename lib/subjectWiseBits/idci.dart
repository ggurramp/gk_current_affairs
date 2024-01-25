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

class idci extends StatefulWidget {
  final String? userIdentifier;

  idci({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<idci> createState() => _idciState();
}

class _idciState extends State<idci> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    //91 . IMPORTANT DOCTRINES OF CONSTITUTIONAL INTERPRETATION

    Question(
      questionText: "What is the other name for the doctrine of severability?",
      options: ["Doctrine of Separation", "Doctrine of Inconsistency", "Doctrine of Constitutionality", "Doctrine of Unconstitutionality"],
      correctAnswerIndex: 1,
      explanation: "The doctrine of severability is also known as the doctrine of separability, aiming to address the validity of laws declared as unconstitutional.",
    ),

    Question(
      questionText: "Which article serves as the basis for the doctrine of severability?",
      options: ["Article 14", "Article 19", "Article 21", "Article 13"],
      correctAnswerIndex: 3,
      explanation: "Article 13 serves as the basis for the doctrine of severability. It deals with pre-constitution and post-constitution laws inconsistent with Fundamental Rights.",
    ),

    Question(
      questionText: "What does Article 13(1) of the Constitution of India declare regarding pre-constitution laws?",
      options: [
        "It declares all pre-constitution laws void to the extent of inconsistency with Directive Principles.",
        "It declares all pre-constitution laws void to the extent of inconsistency with Fundamental Rights.",
        "It declares all pre-constitution laws void if they are inconsistent with the Constitution.",
        "It declares all pre-constitution laws valid irrespective of their inconsistency with Fundamental Rights."
      ],
      correctAnswerIndex: 1,
      explanation: "Article 13(1) declares all pre-constitution laws void to the extent of inconsistency with Fundamental Rights.",
    ),

    Question(
      questionText: "What does Article 13(2) prohibit the state from doing?",
      options: [
        "Prohibits the state from making any amendments to the Constitution.",
        "Prohibits the state from making any laws inconsistent with Fundamental Rights.",
        "Prohibits the state from making any laws related to religion.",
        "Prohibits the state from making any laws related to trade and commerce."
      ],
      correctAnswerIndex: 1,
      explanation: "Article 13(2) prohibits the state from making any laws that take away or abridge Fundamental Rights, and such laws are void to the extent of contravention.",
    ),

    Question(
      questionText: "What is the determining factor in determining whether the valid parts of a statute are separable from the invalid parts?",
      options: [
        "Intentions of the judiciary",
        "Intentions of the President",
        "Intentions of the Parliament",
        "Intentions of the legislature"
      ],
      correctAnswerIndex: 3,
      explanation: "In determining whether valid parts of a statute are separable from invalid parts, the intentions of the legislature are the determining factor.",
    ),

    Question(
        questionText: "According to the doctrine of severability, what happens if the valid and invalid provisions are inextricably mixed up?",
        options: [
          "The invalid portion is struck down, and the rest of the statute remains valid.",
          "The invalidity of a portion results in the invalidity of the entire statute.",
          "The statute becomes unenforceable.",
          "The statute remains valid regardless of the mixing."
        ],
        correctAnswerIndex: 1,
        explanation: "If the valid and invalid provisions are inextricably mixed up, the invalidity of a portion results in the invalidity of the entire statute",
    ),

    Question(
      questionText: "What is considered in determining the legislative intent on the question of separability?",
      options: [
        "Only the text of the statute",
        "Only the history of the legislation",
        "Only the object of the legislation",
        "The history of the legislation, its object, the title, and the preamble"
      ],
      correctAnswerIndex: 3,
      explanation: "In determining the legislative intent on the question of separability, it is legitimate to take into account the history of the legislation, its object, the title, and the preamble.",
    ),

    Question(
      questionText: "In the case of Kihoto Hollohan vs. Zachillhu (1992), what did the Supreme Court declare as unconstitutional?",
      options: [
        "Paragraph 7 of the Tenth Schedule",
        "Paragraph 2 of the Tenth Schedule",
        "Paragraph 10 of the Tenth Schedule",
        "Paragraph 5 of the Tenth Schedule"
      ],
      correctAnswerIndex: 0,
      explanation: "In the Kihoto Hollohan vs. Zachillhu (1992) case, the Supreme Court declared Paragraph 7 of the Tenth Schedule as unconstitutional for violating Article 368(2).",
    ),

    Question(
      questionText: "How is waiver defined in the context of legal doctrines?",
      options: [
        "A voluntary relinquishment of a duty.",
        "An unintentional abandonment of a right.",
        "An intentional relinquishment of a right.",
        "A compelled abandonment of a privilege."
      ],
      correctAnswerIndex: 2,
      explanation: "Waiver is defined as an intentional relinquishment of a right, involving the conscious abandonment of an existing legal right, advantage, benefit, claim, or privilege.",
    ),

    Question(
      questionText: "Is the doctrine of waiver applicable to fundamental rights in India?",
      options: ["Yes", "No"],
      correctAnswerIndex: 1,
      explanation: "The doctrine of waiver is not applicable to fundamental rights in India. Fundamental rights cannot be waived by a citizen in the Indian context.",
    ),

    Question(
      questionText: "What did the Supreme Court observe regarding the application of the doctrine of waiver to fundamental rights in India?",
      options: [
        "Fundamental rights can be waived as long as it serves public policy.",
        "Fundamental rights cannot be waived as they are mandatory on the state and necessary for constitutional objectives.",
        "Fundamental rights can be waived if they are not deemed beneficial to the individual.",
        "Fundamental rights can be waived as a matter of constitutional policy."
      ],
      correctAnswerIndex: 2,
      explanation: "Fundamental rights cannot be waived in India as they are mandatory on the state and necessary to attain the objectives enshrined in the Preamble.",
    ),

    Question(
      questionText: "In the case of Behram Khurshid Pesikaka vs. State of Bombay (1954), what did the Supreme Court hold regarding the waiver of fundamental rights?",
      options: [
        "In a criminal prosecution, an accused person can waive his fundamental rights and get convicted.",
        "It is open to an accused person to waive his fundamental rights and get convicted.",
        "An accused person cannot waive his fundamental rights in a criminal prosecution.",
        "The waiver of fundamental rights is conditional upon the nature of the criminal offence."
      ],
      correctAnswerIndex: 2,
      explanation: "In the Behram Khurshid Pesikaka vs. State of Bombay (1954) case, the Supreme Court held that in a criminal prosecution, it is not open to an accused person to waive his fundamental rights and get convicted.",
    ),

    Question(
      questionText: "What did the Supreme Court assert in the case of Olga Tellis vs. Bombay Municipal Corporation (1985) regarding the waiver of fundamental rights?",
      options: [
        "A person can waive fundamental rights for the benefit of the community.",
        "Fundamental rights cannot be waived by any act, and there cannot be any estoppel against the constitution.",
        "Fundamental rights can be waived if they hinder public interest.",
        "The waiver of fundamental rights is subject to the individual's consent."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Olga Tellis vs. Bombay Municipal Corporation (1985) case, the Supreme Court asserted that a person cannot waive any of the fundamental rights conferred upon him by any act, and there cannot be any estoppel against the constitution.",
    ),

    Question(
      questionText: "According to the Supreme Court in Nar Singh Pal vs. Union of India (2000), what was reiterated about fundamental rights under the Constitution?",
      options: [
        "Fundamental rights can be bartered away.",
        "Fundamental rights can be compromised under certain conditions.",
        "There can be estoppel against the exercise of fundamental rights.",
        "Fundamental rights cannot be bartered away or compromised, nor can there be any estoppel against the exercise of fundamental rights."
      ],
      correctAnswerIndex: 3,
      explanation: "In Nar Singh Pal vs. Union of India (2000), the Supreme Court reiterated that fundamental rights under the Constitution cannot be bartered away or compromised, nor can there be any estoppel against the exercise of fundamental rights.",
    ),

    Question(
      questionText: "What is the essence of the doctrine of eclipse in the context of Article 13(1) of the Indian Constitution?",
      options: [
        "A pre-constitutional law inconsistent with fundamental rights is void from its inception.",
        "A pre-constitutional law inconsistent with fundamental rights becomes inoperative from the date of the constitution.",
        "A pre-constitutional law inconsistent with fundamental rights is wiped out completely.",
        "A pre-constitutional law inconsistent with fundamental rights remains fully enforceable."
      ],
      correctAnswerIndex: 1,
      explanation: "The doctrine of eclipse pertains to pre-constitutional laws inconsistent with fundamental rights, making them inoperative from the date of the constitution, overshadowed by fundamental rights but not wiped out completely.",
    ),

    Question(
      questionText: "According to the doctrine of eclipse, when does a pre-constitutional law inconsistent with fundamental rights become void?",
      options: [
        "From its very inception.",
        "After a constitutional amendment is enacted.",
        "If challenged in court.",
        "After the commencement of the constitution."
      ],
      correctAnswerIndex: 3,
      explanation: "A pre-constitutional law inconsistent with fundamental rights becomes void or inoperative from the date of the commencement of the constitution, according to the doctrine of eclipse.",
    ),

    Question(
      questionText: "What conditions can make a pre-constitutional law, which is eclipsed by fundamental rights, constitutional and enforceable again?",
      options: [
        "A subsequent amendment of the constitution.",
        "Approval from the President.",
        "A ruling from the Supreme Court.",
        "Consent from the citizens."
      ],
      correctAnswerIndex: 0,
      explanation: "The shadow cast on a pre-constitutional law by fundamental rights can be removed, making it constitutional and enforceable again, through a subsequent amendment of the constitution.",
    ),

    Question(
      questionText: "In which case did the Supreme Court enunciate the doctrine of eclipse?",
      options: [
        "Basheshar Nath vs. Commissioner of Income Tax (1958)",
        "Deep Chand vs. State of Uttar Pradesh (1959)",
        "Bhikaji Narain Dhakras vs. State of M.P. (1955)",
        "Dulare Lodh vs. State of West Bengal (1984)"
      ],
      correctAnswerIndex: 2,
      explanation: "The Supreme Court enunciated the doctrine of eclipse in the case of Bhikaji Narain Dhakras vs. State of M.P. (1955).",
    ),

    Question(
      questionText: "Does the doctrine of eclipse apply to post-constitutional laws according to the Supreme Court?",
      options: ["Yes", "No"],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court held in Deep Chand case (1959) that the doctrine of eclipse applies only to pre-constitutional laws and not to post-constitutional laws.",
    ),

    Question(
      questionText: "In the case of Dulare Lodh (1984), how did the Supreme Court apply the doctrine of eclipse?",
      options: [
        "It reaffirmed that the doctrine of eclipse does not apply to post-constitutional laws.",
        "It upheld the doctrine of eclipse only for non-citizens.",
        "It reversed its earlier stand and applied the doctrine of eclipse to a post-constitutional law even against citizens.",
        "It declared the doctrine of eclipse as outdated and irrelevant."
      ],
      correctAnswerIndex: 2,
      explanation: "In the Dulare Lodh case (1984), the Supreme Court reversed its earlier stand and applied the doctrine of eclipse to a post-constitutional law even against citizens.",
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
    home: idci(),
  ));
}

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

class wcstrctn extends StatefulWidget {
  final String? userIdentifier;

  wcstrctn({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<wcstrctn> createState() => _wcstrctnState();
}

class _wcstrctnState extends State<wcstrctn> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//    92 .WORLD CONSTITUTION

    Question(
        questionText: "What is the procedure prescribed by the American Constitution for its amendment?",
        options: [
          "An amendment can be proposed by a two-thirds vote of both Houses of Congress and ratified by three-fourths of the states' legislatures.",
          "An amendment can be proposed by a constitutional convention called by Congress on the petition of two-thirds of the state legislatures and ratified by the convention in three-fourths of state legislatures.",
          "Both (i) and (ii) are methods for amending the American Constitution.",
          "The President can unilaterally propose amendments, which then need approval from both Houses of Congress."
        ],
        correctAnswerIndex: 2,
        explanation: "The American Constitution provides two methods for its amendment: (i) By a two-thirds vote of both Houses of Congress and ratification by three-fourths of state legislatures. (ii) By a constitutional convention called by Congress on the petition of two-thirds of state legislatures, with ratification by three-fourths of state legislatures."
    ),

    Question(
      questionText: "How many votes does a candidate need to win the Presidential election according to the American Constitution?",
      options: [
        "150 votes",
        "200 votes",
        "270 votes",
        "300 votes"
      ],
      correctAnswerIndex: 2,
      explanation: "A candidate in the American Presidential election needs 270 votes, which is half of the total votes in the electoral college (538). This ensures a majority for the winning candidate.",
    ),

    Question(
      questionText: "What happens if no candidate secures the requisite majority in the electoral college?",
      options: [
        "The President is selected by a popular vote.",
        "The Vice President takes over as the President.",
        "The House of Representatives elects the President from among the top three candidates with the highest votes.",
        "A special election is held to determine the President."
      ],
      correctAnswerIndex: 2,
      explanation: "If no candidate secures the requisite majority in the electoral college, the House of Representatives elects the President from among the top three candidates with the highest votes in the electoral college.",
    ),

    Question(
      questionText: "What are the qualifications for a candidate running for the presidency according to the American Constitution?",
      options: [
        "At least 25 years old, naturalized citizen, resident of the USA for 10 years.",
        "Natural born citizen, at least 30 years old, resident of the USA for 10 years.",
        "At least 35 years old, born in the USA, resident of the USA for 14 years.",
        "Naturalised citizen, at least 40 years old, resident of the USA for 12 years."
      ],
      correctAnswerIndex: 2,
      explanation: "According to the American Constitution, a candidate for the presidency must be at least 35 years old, a natural born citizen of the USA, and have been a resident of the USA for 14 years.",
    ),

    Question(
      questionText: "How long is the term of office for the President of the United States?",
      options: [
        "2 years",
        "6 years",
        "8 years",
        "4 years"
      ],
      correctAnswerIndex: 3,
      explanation: "The President of the United States holds office for a fixed tenure of four years. The 22nd Amendment Act of 1951 limits a person from being elected as President more than twice, with a maximum total term of ten years.",
    ),

    Question(
      questionText: "In case of impeachment, who initiates the proceedings and who presides over the trial?",
      options: [
        "The Senate initiates, and the President presides.",
        "The House of Representatives initiates, and the Vice President presides.",
        "The House of Representatives initiates, and the Chief Justice of the Supreme Court presides.",
        "The President initiates, and the Speaker of the House presides."
      ],
      correctAnswerIndex: 2,
      explanation: "In case of impeachment, the House of Representatives initiates the proceedings by a majority vote. The trial is then conducted by the Senate, with the Chief Justice of the Supreme Court presiding over it.",
    ),

    Question(
      questionText: "What is a significant characteristic of the British Constitution?",
      options: [
        "It is entirely written like the American Constitution.",
        "It is the youngest democratic system in the world.",
        "It is the oldest constitutional system.",
        "It is based on federalism."
      ],
      correctAnswerIndex: 2,
      explanation: "The British Constitution is the oldest in the world and is often referred to as the 'mother of Constitutions.' It is a blend of monarchy, aristocracy, and democracy.",
    ),

    Question(
      questionText: "What is a major element of the British Constitution, representing unwritten principles of political practices and customary behaviour?",
      options: [
        "Legal Commentaries",
        "Great Charters",
        "Statutes",
        "Conventions"
      ],
      correctAnswerIndex: 3,
      explanation: "Conventions constitute a major element of the British Constitution. They are unwritten principles of political practices and customary behaviour that have developed over time.",
    ),

    Question(
      questionText: "How is the British Constitution described in terms of flexibility?",
      options: [
        "It is rigid and requires a special procedure for amendment.",
        "It can only be amended by a constitutional convention.",
        "It is flexible and can be amended by the Parliament in the same manner as ordinary laws.",
        "It requires approval from the monarchy for any amendment."
      ],
      correctAnswerIndex: 2,
      explanation: "The British Constitution is flexible and can be amended by the Parliament in the same manner as ordinary laws, unlike some rigid constitutions that require special procedures for amendment.",
    ),

    Question(
      questionText: "What is a cardinal principle of the British constitutional law and political system?",
      options: [
        "Rule of Monarchy",
        "Rule of Law",
        "Rule of Parliament",
        "Rule of Aristocracy"
      ],
      correctAnswerIndex: 1,
      explanation: "The doctrine of the rule of law is a fundamental characteristic of the British Constitution. It emphasises that the law is supreme, and the government must act within the limits of the law.",
    ),

    Question(
      questionText: "What is the relationship between the Crown and the King/Queen in the British constitutional monarchy?",
      options: [
        "The Crown and the King/Queen are synonymous.",
        "The King/Queen rules, and the Crown is symbolic.",
        "The Crown is mortal, and the King/Queen is immortal.",
        "The Crown is an institution, and the King/Queen is a person."
      ],
      correctAnswerIndex: 3,
      explanation: "In the British constitutional monarchy, the distinction exists between the Crown as an institution and the King/Queen as a person. The Crown is immortal, while the King/Queen is mortal.",
    ),

    Question(
      questionText: "In which year did the French Constitution that established the Fifth Republic come into force?",
      options: ["1945", "1950", "1958", "1965"],
      correctAnswerIndex: 2,
      explanation: "The present French Constitution, establishing the Fifth Republic, came into force in 1958. It was prepared under the instructions of General de Gaulle to give France a strong and stable government.",
    ),

    Question(
      questionText: "What is a significant characteristic of the French Constitution in terms of its nature?",
      options: [
        "It is entirely unwritten.",
        "It is a blend of monarchy and democracy.",
        "It is a rigid constitution.",
        "It is a unitary constitution."
      ],
      correctAnswerIndex: 2,
      explanation: "Unlike the British Constitution, the French Constitution is rigid in nature. It contains a special procedure for its amendment, requiring a 60% majority vote in both houses of Parliament or a national referendum on constitutional amendment.",
    ),

    Question(
      questionText: "How often has France changed its Constitution since the French Revolution of 1789-1799?",
      options: [
        "Every 5 years",
        "Every 10 years",
        "Every 12 years on average",
        "Only once"
      ],
      correctAnswerIndex: 2,
      explanation: "Since the French Revolution, France has changed its Constitution on average after every 12 years. It has adopted three monarchical, two dictatorial, three imperial, and four republican constitutions.",
    ),

    Question(
      questionText: "What is the primary mode of amendment for the French Constitution?",
      options: [
        "Approval by the President",
        "60% majority vote in both houses of Parliament",
        "Approval by the Constitutional Council",
        "Direct approval by the citizens through a referendum"
      ],
      correctAnswerIndex: 1,
      explanation: "The French Constitution can be amended by the Parliament with a 60% majority vote in both houses. Alternatively, the President can call a national referendum on constitutional amendment.",
    ),

    Question(
      questionText: "What is the role of the Constitutional Council in France?",
      options: [
        "It has executive powers.",
        "It functions as the supreme legislative body.",
        "It serves as a judicial watchdog ensuring conformity to the Constitution.",
        "It is an advisory body for international relations."
      ],
      correctAnswerIndex: 2,
      explanation: "France has a Constitutional Council that functions as a judicial watchdog, ensuring that executive decrees and parliamentary laws conform to the provisions of the Constitution. However, its opinion is advisory and not binding.",
    ),

    Question(
      questionText: "When did the Meiji Restoration mark the beginning of the modern state of Japan?",
      options: ["1860", "1872", "1889", "1947"],
      correctAnswerIndex: 0,
      explanation: "The Meiji Restoration in 1868 marked the beginning of the modern state of Japan. The subsequent Meiji Constitution, based on autocracy and monarchy, remained in force for 58 years.",
    ),

    Question(
      questionText: "Under whose direction did Japan adopt a new democratic Constitution in 1946?",
      options: ["Emperor Hirohito", "Prime Minister Shidehara", "U.S. General Douglas MacArthur", "Diet (Japanese Parliament)"],
      correctAnswerIndex: 2,
      explanation: "Under the direction of U.S. General Douglas MacArthur, Japan adopted a new democratic Constitution in 1946 after the Allied Occupation from 1945 to 1952.",
    ),

    Question(
      questionText: "What are the distinctive features of the present Constitution of Japan?",
      options: [
        "It is entirely unwritten.",
        "It is a unitary constitution.",
        "It is based on autocracy and monarchy.",
        "It is a blend of the American and British systems."
      ],
      correctAnswerIndex: 3,
      explanation: "The present Constitution of Japan is a written constitution, emphasising the sovereignty of the people. It is a unique blend of the American and British systems, adopted in 1947.",
    ),

    Question(
      questionText: "How is the Japanese Constitution amended, and has it been amended so far?",
      options: [
        "Through a simple majority vote by the Diet.",
        "By a two-thirds majority of the Diet, followed by popular ratification.",
        "Through a national referendum initiated by the Emperor.",
        "It has never been amended since 1947."
      ],
      correctAnswerIndex: 1,
      explanation: "The Japanese Constitution can be amended by a two-thirds majority of the Diet, followed by popular ratification through a special referendum. As of now, the Constitution has not been amended since 1947.",
    ),

    Question(
      questionText: "What is the nature of Japan's government system, and how does it differ from Britain?",
      options: [
        "Presidential government system",
        "Absolute monarchy",
        "Parliamentary government system with some differences",
        "Federal government system"
      ],
      correctAnswerIndex: 2,
      explanation: "Japan has a parliamentary government system with some differences from Britain, including the appointment of the Prime Minister by the Emperor and the removal powers of the Prime Minister over Ministers.",
    ),

    Question(
      questionText: "Which leader led the Russian Revolution in 1917, leading to the formation of the Soviet Union?",
      options: ["Vladimir Lenin", "Joseph Stalin", "Leon Trotsky", "Nikita Khrushchev"],
      correctAnswerIndex: 0,
      explanation: "Vladimir Lenin led the Russian Revolution in 1917, establishing the Soviet Union. The USSR later collapsed in 1989-1991 due to economic crises.",
    ),

    Question(
      questionText: "How many Constitutions did the USSR adopt during its existence, and can you name them?",
      options: ["Two - 1918 and 1936", "Three - 1918, 1924, and 1977", "Four - 1918, 1924, 1936, and 1977", "Five - 1918, 1924, 1936, 1952, and 1977"],
      correctAnswerIndex: 2,
      explanation: "The USSR adopted four Constitutions during its existence: 1918, 1924, 1936 (Stalin Constitution), and 1977 (Brezhnev Constitution).",
    ),

    Question(
      questionText: "Which ideology dominated the constitutional system of the USSR, and what role did the Communist Party play?",
      options: [
        "Capitalism; Limited influence of the Communist Party",
        "Fascism; Centralized control by the Communist Party",
        "Marxism-Leninism; Dominance of the Communist Party",
        "Democracy; Minority role of the Communist Party"
      ],
      correctAnswerIndex: 2,
      explanation: "The constitutional system of the USSR was dominated by Marxism-Leninism, and the Communist Party played a central role in political and administrative matters.",
    ),

    Question(
      questionText: "How many Union Republics made up the Soviet Federation, and what powers did they have?",
      options: [
        "Five; Complete autonomy",
        "Ten; Limited autonomy",
        "Fifteen; Enumerated powers with the right to secede",
        "Twenty; Equal powers with the central government"
      ],
      correctAnswerIndex: 2,
      explanation: "The Soviet Federation comprised Fifteen Union Republics, each with its Constitution. They had enumerated powers, and the right to secede from the USSR.",
    ),

    Question(
      questionText: "What unique governing body was elected by the Supreme Soviet and served as the collective presidency of the USSR?",
      options: [
        "Supreme Council",
        "Presidential Cabinet",
        "Politburo",
        "Presidium of the Supreme Soviet"
      ],
      correctAnswerIndex: 3,
      explanation: "The Presidium of the Supreme Soviet, elected by the Supreme Soviet, served as the collective presidency of the USSR, combining various functions.",
    ),

    Question(
      questionText: "What percentage of the total area and population of the former USSR did Russia constitute?",
      options: [
        "50% of area, 30% of population",
        "70% of area, 50% of population",
        "75% of area, 70% of population",
        "80% of area, 80% of population"
      ],
      correctAnswerIndex: 2,
      explanation: "Russia constituted 75% of the total area and had 50% of the total population of the former USSR.",
    ),

    Question(
      questionText: "When did Russia adopt its new Constitution, establishing a new politico-administrative system?",
      options: [
        "December 1990",
        "December 1991",
        "December 1992",
        "December 1993"
      ],
      correctAnswerIndex: 3,
      explanation: "Russia adopted its new Constitution on December 20, 1993, establishing a new politico-administrative system after the dissolution of the USSR.",
    ),

    Question(
      questionText: "How many Republics make up the Russian Federation, according to its Constitution?",
      options: ["15 Republics", "21 Republics", "25 Republics", "30 Republics"],
      correctAnswerIndex: 1,
      explanation: "According to the Russian Constitution, the Russian Federation consists of 21 Republics.",
    ),

    Question(
      questionText: "What is the term length for which the President of the Russian Federation is elected?",
      options: ["Two years", "Four years", "Six years", "Eight years"],
      correctAnswerIndex: 1,
      explanation: "The President of the Russian Federation is elected for a term of four years.",
    ),

    Question(
      questionText: "What function does the Constitutional Court serve in Russia according to its Constitution?",
      options: [
        "Deciding foreign policy matters",
        "Reviewing regional laws",
        "Deciding the constitutionality of decrees and laws",
        "Overseeing economic policies"
      ],
      correctAnswerIndex: 2,
      explanation: "The Constitutional Court in Russia serves the function of deciding the constitutionality of Presidential decrees, Government orders, and laws of the Federal Assembly.",
    ),

    Question(
      questionText: "How many constitutions has China adopted since the Communist Revolution in 1949?",
      options: ["Two constitutions", "Three constitutions", "Four constitutions", "Five constitutions"],
      correctAnswerIndex: 2,
      explanation: "China has adopted four constitutions since the Communist Revolution in 1949.",
    ),

    Question(
      questionText: "What is the nature of the Chinese Constitution?",
      options: ["Flexible", "Rigid", "Partly flexible and partly rigid", "None of the above"],
      correctAnswerIndex: 1,
      explanation: "The Chinese Constitution is rigid in nature, containing a special procedure for its amendment.",
    ),

    Question(
      questionText: "How is the Chinese state described in terms of its nature and governance?",
      options: [
        "Federal state",
        "Unitary state with division of powers",
        "Unitary multinational state with central government supremacy",
        "Confederal state"
      ],
      correctAnswerIndex: 2,
      explanation: "The Chinese state is described as a unitary multinational state built up jointly by the people of all its nationalities, with central government supremacy.",
    ),

    Question(
      questionText: "What form of legislature does the Chinese Constitution establish?",
      options: ["Bicameral legislature", "Unicameral legislature", "Tricameral legislature", "Quadricameral legislature"],
      correctAnswerIndex: 1,
      explanation: "The Chinese Constitution establishes a unicameral legislature, the National People's Congress (NPC).",
    ),

    Question(
      questionText: "What role does the Communist Party of China (CPC) play according to the Chinese Constitution?",
      options: [
        "Primary political party",
        "One of many political parties with equal footing",
        "Banned political party",
        "Only active during elections"
      ],
      correctAnswerIndex: 0,
      explanation: "The Chinese Constitution recognizes a multi-party system but establishes the leadership role of the Communist Party of China (CPC).",
    ),
    Question(
      questionText: "How many constitutions has Switzerland adopted till now?",
      options: ["One constitution", "Two constitutions", "Three constitutions", "Four constitutions"],
      correctAnswerIndex: 2,
      explanation: "Switzerland has adopted three constitutions: 1848, 1874, and 1999.",
    ),

    Question(
      questionText: "When did the third constitution of Switzerland, adopted in 1999, come into force?",
      options: ["1st January 1998", "18th April 1999", "1st January 2000", "4th December 1999"],
      correctAnswerIndex: 2,
      explanation: "The third constitution of Switzerland, adopted in 1999, came into force on 1st January 2000.",
    ),

    Question(
      questionText: "What type of constitution is the Swiss Constitution?",
      options: ["Flexible", "Rigid", "Partly flexible and partly rigid", "None of the above"],
      correctAnswerIndex: 1,
      explanation: "The Swiss Constitution is rigid in nature, containing a special procedure for its amendment.",
    ),

    Question(
      questionText: "How is the Swiss federal state structured?",
      options: ["Unitary state", "Federal state", "Confederal state", "Parliamentary state"],
      correctAnswerIndex: 1,
      explanation: "Switzerland is a federal republic consisting of 26 units called cantons, with powers divided between the federal government and the cantons.",
    ),

    Question(
      questionText: "What is the unique system of executive provided by the Swiss Constitution?",
      options: [
        "Parliamentary system",
        "Presidential system",
        "Council Model of Government",
        "Bicameral executive"
      ],
      correctAnswerIndex: 2,
      explanation: "The Swiss Constitution provides for a unique Council Model of Government, a plural (collegial) executive.",
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
    home: wcstrctn(),
  ));
}

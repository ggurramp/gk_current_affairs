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

class interStateRelations extends StatefulWidget {
  final String? userIdentifier;

  interStateRelations({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<interStateRelations> createState() => _interStateRelationsState();
}

class _interStateRelationsState extends State<interStateRelations> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
//16.Inter-state relations
    Question(
        questionText: "What are the provisions in the Indian Constitution related to inter-state comity?",
        options: [
          "Adjudication of inter-state water disputes.",
          "Coordination through inter-state councils.",
          "Mutual recognition of public acts, records, and judicial proceedings.",
          "Freedom of inter-state trade, commerce, and intercourse.",
          "All of the above."
        ],
        correctAnswerIndex: 4,
        explanation: "The provisions in the Indian Constitution related to inter-state comity include adjudication of water disputes, coordination through councils, mutual recognition of public acts, records, and judicial proceedings, as well as freedom of inter-state trade, commerce, and intercourse."
    ),

    Question(
        questionText: "Under Article 262 of the Constitution, what powers does Parliament have regarding inter-state water disputes?",
        options: [
          "Provide for the adjudication of disputes related to inter-state rivers.",
          "Exercise jurisdiction in all water disputes.",
          "Establish zonal councils for water regulation.",
          "Refer all water disputes directly to the Supreme Court."
        ],
        correctAnswerIndex: 0,
        explanation: "Under Article 262, Parliament has the power to provide for the adjudication of disputes related to the use, distribution, and control of waters of any inter-state river and river valley."
    ),

    Question(
        questionText: "How does the Inter-State River Water Disputes Act empower the Central government?",
        options: [
          "To regulate inter-state trade.",
          "To set up ad hoc tribunals for water dispute adjudication.",
          "To establish zonal councils for coordination.",
          "To directly intervene in state affairs."
        ],
        correctAnswerIndex: 1,
        explanation: "The Inter-State River Water Disputes Act empowers the Central government to set up ad hoc tribunals for the adjudication of disputes between two or more states in relation to the waters of an inter-state river or river valley."
    ),

    Question(
        questionText: "What is the purpose of the River Boards Act (1956)?",
        options: [
          "To establish zonal councils.",
          "To regulate inter-state trade.",
          "To provide for the adjudication of water disputes.",
          "To establish river boards for the regulation and development of inter-state river and river valleys."
        ],
        correctAnswerIndex: 3,
        explanation: "The River Boards Act (1956) aims to establish river boards for the regulation and development of inter-state river and river valleys, advising state governments on related matters."
    ),

    Question(
        questionText: "Why is the decision of an ad hoc tribunal set up under the Inter-State River Water Disputes Act considered final and binding?",
        options: [
          "Because it bypasses the Constitution.",
          "Because it directly involves the Supreme Court.",
          "Because Parliament mandates it.",
          "Because it ensures resolution without further legal recourse."
        ],
        correctAnswerIndex: 3,
        explanation: "The decision of an ad hoc tribunal under the Inter-State River Water Disputes Act is considered final and binding, ensuring resolution without the need for further legal recourse."
    ),

    Question(
        questionText: "What role do zonal councils play in promoting inter-state cooperation and coordination?",
        options: [
          "Adjudicating water disputes.",
          "Regulating trade and commerce.",
          "Promoting mutual recognition of public acts.",
          "Coordinating and promoting inter-state cooperation."
        ],
        correctAnswerIndex: 3,
        explanation: "Zonal councils, established by Parliament, play a role in promoting inter-state cooperation and coordination."
    ),
    Question(
        questionText: "What does Article 263 of the Indian Constitution contemplate regarding Inter-State Councils?",
        options: [
          "The establishment of Inter-State Councils to coordinate between states and between the Centre and states.",
          "The definition of the nature of duties of the President.",
          "The empowerment of the Supreme Court to decide inter-state disputes.",
          "The establishment of regional councils for tax purposes."
        ],
        correctAnswerIndex: 0,
        explanation: "Article 263 contemplates the establishment of Inter-State Councils to coordinate between states and between the Centre and states, allowing the President to define their duties."
    ),

    Question(
        questionText: "What authority does the President have regarding the establishment of an Inter-State Council?",
        options: [
          "The authority to make binding decisions on inter-state disputes.",
          "The authority to define the duties, organization, and procedure of the council.",
          "The authority to appoint judges to the council.",
          "The authority to intervene directly in state affairs."
        ],
        correctAnswerIndex: 1,
        explanation: "The President has the authority, as per Article 263, to establish an Inter-State Council and define its duties, organization, and procedure."
    ),

    Question(
        questionText: "What duties can be assigned to an Inter-State Council under Article 263?",
        options: [
          "Regulating trade and commerce.",
          "Adjudicating legal controversies between governments.",
          "Enquiring into and advising upon disputes between states.",
          "Intervening in non-legal controversies."
        ],
        correctAnswerIndex: 2,
        explanation: "Article 263 specifies that an Inter-State Council can be assigned duties such as enquiring into and advising upon disputes between states."
    ),

    Question(
        questionText: "How does the function of the Inter-State Council, according to Article 263, complement the Supreme Court's jurisdiction under Article 131?",
        options: [
          "The Council has the power to overrule Supreme Court decisions.",
          "The Council can deal with legal controversies, unlike the Supreme Court.",
          "The Council's function is advisory, unlike the binding decisions of the Supreme Court.",
          "The Council has a higher authority than the Supreme Court in inter-state matters."
        ],
        correctAnswerIndex: 2,
        explanation: "The function of the Inter-State Council under Article 263 is advisory, complementing the Supreme Court's binding decisions under Article 131."
    ),

    Question(
        questionText: "Which subjects are mentioned as areas for investigation and discussion by an Inter-State Council under Article 263?",
        options: [
          "Legal controversies.",
          "Inter-state trade.",
          "Subjects of common interest to states or the Centre and states.",
          "Intervention in state affairs."
        ],
        correctAnswerIndex: 2,
        explanation: "Article 263 mentions that an Inter-State Council can investigate and discuss subjects of common interest to states or the Centre and states."
    ),

    Question(
        questionText: "Name some of the councils established by the President under Article 263 for better coordination of policy and action.",
        options: [
          "Central Council of Health and Family Welfare.",
          "Central Council of Local Government.",
          "Regional Councils for Sales Tax.",
          "All of the above."
        ],
        correctAnswerIndex: 3,
        explanation: "The President has established various councils, including the Central Council of Health and Family Welfare, Central Council of Local Government, and Regional Councils for Sales Tax, for better coordination of policy and action."
    ),
    Question(
        questionText: "According to the Sarkaria Commission, what recommendation did it make regarding the Inter-State Council?",
        options: [
          "To establish a temporary Inter-State Council.",
          "To establish an Inter-Governmental Council.",
          "To abolish the Inter-State Council.",
          "To expand the powers of the Supreme Court."
        ],
        correctAnswerIndex: 1,
        explanation: "The Sarkaria Commission recommended the establishment of a permanent Inter-State Council, differentiating it by calling it the Inter-Governmental Council."
    ),

    Question(
        questionText: "When was the Inter-State Council established, and who was the Prime Minister at that time?",
        options: [
          "Established in 1983 under V. P. Singh.",
          "Established in 1990 under V. P. Singh.",
          "Established in 1990 under Rajiv Gandhi.",
          "Established in 1983 under Rajiv Gandhi."
        ],
        correctAnswerIndex: 2,
        explanation: "The Inter-State Council was established in 1990 under the Janata Dal government headed by V. P. Singh."
    ),

    Question(
        questionText: "Who are the members of the Inter-State Council?",
        options: [
          "Prime Minister, Chief Ministers of states, and Governors of states under President's rule.",
          "Prime Minister, Chief Ministers of states, and Union Cabinet ministers.",
          "Prime Minister, Chief Ministers of states, and administrators of union territories without legislative assemblies.",
          "Prime Minister, Chief Ministers of states, and regional council members."
        ],
        correctAnswerIndex: 1,
        explanation: "The Inter-State Council consists of the Prime Minister, Chief Ministers of states, Chief Ministers of union territories, administrators of union territories without legislative assemblies, and nominated Central cabinet ministers."
    ),

    Question(
        questionText: "What are the duties of the Inter-State Council?",
        options: [
          "Making binding decisions on inter-state disputes.",
          "Promoting coordination by examining, discussing, and deliberating on issues.",
          "Intervening directly in state affairs.",
          "Enforcing laws related to inter-state trade."
        ],
        correctAnswerIndex: 1,
        explanation: "The duties of the Inter-State Council include promoting coordination by examining, discussing, and deliberating on issues related to inter-state, Centre-state, and Centre-union territories relations."
    ),

    Question(
        questionText: "What is the purpose of the Standing Committee of the Inter-State Council?",
        options: [
          "To replace the Inter-State Council.",
          "To assist the Zonal Councils.",
          "To continuously consult and process matters for the consideration of the Council.",
          "To make binding decisions on inter-state matters."
        ],
        correctAnswerIndex: 2,
        explanation: "The Standing Committee of the Inter-State Council, established in 1996, serves the purpose of continuously consulting and processing matters for the consideration of the Council."
    ),

    Question(
        questionText: "Which body assists the Inter-State Council and was set up in 1991?",
        options: [
          "Zonal Councils.",
          "Standing Committee.",
          "Sarkaria Commission.",
          "Inter-State Council Secretariat."
        ],
        correctAnswerIndex: 3,
        explanation: "The Inter-State Council is assisted by the Inter-State Council Secretariat, which was set up in 1991."
    ),
    Question(
        questionText: "What does the 'Full Faith and Credit' clause in the Indian Constitution address?",
        options: [
          "Recognition of public acts, records, and judicial proceedings in each state.",
          "Enforcement of penal laws in different states.",
          "Execution of criminal judgments anywhere in India.",
          "Creation of official books and registers."
        ],
        correctAnswerIndex: 0,
        explanation: "The 'Full Faith and Credit' clause in the Indian Constitution addresses the recognition of public acts, records, and judicial proceedings throughout the territory of India."
    ),

    Question(
        questionText: "What does the expression 'public acts' include in the context of the 'Full Faith and Credit' clause?",
        options: [
          "Private agreements between individuals.",
          "Legislative and executive acts of the government.",
          "Official books and registers made by private citizens.",
          "Judicial proceedings in private disputes."
        ],
        correctAnswerIndex: 1,
        explanation: "In the context of the 'Full Faith and Credit' clause, the expression 'public acts' includes both legislative and executive acts of the government."
    ),

    Question(
        questionText: "How does the 'Full Faith and Credit' clause address the manner in which acts, records, and proceedings are proved and their effect determined?",
        options: [
          "It leaves it to the discretion of individual states.",
          "It grants exclusive authority to the judiciary.",
          "It is subject to the laws of Parliament, which determine the mode of proof and their effect.",
          "It requires the approval of the President."
        ],
        correctAnswerIndex: 2,
        explanation: "The 'Full Faith and Credit' clause is subject to the laws of Parliament, which determine the mode of proof and the effect of acts, records, and proceedings of one state in another state."
    ),

    Question(
        questionText: "To what extent do final judgments and orders of civil courts in India apply?",
        options: [
          "Only within the state where the judgment was issued.",
          "Throughout India, without the necessity of a fresh suit.",
          "Only in criminal cases, not civil cases.",
          "They do not apply across state borders."
        ],
        correctAnswerIndex: 1,
        explanation: "Final judgments and orders of civil courts in India are capable of execution anywhere within India without the necessity of a fresh suit upon the judgment."
    ),

    Question(
      questionText: "Does the 'Full Faith and Credit' clause apply to criminal judgments?",
      options: [
        "Yes, it applies to both civil and criminal judgments.",
        "No, it applies only to civil judgments.",
        "It applies exclusively to criminal judgments.",
        "Its application depends on the nature of the case."
      ],
      correctAnswerIndex: 1,
      explanation: "The 'Full Faith and Credit' clause applies only to civil judgments, and not to criminal judgments.",
    ),
    Question(
        questionText: "What is the primary objective of Article 301 in Part XIII of the Indian Constitution?",
        options: [
          "To impose restrictions on inter-state trade.",
          "To promote the free flow of trade, commerce, and intercourse throughout the territory of India.",
          "To create border barriers between states.",
          "To establish trade preferences for certain states."
        ],
        correctAnswerIndex: 1,
        explanation: "The primary objective of Article 301 is to promote the free flow of trade, commerce, and intercourse throughout the territory of India."
    ),

    Question(
        questionText: "What does Article 301 encompass in terms of freedom?",
        options: [
          "Freedom only for inter-state trade.",
          "Freedom only for intra-state trade.",
          "Freedom from all restrictions, except those provided in other provisions of Part XIII.",
          "Freedom to discriminate between states."
        ],
        correctAnswerIndex: 2,
        explanation: "Article 301 encompasses freedom from all restrictions, except those provided in other provisions (Articles 302 to 305) of Part XIII of the Constitution."
    ),

    Question(
        questionText: "In what circumstances can Parliament impose restrictions on trade, commerce, and intercourse?",
        options: [
          "To give preference to one state over another.",
          "Only during a state of emergency.",
          "In public interest, without giving preference or discrimination between states.",
          "To promote regionalism and linguistic affinity."
        ],
        correctAnswerIndex: 2,
        explanation: "Parliament can impose restrictions on trade, commerce, and intercourse in public interest, but without giving preference or discrimination between states."
    ),

    Question(
        questionText: "What role do state legislatures play in imposing restrictions on trade, commerce, and intercourse?",
        options: [
          "They can impose restrictions without any conditions.",
          "They can impose restrictions with the previous sanction of the President and without discrimination between states.",
          "They can give preference to one state over another.",
          "They have no role in imposing restrictions."
        ],
        correctAnswerIndex: 1,
        explanation: "State legislatures can impose reasonable restrictions with the previous sanction of the President and without discrimination between states."
    ),

    Question(
        questionText: "What does Article 301 prohibit in terms of discriminatory taxes?",
        options: [
          "It allows states to impose discriminatory taxes on imported goods.",
          "It prohibits the imposition of discriminatory taxes on goods imported from other states or union territories.",
          "It imposes discriminatory taxes on goods manufactured within the state.",
          "It allows states to discriminate in imposing taxes."
        ],
        correctAnswerIndex: 1,
        explanation: "Article 301 prohibits the imposition of discriminatory taxes by states on goods imported from other states or union territories."
    ),

    Question(
        questionText: "Is the freedom under Article 301 subject to nationalisation laws?",
        options: [
          "Yes, it is entirely subject to nationalisation laws.",
          "No, it is entirely exempt from nationalisation laws.",
          "It is subject to nationalisation laws, allowing the government to carry on trade, business, industry, or service.",
          "Its application depends on the nature of the trade or business."
        ],
        correctAnswerIndex: 2,
        explanation: "The freedom under Article 301 is subject to nationalisation laws, allowing the government to make laws for the carrying on of trade, business, industry, or service."
    ),

    Question(
        questionText: "What role can the Parliament play in enforcing the freedom of trade, commerce, and intercourse?",
        options: [
          "Parliament can appoint an authority with the power to enforce the freedom.",
          "Parliament can entirely delegate its powers to the states.",
          "Parliament has no role in enforcing the freedom.",
          "Parliament can enforce the freedom only during emergencies."
        ],
        correctAnswerIndex: 0,
        explanation: "The Parliament can appoint an appropriate authority to carry out the purposes of the provisions related to the freedom of trade, commerce, and intercourse."
    ),

    Question(
        questionText: "What type of bodies are Zonal Councils, and how are they established?",
        options: [
          "Constitutional bodies established by the Indian Constitution.",
          "Statutory bodies established by an Act of Parliament.",
          "Executive bodies established by the President.",
          "Judicial bodies established by the Supreme Court."
        ],
        correctAnswerIndex: 1,
        explanation: "Zonal Councils are statutory bodies established by an Act of Parliament, specifically the States Reorganisation Act of 1956."
    ),

    Question(
        questionText: "What factors were taken into account while forming the zones for Zonal Councils?",
        options: [
          "Only linguistic affinity.",
          "Only economic development requirements.",
          "Natural divisions, river systems, cultural and linguistic affinity, and requirements of economic development, security, and law and order.",
          "Only river systems."
        ],
        correctAnswerIndex: 2,
        explanation: "While forming the zones for Zonal Councils, factors such as natural divisions, river systems, cultural and linguistic affinity, and requirements of economic development, security, and law and order were taken into account."
    ),

    Question(
        questionText: "Who is the common chairman of the five Zonal Councils?",
        options: [
          "Chief Minister of the largest state.",
          "President of India.",
          "Home Minister of the Central government.",
          "Prime Minister of India."
        ],
        correctAnswerIndex: 2,
        explanation: "The common chairman of the five Zonal Councils is the Home Minister of the Central government."
    ),

    Question(
        questionText: "What are the objectives or functions of Zonal Councils?",
        options: [
          "To enforce laws in different regions.",
          "To promote state-consciousness and regionalism.",
          "To create after-effects of separation.",
          "To achieve emotional integration, prevent regionalism, and cooperate in social and economic matters."
        ],
        correctAnswerIndex: 3,
        explanation: "The objectives or functions of Zonal Councils include achieving emotional integration, preventing state-consciousness, regionalism, and linguistic trends, and cooperating in social and economic matters."
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
    home: interStateRelations(),
  ));
}

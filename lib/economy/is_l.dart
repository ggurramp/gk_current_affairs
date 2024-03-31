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

class is_l extends StatefulWidget {
  final String? userIdentifier;

  is_l({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<is_l> createState() => _is_lState();
}

class _is_lState extends State<is_l> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [



    Question(
      questionText: "What model of industrialization influenced India's pattern of industrialization during the second five-year plan?",
      options: ["Keynesian Model", "Mahalanobis Model", "Marshall Plan", "Solow Model"],
      correctAnswerIndex: 1,
      explanation: "India's pattern of industrialization during the second five-year plan was strongly influenced by the 'Mahalanobis Model', which involved setting up basic and capital goods industries by the government.",
    ),

    Question(
      questionText: "What were the objectives behind setting up the public sector in India for industrialization?",
      options: [
        "Maximizing profits and efficiency",
        "Achieving self-reliance, creating capacities in basic goods, providing employment, and fostering industrial growth",
        "Dominating the private sector",
        "Minimizing government intervention"
      ],
      correctAnswerIndex: 1,
      explanation: "The objectives behind setting up the public sector in India for industrialization were to achieve self-reliance, create capacities in basic goods, provide employment, and foster industrial growth.",
    ),

    Question(
      questionText: "Which policy of 1956 reserved several critical areas exclusively for the public sector in India?",
      options: [
        "Foreign Exchange Regulation Act",
        "Industrial Policy of 1991",
        "Monopolies and Restrictive Trade Practices Act",
        "Industrial Policy of 1956"
      ],
      correctAnswerIndex: 3,
      explanation: "The Industrial Policy of 1956 reserved several critical areas exclusively for the public sector in India.",
    ),

    Question(
      questionText: "What characterized the industrial policies pre-1991 in India?",
      options: [
        "Dominance of the private sector",
        "Highly regulated and bureaucratic controls, dominance of the public sector, and limited space for private sector with bureaucratic control",
        "Lack of government intervention in industrial activities",
        "Absence of any price regulation"
      ],
      correctAnswerIndex: 1,
      explanation: "The industrial policies pre-1991 in India were characterized by highly regulated and bureaucratic controls, dominance of the public sector, and limited space for the private sector with bureaucratic control.",
    ),

    Question(
      questionText: "Which broad areas were emphasized in the New Economic Policy or Industrial Policy of 1991?",
      options: [
        "Capitalization, privatization, and foreign dependency",
        "Liberalization, public sector, and foreign investment",
        "Nationalization, price regulation, and monopolies",
        "Increased government intervention and control"
      ],
      correctAnswerIndex: 1,
      explanation: "The New Economic Policy or Industrial Policy of 1991 emphasized liberalization, public sector reforms, and foreign investment.",
    ),

    Question(
      questionText: "What was the most significant aspect of the policy of liberalization?",
      options: [
        "Opening atomic energy and railways for private sector participation",
        "Allowing private sector to operate without licenses or registration",
        "Reserving certain areas for public sector",
        "Imposing strict regulations on private sector operations"
      ],
      correctAnswerIndex: 1,
      explanation: "The most significant aspect of the policy of liberalization was allowing the private sector to operate without licenses or registration.",
    ),

    Question(
      questionText: "Why did the policy of liberalization emphasize minimizing bureaucratic control over the private sector?",
      options: [
        "To discourage private sector growth",
        "To enhance the efficiency, productivity, and profitability of the private sector",
        "To impose restrictions on capacity expansion and diversification",
        "To promote government intervention in business decisions"
      ],
      correctAnswerIndex: 1,
      explanation: "The policy of liberalization aimed to enhance the efficiency, productivity, and profitability of the private sector by minimizing bureaucratic control over its operations.",
    ),

    Question(
      questionText: "What distinguished a fundamental shift in the government's mindset regarding the private sector?",
      options: [
        "Increased regulations and constraints",
        "Recognition of the private sector's maturity and ability to shoulder larger responsibilities",
        "Complete control over production and governance",
        "Promotion of a monopoly-driven economy"
      ],
      correctAnswerIndex: 1,
      explanation: "A fundamental shift in the government's mindset was marked by the recognition of the private sector's maturity and its capability to shoulder larger responsibilities.",
    ),

    Question(
      questionText: "What were the key elements of the New Economic Policy related to the public sector?",
      options: [
        "Increased nationalization and higher investment in new public sectors",
        "Enhanced bureaucratic control and restrictions on the public sector",
        "Restrictions on capacity expansion and diversification",
        "Professionalization, performance accountability, and reduced areas reserved for public sector"
      ],
      correctAnswerIndex: 3,
      explanation: "The key elements of the New Economic Policy related to the public sector included professionalization, performance accountability, and the reduction of areas reserved for the public sector.",
    ),

    Question(
      questionText: "What are some changes expected in the role of the public sector as a result of the NEP 1991?",
      options: [
        "From profitability orientation to welfare orientation",
        "From operational autonomy to government control",
        "From productivity-oriented to production-oriented",
        "From welfare orientation to a commercial venture with profits as an objective to the extent feasible"
      ],
      correctAnswerIndex: 3,
      explanation: "As a result of the NEP 1991, the role of the public sector is expected to shift from a welfare orientation to a commercial venture with profits as an objective to the extent feasible.",
    ),

    Question(
      questionText: "What are the objectives outlined in the National Manufacturing Policy, 2011?",
      options: [
        "Increase manufacturing sector growth to 10-12% over the medium term",
        "Create 100 million additional jobs by 2030",
        "Focus on capital goods industries and neglect small and medium enterprises",
        "Ensure sustainability of growth, particularly with regard to the environment"
      ],
      correctAnswerIndex: 3,
      explanation: "The objectives outlined in the National Manufacturing Policy, 2011, include ensuring sustainability of growth, particularly with regard to the environment, among others.",
    ),

    Question(
      questionText: "What are some aspects of the National Manufacturing Policy related to NIMZs?",
      options: [
        "NIMZs to be solely managed by the Central Government",
        "Focus only on industries with strategic significance",
        "Simplification of regulatory environments in NIMZs",
        "No involvement of State Governments in NIMZs"
      ],
      correctAnswerIndex: 2,
      explanation: "Aspects of the National Manufacturing Policy related to NIMZs include the simplification of regulatory environments within these zones.",
    ),

    Question(
      questionText: "How does the National Manufacturing Policy aim to enhance global competitiveness?",
      options: [
        "By focusing solely on employment-intensive industries",
        "By increasing depth in manufacturing without concern for environmental impact",
        "By simplifying regulatory environments for domestic companies",
        "Through appropriate policy support"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Manufacturing Policy aims to enhance global competitiveness of Indian manufacturing through appropriate policy support.",
    ),

    Question(
      questionText: "What incentives are provided under the National Manufacturing Policy regarding Green Technology & Practices?",
      options: [
        "10% capital subsidy for units practicing zero water discharge",
        "Rebate on water cess for setting up wastewater recycling facilities",
        "Incentives for renewable energy under existing schemes",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Under the National Manufacturing Policy, incentives regarding Green Technology & Practices include various benefits like capital subsidy, rebates, and incentives for renewable energy.",
    ),

    Question(
      questionText: "What is one of the special benefits extended to SMEs under the National Manufacturing Policy?",
      options: [
        "Tax pass-through status for venture capital funds",
        "Setting up of a stock exchange for SMEs",
        "Liberalization of RBI norms for banks investing in venture capital funds",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Manufacturing Policy offers special benefits to SMEs such as tax pass-through status, setting up a stock exchange, and liberalization of RBI norms.",
    ),

    Question(
      questionText: "What changes are anticipated in the emerging role of the private sector?",
      options: [
        "Decrease in industrial growth due to limitations",
        "Segregation of ownership and management in private companies",
        "Reduced focus on corporate governance",
        "All of the above"
      ],
      correctAnswerIndex: 1,
      explanation: "Anticipated changes in the emerging role of the private sector include segregation of ownership from management in private companies.",
    ),

    Question(
      questionText: "What has been made mandatory for listed companies under the Companies Act, 2013?",
      options: [
        "Annual audits for CSR spending",
        "Net worth of ₹500 crore for CSR",
        "2% CSR spend from the average net profits of the past three years",
        "CSR spend of ₹1,000 crore"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the Companies Act, 2013, listed companies meeting specific criteria are mandated to spend 2% of their average net profits of the past three years on CSR.",
    ),

    Question(
      questionText: "What is the significance of an 'exit policy' in the context of liberalization?",
      options: [
        "It facilitates quick closure of businesses with minimal government restrictions.",
        "It encourages long-term sustainability of companies.",
        "It prohibits companies from shutting down.",
        "It creates more government interference in business operations."
      ],
      correctAnswerIndex: 0,
      explanation: "An exit policy in liberalization facilitates swift closure of businesses, allowing reorientation or restructuring with minimal government constraints.",
    ),

    Question(
      questionText: "What measures have been taken by the government regarding an exit policy for companies?",
      options: [
        "Establishment of the National Company Law Tribunal (NCLT)",
        "Introduction of stringent laws against labour unions",
        "Mandatory closure of all sick companies",
        "None of the above"
      ],
      correctAnswerIndex: 0,
      explanation: "The government has established the National Company Law Tribunal (NCLT) to serve as a single reference point for sick companies seeking revival or closure within a time frame.",
    ),

    Question(
      questionText: "What is a major concern related to labour laws ?",
      options: [
        "Excessive protection of unorganized sector workers",
        "Lack of skilled manpower in the organized sector",
        "Confusion and rigidity in the definitions within labour laws",
        "Decreased automation in industries"
      ],
      correctAnswerIndex: 2,
      explanation: " Highlights confusion and rigidity in definitions within labour laws as a major concern, leading to difficulties in implementation.",
    ),

    Question(
      questionText: "What suggestion is proposed to address the issues with labour laws?",
      options: [
        "Tightening labour laws to protect workers' interests",
        "Initiating dialogue with political parties and trade unions for comprehensive reforms",
        "Maintaining status quo in labour regulations",
        "Ignoring the need for any changes in labour laws"
      ],
      correctAnswerIndex: 1,
      explanation: "The suggestion proposed involves initiating dialogue with political parties and trade unions to bring about comprehensive reforms in labour laws.",
    ),

    Question(
      questionText: "Which government organization offers online services 24x7 at the eBiz website for entrepreneurs?",
      options: [
        "Ministry of Corporate Affairs",
        "Ministry of Home Affairs",
        "Directorate General of Foreign Trade (DGFT)",
        "Department of Industrial Policy"
      ],
      correctAnswerIndex: 2,
      explanation: "The Directorate General of Foreign Trade (DGFT) provides online services for entrepreneurs on the eBiz website round the clock.",
    ),

    Question(
      questionText: "What is the primary objective of the Agricultural Export Policy, 2018 formulated by the Indian government?",
      options: [
        "To restrict agricultural exports to \$60 billion by 2022",
        "To diminish India's agricultural exports by 2025",
        "To minimize farmers' income",
        "To boost India's agricultural exports to \$60 billion by 2022"
      ],
      correctAnswerIndex: 3,
      explanation: "The Agricultural Export Policy aims to boost India's agricultural exports to \$60 billion by 2022, supporting the Agriculture Ministry's target of reaching \$100 billion.",
    ),

    Question(
      questionText: "Under which scheme does the Indian government provide assistance for infrastructure projects having substantial export linkages?",
      options: [
        "Trade Infrastructure for Export Scheme (TIES)",
        "Export Promotion Council Scheme",
        "Export Infrastructure Development Scheme",
        "Export-Linked Infrastructure Initiative"
      ],
      correctAnswerIndex: 0,
      explanation: "The Trade Infrastructure for Export Scheme (TIES) offers assistance for setting up and upgrading infrastructure projects with significant export connections.",
    ),

    Question(
      questionText: "What is the central focus of the 'Make in India' initiative launched in 2014?",
      options: [
        "To make India a global tourism hub",
        "To become a part of the global supply chain",
        "To limit foreign investments in India",
        "To decrease India's manufacturing capabilities"
      ],
      correctAnswerIndex: 1,
      explanation: "The 'Make in India' initiative aims to position India as a part of the global supply chain by emphasizing manufacturing, research, and innovation.",
    ),

    Question(
      questionText: "What is the primary objective of the Start-up India initiative launched by the Government of India?",
      options: [
        "To limit the growth of start-up businesses",
        "To restrict economic growth in the country",
        "To empower start-ups for sustainable economic growth and job creation",
        "To discourage innovation and design in start-ups"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary objective of the Start-up India initiative is to empower start-ups, foster innovation, and create sustainable economic growth while generating large-scale employment opportunities.",
    ),

    Question(
      questionText: "What is the aim of the Multi-Modal Logistics Parks (MMLPs) as per the government's policy initiatives?",
      options: [
        "To increase vehicular pollution and congestion",
        "To lower freight costs and reduce warehouse expenses",
        "To limit the movement of goods for domestic and global trade",
        "To maximize land utilization in SEZs"
      ],
      correctAnswerIndex: 1,
      explanation: "The aim of the Multi-Modal Logistics Parks (MMLPs) is to lower over freight costs, reduce vehicular pollution and congestion, and cut warehouse costs, thus promoting the movement of goods for domestic and global trade.",
    ),

    Question(
      questionText: "Which industrial corridor program envisions the creation of world-class infrastructure, connectivity, and new greenfield smart cities as global manufacturing hubs?",
      options: [
        "Amritsar Kolkata Industrial Corridor (AKIC)",
        "Chennai Bengaluru Industrial Corridor (CBIC)",
        "Delhi Mumbai Industrial Corridor (DMIC)",
        "Bengaluru Mumbai Economic Corridor (BMEC)"
      ],
      correctAnswerIndex: 2,
      explanation: "The Delhi Mumbai Industrial Corridor (DMIC) envisions the creation of world-class infrastructure, connectivity, and new greenfield smart cities as global manufacturing hubs.",
    ),

    Question(
      questionText: "What was introduced by the Union Government to grant recognition to Geographical Indications (GIs) in India?",
      options: [
        "G2 logo and tagline",
        "G3 logo and tagline",
        "G1 logo and tagline",
        "G4 logo and tagline"
      ],
      correctAnswerIndex: 2,
      explanation: "The Union Government introduced the G1 logo and tagline for the recognition of Geographical Indications (GIs) in India.",
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
              final isCorrectAnswer = optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8.0), // Add space between boxes
                  decoration: BoxDecoration(
                    color: _selectedAnswerIndex == optionIndex
                        ? (isCorrectAnswer ? Colors.green[200] : Colors.red[300])
                        : Colors.white,
                    border: Border.all(
                      color: _selectedAnswerIndex == optionIndex ? Colors.blue : Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(optionText),
                    leading: Radio<int>(
                      value: optionIndex,
                      groupValue: _selectedAnswerIndex,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedAnswerIndex = value;
                          _userAnswers[_currentQuestionIndex] = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
    home: is_l(),
  ));
}

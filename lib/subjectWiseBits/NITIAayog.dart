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

class nitiAyogh extends StatefulWidget {
  final String? userIdentifier;

  nitiAyogh({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<nitiAyogh> createState() => _nitiAyoghState();
}

class _nitiAyoghState extends State<nitiAyogh> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//56.NITI Aayog

    Question(
      questionText: "When was the NITI Aayog established as the successor to the Planning Commission?",
      options: ["1st of August, 2014", "13th of August, 2014", "1st of January, 2015", "7th of January, 2015"],
      correctAnswerIndex: 2,
      explanation: "The NITI Aayog was established on January 1, 2015, as the successor to the Planning Commission.",
    ),
    Question(
      questionText: "Is NITI Aayog a constitutional or statutory body?",
      options: ["Constitutional Body", "Statutory Body", "Non-constitutional Body", "Non-statutory Body"],
      correctAnswerIndex: 3,
      explanation: "NITI Aayog is neither a constitutional body nor a statutory body. It is a non-constitutional and non-statutory body.",
    ),
    Question(
      questionText: "What shift in approach does NITI Aayog represent compared to the Planning Commission?",
      options: ["Top-down model", "Command and control approach", "Collaborative setting", "Confrontationist approach"],
      correctAnswerIndex: 2,
      explanation: "NITI Aayog represents a collaborative setting, accommodating diverse points of view and adopting a bottom-up approach in the spirit of federalism.",
    ),

    Question(
      questionText: "According to the Union Government, why was NITI Aayog established to replace the Planning Commission?",
      options: ["To centralize power", "To maintain a command economy", "To serve the evolving needs of India", "To implement a one-size-fits-all approach"],
      correctAnswerIndex: 2,
      explanation: "NITI Aayog was established to better serve the evolving needs and aspirations of the people of India in the changing political, economic, social, technological, and demographic landscape.",
    ),

    Question(
      questionText: "What role does the Union Finance Minister Arun Jaitley attribute to the Planning Commission in the context of India's economic structure?",
      options: ["Relevant and adaptive", "Redundant and obsolete", "Flexible and diverse", "Competitive in the global economy"],
      correctAnswerIndex: 1,
      explanation: "Arun Jaitley describes the 65-year-old Planning Commission as a redundant organization that was relevant in a command economy structure but not any longer.",
    ),

    Question(
      questionText: "What principles does the new institution (NITI Aayog) aim to adhere to in its approach to development?",
      options: ["Global transplantation", "One-size-fits-all", "Bharatiya approach", "Command and control"],
      correctAnswerIndex: 2,
      explanation: "The new institution (NITI Aayog) is expected to follow a Bharatiya approach to development, focusing on what will work specifically for India without transplanting models from outside.",
    ),

    Question(
      questionText: "What is the governing council of NITI Aayog composed of?",
      options: ["Cabinet Ministers of the Union Council", "Chief Ministers of all States, Chief Ministers of Union Territories, Lt. Governors of other Union Territories", "Ex-Officio Members", "Special Invitees"],
      correctAnswerIndex: 1,
      explanation: "The governing council of NITI Aayog comprises the Chief Ministers of all States, Chief Ministers of Union Territories with legislatures, and Lt. Governors of other Union Territories.",
    ),

    Question(
      questionText: "Who is appointed as the Vice-Chairperson of NITI Aayog?",
      options: ["Selected by Full-time Members", "Chosen by Special Invitees", "Appointed by the Prime Minister", "Elected by Chief Ministers"],
      correctAnswerIndex: 2,
      explanation: "The Vice-Chairperson of NITI Aayog is appointed by the Prime Minister.",
    ),

    Question(
      questionText: "What is the role of Regional Councils in NITI Aayog?",
      options: ["Formulating long-term policies", "Addressing specific issues impacting more than one state or region", "Providing advice on national security", "Monitoring progress at the village level"],
      correctAnswerIndex: 1,
      explanation: "Regional Councils in NITI Aayog are formed to address specific issues and contingencies impacting more than one state or region.",
    ),

    Question(
      questionText: "How does NITI Aayog contribute to national development?",
      options: ["By enforcing a top-down model", "By implementing a 'one-size-fits-all' approach", "Through a collaborative, bottom-up approach", "By dictating policies to the states"],
      correctAnswerIndex: 2,
      explanation: "NITI Aayog contributes to national development through a collaborative, bottom-up approach, in contrast to a 'one-size-fits-all' model.",
    ),

    Question(
      questionText: "What are some of the objectives of NITI Aayog?",
      options: [
        "1. To focus on technology upgradation and capacity building.",
        "2. To create a knowledge, innovation, and entrepreneurial support system.",
        "3. To actively monitor and evaluate the implementation of programs.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "Some objectives of NITI Aayog include focusing on technology upgradation, creating a knowledge support system, and actively monitoring program implementation.",
    ),

    Question(
      questionText: "What are the two main hubs at the core of NITI Aayog's functioning?",
      options: ["Technology and Innovation", "Knowledge and Development", "Team India and Knowledge and Innovation", "Cooperative and Competitive Federalism"],
      correctAnswerIndex: 2,
      explanation: "The two main hubs at the core of NITI Aayog's functioning are Team India Hub and Knowledge and Innovation Hub.",
    ),

    Question(
      questionText: "Which hub in NITI Aayog is responsible for maintaining a state-of-the-art resource center and a repository of research on good governance?",
      options: ["Cooperative Federalism Hub", "Knowledge and Innovation Hub", "Policy and Programme Framework Hub", "Monitoring and Evaluation Hub"],
      correctAnswerIndex: 1,
      explanation: "The Knowledge and Innovation Hub in NITI Aayog is responsible for maintaining a state-of-the-art resource center and a repository of research on good governance.",
    ),

    Question(
      questionText: "How many main functions is the NITI Aayog's gamut of activities divided into?",
      options: ["Three", "Four", "Five", "Six"],
      correctAnswerIndex: 2,
      explanation: "The NITI Aayog's gamut of activities is divided into four main functions: Policy and programme framework, Cooperative and competitive federalism, Monitoring and evaluation, and Think-tank, Knowledge and Innovation Hub.",
    ),

    Question(
      questionText: "What is the role of the various verticals/cells in NITI Aayog?",
      options: ["They carry out the mandate of fostering cooperative federalism", "They examine sectoral issues and priorities for national development", "They provide coordination and support for NITI Aayog's mandate", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "The various verticals/cells in NITI Aayog provide coordination and support for carrying out the mandate, examine sectoral issues, and prioritize national development.",
    ),

    Question(
      questionText: "Which division in NITI Aayog is responsible for project appraisal and management?",
      options: ["Infrastructure-Energy", "Project Appraisal and Management Division", "Data Management and Analysis", "Science and Technology"],
      correctAnswerIndex: 14,
      explanation: "The Project Appraisal and Management Division in NITI Aayog is responsible for project appraisal and management.",
    ),

    Question(
      questionText: "According to Pandit Deendayal Upadhyay's idea, what principle does NITI Aayog prioritize?",
      options: ["Inclusion", "Village Integration", "Demographic Dividend", "Antyodaya"],
      correctAnswerIndex: 3,
      explanation: "NITI Aayog prioritizes 'Antyodaya', as enunciated in Pandit Deendayal Upadhyay's idea.",
    ),

    Question(
      questionText: "What is the guiding principle that emphasizes empowering vulnerable and marginalized sections, addressing identity-based inequalities?",
      options: ["Antyodaya", "Inclusion", "Village", "Demographic Dividend"],
      correctAnswerIndex: 1,
      explanation: "The guiding principle that emphasizes empowering vulnerable and marginalized sections and addressing identity-based inequalities is 'Inclusion'.",
    ),

    Question(
      questionText: "How does NITI Aayog view governance according to its guiding principles?",
      options: ["Outlay to Outcome", "Open and Transparent", "Coercive and Authoritarian", "Top-Down Approach"],
      correctAnswerIndex: 2,
      explanation: "NITI Aayog views governance as open, transparent, accountable, pro-active, and purposeful, transitioning focus from 'Outlay to Outcome'.",
    ),

    Question(
      questionText: "What is the goal of NITI Aayog in terms of cooperative federalism?",
      options: ["Making States learn individually", "Strengthening individual States", "Bringing States together to work towards the national development agenda", "Promoting competition among States"],
      correctAnswerIndex: 2,
      explanation: "The goal of NITI Aayog in terms of cooperative federalism is to bring States together to work towards the national development agenda.",
    ),

    Question(
      questionText: "What steps has NITI Aayog taken to foster cooperative federalism?",
      options: [
        "1. Meetings between the Prime Minister, Cabinet Ministers, and all Chief Ministers.",
        "2. Sharing of best practices.",
        "3. Launching the Aspirational Districts Programme for development of backward districts.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "NITI Aayog has taken steps such as meetings, sharing best practices, and launching the Aspirational Districts Programme to foster cooperative federalism.",
    ),
    Question(
      questionText: "What was the National Institute of Labour Economics Research and Development (NILERD) formerly known as?",
      options: ["Institute of Applied Manpower Research (IAMR)", "Programme Evaluation Organization", "Development Monitoring and Evaluation Office (DMEO)", "Independent Evaluation Office"],
      correctAnswerIndex: 0,
      explanation: "The National Institute of Labour Economics Research and Development (NILERD) was formerly known as the Institute of Applied Manpower Research (IAMR).",
    ),

    Question(
      questionText: "What is the primary objective of NILERD (formerly IAMR)?",
      options: [
        "To carry out independent and objective impact evaluation of Central Government-funded programs.",
        "To support the government in achieving the national development agenda through monitoring and evaluation.",
        "To provide technical advisory to states under NITI Aayog's mandate.",
        "All of the above."
      ],
      correctAnswerIndex: 1,
      explanation: "The primary objective of NILERD is to support the government in achieving the national development agenda through monitoring and evaluation.",
    ),

    Question(
      questionText: "When was the Development Monitoring and Evaluation Office (DMEO) established?",
      options: ["1952", "2010", "2015", "2002"],
      correctAnswerIndex: 2,
      explanation: "The Development Monitoring and Evaluation Office (DMEO) was established in 2015.",
    ),

    Question(
      questionText: "What is the mandate of DMEO?",
      options: [
        "Monitoring progress and efficacy of strategic and long-term policy and program frameworks.",
        "Actively monitoring and evaluating the implementation of programs and initiatives.",
        "Providing technical advisory to states.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The mandate of DMEO includes monitoring progress and efficacy of policies, actively evaluating program implementation, and providing technical advisory to states.",
    ),
    Question(
      questionText: "When was the erstwhile Planning Commission established?",
      options: ["March 1950", "1946", "1962", "2010"],
      correctAnswerIndex: 0,
      explanation: "The erstwhile Planning Commission was established in March 1950.",
    ),

    Question(
      questionText: "What was the primary function of the erstwhile Planning Commission?",
      options: [
        "To execute and implement development plans.",
        "To make an assessment of material, capital, and human resources of the country.",
        "To act as a legislative body.",
        "To formulate laws and regulations for economic development."
      ],
      correctAnswerIndex: 1,
      explanation: "The primary function of the erstwhile Planning Commission was to make an assessment of material, capital, and human resources of the country.",
    ),

    Question(
      questionText: "Who was the deputy chairman of the erstwhile Planning Commission?",
      options: [
        "The Chief Minister of India",
        "The President of India",
        "The Prime Minister of India",
        "The Chief Justice of India"
      ],
      correctAnswerIndex: 2,
      explanation: "The erstwhile Planning Commission had a deputy chairman, who was the de facto executive head of the commission.",
    ),

    Question(
      questionText: "How was the composition of the erstwhile Planning Commission structured?",
      options: [
        "It included representation from all state governments.",
        "It was solely constituted by the central government.",
        "It had equal representation from the central and state governments.",
        "It was a self-governing body without government representation."
      ],
      correctAnswerIndex: 1,
      explanation: "The erstwhile Planning Commission was wholly a Centre-constituted body, with no representation from state governments.",
    ),

    Question(
      questionText: "When was the National Development Council (NDC) established?",
      options: ["August 1952", "January 2016", "December 2012", "March 1950"],
      correctAnswerIndex: 0,
      explanation: "The National Development Council (NDC) was established in August 1952.",
    ),

    Question(
      questionText: "Who is the chairman/head of the NDC?",
      options: [
        "The Chief Minister of India",
        "The President of India",
        "The Prime Minister of India",
        "The Chief Justice of India"
      ],
      correctAnswerIndex: 2,
      explanation: "The Prime Minister of India serves as the chairman/head of the National Development Council (NDC).",
    ),

    Question(
      questionText: "What are the objectives of the NDC?",
      options: [
        "To execute the national Plan",
        "To strengthen and mobilize the efforts and resources of the nation in support of the Plan",
        "To make an assessment of material, capital, and human resources",
        "To determine priorities and stages of plan execution"
      ],
      correctAnswerIndex: 1,
      explanation: "The objectives of the NDC include strengthening and mobilizing the efforts and resources of the nation in support of the Plan.",
    ),

    Question(
      questionText: "Which body was reported to be potentially abolished in favor of transferring its powers to the Governing Council of the NITI Aayog?",
      options: ["National Institute of Labour Economics Research and Development", "Development Monitoring and Evaluation Office", "National Development Council", "Planning Commission"],
      correctAnswerIndex: 2,
      explanation: "The National Development Council (NDC) was reported to be potentially abolished in favor of transferring its powers to the Governing Council of the NITI Aayog.",
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
    home: nitiAyogh(),
  ));
}

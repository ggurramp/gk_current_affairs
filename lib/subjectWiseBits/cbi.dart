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

class cbi extends StatefulWidget {
  final String? userIdentifier;

  cbi({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<cbi> createState() => _cbiState();
}

class _cbiState extends State<cbi> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//65.CENTRAL BUREAU OF INVESTIGATION

    Question(
        questionText: "When was the Central Bureau of Investigation (CBI) established?",
        options: [
          "1941",
          "1946",
          "1963",
          "2008"
        ],
        correctAnswerIndex: 2,
        explanation: "The Central Bureau of Investigation (CBI) was established in 1963 by a resolution of the Ministry of Home Affairs, Government of India."
    ),

    Question(
        questionText: "What was the initial purpose of the Special Police Establishment set up in 1941?",
        options: [
          "Investigate cases of terrorism",
          "Combat organized crime",
          "Investigate cases of bribery and corruption during World War II",
          "Enforce laws related to economic offenses"
        ],
        correctAnswerIndex: 2,
        explanation: "The Special Police Establishment, set up in 1941, was tasked with investigating cases of bribery and corruption in transactions with the War and Supply Department of India during World War II."
    ),

    Question(
        questionText: "Under which act does the CBI derive its powers?",
        options: [
          "National Investigation Agency (NIA) Act",
          "Delhi Special Police Establishment Act, 1946",
          "Central Vigilance Commission Act, 2003",
          "Corruption and Economic Offences Act"
        ],
        correctAnswerIndex: 1,
        explanation: "The Central Bureau of Investigation (CBI) derives its powers from the Delhi Special Police Establishment Act, 1946."
    ),

    Question(
        questionText: "What is the primary focus of the CBI regarding the jurisdiction in a State?",
        options: [
          "Complete authority without any conditions",
          "Consent of the State Government is not required",
          "Requires consent of the State Government",
          "Authority limited to railway areas only"
        ],
        correctAnswerIndex: 2,
        explanation: "The jurisdiction of the CBI in a State (not being a railway area) requires the consent of the Government of that State."
    ),

    Question(
        questionText: "What is the motto of the Central Bureau of Investigation (CBI)?",
        options: [
          "Justice, Equality, Integrity",
          "Duty, Honor, Country",
          "Industry, Impartiality, Integrity",
          "Truth, Duty, Valor"
        ],
        correctAnswerIndex: 2,
        explanation: "The motto of the Central Bureau of Investigation (CBI) is 'Industry, Impartiality, Integrity.'"
    ),

    Question(
        questionText: "What is the vision of the CBI based on its motto and mission?",
        options: [
          "To maximize profits",
          "To uphold the Constitution of India and law of the land",
          "To expand its jurisdiction globally",
          "To promote political ideologies"
        ],
        correctAnswerIndex: 1,
        explanation: "The vision of the CBI, based on its motto and mission, is to uphold the Constitution of India and law of the land through in-depth investigation and successful prosecution of offenses; to provide leadership and direction to police forces and to act as the nodal agency for enhancing inter-state and international cooperation in law enforcement."
    ),

    Question(
        questionText: "What types of crimes does the CBI investigate?",
        options: [
          "Terrorist attacks and funding of terrorism",
          "Corruption, economic offenses, and serious organized crime",
          "Cyber and high technology crimes only",
          "Crimes related to environment and heritage protection"
        ],
        correctAnswerIndex: 2,
        explanation: "The CBI investigates crimes of corruption, economic offenses, and serious and organized crime other than terrorism."
    ),

    Question(
        questionText: "What does the CBI focus on in terms of human rights and the environment?",
        options: [
          "Ignoring human rights for the sake of investigation",
          "Upholding human rights and protecting the environment",
          "Advocating against human rights",
          "Exploiting the environment for investigation purposes"
        ],
        correctAnswerIndex: 2,
        explanation: "The CBI focuses on upholding human rights, protecting the environment, arts, antiques, and heritage of our civilization."
    ),

    Question(
        questionText: "What does the CBI aim to develop in its functioning?",
        options: [
          "Political affiliations",
          "Scientific temper, humanism, and the spirit of inquiry and reform",
          "Excessive bureaucracy",
          "Caste-based policies"
        ],
        correctAnswerIndex: 1,
        explanation: "The CBI aims to develop a scientific temper, humanism, and the spirit of inquiry and reform in its functioning."
    ),
    Question(
        questionText: "Who heads the Central Bureau of Investigation (CBI)?",
        options: [
          "Prime Minister",
          "Chief Justice of India",
          "Director",
          "Leader of Opposition in the Lok Sabha"
        ],
        correctAnswerIndex: 2,
        explanation: "The Central Bureau of Investigation (CBI) is headed by a Director."
    ),

    Question(
        questionText: "Who is responsible for the administration of the CBI?",
        options: [
          "Director of CBI",
          "Chief Justice of India",
          "Inspector-General of Police, Delhi Special Police Establishment",
          "Prime Minister"
        ],
        correctAnswerIndex: 2,
        explanation: "The Inspector-General of Police, Delhi Special Police Establishment, is responsible for the administration of the CBI."
    ),

    Question(
        questionText: "What amendment changed the composition of the committee for the appointment of the Director of CBI?",
        options: [
          "Delhi Special Police Establishment (Amendment) Act, 2014",
          "Central Vigilance Commission Act, 2003",
          "Lokpal and Lokayuktas Act (2013)",
          "Delhi Special Police Establishment (Amendment) Act, 2021"
        ],
        correctAnswerIndex: 0,
        explanation: "The Delhi Special Police Establishment (Amendment) Act, 2014, changed the composition of the committee for the appointment of the Director of CBI."
    ),

    Question(
        questionText: "How long can the central government extend the tenure of the Director of CBI?",
        options: [
          "Up to two years",
          "Up to three years",
          "Up to four years",
          "Up to five years"
        ],
        correctAnswerIndex: 3,
        explanation: "The central government can extend the tenure of the Director of CBI from two years to up to five years, with extensions possible up to one year at a time."
    ),

    Question(
        questionText: "What are the primary functions of the CBI?",
        options: [
          "Only investigating cases of corruption",
          "Investigating cases of corruption and economic offenses",
          "Maintaining crime statistics only",
          "Coordinating state police forces"
        ],
        correctAnswerIndex: 1,
        explanation: "The primary functions of the CBI include investigating cases of corruption, bribery, misconduct, infringement of fiscal and economic laws, serious crimes with national and international ramifications, and coordinating anti-corruption activities."
    ),

    Question(
        questionText: "What type of cases does the CBI normally confine its activities to in the anti-corruption field?",
        options: [
          "Cases committed by state government employees",
          "Cases committed by private individuals",
          "Cases committed by employees of Central Government and Union Territories",
          "Cases committed by foreign nationals"
        ],
        correctAnswerIndex: 2,
        explanation: "The CBI normally confines its activities in the anti-corruption field to offences committed by the employees of the Central Government and Union Territories and their public sector undertakings."
    ),

    Question(
        questionText: "What role does the CBI play as part of Interpol in India?",
        options: [
          "It is a member country of Interpol.",
          "It coordinates activities with state police forces.",
          "It acts as the 'National Central Bureau' of Interpol.",
          "It conducts investigations on behalf of Interpol."
        ],
        correctAnswerIndex: 2,
        explanation: "The CBI acts as the 'National Central Bureau' of Interpol in India, coordinating requests for investigation-related activities originating from Indian law enforcement agencies and the member countries of Interpol."
    ),
    Question(
        questionText: "What legal provision required the CBI to obtain prior approval before conducting an inquiry or investigation?",
        options: [
          "Section 6A of the Delhi Special Police Establishment Act",
          "Prevention of Corruption Act, 1988",
          "Article 14 of the Constitution",
          "Supreme Court judgment in 2014"
        ],
        correctAnswerIndex: 0,
        explanation: "The CBI was required to obtain the prior approval of the Central Government before conducting any inquiry or investigation into an offence committed by officers of the rank of joint secretary and above, as per Section 6A of the Delhi Special Police Establishment Act."
    ),

    Question(
        questionText: "What did the Supreme Court rule in 2014 regarding the legal provision for prior sanction?",
        options: [
          "It upheld the provision as constitutional.",
          "It declared the provision as necessary for corruption cases.",
          "It held the provision as invalid and violative of Article 14.",
          "It recommended stricter enforcement of the provision."
        ],
        correctAnswerIndex: 2,
        explanation: "In 2014, the Supreme Court held that Section 6A of the Delhi Special Police Establishment Act, which made prior sanction mandatory for the CBI to conduct a probe against senior bureaucrats, was violative of Article 14 and declared it as invalid."
    ),

    Question(
        questionText: "According to the Chief Justice of India, what was the significance of tracking down corrupt public servants?",
        options: [
          "It was a matter of public interest.",
          "It segregated corrupt officers into two classes.",
          "It was a necessary mandate under the Prevention of Corruption Act, 1988.",
          "It required special treatment for high-ranking officials."
        ],
        correctAnswerIndex: 2,
        explanation: "The Chief Justice of India emphasized that tracking down corrupt public servants, regardless of their status or position, was a necessary mandate under the Prevention of Corruption Act, 1988."
    ),

    Question(
      questionText: "What is the administrative role of the Delhi Special Police Establishment (DSPE) in conjunction with state police forces?",
      options: [
        "DSPE has exclusive powers and works independently of state police forces.",
        "DSPE takes precedence over state police forces in all cases.",
        "DSPE has supplementary and concurrent powers with state police forces.",
        "DSPE and state police forces have no coordination and work independently."
      ],
      correctAnswerIndex: 2,
      explanation: "The role of the Delhi Special Police Establishment (DSPE) is supplementary to that of state police forces. DSPE enjoys concurrent powers of investigation and prosecution for offences under the Delhi Special Police Establishment Act, 1946. Administrative arrangements are made to avoid duplication and overlapping of cases between DSPE and state police forces.",
    ),

    Question(
      questionText: "Under the administrative arrangements, which cases does DSPE handle?",
      options: [
        "Cases exclusively related to state government affairs.",
        "Cases without involving state police forces.",
        "Cases essentially and substantially concerned with the Central Government's affairs.",
        "Cases involving only state government employees."
      ],
      correctAnswerIndex: 2,
      explanation: "Under the administrative arrangements, DSPE handles cases essentially and substantially concerned with the Central Government's affairs or employees, even if they involve certain state government employees.",
    ),

    Question(
      questionText: "What is the primary reason for the Supreme Court declaring Section 6A of the Delhi Special Police Establishment Act as invalid?",
      options: [
        "It protected senior bureaucrats from prosecution.",
        "It violated Article 14 by exempting certain officers from inquiry.",
        "It was unnecessary for tracking down corrupt public servants.",
        "It empowered state police forces over DSPE."
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court declared Section 6A of the Delhi Special Police Establishment Act invalid because it violated Article 14 by granting protection to joint secretary and above officers, exempting them from even a preliminary inquiry by the CBI in corruption cases.",
    ),

    Question(
      questionText: "What is the key function of DSPE in relation to state police forces under the administrative arrangements?",
      options: [
        "DSPE coordinates activities with state police forces.",
        "DSPE takes over all cases from state police forces.",
        "DSPE and state police forces operate independently.",
        "DSPE has exclusive powers over state police forces."
      ],
      correctAnswerIndex: 0,
      explanation: "Under the administrative arrangements, DSPE coordinates activities with state police forces. DSPE takes up cases essentially and substantially concerned with the Central Government's affairs, even if they involve certain state government employees.",
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
    home: cbi(),
  ));
}

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

class ppart extends StatefulWidget {
  final String? userIdentifier;

  ppart({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ppart> createState() => _ppartState();
}

class _ppartState extends State<ppart> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//78.POLITICAL PARTIES

    Question(
      questionText: "In the classification of political parties based on ideologies, where are radical parties typically placed?",
      options: ["Left", "Right", "Centre", "Communal"],
      correctAnswerIndex: 0,
      explanation: "Radical parties are typically placed on the left in the classification of political parties based on ideologies.",
    ),

    Question(
      questionText: "What characterizes a one-party system in a political context?",
      options: ["Multiple ruling parties with opposition", "Two major parties", "Only one ruling party with no opposition", "A coalition of parties"],
      correctAnswerIndex: 2,
      explanation: "A one-party system in a political context is characterized by only one ruling party with no opposition.",
    ),

    Question(
      questionText: "How did Rajni Kothari describe the Indian party system during a certain period?",
      options: ["Multi-party dominance system", "One-party dominance system", "Two-party dominance system", "Competitive multi-party system"],
      correctAnswerIndex: 1,
      explanation: "Rajni Kothari described the Indian party system as a 'one-party dominance system' or the 'Congress system' during a certain period.",
    ),

    Question(
      questionText: "What has been a common phenomenon in India due to the multi-party system?",
      options: ["One-party dominance", "Coalition governments", "Two-party dominance", "Authoritarian rule"],
      correctAnswerIndex: 1,
      explanation: "Due to the multi-party system, hung Parliaments, hung assemblies, and coalition governments have become a common phenomenon in India.",
    ),

    Question(
      questionText: "What is a significant feature of the Indian party system regarding the emergence of parties?",
      options: ["Global orientation", "Nationalistic approach", "Regional parties and their growing role", "Religious orientation"],
      correctAnswerIndex: 2,
      explanation: "A significant feature of the Indian party system is the emergence of a large number of regional parties and their growing role, particularly in states.",
    ),

    Question(
      questionText: "What is the basis on which many political parties in India are formed, as opposed to Western countries?",
      options: ["Socio-economic and political program", "Religion, caste, language, culture, and race", "Democratic principles", "Global ideologies"],
      correctAnswerIndex: 1,
      explanation: "Many political parties in India are formed on the basis of religion, caste, language, culture, and race, as opposed to Western countries where parties are often formed on socio-economic and political programs.",
    ),

    Question(
      questionText: "What term is used to describe the phenomenon of politicians leaving their party and joining another or starting a new party for power and material considerations?",
      options: ["Merger", "Polarisation", "Fragmentation", "Defection"],
      correctAnswerIndex: 3,
      explanation: "The phenomenon of politicians leaving their party and joining another or starting a new party for power and material considerations is referred to as defection.",
    ),

    Question(
      questionText: "What has often been more important than the party and its ideology in some political scenarios in India?",
      options: ["Political stability", "Eminent leaders", "Party manifesto", "Public interest"],
      correctAnswerIndex: 1,
      explanation: "In some political scenarios in India, eminent leaders have often been more important than the party and its ideology.",
    ),

    Question(
      questionText: " What has replaced the commitment to principles in Indian politics?",
      options: ["Power capture", "Public interest", "Democracy", "Ideological clarity"],
      correctAnswerIndex: 0,
      explanation: "According to the text, power capture has replaced the commitment to principles in Indian politics.",
    ),

    Question(
      questionText: "What is the term used to describe the situation where a political party is organized around an eminent leader rather than the party itself?",
      options: ["Leader-centric politics", "Issue-based politics", "Principled politics", "Coalition politics"],
      correctAnswerIndex: 0,
      explanation: "The term used to describe the situation where a political party is organized around an eminent leader rather than the party itself is leader-centric politics.",
    ),

    Question(
      questionText: "What privileges are associated with the recognition granted by the Election Commission to political parties?",
      options: [
        "Exclusive use of party symbols, provision of time for political broadcasts, and access to electoral rolls.",
        "Financial benefits, reserved seats in the Lok Sabha, and state-owned media coverage.",
        "Special status in legislative assemblies, control over election procedures, and immunity from legal actions.",
        "Unlimited funding, guaranteed victory in elections, and immunity from electoral rules."
      ],
      correctAnswerIndex: 0,
      explanation: "Recognition by the Election Commission grants privileges like exclusive use of party symbols, provision of time for political broadcasts, and access to electoral rolls.",
    ),

    Question(
      questionText: "How many national parties were there at the time of the First Lok Sabha general elections in 1952?",
      options: ["7", "14", "52", "2"],
      correctAnswerIndex: 1,
      explanation: "At the time of the First Lok Sabha general elections in 1952, there were 14 national parties.",
    ),

    Question(
      questionText: "What term is used to refer to the political parties in India that are recognized by the Election Commission but do not enjoy privileges like exclusive symbols?",
      options: ["Registered-Privileged Parties", "Acknowledged Parties", "Recognized-Unprivileged Parties", "Reserved Symbol Parties"],
      correctAnswerIndex: 2,
      explanation: "The term used to refer to political parties recognized by the Election Commission but without exclusive symbol privileges is 'Recognized-Unprivileged Parties.'",
    ),

    Question(
      questionText: "What criteria determine whether a party is recognized as a state party in a particular state?",
      options: [
        "Winning a certain percentage of seats in the Lok Sabha and legislative assembly of the state.",
        "Securing a fixed number of votes in the Lok Sabha elections.",
        "Being recognized as a national party in three states.",
        "Winning a minimum number of seats and securing a percentage of valid votes in the legislative assembly or Lok Sabha of the concerned state."
      ],
      correctAnswerIndex: 3,
      explanation: "A party is recognized as a state party based on criteria such as winning seats and securing a percentage of valid votes in the legislative assembly or Lok Sabha of the concerned state.",
    ),

    Question(
      questionText: "What is the significance of the number of recognized parties changing based on their performance in general elections?",
      options: [
        "It indicates the level of political instability.",
        "It reflects the shifting dynamics of party alliances.",
        "It showcases the adaptability of parties to public opinion.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "The changing number of recognized parties based on their performance in general elections signifies political dynamics, adaptability to public opinion, and can indicate political instability.",
    ),

    Question(
      questionText: "How does the Election Commission grant recognition to political parties, and what privileges are associated with recognition?",
      options: ["Based on party size", "Through a voting process", "By their performance in polls; privileges include symbols and media time", "Random selection"],
      correctAnswerIndex: 2,
      explanation: "The Election Commission grants recognition based on party performance in polls, and privileges include allocation of party symbols and provision of time for political broadcasts on state-owned media.",
    ),

    Question(
      questionText: "What determines the right to certain privileges, such as the allocation of party symbols and access to electoral rolls, for political parties?",
      options: ["Membership size", "Financial contributions", "Recognition granted by the Election Commission", "Number of candidates fielded"],
      correctAnswerIndex: 2,
      explanation: "The right to certain privileges, including party symbols and access to electoral rolls, is determined by the recognition granted by the Election Commission.",
    ),

    Question(
      questionText: "What are the conditions for a party to be recognized as a national party?",
      options: [
        "Securing six per cent of valid votes in any state and winning four seats in the Lok Sabha.",
        "Winning two per cent of seats in the Lok Sabha and being elected from three states.",
        "Being recognized as a state party in four states.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "A party can be recognized as a national party by meeting any of the specified conditions, including securing votes, winning seats, or being recognized in multiple states.",
    ),

    Question(
      questionText: "Under what conditions is a party recognized as a state party?",
      options: [
        "Securing six per cent of valid votes in a state and winning two seats in the legislative assembly.",
        "Securing six per cent of valid votes in a state and winning one seat in the Lok Sabha.",
        "Winning three per cent of seats in the legislative assembly or three seats, whichever is more.",
        "All of the above."
      ],
      correctAnswerIndex: 3,
      explanation: "A party can be recognized as a state party by meeting any of the specified conditions, including securing votes, winning seats, or both in the legislative assembly or Lok Sabha of the concerned state.",
    ),

    Question(
      questionText: "How is the number of recognized parties subject to change, and what are national parties and state parties also known as?",
      options: [
        "Based on party ideologies; known as ideological and pragmatic parties.",
        "Subject to change based on public opinion; known as dynamic parties.",
        "Based on their performance in general elections; known as all-India parties and regional parties.",
        "Subject to change based on party alliances; known as coalition parties."
      ],
      correctAnswerIndex: 2,
      explanation: "The number of recognized parties changes based on their performance in general elections. National parties and state parties are also known as all-India parties and regional parties, respectively.",
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
    home: ppart(),
  ));
}

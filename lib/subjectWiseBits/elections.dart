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

class elections extends StatefulWidget {
  final String? userIdentifier;

  elections({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<elections> createState() => _electionsState();
}

class _electionsState extends State<elections> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

   // 80.ELECTIONS

    Question(
        questionText: "What is the constitutional provision (Article 324) related to the electoral system in India?",
        options: [
          "Establishing a separate electoral commission for each state.",
          "Ensuring free and fair elections through an independent Election Commission.",
          "Abolishing the system of communal representation and separate electorates.",
          "Granting special electoral rolls based on religion, race, caste, or sex."
        ],
        correctAnswerIndex: 1,
        explanation: "The Constitution (Article 324) provides for an independent Election Commission to ensure free and fair elections in the country."
    ),

    Question(
        questionText: "What changes did the Constitution bring regarding electoral rolls and representation?",
        options: [
          "Introduction of communal representation and separate electorates.",
          "Multiple electoral rolls for different constituencies.",
          "Abolition of communal representation and separate electorates, with only one general electoral roll for each territorial constituency.",
          "Special electoral rolls based on religion, race, caste, or sex."
        ],
        correctAnswerIndex: 2,
        explanation: "The Constitution abolished communal representation and separate electorates, introducing only one general electoral roll for each territorial constituency."
    ),

    Question(
        questionText: "Who is eligible to vote in elections according to the Constitution?",
        options: [
          "Any person aged 18 and above, irrespective of citizenship.",
          "Any person aged 21 and above, irrespective of citizenship.",
          "Any person aged 18 and above, who is not disqualified under constitutional or legislative provisions.",
          "Any person aged 21 and above, who is not disqualified under constitutional or legislative provisions."
        ],
        correctAnswerIndex: 2,
        explanation: "According to the Constitution, any person aged 18 and above is eligible to vote, provided they are not disqualified under constitutional or legislative provisions."
    ),

    Question(
      questionText: "What powers does Parliament have concerning elections?",
      options: [
        "Parliament can only make laws related to the conduct of elections.",
        "Parliament can make provisions for all matters relating to elections, including electoral rolls and constituency delimitation.",
        "Parliament has no role in making laws related to elections.",
        "Parliament can only make laws for delimitation of constituencies."
      ],
      correctAnswerIndex: 1,
      explanation: "Parliament can make provisions for all matters relating to elections, including electoral rolls, delimitation of constituencies, and other necessary matters.",
    ),

    Question(
      questionText: "What role do state legislatures play in making provisions related to elections?",
      options: [
        "They can override parliamentary laws related to elections.",
        "They can only supplement parliamentary laws and cannot override them.",
        "They have no role in making provisions related to elections.",
        "They can make provisions for all matters, even if covered by Parliament."
      ],
      correctAnswerIndex: 1,
      explanation: "State legislatures can only supplement parliamentary laws related to elections and cannot override them.",
    ),

    Question(
        questionText: "Who appoints the Chief Election Commissioner and the Election Commissioners in India?",
        options: [
          "The Prime Minister of India.",
          "The President of India.",
          "The Chief Justice of India.",
          "The Election Commission of India."
        ],
        correctAnswerIndex: 1,
        explanation: "The President of India appoints the Chief Election Commissioner and the Election Commissioners in India, according to the text."
    ),

    Question(
        questionText: "Who supervises the election work in a State/Union Territory?",
        options: [
          "Chief Electoral Officer (CEO)",
          "District Election Officer (DEO)",
          "Returning Officer (RO)",
          "Electoral Registration Officer (ERO)"
        ],
        correctAnswerIndex: 0,
        explanation: "The Chief Electoral Officer (CEO) is authorized to supervise the election work in a State/Union Territory, subject to the overall superintendence, direction, and control of the Election Commission of India."
    ),

    Question(
      questionText: "Who is responsible for the conduct of elections in a Parliamentary or assembly constituency?",
      options: [
        "Chief Electoral Officer (CEO)",
        "District Election Officer (DEO)",
        "Returning Officer (RO)",
        "Electoral Registration Officer (ERO)"
      ],
      correctAnswerIndex: 2,
      explanation: "The Returning Officer (RO) is responsible for the conduct of elections in a Parliamentary or assembly constituency, according to the text.",
    ),

    Question(
      questionText: "What is the role of Expenditure Observers appointed by the Election Commission?",
      options: [
        "Monitoring law and order situations.",
        "Overseeing the overall conduct of elections.",
        "Monitoring election expenditure of contesting candidates.",
        "Observing poll proceedings in critical polling stations."
      ],
      correctAnswerIndex: 2,
      explanation: "Expenditure Observers monitor the election expenditure of contesting candidates, as mentioned in the text.",
    ),

    Question(
      questionText: "What is the role of Micro Observers appointed by the Election Commission?",
      options: [
        "Overseeing the overall conduct of elections.",
        "Monitoring election expenditure of contesting candidates.",
        "Observe the poll proceedings in critical/vulnerable polling stations.",
        "Monitoring law and order situations."
      ],
      correctAnswerIndex: 2,
      explanation: "Micro Observers observe the poll proceedings in critical/vulnerable polling stations, according to the text.",
    ),

    Question(
        questionText: "What is the maximum period between the last session of the dissolved Lok Sabha and the recalling of the new House?",
        options: [
          "One month",
          "Three months",
          "Six months",
          "One year"
        ],
        correctAnswerIndex: 2,
        explanation: "According to the text, there can be no longer than six months between the last session of the dissolved Lok Sabha and the recalling of the new House."
    ),

    Question(
        questionText: "What comes into effect immediately after the Election Commission announces the schedule of elections?",
        options: [
          "Declaration of election results.",
          "Model Code of Conduct.",
          "Campaigning by political parties.",
          "Voting by the electorate."
        ],
        correctAnswerIndex: 1,
        explanation: "The Model Code of Conduct comes into effect immediately after the Election Commission announces the schedule of elections, according to the text."
    ),

    Question(
        questionText: "When does the formal process for elections start?",
        options: [
          "After the election campaign.",
          "After the Model Code of Conduct.",
          "After the Notification calling upon the electorate to elect Members of a House.",
          "After the Oath or Affirmation."
        ],
        correctAnswerIndex: 2,
        explanation: "The formal process for elections starts with the Notification calling upon the electorate to elect Members of a House, according to the text."
    ),

    Question(
      questionText: "What is the Model Code of Conduct intended to achieve during the election campaign?",
      options: [
        "Promote clashes and conflicts between political parties.",
        "Ensure a level playing field and peaceful election campaigns.",
        "Restrict candidates from presenting their arguments to voters.",
        "Favor the ruling party in elections."
      ],
      correctAnswerIndex: 1,
      explanation: "The Model Code of Conduct is intended to ensure a level playing field and maintain the election campaign on healthy lines, according to the text.",
    ),

    Question(
        questionText: "What is a key advantage of Electronic Voting Machines (EVMs) over the traditional ballot paper/ballot box system?",
        options: [
          "EVMs require less time for voting.",
          "EVMs eliminate the possibility of invalid and doubtful votes.",
          "EVMs reduce the cost of printing ballot papers.",
          "EVMs make the process of counting votes slower."
        ],
        correctAnswerIndex: 1,
        explanation: "According to the text, one of the advantages of EVMs over the traditional system is that they eliminate the possibility of invalid and doubtful votes."
    ),

    Question(
      questionText: "What is the purpose of applying indelible ink to the left forefinger of the voter?",
      options: [
        "To indicate the voter's political preference.",
        "To identify the voter during the election campaign.",
        "To prevent the voter from casting multiple votes.",
        "To speed up the voting process."
      ],
      correctAnswerIndex: 2,
      explanation: "According to the text, applying indelible ink to the left forefinger of the voter is to prevent the voter from casting multiple votes.",
    ),

    Question(
      questionText: "How long before the start of polling and after the close of polling are the results of opinion polls not allowed to be published?",
      options: [
        "One day before and one day after.",
        "Two days before and one day after.",
        "Two days before and two days after.",
        "One day before and two days after."
      ],
      correctAnswerIndex: 1,
      explanation: "The text mentions that the results of opinion polls cannot be published between two days before the start of polling and after the close of polling in any of the constituencies.",
    ),

    Question(
      questionText: "What is the period of the official election campaign?",
      options: [
        "One week",
        "Two weeks",
        "Three weeks",
        "Four weeks"
      ],
      correctAnswerIndex: 1,
      explanation: "The official election campaign lasts at least two weeks from the drawing up of the list of nominated candidates, and officially ends 48 hours before polling closes, according to the text.",
    ),

    Question(
      questionText: "How are elections to the Lok Sabha carried out in terms of the electoral system?",
      options: [
        "Proportional representation.",
        "First-past-the-post.",
        "Mixed-member proportional representation.",
        "Single transferable vote."
      ],
      correctAnswerIndex: 1,
      explanation: "Elections to the Lok Sabha are carried out using a first-past-the-post electoral system, according to the text.",
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
    home: elections(),
  ));
}

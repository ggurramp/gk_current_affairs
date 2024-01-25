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

class dloc extends StatefulWidget {
  final String? userIdentifier;

  dloc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<dloc> createState() => _dlocState();
}

class _dlocState extends State<dloc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//71.DELIMITATION COMMISSION OF INDIA

    Question(
      questionText: "What is the literal meaning of the word 'delimitation'?",
      options: [
        "The process of conducting elections",
        "The act of forming a representative body",
        "The act or process of fixing limits or boundaries of territorial constituencies",
        "The process of appointing government officials"
      ],
      correctAnswerIndex: 2,
      explanation: "The word 'delimitation' literally means the act or process of fixing limits or boundaries of territorial constituencies in a country or a Province having a legislative body.",
    ),

    Question(
      questionText: "What is the role of a Delimitation Commission or a Boundary Commission?",
      options: [
        "Conducting elections",
        "Determining the budget for the legislative body",
        "Fixing limits or boundaries of territorial constituencies",
        "Appointing members to the legislative body"
      ],
      correctAnswerIndex: 2,
      explanation: "The role of a Delimitation Commission or a Boundary Commission is to fix limits or boundaries of territorial constituencies.",
    ),

    Question(
      questionText: "Why is periodic delimitation considered important in Indian parliamentary democracy?",
      options: [
        "To increase the power of the legislative body",
        "To decrease the number of constituencies",
        "To reflect changing ground realities and ensure fair elections",
        "To abolish parliamentary democracy"
      ],
      correctAnswerIndex: 2,
      explanation: "Periodic delimitation is considered important to reflect changing ground realities and ensure fair elections in Indian parliamentary democracy.",
    ),

    Question(
      questionText: "What is the principle of 'one man, one vote' in the context of delimitation?",
      options: [
        "Every voter has one vote, and that's final.",
        "There should be a disparity in the value of votes of electors.",
        "It is ideal but difficult to achieve parity in the value of votes of electors.",
        "The value of votes is the same regardless of population differences."
      ],
      correctAnswerIndex: 2,
      explanation: "The principle of 'one man, one vote' envisions that there should be parity in the value of votes of electors, but achieving this is difficult due to population differences.",
    ),

    Question(
      questionText: "What constitutional provisions deal with the delimitation of parliamentary and assembly constituencies in India?",
      options: [
        "Articles 80, 81, 82, 170, and 332",
        "Articles 81, 82, 170, 330, and 332",
        "Articles 80, 81, 170, 330, and 332",
        "Articles 81, 82, 170, and 330"
      ],
      correctAnswerIndex: 1,
      explanation: "Articles 81, 82, 170, 330, and 332 of the Constitution of India deal with the delimitation of parliamentary and assembly constituencies.",
    ),
    Question(
      questionText: "Who was appointed as the Chairperson of the Fourth Delimitation Commission of 2002?",
      options: [
        "The Chief Election Commissioner",
        "Justice Kuldip Singh",
        "The State Election Commissioner",
        "The Chief Election Commissioner or an Election Commissioner"
      ],
      correctAnswerIndex: 1,
      explanation: "Justice Kuldip Singh, a retired judge of the Supreme Court, was appointed as the Chairperson of the Fourth Delimitation Commission of 2002.",
    ),

    Question(
      questionText: "How many associate members did the Fourth Delimitation Commission have for each state?",
      options: [
        "Two",
        "Five",
        "Ten",
        "Fifteen"
      ],
      correctAnswerIndex: 2,
      explanation: "The Fourth Delimitation Commission had ten associate members in respect of each state. Out of them, five were members of the Lok Sabha, and another five were members of the State Legislative Assembly.",
    ),

    Question(
      questionText: "When did the Commission submit its recommendations to the Government?",
      options: [
        "2002",
        "2007",
        "2008",
        "2009"
      ],
      correctAnswerIndex: 1,
      explanation: "The Fourth Delimitation Commission submitted its recommendations to the Government in 2007.",
    ),

    Question(
      questionText: "Which states were exempted from the recommendations of the Fourth Delimitation Commission?",
      options: [
        "Assam, Arunachal Pradesh, Manipur, Nagaland, Jharkhand",
        "Arunachal Pradesh, Manipur, Nagaland, Jharkhand, erstwhile Jammu and Kashmir",
        "Assam, Nagaland, Jharkhand, erstwhile Jammu and Kashmir",
        "Manipur, Nagaland, Jharkhand, erstwhile Jammu and Kashmir"
      ],
      correctAnswerIndex: 0,
      explanation: "The recommendations of the Fourth Delimitation Commission are not applicable to Assam, Arunachal Pradesh, Manipur, Nagaland, and Jharkhand.",
    ),

    Question(
      questionText: "When were the 2009 General Elections to the Lok Sabha held on the basis of the newly delimited constituencies?",
      options: [
        "2002",
        "2007",
        "2008",
        "2009"
      ],
      correctAnswerIndex: 3,
      explanation: "The 2009 General Elections to the Lok Sabha were held on the basis of the newly delimited constituencies.",
    ),
    Question(
      questionText: "What led to the rescinding of the 2008 notifications deferring the delimitation exercise in the four north-eastern states?",
      options: [
        "Increase in insurgency incidents",
        "Improvement in security situation",
        "Continued threat to the unity and integrity of India",
        "Worsening law and order situation"
      ],
      correctAnswerIndex: 1,
      explanation: "The Government of India rescinded the 2008 notifications deferring the delimitation exercise in the four north-eastern states due to an improvement in the security situation, reduction in insurgency incidents, and improvement in law and order.",
    ),

    Question(
      questionText: "Who was appointed as the Chairperson of the Delimitation Commission set up in March 2020?",
      options: [
        "Justice Ranjana Prakash Desai",
        "Sushil Chandra",
        "Justice Kuldip Singh",
        "The State Election Commissioner"
      ],
      correctAnswerIndex: 0,
      explanation: "Justice Ranjana Prakash Desai, a retired judge of the Supreme Court, was appointed as the Chairperson of the Delimitation Commission set up in March 2020.",
    ),

    Question(
      questionText: "What was the task assigned to the Delimitation Commission for the four north-eastern states and the UT of Jammu and Kashmir?",
      options: [
        "To conduct elections",
        "To review law and order",
        "To assess the economic situation",
        "To delimit constituencies in accordance with the Delimitation Act, 2002"
      ],
      correctAnswerIndex: 3,
      explanation: "The task assigned to the Delimitation Commission for the four north-eastern states and the UT of Jammu and Kashmir was to delimit constituencies in accordance with the Delimitation Act, 2002.",
    ),

    Question(
      questionText: "Why were the four north-eastern states removed from the Commission's purview in March 2021?",
      options: [
        "Security concerns",
        "Improvement in law and order",
        "Increased insurgency incidents",
        "Continued threat to the unity and integrity of India"
      ],
      correctAnswerIndex: 1,
      explanation: "In March 2021, the Government of India removed the four north-eastern states from the Commission's purview due to an improvement in law and order.",
    ),

    Question(
      questionText: "When did the Delimitation Commission complete its task?",
      options: [
        "March 2021",
        "May 2022",
        "February 2020",
        "March 2022"
      ],
      correctAnswerIndex: 1,
      explanation: "The Delimitation Commission completed its task in May 2022.",
    ),
    Question(
      questionText: "What significant change occurred in the delimitation exercise for Jammu and Kashmir following the J&K Reorganisation Act, 2019?",
      options: [
        "Increase in the number of reserved seats",
        "Freezing of fresh delimitation until 2026",
        "Introduction of direct elections",
        "Creation of new assembly constituencies"
      ],
      correctAnswerIndex: 1,
      explanation: "Following the J&K Reorganisation Act, 2019, the delimitation exercise was significantly changed as fresh delimitation was frozen until the figures for the first census after the year 2026 are published.",
    ),

    Question(
      questionText: "How many seats were kept reserved for Pakistan-occupied Jammu and Kashmir in the J&K Assembly before the J&K Reorganisation Act, 2019?",
      options: [
        "4",
        "12",
        "16",
        "24"
      ],
      correctAnswerIndex: 3,
      explanation: "Before the J&K Reorganisation Act, 2019, 24 seats in the J&K Assembly were kept reserved for Pakistan-occupied Jammu and Kashmir.",
    ),

    Question(
      questionText: "What provision did the J&K Reorganisation Act, 2019 make regarding the Legislative Assembly of the Union Territory of Jammu and Kashmir?",
      options: [
        "Abolishment of the Legislative Assembly",
        "Increase in the number of seats",
        "Nomination of women members",
        "Exclusion of occupied areas"
      ],
      correctAnswerIndex: 2,
      explanation: "The J&K Reorganisation Act, 2019 provided for a Legislative Assembly for the Union Territory of Jammu and Kashmir and included a provision for the nomination of two women members to the Assembly by the Lieutenant Governor.",
    ),

    Question(
      questionText: "What was the basis of the delimitation exercise for Jammu and Kashmir undertaken by the present Delimitation Commission?",
      options: [
        "1981 census",
        "1991 census",
        "2001 census",
        "2011 census"
      ],
      correctAnswerIndex: 3,
      explanation: "The present Delimitation Commission undertook the delimitation exercise for Jammu and Kashmir on the basis of the 2011 census.",
    ),

    Question(
      questionText: "What did the Constitution of the erstwhile State of J&K lack in terms of reservation of seats?",
      options: [
        "Reservation for SCs",
        "Reservation for STs",
        "No provision for reservation",
        "Nomination of women members"
      ],
      correctAnswerIndex: 1,
      explanation: "The Constitution of the erstwhile State of J&K did not provide for reservation of seats for the STs in the Legislative Assembly.",
    ),
    Question(
      questionText: "Which central body in India is responsible for protecting the rights and interests of scheduled castes?",
      options: ["Union Public Service Commission", "Staff Selection Commission", "National Commission for SCs", "National Investigation Agency"],
      correctAnswerIndex: 3,
      explanation: "The National Commission for SCs is responsible for protecting the rights and interests of scheduled castes.",
    ),

    Question(
      questionText: "Which body in India is tasked with investigating and handling cases related to corruption?",
      options: ["Zonal Councils", "Central Social Welfare Board", "Central Vigilance Commission", "Central Bureau of Investigation"],
      correctAnswerIndex: 3,
      explanation: "The Central Vigilance Commission is tasked with investigating and handling cases related to corruption.",
    ),

    Question(
      questionText: "Which ministry is associated with the National Commission for Protection of Child Rights?",
      options: ["Ministry of Women and Child Development", "Ministry of Finance", "Ministry of Personnel", "Ministry of Home Affairs"],
      correctAnswerIndex: 1,
      explanation: "The National Commission for Protection of Child Rights is associated with the Ministry of Women and Child Development.",
    ),

    Question(
      questionText: "Which central body plays a key role in the delimitation of parliamentary and assembly constituencies in India?",
      options: ["Delimitation Commission of India", "National Human Rights Commission", "Central Administrative Tribunal", "Election Commission of India"],
      correctAnswerIndex: 0,
      explanation: "The Delimitation Commission of India plays a key role in the delimitation of parliamentary and assembly constituencies in India.",
    ),

    Question(
      questionText: "Which central body is responsible for coordinating disaster response and management in India?",
      options: ["National Disaster Management Authority", "Good and Services Tax Council", "Lokpal", "NITI Aayog"],
      correctAnswerIndex: 0,
      explanation: "The National Disaster Management Authority is responsible for coordinating disaster response and management in India.",
    ),

    Question(
      questionText: "How many Assembly constituencies were reserved for the Scheduled Tribes (STs) in the delimitation order for the Union Territory of Jammu and Kashmir?",
      options: [
        "6",
        "7",
        "8",
        "9"
      ],
      correctAnswerIndex: 5,
      explanation: "The delimitation order reserved 9 Assembly constituencies for the Scheduled Tribes (STs) in the Union Territory of Jammu and Kashmir.",
    ),

    Question(
      questionText: "What was the rationale behind creating the Anantnag - Rajouri Parliamentary Constituency?",
      options: [
        "Balancing the number of constituencies",
        "Cultural integration",
        "Geographical proximity",
        "Population distribution"
      ],
      correctAnswerIndex: 3,
      explanation: "The Anantnag - Rajouri Parliamentary Constituency was created by combining Anantnag area of the Kashmir region and Rajouri & Poonch area of the Jammu region.",
    ),

    Question(
      questionText: "How many new Assembly constituencies were created for the Jammu region?",
      options: [
        "4",
        "5",
        "6",
        "7"
      ],
      correctAnswerIndex: 3,
      explanation: "The delimitation order created 6 new Assembly constituencies for the Jammu region.",
    ),

    Question(
      questionText: "What power did the Commission recommend for at least two members from the community of Kashmiri migrants in the J&K Assembly?",
      options: [
        "Equal power to elected members",
        "Nominated power at par with UT of Puducherry",
        "Special legislative privileges",
        "Nomination of a female representative"
      ],
      correctAnswerIndex: 2,
      explanation: "The Commission recommended that at least two members (one of them must be a female) from the community of Kashmiri migrants in the J&K Assembly should be given nominated power at par with the power of nominated members of the Assembly of UT of Puducherry.",
    ),

    Question(
      questionText: "What representation did the Commission recommend for the displaced persons from Pakistan-occupied Jammu and Kashmir (PoJ&K) in the J&K Assembly?",
      options: [
        "Direct election of representatives",
        "Reservation of seats",
        "Nomination of representatives",
        "Observer status"
      ],
      correctAnswerIndex: 3,
      explanation: "The Commission recommended that the Central Government may consider giving the displaced persons from PoJ&K some representation in the J&K Assembly, possibly by way of nomination of representatives.",
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
    home: dloc(),
  ));
}

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

class medievalHistory_14 extends StatefulWidget {
  final String? userIdentifier;

  medievalHistory_14({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<medievalHistory_14> createState() => _medievalHistory_14State();
}

class _medievalHistory_14State extends State<medievalHistory_14> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "Who was Razia Sultan, the first woman to sit on the throne of Delhi, the daughter of?",
        options: ["Mohammed Ghori", "Mohammed of Ghazni", "Iltutmish", "Alauddin Khilji"],
        correctAnswerIndex: 2,
        explanation: "Razia Sultan, the first woman to sit on the throne of Delhi, was the daughter of Sultan Iltutmish. She ascended to the throne after the death of her father in 1236 and ruled with determination and skill."
    ),

    Question(
        questionText: "In which region did the Chalukyas establish their empire?",
        options: ["The Far South", "Malwa", "The Deccan", "Gujarat"],
        correctAnswerIndex: 2,
        explanation: "The Chalukyas established their empire in The Deccan. This dynasty, known for its contributions to art and architecture, flourished primarily in the Deccan region of India."
    ),

    Question(
        questionText: "Who is referred to as the 'Prince of Moneyers'?",
        options: ["Ibrahim Lodhi", "Babar", "Akbar", "Mohammad-Bin-Tughlaq"],
        correctAnswerIndex: 3,
        explanation: "Mohammad-Bin-Tughlaq is called the 'Prince of Moneyers.' He earned this title due to his ambitious and innovative monetary reforms, including the introduction of token currency and attempts to move the capital."
    ),

    Question(
        questionText: "Which ruler was given the title 'Lakh Baksh'?",
        options: ["Iltutmish", "Balban", "Raziya", "Qutubuddin Aibak"],
        correctAnswerIndex: 3,
        explanation: "'Lakh Baksh' was a title given to the ruler Qutubuddin Aibak. This title, meaning 'Bestower of Lakhs,' reflects his generosity and benevolence towards his subjects."
    ),

    Question(
        questionText: "Who succeeded Aurangzeb among the following?",
        options: ["Azam", "Kam Baksh", "Akbar II", "Mauzzam"],
        correctAnswerIndex: 3,
        explanation: "Mauzzam succeeded Aurangzeb. Also known as Bahadur Shah I, he ascended the Mughal throne after the death of Aurangzeb and faced challenges in maintaining the empire's stability."
    ),

    Question(
        questionText: "Who completed the construction of the Qutub Minar?",
        options: ["Qutub-ud-din Aibak", "Iltutmish", "Firoz Shah Tughlaq", "Alauddin Khilji"],
        correctAnswerIndex: 1,
        explanation: "The Qutub Minar was completed by the famous ruler Iltutmish. He not only finished the construction started by Qutub-ud-din Aibak but also added additional storeys to this iconic minaret."
    ),

    Question(
        questionText: "To take care of the conquered lands, Mohmmad Ghori left behind his trusted General, who?",
        options: ["Nasiruddin", "Iltutmish", "Qutbuddin Aibak", "Malik Kafur"],
        correctAnswerIndex: 2,
        explanation: "To take care of the conquered lands, Mohmmad Ghori left behind his trusted General Qutbuddin Aibak. This decision played a crucial role in the establishment of the Delhi Sultanate in India."
    ),

    Question(
        questionText: "What was 'Chauth' in historical context?",
        options: ["A religious tax imposed by Aurangzeb", "Toll tax imposed by Shivaji", "Irrigation tax charged by Akbar", "Land tax levied by Shivaji on neighboring States"],
        correctAnswerIndex: 3,
        explanation: "'Chauth' was land tax levied by Shivaji on neighboring States. It was a strategic imposition to finance his military campaigns and expand the Maratha empire."
    ),

    Question(
        questionText: "In which battle was Prithviraj Chauhan defeated by Mohd Ghori?",
        options: ["Tarain in 1191 A.D.", "Tarain in 1192 A.D.", "Chandawar in 1193 A.D.", "Ranthambhor in 1195 A.D."],
        correctAnswerIndex: 1,
        explanation: "Prithviraj Chauhan was defeated by Mohd Ghori in the battle of Tarain in 1192 A.D. This battle had a significant impact on the political landscape of medieval India."
    ),

    Question(
        questionText: "After the death of Rajaram in c 1700 A.D., Mamthas continued the war against the Mughals under his brave wife, who?",
        options: ["Tarabai", "Lakshmibai", "Ramabai", "Jijabai"],
        correctAnswerIndex: 0,
        explanation: "After the death of Rajaram in c 1700 A.D., Mamthas continued the war against the Mughals under his brave wife Tarabai. She played a crucial role in the Maratha resistance against Mughal expansion."
    ),

    Question(
        questionText: "During whose reign did Tulsidas write Ramcharitmanas?",
        options: ["Krishnadeva Raya", "Akbar", "Rama Raya", "Jahangir"],
        correctAnswerIndex: 1,
        explanation: "Tulsidas wrote Ramcharitmanas during the reign of Akbar. His epic poem narrates the story of Lord Rama and became a significant work in the Bhakti movement."
    ),

    Question(
        questionText: "In which battle was Rana Pratap Singh of Mewar defeated by the Mughal army?",
        options: ["Mewar", "Chittor", "Haldighati", "Udaipur"],
        correctAnswerIndex: 2,
        explanation: "Rana Pratap Singh of Mewar was defeated by the Mughal army in the battle of Haldighati. This battle marked a significant conflict between the Rajputs and the Mughals."
    ),

    Question(
        questionText: "Who finally rebuilt the Qutub Minar as we find it at present?",
        options: ["Balban", "Ala-ud-din Khilji", "Sikandar Lodi", "Firoz Tughluq"],
        correctAnswerIndex: 3,
        explanation: "Qutub Minar, as we find it at present, was finally rebuilt by Firoz Tughluq. His reign saw various architectural and infrastructural developments in Delhi."
    ),

    Question(
        questionText: "Which Rajput ruler drew up a set of tables called Zij Muhammadshuhi to enable people to make astronomical observations?",
        options: ["Ajit Singh", "Raja Sawai Jui Singh", "Bhara Mal", "Man Singh"],
        correctAnswerIndex: 1,
        explanation: "Raja Sawai Jui Singh drew up a set of tables called Zij Muhammadshuhi to enable people to make astronomical observations. This reflects his interest in astronomy and scientific advancements."
    ),

    Question(
        questionText: "Where is the Bada Imambara located?",
        options: ["Agra", "Lucknow", "Patna", "Allahabad"],
        correctAnswerIndex: 1,
        explanation: "The Bada Imambara is located in Lucknow. It is an architectural marvel built by Nawab Asaf-ud-Daula in the 18th century."
    ),

    Question(
        questionText: "Which one of the following is correctly matched in terms of historical events and personalities?",
        options: ["Sultan Mahmud - Sack of Somnath", "Mohammad Ghori - Conquest of Sind", "Alauddin Khilji - Revolt in Bengal", "Mohammad Bin Tughlaq - Chengiz Khan's invasion"],
        correctAnswerIndex: 2,
        explanation: "The correct match is 'Alauddin Khilji - Revolt in Bengal.' Alauddin Khilji, known for his military and administrative prowess, faced a significant revolt in Bengal during his reign."
    ),

    Question(
        questionText: "Which Sikh Guru called himself the 'Sachcha Badshah'?",
        options: ["Guru Gobind Singh", "Guru Hargovind", "Guru Tegh Bahadur", "Guru Arjan Dev"],
        correctAnswerIndex: 1,
        explanation: "Guru Hargovind called himself the 'Sachcha Badshah.' His reign marked a period of militarization and the establishment of the Sikh martial tradition."
    ),

    Question(
        questionText: "Who constructed Humayun's tomb in Delhi?",
        options: ["Babar", "Akbar", "Haji Begam", "Humayun"],
        correctAnswerIndex: 2,
        explanation: "Haji Begam constructed Humayun's tomb in Delhi. This architectural masterpiece is a prime example of Mughal architecture and was built in memory of Emperor Humayun."
    ),

    Question(
        questionText: "Sriperumbudur is the birthplace of which religious figure?",
        options: ["Sri Madhvacharya", "Sri Basavanna", "Sri Shankaracharya", "Sri Ramanujacharya"],
        correctAnswerIndex: 3,
        explanation: "Sriperumbudur is the birthplace of Sri Ramanujacharya. A renowned theologian and philosopher, he played a crucial role in the development of the Vishishtadvaita school of Vedanta."
    ),

    Question(
        questionText: "In which of the Round Table Conference did Mahatma Gandhi participate?",
        options: ["First Round Table Conference, 1930", "Second Round Table Conference, 1931", "Third Round Table Conference, 1932", "All of the above"],
        correctAnswerIndex: 1,
        explanation: "Mahatma Gandhi participated only in the Second Round Table Conference, 1931. His presence and discussions during this conference were significant in the context of India's struggle for independence."
    )





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
    home: medievalHistory_14(),
  ));
}

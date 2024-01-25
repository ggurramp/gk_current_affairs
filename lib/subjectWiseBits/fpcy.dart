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

class fpcy extends StatefulWidget {
  final String? userIdentifier;

  fpcy({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<fpcy> createState() => _fpcyState();
}

class _fpcyState extends State<fpcy> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

   // 88.FOREIGN POLICY

    Question(
      questionText: "What are the principles of Indian foreign policy related to the promotion of world peace?",
      options: [
        "Aggressive military alliances.",
        "Colonialism and imperialism.",
        "Non-alignment and Panchsheel.",
        "Racial discrimination and apartheid."
      ],
      correctAnswerIndex: 2,
      explanation: "The principles related to the promotion of world peace in Indian foreign policy include non-alignment and Panchsheel.",
    ),

    Question(
        questionText: "How did India respond to the policy of apartheid (racial discrimination) in South Africa?",
        options: [
          "India supported the policy of apartheid.",
          "India maintained diplomatic relations with South Africa.",
          "India criticised the policy and snapped diplomatic relations in 1954.",
          "India remained neutral on the issue."
        ],
        correctAnswerIndex: 2,
        explanation: "India strongly criticised the policy of apartheid in South Africa and even snapped diplomatic relations in 1954 as a protest against racial discrimination."
    ),

    Question(
      questionText: "What does non-alignment in Indian foreign policy mean?",
      options: [
        "India aligns with both power blocs.",
        "India aligns only with the capitalist bloc.",
        "India aligns only with the communist bloc.",
        "India refuses to align with any power bloc."
      ],
      correctAnswerIndex: 3,
      explanation: "Non-alignment in Indian foreign policy means that India refuses to align with any power bloc and maintains an independent approach to foreign policy.",
    ),

    Question(
      questionText: "What are the five principles of Panchsheel in the context of international relations?",
      options: [
        "Military alliances, aggression, interference, inequality, co-existence.",
        "Territorial integrity, non-aggression, interference, inequality, co-existence.",
        "Territorial integrity, non-aggression, non-interference, equality, peaceful co-existence.",
        "Territorial integrity, aggression, interference, inequality, co-existence."
      ],
      correctAnswerIndex: 2,
      explanation: "The five principles of Panchsheel in international relations are territorial integrity, non-aggression, non-interference, equality, and peaceful co-existence.",
    ),

    Question(
      questionText: "Why did India choose to remain a member of the Commonwealth?",
      options: [
        "Due to constitutional obligations.",
        "To pay final allegiance to the British Crown.",
        "To maintain its republic character.",
        "For pragmatic reasons, expecting benefits in economic, political, and cultural spheres."
      ],
      correctAnswerIndex: 3,
      explanation: "India chose to remain a member of the Commonwealth for pragmatic reasons, expecting benefits in economic, political, cultural, and other spheres.",
    ),

    Question(
      questionText: "Who propounded the Gujral Doctrine, and when was it initiated?",
      options: [
        "Atal Bihari Vajpayee in 1998.",
        "Indira Gandhi in 1971.",
        "I. K. Gujral in 1996.",
        "Narendra Modi in 2014."
      ],
      correctAnswerIndex: 2,
      explanation: "The Gujral Doctrine was propounded and initiated by I. K. Gujral in 1996.",
    ),

    Question(
      questionText: "What is the central principle of the Gujral Doctrine regarding India's relations with its smaller neighbours?",
      options: [
        "Reciprocity and strict agreements.",
        "Non-interference and non-reciprocity.",
        "Military alliances with smaller neighbours.",
        "Economic dominance and control."
      ],
      correctAnswerIndex: 1,
      explanation: "The central principle of the Gujral Doctrine is non-reciprocity, emphasising India's accommodating approach towards its smaller neighbours.",
    ),

    Question(
      questionText: "According to the Gujral Doctrine, what should India do with its immediate neighbours like Bangladesh, Bhutan, Maldives, Nepal, and Sri Lanka?",
      options: [
        "Seek strict reciprocity in all interactions.",
        "Offer unilateral concessions without expecting reciprocity.",
        "Maintain a neutral stance without engaging in diplomatic relations.",
        "Promote economic dominance over them."
      ],
      correctAnswerIndex: 1,
      explanation: "According to the Gujral Doctrine, India should offer unilateral concessions to its immediate neighbours without expecting reciprocity.",
    ),

    Question(
      questionText: "What does the Gujral Doctrine emphasise regarding the use of territory by South Asian countries?",
      options: [
        "Encourage the use of territory against neighbouring countries.",
        "Ensure the use of territory in the interest of another country.",
        "Prohibit the use of territory against the interest of another country.",
        "Allow free use of territory without restrictions."
      ],
      correctAnswerIndex: 2,
      explanation: "The Gujral Doctrine emphasises that no South Asian country should allow its territory to be used against the interest of another country in the region.",
    ),

    Question(
      questionText: "What is the logic behind the Gujral Doctrine, as explained by I. K. Gujral?",
      options: [
        "To dominate all neighbouring countries.",
        "To contain Pakistan's and China's influence in the region.",
        "To form military alliances with smaller neighbours.",
        "To establish economic supremacy over South Asian countries."
      ],
      correctAnswerIndex: 1,
      explanation: "The logic behind the Gujral Doctrine, as explained by I. K. Gujral, was to be at 'total peace' with other immediate neighbours in order to contain Pakistan's and China's influence in the region.",
    ),

    Question(
      questionText: "What is the first principle of India's nuclear doctrine?",
      options: [
        "Preventing the proliferation of nuclear weapons.",
        "Building and maintaining a credible minimum deterrent.",
        "Engaging in preemptive nuclear strikes.",
        "Advocating for nuclear disarmament."
      ],
      correctAnswerIndex: 1,
      explanation: "The first principle of India's nuclear doctrine is building and maintaining a credible minimum deterrent.",
    ),

    Question(
      questionText: "According to India's nuclear doctrine, under what circumstances will nuclear weapons be used?",
      options: [
        "In any conflict involving neighboring countries.",
        "Only in retaliation against a nuclear attack on Indian territory or forces.",
        "In preemptive strikes to prevent potential threats.",
        "In response to conventional military aggression."
      ],
      correctAnswerIndex: 1,
      explanation: "According to India's nuclear doctrine, nuclear weapons will only be used in retaliation against a nuclear attack on Indian territory or forces.",
    ),

    Question(
      questionText: "What is the posture of India's nuclear doctrine regarding the use of nuclear weapons?",
      options: [
        "Preemptive strikes for strategic advantage.",
        "No First Use - weapons will only be used in retaliation.",
        "Unilateral disarmament for peace.",
        "Continuous development and testing of nuclear weapons."
      ],
      correctAnswerIndex: 1,
      explanation: "The posture of India's nuclear doctrine is 'No First Use,' meaning nuclear weapons will only be used in retaliation.",
    ),

    Question(
      questionText: "Who chairs the Political Council in India's Nuclear Command Authority?",
      options: [
        "National Security Advisor.",
        "President of India.",
        "Prime Minister.",
        "Defense Minister."
      ],
      correctAnswerIndex: 2,
      explanation: "The Political Council in India's Nuclear Command Authority is chaired by the Prime Minister.",
    ),

    Question(
      questionText: "Under what circumstances does India's nuclear doctrine retain the option of retaliating with nuclear weapons?",
      options: [
        "In case of conventional military attacks.",
        "Against any form of aggression, including biological or chemical weapons.",
        "Only in response to nuclear attacks.",
        "In the event of economic sanctions."
      ],
      correctAnswerIndex: 1,
      explanation: "India's nuclear doctrine retains the option of retaliating with nuclear weapons in the event of a major attack by biological or chemical weapons.",
    ),

    Question(
      questionText: "When was India's 'Connect Central Asia' policy launched?",
      options: ["2010", "2012", "2014", "2016"],
      correctAnswerIndex: 1,
      explanation: "India's 'Connect Central Asia' policy was launched in 2012.",
    ),

    Question(
      questionText: "Which countries are included in India's 'Connect Central Asia' policy?",
      options: ["Pakistan, Afghanistan, Iran, China, Russia", "Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan", "Sri Lanka, Maldives, Bangladesh, Nepal, Bhutan", "Saudi Arabia, UAE, Qatar, Oman, Kuwait"],
      correctAnswerIndex: 1,
      explanation: "The countries included in India's 'Connect Central Asia' policy are Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, and Uzbekistan.",
    ),

    Question(
      questionText: "What are the key elements of India's 'Connect Central Asia' policy?",
      options: [
        "Exclusively economic engagement",
        "Military dominance and security cooperation",
        "Broad-based approach including political, security, economic, and cultural connections",
        "Unilateral political dominance"
      ],
      correctAnswerIndex: 2,
      explanation: "India's 'Connect Central Asia' policy is a broad-based approach including political, security, economic, and cultural connections.",
    ),

    Question(
      questionText: "What aspect of cooperation does India see potential in the medical field under the 'Connect Central Asia' policy?",
      options: ["Infrastructure development", "Military training", "Tele-education and tele-medicine", "Cultural exchanges"],
      correctAnswerIndex: 2,
      explanation: "India sees potential in the medical field for cooperation under the 'Connect Central Asia' policy, including tele-education and tele-medicine.",
    ),

    Question(
      questionText: "How does India aim to improve air connectivity with Central Asian nations under the 'Connect Central Asia' policy?",
      options: ["Constructing new airports", "Developing high-speed rail connections", "Establishing new airline companies", "Jointly working to improve air connectivity"],
      correctAnswerIndex: 3,
      explanation: "India and Central Asian nations will jointly work to improve air connectivity under the 'Connect Central Asia' policy.",
    ),

    Question(
      questionText: "When was India's 'Look East Policy' upgraded to 'Act East Policy'?",
      options: ["1992", "2000", "2014", "2018"],
      correctAnswerIndex: 2,
      explanation: "India's 'Look East Policy' was upgraded to 'Act East Policy' in 2014.",
    ),

    Question(
        questionText: "What is the geographical focus of India's 'Act East Policy'?",
        options: ["Middle East", "Central Asia", "Asia-Pacific region", "Europe"],
        correctAnswerIndex: 2,
        explanation: "India's 'Act East Policy' focuses on the extended neighbourhood in the Asia-Pacific region."
    ),

    Question(
      questionText: "What dimensions has India's 'Act East Policy' gained, according to the provided information?",
      options: ["Economic and cultural only", "Political, strategic, and cultural", "Military and economic", "Social and environmental"],
      correctAnswerIndex: 1,
      explanation: "India's 'Act East Policy' has gained political, strategic, and cultural dimensions, including the establishment of institutional mechanisms for dialogue and cooperation.",
    ),

    Question(
      questionText: "Which region is given priority in India's 'Act East Policy'?",
      options: ["South India", "North East India", "Western Ghats", "Himalayan region"],
      correctAnswerIndex: 1,
      explanation: "The North East of India, including the state of Arunachal Pradesh, has been a priority in India's 'Act East Policy'.",
    ),

    Question(
      questionText: "What is being energised on the Civilizational front under India's 'Act East Policy'?",
      options: ["Scientific research", "Buddhist and Hindu links", "Trade agreements", "Military alliances"],
      correctAnswerIndex: 1,
      explanation: "On the Civilizational front, Buddhist and Hindu links are being energised under India's 'Act East Policy' to develop new contacts and connectivity between people.",
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
    home: fpcy(),
  ));
}

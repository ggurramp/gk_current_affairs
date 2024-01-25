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

class universe_solar_system extends StatefulWidget {
  final String? userIdentifier;

  universe_solar_system({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<universe_solar_system> createState() => _universe_solar_systemState();
}

class _universe_solar_systemState extends State<universe_solar_system> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(150, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
        questionText: "What are the units of measuring distances in the Universe?",
        options: [
          "Kilometers and Miles",
          "Light year and Parsec",
          "Astronomical Unit and Light Minute",
          "Megaparsec and Light Second"
        ],
        correctAnswerIndex: 1,
        explanation: "Light year and Parsec are the units of measuring distances in the Universe."
    ),

    Question(
        questionText: "Which is the nearest star to the Earth?",
        options: [
          "Sirius",
          "Betelgeuse",
          "Proxima Centauri",
          "Alpha Centauri"
        ],
        correctAnswerIndex: 2,
        explanation: "The nearest star to the Earth is Proxima Centauri."
    ),

    Question(
        questionText: "What is the Indian name for the Milky Way galaxy?",
        options: [
          "Akash Ganga",
          "Jyoti Tal",
          "Prithvi Mandal",
          "Anant Vaarta"
        ],
        correctAnswerIndex: 0,
        explanation: "The Indian name for the Milky Way galaxy is 'Akash Ganga'."
    ),

    Question(
        questionText: "What are constellations called in Indian astronomy?",
        options: [
          "Galaxies",
          "Clusters",
          "Nakshatras",
          "Celestial Bodies"
        ],
        correctAnswerIndex: 2,
        explanation: "Constellations are called 'Nakshatras' in Indian astronomy."
    ),

    Question(
        questionText: "What is the name of the star immediately above the Earth's North Pole?",
        options: [
          "Polaris",
          "Betelgeuse",
          "Vega",
          "Sirius"
        ],
        correctAnswerIndex: 0,
        explanation: "The star immediately above the Earth's North Pole is called Polaris, also known as the Pole Star."
    ),

    Question(
        questionText: "What is the Goldilocks Zone in space?",
        options: [
          "Area where planets are covered in gold",
          "Zone with perfect temperature for life",
          "Region with abundant mineral resources",
          "Space with optimal gravity"
        ],
        correctAnswerIndex: 1,
        explanation: "Goldilocks Zone is an area of space in which a planet is just the right distance from its home star so that its surface is neither too hot nor too cold, making conditions suitable for life."
    ),

    Question(
        questionText: "How many planets are there in our Solar System?",
        options: [
          "Seven",
          "Eight",
          "Nine",
          "Ten"
        ],
        correctAnswerIndex: 1,
        explanation: "There are eight major planets in our Solar System."
    ),

    Question(
        questionText: "Which planet is considered the 'Blue Planet'?",
        options: [
          "Mars",
          "Venus",
          "Earth",
          "Uranus"
        ],
        correctAnswerIndex: 2,
        explanation: "Earth is often referred to as the 'Blue Planet'."
    ),

    Question(
        questionText: "What is the main composition of the Sun?",
        options: [
          "Helium",
          "Hydrogen",
          "Oxygen",
          "Carbon"
        ],
        correctAnswerIndex: 1,
        explanation: "The Sun is mainly composed of Hydrogen."
    ),

    Question(
        questionText: "Which planet is the fastest rotating in our Solar System?",
        options: [
          "Mars",
          "Venus",
          "Jupiter",
          "Mercury"
        ],
        correctAnswerIndex: 2,
        explanation: "Jupiter is the fastest rotating planet in our Solar System."
    ),
    Question(
        questionText: "What is the Big Bang Theory?",
        options: [
          "A theory about the formation of black holes",
          "A theory about the birth of the universe",
          "A theory about the origin of life on Earth",
          "A theory about the expansion of galaxies"
        ],
        correctAnswerIndex: 1,
        explanation: "The Big Bang Theory is a theory about the birth of the universe, suggesting that everything in the universe emerged from a point known as singularity about 15 billion years ago."
    ),

    Question(
        questionText: "What is the Goldilocks Zone also known as?",
        options: [
          "Life Zone",
          "Comfort Zone",
          "Habitable Zone",
          "Optimal Zone"
        ],
        correctAnswerIndex: 2,
        explanation: "The Goldilocks Zone is also known as the 'Habitable Zone' or 'Life Zone', as it is the area where a planet is at the right distance from its star for life to exist."
    ),

    Question(
        questionText: "Which planet is considered the 'Green Planet'?",
        options: [
          "Earth",
          "Uranus",
          "Venus",
          "Neptune"
        ],
        correctAnswerIndex: 1,
        explanation: "Uranus is considered the 'Green Planet' due to its color resulting from the presence of methane in its atmosphere."
    ),

    Question(
        questionText: "What is the name of the largest satellite of Jupiter?",
        options: [
          "Io",
          "Europa",
          "Ganymede",
          "Callisto"
        ],
        correctAnswerIndex: 2,
        explanation: "Ganymede is the largest satellite of Jupiter."
    ),

    Question(
        questionText: "What is the name of the smallest satellite of Mars?",
        options: [
          "Deimos",
          "Phobos",
          "Europa",
          "Titan"
        ],
        correctAnswerIndex: 0,
        explanation: "Deimos is the smallest satellite of Mars."
    ),

    Question(
        questionText: "What is the densest planet in our Solar System?",
        options: [
          "Earth",
          "Jupiter",
          "Mercury",
          "Saturn"
        ],
        correctAnswerIndex: 0,
        explanation: "Earth is the densest planet in our Solar System."
    ),

    Question(
        questionText: "What is the core temperature of the Sun?",
        options: [
          "1 million degrees Celsius",
          "5 million degrees Celsius",
          "10 million degrees Celsius",
          "15 million degrees Celsius"
        ],
        correctAnswerIndex: 3,
        explanation: "The core temperature of the Sun is about 15 million degrees Celsius."
    ),

    Question(
        questionText: "What is the name of the dark patches on the Sun's surface?",
        options: [
          "Solar Flares",
          "Prominences",
          "Sunspots",
          "Corona"
        ],
        correctAnswerIndex: 2,
        explanation: "The dark patches on the Sun's surface are called 'Sunspots'."
    ),

    Question(
        questionText: "What is the name of the theory that explains the origin of the universe?",
        options: [
          "Black Hole Theory",
          "Big Crunch Theory",
          "Steady State Theory",
          "Big Bang Theory"
        ],
        correctAnswerIndex: 3,
        explanation: "The theory that explains the origin of the universe is the 'Big Bang Theory'."
    ),

    Question(
        questionText: "What are asteroids?",
        options: [
          "Large moons of gas giants",
          "Small planets of rock and metal",
          "Collections of gas and dust",
          "Bright balls of light in the sky"
        ],
        correctAnswerIndex: 1,
        explanation: "Asteroids are small planets of rock and metal which revolve around the Sun mainly between the orbits of Mars and Jupiter."
    ),
    Question(
        questionText: "What are comets composed of?",
        options: [
          "Rock and metal",
          "Gas and dust",
          "Liquid water",
          "Molten lava"
        ],
        correctAnswerIndex: 1,
        explanation: "Comets are composed of gas and dust, appearing as bright balls of light in the sky with a long glowing tail."
    ),

    Question(
        questionText: "What is the name of a meteor that lands on Earth?",
        options: [
          "Meteoroid",
          "Meteorite",
          "Meteor",
          "Shooting Star"
        ],
        correctAnswerIndex: 1,
        explanation: "A meteor that lands on Earth is called a 'Meteorite'."
    ),

    Question(
        questionText: "What is the term for the rise and fall of sea levels caused by gravitational forces?",
        options: [
          "Tides",
          "Waves",
          "Currents",
          "Surges"
        ],
        correctAnswerIndex: 0,
        explanation: "The rise and fall of sea levels caused by gravitational forces are called 'Tides'."
    ),

    Question(
        questionText: "What is the name of the area where a planet is at the right distance from its star for liquid water to exist?",
        options: [
          "Comfort Zone",
          "Green Zone",
          "Goldilocks Zone",
          "Optimal Zone"
        ],
        correctAnswerIndex: 2,
        explanation: "The area where a planet is at the right distance from its star for liquid water to exist is called the 'Goldilocks Zone' or 'Habitable Zone'."
    ),

    Question(
        questionText: "What is the scientific term for a temporary obscuration of one celestial body by another?",
        options: [
          "Occultation",
          "Eclipse",
          "Transit",
          "Conjunction"
        ],
        correctAnswerIndex: 1,
        explanation: "The scientific term for a temporary obscuration of one celestial body by another is 'Eclipse'."
    ),

    Question(
        questionText: "What causes the different types of tides?",
        options: [
          "Earth's rotation",
          "Gravitational forces of the Moon and Sun",
          "Underwater earthquakes",
          "Magnetic field variations"
        ],
        correctAnswerIndex: 1,
        explanation: "The different types of tides are caused by the gravitational forces of the Moon and Sun."
    ),

    Question(
        questionText: "Which planet is known as the 'Red Planet'?",
        options: [
          "Earth",
          "Venus",
          "Mars",
          "Jupiter"
        ],
        correctAnswerIndex: 2,
        explanation: "Mars is known as the 'Red Planet'."
    ),

    Question(
        questionText: "What is the name of the nearest star to the Sun?",
        options: [
          "Alpha Centauri",
          "Proxima Centauri",
          "Betelgeuse",
          "Sirius"
        ],
        correctAnswerIndex: 1,
        explanation: "The nearest star to the Sun is 'Proxima Centauri'."
    ),

    Question(
        questionText: "Which theory explains the origin of the universe?",
        options: [
          "Steady State Theory",
          "Big Bang Theory",
          "String Theory",
          "Multiverse Theory"
        ],
        correctAnswerIndex: 1,
        explanation: "The theory that explains the origin of the universe is the 'Big Bang Theory'."
    ),

    Question(
        questionText: "What is the densest planet in our Solar System?",
        options: [
          "Earth",
          "Jupiter",
          "Mercury",
          "Saturn"
        ],
        correctAnswerIndex: 0,
        explanation: "Earth is the densest planet in our Solar System."
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
    home: universe_solar_system(),
  ));
}

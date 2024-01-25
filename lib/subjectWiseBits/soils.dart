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

class soils extends StatefulWidget {
  final String? userIdentifier;

  soils({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<soils> createState() => _soilsState();
}

class _soilsState extends State<soils> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
        questionText: "What is soil, and what does it constitute?",
        options: [
          "A mixture of solid, liquid, and gaseous substances forming the top layer of the Earth's crust.",
          "A combination of rocks and minerals in mountainous regions.",
          "A result of volcanic activities in coastal areas.",
          "A product of industrial pollution and human activities."
        ],
        correctAnswerIndex: 0,
        explanation: "Soil is a mixture of many solid, liquid, and gaseous substances, forming the topmost layer of the Earth's crust."
    ),

    Question(
        questionText: "What factors contribute to the vast variety of soil cover in India?",
        options: [
          "Differences in population density.",
          "Variations in terrain and climatic conditions.",
          "Political boundaries and disputes.",
          "Influence of foreign soil types imported to India."
        ],
        correctAnswerIndex: 1,
        explanation: "India exhibits a vast variety in soil cover due to differences in terrain and climatic conditions."
    ),

    Question(
        questionText: "Which regions in India have rich alluvial soils supporting flourishing agriculture?",
        options: [
          "Telangana and Rajasthan",
          "West Bengal deltaic tract and Kerala coastal plain",
          "Maharashtra and Madhya Pradesh",
          "Haryana and Bihar"
        ],
        correctAnswerIndex: 1,
        explanation: "The densely-populated deltaic tract of West Bengal and the coastal plain of Kerala have rich alluvial soils, supporting flourishing agriculture."
    ),

    Question(
        questionText: "What is the process of soil formation known as?",
        options: [
          "Petrogenesis",
          "Erosion",
          "Pedogenesis",
          "Hydrolysis"
        ],
        correctAnswerIndex: 2,
        explanation: "The process of soil formation is known as Pedogenesis."
    ),

    Question(
        questionText: "What are the factors influencing the process of soil formation?",
        options: [
          "Population density and industrial activities.",
          "Parent material, relief, climate, and natural vegetation.",
          "Political boundaries and foreign interventions.",
          "Changes in atmospheric pressure and ocean currents."
        ],
        correctAnswerIndex: 1,
        explanation: "The process of soil formation depends upon factors like Parent material, Relief, Climate, and Natural Vegetation."
    ),

    Question(
        questionText: "How is Alluvial Soil distributed in India?",
        options: [
          "Mainly in the mountainous regions.",
          "Concentrated in the Deccan lava tract.",
          "Confined to river basins and coastal plains.",
          "Found in the arid and desert regions."
        ],
        correctAnswerIndex: 2,
        explanation: "Alluvial soils are generally confined to the river basins and coastal plains in India."
    ),

    Question(
        questionText: "What crops are majorly grown on Black Soils in India?",
        options: [
          "Tea and coffee",
          "Wheat and rice",
          "Cotton, wheat, and millets",
          "Barley and pulses"
        ],
        correctAnswerIndex: 2,
        explanation: "Major crops grown on black soils in India include cotton, wheat, jowar, linseed, virginia tobacco, castor, sunflower, and millets."
    ),

    Question(
        questionText: "Which regions in India have Red Soils?",
        options: [
          "Western Himalayas",
          "Western Ghats",
          "Eastern coastal areas",
          "Central and Southern India"
        ],
        correctAnswerIndex: 3,
        explanation: "Red soils are spread on almost the whole of Tamil Nadu, parts of Karnataka, south-east of Maharashtra, eastern parts of Andhra Pradesh, Madhya Pradesh, Odisha, and Chhotanagpur."
    ),

    Question(
        questionText: "How are Laterite Soils formed?",
        options: [
          "Through volcanic eruptions.",
          "Due to alternations of wet and dry seasons leaching away siliceous matter.",
          "Deposition of organic matter in marshy areas.",
          "Result of intense human activities."
        ],
        correctAnswerIndex: 1,
        explanation: "Laterite soils are formed due to the alternations of wet and dry seasons which lead to the leaching away of the siliceous matter of the rocks."
    ),

    Question(
        questionText: "Where are Mountain or Forest soils found in India?",
        options: [
          "Coastal plains",
          "Western Ghats",
          "Desert regions",
          "Himalayan slopes"
        ],
        correctAnswerIndex: 3,
        explanation: "Mountain or Forest soils are found in the coniferous forest belt of Jammu and Kashmir, Himachal Pradesh, Uttarakhand, and Sikkim."
    ),

    Question(
        questionText: "What characterizes Desert or Arid Soils in India?",
        options: [
          "High fertility and rich organic content.",
          "Alkaline nature and sandy texture.",
          "Abundance of moisture and clayey texture.",
          "Supports dense vegetation and forest cover."
        ],
        correctAnswerIndex: 1,
        explanation: "Desert or Arid Soils are infertile soils that are alkaline in nature with sandy texture."
    ),

    Question(
        questionText: "Where are Saline and Alkaline Soils found in India?",
        options: [
          "Western Ghats",
          "Ganga and Brahmaputra river valleys",
          "Western Gujarat and Eastern Coast deltas",
          "Himalayan slopes"
        ],
        correctAnswerIndex: 2,
        explanation: "The development of Saline and Alkaline Soils has happened in areas where dry climate is found, and there is a lack of proper drainage, such as Western Gujarat and Eastern Coast deltas."
    ),

    Question(
        questionText: "What characterizes Peaty or Organic Soils in India?",
        options: [
          "Dark, heavy, and acidic.",
          "Sandy and porous.",
          "Rich in lime and magnesia.",
          "Found in arid and desert regions."
        ],
        correctAnswerIndex: 0,
        explanation: "Peaty or Organic Soils are dark, heavy, and too much acidic, formed by the deposition of too much organic matter in marshy areas."
    ),

    Question(
        questionText: "What is the areawise classification of Indian soils according to USDA soil taxonomy?",
        options: [
          "Inceptisols, Entisols, and Alfisols",
          "Aridisols, Ultisols, and Mollisols",
          "Vertisols, Entisols, and Others",
          "Peaty and Marshy Soils, Saline and Alkaline Soils, and Arid and Desert Soils"
        ],
        correctAnswerIndex: 0,
        explanation: "The areawise classification of Indian soils, as per the USDA soil taxonomy, is dominated by Inceptisols followed by Entisols and Alfisols."
    ),
    Question(
        questionText: "Where is Alluvial Soil primarily located in India?",
        options: [
          "Mountainous regions",
          "Deccan lava tract",
          "River basins and coastal plains",
          "Arid and desert regions"
        ],
        correctAnswerIndex: 2,
        explanation: "Alluvial soils are generally confined to the river basins and coastal plains in India."
    ),

    Question(
        questionText: "What are the characteristics of Black Soils?",
        options: [
          "Sandy and porous",
          "Clayey, deep, and impermeable",
          "Rich in nitrogen and humus",
          "Found in Western Himalayas"
        ],
        correctAnswerIndex: 1,
        explanation: "Black soils are generally clayey, deep, and impermeable, and they lack in phosphorus, nitrogen, and organic matter."
    ),

    Question(
        questionText: "In which regions of India are Red Soils predominantly found?",
        options: [
          "Western Ghats",
          "Eastern coastal areas",
          "Himalayan slopes",
          "Central and Southern India"
        ],
        correctAnswerIndex: 3,
        explanation: "Red soils are spread on almost the whole of Tamil Nadu, parts of Karnataka, south-east of Maharashtra, eastern parts of Andhra Pradesh, Madhya Pradesh, Odisha, and Chhotanagpur."
    ),

    Question(
        questionText: "What crops are grown on Laterite Soils in India?",
        options: [
          "Coffee, rubber, and cashewnut",
          "Wheat, rice, and sugarcane",
          "Cotton, millets, and tobacco",
          "Tea, coffee, and spices"
        ],
        correctAnswerIndex: 0,
        explanation: "Laterite soils are commonly found in Karnataka, Kerala, Tamil Nadu, Maharashtra, and Madhya Pradesh, and they are suitable for crops like coffee, rubber, and cashewnut."
    ),

    Question(
        questionText: "Which region in India has Mountain or Forest Soils?",
        options: [
          "Western Ghats",
          "Deccan plateau",
          "Eastern coastal areas",
          "Himalayan slopes"
        ],
        correctAnswerIndex: 0,
        explanation: "Mountain or Forest soils are found in the coniferous forest belt of Jammu and Kashmir, Himachal Pradesh, Uttarakhand, and Sikkim, particularly in the Western Ghats."
    ),

    Question(
        questionText: "What characterizes Desert or Arid Soils in India?",
        options: [
          "High fertility and rich organic content.",
          "Alkaline nature and sandy texture.",
          "Abundance of moisture and clayey texture.",
          "Supports dense vegetation and forest cover."
        ],
        correctAnswerIndex: 1,
        explanation: "Desert or Arid Soils are infertile soils that are alkaline in nature with sandy texture."
    ),

    Question(
        questionText: "Which areas in India have Saline and Alkaline Soils?",
        options: [
          "Western Ghats",
          "Ganga and Brahmaputra river valleys",
          "Western Gujarat and Eastern Coast deltas",
          "Himalayan slopes"
        ],
        correctAnswerIndex: 2,
        explanation: "The development of Saline and Alkaline Soils has happened in areas where dry climate is found, and there is a lack of proper drainage, such as Western Gujarat and Eastern Coast deltas."
    ),

    Question(
        questionText: "Where are Peaty or Organic Soils mainly found in India?",
        options: [
          "Western Ghats",
          "Assam hills",
          "Sunderbans delta",
          "Alleppey district of Kerala"
        ],
        correctAnswerIndex: 3,
        explanation: "Peaty or Organic Soils are mainly found in Alleppey district of Kerala, Almora in Uttarakhand, the Sunderbans delta, and other lower deltaic regions."
    ),
    Question(
        questionText: "Which soil type in India is known as 'Regur' soils?",
        options: [
          "Alluvial soils",
          "Black soils",
          "Red soils",
          "Laterite soils"
        ],
        correctAnswerIndex: 1,
        explanation: "The black soils in India are also known as 'Regur' soils, famous for the cultivation of cotton."
    ),

    Question(
        questionText: "What is the pH range of Red Soils in India?",
        options: [
          "3.0 to 4.5",
          "4.6 to 6.0",
          "6.6 to 8.0",
          "8.1 to 9.0"
        ],
        correctAnswerIndex: 2,
        explanation: "Red soils in India generally have a pH range from 6.6 to 8.0."
    ),

    Question(
        questionText: "Which region in India has the main development of laterite soil?",
        options: [
          "Western Ghats",
          "Eastern Ghat region of Orissa",
          "Himalayan slopes",
          "Deccan plateau"
        ],
        correctAnswerIndex: 1,
        explanation: "The main development of laterite soil has taken place in the higher areas of the Eastern Ghat region of Orissa."
    ),

    Question(
        questionText: "What characterizes Saline and Alkaline Soils in India?",
        options: [
          "Rich in organic matter",
          "Deficient in nitrogen",
          "High in lime content",
          "Rich in sodium, calcium, and magnesium"
        ],
        correctAnswerIndex: 3,
        explanation: "Saline and Alkaline Soils in India are rich in sodium, calcium, and magnesium, and deficient in nitrogen and lime."
    ),

    Question(
        questionText: "Which crops are suitable for cultivation in Peaty or Organic Soils?",
        options: [
          "Tea, coffee, and spices",
          "Wheat and rice",
          "Cotton and millets",
          "Fruits and vegetables"
        ],
        correctAnswerIndex: 0,
        explanation: "Peaty or Organic Soils are suitable for plantations, including tea, coffee, spices, and fruits, due to their dark, heavy, and acidic nature."
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
    home: soils(),
  ));
}

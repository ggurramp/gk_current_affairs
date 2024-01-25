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

class agriculture extends StatefulWidget {
  final String? userIdentifier;

  agriculture({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<agriculture> createState() => _agricultureState();
}

class _agricultureState extends State<agriculture> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
        questionText: "What are the major categories of Indian crops?",
        options: [
          "Agricultural, Horticultural, Medicinal",
          "Food Crops, Cash Crops, Plantation Crops, Horticulture",
          "Cereals, Pulses, Oilseeds",
          "Rabi, Kharif, Zaid"
        ],
        correctAnswerIndex: 1,
        explanation: "Indian crops can be divided into categories such as Food Crops, Cash Crops, Plantation Crops, and Horticulture."
    ),

    Question(
        questionText: "Name some examples of Food Crops in India.",
        options: [
          "Tea, Coffee, Spices",
          "Cotton, Jute, Sugarcane",
          "Rice, Wheat, Maize, Millets",
          "Rubber, Coconut, Arecanut"
        ],
        correctAnswerIndex: 2,
        explanation: "Examples of Food Crops in India include Rice, Wheat, Maize, Millets like Jowar, Bajra, Ragi, and Pulses like Gram, Tur (Arhar)."
    ),

    Question(
        questionText: "Which crops fall under the category of Cash Crops?",
        options: [
          "Rice, Wheat, Maize",
          "Cotton, Jute, Sugarcane",
          "Tea, Coffee, Spices",
          "Fruits, Vegetables, Nuts"
        ],
        correctAnswerIndex: 1,
        explanation: "Cash Crops in India include Cotton, Jute, Sugarcane, Tobacco, and various Oilseeds like Groundnut, Linseed, Sesame, etc."
    ),

    Question(
        questionText: "What characterizes the Kharif cropping season in India?",
        options: [
          "Sowing in winter, harvesting in summer",
          "Sowing with the southwest monsoon, harvesting in autumn",
          "Sowing in autumn, harvesting in winter",
          "Zaid crops between March and June"
        ],
        correctAnswerIndex: 1,
        explanation: "Kharif crops in India are sown with the commencement of the southwest monsoon and are harvested by the end of monsoon or autumn (September/October)."
    ),

    Question(
        questionText: "Which crops are considered major Rabi crops?",
        options: [
          "Rice, Jowar, Cotton",
          "Wheat, Gram, Mustard",
          "Tea, Coffee, Rubber",
          "Sugarcane, Tobacco, Oilseeds"
        ],
        correctAnswerIndex: 1,
        explanation: "Major Rabi crops in India include Wheat, Gram, and oilseeds like Mustard and Rapeseed, grown in winter and harvested in April-May."
    ),

    Question(
        questionText: "What characterizes Zaid crops in India?",
        options: [
          "Grown in winter, harvested in summer",
          "Grown in summer, harvested in winter",
          "Grown between March and June",
          "Grown throughout the year"
        ],
        correctAnswerIndex: 2,
        explanation: "Zaid crops in India are grown mainly in irrigated areas between March and June, featuring early-maturing crops like urad, moong, melons, watermelons, etc."
    ),

    Question(
        questionText: "Which states are among the largest producers of Rice in India?",
        options: [
          "Maharashtra, Gujarat, Tamil Nadu",
          "West Bengal, Assam, Bihar",
          "Uttar Pradesh, Punjab, Haryana",
          "Kerala, Andhra Pradesh, Tamil Nadu"
        ],
        correctAnswerIndex: 1,
        explanation: "West Bengal, Assam, Bihar, Odisha, Tamil Nadu, Andhra Pradesh, U.P., Maharashtra, Karnataka, Chhattisgarh, and Punjab are among the largest producers of Rice in India."
    ),

    Question(
        questionText: "Where is the main production of Wheat concentrated in India?",
        options: [
          "Tamil Nadu, Karnataka, Andhra Pradesh",
          "Uttar Pradesh, Punjab, Haryana",
          "Bihar, Odisha, U.P.",
          "Maharashtra, Gujarat, Madhya Pradesh"
        ],
        correctAnswerIndex: 1,
        explanation: "The main production of Wheat in India is concentrated in states like Uttar Pradesh, Punjab, Haryana, Bihar, Madhya Pradesh, Rajasthan, Maharashtra, and Gujarat."
    ),

    Question(
        questionText: "Which crop is primarily grown in the black soil regions of Gujarat, M.P., Karnataka, and Maharashtra?",
        options: [
          "Tea",
          "Coffee",
          "Cotton",
          "Jute"
        ],
        correctAnswerIndex: 2,
        explanation: "Cotton is primarily grown in the black soil regions of Gujarat, M.P., Karnataka, Maharashtra, Punjab, Haryana, and parts of Rajasthan."
    ),

    Question(
        questionText: "In which states is Jowar mainly cultivated in India?",
        options: [
          "Uttar Pradesh, Punjab, Haryana",
          "Tamil Nadu, Karnataka, Madhya Pradesh",
          "Rajasthan, Uttar Pradesh, Haryana",
          "Maharashtra, Karnataka, Andhra Pradesh"
        ],
        correctAnswerIndex: 3,
        explanation: "Jowar is mainly cultivated in states like Maharashtra, Karnataka, Madhya Pradesh, Gujarat, Rajasthan, U.P., Andhra Pradesh, Haryana, and Tamil Nadu."
    ),

    Question(
        questionText: "Which states are among the major producers of Tea in India?",
        options: [
          "Uttar Pradesh, Punjab, Haryana",
          "Assam, West Bengal, Meghalaya",
          "Kerala, Tamil Nadu, Karnataka",
          "Bihar, Odisha, U.P."
        ],
        correctAnswerIndex: 1,
        explanation: "Assam, West Bengal, Meghalaya, Arunachal Pradesh, U.P., Himachal Pradesh, and Tamil Nadu are among the major producers of Tea in India."
    ),

    Question(
        questionText: "Where is the largest production of Rubber in India?",
        options: [
          "Kerala, Tamil Nadu, Karnataka",
          "Assam, West Bengal, Bihar",
          "Uttar Pradesh, Punjab, Haryana",
          "Gujarat, Maharashtra, Madhya Pradesh"
        ],
        correctAnswerIndex: 0,
        explanation: "Kerala, Tamil Nadu, and Karnataka contribute to 95% of the total output of rubber, with Kerala being the largest producer in India."
    ),
    Question(
        questionText: "Which region in India is known for its production of Grapes?",
        options: [
          "Uttarakhand, Himachal Pradesh, Jammu and Kashmir",
          "Karnataka, Tamil Nadu, Kerala",
          "Maharashtra, Gujarat, Punjab",
          "Bihar, Odisha, U.P."
        ],
        correctAnswerIndex: 0,
        explanation: "Grapes are mainly produced in regions like Uttarakhand, Himachal Pradesh, and Jammu and Kashmir."
    ),

    Question(
        questionText: "What is the climate requirement for growing Strawberries in India?",
        options: [
          "Hot and arid climate",
          "Cool climate with temperatures above 16°C",
          "Tropical climate with high rainfall",
          "Humid climate with temperatures below 10°C"
        ],
        correctAnswerIndex: 1,
        explanation: "Strawberries require a cool climate with temperatures above 16°C during their growing season."
    ),

    Question(
        questionText: "Which hilly areas are known for the cultivation of Apple in India?",
        options: [
          "Western Ghats",
          "Himalayan slopes in Himachal Pradesh and Jammu and Kashmir",
          "Eastern Ghats",
          "Nilgiri Hills in Tamil Nadu"
        ],
        correctAnswerIndex: 1,
        explanation: "The cultivation of Apple in India is prominent in the Himalayan slopes, particularly in Himachal Pradesh and Jammu and Kashmir."
    ),

    Question(
        questionText: "Where is Banana primarily cultivated in India?",
        options: [
          "Karnataka, Tamil Nadu, Kerala",
          "Uttar Pradesh, Punjab, Haryana",
          "Maharashtra, Gujarat, Madhya Pradesh",
          "Assam, West Bengal, Bihar"
        ],
        correctAnswerIndex: 0,
        explanation: "Banana is primarily cultivated in states like Karnataka, Tamil Nadu, and Kerala in India."
    ),

    Question(
        questionText: "Which states are major producers of Mango in India?",
        options: [
          "Uttar Pradesh, Bihar, Assam",
          "Maharashtra, Karnataka, Andhra Pradesh",
          "Punjab, Haryana, Rajasthan",
          "Odisha, West Bengal, Tamil Nadu"
        ],
        correctAnswerIndex: 1,
        explanation: "Major producers of Mango in India include Maharashtra, Karnataka, Andhra Pradesh, Uttar Pradesh, Bihar, and Tamil Nadu."
    ),

    Question(
        questionText: "In which soil type is Rubber primarily cultivated?",
        options: [
          "Loamy soil",
          "Black soil",
          "Laterite soil",
          "Sandy soil"
        ],
        correctAnswerIndex: 2,
        explanation: "Rubber is primarily cultivated in laterite soils, and Kerala contributes to 95% of the total rubber production in India."
    ),

    Question(
        questionText: "What is the primary requirement for cultivating Pepper (Spices) in India?",
        options: [
          "Hot and humid climate",
          "Cool and dry climate",
          "High-altitude regions",
          "Sandy and loamy soil"
        ],
        correctAnswerIndex: 0,
        explanation: "Pepper (Spices) cultivation in India requires a hot and humid climate, making states like Kerala, Tamil Nadu, and Karnataka suitable for its production."
    ),
    Question(
        questionText: "Which state in India is the major producer of Cardamom (Spices)?",
        options: [
          "Kerala",
          "Madhya Pradesh",
          "Assam",
          "Uttar Pradesh"
        ],
        correctAnswerIndex: 0,
        explanation: "Kerala is a major producer of Cardamom (Spices) in India, contributing significantly to its production."
    ),

    Question(
        questionText: "Which states are among the largest producers of Sugarcane in India?",
        options: [
          "U.P., Punjab, Haryana, Tamil Nadu",
          "Assam, West Bengal, Bihar, Odisha",
          "Maharashtra, Karnataka, Tamil Nadu, Andhra Pradesh",
          "Rajasthan, Gujarat, Madhya Pradesh, Chhattisgarh"
        ],
        correctAnswerIndex: 2,
        explanation: "Maharashtra, Karnataka, Tamil Nadu, and Andhra Pradesh are among the largest producers of Sugarcane in India."
    ),

    Question(
        questionText: "What type of soil is favorable for growing Coconut in India?",
        options: [
          "Black soil",
          "Laterite soil",
          "Sandy loam",
          "Red soil"
        ],
        correctAnswerIndex: 1,
        explanation: "Coconut cultivation in India is favorable in laterite soils, and states like Kerala, Andhra Pradesh, Tamil Nadu, Karnataka, Maharashtra, Gujarat, Odisha, and West Bengal are major producers."
    ),

    Question(
        questionText: "Which states are known for the production of Jute in India?",
        options: [
          "Assam, West Bengal, Bihar, Odisha",
          "U.P., Punjab, Haryana, Tamil Nadu",
          "Maharashtra, Karnataka, Madhya Pradesh, Rajasthan",
          "Gujarat, Maharashtra, Madhya Pradesh, Punjab"
        ],
        correctAnswerIndex: 0,
        explanation: "Jute is primarily produced in states like Assam, West Bengal, Bihar, and Odisha in India."
    ),

    Question(
        questionText: "Where is the main cultivation of Coffee in India?",
        options: [
          "Uttarakhand, Himachal Pradesh, Jammu and Kashmir",
          "Maharashtra, Gujarat, Punjab",
          "Karnataka, Tamil Nadu, Kerala",
          "Assam, West Bengal, Meghalaya"
        ],
        correctAnswerIndex: 2,
        explanation: "The main cultivation of Coffee in India is concentrated in states like Karnataka, Tamil Nadu, and Kerala."
    ),
    Question(
        questionText: "Which states are major producers of Groundnut (Peanut) in India?",
        options: [
          "Rajasthan, Gujarat, Madhya Pradesh, Maharashtra",
          "Punjab, Haryana, Uttar Pradesh, Bihar",
          "Andhra Pradesh, Karnataka, Tamil Nadu, Telangana",
          "Assam, West Bengal, Odisha, Jharkhand"
        ],
        correctAnswerIndex: 0,
        explanation: "Groundnut (Peanut) is majorly produced in states like Rajasthan, Gujarat, Madhya Pradesh, and Maharashtra in India."
    ),

    Question(
        questionText: "Where is the main cultivation of Rubber in India?",
        options: [
          "Kerala, Tamil Nadu, Karnataka",
          "Assam, West Bengal, Bihar",
          "Uttar Pradesh, Punjab, Haryana",
          "Gujarat, Maharashtra, Madhya Pradesh"
        ],
        correctAnswerIndex: 0,
        explanation: "The main cultivation of Rubber in India is in states like Kerala, Tamil Nadu, and Karnataka, with Kerala contributing to 95% of the total output."
    ),

    Question(
        questionText: "Which region is known for the production of Cardamom in India?",
        options: [
          "Western Ghats",
          "Eastern Ghats",
          "Himalayan Foothills",
          "Deccan Plateau"
        ],
        correctAnswerIndex: 0,
        explanation: "Cardamom production in India is concentrated in the Western Ghats region."
    ),

    Question(
        questionText: "What are the favorable climatic conditions for growing Tea in India?",
        options: [
          "Hot and humid climate",
          "Cool and dry climate",
          "Moderate temperature with heavy rainfall",
          "Cold and arid climate"
        ],
        correctAnswerIndex: 0,
        explanation: "Tea cultivation in India requires a hot and humid climate, making states like Assam, West Bengal, and Tamil Nadu suitable for its production."
    ),

    Question(
        questionText: "Which states are known for the cultivation of Oilseeds in India?",
        options: [
          "Uttar Pradesh, Punjab, Haryana, Tamil Nadu",
          "Assam, West Bengal, Bihar, Odisha",
          "Maharashtra, Karnataka, Tamil Nadu, Andhra Pradesh",
          "Rajasthan, Gujarat, Madhya Pradesh, Chhattisgarh"
        ],
        correctAnswerIndex: 2,
        explanation: "Oilseeds are majorly cultivated in states like Maharashtra, Karnataka, Tamil Nadu, Andhra Pradesh, Gujarat, and Punjab in India."
    ),
    Question(
        questionText: "Which state is known for the production of Almonds in India?",
        options: [
          "Jammu and Kashmir",
          "Himachal Pradesh",
          "Uttarakhand",
          "Arunachal Pradesh"
        ],
        correctAnswerIndex: 0,
        explanation: "Almonds are primarily produced in the state of Jammu and Kashmir in India."
    ),

    Question(
        questionText: "Where is the main cultivation of Pepper (Spices) in India?",
        options: [
          "Kerala, Tamil Nadu, Karnataka",
          "Assam, West Bengal, Bihar",
          "Uttar Pradesh, Punjab, Haryana",
          "Gujarat, Maharashtra, Madhya Pradesh"
        ],
        correctAnswerIndex: 0,
        explanation: "The main cultivation of Pepper (Spices) in India is in states like Kerala, Tamil Nadu, and Karnataka."
    ),

    Question(
        questionText: "Which region in India is known for its production of Walnut?",
        options: [
          "Western Ghats",
          "Himalayan Foothills",
          "Eastern Ghats",
          "Deccan Plateau"
        ],
        correctAnswerIndex: 1,
        explanation: "The production of Walnut in India is concentrated in the Himalayan foothills region."
    ),

    Question(
        questionText: "Where is the primary cultivation of Tapioca in India?",
        options: [
          "Assam, West Bengal, Meghalaya",
          "Kerala, Tamil Nadu, Karnataka",
          "Gujarat, Maharashtra, Madhya Pradesh",
          "Uttar Pradesh, Punjab, Haryana"
        ],
        correctAnswerIndex: 1,
        explanation: "Tapioca is primarily cultivated in states like Kerala, Tamil Nadu, and Karnataka in India."
    ),

    Question(
        questionText: "Which state is known for the production of Arecanut in India?",
        options: [
          "Kerala",
          "Karnataka",
          "Assam",
          "Uttar Pradesh"
        ],
        correctAnswerIndex: 1,
        explanation: "Arecanut is known for its production in the state of Karnataka in India."
    ),
    Question(
        questionText: "Which soil type is favorable for growing Pepper (Spices) in India?",
        options: [
          "Black soil",
          "Laterite soil",
          "Red soil",
          "Alluvial soil"
        ],
        correctAnswerIndex: 0,
        explanation: "Pepper (Spices) cultivation in India is favorable in Black soil."
    ),

    Question(
        questionText: "Where is the primary cultivation of Rubber in India?",
        options: [
          "Kerala, Tamil Nadu, Karnataka",
          "Assam, West Bengal, Bihar",
          "Uttar Pradesh, Punjab, Haryana",
          "Gujarat, Maharashtra, Madhya Pradesh"
        ],
        correctAnswerIndex: 0,
        explanation: "The primary cultivation of Rubber in India is in states like Kerala, Tamil Nadu, and Karnataka."
    ),

    Question(
        questionText: "Which region is known for the production of Cardamom in India?",
        options: [
          "Western Ghats",
          "Eastern Ghats",
          "Himalayan Foothills",
          "Deccan Plateau"
        ],
        correctAnswerIndex: 0,
        explanation: "Cardamom production in India is concentrated in the Western Ghats region."
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
    home: agriculture(),
  ));
}

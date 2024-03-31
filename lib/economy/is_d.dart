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

class isd extends StatefulWidget {
  final String? userIdentifier;

  isd({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<isd> createState() => _isdState();
}

class _isdState extends State<isd> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "What are the core infrastructure components targeted by the Smart Cities Mission?",
      options: [
        "Adequate water supply, assured electricity supply, and efficient urban mobility",
        "Affordable housing, robust IT connectivity, and digitalization",
        "Good governance, sustainable environment, and safety/security of citizens",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The Smart Cities Mission aims to promote cities that provide various core infrastructure components, including adequate water supply, assured electricity, efficient urban mobility, affordable housing, robust IT connectivity, sustainable environment, good governance, safety/security of citizens, and more.",
    ),

    Question(
      questionText: "What is the objective of the Swachh Bharat Mission (SBM)?",
      options: [
        "To achieve 100 percent door-to-door collection and scientific management of Municipal Solid Waste (MSW)",
        "To construct 1.04 crore Individual Household Latrines (IHHLs) and 2.52 lakh Community Toilet (CT) seats",
        "To make India free from open defecation",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The Swachh Bharat Mission aims to achieve several objectives including constructing IHHLs, community and public toilets, ensuring door-to-door collection and scientific management of Municipal Solid Waste (MSW), and making India free from open defecation.",
    ),

    Question(
      questionText: "What is the focus of the Atal Mission for Rejuvenation and Urban Transformation (AMRUT)?",
      options: [
        "Development of Smart Cities",
        "Ensuring robust IT connectivity",
        "Rejuvenation and transformation of urban areas",
        "Creating employment opportunities in urban regions"
      ],
      correctAnswerIndex: 2,
      explanation: "The focus of AMRUT is the rejuvenation and transformation of urban areas. It aims to ensure robust infrastructure and services in these regions for a better quality of life.",
    ),

    Question(
      questionText: "What is the primary aim of the Bharatmala Pariyojana?",
      options: [
        "Improving railway infrastructure across the country",
        "Building bridges for safe travel on National Highways",
        "Creating coastal and port connectivity roads",
        "Developing economic corridors and improving inter-corridors"
      ],
      correctAnswerIndex: 3,
      explanation: "The Bharatmala Pariyojana focuses on developing economic corridors, inter-corridors, feeder routes, national corridor efficiency improvement, border and international connectivity roads, coastal and port connectivity roads, and green-field expressways for optimal resource allocation in the highways sector.",
    ),

    Question(
        questionText: "What percentage of cargo movement by volume and value do the twelve major ports and two hundred odd minor ports in India account for?",
        options: [
          "70% by volume and 95% by value",
          "95% by volume and 70% by value",
          "60% by volume and 80% by value",
          "85% by volume and 60% by value"
        ],
        correctAnswerIndex: 1,
        explanation: "The twelve major ports and two hundred minor ports in India account for 95% of cargo movement by volume and 70% by value."
    ),

    Question(
        questionText: "What are the goals set in the 'Maritime Agenda 2010-2020' to enhance India's ports?",
        options: [
          "Increase India's share in global shipbuilding to 5%",
          "Promote coastal shipping for decongestion of roads",
          "Create port capacity of around 3200 MT by 2020",
          "All of the above"
        ],
        correctAnswerIndex: 3,
        explanation: "The goals set in the 'Maritime Agenda 2010-2020' include increasing India's share in global shipbuilding to 5%, promoting coastal shipping for decongestion of roads, and creating port capacity of around 3200 MT by 2020."
    ),

    Question(
      questionText: "What initiatives has the Indian government taken to encourage private participation and FDI in the port sector?",
      options: [
        "100% FDI under the automatic route for various port-based activities",
        "Providing a ten-year tax holiday to enterprises engaged in port-related businesses",
        "Offering 100% income tax exemption to companies investing in port infrastructure",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The Indian government has taken multiple initiatives including 100% FDI under the automatic route for various port-based activities, providing a ten-year tax holiday to port-related businesses, and offering 100% income tax exemption to companies investing in port infrastructure.",
    ),

    Question(
      questionText: "What regulatory changes are being considered by India's shipping ministry for the major ports?",
      options: [
        "Removing tariff fixing for major ports and appointing a new regulator",
        "Setting up a separate ministry for ports and shipping",
        "Privatizing major ports under private companies",
        "Reducing tax exemptions for companies involved in port development"
      ],
      correctAnswerIndex: 0,
      explanation: "India's shipping ministry is considering removing tariff fixing for major ports, appointing a new regulator, and allowing ports to set, monitor, and regulate service levels and standards.",
    ),

    Question(
      questionText: "Which port is set to be the first port to be corporatized, as per the Union Shipping Ministry's plans?",
      options: [
        "Haldia Dock II (North)",
        "Visakhapatnam Port Trust (VPT)",
        "Jawaharlal Nehru Port Trust (JNPT)",
        "Kolkata Port Trust"
      ],
      correctAnswerIndex: 2,
      explanation: "The Union Shipping Ministry's plans involve Mumbai’s Jawaharlal Nehru Port Trust (JNPT) as the first port to be corporatized.",
    ),

    Question(
      questionText: "How many lighthouses in the country have been identified for development as centres of tourism in the first phase under Public Private Partnership (PPP)?",
      options: [
        "50 lighthouses",
        "58 lighthouses",
        "78 lighthouses",
        "90 lighthouses"
      ],
      correctAnswerIndex: 2,
      explanation: "The Ministry of Shipping, along with the Directorate General of Lighthouses and Lightships (DGLL), has identified 78 lighthouses in the country for development as centres of tourism in the first phase under Public Private Partnership (PPP).",
    ),

    Question(
      questionText: "What is the goal of the Ministry of Shipping regarding the budgetary allocation for the waterways sector?",
      options: [
        "To seek a budgetary allocation of Rs 500 crore",
        "To maintain the current allocation of Rs 900 crore",
        "To enhance the budgetary allocation for the sector",
        "To reduce the budgetary allocation for the sector"
      ],
      correctAnswerIndex: 2,
      explanation: "The Ministry of Shipping aims to seek enhanced budgetary allocation from the Finance Minister for the waterways sector, considering its crucial role in the economy.",
    ),

    Question(
      questionText: "What major step does the Ministry of Shipping propose to support the sea logistics sector in India?",
      options: [
        "Granting industry status to sea logistics",
        "Implementing a new taxation system",
        "Reducing the budgetary allocation for shipping",
        "Restricting the PPP projects"
      ],
      correctAnswerIndex: 0,
      explanation: "The Ministry of Shipping aims to grant industry status to the sea logistics sector in India to enable better coordination among various industries for integrated policy development.",
    ),

    Question(
      questionText: "What are the challenges faced by Indian ports in terms of their capacity and operations?",
      options: [
        "Over-reliance on Colombo as a transshipment hub",
        "Efficient handling of large containers",
        "Labor unrests and inefficient truck movement",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Indian ports face challenges related to over-reliance on Colombo as a transshipment hub, inefficient handling of large containers, labor unrests, and inefficient truck movement, impacting their capacity and operations.",
    ),

    Question(
      questionText: "What is the expected outcome of the Sagarmala Project for India's merchandise exports by 2025?",
      options: [
        "\$50 billion",
        "\$80 billion",
        "\$110 billion",
        "\$150 billion"
      ],
      correctAnswerIndex: 2,
      explanation: "The Sagarmala Project is expected to boost India’s merchandise exports to \$110 billion by 2025 and create an estimated 10 million new jobs.",
    ),

    Question(
      questionText: "Which services have been made available online as part of e-governance initiatives in the shipping sector?",
      options: [
        "Registration of ships and chartering permission",
        "Application and seat booking for written and oral examinations",
        "Application processing and issuance of Certificate of Competencies (CoCs)",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Various services including registration of ships, application and seat booking for examinations, processing of CoCs, and chartering permission have been made available online as part of e-governance initiatives in the shipping sector.",
    ),

    Question(
      questionText: "What factors will continue to affect the performance of dry bulk and container operators in the shipping sector?",
      options: [
        "Weak global trade growth and persistent overcapacity",
        "Increased government incentives for shipbuilding",
        "Development of coastal economic zones",
        "Improved port infrastructure"
      ],
      correctAnswerIndex: 0,
      explanation: "The performance of dry bulk and container operators in the shipping sector will continue to be affected by weak global trade growth and persistent overcapacity.",
    ),

    Question(
      questionText: "What is the current ratio of road freight to rail freight in India compared to China and the US?",
      options: [
        "India: 60% road, China: 22% road, US: 37% road",
        "India: 35% road, China: 60% road, US: 95% road",
        "India: 80% road, China: 37% road, US: 60% road",
        "India: 95% road, China: 60% road, US: 37% road"
      ],
      correctAnswerIndex: 0,
      explanation: "The current ratio of road freight to rail freight in India is approximately 60% road and 40% rail. In China, the ratio is around 22% road and in the US, it's about 37% road.",
    ),

    Question(
      questionText: "What are the reasons behind the higher cost of rail movement compared to road movement in India?",
      options: [
        "Inclement weather conditions and fears of theft",
        "Higher initial capital cost of electric traction and cross subsidization",
        "Interstate movement and frequent checking at octroi check points",
        "All of the above"
      ],
      correctAnswerIndex: 1,
      explanation: "The higher cost of rail movement in India is attributed to factors like the higher initial capital cost of electric traction, cross subsidization through passenger fares, and other operational challenges.",
    ),

    Question(
      questionText: "What measures have been suggested to enhance freight movement by Indian Railways?",
      options: [
        "Increase passenger fares to cover operational costs",
        "Privatization and PPP model for freight movement",
        "Development of dedicated freight corridors (DFCs)",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "To enhance freight movement, suggestions include increasing passenger fares to cover costs, engaging in privatization and PPP models for freight movement, and the development of dedicated freight corridors (DFCs).",
    ),

    Question(
      questionText: "What significant project is being undertaken to transform freight movement and create economic development along its alignment?",
      options: [
        "Dedicated Railway Lines Project",
        "Golden Quadrilateral Highway Project",
        "Delhi-Mumbai Industrial Corridor (DMIC) Project",
        "National Freight Corridor (NFC) Project"
      ],
      correctAnswerIndex: 2,
      explanation: "The significant project undertaken to transform freight movement and create economic development along its alignment is the Delhi-Mumbai Industrial Corridor (DMIC) Project.",
    ),

    Question(
      questionText: "What is the total construction cost of the High Speed Training Project, including land cost?",
      options: [
        "₹ 70,915 crore",
        "₹ 97,636 crore",
        "₹ 140 crore per km",
        "₹ 79,165 crore"
      ],
      correctAnswerIndex: 1,
      explanation: "The total construction cost of the High Speed Training Project, including land cost, is approximately ₹ 97,636 crore.",
    ),

    Question(
      questionText: "What is the primary aim of the UDAN scheme in aviation?",
      options: [
        "To establish new international airports",
        "To increase the fares for regional flights",
        "To reduce operating costs and incentivize regional air traffic",
        "To provide subsidies for luxury flights"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary aim of the UDAN scheme in aviation is to reduce operating costs and incentivize regional air traffic by offering affordable passenger fares and various subsidies.",
    ),

    Question(
      questionText: "What is the objective of the Adarsh Railway Station Scheme?",
      options: [
        "To increase ticket prices for railway stations",
        "To modernize or upgrade railway stations",
        "To reduce passenger amenities at railway stations",
        "To close down underutilized railway stations"
      ],
      correctAnswerIndex: 1,
      explanation: "The objective of the Adarsh Railway Station Scheme is to modernize or upgrade railway stations.",
    ),

    Question(
      questionText: "How many airports and routes are initially connected under the UDAN scheme?",
      options: [
        "70 airports and 100 routes",
        "70 airports and 128 routes",
        "128 airports and 70 routes",
        "100 airports and 70 routes"
      ],
      correctAnswerIndex: 1,
      explanation: "Initially, under the UDAN scheme, 70 airports and 128 routes are connected to supplement regional aviation growth.",
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
              final isCorrectAnswer = optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedAnswerIndex = optionIndex;
                    _userAnswers[_currentQuestionIndex] = optionIndex;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8.0), // Add space between boxes
                  decoration: BoxDecoration(
                    color: _selectedAnswerIndex == optionIndex
                        ? (isCorrectAnswer ? Colors.green[200] : Colors.red[300])
                        : Colors.white,
                    border: Border.all(
                      color: _selectedAnswerIndex == optionIndex ? Colors.blue : Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    title: Text(optionText),
                    leading: Radio<int>(
                      value: optionIndex,
                      groupValue: _selectedAnswerIndex,
                      onChanged: (int? value) {
                        setState(() {
                          _selectedAnswerIndex = value;
                          _userAnswers[_currentQuestionIndex] = value;
                        });
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
            if (_selectedAnswerIndex != null)
              Text(
                "Correct Answer: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
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
    home: isd(),
  ));
}

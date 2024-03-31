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

class a_s extends StatefulWidget {
  final String? userIdentifier;

  a_s({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<a_s> createState() => _a_sState();
}

class _a_sState extends State<a_s> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "What is the significance of the agriculture sector in India?",
      options: [
        "It supports over 60% of the population and provides raw materials for industries.",
        "It solely focuses on increasing productivity without any other significant role.",
        "It is responsible for 80% of the country's total income.",
        "It plays a minor role compared to other sectors in the economy."
      ],
      correctAnswerIndex: 0,
      explanation: "The agriculture sector in India supports over 60% of the population and provides raw materials for industries." ,
    ),

    Question(
      questionText: "Why is increased productivity essential in agriculture?",
      options: [
        "To reduce dependency on imports",
        "To address rising demand and prevent food scarcity",
        "To control food inflation in the market",
        "To increase profits for farmers"
      ],
      correctAnswerIndex: 1,
      explanation: "Increased productivity is essential in agriculture to address rising demand and prevent food scarcity.",
    ),

    Question(
      questionText: "Which revolution primarily focused on milk and milk products?",
      options: [
        "Yellow Revolution",
        "Blue Revolution",
        "White Revolution",
        "Green Revolution"
      ],
      correctAnswerIndex: 2,
      explanation: "The White Revolution primarily focused on milk and milk products.",
    ),


    Question(
      questionText: "What are the growth potentials outlined for the Pink Revolution in India?",
      options: [
        "To reduce meat consumption per capita",
        "To increase meat consumption per capita from 6 grams to 50 grams per day",
        "To maintain the current level of meat consumption",
        "To decrease meat production and focus on other sectors"
      ],
      correctAnswerIndex: 1,
      explanation: "The growth potentials for the Pink Revolution in India include increasing meat consumption per capita from 6 grams to 50 grams per day in the next decade or so.",
    ),

    Question(
      questionText: "What are some challenges faced by the meat and poultry processing sector ?",
      options: [
        "Drafting standard policies and increasing meat production",
        "Implementing FAO guidelines and ensuring low investment",
        "Ensuring better hygiene and channelizing high investment",
        "Reducing meat wastage and limiting government policies"
      ],
      correctAnswerIndex: 2,
      explanation: "Challenges faced by the meat and poultry processing sector include better hygiene requirements and channelizing increased and high volume investments in the sector.",
    ),

    Question(
      questionText: "Why is productivity highlighted as a significant concern in Indian agriculture?",
      options: [
        "To control agricultural exports",
        "To reduce the need for arable land",
        "To address the increasing prices of crops",
        "To boost domestic production to meet rising demands"
      ],
      correctAnswerIndex: 3,
      explanation: "Productivity in Indian agriculture is a concern to boost domestic production to meet rising demands.",
    ),

    Question(
      questionText: "What is the primary focus of the 2nd generation Pink Revolution?",
      options: [
        "Modernisation of pharmaceutical industry",
        "Exporting buffalo meat",
        "Developing disease-free zones for poultry",
        "Increasing onion production"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary focus of the 2nd generation Pink Revolution is on modernising meat and poultry, particularly exporting buffalo meat, which has led India to become the largest exporter of buffalo meat.",
    ),

    Question(
      questionText: "What are the recommendations outlined by the Food and Agriculture Organization of the UN (FAO) for the success of the Pink Revolution?",
      options: [
        "Developing organic meat processing plants",
        "Increasing poultry exports to South America",
        "Creating disease-free zones for crop production",
        "Setting up state-of-the-art meat processing plants, raising male buffalo calves for meat, increasing buffalo rearing under contracts, and establishing disease-free zones",
      ],
      correctAnswerIndex: 3,
      explanation: "The FAO recommended a framework including setting up modern meat processing plants, developing buffalo calf rearing, increasing buffalo rearing under contracts, and establishing disease-free zones for the success of the Pink Revolution.",
    ),

    Question(
      questionText: "What environmental concern is associated with India becoming the largest exporter of meat?",
      options: [
        "Increased greenhouse gas emissions",
        "Rising ocean pollution",
        "Depletion of groundwater reserves",
        "Deforestation"
      ],
      correctAnswerIndex: 0,
      explanation: "India becoming the largest exporter of meat raises concerns about increased greenhouse gas emissions due to the meat production industry.",
    ),

    Question(
      questionText: "What is the targeted goal for increasing per capita meat consumption in India in the next decade?",
      options: [
        "30 grams per day",
        "40 grams per day",
        "50 grams per day",
        "60 grams per day"
      ],
      correctAnswerIndex: 2,
      explanation: "The targeted goal is to increase per capita meat consumption from approximately 6 grams to 50 grams per day in the next decade.",
    ),

    Question(
      questionText: "What percentage of the global market does India currently account for in the meat and poultry sector?",
      options: [
        "5 percent",
        "2 percent",
        "10 percent",
        "15 percent"
      ],
      correctAnswerIndex: 1,
      explanation: "India accounts for approximately 2 percent of the global market in the meat and poultry sector despite having a large livestock count.",
    ),

    Question(
      questionText: "What are some challenges highlighted for the growth of the meat and poultry processing sector?",
      options: [
        "Enhancing export restrictions",
        "Implementing better marketing strategies",
        "Standardizing quality and safety aspects",
        "Focusing on increased taxation"
      ],
      correctAnswerIndex: 2,
      explanation: "Challenges include drafting policies, standardizing quality and safety aspects, and creating infrastructure facilities for modern slaughterhouses, meat testing, and cold storage for growth in the meat and poultry processing sector.",
    ),

    Question(
        questionText: "What is the targeted goal for increasing per capita meat consumption in India in the next decade?",
        options: [
          "30 grams per day",
          "40 grams per day",
          "50 grams per day",
          "60 grams per day"
        ],
        correctAnswerIndex: 2,
        explanation: "The targeted goal is to increase per capita meat consumption from approximately 6 grams to 50 grams per day in the next decade."
    ),

    Question(
      questionText: "What percentage of the global market does India currently account for in the meat and poultry sector?",
      options: [
        "5 percent",
        "2 percent",
        "10 percent",
        "15 percent"
      ],
      correctAnswerIndex: 1,
      explanation: "India accounts for approximately 2 percent of the global market in the meat and poultry sector despite having a large livestock count.",
    ),

    Question(
      questionText: "What government policies are listed as initiatives to boost the meat and poultry sector?",
      options: [
        "Imposing income tax and central excise",
        "Restricting poultry and poultry product exports",
        "Limiting foreign direct investment",
        "Launching schemes for modernizing abattoirs"
      ],
      correctAnswerIndex: 3,
      explanation: "The government policies include no income tax or central excise, no restrictions on export, 100% FDI allowance, and schemes for modernizing abattoirs.",
    ),

    Question(
      questionText: "What is the target set by the Agriculture Export Policy to increase agricultural exports by the year 2022?",
      options: [
        "US\$ 50 Billion",
        "US\$ 60 Billion",
        "US\$ 70 Billion",
        "US\$ 80 Billion"
      ],
      correctAnswerIndex: 1,
      explanation: "The Agriculture Export Policy aims to double agricultural exports from the current US\$ 30+ Billion to US\$ 60+ Billion by 2022.",
    ),

    Question(
      questionText: "According to the New Agricultural Policy 2000, what is the average annual growth rate that the agriculture sector is expected to achieve?",
      options: [
        "2 percent",
        "4 percent",
        "6 percent",
        "8 percent"
      ],
      correctAnswerIndex: 1,
      explanation: "The New Agricultural Policy 2000 aims for the agriculture sector to grow at an average annual growth of a minimum 4 percent over the next few decades.",
    ),

    Question(
      questionText: "What are some objectives outlined in the Agriculture Export Policy to boost India's agricultural exports?",
      options: [
        "Focusing only on traditional agricultural products",
        "Doubling India’s share in world agri exports",
        "Limiting market access",
        "Avoiding integration with global value chains"
      ],
      correctAnswerIndex: 1,
      explanation: "The Agriculture Export Policy aims to double India’s share in world agri exports by integrating with global value chains.",
    ),

    Question(
      questionText: "What measures are highlighted in the Agriculture Export Policy to deal with trade barriers and sanitary issues?",
      options: [
        "Diversifying export basket",
        "Doubling agricultural exports",
        "Promoting indigenous products",
        "Providing institutional mechanisms"
      ],
      correctAnswerIndex: 3,
      explanation: "The Agriculture Export Policy aims to provide institutional mechanisms for pursuing market access, addressing trade barriers, and dealing with sanitary and phyto-sanitary issues.",
    ),

    Question(
      questionText: "What is the primary focus of the Rainbow Revolution in agriculture?",
      options: [
        "Commercialization of crops",
        "Sustainable agriculture practices",
        "Increasing the number of middlemen",
        "Enhancing traditional farming techniques"
      ],
      correctAnswerIndex: 1,
      explanation: "The Rainbow Revolution emphasizes changing agricultural activities from subsistence to a commercial venture with a focus on productivity and profitability.",
    ),

    Question(
      questionText: "What is the estimated percentage of wastage in fruits and vegetables in India's food processing industry?",
      options: [
        "6%",
        "15%",
        "35%",
        "50%"
      ],
      correctAnswerIndex: 2,
      explanation: "The text mentions that there is a high level of wastage, around 35%, especially in fruits and vegetables in India's food processing industry.",
    ),

    Question(
      questionText: "Which sector does the National Mission for Sustainable Agriculture primarily aim to transform into a climate-resilient production system?",
      options: [
        "Automotive sector",
        "Agriculture sector",
        "Healthcare sector",
        "Construction sector"
      ],
      correctAnswerIndex: 1,
      explanation: "The National Mission for Sustainable Agriculture aims to transform Indian agriculture into a climate-resilient production system.",
    ),

    Question(
      questionText: "What is the expected growth rate of the Indian food industry by 2018?",
      options: [
        "5% CAGR",
        "8% CAGR",
        "11% CAGR",
        "15% CAGR"
      ],
      correctAnswerIndex: 2,
      explanation: "The food industry, currently valued at US\$ 39.71 billion, is expected to grow at a Compounded Annual Growth Rate (CAGR) of 11 per cent to US\$ 65.4 billion by 2018.",
    ),

    Question(
      questionText: "What are the specific targets set out for the food processing sector by the year 2015?",
      options: [
        "Increase in the level of processing of perishables from 6 to 20 per cent, Increase in value addition from 20 to 35 per cent, Share in global food trade to increase from 1.5 to 3 per cent",
        "Increase in the level of processing of perishables from 10 to 25 per cent, Increase in value addition from 15 to 30 per cent, Share in global food trade to increase from 2 to 4 per cent",
        "Increase in the level of processing of perishables from 5 to 15 per cent, Increase in value addition from 25 to 40 per cent, Share in global food trade to increase from 1 to 2.5 per cent",
        "Increase in the level of processing of perishables from 8 to 22 per cent, Increase in value addition from 18 to 33 per cent, Share in global food trade to increase from 1.8 to 3.5 per cent"
      ],
      correctAnswerIndex: 0,
      explanation: "The specific targets set out for the food processing sector by the year 2015 include increasing the level of processing of perishables from 6 to 20 per cent, increasing value addition from 20 to 35 per cent, and increasing the share in global food trade from 1.5 to 3 per cent.",
    ),

    Question(
      questionText: "What initiatives were taken in the Budget 2015-16 to support the food processing industry?",
      options: [
        "Creation of a corpus of Rs. 2,000 crore (USS 293.44 million) under NABARD to provide cheaper credit and reduction of excise duty on plant and machinery for packaging and processing to six per cent from 10 per cent",
        "Doubling the budget allocation to the food processing ministry and setting up institutions to finance agro-processing projects",
        "Establishment of 42 mega food parks across the country and setting up institutions to finance agro-processing projects",
        "Creation of a special fund of Rs. 1,400 crore to promote food processing industry and reduction of GST on food processing machinery"
      ],
      correctAnswerIndex: 0,
      explanation: "In the Budget 2015-16, initiatives included the creation of a corpus of Rs. 2,000 crore under NABARD to provide cheaper credit to the food processing industry and a reduction of excise duty on plant and machinery for packaging and processing to six per cent from 10 per cent.",
    ),

    Question(
      questionText: "What is the aim of setting up five mega food parks in Bihar, Maharashtra, Himachal Pradesh, and Chhattisgarh?",
      options: [
        "To promote food processing industry and increase value addition",
        "To provide employment to rural areas",
        "To increase agricultural productivity in these states",
        "To double the income of farmers"
      ],
      correctAnswerIndex: 0,
      explanation: "The aim of setting up five mega food parks in these states is to promote the food processing industry and increase value addition.",
    ),

    Question(
      questionText: "What was the budget allocation made for the food processing ministry in the year 2018-19?",
      options: [
        "₹1,400 crore",
        "₹2,000 crore",
        "₹1,000 crore",
        "₹3,000 crore"
      ],
      correctAnswerIndex: 0,
      explanation: "The budget allocation made for the food processing ministry in the year 2018-19 was ₹1,400 crore, which was doubled from the previous allocation.",
    ),

    Question(
      questionText: "What are some initiatives proposed by the government to create an appropriate environment for entrepreneurs to set up food processing industries?",
      options: [
        "Fiscal initiatives, harmonization and simplification of food laws, efforts to expand availability of raw material, strengthening of database and market intelligence system, strengthening extension services",
        "Promotion of investments, simplification of taxation laws, establishment of packaging technologies, development of area-specific agro food parks, development of marketing network",
        "Creation of an equalization fund, establishment of marketing capabilities, exploitation of health and safety awareness, investment in better packaging, exploration of regional branding strategies",
        "Setting up of industrial centres, establishment of marketing network, exploitation of consumerism, opportunities for growth through inorganic route, taking advantage of ethnic tastes"
      ],
      correctAnswerIndex: 0,
      explanation: "The proposed initiatives include fiscal initiatives, harmonization and simplification of food laws, efforts to expand availability of raw material, strengthening of database and market intelligence system, and strengthening extension services.",
    ),

    Question(
      questionText: "What opportunities are mentioned for growth in the Indian food and beverage sector?",
      options: [
        "Value addition to unprocessed categories of food, investment in supply chain, exploration of regional branding strategies, exploitation of consumerism",
        "Exploitation of health and safety awareness, investment in better packaging, exploration of appropriate regional branding strategies, taking advantage of ethnic tastes",
        "Opportunities demonstrated by contract farming, captive supplies of raw materials, exploitation of increasing consumerism, taking advantage of ethnic tastes",
        "Value addition to unprocessed categories of food, investment in supply chain, exploration of appropriate regional branding strategies, taking advantage of ethnic tastes"
      ],
      correctAnswerIndex: 2,
      explanation: "The opportunities mentioned for growth include opportunities demonstrated by contract farming, captive supplies of raw materials, exploitation of increasing health and safety awareness, and taking advantage of ethnic tastes.",
    ),

    Question(
      questionText: "What measures are suggested to improve the Indian foods and beverage industry?",
      options: [
        "Investment in supply chain, exploration of regional branding strategies, taking advantage of ethnic tastes, exploitation of health and safety awareness",
        "Value addition to unprocessed categories of food, investment in better packaging, taking advantage of ethnic tastes, exploration of appropriate regional branding strategies",
        "Exploration of appropriate regional branding strategies, investment in better packaging, exploitation of increasing health and safety awareness, taking advantage of ethnic tastes",
        "Value addition to unprocessed categories of food, investment in supply chain, exploration of appropriate regional branding strategies, exploitation of health and safety awareness"
      ],
      correctAnswerIndex: 2,
      explanation: "The suggested measures include exploration of appropriate regional branding strategies, investment in better packaging, exploitation of increasing health and safety awareness, and taking advantage of ethnic tastes.",
    ),

    Question(
      questionText: "What are some efforts proposed to support the Indian food and beverage industry?",
      options: [
        "Establishment of cold chain, low cost pre-cooling facilities, harmonization and simplification of food laws, strengthening extension services",
        "Development of packaging technologies, establishment of marketing network, establishment of industrial centres, exploitation of health and safety awareness",
        "Application of biotechnology, development of new technologies, establishment of cold chain, low cost pre-cooling facilities",
        "Establishment of packaging technologies, development of new technologies, exploitation of health and safety awareness, harmonization and simplification of food laws"
      ],
      correctAnswerIndex: 0,
      explanation: "The proposed efforts to support the Indian food and beverage industry include the establishment of cold chain, low cost pre-cooling facilities, harmonization and simplification of food laws, and strengthening extension services.",
    ),

    Question(
      questionText: "What are some initiatives proposed by the government to create an appropriate environment for entrepreneurs to set up food processing industries?",
      options: [
        "Fiscal initiatives, harmonization and simplification of food laws, efforts to expand availability of raw material, strengthening of database and market intelligence system, strengthening extension services",
        "Promotion of investments, simplification of taxation laws, establishment of packaging technologies, development of area-specific agro food parks, development of marketing network",
        "Creation of an equalization fund, establishment of marketing capabilities, exploitation of health and safety awareness, investment in better packaging, exploration of regional branding strategies",
        "Setting up of industrial centres, establishment of marketing network, exploitation of consumerism, opportunities for growth through inorganic route, taking advantage of ethnic tastes"
      ],
      correctAnswerIndex: 0,
      explanation: "The proposed initiatives include fiscal initiatives, harmonization and simplification of food laws, efforts to expand availability of raw material, strengthening of database and market intelligence system, and strengthening extension services.",
    ),

    Question(
      questionText: "What opportunities are mentioned for growth in the Indian food and beverage sector?",
      options: [
        "Value addition to unprocessed categories of food, investment in supply chain, exploration of regional branding strategies, exploitation of consumerism",
        "Exploitation of health and safety awareness, investment in better packaging, exploration of appropriate regional branding strategies, taking advantage of ethnic tastes",
        "Opportunities demonstrated by contract farming, captive supplies of raw materials, exploitation of increasing consumerism, taking advantage of ethnic tastes",
        "Value addition to unprocessed categories of food, investment in supply chain, exploration of appropriate regional branding strategies, taking advantage of ethnic tastes"
      ],
      correctAnswerIndex: 2,
      explanation: "The opportunities mentioned for growth include opportunities demonstrated by contract farming, captive supplies of raw materials, exploitation of increasing health and safety awareness, and taking advantage of ethnic tastes.",
    ),

    Question(
      questionText: "What measures are suggested to improve the Indian foods and beverage industry?",
      options: [
        "Investment in supply chain, exploration of regional branding strategies, taking advantage of ethnic tastes, exploitation of health and safety awareness",
        "Value addition to unprocessed categories of food, investment in better packaging, taking advantage of ethnic tastes, exploration of appropriate regional branding strategies",
        "Exploration of appropriate regional branding strategies, investment in better packaging, exploitation of increasing health and safety awareness, taking advantage of ethnic tastes",
        "Value addition to unprocessed categories of food, investment in supply chain, exploration of appropriate regional branding strategies, exploitation of health and safety awareness"
      ],
      correctAnswerIndex: 2,
      explanation: "The suggested measures include exploration of appropriate regional branding strategies, investment in better packaging, exploitation of increasing health and safety awareness, and taking advantage of ethnic tastes.",
    ),

    Question(
      questionText: "What are some efforts proposed to support the Indian food and beverage industry?",
      options: [
        "Establishment of cold chain, low cost pre-cooling facilities, harmonization and simplification of food laws, strengthening extension services",
        "Development of packaging technologies, establishment of marketing network, establishment of industrial centres, exploitation of health and safety awareness",
        "Application of biotechnology, development of new technologies, establishment of cold chain, low cost pre-cooling facilities",
        "Establishment of packaging technologies, development of new technologies, exploitation of health and safety awareness, harmonization and simplification of food laws"
      ],
      correctAnswerIndex: 0,
      explanation: "The proposed efforts to support the Indian food and beverage industry include the establishment of cold chain, low cost pre-cooling facilities, harmonization and simplification of food laws, and strengthening extension services.",
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
    home: a_s(),
  ));
}

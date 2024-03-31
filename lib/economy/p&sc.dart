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

class p_sc extends StatefulWidget {
  final String? userIdentifier;

  p_sc({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<p_sc> createState() => _p_scState();
}

class _p_scState extends State<p_sc> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "Which scheme, envisioned by a Belgian economist, guarantees 100 days of unskilled wage employment in rural households?",
      options: ["Indira Awas Yojana", "Sarva Siksha Abhiyan", "Mid-day Meal scheme", "Mahatma Gandhi National Rural Employment Guarantee Scheme (MGNREGA)"],
      correctAnswerIndex: 3,
      explanation: "The Mahatma Gandhi National Rural Employment Guarantee Scheme (MGNREGA), conceptualized by Jean Dreze, ensures 100 days of unskilled wage employment in rural households, aiming to alleviate poverty and generate employment opportunities.",
    ),

    Question(
      questionText: "Which government scheme primarily focuses on providing health insurance cover to 107 million poor families?",
      options: ["Ayushman Bharat", "National Nutrition Mission (NNM)", "Pradhan Mantri Jan Dhan Yojana", "Total Sanitation Campaign"],
      correctAnswerIndex: 0,
      explanation: "Ayushman Bharat aims to provide health insurance coverage of Rs 5 lakh for inpatient care to 107 million poor families, focusing on improving healthcare accessibility for the underprivileged.",
    ),

    Question(
      questionText: "Under which strategy does the government primarily aim at ensuring free drugs and diagnostics while also addressing non-communicable diseases?",
      options: ["Broad Targeting", "Narrow Targeting", "Social Security", "Ayushman Bharat"],
      correctAnswerIndex: 3,
      explanation: "Ayushman Bharat, as part of the government's health strategy, focuses on providing free drugs and diagnostics, addressing non-communicable diseases, and offering health insurance coverage to the poor.",
    ),

    Question(
      questionText: "Which program under the Ministry of Women and Child Development aims at improving the nutritional status of children, adolescent girls, pregnant women, and lactating mothers?",
      options: ["Pradhan Mantri Jan Dhan Yojana", "Ayushman Bharat", "National Nutrition Mission (NNM)", "Integrated Child Development and Services (ICDS)"],
      correctAnswerIndex: 2,
      explanation: "The National Nutrition Mission (NNM) by the Ministry of Women and Child Development targets enhancing the nutritional status of children, adolescent girls, pregnant women, and lactating mothers through various integrated initiatives.",
    ),

    Question(
      questionText: "Which government initiative aims to integrate the poorest sections by providing them with bank accounts?",
      options: ["Total Sanitation Campaign", "Pradhan Mantri Jan Dhan Yojana", "Jawaharlal Nehru National Urban Renewal Mission (JNNURM)", "Rajiv Gandhi Drinking Water Scheme"],
      correctAnswerIndex: 1,
      explanation: "Pradhan Mantri Jan Dhan Yojana seeks to integrate the poorest sections by ensuring bank accounts for all households across rural and urban areas, aiming for financial inclusion.",
    ),

    Question(
      questionText: "Which scheme provides an overdraft facility of ₹ 5,000 for Aadhar-linked accounts after satisfactory operation for 6 months?",
      options: ["Pradhan Mantri Shram Yogi Maan-dhan (PM-SYM)", "RashtriyaYuvaSashaktikaranKaryakram Scheme", "Pradhan Mantri KisanSamman Nidhi (PM-KISAN)", "Pradhan Mantri Jan Dhan Yojana"],
      correctAnswerIndex: 3,
      explanation: "Pradhan Mantri Jan Dhan Yojana offers an overdraft facility of ₹ 5,000 for Aadhar-linked accounts after 6 months of satisfactory operation, along with other benefits like RuPay Debit Card and minimum monthly remuneration for business correspondents.",
    ),

    Question(
      questionText: "Under which scheme are vulnerable landholding farmer families with cultivable land up to 2 hectares provided with direct income support of ₹ 6,000 per year?",
      options: ["Pradhan Mantri Matru Vandana Yojana (PMMVY)", "Pradhan Mantri Vaya Vandana Yojana (PMWY)", "Integrated Scheme on School Education", "Pradhan Mantri KisanSamman Nidhi (PM-KISAN)"],
      correctAnswerIndex: 3,
      explanation: "Pradhan Mantri KisanSamman Nidhi (PM-KISAN) provides direct income support of ₹ 6,000 per year to vulnerable landholding farmer families with cultivable land up to 2 hectares, benefiting around 12 crore small and marginal farmer families.",
    ),

    Question(
      questionText: "Which scheme offers a minimum assured pension of ₹ 3,000 per month for subscribers after attaining the age of 60 years?",
      options: ["Pradhan Mantri Vaya Vandana Yojana (PMWY)", "Integrated Scheme on School Education", "Pradhan Mantri Shram Yogi Maan-dhan (PM-SYM)", "Jan ShikshanSansthan (JSS)"],
      correctAnswerIndex: 2,
      explanation: "Pradhan Mantri Shram Yogi Maan-dhan (PM-SYM) assures a minimum pension of ₹ 3,000 per month for subscribers after reaching the age of 60, with provisions for the spouse in case of the beneficiary's death.",
    ),

    Question(
      questionText: "Which scheme aims to integrate the Sarva Shiksha Abhiyan (SSA), Rashtriya Madhyamik Shiksha Abhiyan (RMSA), and Teacher Education (TE) into an integrated scheme on school education?",
      options: ["Integrated Scheme on School Education", "Jan ShikshanSansthan (JSS)", "YuvaSahakar-Cooperative Enterprise Support and Innovation Scheme", "National Rural Swaraj Campaign"],
      correctAnswerIndex: 0,
      explanation: "The Integrated Scheme on School Education aims to merge Sarva Shiksha Abhiyan (SSA), Rashtriya Madhyamik Shiksha Abhiyan (RMSA), and Teacher Education (TE) into an integrated initiative for comprehensive school education development.",
    ),

    Question(
      questionText: "Under which scheme, launched by the Ministry of Petroleum and Natural Gas, are LPG connections provided to families below the poverty line to protect women's health and prevent pollution?",
      options: ["Atal Pension Yojana(APY)", "Sakhi One Stop Centre", "Pradhan Mantri Ujjwala Yojana", "Pradhan Mantri Jan-Dhan Yojana (PMJDY)"],
      correctAnswerIndex: 2,
      explanation: "Pradhan Mantri Ujjwala Yojana (PMUY) offers LPG connections to families below the poverty line, aiming to safeguard women's health and promote a healthier atmosphere in their households.",
    ),

    Question(
      questionText: "Which scheme, linked to the Nirbhaya fund, provides integrated support and assistance under one roof to women affected by violence, including medical, legal, psychological, and police help?",
      options: ["Atal BimitVyakti Kalyan Yojna (ABVKY)", "Pradhan Mantri AnnadataAaySanrakshan Abhiyan (PM-AASHA)", "Sakhi One Stop Centre", "Unnat Bharat Abhiyan 2.0"],
      correctAnswerIndex: 2,
      explanation: "Sakhi One Stop Centre, sponsored under the Nirbhaya fund, offers integrated support and assistance under one roof to women affected by violence, providing various forms of aid.",
    ),

    Question(
      questionText: "Which scheme focuses on providing vocational skills to non-literate, neo-literates, and school dropouts, identifying skills with market demand in the region of their establishment?",
      options: ["Atal Pension Yojana(APY)", "Beti Bachao, Beti Padhao (BBBP)", "Jan ShikshanSansthan (JSS)", "Unnat Bharat Abhiyan 2.0"],
      correctAnswerIndex: 2,
      explanation: "Jan ShikshanSansthan (JSS) aims to offer vocational skills to non-literate, neo-literates, and school dropouts, identifying market-driven skills in their respective regions.",
    ),

    Question(
      questionText: "Which initiative aims to link higher education institutions with at least five villages for the economic and social development of these communities using their knowledge base?",
      options: ["Unnat Bharat Abhiyan 2.0", "BetiBachao, BetiPadhao (BBBP)", "Pradhan Mantri Jan-Dhan Yojana (PMJDY)", "BetMantri Vaya Vandana Yojana (PMWY)"],
      correctAnswerIndex: 0,
      explanation: "Unnat Bharat Abhiyan 2.0 is an initiative aiming to link higher education institutions with at least five villages, fostering economic and social development using their knowledge base.",
    ),

    Question(
      questionText: "Which scheme offers an assured pension of ₹ 3,000 per month for workers engaged in the unorganized sector, focusing on those aged between 18-40 years?",
      options: ["RashtriyaYuvaSashaktikaranKaryakram Scheme", "Pradhan Mantri Matru Vandana Yojana (PMMVY)", "Pradhan Mantri Shram Yogi Maan-dhan (PM-SYM)", "National Rural Swaraj Campaign"],
      correctAnswerIndex: 2,
      explanation: "Pradhan Mantri Shram Yogi Maan-dhan (PM-SYM) offers an assured pension of ₹ 3,000 per month for workers in the unorganized sector, specifically targeting individuals aged between 18-40 years.",
    ),

    Question(
      questionText: "Which scheme, introduced by the Ministry of Youth Affairs & Sports, aims to engage youth in nation-building activities and develop their personality and leadership qualities?",
      options: ["Pradhan Mantri Jan Dhan Yojana", "Integrated Scheme on School Education", "YuvaSahakar-Cooperative Enterprise Support and Innovation Scheme", "RashtriyaYuvaSashaktikaranKaryakram Scheme"],
      correctAnswerIndex: 3,
      explanation: "The RashtriyaYuvaSashaktikaranKaryakram Scheme, under the Ministry of Youth Affairs & Sports, focuses on engaging youth in nation-building activities and fostering their personality and leadership qualities.",
    ),

    Question(
      questionText: "Which scheme provides industry apprenticeship opportunities to general graduates, aiming to enhance their employability by offering on-the-job work exposure and stipends?",
      options: ["YuvaSahakar-Cooperative Enterprise Support and Innovation Scheme", "Jan ShikshanSansthan (JSS)", "SHREYAS Scheme 2019", "National Rural Swaraj Campaign"],
      correctAnswerIndex: 2,
      explanation: "SHREYAS Scheme 2019 provides industry apprenticeship opportunities to general graduates, enhancing their employability through on-the-job work exposure and stipends.",
    ),

    Question(
      questionText: "Which scheme, aimed at cooperative business ventures, is linked to the ₹ 1000 crore ‘Cooperative Start-up and Innovation Fund’ created by the National Cooperative Development Corporation (NCDC)?",
      options: ["Pradhan Mantri KisanSamman Nidhi (PM-KISAN)", "YuvaSahakar-Cooperative Enterprise Support and Innovation Scheme", "Integrated Scheme on School Education", "Pradhan Mantri Vaya Vandana Yojana (PMWY)"],
      correctAnswerIndex: 1,
      explanation: "YuvaSahakar-Cooperative Enterprise Support and Innovation Scheme, introduced by the National Cooperative Development Corporation (NCDC), aims to encourage youth participation in cooperative business ventures linked to the ₹ 1000 crore ‘Cooperative Start-up and Innovation Fund’.",
    ),

    Question(
      questionText: "What are the three fundamental principles associated with Universal Basic Income (UBI)?",
      options: ["Equity, Transparency, and Efficiency", "Universality, Conditions, and Directives", "Universality, Unconditionality, and Agency", "Flexibility, Government Support, and Liberty"],
      correctAnswerIndex: 2,
      explanation: "Universal Basic Income (UBI) is based on the principles of Universality, Unconditionality, and Agency, providing support through cash transfers respecting the recipients' choices.",
    ),

    Question(
      questionText: "What is the primary challenge associated with the 'Bank-Beneficiary' connection in the 'JAM' Trinity?",
      options: ["Weakness in technology adoption", "Overabundance of agents or service posts", "Quality and convenience of service delivery", "Last-mile financial connectivity"],
      correctAnswerIndex: 3,
      explanation: "The 'Bank-Beneficiary' connection remains the weakest link in the 'JAM' Trinity due to last-mile financial connectivity challenges, despite some improvements in the financial system.",
    ),

    Question(
      questionText: "What are the concerns associated with the implementation of Universal Basic Income (UBI)?",
      options: ["Gender disparity and conspicuous spending", "Administrative efficiency and political economy of universality", "Better targeting of the poor and improvement in financial inclusion", "Increased credit access and reduction in labour supply"],
      correctAnswerIndex: 1,
      explanation: "Concerns related to the implementation of UBI include administrative efficiency, political economy of universality, fiscal cost, and exposure to market risks.",
    ),

    Question(
      questionText: "What are the primary arguments in favor of Universal Basic Income (UBI)?",
      options: ["Decrease in market risks and administrative efficiency", "Moral hazard and conspicuous spending", "Improvement in financial inclusion and credit access", "Reduction in labour supply and gender disparity"],
      correctAnswerIndex: 2,
      explanation: "Arguments in favor of UBI include improvement in financial inclusion and credit access, better targeting of the poor, and insurance against shocks.",
    ),

    Question(
      questionText: "What is the primary objective of Universal Basic Income (UBI)?",
      options: [
        "To encourage government dependency",
        "To reduce poverty and vulnerability",
        "To increase administrative burden",
        "To promote conspicuous spending"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary objective of Universal Basic Income (UBI) is to reduce poverty and vulnerability by providing a basic income to individuals.",
    ),

    Question(
      questionText: "What are the three components that characterize Universal Basic Income (UBI)?",
      options: [
        "Equality, Efficiency, Liberty",
        "Universality, Conditions, Flexibility",
        "Universality, Unconditionality, Agency",
        "Transparency, Accountability, Accessibility"
      ],
      correctAnswerIndex: 2,
      explanation: "Universal Basic Income (UBI) comprises the principles of Universality, Unconditionality, and Agency, offering support through cash transfers respecting recipients' choices.",
    ),

    Question(
      questionText: "What is the 'JAM' Trinity and its role in the context of financial inclusion?",
      options: [
        "Jan Dhan, Aadhaar, Mobile - aiming for efficient healthcare",
        "Joint Account Management for rural banking",
        "Jan Dhan, Aadhaar, Money - ensuring investment opportunities",
        "Jan Dhan, Aadhaar, Mobile - enabling financial inclusion"
      ],
      correctAnswerIndex: 3,
      explanation: "The 'JAM' Trinity refers to Jan Dhan, Aadhaar, Mobile, and plays a crucial role in enabling financial inclusion by leveraging technology for better connectivity and accessibility.",
    ),

    Question(
      questionText: "What are the major arguments against Universal Basic Income (UBI)?",
      options: [
        "Improvement in financial inclusion and credit access",
        "Fiscal cost and political economy of universality",
        "Decrease in market risks and conspicuous spending",
        "Gender disparity and moral hazard"
      ],
      correctAnswerIndex: 1,
      explanation: "Arguments against UBI involve concerns like fiscal cost, political economy of universality, administrative efficiency, and exposure to market risks.",
    ),

    Question(
      questionText: "What is the primary objective of Pradhan Mantri Mudra Yojana (PMMY)?",
      options: ["Providing insurance coverage to rural households", "Providing loans to corporate entities", "Providing loans to non-corporate, non-farm small/micro enterprises", "Establishing technology-enabled Direct Benefit Transfers (DBT)"],
      correctAnswerIndex: 2,
      explanation: "Pradhan Mantri Mudra Yojana (PMMY) aims to provide loans up to 10 lakh to non-corporate, non-farm small/micro enterprises.",
    ),

    Question(
      questionText: "What is the purpose of the JAM Trinity (Jan Dhan, Aadhaar, Mobile) in the Indian economy?",
      options: ["Providing subsidized food to rural areas", "Implementing large-scale, real-time Direct Benefit Transfers (DBT)", "Promoting employment opportunities in urban sectors", "Enhancing agricultural productivity"],
      correctAnswerIndex: 1,
      explanation: "The JAM Trinity aims to implement large-scale, real-time Direct Benefit Transfers (DBT) to improve the economic lives of India’s poor and reduce leakages.",
    ),

    Question(
      questionText: "Which scheme offers loans classified as 'Shishu', 'Kishore', and 'Tarun' to signify different stages of growth and funding needs of beneficiaries?",
      options: ["Pradhan Mantri Jan-Dhan Yojana (PMJDY)", "Pradhan Mantri Mudra Yojana (PMMY)", "Atal Pension Yojana (APY)", "Spreading JAM across Indian Economy"],
      correctAnswerIndex: 1,
      explanation: "Pradhan Mantri Mudra Yojana (PMMY) offers loans classified as 'Shishu', 'Kishore', and 'Tarun' to signify different stages of growth and funding needs of the beneficiaries.",
    ),

    Question(
      questionText: "What challenges are associated with the implementation of the JAM Trinity in India?",
      options: ["Identifying beneficiaries, transferring money, and banking within 5 km of households", "Ensuring sufficient technology, funding, and government support", "Overcoming agricultural challenges, inadequate infrastructure, and political discretion", "Improving financial literacy, managing market distortions, and reducing leakages"],
      correctAnswerIndex: 0,
      explanation: "The challenges include identifying beneficiaries, transferring money, and ensuring banking within 5 km of households to successfully implement the JAM Trinity in India.",
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
    home: p_sc(),
  ));
}

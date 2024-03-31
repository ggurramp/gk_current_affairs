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

class banking extends StatefulWidget {
  final String? userIdentifier;

  banking({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<banking> createState() => _bankingState();
}

class _bankingState extends State<banking> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "What is the primary role of the Reserve Bank of India (RBI) in the Indian economy?",
      options: ["Acting as a financial intermediary", "Regulating the banking system", "Providing loans to businesses", "Managing foreign banks in India"],
      correctAnswerIndex: 1,
      explanation: "The RBI serves as the supreme monetary and banking authority in India, controlling the banking system and regulating its operations.",
    ),

    Question(
      questionText: "What distinguishes scheduled banks from non-scheduled banks in India?",
      options: ["Their size", "Ownership structure", "Listed under RBI's schedule", "Services provided"],
      correctAnswerIndex: 2,
      explanation: "Scheduled banks are listed under the second schedule of the RBI Act, 1934, meeting specific criteria set by the Reserve Bank of India.",
    ),

    Question(
      questionText: "What was a major impact of the banking sector reforms initiated in 1991?",
      options: ["Increased government control", "Greater regulations on interest rates", "Liberal entry for private and foreign banks", "Reduced number of public sector banks"],
      correctAnswerIndex: 2,
      explanation: "The reforms led to liberal entry for private and foreign banks, allowing entities like ICICI, HDFC, and Citi group to operate alongside public sector banks.",
    ),

    Question(
      questionText: "What does the term 'Base Rate' signify in the banking sector reforms context?",
      options: ["A fixed lending rate for all customers", "A minimum interest rate for lending", "A benchmark for deposit rates", "A variable rate for government loans"],
      correctAnswerIndex: 1,
      explanation: "Base Rate is the minimum interest rate banks could lend below, ensuring transparency and fair lending practices.",
    ),

    Question(
      questionText: "What was the primary aim of standardizing income recognition and asset classification norms in the banking sector?",
      options: ["Increase transparency", "Enhance profits", "Reduce competition", "Lower interest rates"],
      correctAnswerIndex: 0,
      explanation: "Standardization aimed at increasing transparency by establishing uniform norms for asset classification, ensuring a clear view of a bank's good and bad assets.",
    ),

    Question(
      questionText: "What is the purpose of 'Capital Adequacy' norms in the banking sector?",
      options: ["Minimize bank profits", "Ensure banks have sufficient funds for risks", "Limit lending capacity", "Encourage risky investments"],
      correctAnswerIndex: 1,
      explanation: "Capital Adequacy norms ensure banks maintain a minimum level of their own funds to cover risks associated with lending.",
    ),

    Question(
      questionText: "What is the purpose of the Capital Adequacy norms as per the Basel framework?",
      options: ["To ensure banks have minimum own funds to cover risks", "To maximize bank profits", "To restrict lending capacity", "To encourage risky investments"],
      correctAnswerIndex: 0,
      explanation: "Capital Adequacy norms ensure banks maintain a minimum level of their own funds to cover risks associated with lending.",
    ),

    Question(
      questionText: "What components constitute the core capital (Tier I) and supplementary capital (Tier II) for banks?",
      options: ["Shareholders' funds and retained profits", "Provisions for standard assets and long-term bonds", "Deposits and reserves", "Subordinated debt and revaluation of assets"],
      correctAnswerIndex: 0,
      explanation: "The core capital (Tier I) includes shareholders' funds and retained profits, while the supplementary capital (Tier II) consists of provisions for standard assets and long-term bonds.",
    ),

    Question(
      questionText: "Why does the RBI use tools like Cash Reserve Ratio (CRR) and Statutory Liquidity Ratio (SLR) in liquidity management?",
      options: ["To increase bank profits", "To decrease lending", "To raise additional funds for RBI", "To manage liquidity in the economy"],
      correctAnswerIndex: 3,
      explanation: "The RBI employs tools like CRR and SLR to manage liquidity in the economy by controlling the amount of funds banks need to keep with the RBI and in specified assets.",
    ),

    Question(
      questionText: "What role does the Repo rate play in the RBI's liquidity management tools?",
      options: ["It is the rate at which RBI lends to banks against eligible securities", "It regulates time deposits in banks", "It influences government securities' investments", "It measures banks' reserve requirements"],
      correctAnswerIndex: 0,
      explanation: "Repo rate is the rate at which the RBI lends money to banks against eligible securities, used as a tool for managing short-term liquidity.",
    ),

    Question(
      questionText: "How does the Marginal Standing Facility (MSF) differ from the Repo rate?",
      options: ["MSF rate is lower than the Repo rate", "MSF applies to long-term liquidity", "MSF is used for emergency situations when inter-bank liquidity dries up", "MSF is determined by commercial banks"],
      correctAnswerIndex: 2,
      explanation: "MSF is a facility used by banks to borrow from the RBI in emergency situations when inter-bank liquidity dries up, pegged higher than the Repo rate.",
    ),

    Question(
      questionText: "Why does the RBI frequently review rates like CRR, SLR, and repo rates?",
      options: ["To increase inflation", "To control liquidity", "To reduce bank profits", "To encourage risky investments"],
      correctAnswerIndex: 1,
      explanation: "The RBI reviews rates like CRR, SLR, and repo rates to control liquidity in the economy and ensure stability, while also addressing concerns about inflation.",
    ),

    Question(
      questionText: "What sectors are included in the priority sector lending mandated by the Reserve Bank of India?",
      options: ["Agriculture only", "Micro, Small and Medium Enterprises (MSMEs) only", "Multiple sectors including agriculture, education, and housing", "Foreign banks with more than 20 branches"],
      correctAnswerIndex: 2,
      explanation: "Priority sector lending by banks includes various sectors such as agriculture, education, housing, renewable energy, among others, as mandated by the RBI.",
    ),

    Question(
      questionText: "What are the targets for banks under the priority sector lending norms in India?",
      options: ["20% of Adjusted Net Bank Credit for agriculture", "10% advances to the weaker section", "36% lending to priority sector for foreign banks with less than 20 branches", "40% of Adjusted Net Bank Credit for the total priority sector"],
      correctAnswerIndex: 3,
      explanation: "Banks are required to lend at least 40% of their Adjusted Net Bank Credit (ANBC) or Credit Equivalent Amount of Off-Balance Sheet Exposure to the total priority sector, as per the RBI guidelines.",
    ),

    Question(
      questionText: "What is the purpose of the Rural Infrastructure Development Fund (RIDF)?",
      options: ["To promote urban infrastructure projects", "To assist state governments in ongoing rural infrastructure projects", "To finance large-scale industries", "To fund foreign banks in India"],
      correctAnswerIndex: 1,
      explanation: "The RIDF is established to provide loans to state governments and state-owned corporations to support ongoing rural infrastructure projects.",
    ),

    Question(
      questionText: "What are some of the activities covered under the RIDF in India?",
      options: ["Activities related to urban development", "Projects in primary education and health sector", "Projects in private banking sectors", "Activities related to foreign investments"],
      correctAnswerIndex: 1,
      explanation: "RIDF covers activities such as rural drinking water schemes, soil conservation, rural health centers, primary schools, among others, as part of its scope.",
    ),

    Question(
      questionText: "What challenges do public sector banks in India face despite financial sector reforms?",
      options: ["Excessive profits and growth", "Technological advancements", "Issues related to manpower, risk assessment, and outreach", "Improved financial inclusion"],
      correctAnswerIndex: 2,
      explanation: "Public sector banks in India face challenges related to excessive manpower, ageing workforce, and issues in risk assessment and outreach despite financial sector reforms.",
    ),

    Question(
      questionText: "What role do public sector banks play in India's economy according to the provided text?",
      options: ["They hinder economic growth", "They focus only on commercial interests", "They serve as the backbone of the growing economy", "They aim to become global banks"],
      correctAnswerIndex: 2,
      explanation: "Public sector banks are seen as crucial as they serve as the backbone of an ever-growing economy, despite facing certain challenges.",
    ),

    Question(
      questionText: "What is the primary objective of financial inclusion?",
      options: ["Providing banking services to the affluent", "Offering technology-based services", "Extending banking services to the masses, especially the poor, at affordable prices", "Focusing solely on credit inclusion"],
      correctAnswerIndex: 2,
      explanation: "Financial inclusion aims to provide banking services to the masses, especially the poor, at affordable prices.",
    ),

    Question(
      questionText: "What was the purpose of the committee chaired by Dr. C. Rangarajan in 2006?",
      options: ["To evaluate financial inclusion strategies", "To study patterns of exclusion from financial services and recommend measures for financial inclusion", "To analyze the performance of public sector banks", "To explore technology-based financial services"],
      correctAnswerIndex: 1,
      explanation: "The committee chaired by Dr. C. Rangarajan studied patterns of exclusion from financial services and suggested steps needed for financial inclusion.",
    ),

    Question(
      questionText: "What did the committee led by Dr. C. Rangarajan define as financial inclusion?",
      options: ["Providing affordable credit to all income groups", "Ensuring access to financial services for marginalized groups at any cost", "Enabling access to financial services and timely credit for vulnerable groups at an affordable cost", "Exclusively focusing on credit services"],
      correctAnswerIndex: 2,
      explanation: "The committee defined financial inclusion as enabling access to financial services and timely credit for vulnerable groups at an affordable cost.",
    ),

    Question(
      questionText: "What are the key functions of Small Finance Banks (SFBs)?",
      options: ["Conducting extensive lending activities", "Accepting deposits and lending to specific sections without operational limitations", "Operating solely in restricted regions", "Acting as subsidiaries of larger banks"],
      correctAnswerIndex: 1,
      explanation: "SFBs primarily focus on accepting deposits and lending to unserved sections, without operational restrictions in their areas of operation.",
    ),

    Question(
      questionText: "What distinguishes Payment Banks from other banks in terms of their activities?",
      options: ["Payment Banks focus on credit card services", "Payment Banks offer services related to insurance and mutual funds", "Payment Banks are allowed to engage in lending activities", "Payment Banks undertake only restricted banking functions"],
      correctAnswerIndex: 3,
      explanation: "Payment Banks undertake limited banking functions such as accepting deposits, payments, remittance services, but are not permitted to undertake lending activities.",
    ),

    Question(
      questionText: "What is the significance of Domestic- Systemically Important Banks (DSIBs)?",
      options: ["DSIBs focus on small and medium enterprises", "DSIBs are banks that are 'Too Big To Fail' due to their size, activities, and complexity", "DSIBs are exclusively foreign-based banks", "DSIBs operate in specific regions"],
      correctAnswerIndex: 1,
      explanation: "DSIBs are considered 'Too Big To Fail' due to their size, cross-jurisdictional activities, and complexity, making them significant entities in the banking sector.",
    ),

    Question(
      questionText: "What are the primary objectives of the Sovereign Gold Bonds and Gold Monetisation Schemes?",
      options: [
        "To increase the demand for physical gold",
        "To reduce reliance on imported gold and shift investments into financial savings",
        "To encourage households to hoard gold",
        "To limit access to gold investments for institutional investors"
      ],
      correctAnswerIndex: 1,
      explanation: "The main objectives of the schemes are to reduce the demand for physical gold and shift a part of the gold imported every year for investment purposes into financial savings.",
    ),

    Question(
      questionText: "What are the investment limits per person per fiscal year for Sovereign Gold Bonds?",
      options: [
        "Minimum of 1 gram and maximum of 100 grams",
        "Minimum of 5 grams and maximum of 1000 grams",
        "Minimum of 2 grams and maximum of 500 grams",
        "Minimum of 10 grams and maximum of 100 grams"
      ],
      correctAnswerIndex: 2,
      explanation: "The minimum and maximum investment limits for Sovereign Gold Bonds are two grams and 500 grams of gold per person per fiscal year, respectively.",
    ),

    Question(
      questionText: "What are the key objectives of the Gold Monetisation Scheme?",
      options: [
        "To encourage import of more gold for industrial use",
        "To decrease the availability of gold for jewellers",
        "To mobilize idle gold held by households and institutions, provide raw material for the gems and jewellery sector, and reduce reliance on imported gold over time",
        "To primarily promote gold hoarding"
      ],
      correctAnswerIndex: 2,
      explanation: "The key objectives of the Gold Monetisation Scheme are to mobilize idle gold held by households and institutions, provide raw material for the gems and jewellery sector, and reduce reliance on imported gold over time.",
    ),

    Question(
      questionText: "What is the minimum quantity of gold proposed for customers to deposit under the Gold Monetisation Scheme?",
      options: [
        "15 grams",
        "25 grams",
        "30 grams",
        "50 grams"
      ],
      correctAnswerIndex: 2,
      explanation: "The proposed minimum quantity of gold for customers to deposit under the Gold Monetisation Scheme is 30 grams.",
    ),

    Question(
      questionText: "What exemptions are available for Gold Savings Account under the Gold Monetisation Scheme?",
      options: [
        "Exemption from capital gains tax only",
        "Exemption from wealth tax only",
        "Exemption from capital gains tax, wealth tax, and income tax",
        "No exemptions are available"
      ],
      correctAnswerIndex: 2,
      explanation: "Gold Savings Account under the Gold Monetisation Scheme is exempt from capital gains tax, wealth tax, and income tax.",
    ),

    Question(
      questionText: "What is the approximate value of idle gold held by households and institutions, according to the government's estimation?",
      options: [
        "Rs 20,000 crores",
        "Rs 40,000 crores",
        "Rs 60,000 crores",
        "Rs 80,000 crores"
      ],
      correctAnswerIndex: 2,
      explanation: "The government estimates the idle gold held by households and institutions to be worth up to Rs 60 lakh crore.",
    ),


    Question(
    questionText: "How does the RBI classify NPAs based on the period of overdue payments?",
    options: [
    "Substandard, Bad, and Unrecoverable assets",
    "Substandard, Doubtful, and Loss assets",
    "Good, Doubtful, and Bad debts",
    "Standard, Recoverable, and Unsalvageable assets"
    ],
    correctAnswerIndex: 1,
    explanation: "The RBI classifies NPAs into Substandard, Doubtful, and Loss assets based on the duration of overdue payments.",
    ),

    Question(
      questionText: "What is the status of NPAs in public sector banks compared to private sector banks?",
      options: [
        "Public sector banks have a lower percentage of NPAs than private sector banks.",
        "Private sector banks are more affected by NPAs than public sector banks.",
        "Both public and private sector banks have similar levels of NPAs.",
        "NPAs have no impact on the banking sector."
      ],
      correctAnswerIndex: 1,
      explanation: "Public sector banks, which hold close to 70% market share of loans, are more affected by NPAs compared to their private sector peers.",
    ),

    Question(
      questionText: "What is the primary objective of the SARFAESI Act?",
      options: [
        "To encourage hoarding of assets by financial institutions",
        "To address the problem of NPAs through different processes and mechanisms",
        "To limit the activities of Asset Securitization Companies",
        "To create hurdles for banks in enforcing security interests"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary objective of the SARFAESI Act is to address the problem of NPAs or bad assets through different processes and mechanisms.",
    ),

    Question(
      questionText: "Under the SARFAESI Act, what powers do banks and financial institutions have concerning immovable property?",
      options: [
        "No powers to enforce recovery of debt",
        "To seize immovable property without any legal procedures",
        "To take over hypothecated or charged immovable property to enforce the recovery of debt",
        "To use immovable property as collateral for new loans"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the SARFAESI Act, banks and financial institutions have the power to take over the immovable property that is hypothecated or charged to enforce the recovery of debt.",
    ),

    Question(
      questionText: "What is the significance of the SARFAESI Act concerning legal procedures in enforcing security interests?",
      options: [
        "No impact on legal procedures; it bypasses the legal system entirely",
        "It enforces security interests with Court’s intervention",
        "It does not provide any power to banks or financial institutions",
        "It restricts banks from taking legal action"
      ],
      correctAnswerIndex: 1,
      explanation: "The SARFAESI Act enforces security interest without Court’s intervention, streamlining the process for banks and financial institutions to recover debts.",
    ),

    Question(
      questionText: "How does the SARFAESI Act aim to transfer NPAs to asset reconstruction companies?",
      options: [
        "Through direct transfer without any formalities",
        "By providing guidelines for the transfer of NPAs to these companies for asset reconstruction",
        "It prohibits the transfer of NPAs to asset reconstruction companies",
        "By making the process extremely lengthy and complex"
      ],
      correctAnswerIndex: 1,
      explanation: "The SARFAESI Act provides guidelines for the transfer of NPAs to asset reconstruction companies for the reconstruction of assets.",
    ),

    Question(
      questionText: "What is the primary role of the Insolvency and Bankruptcy Board of India (IBBI)?",
      options: [
        "To regulate only Insolvency Professionals",
        "To regulate Insolvency Professionals, Insolvency Professional Agencies, and Information Utilities",
        "To solely focus on corporate insolvency resolution",
        "To monitor corporate liquidation exclusively"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary role of IBBI is to regulate Insolvency Professionals, Insolvency Professional Agencies, and Information Utilities under the Insolvency and Bankruptcy Code, 2016.",
    ),

    Question(
      questionText: "What is the main objective of the Indradhanush Plan announced by the Government?",
      options: [
        "To regulate the functioning of public sector banks",
        "To infuse capital into public sector banks and revamp their functioning",
        "To merge public sector banks into a unified entity",
        "To increase the market share of private sector banks"
      ],
      correctAnswerIndex: 1,
      explanation: "The main objective of the Indradhanush Plan was to infuse capital into public sector banks and revamp their functioning.",
    ),


    Question(
      questionText: "What does the proposed PARA (Public Sector Asset Rehabilitation Agency) aim to address?",
      options: [
        "To handle minor cases of NPA in private sector banks",
        "To resolve the largest and most challenging cases of NPAs in public sector banks",
        "To oversee the merger of public sector banks",
        "To encourage public sector banks to issue Employee Stock Ownership Plans (ESOPs)"
      ],
      correctAnswerIndex: 1,
      explanation: "The PARA aims to address the largest and most difficult cases of NPAs in public sector banks, making politically tough decisions to reduce debt.",
    ),

    Question(
      questionText: "What problem does the Economic Survey highlight regarding NPAs in India?",
      options: [
        "NPAs have reduced significantly in recent years",
        "NPAs only affect private sector banks",
        "NPAs have led to a rise in credit and investment",
        "NPAs have become a serious concern affecting credit growth and investment"
      ],
      correctAnswerIndex: 3,
      explanation: "The Economic Survey suggests that NPAs have become a serious concern affecting credit growth and investment in India.",
    ),

    Question(
      questionText: "Which banks were merged with the State Bank of India (SBI) according to the government's approval?",
      options: [
        "State Bank of Baroda, State Bank of Patiala, State Bank of Travancore",
        "State Bank of Hyderabad, State Bank of Bikaner & Jaipur, State Bank of Mysore",
        "State Bank of India, State Bank of Bikaner & Jaipur, State Bank of Patiala",
        "State Bank of Hyderabad, State Bank of Mysore, State Bank of Travancore"
      ],
      correctAnswerIndex: 1,
      explanation: "State Bank of Hyderabad, State Bank of Bikaner & Jaipur, and State Bank of Mysore were merged with the State Bank of India according to the government's approval.",
    ),

    Question(
      questionText: "What significant change occurred after the merger of the Bharatiya Mahila Bank with SBI?",
      options: [
        "SBI ceased to exist",
        "SBI was restructured into various subsidiaries",
        "SBI's size and reach expanded with the inclusion of Bharatiya Mahila Bank",
        "Bharatiya Mahila Bank became an independent entity"
      ],
      correctAnswerIndex: 2,
      explanation: "The merger led to the expansion of SBI's size and reach with the inclusion of Bharatiya Mahila Bank.",
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
    home: banking(),
  ));
}

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

class panchayatRaj extends StatefulWidget {
  final String? userIdentifier;

  panchayatRaj({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<panchayatRaj> createState() => _panchayatRajState();
}

class _panchayatRajState extends State<panchayatRaj> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//39 . PANCHAYAT RAJ

    Question(
      questionText: "Who was the chairman of the Balwant Rai Mehta Committee, which recommended the establishment of the Panchayati Raj system?",
      options: ["S.D. Mishra", "G. Ramachandran", "Balwant Rai Mehta", "V.R. Reo"],
      correctAnswerIndex: 2,
      explanation: "Balwant Rai Mehta served as the chairman of the committee that recommended the establishment of the Panchayati Raj system in India.",
    ),

    Question(
      questionText: "Which state was the first to establish Panchayati Raj, inaugurated by the prime minister on October 2, 1959, in Nagaur district?",
      options: ["Andhra Pradesh", "Rajasthan", "Maharashtra", "Tamil Nadu"],
      correctAnswerIndex: 1,
      explanation: "Rajasthan was the first state to establish Panchayati Raj. The scheme was inaugurated by the prime minister on October 2, 1959, in Nagaur district.",
    ),

    Question(
      questionText: "According to the recommendations of the Balwant Rai Mehta Committee, what is the executive body at the block level in the three-tier Panchayati Raj system?",
      options: ["Gram Panchayat", "Panchayat Samiti", "Zila Parishad", "District Collector"],
      correctAnswerIndex: 1,
      explanation: "In the three-tier Panchayati Raj system recommended by the Balwant Rai Mehta Committee, the Panchayat Samiti serves as the executive body at the block level.",
    ),

    Question(
      questionText: "Which year saw the acceptance of the recommendations of the Balwant Rai Mehta Committee by the National Development Council?",
      options: ["1957", "1958", "1960", "1962"],
      correctAnswerIndex: 1,
      explanation: "The recommendations of the Balwant Rai Mehta Committee were accepted by the National Development Council in January 1958.",
    ),

    Question(
      questionText: "Who chaired the committee on panchayati raj institutions appointed by the Janata Government in December 1977?",
      options: ["Balwant Rai Mehta", "Ashok Mehta", "V.R. Reo", "S.D. Mishra"],
      correctAnswerIndex: 1,
      explanation: "The committee on panchayati raj institutions appointed by the Janata Government in December 1977 was chaired by Ashok Mehta.",
    ),

    Question(
      questionText: "According to the recommendations of the Ashok Mehta Committee, what is the proposed system of panchayati raj at the district level?",
      options: ["Three-tier system", "Two-tier system", "Four-tier system", "Single-tier system"],
      correctAnswerIndex: 1,
      explanation: "The Ashok Mehta Committee recommended replacing the three-tier system with a two-tier system at the district level.",
    ),

    Question(
      questionText: "What is the main responsibility assigned to the Zila Parishad according to the recommendations of the Ashok Mehta Committee?",
      options: ["Conducting elections", "Taxation powers", "Planning at the district level", "Social audit"],
      correctAnswerIndex: 2,
      explanation: "According to the Ashok Mehta Committee, the Zila Parishad should be the executive body responsible for planning at the district level.",
    ),

    Question(
      questionText: "How did the collapse of the Janata Government impact the recommendations of the Ashok Mehta Committee at the central level?",
      options: ["Recommendations were implemented", "No action could be taken", "Revised recommendations were proposed", "States rejected the recommendations"],
      correctAnswerIndex: 1,
      explanation: "Due to the collapse of the Janata Government before the completion of its term, no action could be taken on the recommendations of the Ashok Mehta Committee at the central level.",
    ),
    Question(
      questionText: "Who chaired the Committee to review the existing Administrative Arrangements for Rural Development and Poverty Alleviation Programmes in 1985?",
      options: ["G.V.K. Rao", "Ashok Mehta", "Hanumantha Rao", "Balwant Rai Mehta"],
      correctAnswerIndex: 0,
      explanation: "The Committee to review the existing Administrative Arrangements for Rural Development and Poverty Alleviation Programmes in 1985 was chaired by G.V.K. Rao.",
    ),

    Question(
      questionText: "According to the G.V.K. Rao Committee, what level should be of pivotal importance in the scheme of democratic decentralization?",
      options: ["State level", "Village level", "District level", "Block level"],
      correctAnswerIndex: 2,
      explanation: "The G.V.K. Rao Committee emphasized that the district level, specifically the Zila Parishad, should be of pivotal importance in the scheme of democratic decentralization.",
    ),

    Question(
      questionText: "What role did the G.V.K. Rao Committee assign to the Panchayati Raj institutions in local planning and development?",
      options: ["Limited role", "Advisory role", "Leading role", "No role"],
      correctAnswerIndex: 2,
      explanation: "The G.V.K. Rao Committee assigned a leading role to the Panchayati Raj in local planning and development as part of the decentralized system of field administration.",
    ),

    Question(
      questionText: "How did the recommendations of the G.V.K. Rao Committee differ from those of the Hanumantha Rao Committee regarding the role of the District Collector in decentralized planning?",
      options: ["G.V.K. Rao recommended a greater role for the District Collector", "Both committees had similar recommendations", "Hanumantha Rao recommended a greater role for the District Collector", "Neither committee mentioned the District Collector"],
      correctAnswerIndex: 0,
      explanation: "The G.V.K. Rao Committee recommended a reduction in the developmental role of the District Collector and assigned a major role to the Panchayati Raj in development administration, differing from the Hanumantha Rao Committee.",
    ),
    Question(
      questionText: "Who chaired the committee appointed by the Rajiv Gandhi government in 1986 to prepare a concept paper on 'Revitalization of Panchayati Raj Institutions for Democracy and Development'?",
      options: ["L.M. Singhvi", "R.K. Thungon", "P.K. Thungon", "Rajiv Gandhi"],
      correctAnswerIndex: 0,
      explanation: "The committee appointed by the Rajiv Gandhi government in 1986 was chaired by L.M. Singhvi to prepare a concept paper on 'Revitalization of Panchayati Raj Institutions for Democracy and Development'.",
    ),

    Question(
      questionText: "According to the recommendations of the L.M. Singhvi Committee, what should be added to the Constitution of India to protect and preserve the identity and integrity of Panchayati Raj institutions?",
      options: ["New chapter", "Amendment", "Preamble", "Directive principles"],
      correctAnswerIndex: 0,
      explanation: "The L.M. Singhvi Committee recommended adding a new chapter to the Constitution of India to protect and preserve the identity and integrity of Panchayati Raj institutions.",
    ),

    Question(
      questionText: "What was the significance of the Gram Sabha according to the recommendations of the L.M. Singhvi Committee?",
      options: ["Financial control", "Direct democracy embodiment", "Election supervision", "Development planning"],
      correctAnswerIndex: 1,
      explanation: "The L.M. Singhvi Committee emphasized the importance of the Gram Sabha, calling it the embodiment of direct democracy.",
    ),

    Question(
      questionText: "What recommendation did the Thungon Committee make regarding the tenure of Panchayati Raj bodies?",
      options: ["Fixed tenure of five years", "Indefinite tenure", "Tenure determined by the state government", "Annual tenure"],
      correctAnswerIndex: 0,
      explanation: "The Thungon Committee recommended a fixed tenure of five years for Panchayati Raj bodies.",
    ),
    Question(
      questionText: "Who chaired the Committee on Policy and Programmes in 1988 to consider how Panchayati Raj institutions could be made effective?",
      options: ["V.N. Gadgil", "R.K. Thungon", "P.V. Narasimha Rao", "Y.P. Singh"],
      correctAnswerIndex: 0,
      explanation: "The Committee on Policy and Programmes in 1988 was chaired by V.N. Gadgil to consider how Panchayati Raj institutions could be made effective.",
    ),

    Question(
      questionText: "According to the recommendations of the Gadgil Committee, what should be bestowed on the Panchayati Raj institutions to protect and preserve them?",
      options: ["Constitutional amendment", "New laws", "Financial resources", "Administrative support"],
      correctAnswerIndex: 0,
      explanation: "The Gadgil Committee recommended bestowing a constitutional status on the Panchayati Raj institutions to protect and preserve them.",
    ),

    Question(
      questionText: "What recommendation did the Gadgil Committee make regarding the term of Panchayati Raj institutions?",
      options: ["Indefinite term", "Five-year term", "Three-year term", "Ten-year term"],
      correctAnswerIndex: 1,
      explanation: "The Gadgil Committee recommended fixing the term of Panchayati Raj institutions at five years.",
    ),

    Question(
      questionText: "What was the fate of the 64th Constitutional Amendment Bill introduced by the Rajiv Gandhi government in 1989 to constitutionalize Panchayati Raj institutions?",
      options: ["Passed in both houses", "Approved by Rajya Sabha", "Not approved by Rajya Sabha", "Vetoed by the President"],
      correctAnswerIndex: 2,
      explanation: "The 64th Constitutional Amendment Bill introduced by the Rajiv Gandhi government in 1989 was not approved by the Rajya Sabha.",
    ),

    Question(
      questionText: "What is the significance of the 73rd Amendment Act of 1992?",
      options: ["It added a new chapter to the Constitution entitled 'The Panchayats'", "It introduced a new directive principle on self-government", "It established a State Finance Commission", "It granted special status to urban local bodies"],
      correctAnswerIndex: 0,
      explanation: "The 73rd Amendment Act of 1992 added a new Part IX to the Constitution entitled 'The Panchayats', consisting of provisions from Articles 243 to 243-O.",
    ),

    Question(
      questionText: "What is the Gram Sabha according to the 73rd Amendment Act?",
      options: ["A legislative body at the district level", "A village assembly of registered voters", "A state-level administrative committee", "A constitutional commission for reservations"],
      correctAnswerIndex: 1,
      explanation: "According to the 73rd Amendment Act, the Gram Sabha is a village assembly consisting of all registered voters in the area of a Panchayat at the village level.",
    ),

    Question(
      questionText: "How long is the term of office for a Panchayat at every level according to the 73rd Amendment Act?",
      options: ["Indefinite term", "Two years", "Three years", "Five years"],
      correctAnswerIndex: 3,
      explanation: "According to the 73rd Amendment Act, a Panchayat at every level has a five-year term of office from the date of its first meeting.",
    ),

    Question(
      questionText: "What provision does the 73rd Amendment Act make for the reservation of seats for women in Panchayats?",
      options: ["No provision for reservation", "Reservation of half the seats", "Reservation of one-third of the seats", "Reservation of two-thirds of the seats"],
      correctAnswerIndex: 2,
      explanation: "The 73rd Amendment Act provides for the reservation of not less than one-third of the total number of seats for women in Panchayats at each level.",
    ),
    Question(
      questionText: "Who has the superintendence, direction, and control of the preparation of electoral rolls and the conduct of elections to the panchayats?",
      options: ["District Collector", "Governor", "State Election Commission", "Chief Minister"],
      correctAnswerIndex: 2,
      explanation: "The superintendence, direction, and control of the preparation of electoral rolls and the conduct of elections to the panchayats are vested in the State Election Commission.",
    ),

    Question(
      questionText: "How is the State Election Commissioner appointed?",
      options: ["Elected by the people", "Appointed by the Chief Minister", "Appointed by the Governor", "Appointed by the Prime Minister"],
      correctAnswerIndex: 2,
      explanation: "The State Election Commissioner is appointed by the Governor.",
    ),

    Question(
      questionText: "Under what conditions can the State Election Commissioner be removed from office?",
      options: ["By the Chief Minister", "By the President", "By the State Legislature", "By the Governor"],
      correctAnswerIndex: 1,
      explanation: "The State Election Commissioner can only be removed from office in the manner and on the grounds prescribed for the removal of a judge of the state high court, which involves the President's recommendation.",
    ),

    Question(
      questionText: "What matters can the state legislature make provisions for regarding elections to the panchayats?",
      options: ["Only financial matters", "Only administrative matters", "All matters related to elections", "None of the above"],
      correctAnswerIndex: 2,
      explanation: "The state legislature may make provisions for all matters related to elections to the panchayats.",
    ),
    Question(
      questionText: "What recommendations does the Finance Commission make to the Governor after reviewing the financial position of the panchayats?",
      options: [
        "Recommendations related to state laws",
        "Principles governing the distribution of net proceeds",
        "Suggestions for central funding",
        "Guidance on electoral matters"
      ],
      correctAnswerIndex: 1,
      explanation: "The Finance Commission makes recommendations related to the distribution of net proceeds of taxes, duties, tolls, and fees between the state and panchayats.",
    ),

    Question(
      questionText: "Which schedule of the Constitution contains 29 functional items within the purview of panchayats?",
      options: ["Tenth Schedule", "Eleventh Schedule", "Twelfth Schedule", "Thirteenth Schedule"],
      correctAnswerIndex: 1,
      explanation: "The Eleventh Schedule of the Constitution contains 29 functional items within the purview of panchayats.",
    ),

    Question(
      questionText: "What does the act specify regarding the validity of laws related to the delimitation of constituencies or the allotment of seats?",
      options: [
        "Courts can question the validity",
        "Courts have the authority to change laws",
        "Courts cannot question the validity",
        "Courts can only question the validity after elections"
      ],
      correctAnswerIndex: 2,
      explanation: "The act specifies that the validity of any law related to the delimitation of constituencies or the allotment of seats cannot be questioned in any court.",
    ),

    Question(
      questionText: "Which areas are exempted from the applicability of the 73rd Constitutional Amendment Act?",
      options: [
        "States of Nagaland, Meghalaya, and Mizoram",
        "Union Territories",
        "Scheduled areas and tribal areas",
        "All areas are covered by the act"
      ],
      correctAnswerIndex: 0,
      explanation: "The act does not apply to the states of Nagaland, Meghalaya, and Mizoram and certain other areas.",
    ),
    Question(
      questionText: "Which of the following is a compulsory provision of the 73rd Constitutional Amendment Act?",
      options: [
        "Granting representation to the chairpersons of intermediate panchayats in district panchayats.",
        "Fixing the minimum age for contesting elections to panchayats at 21 years.",
        "Providing reservation of seats for backward classes in panchayats at any level.",
        "Devolution of powers upon panchayats to prepare plans for economic development."
      ],
      correctAnswerIndex: 1,
      explanation: "One of the compulsory provisions is fixing the minimum age for contesting elections to panchayats at 21 years.",
    ),

    Question(
      questionText: "What is a voluntary provision of the 73rd Constitutional Amendment Act?",
      options: [
        "Establishment of a State Election Commission for conducting elections.",
        "Voting rights of the chairperson and other members of a panchayat.",
        "Reservation of seats for SCs and STh in panchayats at all three levels.",
        "Providing for constitution of funds for crediting all moneys of the panchayats."
      ],
      correctAnswerIndex: 6,
      explanation: "One of the voluntary provisions is providing reservation of seats (both members and chairpersons) for backward classes in panchayats at any level.",
    ),

    Question(
      questionText: "Which statement is a compulsory provision related to the term of panchayats?",
      options: [
        "Powers and authority granted to panchayats to function as institutions of self-government.",
        "Reservation of one-third seats for women in panchayats at all three levels.",
        "Fixing the tenure of five years for panchayats at all levels.",
        "Establishment of panchayats at the village, intermediate, and district levels."
      ],
      correctAnswerIndex: 2,
      explanation: "One of the compulsory provisions is fixing the tenure of five years for panchayats at all levels.",
    ),

    Question(
      questionText: "What does a voluntary provision of the 73rd Constitutional Amendment Act relate to?",
      options: [
        "Indirect elections to the post of chairperson of panchayats.",
        "Endowing the Gram Sabha with powers and functions at the village level.",
        "Establishment of a State Finance Commission after every five years.",
        "Compulsory reservation of one-third seats for women in panchayats."
      ],
      correctAnswerIndex: 1,
      explanation: "One of the voluntary provisions is endowing the Gram Sabha with powers and functions at the village level.",
    ),
    Question(
      questionText: "Which Act extends the provisions of Part IX of the Constitution to the Fifth Schedule areas with certain modifications?",
      options: ["Panchayati Raj Act", "PESA Act", "Extension Act", "Scheduled Areas Act"],
      correctAnswerIndex: 1,
      explanation: "The Provisions of the Panchayats (Extension to the Scheduled Areas) Act, 1996, also known as the PESA Act, extends Part IX of the Constitution to Fifth Schedule areas with certain modifications.",
    ),

    Question(
      questionText: "How many states currently have Fifth Schedule Areas?",
      options: ["Five", "Eight", "Ten", "Twelve"],
      correctAnswerIndex: 2,
      explanation: "At present, ten states have Fifth Schedule Areas: Andhra Pradesh, Thlangana, Chhatisgarh, Gujarat, Himachal Pradesh, Jharkhand, Madhya Pradesh, Maharashtra, Odisha, and Rajasthan.",
    ),

    Question(
      questionText: "What is one of the objectives of the PESA Act?",
      options: [
        "To extend the provisions of Part IX without any modifications.",
        "To provide self-rule exclusively for urban populations.",
        "To empower panchayats with no regard to tribal requirements.",
        "To coordinate the planning and implementation of projects at the state level."
      ],
      correctAnswerIndex: 1,
      explanation: "One of the objectives of the PESA Act is to extend the provisions of Part IX of the Constitution to scheduled areas with certain modifications.",
    ),

    Question(
      questionText: "What is a feature of the PESA Act related to Gram Sabha in Scheduled Areas?",
      options: [
        "Gram Sabha's role is limited to approving projects after implementation.",
        "Gram Sabha has no role in safeguarding traditions and customs.",
        "Gram Sabha shall be competent to safeguard and preserve traditions and customs.",
        "Gram Sabha has no say in the utilisation of funds for plans and projects."
      ],
      correctAnswerIndex: 2,
      explanation: "A feature of the PESA Act is that Gram Sabha shall be competent to safeguard and preserve the traditions and customs of the people, their cultural identity, community resources, and the customary mode of dispute resolution.",
    ),
    Question(
      questionText: "What are the major sources of revenue for Panchayati Raj Institutions (PRIs) in India?",
      options: [
        "Foreign aid and donations",
        "Own resource generation, internal resource generation, and loans from foreign banks",
        "Grants from the Union and State Governments, loans from the Reserve Bank of India, and foreign investments",
        "Grants from the Union and State Governments, devolution from the State Government, loans/grants from the State Government, programme-specific allocation, and internal resource generation"
      ],
      correctAnswerIndex: 3,
      explanation: "The major sources of revenue for Panchayati Raj Institutions (PRIs) include grants from the Union and State Governments, devolution from the State Government, loans/grants from the State Government, programme-specific allocation, and internal resource generation.",
    ),

    Question(
      questionText: "What is a common issue identified in the financial standing of Panchayats across states?",
      options: [
        "Excessive reliance on internal resource generation",
        "Overwhelming support from State Governments",
        "Limited discretion and flexibility in expenditure due to scheme-specific grants",
        "Autonomy and efficiency in financial matters"
      ],
      correctAnswerIndex: 2,
      explanation: "A common issue identified in the financial standing of Panchayats is limited discretion and flexibility in expenditure due to scheme-specific grants.",
    ),

    Question(
      questionText: "What is the significance of local taxation for Panchayats?",
      options: [
        "Local taxation is irrelevant for the financial standing of Panchayats.",
        "Local taxation ensures citizens' involvement and makes the institution accountable.",
        "Local taxation is solely responsible for Panchayats' financial stability.",
        "Local taxation has no impact on people's involvement in Panchayats' affairs."
      ],
      correctAnswerIndex: 1,
      explanation: "Local taxation ensures citizens' involvement in the affairs of an elected body and makes the institution accountable to its citizens.",
    ),

    Question(
      questionText: "In terms of own resource collection, which tier of Panchayats is comparatively in a better position?",
      options: ["District Panchayats", "Intermediate Panchayats", "Gram Panchayats", "State Panchayats"],
      correctAnswerIndex: 2,
      explanation: "In terms of own resource collection, Gram Panchayats are comparatively in a better position because they have a tax domain of their own.",
    ),
    Question(
      questionText: "What is one of the major reasons for the sub-optimal performance of Panchayati Raj Institutions (PRIs) according to the provided text?",
      options: [
        "Overwhelming support from State Governments",
        "Excessive use of fiscal powers by Gram Panchayats",
        "Inadequate devolution of functions, funds, and functionaries to PRIs",
        "Reluctance to create parallel bodies for speedy implementation"
      ],
      correctAnswerIndex: 2,
      explanation: "One of the major reasons for the sub-optimal performance of PRIs is inadequate devolution of functions, funds, and functionaries, hindering their ability to discharge their constitutionally stipulated functions.",
    ),

    Question(
      questionText: "What impact does the excessive control by bureaucracy have on Gram Panchayats?",
      options: [
        "Enhances their role as elected representatives",
        "Empowers Sarpanches with additional responsibilities",
        "Distorts the role of Sarpanches as elected representatives",
        "Streamlines the decision-making process"
      ],
      correctAnswerIndex: 2,
      explanation: "Excessive control by bureaucracy distorts the role of Sarpanches as elected representatives, forcing them to spend extraordinary time seeking funds and technical approval.",
    ),

    Question(
      questionText: "What is a consequence of the tied nature of funds for Panchayats?",
      options: [
        "Efficient utilization of funds for appropriate activities",
        "Promotion of suitable activities in all parts of the district",
        "Over-spend of funds on unsuitable activities",
        "Increased flexibility in fund utilization"
      ],
      correctAnswerIndex: 3,
      explanation: "The tied nature of funds can result in unsuitable activities being promoted or an under-spend of the funds.",
    ),

    Question(
      questionText: "What is identified as a common issue in the financial standing of Panchayats across states?",
      options: [
        "Extensive internal resource generation",
        "Autonomy and efficiency in financial matters",
        "Inadequate dependence on government funding",
        "Limited discretion and flexibility in expenditure due to scheme-specific grants"
      ],
      correctAnswerIndex: 3,
      explanation: "A common issue in the financial standing of Panchayats is limited discretion and flexibility in expenditure due to scheme-specific grants.",
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
    home: panchayatRaj(),
  ));
}

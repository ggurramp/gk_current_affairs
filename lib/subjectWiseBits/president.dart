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

class president extends StatefulWidget {
  final String? userIdentifier;

  president({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<president> createState() => _presidentState();
}

class _presidentState extends State<president> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    //18.PRESIDENT

    Question(
      questionText: "Who is considered the head of the Indian State according to the Constitution?",
      options: ["Prime Minister", "Vice-President", "President", "Attorney General of India"],
      correctAnswerIndex: 2,
      explanation: "The President is considered the head of the Indian State according to the Constitution. The role includes being the symbol of unity, integrity, and solidarity of the nation.",
    ),
    Question(
      questionText: "How is the President of India elected?",
      options: ["Directly by the people", "By members of the electoral college", "By members of the Legislative Assemblies only", "By nominated members of both Houses"],
      correctAnswerIndex: 1,
      explanation: "The President of India is elected not directly by the people but by members of the electoral college, consisting of elected members of both Houses of Parliament, elected members of state legislative assemblies, and elected members of legislative assemblies of Union Territories.",
    ),
    Question(
      questionText: "What is the electoral quota in the presidential election?",
      options: ["Total number of candidates plus one", "Total number of valid votes polled divided by the number of candidates plus one", "Total number of elected members of Parliament", "Total population of the state"],
      correctAnswerIndex: 1,
      explanation: "The electoral quota in the presidential election is determined by dividing the total number of valid votes polled by the number of candidates to be elected (plus one) and adding one to the quotient.",
    ),
    Question(
      questionText: "Why did the Constitution makers choose indirect election for the President?",
      options: ["To give more power to the President", "To save costs and time", "To ensure proportional representation", "To involve the entire electorate"],
      correctAnswerIndex: 2,
      explanation: "The Constitution makers chose indirect election for the President to ensure proportional representation, maintaining harmony with the parliamentary system of government envisioned in the Constitution.",
    ),
    Question(
      questionText: "What happens if an assembly is dissolved before the presidential election?",
      options: ["Members can still vote", "Members lose their voting qualification", "Fresh elections are immediately held", "President's term is extended"],
      correctAnswerIndex: 1,
      explanation: "If an assembly is dissolved, the members cease to be qualified to vote in the presidential election, even if fresh elections to the dissolved assembly are not held before the presidential election.",
    ),
    Question(
      questionText: "What are the qualifications for a person to be eligible for election as President?",
      options: ["Citizen of India, 30 years of age, qualified for election as a member of Lok Sabha", "Citizen of India, 35 years of age, qualified for election as a member of Lok Sabha", "Citizen of India, 40 years of age, qualified for election as a member of Rajya Sabha", "Citizen of India, 30 years of age, qualified for election as a member of Rajya Sabha"],
      correctAnswerIndex: 1,
      explanation: "To be eligible for election as President, a person should be a citizen of India, should have completed 35 years of age, and should be qualified for election as a member of the Lok Sabha.",
    ),
    Question(
      questionText: "How is the oath or affirmation by the President administered?",
      options: ["By the Prime Minister", "By the Chief Justice of India", "By the Speaker of the Lok Sabha", "By the Vice-President"],
      correctAnswerIndex: 1,
      explanation: "The oath or affirmation by the President is administered by the Chief Justice of India, and in the Chief Justice's absence, the seniormost judge of the Supreme Court available.",
    ),
    Question(
      questionText: "What conditions are laid down for the President's office?",
      options: ["Must be a member of either House of Parliament", "Cannot hold any other office of profit", "Entitled to rent-free official residence", "Emoluments and allowances can be diminished during the term of office"],
      correctAnswerIndex: 2,
      explanation: "Conditions for the President's office include not being a member of either House of Parliament, not holding any other office of profit, being entitled to a rent-free official residence, and emoluments and allowances cannot be diminished during the term of office.",
    ),
    Question(
      questionText: "What privileges and immunities does the President enjoy?",
      options: ["Legal liability for official acts", "Immunity from criminal proceedings during the term of office", "Arrest and imprisonment at any time", "No civil proceedings can be instituted during the term of office"],
      correctAnswerIndex: 1,
      explanation: "The President enjoys personal immunity from legal liability for official acts. During the term of office, the President is immune from criminal proceedings, but civil proceedings can be instituted with two months' notice.",
    ),
    Question(
      questionText: "What is the security deposit required for a candidate in the presidential election?",
      options: ["₹2,500", "₹5,000", "₹10,000", "₹1,000"],
      correctAnswerIndex: 1,
      explanation: "Every candidate for the presidential election has to make a security deposit of ₹5,000 in the Reserve Bank of India. The deposit is liable to be forfeited if the candidate fails to secure one-sixth of the votes polled.",
    ),
    Question(
      questionText: "Who secured an unopposed victory in the presidential election of 1977?",
      options: ["Dr. Zakir Hussain", "Giani Zail Singh", "N. Sanjeeva Reddy", "Fakhruddin Ali Ahmed"],
      correctAnswerIndex: 2,
      explanation: "In the presidential election of 1977, N. Sanjeeva Reddy secured an unopposed victory.",
    ),
    Question(
      questionText: "What is the term of office for the President of India?",
      options: ["3 years", "4 years", "5 years", "6 years"],
      correctAnswerIndex: 2,
      explanation: "The President of India holds office for a term of five years from the date on which he/she enters upon his/her office. However, the President can resign at any time.",
    ),
    Question(
      questionText: "How can the President be removed from office before completion of the term?",
      options: ["Voluntary resignation", "By a process of impeachment", "By the Vice-President's decision", "Automatic removal after five years"],
      correctAnswerIndex: 1,
      explanation: "The President can be removed from office before completion of the term by a process of impeachment for 'violation of the Constitution.' Impeachment charges can be initiated by either House of Parliament.",
    ),
    Question(
      questionText: "What happens if a vacancy in the President's office occurs due to the expiration of the term?",
      options: ["Vice-President assumes office", "Interregnum until new election", "Automatic re-election of the sitting President", "Immediate appointment of a new President"],
      correctAnswerIndex: 1,
      explanation: "If a vacancy in the President's office occurs due to the expiration of the term, an election to fill the vacancy must be held before the expiration of the term. In case of any delay, the outgoing President continues to hold office until his/her successor assumes charge to prevent an 'interregnum.'",
    ),
    Question(
      questionText: "Who acts as the President when a vacancy occurs due to resignation, removal, death, or other causes?",
      options: ["Vice-President", "Chief Justice of India", "Speaker of Lok Sabha", "Prime Minister"],
      correctAnswerIndex: 0,
      explanation: "When a vacancy occurs in the office of the President due to resignation, removal, death, or other causes, the Vice-President acts as the President until a new President is elected.",
    ),
    Question(
      questionText: "What is the maximum number of terms a person can be elected as President of India?",
      options: ["One term", "Two terms", "Three terms", "No limit"],
      correctAnswerIndex: 3,
      explanation: "A person can be elected as President of India for any number of terms. There is no limit specified in the Constitution, unlike the USA, where a person cannot be elected to the office of the President more than twice.",
    ),
    Question(
      questionText: "What are the executive powers and functions of the President?",
      options: [
        "Appointing the Chief Justice of India",
        "Addressing Parliament at the commencement of each session",
        "Sending messages to the Houses of Parliament",
        "Declaring scheduled areas and tribal areas"
      ],
      correctAnswerIndex: 0,
      explanation: "The executive powers of the President include appointing various officials such as the Prime Minister, attorney general, and others. Additionally, the President can declare scheduled areas and tribal areas.",
    ),
    Question(
      questionText: "How is the Speaker of the Lok Sabha replaced when the offices of both the Speaker and the Deputy Speaker are vacant?",
      options: [
        "The President appoints a new Speaker",
        "The Chief Justice of India presides over the Lok Sabha",
        "The President nominates a member of the Lok Sabha",
        "The Prime Minister takes charge temporarily"
      ],
      correctAnswerIndex: 2,
      explanation: "In the absence of both the Speaker and the Deputy Speaker, the President can appoint any member of the Lok Sabha to preside over its proceedings.",
    ),
    Question(
      questionText: "What is the role of the President in introducing certain types of bills in Parliament?",
      options: [
        "The President can introduce any bill without restrictions",
        "The President recommends or gives permission for specific bills",
        "The President has no involvement in the introduction of bills",
        "The President can only introduce money bills"
      ],
      correctAnswerIndex: 1,
      explanation: "The President's prior recommendation or permission is needed to introduce certain types of bills, including those involving expenditure from the Consolidated Fund, alteration of state boundaries, money bills, and more.",
    ),
    Question(
      questionText: "Who nominates members to the Rajya Sabha with special knowledge or practical experience in literature, science, art, and social service?",
      options: [
        "Prime Minister",
        "Chief Justice of India",
        "Governors of states",
        "The President"
      ],
      correctAnswerIndex: 3,
      explanation: "The President nominates 12 members to the Rajya Sabha from individuals with special knowledge or practical experience in literature, science, art, and social service.",
    ),
    Question(
      questionText: "What is the President's role when a bill is sent to him/her after being passed by Parliament?",
      options: [
        "The President can only give assent to the bill",
        "The President can only withhold assent to the bill",
        "The President has no role in this process",
        "The President can give assent, withhold assent, or return the bill for reconsideration"
      ],
      correctAnswerIndex: 3,
      explanation: "When a bill is sent to the President after being passed by Parliament, the President can give assent, withhold assent, or return the bill (if it is not a money bill) for reconsideration.",
    ),
    Question(
      questionText: "What extraordinary powers does the President acquire during a National Emergency?",
      options: [
        "The power to suspend the Fundamental Rights of citizens except the right to life and personal liberty",
        "The power to declare war independently",
        "The power to modify the distribution of financial resources between the Union and the states",
        "The power to appoint the Chief Justice of the Supreme Court"
      ],
      correctAnswerIndex: 0,
      explanation: "During a National Emergency, the President can suspend the Fundamental Rights of citizens except the right to life and personal liberty.",
    ),
    Question(
      questionText: "Under what grounds can the President proclaim a National Emergency?",
      options: [
        "Failure of constitutional machinery in the states",
        "Failure to comply with or give effect to directions given by the Union",
        "War, external aggression, or armed rebellion",
        "Economic instability in the country"
      ],
      correctAnswerIndex: 2,
      explanation: "The President can proclaim a National Emergency on grounds of war, external aggression, or armed rebellion.",
    ),
    Question(
      questionText: "What powers does the President acquire during President's Rule in a state?",
      options: [
        "The power to declare war",
        "The power to assign functions of the state government to himself/herself",
        "The power to suspend the Union Parliament",
        "The power to appoint the Chief Minister of the state"
      ],
      correctAnswerIndex: 1,
      explanation: "During President's Rule in a state, the President can assign to himself/herself any or all of the functions of the state government and powers vested in the governor or any body or authority in the state.",
    ),
    Question(
      questionText: "What is the purpose of Financial Emergency, and what directions can the President issue during this period?",
      options: [
        "To address a health crisis, and the President can issue directions related to healthcare",
        "To address economic instability, and the President can issue directions for reducing salaries and allowances",
        "To tackle environmental challenges, and the President can issue directions for conservation",
        "To promote education, and the President can issue directions for enhancing educational facilities"
      ],
      correctAnswerIndex: 1,
      explanation: "Financial Emergency is proclaimed to address economic instability. During this period, the President can issue directions for the reduction of salaries and allowances of persons serving in connection with the affairs of the Union.",
    ),
    Question(
      questionText: "What is the role of the President in the appointment of judges to the Supreme Court and high courts?",
      options: [
        "The President has no role in the appointment of judges",
        "The President appoints judges without any consultation",
        "The President appoints judges based on the Prime Minister's recommendation",
        "The President appoints judges after consulting the Prime Minister and the Chief Justice of India"
      ],
      correctAnswerIndex: 3,
      explanation: "The President appoints judges to the Supreme Court and high courts after consulting the Prime Minister and the Chief Justice of India.",
    ),
    Question(
      questionText: "What is the role of the President in the appointment of the Prime Minister and other ministers?",
      options: [
        "The President has no role in the appointment of the Prime Minister and ministers.",
        "The President appoints the Prime Minister and ministers without any consultation.",
        "The President appoints the Prime Minister and other ministers based on the recommendation of the Lok Sabha.",
        "The President appoints the Prime Minister and other ministers, and they hold office during the President's pleasure."
      ],
      correctAnswerIndex: 3,
      explanation: "The President appoints the Prime Minister and other ministers, and they hold office during the President's pleasure.",
    ),
    Question(
      questionText: "What legislative powers does the President have in relation to the Parliament?",
      options: [
        "The President can only address the Parliament but has no other legislative powers.",
        "The President can introduce bills and pass them independently.",
        "The President can summon or prorogue the Parliament, dissolve the Lok Sabha, and address the Parliament.",
        "The President can veto any bill passed by the Parliament."
      ],
      correctAnswerIndex: 2,
      explanation: "The President can summon or prorogue the Parliament, dissolve the Lok Sabha, and address the Parliament.",
    ),
    Question(
      questionText: "What is the significance of the President's role in introducing certain types of bills in the Parliament?",
      options: [
        "The President's role is ceremonial and has no impact on the passage of bills.",
        "The President can directly pass any bill without Parliament's approval.",
        "The President ensures that specific types of bills adhere to financial, territorial, and other considerations.",
        "The President can introduce bills independently without any restrictions."
      ],
      correctAnswerIndex: 2,
      explanation: "The President ensures that specific types of bills adhere to financial, territorial, and other considerations.",
    ),
    Question(
      questionText: "Under what circumstances can the President grant pardon, reprieve, respite, and remission of punishment?",
      options: [
        "Only in cases related to financial crimes.",
        "Only in cases where the punishment is by a court martial.",
        "Only in cases related to offenses against a Union law.",
        "In cases of court martial, offenses against Union law, and cases where the sentence is a sentence of death."
      ],
      correctAnswerIndex: 3,
      explanation: "The President can grant pardon, reprieve, respite, and remission of punishment in cases of court martial, offenses against Union law, and cases where the sentence is a sentence of death.",
    ),
    Question(
      questionText: "What powers does the President have regarding diplomatic matters and international treaties?",
      options: [
        "The President can independently negotiate and conclude international treaties.",
        "The President has no role in diplomatic matters.",
        "The President negotiates treaties but does not need Parliament's approval.",
        "The President negotiates treaties, but they are subject to Parliament's approval."
      ],
      correctAnswerIndex: 3,
      explanation: "The President negotiates treaties, but they are subject to Parliament's approval.",
    ),
    Question(
      questionText: "What are the three alternatives available to the President when presented with a bill under Article 111 of the Constitution?",
      options: [
        "Assent, withhold assent, and return for reconsideration",
        "Assent, rejection, and amendment",
        "Approval, disapproval, and postponement",
        "Assent, veto, and withdrawal"
      ],
      correctAnswerIndex: 0,
      explanation: "The President can either give assent to the bill, withhold assent, or return it for reconsideration under Article 111 of the Constitution.",
    ),
    Question(
      questionText: "What is the purpose of conferring veto power on the President?",
      options: [
        "To allow the President to independently pass bills",
        "To prevent unconstitutional legislation",
        "To speed up the legislative process",
        "To limit the President's influence on legislation"
      ],
      correctAnswerIndex: 1,
      explanation: "The veto power is conferred on the President to prevent hasty and ill-considered legislation by the Parliament and to prevent legislation that may be unconstitutional.",
    ),
    Question(
      questionText: "How many types of veto power does the President of India have?",
      options: [
        "Four",
        "Three",
        "Two",
        "One"
      ],
      correctAnswerIndex: 1,
      explanation: "The President of India has three types of veto power: absolute veto, suspensive veto, and pocket veto.",
    ),
    Question(
      questionText: "Under what circumstances does the President exercise the absolute veto?",
      options: [
        "With private members' bills",
        "With government bills during a cabinet resignation",
        "With money bills",
        "With constitutional amendment bills"
      ],
      correctAnswerIndex: 0,
      explanation: "The President exercises absolute veto, especially with private members' bills and government bills during a cabinet resignation.",
    ),
    Question(
      questionText: "What is the pocket veto, and when can the President exercise it?",
      options: [
        "Rejecting a bill without assent",
        "Withholding assent to a bill indefinitely",
        "Returning a bill for reconsideration",
        "Exercising veto power on a constitutional amendment bill"
      ],
      correctAnswerIndex: 1,
      explanation: "The pocket veto is when the President neither ratifies nor rejects nor returns the bill, but keeps it pending for an indefinite period. The President can exercise this power as there is no time-limit prescribed by the Constitution.",
    ),
    Question(
      questionText: "How many alternatives does the governor have when presented with a bill passed by a state legislature under Article 200 of the Constitution?",
      options: [
        "Three",
        "Four",
        "Two",
        "Five"
      ],
      correctAnswerIndex: 1,
      explanation: "The governor has four alternatives under Article 200 of the Constitution when presented with a bill passed by a state legislature: assent, withhold assent, return for reconsideration, or reserve for the consideration of the President.",
    ),
    Question(
      questionText: "What are the three alternatives available to the President when a bill is reserved by the governor for consideration under Article 201 of the Constitution?",
      options: [
        "Assent, withhold assent, and pocket veto",
        "Assent, reject, and return for reconsideration",
        "Assent, veto, and override",
        "Assent, withhold assent, and direct governor to reconsider"
      ],
      correctAnswerIndex: 0,
      explanation: "When a bill is reserved by the governor for the consideration of the President, the President has three alternatives under Article 201 of the Constitution: assent, withhold assent, or pocket veto.",
    ),
    Question(
      questionText: "Can the state legislature override the veto power of the President?",
      options: [
        "Yes, with a two-thirds majority",
        "No, the President's veto is final",
        "Yes, with a simple majority",
        "No, the President's veto cannot be overridden"
      ],
      correctAnswerIndex: 3,
      explanation: "The state legislature cannot override the veto power of the President. Even if the bill is passed again by the state legislature and presented again to the President, the President is not bound to give assent.",
    ),
    Question(
      questionText: "Is there a time limit prescribed for the President to take a decision on a bill reserved by the governor for consideration?",
      options: [
        "Yes, within 30 days",
        "No, there is no time limit",
        "Yes, within 15 days",
        "No, but it must be within the same legislative session"
      ],
      correctAnswerIndex: 1,
      explanation: "No, the Constitution has not prescribed any time limit within which the President has to take a decision on a bill reserved by the governor for consideration. The President can exercise a pocket veto in respect of state legislation.",
    ),
    Question(
      questionText: "Under what circumstances can the President promulgate an ordinance?",
      options: [
        "Only when both Houses of Parliament are in session",
        "When either of the two Houses of Parliament is not in session",
        "Only during a national emergency",
        "When both Houses are prorogued"
      ],
      correctAnswerIndex: 1,
      explanation: "The President can promulgate an ordinance only when either of the two Houses of Parliament is not in session.",
    ),
    Question(
      questionText: "What limitations are imposed on the President's ordinance-making power?",
      options: [
        "Geographical restrictions",
        "Subject-matter restrictions",
        "Duration restrictions",
        "Political party restrictions"
      ],
      correctAnswerIndex: 2,
      explanation: "The President's ordinance-making power is subject to limitations related to duration, including the requirement that it can only be exercised when either of the two Houses of Parliament is not in session.",
    ),
    Question(
      questionText: "Can the President's satisfaction in issuing an ordinance be questioned in court?",
      options: [
        "Yes, on any grounds",
        "Yes, but only on grounds of malafide",
        "No, the President's satisfaction is final",
        "No, it cannot be questioned"
      ],
      correctAnswerIndex: 1,
      explanation: "The President's satisfaction in issuing an ordinance can be questioned in court, specifically on grounds of malafide.",
    ),
    Question(
      questionText: "What happens if both Houses of Parliament take no action on an ordinance?",
      options: [
        "The ordinance becomes an act",
        "The ordinance remains in force indefinitely",
        "The ordinance ceases to operate after six weeks from the reassembly of Parliament",
        "The ordinance is automatically repealed"
      ],
      correctAnswerIndex: 2,
      explanation: "If both Houses of Parliament take no action on an ordinance, it ceases to operate after six weeks from the reassembly of Parliament.",
    ),
    Question(
      questionText: "What is the primary objective of conferring the pardoning power on the President?",
      options: [
        "To act as a court of appeal",
        "To correct judicial errors",
        "To impose harsher sentences",
        "To directly influence court decisions"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary objectives of conferring the pardoning power on the President are to keep the door open for correcting any judicial errors and to afford relief from a sentence considered unduly harsh.",
    ),
    Question(
      questionText: "What are the different aspects of the pardoning power of the President?",
      options: [
        "Pardon, only",
        "Pardon, commutation, and remission",
        "Pardon, remission, and reprieve",
        "Pardon, reprieve, and respite"
      ],
      correctAnswerIndex: 1,
      explanation: "The pardoning power of the President includes various aspects such as pardon, commutation, and remission.",
    ),
    Question(
      questionText: "What is the key distinction between the pardoning power of the President and the governor?",
      options: [
        "The President can only suspend death sentences, while the governor can pardon them.",
        "The President can pardon sentences inflicted by military courts, while the governor cannot.",
        "The governor has the exclusive power to pardon sentences for state offenses.",
        "The President's power is subject to judicial review, but the governor's is not."
      ],
      correctAnswerIndex: 1,
      explanation: "The key distinction is that the President can pardon sentences inflicted by military courts and death sentences, while the governor cannot.",
    ),
    Question(
      questionText: "Under what circumstances is the President's exercise of the pardoning power subject to judicial review?",
      options: [
        "When the petitioner demands an oral hearing",
        "When the President examines the evidence afresh",
        "Whenever the union cabinet advises",
        "Only when the presidential decision is arbitrary, irrational, mala fide, or discriminatory"
      ],
      correctAnswerIndex: 3,
      explanation: "The exercise of the President's pardoning power is not subject to judicial review except when the presidential decision is arbitrary, irrational, mala fide, or discriminatory.",
    ),
    Question(
      questionText: "What is the fundamental difference between the American presidential system and the Indian parliamentary system?",
      options: [
        "The American President has more executive powers than the Indian President.",
        "The Indian President represents the nation but does not rule, unlike the American President.",
        "The Indian President can dismiss ministers at any time, while the American President cannot.",
        "The American President is the ceremonial head of the state, unlike the Indian President."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Indian parliamentary system, the President represents the nation but does not rule, unlike the American presidential system where the President is the Chief head of the Executive and administration is vested in him.",
    ),
    Question(
      questionText: "Which constitutional amendment act made the President bound by the advice of the council of ministers?",
      options: [
        "42nd Constitutional Amendment Act of 1976",
        "44th Constitutional Amendment Act of 1978",
        "45th Constitutional Amendment Act of 1979",
        "46th Constitutional Amendment Act of 1980"
      ],
      correctAnswerIndex: 0,
      explanation: "The 42nd Constitutional Amendment Act of 1976 made the President bound by the advice of the council of ministers.",
    ),
    Question(
      questionText: "Under what circumstances can the President act on situational discretion without the advice of ministers?",
      options: [
        "Appointment of the Prime Minister in case of a sudden death",
        "Dismissal of the council of ministers that lost majority",
        "Dissolution of the Lok Sabha when ministers are in minority",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The President can act on situational discretion without the advice of ministers in scenarios like the appointment of the Prime Minister in case of a sudden death, dismissal of the council of ministers that lost majority, and dissolution of the Lok Sabha when ministers are in the minority.",
    ),
    Question(
      questionText: "Which constitutional articles define the executive power of the President and the role of the council of ministers?",
      options: [
        "Articles 50, 60, 70",
        "Articles 61, 71, 81",
        "Articles 52, 62, 72",
        "Articles 53, 74, 75"
      ],
      correctAnswerIndex: 3,
      explanation: "Articles 53, 74, and 75 define the executive power of the President and the role of the council of ministers.",
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
    home: president(),
  ));
}

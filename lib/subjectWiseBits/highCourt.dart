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

class highCourt extends StatefulWidget {
  final String? userIdentifier;

  highCourt({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<highCourt> createState() => _highCourtState();
}

class _highCourtState extends State<highCourt> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//34.HIGH COURT

    Question(
        questionText: "In which year was the Allahabad High Court established, and what is its current seat of territorial jurisdiction?",
        options: ["1866 - Lucknow", "1866 - Prayagraj", "1862 - Nagpur", "1948 - Gauhati"],
        correctAnswerIndex: 1,
        explanation: "The Allahabad High Court was established in 1866, and its current seat of territorial jurisdiction is Prayagraj, with a bench at Lucknow."
    ),

    Question(
      questionText: "Which High Court has jurisdiction over Chhattisgarh, and when was it established?",
      options: ["Bombay High Court", "Delhi High Court", "Gauhati High Court", "Chhattisgarh High Court"],
      correctAnswerIndex: 3,
      explanation: "Chhattisgarh High Court, established in 2000, has jurisdiction over the state of Chhattisgarh with its seat in Bilaspur.",
    ),

    Question(
      questionText: "What was the original name of the High Court with territorial jurisdiction over Maharashtra, Goa, Dadra and Nagar Haveli, and Daman and Diu?",
      options: ["Calcutta High Court", "Madras High Court", "Bombay High Court", "Gujarat High Court"],
      correctAnswerIndex: 2,
      explanation: "The High Court with territorial jurisdiction over Maharashtra, Goa, Dadra and Nagar Haveli, and Daman and Diu was originally named Bombay High Court.",
    ),

    Question(
      questionText: "Which High Court serves the NCT of Delhi, and when was it established?",
      options: ["Calcutta High Court", "Delhi High Court", "Gauhati High Court", "Karnataka High Court"],
      correctAnswerIndex: 1,
      explanation: "The Delhi High Court, serving the National Capital Territory of Delhi, was established in 1966 with its seat in New Delhi.",
    ),

    Question(
      questionText: "In which year was the Jammu and Kashmir High Court established, and what are its current seats of territorial jurisdiction?",
      options: ["1928 - Jammu and Srinagar", "1971 - Shimla", "2000 - Ranchi", "1956 - Ernakulam"],
      correctAnswerIndex: 0,
      explanation: "The Jammu and Kashmir High Court was established in 1928, with its current seats of territorial jurisdiction in Jammu and Srinagar.",
    ),

    Question(
      questionText: "Which High Court has jurisdiction over Meghalaya, and when was it established?",
      options: ["Gujarat High Court", "Meghalaya High Court", "Patna High Court", "Sikkim High Court"],
      correctAnswerIndex: 1,
      explanation: "Meghalaya High Court, established in 2013, has jurisdiction over the state of Meghalaya with its seat in Shillong.",
    ),

    Question(
      questionText: "Name the High Court with jurisdiction over Kerala and Lakshadweep, and state its seat of territorial jurisdiction.",
      options: ["Madras High Court", "Kerala High Court", "Bombay High Court", "Gauhati High Court"],
      correctAnswerIndex: 1,
      explanation: "The High Court with jurisdiction over Kerala and Lakshadweep is the Kerala High Court, with its seat in Ernakulam.",
    ),

    Question(
      questionText: "In which year was the Uttarakhand High Court established, and where is its seat of territorial jurisdiction?",
      options: ["2000 - Nainital", "1975 - Gangtok", "1956 - Chennai", "1948 - Cuttack"],
      correctAnswerIndex: 0,
      explanation: "The Uttarakhand High Court was established in 2000, and its seat of territorial jurisdiction is Nainital.",
    ),

    Question(
      questionText: "Which High Court has jurisdiction over Bihar, and when was it established?",
      options: ["Patna High Court", "Rajasthan High Court", "Gujarat High Court", "Odisha High Court"],
      correctAnswerIndex: 0,
      explanation: "The Patna High Court, with jurisdiction over Bihar, was established in 1916.",
    ),

    Question(
      questionText: "Identify the High Court serving Punjab, Haryana, and Chandigarh, and state its year of establishment.",
      options: ["Punjab High Court", "Delhi High Court", "Madras High Court", "Rajasthan High Court"],
      correctAnswerIndex: 0,
      explanation: "The High Court serving Punjab, Haryana, and Chandigarh is the Punjab and Haryana High Court, established in 1947 with its seat in Chandigarh.",
    ),

    Question(
      questionText: "Which High Court has jurisdiction over Telangana, and where is its seat?",
      options: ["Gauhati High Court", "Telangana High Court", "Patna High Court", "Jharkhand High Court"],
      correctAnswerIndex: 1,
      explanation: "The High Court with jurisdiction over Telangana is the Telangana High Court, situated in Hyderabad.",
    ),
    Question(
      questionText: "What powers does a high court have under its supervisory jurisdiction over all courts and tribunals within its territorial jurisdiction?",
      options: [
        "Power to make and issue general rules",
        "Power to prescribe forms for court proceedings",
        "Power to settle fees payable to legal practitioners",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "Under supervisory jurisdiction, a high court has the power to make and issue general rules, prescribe forms for court proceedings, and settle fees payable to legal practitioners, among other powers.",
    ),

    Question(
      questionText: "In which situations does a high court's power of superintendence over subordinate courts extend?",
      options: [
        "Only when subordinate courts are subject to the appellate jurisdiction of the high court",
        "Exclusively to administrative superintendence",
        "To revisional jurisdiction and suo-motu cases",
        "Only on the application of a party"
      ],
      correctAnswerIndex: 2,
      explanation: "A high court's power of superintendence extends to all courts and tribunals, whether subject to appellate jurisdiction or not, covering administrative and judicial superintendence, revisional jurisdiction, and suo-motu cases.",
    ),

    Question(
      questionText: "What are the limitations on a high court's power of superintendence over subordinate courts?",
      options: [
        "Unlimited authority",
        "Use most sparingly and only in appropriate cases",
        "Exclusively for judicial superintendence",
        "Only applicable to appellate courts"
      ],
      correctAnswerIndex: 1,
      explanation: "The power of superintendence is limited to specific cases, including excess of jurisdiction, gross violation of natural justice, error of law, disregard to superior court laws, perverse findings, and manifest injustice. It should be used sparingly and in appropriate cases.",
    ),

    Question(
      questionText: "What administrative control does a high court have over subordinate courts?",
      options: [
        "Consultation on district judges' matters",
        "Authority to withdraw cases involving constitutional questions",
        "Dealing with posting, promotion, and discipline of judicial service members",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "A high court's administrative control over subordinate courts includes consultation on district judges' matters, withdrawing cases with constitutional questions, and handling posting, promotion, transfers, and discipline of judicial service members.",
    ),

    Question(
      questionText: "What is the significance of a high court being a court of record?",
      options: [
        "Records are for temporary memory only",
        "Judgments are not legally binding",
        "Judgments, proceedings, and acts are recorded for perpetual memory and testimony",
        "Records have no evidentiary value"
      ],
      correctAnswerIndex: 2,
      explanation: "As a court of record, a high court records judgments, proceedings, and acts for perpetual memory and testimony. These records have evidentiary value, legal precedent, and cannot be questioned in subordinate courts.",
    ),

    Question(
      questionText: "Under what circumstances can a high court punish for contempt of court?",
      options: [
        "For civil contempt only",
        "For criminal contempt only",
        "For contempt of itself and subordinate courts",
        "Only when contempt is an offense under the Indian Penal Code"
      ],
      correctAnswerIndex: 2,
      explanation: "A high court has the power to punish for contempt of itself and subordinate courts, whether the contempt is civil or criminal in nature.",
    ),

    Question(
      questionText: "What grounds can be used to challenge the constitutional validity of legislative enactments or executive orders in a high court?",
      options: [
        "Infringement of fundamental rights",
        "Being within the competence of the framing authority",
        "Repugnance to constitutional provisions",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The constitutional validity of legislative enactments or executive orders can be challenged in a high court on grounds of infringement of fundamental rights, being outside the competence of the framing authority, and repugnance to constitutional provisions.",
    ),

    Question(
      questionText: "What constitutional amendments affected the judicial review power of high courts?",
      options: [
        "42nd Amendment Act of 1976",
        "43rd Amendment Act of 1977",
        "Both 42nd and 43rd Amendments",
        "None of the above"
      ],
      correctAnswerIndex: 2,
      explanation: "The 42nd Amendment Act of 1976 curtailed the judicial review power of high courts, but the 43rd Amendment Act of 1977 restored the original position, allowing high courts to exercise judicial review.",
    ),
    Question(
      questionText: "What does the term 'Original Jurisdiction' refer to in the context of a high court?",
      options: [
        "The power to hear disputes in the first instance, not by way of appeal",
        "Exclusively appellate jurisdiction",
        "Power to review its own judgments",
        "Limited jurisdiction in revenue matters"
      ],
      correctAnswerIndex: 0,
      explanation: "Original jurisdiction of a high court refers to its power to hear disputes in the first instance, not by way of appeal. It covers various matters, including disputes related to elections, revenue matters, enforcement of fundamental rights, and more.",
    ),

    Question(
      questionText: "What types of cases fall under a high court's original jurisdiction?",
      options: [
        "Only civil cases of higher value",
        "Cases ordered to be transferred from subordinate courts",
        "Appeals from district courts",
        "Both civil and criminal cases"
      ],
      correctAnswerIndex: 3,
      explanation: "Cases falling under a high court's original jurisdiction include disputes related to elections, revenue matters, enforcement of fundamental rights, cases ordered to be transferred from subordinate courts, and civil cases of higher value, especially for the four specified high courts.",
    ),

    Question(
      questionText: "What is the significance of Article 226 in the Constitution in relation to high courts?",
      options: [
        "Grants appellate jurisdiction to high courts",
        "Governs administrative control of high courts",
        "Empowers high courts to issue writs for enforcement of fundamental rights",
        "Defines the procedure for criminal appeals"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 226 empowers high courts to issue writs, including habeas corpus, mandamus, certiorari, prohibition, and quo warranto, for the enforcement of fundamental rights and other purposes, extending their jurisdiction even outside their territorial limits.",
    ),

    Question(
      questionText: "How does the writ jurisdiction of a high court (under Article 226) compare to that of the Supreme Court (under Article 32)?",
      options: [
        "Supreme Court's writ jurisdiction is wider",
        "High Court's writ jurisdiction is exclusive",
        "Both have concurrent writ jurisdiction",
        "Writ jurisdiction is limited to specific cases"
      ],
      correctAnswerIndex: 2,
      explanation: "The writ jurisdiction of a high court (under Article 226) is concurrent with that of the Supreme Court (under Article 32). However, the high court's writ jurisdiction is wider as it extends to cases beyond the enforcement of fundamental rights.",
    ),

    Question(
      questionText: "What is the primary function of a high court?",
      options: [
        "Supervisory jurisdiction over subordinate courts",
        "Issuing writs for enforcement of fundamental rights",
        "Original jurisdiction in criminal matters",
        "Appellate jurisdiction in civil and criminal matters"
      ],
      correctAnswerIndex: 3,
      explanation: "The primary function of a high court is its appellate jurisdiction, hearing appeals against judgments of subordinate courts in both civil and criminal matters.",
    ),

    Question(
      questionText: "What types of appeals fall under the civil appellate jurisdiction of a high court?",
      options: [
        "Only second appeals involving questions of law",
        "First appeals from district courts on both questions of law and fact",
        "Intra-court appeals within the high court",
        "Appeals from administrative tribunals"
      ],
      correctAnswerIndex: 1,
      explanation: "Civil appellate jurisdiction of a high court includes first appeals from district courts on both questions of law and fact, second appeals on questions of law only, and in some cases, intra-court appeals.",
    ),

    Question(
      questionText: "In criminal matters, when does an appeal from the judgments of sessions court lie to the high court?",
      options: [
        "For any sentence of imprisonment",
        "If the sentence is more than seven years",
        "Only for capital punishment cases",
        "Exclusively for cases involving death sentence"
      ],
      correctAnswerIndex: 1,
      explanation: "In criminal matters, an appeal from the judgments of sessions court lies to the high court if the sentence is one of imprisonment for more than seven years. Capital punishment cases also require confirmation by the high court before execution.",
    ),
    Question(
      questionText: "What role does the high court play in the legal system of a state?",
      options: [
        "It is the highest court of appeal",
        "It primarily deals with revenue matters",
        "It interprets the Constitution",
        "It has limited powers over subordinate courts"
      ],
      correctAnswerIndex: 0,
      explanation: "The high court serves as the highest court of appeal in the state, interpreting the Constitution, protecting Fundamental Rights, and playing supervisory and consultative roles.",
    ),

    Question(
      questionText: "What does the Constitution specify regarding the jurisdiction and powers of a high court?",
      options: [
        "Detailed provisions are provided",
        "Powers are limited to appellate jurisdiction",
        "Jurisdiction and powers are the same as pre-constitution era",
        "High court has exclusive powers over subordinate courts"
      ],
      correctAnswerIndex: 2,
      explanation: "The Constitution states that the jurisdiction and powers of a high court are to be the same as immediately before the commencement of the Constitution, with an addition of jurisdiction over revenue matters.",
    ),

    Question(
      questionText: "Apart from the Constitution, what other sources govern the present jurisdiction and powers of a high court?",
      options: [
        "Letters Patent and Acts of Parliament",
        "Indian Penal Code, 1860, and Criminal Procedure Code, 1973",
        "Civil Procedure Code, 1908, and Acts of State Legislature",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The present jurisdiction and powers of a high court are governed by various sources, including the Constitution, Letters Patent, Acts of Parliament, Indian Penal Code, 1860, Criminal Procedure Code, 1973, Civil Procedure Code, 1908, and Acts of State Legislature.",
    ),

    Question(
      questionText: "What are the seven jurisdiction and powers enjoyed by a high court as mentioned in the text?",
      options: [
        "Original jurisdiction, appellate jurisdiction, supervisory jurisdiction, and control over subordinate courts",
        "Writ jurisdiction, power of judicial review, and consultative power",
        "All of the above",
        "Limited powers exclusive to revenue matters"
      ],
      correctAnswerIndex: 2,
      explanation: "A high court enjoys seven jurisdiction and powers, including original jurisdiction, appellate jurisdiction, supervisory jurisdiction, control over subordinate courts, writ jurisdiction, power of judicial review, and consultative power.",
    ),

    Question(
      questionText: "What does the term 'a court of record' mean in the context of a high court?",
      options: [
        "Records are temporary and not of evidentiary value",
        "Records have no legal precedent",
        "Judgments, proceedings, and acts are recorded for perpetual memory and testimony",
        "Records are excluded from judicial review"
      ],
      correctAnswerIndex: 2,
      explanation: "As a court of record, a high court records judgments, proceedings, and acts for perpetual memory and testimony. These records have evidentiary value, legal precedent, and cannot be questioned in subordinate courts.",
    ),

    Question(
      questionText: "What additional power does the Constitution give to a high court regarding jurisdiction over revenue matters?",
      options: [
        "Exclusive jurisdiction over revenue matters",
        "Power to interpret revenue laws",
        "Jurisdiction over revenue matters as in pre-constitution era",
        "Jurisdiction only over criminal matters"
      ],
      correctAnswerIndex: 2,
      explanation: "The Constitution adds jurisdiction over revenue matters to a high court, which it did not enjoy in the pre-constitution era. This jurisdiction is in addition to its pre-existing powers.",
    ),
    Question(
      questionText: "What is the maximum age until which a judge of a high court holds office?",
      options: ["60 years", "62 years", "65 years", "70 years"],
      correctAnswerIndex: 1,
      explanation: "A judge of a high court holds office until reaching the age of 62 years. Any questions regarding their age are decided by the President after consulting the chief justice of India.",
    ),

    Question(
      questionText: "What are the grounds for the removal of a judge of a high court?",
      options: ["Inefficiency", "Proven misbehaviour or incapacity", "Political disagreements", "Judicial errors"],
      correctAnswerIndex: 1,
      explanation: "A judge of a high court can be removed for proven misbehaviour or incapacity. The removal process involves an address by Parliament to the President, supported by a special majority.",
    ),

    Question(
      questionText: "Which Act regulates the procedure for the removal of a judge of a high court through impeachment?",
      options: ["Constitutional Amendment Act", "Judges Enquiry Act (1968)", "Judicial Review Act", "High Court Powers Act"],
      correctAnswerIndex: 1,
      explanation: "The Judges Enquiry Act (1968) regulates the procedure for the removal of a judge of a high court through the process of impeachment, ensuring a fair and thorough investigation.",
    ),

    Question(
      questionText: "Under what conditions can the President transfer a judge from one high court to another?",
      options: [
        "On the recommendation of the Chief Justice of India",
        "As a punitive measure",
        "Only for personal preferences",
        "Based on political considerations"
      ],
      correctAnswerIndex: 0,
      explanation: "The President can transfer a judge from one high court to another after consulting the Chief Justice of India. However, transfers should be in public interest and not punitive.",
    ),

    Question(
      questionText: "What is the procedure for the impeachment of a judge of a high court?",
      options: [
        "Parliament passes an order directly",
        "Investigation by a committee followed by a special majority in Parliament",
        "Direct removal by the President",
        "Impeachment only possible by Supreme Court"
      ],
      correctAnswerIndex: 1,
      explanation: "The procedure for the impeachment of a judge of a high court involves a committee investigation, followed by an address presented to the President by Parliament with a special majority.",
    ),

    Question(
      questionText: "What is the retirement age of judges of a high court?",
      options: ["60 years", "62 years", "65 years", "70 years"],
      correctAnswerIndex: 1,
      explanation: "The retirement age of judges of a high court has been raised to 62 years by the 15th Amendment Act of 1963.",
    ),

    Question(
        questionText: "What is the significance of the Constitution providing security of tenure for judges of a high court?",
        options: [
          "Judges can be removed at any time",
          "Judges serve during the pleasure of the President",
          "Judges are assured stability in their position",
          "Judges can retire voluntarily at any time"
        ],
        correctAnswerIndex: 2,
        explanation: "The security of tenure ensures that judges of a high court cannot be removed arbitrarily and provides stability in their position, contributing to their independence."
    ),

    Question(
      questionText: "What is the ban on practice after retirement for retired permanent judges of a high court?",
      options: [
        "They can practice anywhere in India",
        "They can practice only in lower courts",
        "They can practice only in the Supreme Court",
        "They cannot practice in any court in India except the Supreme Court and other high courts"
      ],
      correctAnswerIndex: 3,
      explanation: "Retired permanent judges of a high court are prohibited from practicing in any court in India except the Supreme Court and other high courts.",
    ),

    Question(
        questionText: "How are the salaries, allowances, and pensions of judges of a high court determined?",
        options: [
          "Determined by the executive",
          "Changed at the discretion of the President",
          "Determined by the Parliament",
          "Changed by the state legislature"
        ],
        correctAnswerIndex: 2,
        explanation: "The salaries, allowances, privileges, leave, and pension of judges of a high court are determined by the Parliament, but they cannot be changed to their disadvantage except during a financial emergency."
    ),

    Question(
      questionText: "What power does a high court have in relation to contempt of court?",
      options: [
        "No power to punish for contempt",
        "Power to criticize but not punish",
        "Power to punish any person for contempt",
        "Power only to reprimand"
      ],
      correctAnswerIndex: 2,
      explanation: "A high court has the power to punish any person for contempt of court, maintaining its authority, dignity, and honor.",
    ),
    Question(
        questionText: "What position does the high court hold in the Indian single-integrated judicial system?",
        options: [
          "Above the Supreme Court",
          "Below the subordinate courts",
          "Between the Supreme Court and subordinate courts",
          "Equal to subordinate courts"
        ],
        correctAnswerIndex: 2,
        explanation: "The high court operates below the Supreme Court but above the subordinate courts in the Indian single-integrated judicial system, holding a pivotal position in state judicial administration."
    ),

    Question(
        questionText: "When did the institution of high court originate in India, and which were the first high courts established?",
        options: [
          "In 1950, with high courts in Calcutta, Bombay, and Madras",
          "In 1862, with high courts in Calcutta, Bombay, and Madras",
          "In 1866, with a high court in Allahabad",
          "In 1956, with the Seventh Amendment Act"
        ],
        correctAnswerIndex: 1,
        explanation: "The institution of high court originated in India in 1862 with the establishment of high courts in Calcutta, Bombay, and Madras. Subsequently, other provinces in British India also got their high courts."
    ),

    Question(
        questionText: "How many high courts are there in India, and how many of them have jurisdiction over more than one state?",
        options: [
          "20 high courts, 3 with jurisdiction over more than one state",
          "25 high courts, 3 with jurisdiction over more than one state",
          "15 high courts, 1 with jurisdiction over more than one state",
          "30 high courts, 5 with jurisdiction over more than one state"
        ],
        correctAnswerIndex: 1,
        explanation: "There are 25 high courts in India. Among them, three high courts have jurisdiction over more than one state."
    ),

    Question(
        questionText: "What is the role of Delhi's high court among the union territories?",
        options: [
          "Delhi has no high court.",
          "Delhi shares a common high court with other union territories.",
          "Delhi has a separate high court since 1966.",
          "Delhi falls under the jurisdiction of a state high court."
        ],
        correctAnswerIndex: 2,
        explanation: "Delhi has a separate high court since 1966. Union territories of Jammu and Kashmir and Ladakh share a common high court, while other union territories come under the jurisdiction of different state high courts."
    ),

    Question(
        questionText: "Who appoints judges of a high court, and how is the chief justice appointed?",
        options: [
          "The Prime Minister appoints judges; the President appoints the chief justice.",
          "The President appoints judges; the Prime Minister appoints the chief justice.",
          "The Parliament appoints judges; the Governor appoints the chief justice.",
          "The President appoints judges; after consultation with the chief justice of India and the governor, appoints the chief justice."
        ],
        correctAnswerIndex: 3,
        explanation: "Judges of a high court are appointed by the President. The chief justice is appointed by the President after consultation with the chief justice of India and the governor of the state concerned."
    ),

    Question(
        questionText: "What system was replaced by the 99th Constitutional Amendment Act of 2014 and the National Judicial Appointments Commission (NJAC) Act of 2014?",
        options: [
          "Collegium System",
          "President's Appointment System",
          "Executive Appointment System",
          "Parliamentary Appointment System"
        ],
        correctAnswerIndex: 0,
        explanation: "The 99th Constitutional Amendment Act of 2014 and the NJAC Act replaced the Collegium System of appointing judges with the National Judicial Appointments Commission. However, the Supreme Court declared both as unconstitutional, and the Collegium System was reinstated."
    ),

    Question(
        questionText: "What are the qualifications for a person to be appointed as a judge of a high court?",
        options: [
          "Minimum age of 40 years and experience as a lawyer",
          "Citizenship of India and experience as a lawyer or judicial officer",
          "Minimum age of 35 years and experience as a judge",
          "Distinguished jurist with no minimum age requirement"
        ],
        correctAnswerIndex: 1,
        explanation: "To be appointed as a judge of a high court, a person should be a citizen of India and have either held a judicial office in the territory of India for ten years or been an advocate of a high court for ten years."
    ),

    Question(
        questionText: "What is the oath or affirmation taken by a person appointed as a judge of a high court?",
        options: [
          "To serve the government faithfully",
          "To uphold the sovereignty and integrity of India",
          "To follow the orders of the executive",
          "To protect the interests of the ruling party"
        ],
        correctAnswerIndex: 1,
        explanation: "A person appointed as a judge of a high court takes an oath or affirmation to uphold the sovereignty and integrity of India, perform duties without fear or favor, and uphold the Constitution and laws."
    ),

    Question(
        questionText: "How are the salaries, allowances, and pensions of judges of a high court determined?",
        options: [
          "By the state legislature",
          "By the executive",
          "By the President",
          "By the Parliament"
        ],
        correctAnswerIndex: 3,
        explanation: "The salaries, allowances, privileges, leave, and pensions of judges of a high court are determined by the Parliament."
    ),

    Question(
      questionText: "What percentage of their last drawn salary do retired chief justices and judges receive as a monthly pension?",
      options: ["25%", "50%", "75%", "100%"],
      correctAnswerIndex: 1,
      explanation: "Retired chief justices and judges of a high court receive 50% of their last drawn salary as a monthly pension.",
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
    home: highCourt(),
  ));
}

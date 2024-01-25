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

class municipolities extends StatefulWidget {
  final String? userIdentifier;

  municipolities({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<municipolities> createState() => _municipolitiesState();
}

class _municipolitiesState extends State<municipolities> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

//40. MUNICIPALITIES

    Question(
      questionText: "What is the significance of the term 'Urban Local Government' in India?",
      options: [
        "It signifies the governance of rural areas by elected representatives.",
        "It signifies the governance of urban areas by elected representatives.",
        "It refers to the central government's control over local areas.",
        "It refers to the governance of specialized industrial zones."
      ],
      correctAnswerIndex: 1,
      explanation: "The term 'Urban Local Government' in India signifies the governance of an urban area by the people through their elected representatives.",
    ),

    Question(
      questionText: "How many types of urban local governments exist in India, according to the provided text?",
      options: ["Four", "Six", "Eight", "Ten"],
      correctAnswerIndex: 2,
      explanation: "There are eight types of urban local governments in India, including municipal corporation, municipality, notified area committee, town area committee, cantonment board, township, port trust, and special purpose agency.",
    ),

    Question(
        questionText: "When was the system of urban government constitutionalized in India?",
        options: ["1950", "1972", "1985", "1992"],
        correctAnswerIndex: 3,
        explanation: "The system of urban government was constitutionalized through the 74th Constitutional Amendment Act of 1992."
    ),

    Question(
        questionText: "Which ministries at the Central level deal with the subject of 'urban local government'?",
        options: [
          "Ministry of Finance and Ministry of External Affairs",
          "Ministry of Housing and Urban Affairs",
          "Ministry of Agriculture and Ministry of Commerce",
          "Ministry of Education and Ministry of Health"
        ],
        correctAnswerIndex: 1,
        explanation: "At the Central level, the subject of 'urban local government' is dealt with by the Ministry of Housing and Urban Affairs, Ministry of Defence (in the case of cantonment boards), and Ministry of Home Affairs (in the case of Union Territories)."
    ),

    Question(
      questionText: "Who is considered the father of local self-government in India?",
      options: ["Lord Mayo", "Lord Ripon", "Rajiv Gandhi", "V P Singh"],
      correctAnswerIndex: 1,
      explanation: "Lord Ripon, with his Resolution of 1882, is hailed as the 'Magna Carta' of local self-government and is considered the father of local self-government in India.",
    ),
    Question(
      questionText: "Which part of the Constitution of India deals with 'The Municipalities'?",
      options: ["Part VII", "Part IX-A", "Part XI", "Part XIV"],
      correctAnswerIndex: 1,
      explanation: "Part IX-A of the Constitution of India, added by the 74th Amendment Act of 1992, deals with 'The Municipalities.'",
    ),

    Question(
      questionText: "How many functional items does the Twelfth Schedule contain, and what does it deal with?",
      options: ["Ten items, dealing with rural administration", "Fifteen items, dealing with state governance", "Eighteen items, dealing with municipalities", "Twenty items, dealing with education"],
      correctAnswerIndex: 2,
      explanation: "The Twelfth Schedule contains eighteen functional items dealing specifically with municipalities, added by the 74th Amendment Act of 1992.",
    ),

    Question(
      questionText: "What is the objective of the 74th Amendment Act of 1992 regarding urban governments?",
      options: ["To dissolve urban governments", "To centralize urban governance", "To weaken urban governments", "To revitalize and strengthen urban governments"],
      correctAnswerIndex: 3,
      explanation: "The 74th Amendment Act of 1992 aims at revitalizing and strengthening urban governments, enabling them to function effectively as units of local government.",
    ),

    Question(
      questionText: "How many types of municipalities does the act provide for in every state?",
      options: ["Four types", "Two types", "Three types", "Five types"],
      correctAnswerIndex: 2,
      explanation: "The act provides for the constitution of three types of municipalities in every state: Nagar Panchayat, Municipal Council, and Municipal Corporation.",
    ),

    Question(
      questionText: "Under what circumstances may a municipality not be constituted in an urban area?",
      options: ["If the population is too small", "If municipal services are provided by an industrial establishment", "If the governor decides against it", "If the area lacks economic importance"],
      correctAnswerIndex: 1,
      explanation: "If municipal services are being provided by an industrial establishment, the governor may specify that area as an industrial township, and a municipality may not be constituted.",
    ),

    Question(
      questionText: "What factors should the governor consider while specifying a transitional area, a smaller urban area, or a larger urban area?",
      options: ["Climatic conditions", "Density of traffic", "Population density, revenue generated, employment percentage, economic importance", "Educational facilities"],
      correctAnswerIndex: 2,
      explanation: "The governor must consider factors like population density, revenue generated, percentage of employment in non-agricultural activities, economic importance, and other relevant factors while specifying areas.",
    ),

    Question(
      questionText: "How are members of a municipality elected, and what provision does the state legislature have regarding the chairperson?",
      options: ["Indirect election by the state legislature, appointment of chairperson by the governor", "Direct election by the people, with no provision for the chairperson", "Direct election by the people, state legislature may provide for chairperson's election", "Appointment by the president, with no provision for the chairperson"],
      correctAnswerIndex: 2,
      explanation: "All members of a municipality are elected directly by the people, and the state legislature may provide for the manner of election of the chairperson.",
    ),

    Question(
      questionText: "What is the purpose of the Wards Committees, and when are they constituted?",
      options: ["To manage municipal finances, always constituted", "To represent industrial interests, during emergencies", "To oversee municipal elections, as needed", "To address local issues, in municipalities with a population of three lakh or more"],
      correctAnswerIndex: 3,
      explanation: "Wards Committees are constituted to represent local issues in municipalities with a population of three lakh or more, according to the 74th Amendment Act of 1992.",
    ),

    Question(
      questionText: "Besides Wards Committees, what other committees can the state legislature provide for, and who may be made members of the municipality?",
      options: ["Finance Committees, open to all citizens", "Educational Committees, for teachers only", "Any committees, with no specific requirements for members", "Health Committees, for medical professionals only"],
      correctAnswerIndex: 2,
      explanation: "The state legislature can provide for the constitution of other committees besides Wards Committees, and the chairpersons of such committees may be made members of the municipality.",
    ),

    Question(
      questionText: "What does the 74th Amendment Act of 1992 specify regarding the reservation of seats in municipalities?",
      options: ["No reservations allowed", "Reservation for scheduled castes and scheduled tribes only", "Reservation for women only", "Reservation for scheduled castes, scheduled tribes, and women"],
      correctAnswerIndex: 3,
      explanation: "The act provides for the reservation of seats for scheduled castes, scheduled tribes, and women in proportion to their population in the municipal area.",
    ),

    Question(
      questionText: "When does the reservation of seats and offices of chairpersons for scheduled castes and scheduled tribes cease to have effect?",
      options: ["After the next general election", "After 50 years from the implementation of the act", "After 80 years from the implementation of the act", "After 100 years from the implementation of the act"],
      correctAnswerIndex: 2,
      explanation: "The reservation of seats and offices of chairpersons for scheduled castes and scheduled tribes shall cease to have effect after the expiration of the period specified in Article 334, which is presently eighty years (till 2030).",
    ),
    Question(
      questionText: "What is the duration of the term of office for every municipality according to the 74th Amendment Act of 1992?",
      options: ["Two years", "Three years", "Four years", "Five years"],
      correctAnswerIndex: 3,
      explanation: "The 74th Amendment Act of 1992 provides for a five-year term of office for every municipality from the date of its first meeting.",
    ),

    Question(
      questionText: "Under what circumstances can a municipality be dissolved before the completion of its term?",
      options: ["At any time", "Only after completing three years", "Before the expiry of its five-year term", "After completing four years"],
      correctAnswerIndex: 2,
      explanation: "A municipality can be dissolved before the completion of its term, and fresh elections must be completed either before the expiry of its five-year duration or, in case of dissolution, within six months from the date of dissolution.",
    ),

    Question(
      questionText: "What happens if the remainder of the period for which a dissolved municipality would have continued is less than six months?",
      options: ["It continues for the full five-year term", "No new election is needed", "Election is held for the remaining period", "The municipality is permanently dissolved"],
      correctAnswerIndex: 1,
      explanation: "If the remainder of the period is less than six months, it is not necessary to hold any election for constituting the new municipality for such a short period, and the municipality continues for the full five-year term.",
    ),

    Question(
      questionText: "What is the term of office for a municipality constituted upon the dissolution of a municipality before the expiration of its duration?",
      options: ["Full five years", "Six months", "One year", "Remainder of the period for which the dissolved municipality would have continued"],
      correctAnswerIndex: 3,
      explanation: "A municipality constituted upon the dissolution of a municipality before the expiration of its duration continues only for the remainder of the period for which the dissolved municipality would have continued.",
    ),

    Question(
      questionText: "What provisions does the 74th Amendment Act of 1992 make with respect to dissolution?",
      options: ["No provisions for dissolution", "Dissolution without notice", "Municipality must be given a reasonable opportunity of being heard", "Immediate dissolution without any procedure"],
      correctAnswerIndex: 2,
      explanation: "The act makes two provisions regarding dissolution: (a) a municipality must be given a reasonable opportunity of being heard before its dissolution; and (b) no amendment of any law shall cause dissolution of a municipality before the expiry of the five years term.",
    ),

    Question(
      questionText: "Under what circumstances can a person be disqualified for being chosen as or for being a member of a municipality?",
      options: ["Only if below 30 years of age", "If disqualified under any law for elections to the state legislature", "If not a resident of the municipality", "If disqualified under any law for municipal elections only"],
      correctAnswerIndex: 1,
      explanation: "A person can be disqualified for being chosen as or for being a member of a municipality if disqualified under any law for elections to the state legislature or under any law made by the state legislature.",
    ),

    Question(
      questionText: "What is the role of the State Election Commission in the context of municipalities?",
      options: ["Preparation of economic plans", "Direction and control of municipal functions", "Conduct of municipal elections and preparation of electoral rolls", "Appointment of municipal officials"],
      correctAnswerIndex: 2,
      explanation: "The State Election Commission is vested with the superintendence, direction, and control of the preparation of electoral rolls and the conduct of elections to the municipalities.",
    ),

    Question(
      questionText: "What may the state legislature endow municipalities with, according to the 74th Amendment Act of 1992?",
      options: ["Executive powers", "Judicial powers", "Powers and authority necessary for self-government", "Legislative powers"],
      correctAnswerIndex: 2,
      explanation: "The state legislature may endow municipalities with such powers and authority as may be necessary to enable them to function as institutions of self-government.",
    ),

    Question(
      questionText: "What does the Twelfth Schedule include, and what powers can the state legislature provide regarding economic development and social justice?",
      options: ["Eighteen functional items; no powers for economic development", "Eighteen functional items; powers for economic development and social justice", "Twelve functional items; powers for social justice only", "Fifteen functional items; no powers specified"],
      correctAnswerIndex: 1,
      explanation: "The Twelfth Schedule includes eighteen functional items, and the state legislature may provide powers and responsibilities for municipalities in relation to the preparation of plans for economic development and social justice.",
    ),

    Question(
      questionText: "How can a municipality generate funds, and what role does the Finance Commission play?",
      options: ["By borrowing from banks; no role for Finance Commission", "By collecting fees only; Finance Commission reviews municipal performance", "By levying taxes; Finance Commission reviews financial position", "By receiving grants-in-aid; Finance Commission suggests audit measures"],
      correctAnswerIndex: 2,
      explanation: "A municipality can generate funds by levying taxes, and the Finance Commission reviews the financial position of municipalities every five years, making recommendations on principles for the distribution of proceeds and measures to improve their financial position.",
    ),

    Question(
      questionText: "Are the provisions of Part IX-A applicable to Union Territories?",
      options: ["No, only to states", "Yes, with no exceptions", "Yes, with exceptions specified by the President", "No, only to scheduled areas"],
      correctAnswerIndex: 2,
      explanation: "The provisions of Part IX-A are applicable to Union Territories, but the President may direct exceptions and modifications for their application.",
    ),

    Question(
      questionText: "Which areas are exempted from the application of the 74th Amendment Act of 1992?",
      options: ["Only tribal areas", "Only scheduled areas", "Tribal and scheduled areas", "No areas are exempted"],
      correctAnswerIndex: 2,
      explanation: "The act does not apply to scheduled areas and tribal areas in the states, and it does not affect the functions and powers of the Darjeeling Gorkha Hill Council of West Bengal.",
    ),
    Question(
      questionText: "What is the composition of a District Planning Committee, and how are its members elected?",
      options: ["Appointed by the President; elected by the Governor", "Elected by the state legislature; appointed by the Governor", "Four-fifths elected by district residents; one-fifth appointed by the Governor", "Appointed by the municipalities; elected by the panchayats"],
      correctAnswerIndex: 2,
      explanation: "Four-fifths of the members of a District Planning Committee are elected by the elected members of the district panchayat and municipalities in the district from amongst themselves.",
    ),

    Question(
      questionText: "What factors should a District Planning Committee consider in preparing the draft development plan?",
      options: ["Only matters related to urban areas", "Population density only", "Matters of common interest between Panchayats and Municipalities, and available resources", "Government objectives only"],
      correctAnswerIndex: 2,
      explanation: "A District Planning Committee should consider matters of common interest between Panchayats and Municipalities, including spatial planning, sharing of water, and other resources, as well as the overall objectives and priorities set by the Government.",
    ),

    Question(
      questionText: "What is the term of office for municipalities existing immediately before the commencement of the act?",
      options: ["One year from the commencement of the act", "Two years from the commencement of the act", "Until the completion of their term, unless dissolved by the state legislature", "Until the completion of their term, with no dissolution allowed"],
      correctAnswerIndex: 2,
      explanation: "Municipalities existing immediately before the commencement of the act shall continue until the completion of their term, unless dissolved by the state legislature sooner.",
    ),

    Question(
      questionText: "What does the 74th Amendment Act of 1992 declare regarding interference by courts in electoral matters of municipalities?",
      options: ["Encourages court interference", "Allows interference only by the Supreme Court", "Bars interference by courts in electoral matters", "Allows interference by any court"],
      correctAnswerIndex: 2,
      explanation: "The act bars interference by courts in the electoral matters of municipalities, stating that the validity of any law related to delimitation or allotment of seats cannot be questioned in any court.",
    ),

    Question(
      questionText: "How many functional items are listed in the Twelfth Schedule, and what areas do they cover?",
      options: ["Twelve items; covering only urban areas", "Fifteen items; covering urban and rural areas", "Eighteen items; covering various aspects including urban planning, sanitation, and cultural promotion", "Twenty items; covering only rural areas"],
      correctAnswerIndex: 2,
      explanation: "The Twelfth Schedule contains eighteen functional items covering various aspects, including urban planning, sanitation, cultural promotion, and more.",
    ),

    Question(
      questionText: "What is the minimum population requirement for an area to be considered a metropolitan area?",
      options: ["5 lakh or more", "7 lakh or more", "10 lakh or more", "15 lakh or more"],
      correctAnswerIndex: 2,
      explanation: "A metropolitan area is defined as an area having a population of 10 lakh or more, in one or more districts, consisting of two or more municipalities or panchayats.",
    ),

    Question(
      questionText: "How are members of a Metropolitan Planning Committee elected, and what should the committee consider in preparing the draft development plan?",
      options: ["Appointed by the President; consider only government objectives", "Elected by the state legislature; consider only urban planning", "Two-thirds elected by municipalities and panchayats; consider government objectives and overall objectives of India", "Appointed by the municipalities; consider only local plans"],
      correctAnswerIndex: 2,
      explanation: "Two-thirds of the members of a Metropolitan Planning Committee are elected by municipalities and panchayats, and the committee should consider plans prepared by local bodies, matters of common interest, overall objectives of India, and available resources.",
    ),

    Question(
      questionText: "What areas are exempted from the application of the 74th Amendment Act of 1992?",
      options: ["Only tribal areas", "Only scheduled areas", "Tribal and scheduled areas", "No areas are exempted"],
      correctAnswerIndex: 2,
      explanation: "The act does not apply to scheduled areas and tribal areas in the states, and it does not affect the functions and powers of the Darjeeling Gorkha Hill Council of West Bengal.",
    ),

    // Question(
    //     questionText: "What is the role of a Metropolitan Planning Committee chairperson, and to whom does the committee forward the development plan?",
    //     options: ["Only consult institutions; forward plan to local government", "Forward plan to the state government; no specific role for chairperson", "Consult institutions, forward plan to the state government.”,
    // ),
    Question(
      questionText: "What are the eight types of urban local bodies created in India for the administration of urban areas?",
      options: [
        "Metropolitan Council, District Council, Local Board, Borough Council, Township Committee, Cantonment Board, Port Trust, Special Municipality",
        "Municipal Corporation, Municipality, Notified Area Committee, Town Area Committee, Cantonment Board, Township, Port Trust, Special Purpose Agency",
        "Urban Council, City Board, Municipal Committee, Township Authority, Cantonment Trust, Port Corporation, Special Area Committee, Metropolitan Municipality",
        "Metropolitan Corporation, Municipal Council, Area Committee, Township Board, Cantonment Authority, Port Committee, Special Municipality, Urban Trust"
      ],
      correctAnswerIndex: 1,
      explanation: "The eight types of urban local bodies in India are Municipal Corporation, Municipality, Notified Area Committee, Town Area Committee, Cantonment Board, Township, Port Trust, and Special Purpose Agency.",
    ),

    Question(
      questionText: "Who heads the Council in a Municipal Corporation?",
      options: ["Deputy Mayor", "Municipal Commissioner", "Council Speaker", "Mayor"],
      correctAnswerIndex: 3,
      explanation: "The Council in a Municipal Corporation is headed by the Mayor, who is assisted by a Deputy Mayor. The Mayor is essentially an ornamental figure and a formal head of the corporation.",
    ),

    Question(
      questionText: "What are the three authorities in a Municipal Corporation?",
      options: ["Mayor, Deputy Mayor, Council Speaker", "Council, Standing Committees, Municipal Commissioner", "Chairman, Vice-Chairman, Municipal Officer", "Chief Executive, Commissioner, Mayor"],
      correctAnswerIndex: 1,
      explanation: "The three authorities in a Municipal Corporation are the Council (deliberative and legislative wing), Standing Committees (dealing with specific areas), and the Municipal Commissioner (chief executive responsible for implementing decisions).",
    ),
    Question(
      questionText: "What are the various names by which municipalities are known?",
      options: [
        "City Council, Municipal Board, Township Authority, Urban Committee, Borough Municipality",
        "Municipal Corporation, Municipal Committee, Municipal Board, Borough Municipality, City Municipality",
        "District Council, Local Board, City Authority, Town Committee, Urban Board",
        "Metropolitan Corporation, Town Area Committee, City Committee, Municipal Council, Borough Authority"
      ],
      correctAnswerIndex: 1,
      explanation: "Municipalities are known by various names like Municipal Corporation, Municipal Committee, Municipal Board, Borough Municipality, and City Municipality.",
    ),

    Question(
      questionText: "Who heads the Council in a Municipality, and what significant role does this person play?",
      options: [
        "Mayor, an ornamental figure",
        "President/Chairman, plays a significant role and is the pivot of municipal administration",
        "Deputy Mayor, has executive powers",
        "Council Speaker, presides over the meetings of the Council"
      ],
      correctAnswerIndex: 1,
      explanation: "In a Municipality, the Council is headed by a President/Chairman, who plays a significant role and is the pivot of municipal administration. Unlike the Mayor in a Municipal Corporation, the President/Chairman has executive powers.",
    ),

    Question(
      questionText: "What is a Notified Area Committee, and why is it created?",
      options: [
        "A committee for notifying important municipal decisions",
        "A committee formed for industrial development",
        "A committee for nominating municipal members",
        "A committee for developing areas not yet qualified for municipality but deemed important by the state government"
      ],
      correctAnswerIndex: 3,
      explanation: "A Notified Area Committee is created for the administration of areas that are fast developing due to industrialization or considered important by the state government. It functions within the framework of the State Municipal Act, and its members, including the chairman, are nominated by the state government.",
    ),

    Question(
      questionText: "What functions are typically entrusted to a Town Area Committee?",
      options: [
        "General municipal administration",
        "Limited civic functions like drainage, roads, street lighting, and conservancy",
        "Comprehensive urban planning",
        "Industrial development planning"
      ],
      correctAnswerIndex: 1,
      explanation: "A Town Area Committee is entrusted with limited civic functions such as drainage, roads, street lighting, and conservancy. It is a semi-municipal authority established for the administration of small towns.",
    ),
    Question(
      questionText: "Under whose administrative control does a Cantonment Board operate?",
      options: [
        "State Government",
        "Union Territory Administration",
        "Central Government",
        "Local Municipal Authority"
      ],
      correctAnswerIndex: 2,
      explanation: "A Cantonment Board operates under the administrative control of the Central Government. It is established for municipal administration for the civilian population in the cantonment area.",
    ),

    Question(
      questionText: "What legislation governs the establishment and functioning of Cantonment Boards?",
      options: [
        "State Municipal Act",
        "Union Territory Act",
        "Cantonments Act of 2006",
        "Local Bodies Act"
      ],
      correctAnswerIndex: 2,
      explanation: "The establishment and functioning of Cantonment Boards are governed by the Cantonments Act of 2006, a legislation enacted by the Central Government. This Act aims to impart greater democratization and improve their financial base for developmental activities.",
    ),

    Question(
      questionText: "How are the members of a Cantonment Board appointed, and who presides over its meetings?",
      options: [
        "Elected by the public, presided over by the Mayor",
        "Nominated by the district magistrate, presided over by the Chief Executive Officer",
        "Partly elected and partly nominated, presided over by the military officer commanding the station",
        "Appointed by the state government, presided over by the Union Minister of Defense"
      ],
      correctAnswerIndex: 2,
      explanation: "A Cantonment Board consists of partly elected and partly nominated members. The military officer commanding the station is the ex-officio president of the board and presides over its meetings.",
    ),

    Question(
      questionText: "What is the main purpose of Port Trusts, and how are they created?",
      options: [
        "To manage and protect the military ports, created by State Legislature",
        "To manage and protect the civilian ports, created by Parliament",
        "To manage and protect the ports, created by local municipalities",
        "To manage and protect the international ports, created by United Nations"
      ],
      correctAnswerIndex: 1,
      explanation: "Port Trusts are established in port areas for two purposes: to manage and protect the ports and to provide civic amenities. They are created by an Act of Parliament and consist of both elected and nominated members.",
    ),

    Question(
      questionText: "What distinguishes Special Purpose Agencies from area-based urban bodies, and provide examples of Special Purpose Agencies?",
      options: [
        "They are elected bodies, Examples: Municipal Corporations",
        "They are not subordinate agencies, Examples: Pollution Control Boards",
        "They are nominated bodies, Examples: Town Area Committees",
        "They are solely responsible for general municipal administration, Examples: Housing Boards"
      ],
      correctAnswerIndex: 2,
      explanation: "Special Purpose Agencies are function-based and not area-based. They are established for designated activities or specific functions and operate independently of local urban governments. Examples include Town Improvement Trusts, Urban Development Authorities, Water Supply and Sewerage Boards, and others.",
    ),
    Question(
      questionText: "What are the three types of municipal personnel systems in India?",
      options: [
        "Central, State, and Local",
        "Separate, Unified, and Integrated",
        "Elected, Nominated, and Appointed",
        "District, Township, and Municipality"
      ],
      correctAnswerIndex: 1,
      explanation: "The three types of municipal personnel systems in India are Separate Personnel System, Unified Personnel System, and Integrated Personnel System.",
    ),

    Question(
      questionText: "What is the key characteristic of the Separate Personnel System in municipal administration?",
      options: [
        "Transferability of personnel between local bodies",
        "Appointment and control by the state government",
        "Undivided loyalty and autonomy of each local body",
        "Membership in state services"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the Separate Personnel System, each local body appoints, administers, and controls its personnel. The key characteristic is undivided loyalty and autonomy of each local body.",
    ),

    Question(
      questionText: "Which states in India predominantly follow the Unified Personnel System for municipal personnel?",
      options: [
        "Maharashtra, Gujarat, Karnataka",
        "Andhra Pradesh, Tamil Nadu, Uttar Pradesh",
        "Rajasthan, Madhya Pradesh, Bihar",
        "Kerala, West Bengal, Odisha"
      ],
      correctAnswerIndex: 1,
      explanation: "The Unified Personnel System is prevalent in states like Andhra Pradesh, Tamil Nadu, Uttar Pradesh, Rajasthan, Madhya Pradesh, and others.",
    ),

    Question(
      questionText: "What distinguishes the Integrated Personnel System, and in which states is it prevalent?",
      options: [
        "Transferability between local bodies and state departments; prevalent in Odisha, Bihar, Karnataka",
        "Appointment and control by local bodies; prevalent in Kerala, West Bengal, Maharashtra",
        "Appointment and control by the state government; prevalent in Andhra Pradesh, Tamil Nadu, Uttar Pradesh",
        "Appointment and control by a central authority; prevalent in Haryana, Punjab, Himachal Pradesh"
      ],
      correctAnswerIndex: 0,
      explanation: "In the Integrated Personnel System, municipal personnel are part of the state services, with transferability between local bodies and state departments. This system is prevalent in states like Odisha, Bihar, Karnataka.",
    ),

    Question(
      questionText: "What are the functions performed by the Central Council of Local Government?",
      options: [
        "Administrative control over local bodies",
        "Advisory role, recommending policy matters, proposing legislation, examining cooperation possibilities",
        "Financial assistance to local bodies",
        "Implementation of development programs"
      ],
      correctAnswerIndex: 1,
      explanation: "The Central Council of Local Government has an advisory role, including recommending policy matters, proposing legislation, examining cooperation possibilities, drawing up a common program of action, recommending Central financial assistance, and reviewing the work done by local bodies with Central financial assistance.",
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
    home: municipolities(),
  ));
}

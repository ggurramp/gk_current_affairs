import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async package

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

class World_capitals_currencies_Africa extends StatefulWidget {
  final String? userIdentifier;

  World_capitals_currencies_Africa({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<World_capitals_currencies_Africa> createState() => _World_capitals_currencies_AfricaState();
}

class _World_capitals_currencies_AfricaState extends State<World_capitals_currencies_Africa> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "What are the capital and currency of Algeria?",
      options: ["Constantine & Algerian pound", "Oran & Franc", "Algiers & Algerian dinar", "Annaba & Lira"],
      correctAnswerIndex: 2,
      explanation: "The capital of Algeria is Algiers and its currency is the Algerian dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Angola?",
      options: ["Huambo & Kwanza", "Lobito & Franc", "Benguela & Lira", "Luanda & Angolan kwanza"],
      correctAnswerIndex: 3,
      explanation: "The capital of Angola is Luanda and its currency is the Angolan kwanza.",
    ),

    Question(
      questionText: "What are the capital and currency of Benin?",
      options: ["Porto-Novo & West African CFA franc", "Cotonou & Benin dinar", "Parakou & Franc", "Djougou & Lira"],
      correctAnswerIndex: 0,
      explanation: "The capital of Benin is Porto-Novo and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Botswana?",
      options: ["Gaborone & Botswana pula", "Francistown & Franc", "Maun & Dinar", "Serowe & Lira"],
      correctAnswerIndex: 0,
      explanation: "The capital of Botswana is Gaborone and its currency is the Botswana pula.",
    ),

    Question(
      questionText: "What are the capital and currency of Burkina Faso?",
      options: ["Bobo-Dioulasso & Lira", "Ouagadougou & West African CFA franc", "Koudougou & Franc", "Banfora & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Burkina Faso is Ouagadougou and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Burundi?",
      options: ["Ngozi & Franc", "Bujumbura & Burundian franc", "Gitega & Lira", "Muyinga & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Burundi is Bujumbura and its currency is the Burundian franc.",
    ),


    Question(
      questionText: "What are the capital and currency of Cabo Verde (Cape Verde)?",
      options: ["Praia & Cape Verdean escudo", "Mindelo & Dinar", "Sal & Lira", "Boa Vista & Franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Cabo Verde is Praia and its currency is the Cape Verdean escudo.",
    ),

    Question(
      questionText: "What are the capital and currency of Cameroon?",
      options: ["Douala & Lira", "Yaoundé & Central African CFA franc", "Garoua & Franc", "Bamenda & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Cameroon is Yaoundé and its currency is the Central African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Central African Republic?",
      options: ["Bangui & Central African CFA franc", "Bimbo & Lira", "Berbérati & Franc", "Bria & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Central African Republic is Bangui and its currency is the Central African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Chad?",
      options: ["Moundou & Franc", "N'Djamena & Central African CFA franc", "Sarh & Lira", "Abéché & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Chad is N'Djamena and its currency is the Central African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Comoros?",
      options: ["Moroni & Comorian franc", "Mutsamudu & Lira", "Fomboni & Franc", "Domoni & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Comoros is Moroni and its currency is the Comorian franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Democratic Republic of the Congo?",
      options: ["Lubumbashi & Congolese lira", "Kinshasa & Congolese franc", "Mbuji-Mayi & Franc", "Kananga & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Democratic Republic of the Congo is Kinshasa and its currency is the Congolese franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Republic of the Congo?",
      options: ["Pointe-Noire & Lira", "Brazzaville & Central African CFA franc", "Dolisie & Franc", "Owando & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of the Republic of the Congo is Brazzaville and its currency is the Central African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Djibouti?",
      options: ["Obock & Djiboutian lira", "Dikhil & Franc", "Tadjoura & Dinar", "Djibouti & Djiboutian franc"],
      correctAnswerIndex: 3,
      explanation: "The capital of Djibouti is Djibouti and its currency is the Djiboutian franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Egypt?",
      options: ["Alexandria & Dinar", "Giza & Lira", "Luxor & Franc", "Cairo & Egyptian pound"],
      correctAnswerIndex: 3,
      explanation: "The capital of Egypt is Cairo and its currency is the Egyptian pound.",
    ),

    Question(
      questionText: "What are the capital and currency of Equatorial Guinea?",
      options: ["Malabo & Central African CFA franc", "Bata & Guinea franc", "Luba & Dinar", "Ebebiyín & Lira"],
      correctAnswerIndex: 0,
      explanation: "The capital of Equatorial Guinea is Malabo and its currency is the Central African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Eritrea?",
      options: ["Massawa & Nakfa", "Asmara & Eritrean nakfa", "Keren & Franc", "Barentu & Lira"],
      correctAnswerIndex: 1,
      explanation: "The capital of Eritrea is Asmara and its currency is the Eritrean nakfa.",
    ),

    Question(
      questionText: "What are the capital and currency of Eswatini (Swaziland)?",
      options: ["Mbabane & Swazi lilangeni", "Manzini & Lira", "Lobamba & Franc", "Nhlangano & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Eswatini is Mbabane and its currency is the Swazi lilangeni.",
    ),
    Question(
      questionText: "What are the capital and currency of Ethiopia?",
      options: ["Addis Ababa & Ethiopian birr", "Dire Dawa & Lira", "Gondar & Franc", "Mek'ele & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Ethiopia is Addis Ababa and its currency is the Ethiopian birr.",
    ),

    Question(
      questionText: "What are the capital and currency of Gabon?",
      options: ["Libreville & Central African CFA franc", "Port-Gentil & Gabon franc", "Franceville & Lira", "Oyem & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Gabon is Libreville and its currency is the Central African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of The Gambia?",
      options: ["Banjul & Gambian dalasi", "Brikama & Lira", "Farafenni & Franc", "Serekunda & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of The Gambia is Banjul and its currency is the Gambian dalasi.",
    ),

    Question(
      questionText: "What are the capital and currency of Ghana?",
      options: ["Accra & Ghanaian cedi", "Kumasi & Lira", "Tamale & Franc", "Takoradi & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Ghana is Accra and its currency is the Ghanaian cedi.",
    ),

    Question(
      questionText: "What are the capital and currency of Guinea?",
      options: ["Conakry & Guinean franc", "Kankan & Lira", "Nzérékoré & Franc", "Labé & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Guinea is Conakry and its currency is the Guinean franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Guinea-Bissau?",
      options: ["Bissau & West African CFA franc", "Bafatá & Lira", "Gabú & Franc", "Catió & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Guinea-Bissau is Bissau and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Ivory Coast (Côte d'Ivoire)?",
      options: ["Abidjan & Ivorian franc", "Yamoussoukro & West African CFA franc", "San-Pédro & Lira", "Korhogo & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Ivory Coast (Côte d'Ivoire) is Yamoussoukro and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Kenya?",
      options: ["Nairobi & Kenyan shilling", "Mombasa & Lira", "Kisumu & Franc", "Eldoret & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Kenya is Nairobi and its currency is the Kenyan shilling.",
    ),

    Question(
      questionText: "What are the capital and currency of Lesotho?",
      options: ["Maseru & Lesotho loti", "Mafeteng & Lira", "Hlotse & Franc", "Mohale's Hoek & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Lesotho is Maseru and its currency is the Lesotho loti.",
    ),

    Question(
      questionText: "What are the capital and currency of Liberia?",
      options: ["Monrovia & Liberian dollar", "Gbarnga & Lira", "Kakata & Franc", "Voinjama & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Liberia is Monrovia and its currency is the Liberian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Libya?",
      options: ["Tripoli & Libyan dinar", "Benghazi & Lira", "Misrata & Franc", "Bayda & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Libya is Tripoli and its currency is the Libyan dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Madagascar?",
      options: ["Antananarivo & Malagasy ariary", "Toamasina & Lira", "Antsirabe & Franc", "Mahajanga & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Madagascar is Antananarivo and its currency is the Malagasy ariary.",
    ),
    Question(
      questionText: "What are the capital and currency of Malawi?",
      options: ["Lilongwe & Malawian kwacha", "Blantyre & Malawi lira", "Mzuzu & Franc", "Zomba & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Malawi is Lilongwe and its currency is the Malawian kwacha.",
    ),

    Question(
      questionText: "What are the capital and currency of Mali?",
      options: ["Bamako & West African CFA franc", "Sikasso & Lira", "Mopti & Franc", "Kidal & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Mali is Bamako and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Mauritania?",
      options: ["Nouakchott & Mauritanian ouguiya", "Nouadhibou & Lira", "Chinguetti & Franc", "Rosso & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Mauritania is Nouakchott and its currency is the Mauritanian ouguiya.",
    ),

    Question(
      questionText: "What are the capital and currency of Mauritius?",
      options: ["Port Louis & Mauritian rupee", "Beau Bassin-Rose Hill & Lira", "Vacoas-Phoenix & Franc", "Curepipe & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Mauritius is Port Louis and its currency is the Mauritian rupee.",
    ),

    Question(
      questionText: "What are the capital and currency of Morocco?",
      options: ["Rabat & Moroccan dirham", "Casablanca & Lira", "Marrakesh & Franc", "Fes & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Morocco is Rabat and its currency is the Moroccan dirham.",
    ),

    Question(
      questionText: "What are the capital and currency of Mozambique?",
      options: ["Maputo & Mozambican metical", "Beira & Lira", "Nampula & Franc", "Chimoio & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Mozambique is Maputo and its currency is the Mozambican metical.",
    ),
    Question(
      questionText: "What are the capital and currency of Namibia?",
      options: ["Windhoek & Namibian dollar", "Walvis Bay & Lira", "Swakopmund & Franc", "Otjiwarongo & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Namibia is Windhoek and its currency is the Namibian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Niger?",
      options: ["Niamey & West African CFA franc", "Zinder & Lira", "Maradi & Franc", "Tahoua & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Niger is Niamey and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Nigeria?",
      options: ["Abuja & Nigerian naira", "Lagos & Lira", "Kano & Franc", "Ibadan & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Nigeria is Abuja and its currency is the Nigerian naira.",
    ),

    Question(
      questionText: "What are the capital and currency of Rwanda?",
      options: ["Kigali & Rwandan franc", "Butare & Lira", "Gitarama & Franc", "Ruhengeri & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Rwanda is Kigali and its currency is the Rwandan franc.",
    ),

    Question(
      questionText: "What are the capital and currency of São Tomé and Príncipe?",
      options: ["São Tomé & São Tomé and Príncipe dobra", "Santo António & Lira", "Neves & Franc", "Trindade & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of São Tomé and Príncipe is São Tomé and its currency is the São Tomé and Príncipe dobra.",
    ),

    Question(
      questionText: "What are the capital and currency of Senegal?",
      options: ["Dakar & West African CFA franc", "Touba & Lira", "Thiès & Franc", "Kaolack & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Senegal is Dakar and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Seychelles?",
      options: ["Victoria & Seychellois rupee", "Beau Vallon & Lira", "Anse Royale & Franc", "Bel Ombre & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Seychelles is Victoria and its currency is the Seychellois rupee.",
    ),

    Question(
      questionText: "What are the capital and currency of Sierra Leone?",
      options: ["Freetown & Sierra Leonean leone", "Bo & Lira", "Kenema & Franc", "Makeni & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Sierra Leone is Freetown and its currency is the Sierra Leonean leone.",
    ),

    Question(
      questionText: "What are the capital and currency of Somalia?",
      options: ["Mogadishu & Somali shilling", "Hargeisa & Lira", "Bosaso & Franc", "Galkayo & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Somalia is Mogadishu and its currency is the Somali shilling.",
    ),

    Question(
      questionText: "What are the capital and currency of South Africa?",
      options: ["Pretoria & South African rand", "Cape Town & Lira", "Johannesburg & Franc", "Durban & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The administrative capital of South Africa is Pretoria and its currency is the South African rand.",
    ),

    Question(
      questionText: "What are the capital and currency of South Sudan?",
      options: ["Juba & South Sudanese pound", "Malakal & Lira", "Wau & Franc", "Aweil & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of South Sudan is Juba and its currency is the South Sudanese pound.",
    ),

    Question(
      questionText: "What are the capital and currency of Sudan?",
      options: ["Khartoum & Sudanese pound", "Omdurman & Lira", "Nyala & Franc", "Port Sudan & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Sudan is Khartoum and its currency is the Sudanese pound.",
    ),
    Question(
      questionText: "What are the capital and currency of Swaziland (Eswatini)?",
      options: ["Mbabane & Swazi lilangeni", "Manzini & Lira", "Big Bend & Franc", "Nhlangano & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Swaziland (Eswatini) is Mbabane and its currency is the Swazi lilangeni.",
    ),

    Question(
      questionText: "What are the capital and currency of Tanzania?",
      options: ["Dodoma & Tanzanian shilling", "Dar es Salaam & Lira", "Arusha & Franc", "Mwanza & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Tanzania is Dodoma and its currency is the Tanzanian shilling.",
    ),

    Question(
      questionText: "What are the capital and currency of Togo?",
      options: ["Lomé & West African CFA franc", "Sokodé & Lira", "Kara & Franc", "Atakpamé & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Togo is Lomé and its currency is the West African CFA franc.",
    ),

    Question(
      questionText: "What are the capital and currency of Tunisia?",
      options: ["Tunis & Tunisian dinar", "Sfax & Lira", "Sousse & Franc", "Kairouan & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Tunisia is Tunis and its currency is the Tunisian dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Uganda?",
      options: ["Kampala & Ugandan shilling", "Gulu & Lira", "Lira & Franc", "Jinja & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Uganda is Kampala and its currency is the Ugandan shilling.",
    ),

    Question(
      questionText: "What are the capital and currency of Zambia?",
      options: ["Lusaka & Zambian kwacha", "Kitwe & Lira", "Ndola & Franc", "Kabwe & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Zambia is Lusaka and its currency is the Zambian kwacha.",
    ),
    Question(
      questionText: "What are the capital and currency of Zimbabwe?",
      options: ["Harare & Zimbabwean dollar", "Bulawayo & Lira", "Chitungwiza & Franc", "Mutare & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Zimbabwe is Harare and its currency was traditionally the Zimbabwean dollar. However, due to hyperinflation, its use has been suspended and multiple foreign currencies are now in use.",
    ),


    // Add your questions here
    // ...
  ];
  int _elapsedTimeInSeconds = 0; // Elapsed exam time in seconds

  late Timer _examTimer;

  @override
  void initState() {
    super.initState();
    _loadLikedData();
    //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
    _startpresidentsOfIndiaTimer();
  }
  void _startpresidentsOfIndiaTimer() {
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
    home: World_capitals_currencies_Africa(),
  ));
}

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

class World_capitals_currencies_South_North_america extends StatefulWidget {
  final String? userIdentifier;

  World_capitals_currencies_South_North_america({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<World_capitals_currencies_South_North_america> createState() => _World_capitals_currencies_South_North_americaState();
}

class _World_capitals_currencies_South_North_americaState extends State<World_capitals_currencies_South_North_america> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(150, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "What are the capital and currency of Antigua and Barbuda?",
      options: ["St. John's & East Caribbean dollar", "English Harbour & Lira", "Liberta & Franc", "Potters Village & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Antigua and Barbuda is St. John's and its currency is the East Caribbean dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Bahamas?",
      options: ["Nassau & Bahamian dollar", "Freeport & Lira", "Marsh Harbour & Franc", "Lucaya & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Bahamas is Nassau and its currency is the Bahamian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Barbados?",
      options: ["Bridgetown & Barbadian dollar", "Speightstown & Lira", "Holetown & Franc", "Oistins & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Barbados is Bridgetown and its currency is the Barbadian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Belize?",
      options: ["Belmopan & Belize dollar", "Belize City & Lira", "San Ignacio & Franc", "Orange Walk & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Belize is Belmopan and its currency is the Belize dollar.",
    ),
    Question(
      questionText: "What are the capital and currency of Canada?",
      options: ["Ottawa & Canadian dollar", "Toronto & Lira", "Vancouver & Franc", "Montreal & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Canada is Ottawa and its currency is the Canadian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Costa Rica?",
      options: ["San José & Costa Rican colón", "Limon & Lira", "Alajuela & Franc", "Heredia & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Costa Rica is San José and its currency is the Costa Rican colón.",
    ),

    Question(
      questionText: "What are the capital and currency of Cuba?",
      options: ["Havana & Cuban peso", "Santiago de Cuba & Lira", "Camagüey & Franc", "Holguín & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Cuba is Havana and its currency is the Cuban peso.",
    ),

    Question(
      questionText: "What are the capital and currency of Dominica?",
      options: ["Roseau & East Caribbean dollar", "Portsmouth & Lira", "Marigot & Franc", "Berekua & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Dominica is Roseau and its currency is the East Caribbean dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Dominican Republic?",
      options: ["Santo Domingo & Dominican peso", "Santiago & Lira", "La Romana & Franc", "San Pedro de Macorís & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of the Dominican Republic is Santo Domingo and its currency is the Dominican peso.",
    ),

    Question(
      questionText: "What are the capital and currency of El Salvador?",
      options: ["San Salvador & United States dollar", "Santa Ana & Salvadoran colón", "San Miguel & Franc", "Soyapango & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of El Salvador is San Salvador and its official currency is the United States dollar. Note that the Salvadoran colón was used previously but is now obsolete.",
    ),

    Question(
      questionText: "What are the capital and currency of Grenada?",
      options: ["St. George's & East Caribbean dollar", "Gouyave & Lira", "Victoria & Franc", "Sauteurs & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Grenada is St. George's and its currency is the East Caribbean dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Guatemala?",
      options: ["Guatemala City & Guatemalan quetzal", "Mixco & Lira", "Quetzaltenango & Franc", "Villa Nueva & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Guatemala is Guatemala City and its currency is the Guatemalan quetzal.",
    ),

    Question(
      questionText: "What are the capital and currency of Haiti?",
      options: ["Port-au-Prince & Haitian gourde", "Carrefour & Lira", "Delmas & Franc", "Pétion-Ville & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Haiti is Port-au-Prince and its currency is the Haitian gourde.",
    ),

    Question(
      questionText: "What are the capital and currency of Honduras?",
      options: ["Tegucigalpa & Honduran lempira", "San Pedro Sula & Lira", "Choloma & Franc", "La Ceiba & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Honduras is Tegucigalpa and its currency is the Honduran lempira.",
    ),
    Question(
      questionText: "What are the capital and currency of Jamaica?",
      options: ["Kingston & Jamaican dollar", "Montego Bay & Lira", "Spanish Town & Franc", "Portmore & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Jamaica is Kingston and its currency is the Jamaican dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Mexico?",
      options: ["Mexico City & Mexican peso", "Guadalajara & Lira", "Monterrey & Franc", "Puebla & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Mexico is Mexico City and its currency is the Mexican peso.",
    ),

    Question(
      questionText: "What are the capital and currency of Nicaragua?",
      options: ["Managua & Nicaraguan córdoba", "León & Lira", "Masaya & Franc", "Chinandega & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Nicaragua is Managua and its currency is the Nicaraguan córdoba.",
    ),

    Question(
      questionText: "What are the capital and currency of Panama?",
      options: ["Panama City & Panamanian balboa", "San Miguelito & Lira", "Tocumen & Franc", "David & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Panama is Panama City and its currency is the Panamanian balboa.",
    ),

    Question(
      questionText: "What are the capital and currency of Saint Kitts and Nevis?",
      options: ["Basseterre & East Caribbean dollar", "Sandy Point Town & Lira", "Dieppe Bay Town & Franc", "Cayon & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Saint Kitts and Nevis is Basseterre and its currency is the East Caribbean dollar.",
    ),
    Question(
      questionText: "What are the capital and currency of Saint Lucia?",
      options: ["Castries & East Caribbean dollar", "Gros Islet & Lira", "Vieux Fort & Franc", "Dennery & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Saint Lucia is Castries and its currency is the East Caribbean dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Saint Vincent and the Grenadines?",
      options: ["Kingstown & East Caribbean dollar", "Barrouallie & Lira", "Chateaubelair & Franc", "Layou & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Saint Vincent and the Grenadines is Kingstown and its currency is the East Caribbean dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Trinidad and Tobago?",
      options: ["Port of Spain & Trinidad and Tobago dollar", "San Fernando & Lira", "Arima & Franc", "Chaguanas & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Trinidad and Tobago is Port of Spain and its currency is the Trinidad and Tobago dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of United States?",
      options: ["Washington, D.C. & United States dollar", "New York & Lira", "Los Angeles & Franc", "Chicago & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of the United States is Washington, D.C. and its currency is the United States dollar.",
    ),
    Question(
      questionText: "What are the capital and currency of Argentina?",
      options: ["Buenos Aires & Argentine peso", "Córdoba & Lira", "Rosario & Franc", "Mendoza & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Argentina is Buenos Aires and its currency is the Argentine peso.",
    ),
    Question(
      questionText: "What are the capital and currency of Bolivia?",
      options: ["Sucre & Bolivian bolíviano", "La Paz & Lira", "Santa Cruz de la Sierra & Franc", "Cochabamba & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The constitutional capital of Bolivia is Sucre, while the seat of government and executive capital is La Paz. Its currency is the Bolivian bolíviano.",
    ),

    Question(
      questionText: "What are the capital and currency of Brazil?",
      options: ["Brasília & Brazilian real", "Rio de Janeiro & Lira", "São Paulo & Franc", "Salvador & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Brazil is Brasília and its currency is the Brazilian real.",
    ),

    Question(
      questionText: "What are the capital and currency of Chile?",
      options: ["Santiago & Chilean peso", "Valparaíso & Lira", "Concepción & Franc", "La Serena & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Chile is Santiago and its currency is the Chilean peso.",
    ),

    Question(
      questionText: "What are the capital and currency of Colombia?",
      options: ["Bogotá & Colombian peso", "Medellín & Lira", "Cali & Franc", "Barranquilla & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Colombia is Bogotá and its currency is the Colombian peso.",
    ),

    Question(
      questionText: "What are the capital and currency of Ecuador?",
      options: ["Quito & United States dollar", "Guayaquil & Lira", "Cuenca & Franc", "Santo Domingo & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Ecuador is Quito and its official currency is the United States dollar.",
    ),
    Question(
      questionText: "What are the capital and currency of Guyana?",
      options: ["Georgetown & Guyanese dollar", "Linden & Lira", "New Amsterdam & Franc", "Anna Regina & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Guyana is Georgetown and its currency is the Guyanese dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Paraguay?",
      options: ["Asunción & Paraguayan guaraní", "Ciudad del Este & Lira", "San Lorenzo & Franc", "Luque & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Paraguay is Asunción and its currency is the Paraguayan guaraní.",
    ),

    Question(
      questionText: "What are the capital and currency of Peru?",
      options: ["Lima & Peruvian sol", "Arequipa & Lira", "Trujillo & Franc", "Chiclayo & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Peru is Lima and its currency is the Peruvian sol.",
    ),

    Question(
      questionText: "What are the capital and currency of Suriname?",
      options: ["Paramaribo & Surinamese dollar", "Lelydorp & Lira", "Nieuw Nickerie & Franc", "Moengo & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Suriname is Paramaribo and its currency is the Surinamese dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Uruguay?",
      options: ["Montevideo & Uruguayan peso", "Salto & Lira", "Ciudad de la Costa & Franc", "Paysandú & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Uruguay is Montevideo and its currency is the Uruguayan peso.",
    ),

    Question(
      questionText: "What are the capital and currency of Venezuela?",
      options: ["Caracas & Venezuelan bolívar", "Maracaibo & Lira", "Valencia & Franc", "Barquisimeto & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Venezuela is Caracas and its currency is the Venezuelan bolívar.",
    ),
    Question(
      questionText: "What are the capital and currency of Saint Barthélemy?",
      options: ["Gustavia & Euro", "Lorient & Dollar", "Public & Franc", "Corossol & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Saint Barthélemy is Gustavia and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Sint Maarten?",
      options: ["Philipsburg & Netherlands Antillean guilder", "Simpson Bay & Lira", "Lowlands & Franc", "Cole Bay & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Sint Maarten is Philipsburg and its currency is the Netherlands Antillean guilder.",
    ),

    Question(
      questionText: "What are the capital and currency of Turks and Caicos Islands?",
      options: ["Cockburn Town & United States dollar", "Providenciales & Lira", "Middle Caicos & Franc", "South Caicos & Dinar"],
      correctAnswerIndex: 0,
      explanation: "The capital of Turks and Caicos Islands is Cockburn Town and its currency is the United States dollar.",
    ),
    Question(
      questionText: "What are the capital and currency of Australia?",
      options: ["Canberra & Australian dollar", "Sydney & Oceanic euro", "Melbourne & Pacific pound", "Brisbane & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Australia is Canberra and its currency is the Australian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Fiji?",
      options: ["Suva & Fijian dollar", "Nadi & Oceanic euro", "Lautoka & Pacific pound", "Labasa & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Fiji is Suva and its currency is the Fijian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Kiribati?",
      options: ["Tarawa & Kiribati dollar", "Betio & Oceanic euro", "Bairiki & Pacific pound", "Butaritari & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Kiribati is Tarawa and it uses the Australian dollar as its currency.",
    ),

    Question(
      questionText: "What are the capital and currency of Marshall Islands?",
      options: ["Majuro & United States dollar", "Kwajalein & Oceanic euro", "Jaluit & Pacific pound", "Ebeye & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Marshall Islands is Majuro and its currency is the United States dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Micronesia?",
      options: ["Palikir & United States dollar", "Weno & Oceanic euro", "Kolonia & Pacific pound", "Yap & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Micronesia is Palikir and its currency is the United States dollar.",
    ),
    Question(
      questionText: "What are the capital and currency of Nauru?",
      options: ["Yaren & Australian dollar", "Anibare & Oceanic euro", "Meneng & Pacific pound", "Boe & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "Nauru doesn't have an official capital, but Yaren is the district where the government offices are located. Its currency is the Australian dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of New Zealand?",
      options: ["Wellington & New Zealand dollar", "Auckland & Oceanic euro", "Christchurch & Pacific pound", "Dunedin & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of New Zealand is Wellington and its currency is the New Zealand dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Palau?",
      options: ["Ngerulmud & United States dollar", "Koror & Oceanic euro", "Airai & Pacific pound", "Peleliu & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Palau is Ngerulmud and its currency is the United States dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Papua New Guinea?",
      options: ["Port Moresby & Papua New Guinean kina", "Lae & Oceanic euro", "Madang & Pacific pound", "Mount Hagen & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Papua New Guinea is Port Moresby and its currency is the Papua New Guinean kina.",
    ),

    Question(
      questionText: "What are the capital and currency of Samoa?",
      options: ["Apia & Samoan tālā", "Salelologa & Oceanic euro", "Vaitele & Pacific pound", "Faleula & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Samoa is Apia and its currency is the Samoan tālā.",
    ),
    Question(
      questionText: "What are the capital and currency of Solomon Islands?",
      options: ["Honiara & Solomon Islands dollar", "Auki & Oceanic euro", "Gizo & Pacific pound", "Taro Island & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Solomon Islands is Honiara and its currency is the Solomon Islands dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Tonga?",
      options: ["Nuku'alofa & Tongan paʻanga", "Neiafu & Oceanic euro", "Haveluliku & Pacific pound", "Vaini & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Tonga is Nuku'alofa and its currency is the Tongan paʻanga.",
    ),

    Question(
      questionText: "What are the capital and currency of Tuvalu?",
      options: ["Funafuti & Tuvaluan dollar", "Fongafale & Oceanic euro", "Vaiaku & Pacific pound", "Asau & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Tuvalu is Funafuti and its currency is the Tuvaluan dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Vanuatu?",
      options: ["Port Vila & Vanuatu vatu", "Luganville & Oceanic euro", "Norsup & Pacific pound", "Isangel & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of Vanuatu is Port Vila and its currency is the Vanuatu vatu.",
    ),

    Question(
      questionText: "What are the capital and currency of American Samoa?",
      options: ["Pago Pago & United States dollar", "Aunu'u & Oceanic euro", "Lauli'i & Pacific pound", "Faleniu & Oceania franc"],
      correctAnswerIndex: 0,
      explanation: "The capital of American Samoa is Pago Pago and its currency is the United States dollar.",
    ),


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
    home: World_capitals_currencies_South_North_america(),
  ));
}

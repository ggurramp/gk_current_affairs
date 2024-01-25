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

class World_capitals_currencies extends StatefulWidget {
  final String? userIdentifier;

  World_capitals_currencies({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<World_capitals_currencies> createState() => _World_capitals_currenciesState();
}

class _World_capitals_currenciesState extends State<World_capitals_currencies> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "What are the capital and currency of China?",
      options: ["Shanghai & Yuan", "Beijing & Yuan", "Tianjin & Taka", "Guangzhou & Ringgit"],
      correctAnswerIndex: 1,
      explanation: "The capital of China is Beijing and its currency is the Yuan.",
    ),

    Question(
      questionText: "What are the capital and currency of Japan?",
      options: ["Tokyo & Yen", "Osaka & Won", "Kyoto & Baht", "Hiroshima & Rupiah"],
      correctAnswerIndex: 0,
      explanation: "The capital of Japan is Tokyo and its currency is the Yen.",
    ),

    Question(
      questionText: "What are the capital and currency of South Korea?",
      options: ["Seoul & Won", "Busan & Yen", "Daegu & Dollar", "Incheon & Peso"],
      correctAnswerIndex: 0,
      explanation: "The capital of South Korea is Seoul and its currency is the Won.",
    ),

    Question(
      questionText: "What are the capital and currency of Indonesia?",
      options: ["Bandung & Rupiah", "Surabaya & Baht", "Jakarta & Rupiah", "Medan & Kyat"],
      correctAnswerIndex: 2,
      explanation: "The capital of Indonesia is Jakarta and its currency is the Rupiah.",
    ),

    Question(
      questionText: "What are the capital and currency of Thailand?",
      options: ["Bangkok & Baht", "Chiang Mai & Rupiah", "Phuket & Ringgit", "Pattaya & Dong"],
      correctAnswerIndex: 0,
      explanation: "The capital of Thailand is Bangkok and its currency is the Baht.",
    ),


    Question(
      questionText: "What are the capital and currency of India?",
      options: ["Delhi & Rupee", "Mumbai & Taka", "Bangalore & Dinar", "Kolkata & Dong"],
      correctAnswerIndex: 0,
      explanation: "The capital of India is Delhi and its currency is the Rupee.",
    ),

    Question(
      questionText: "What are the capital and currency of Pakistan?",
      options: ["Lahore & Rupee", "Karachi & Dirham", "Islamabad & Rupee", "Multan & Ringgit"],
      correctAnswerIndex: 2,
      explanation: "The capital of Pakistan is Islamabad and its currency is the Rupee.",
    ),

    Question(
      questionText: "What are the capital and currency of Malaysia?",
      options: ["Kuala Lumpur & Ringgit", "Penang & Peso", "Melaka & Dinar", "Ipoh & Baht"],
      correctAnswerIndex: 0,
      explanation: "The capital of Malaysia is Kuala Lumpur and its currency is the Ringgit.",
    ),

    Question(
      questionText: "What are the capital and currency of Vietnam?",
      options: ["Da Nang & Dong", "Ho Chi Minh City & Yen", "Hanoi & Dong", "Nha Trang & Riel"],
      correctAnswerIndex: 2,
      explanation: "The capital of Vietnam is Hanoi and its currency is the Dong.",
    ),

    Question(
      questionText: "What are the capital and currency of Philippines?",
      options: ["Manila & Peso", "Cebu & Baht", "Davao & Rupiah", "Quezon City & Kyat"],
      correctAnswerIndex: 0,
      explanation: "The capital of the Philippines is Manila and its currency is the Peso.",
    ),

    Question(
      questionText: "What are the capital and currency of Bangladesh?",
      options: ["Dhaka & Taka", "Chittagong & Rupee", "Rajshahi & Ringgit", "Khulna & Baht"],
      correctAnswerIndex: 0,
      explanation: "The capital of Bangladesh is Dhaka and its currency is the Taka.",
    ),

    Question(
      questionText: "What are the capital and currency of Sri Lanka?",
      options: ["Kandy & Lankan Rupee", "Galle & Taka", "Colombo & Sri Lankan Rupee", "Jaffna & Kyat"],
      correctAnswerIndex: 2,
      explanation: "The capital of Sri Lanka is Colombo and its currency is the Sri Lankan Rupee.",
    ),

    Question(
      questionText: "What are the capital and currency of Nepal?",
      options: ["Pokhara & Rupee", "Kathmandu & Nepalese Rupee", "Lalitpur & Tugrik", "Bhaktapur & Ringgit"],
      correctAnswerIndex: 1,
      explanation: "The capital of Nepal is Kathmandu and its currency is the Nepalese Rupee.",
    ),

    Question(
      questionText: "What are the capital and currency of Myanmar?",
      options: ["Yangon & Kyat", "Mandalay & Dong", "Naypyidaw & Kyat", "Bago & Baht"],
      correctAnswerIndex: 2,
      explanation: "The capital of Myanmar is Naypyidaw and its currency is the Kyat.",
    ),

    Question(
      questionText: "What are the capital and currency of Singapore?",
      options: ["Singapore City & Dollar", "Jurong West & Baht", "Woodlands & Ringgit", "Tampines & Rupiah"],
      correctAnswerIndex: 0,
      explanation: "The capital of Singapore is Singapore City and its currency is the Dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Cambodia?",
      options: ["Phnom Penh & Riel", "Siem Reap & Ringgit", "Battambang & Dong", "Sihanoukville & Kyat"],
      correctAnswerIndex: 0,
      explanation: "The capital of Cambodia is Phnom Penh and its currency is the Riel.",
    ),

    Question(
      questionText: "What are the capital and currency of Laos?",
      options: ["Vientiane & Kip", "Luang Prabang & Tugrik", "Pakse & Kyat", "Savannakhet & Rupiah"],
      correctAnswerIndex: 0,
      explanation: "The capital of Laos is Vientiane and its currency is the Kip.",
    ),

    Question(
      questionText: "What are the capital and currency of Mongolia?",
      options: ["Ulaanbaatar & Tugrik", "Erdenet & Yen", "Darkhan & Peso", "Choibalsan & Riel"],
      correctAnswerIndex: 0,
      explanation: "The capital of Mongolia is Ulaanbaatar and its currency is the Tugrik.",
    ),
    Question(
      questionText: "What are the capital and currency of Bhutan?",
      options: ["Thimphu & Ngultrum", "Paro & Kyat", "Punakha & Tugrik", "Wangdue Phodrang & Riel"],
      correctAnswerIndex: 0,
      explanation: "The capital of Bhutan is Thimphu and its currency is the Ngultrum.",
    ),

    Question(
      questionText: "What are the capital and currency of Afghanistan?",
      options: ["Kandahar & Afghani", "Herat & Dinar", "Kabul & Afghani", "Mazar-i-Sharif & Ringgit"],
      correctAnswerIndex: 2,
      explanation: "The capital of Afghanistan is Kabul and its currency is the Afghani.",
    ),

    Question(
      questionText: "What are the capital and currency of Tajikistan?",
      options: ["Khujand & Somoni", "Kulob & Ruble", "Dushanbe & Somoni", "Istaravshan & Manat"],
      correctAnswerIndex: 2,
      explanation: "The capital of Tajikistan is Dushanbe and its currency is the Somoni.",
    ),

    Question(
      questionText: "What are the capital and currency of Turkmenistan?",
      options: ["Mary & Turkmenistani manat", "Turkmenabat & Som", "Ashgabat & Turkmenistani manat", "Dasoguz & Tenge"],
      correctAnswerIndex: 2,
      explanation: "The capital of Turkmenistan is Ashgabat and its currency is the Turkmenistani manat.",
    ),

    Question(
      questionText: "What are the capital and currency of Kyrgyzstan?",
      options: ["Bishkek & Som", "Osh & Manat", "Jalal-Abad & Lira", "Karabalta & Afghani"],
      correctAnswerIndex: 0,
      explanation: "The capital of Kyrgyzstan is Bishkek and its currency is the Som.",
    ),

    Question(
      questionText: "What are the capital and currency of Kazakhstan?",
      options: ["Almaty & Tenge", "Astana (Nur-Sultan) & Tenge", "Shymkent & Manat", "Karaganda & Ruble"],
      correctAnswerIndex: 1,
      explanation: "The capital of Kazakhstan is Astana (now known as Nur-Sultan) and its currency is the Tenge.",
    ),

    Question(
      questionText: "What are the capital and currency of Uzbekistan?",
      options: ["Samarkand & Uzbekistani soʻm", "Bukhara & Tenge", "Tashkent & Uzbekistani soʻm", "Nukus & Ruble"],
      correctAnswerIndex: 2,
      explanation: "The capital of Uzbekistan is Tashkent and its currency is the Uzbekistani soʻm.",
    ),

    Question(
      questionText: "What are the capital and currency of Maldives?",
      options: ["Male & Maldivian rufiyaa", "Hulhumale & Rupee", "Addu City & Dollar", "Maafushi & Peso"],
      correctAnswerIndex: 0,
      explanation: "The capital of Maldives is Male and its currency is the Maldivian rufiyaa.",
    ),


    Question(
      questionText: "What are the capital and currency of Saudi Arabia?",
      options: ["Riyadh & Saudi riyal", "Jeddah & Dinar", "Mecca & Dirham", "Medina & Pound"],
      correctAnswerIndex: 0,
      explanation: "The capital of Saudi Arabia is Riyadh and its currency is the Saudi riyal.",
    ),

    Question(
      questionText: "What are the capital and currency of Iran?",
      options: ["Mashhad & Rial", "Isfahan & Dinar", "Shiraz & Toman", "Tehran & Rial"],
      correctAnswerIndex: 3,
      explanation: "The capital of Iran is Tehran and its currency is the Rial.",
    ),

    Question(
      questionText: "What are the capital and currency of Iraq?",
      options: ["Baghdad & Iraqi dinar", "Basra & Rial", "Mosul & Lira", "Kirkuk & Dirham"],
      correctAnswerIndex: 0,
      explanation: "The capital of Iraq is Baghdad and its currency is the Iraqi dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of United Arab Emirates?",
      options: ["Dubai & UAE dirham", "Sharjah & Rial", "Ajman & Dinar", "Abu Dhabi & UAE dirham"],
      correctAnswerIndex: 3,
      explanation: "The capital of the United Arab Emirates is Abu Dhabi and its currency is the UAE dirham.",
    ),

    Question(
      questionText: "What are the capital and currency of Qatar?",
      options: ["Doha & Qatari riyal", "Al Rayyan & Dinar", "Umm Salal & Dirham", "Al Wakrah & Lira"],
      correctAnswerIndex: 0,
      explanation: "The capital of Qatar is Doha and its currency is the Qatari riyal.",
    ),

    Question(
      questionText: "What are the capital and currency of Oman?",
      options: ["Muscat & Omani rial", "Nizwa & Dirham", "Salalah & Dinar", "Sohar & Pound"],
      correctAnswerIndex: 0,
      explanation: "The capital of Oman is Muscat and its currency is the Omani rial.",
    ),

    Question(
      questionText: "What are the capital and currency of Yemen?",
      options: ["Aden & Yemeni rial", "Sanaa & Yemeni rial", "Taiz & Dinar", "Hodeidah & Dirham"],
      correctAnswerIndex: 1,
      explanation: "The capital of Yemen is Sanaa and its currency is the Yemeni rial.",
    ),

    Question(
      questionText: "What are the capital and currency of Israel?",
      options: ["Tel Aviv & Israeli new shekel", "Jerusalem & Israeli new shekel", "Haifa & Lira", "Eilat & Dinar"],
      correctAnswerIndex: 1,
      explanation: "The capital of Israel is Jerusalem and its currency is the Israeli new shekel.",
    ),
    Question(
      questionText: "What are the capital and currency of Jordan?",
      options: ["Irbid & Jordanian dinar", "Zarqa & Lira", "Aqaba & Riyal", "Amman & Jordanian dinar"],
      correctAnswerIndex: 3,
      explanation: "The capital of Jordan is Amman and its currency is the Jordanian dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Lebanon?",
      options: ["Tripoli & Lebanese lira", "Sidon & Dinar", "Tyre & Rial", "Beirut & Lebanese pound"],
      correctAnswerIndex: 3,
      explanation: "The capital of Lebanon is Beirut and its currency is the Lebanese pound.",
    ),

    Question(
      questionText: "What are the capital and currency of Bahrain?",
      options: ["Muharraq & Dinar", "Riffa & Riyal", "Manama & Bahraini dinar", "Isa Town & Shekel"],
      correctAnswerIndex: 2,
      explanation: "The capital of Bahrain is Manama and its currency is the Bahraini dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Kuwait?",
      options: ["Al Ahmadi & Kuwaiti dinar", "Hawally & Riyal", "Sabah Al Salem & Lira", "Kuwait City & Kuwaiti dinar"],
      correctAnswerIndex: 3,
      explanation: "The capital of Kuwait is Kuwait City and its currency is the Kuwaiti dinar.",
    ),

    Question(
      questionText: "What are the capital and currency of Syria?",
      options: ["Aleppo & Syrian pound", "Homs & Lira", "Latakia & Riyal", "Damascus & Syrian pound"],
      correctAnswerIndex: 3,
      explanation: "The capital of Syria is Damascus and its currency is the Syrian pound.",
    ),

    Question(
      questionText: "What are the capital and currency of Cyprus?",
      options: ["Limassol & Euro", "Larnaca & Cypriot pound", "Nicosia & Euro", "Paphos & Lira"],
      correctAnswerIndex: 2,
      explanation: "The capital of Cyprus is Nicosia and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Palestine?",
      options: ["Gaza & Jordanian dinar", "Ramallah & Israeli shekel", "Hebron & Palestinian pound", "East Jerusalem & Israeli shekel"],
      correctAnswerIndex: 1,
      explanation: "While the situation is complex, Ramallah serves as the administrative capital of the Palestinian Authority and they use the Israeli shekel for currency.",
    ),
    Question(
      questionText: "What are the capital and currency of Armenia?",
      options: ["Gyumri & Dram", "Vanadzor & Lira", "Yerevan & Dram", "Dilijan & Ruble"],
      correctAnswerIndex: 2,
      explanation: "The capital of Armenia is Yerevan and its currency is the Dram.",
    ),

    Question(
      questionText: "What are the capital and currency of Azerbaijan?",
      options: ["Sumgait & Manat", "Ganja & Lira", "Baku & Azerbaijani manat", "Nakhchivan & Rial"],
      correctAnswerIndex: 2,
      explanation: "The capital of Azerbaijan is Baku and its currency is the Azerbaijani manat.",
    ),

    Question(
      questionText: "What are the capital and currency of Georgia?",
      options: ["Batumi & Lari", "Kutaisi & Ruble", "Tbilisi & Georgian lari", "Gori & Manat"],
      correctAnswerIndex: 2,
      explanation: "The capital of Georgia is Tbilisi and its currency is the Georgian lari.",
    ),

    Question(
      questionText: "What are the capital and currency of Turkey?",
      options: ["Ankara & Turkish lira", "Istanbul & Euro", "Izmir & Manat", "Antalya & Riyal"],
      correctAnswerIndex: 0,
      explanation: "The capital of Turkey is Ankara and its currency is the Turkish lira.",
    ),

    Question(
      questionText: "What are the capital and currency of Cyprus?",
      options: ["Nicosia & Euro", "Limassol & Cypriot pound", "Larnaca & Dollar", "Paphos & Lira"],
      correctAnswerIndex: 0,
      explanation: "The capital of Cyprus is Nicosia and its currency is the Euro.",
    ),

    Question(
      questionText: "What are the capital and currency of Brunei?",
      options: ["Bandar Seri Begawan & Brunei dollar", "Tutong & Ringgit", "Belait & Rupiah", "Temburong & Baht"],
      correctAnswerIndex: 0,
      explanation: "The capital of Brunei is Bandar Seri Begawan and its currency is the Brunei dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Cambodia?",
      options: ["Phnom Penh & Cambodian riel", "Battambang & Baht", "Siem Reap & Dong", "Sihanoukville & Kip"],
      correctAnswerIndex: 0,
      explanation: "The capital of Cambodia is Phnom Penh and its currency is the Cambodian riel.",
    ),

    Question(
      questionText: "What are the capital and currency of Laos?",
      options: ["Vientiane & Lao kip", "Luang Prabang & Dong", "Pakse & Baht", "Savannakhet & Riel"],
      correctAnswerIndex: 0,
      explanation: "The capital of Laos is Vientiane and its currency is the Lao kip.",
    ),

    Question(
      questionText: "What are the capital and currency of North Korea?",
      options: ["Pyongyang & North Korean won", "Kaesong & Yuan", "Nampo & Yen", "Wonsan & Ruble"],
      correctAnswerIndex: 0,
      explanation: "The capital of North Korea is Pyongyang and its currency is the North Korean won.",
    ),

    Question(
      questionText: "What are the capital and currency of Singapore?",
      options: ["Sentosa & Ringgit", "Woodlands & Baht", "Pulau Ujong & Singapore dollar", "Changi & Yen"],
      correctAnswerIndex: 2,
      explanation: "The capital of Singapore is Pulau Ujong (commonly just called Singapore) and its currency is the Singapore dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of South Korea?",
      options: ["Seoul & South Korean won", "Busan & Yen", "Incheon & Yuan", "Daegu & Peso"],
      correctAnswerIndex: 0,
      explanation: "The capital of South Korea is Seoul and its currency is the South Korean won.",
    ),

    Question(
      questionText: "What are the capital and currency of Taiwan?",
      options: ["Taipei & New Taiwan dollar", "Kaohsiung & Yuan", "Taoyuan & Yen", "Tainan & Ringgit"],
      correctAnswerIndex: 0,
      explanation: "The capital of Taiwan is Taipei and its currency is the New Taiwan dollar.",
    ),

    Question(
      questionText: "What are the capital and currency of Timor-Leste?",
      options: ["Dili & United States dollar", "Baucau & Peso", "Maliana & Rupiah", "Suai & Baht"],
      correctAnswerIndex: 0,
      explanation: "The capital of Timor-Leste is Dili and its currency is the United States dollar.",
    )


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
    home: World_capitals_currencies(),
  ));
}

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

class ancientHistory_3 extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_3({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_3> createState() => _ancientHistory_3State();
}

class _ancientHistory_3State extends State<ancientHistory_3> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
        questionText: "Who wrote Buddhacharita?",
        options: ["Basumitra", "Vishakhadatta", "Nagarjuna", "Asvaghosa"],
        correctAnswerIndex: 3,
        explanation:"Asvaghosa, the ancient Indian poet, is credited with composing Buddhacharita. This epic poem narrates the life of Gautama Buddha and holds significance in Buddhist literature. "
    ),

    Question(
        questionText: "The founder of Nanda Dynasty was",
        options: ["Dhana Nanda", "Nagadasaka", "Kalasoka", "Mahapadma"],
        correctAnswerIndex: 3,
        explanation:"Mahapadma Nanda is recognized as the founder of the Nanda Dynasty. He played a pivotal role in establishing the prominence of the Nanda Dynasty in ancient Indian history, "
    ),

    Question(
      questionText: "The 1st capital of Magadh was",
      options: ["Rajagriha", "Vaishali", "Pataliputra", "Kashi"],
      correctAnswerIndex: 0,
      explanation: "Bimbisara's first capital was at Girivraja (identified with Rajagriha). He belongs to Horyanka dynasty. He was also known as Seniya or Shrenika.",
    ),

    Question(
      questionText: "The author of 'Kadambari' was",
      options: ["Bhababhuti", "Banabhatta", "Kshemendra", "Kalhana"],
      correctAnswerIndex: 1,
      explanation: "Banabhatta is also known for his literary work of Harshacharita. He was the court poet of Harshvardhan.",
    ),

    Question(
      questionText: "Whose contemporary was the famous grammarian Patanjali?",
      options: ["Vasudeva Kamba", "Gantami Putra Satakarni", "Agri Mitra Sunga", "Pushya Mitra Sunga"],
      correctAnswerIndex: 3,
      explanation: "The famous work of Patanjali was Yoga Sutras and Mahabhashya in the Sanskrit language. Many thought that yoga text and grammar text were written by two different authors with the same name. Sunga dynasty was founded by Pushya Mitra Sunga.",
    ),

    Question(
      questionText: "Paragal Khan helped in bringing the first-ever Bengali translation of the",
      options: ["Upanishad", "Brahma Sutra", "Ramayana", "Mahabharata"],
      correctAnswerIndex: 3,
      explanation: "Paragal Khan was a ruler of Chittagong. At his request, Kavindra Paramesvara composed the Bengali Mahabharata in (1515-1519) imitating the Sanskrit one.",
    ),

    Question(
        questionText: "Amir Khasru was the Court Poet of",
        options: ["Ghiyasuddin Tughluq", "Akbar", "Balban", "Alauddin Khilji"],
        correctAnswerIndex: 3,
        explanation: " Amir Khasru served as the Court Poet of Alauddin Khilji, the powerful ruler of the Khilji dynasty during the Delhi Sultanate in the 14th century."
    ),

    Question(
        questionText: "Which of the following is true regarding the Gandhara School of Art?",
        options: [
          "It was also known as Buddhist Art",
          "Its figure was superior to the Mathura School of Art.",
          "Buddha's figure appears here for the first time",
          "Its craftsmen used white stone to make images"
        ],
        correctAnswerIndex: 2,
        explanation: " The Gandhara School of Art is known for being one of the earliest schools to depict the figure of Buddha in art. It played a crucial role in the development of Buddhist art."
    ),

    Question(
        questionText: "Who among the following Sultans of Delhi wanted to become the Second Alexander and conquer the world?",
        options: ["Muhammad Bin Tughluq", "Ghiyasuddin Balban", "Alauddin Khilji", "None of them"],
        correctAnswerIndex: 2,
        explanation: " Alauddin Khilji harbored ambitions of world conquest and aimed to emulate the achievements of Alexander the Great. His military campaigns were motivated by a desire for expansion. "
    ),

    Question(
        questionText: "Alexander fought against the Purus on the banks of the river",
        options: ["Ravi", "Iravati", "Indus", "Jhelum"],
        correctAnswerIndex: 3,
        explanation: "Alexander fought against the Purus on the banks of the Jhelum River during his invasion of the Indian subcontinent. "
    ),

    Question(
        questionText: "Who was given the title of Andhra-Kavita Pitamaha?",
        options: ["Srinath", "Peddan", "Sayan", "Madhav"],
        correctAnswerIndex: 1,
        explanation: "Peddan, a Telugu poet, was honored with the title of Andhra-Kavita Pitamaha, which translates to The Grandfather of Telugu Poetry."
    ),
    Question(
        questionText: "Who was the author of the book Tarikh-i-Firuz Shahi?",
        options: ["Ziauddin Barani", "Al Biruni", "Abul Fazi", "Minhaj-us-Siraj"],
        correctAnswerIndex: 0,
        explanation: " "
    ),

    Question(
        questionText: "Sher Shah died while attacking?",
        options: ["Malware", "Kalinjar", "Mandu", "Raisin"],
        correctAnswerIndex: 1,
        explanation: " "
    ),

    Question(
      questionText: "When did Ikhtiyaruddin Bakhtiyar Khalji invade Bengal?",
      options: ["1202 A.D", "1206 A.D", "1194 A.D", "1199 A.D"],
      correctAnswerIndex: 0,
      explanation: "He conquered Nabadwip from the old emperor Lakshmana Sena in 1203.",
    ),

    Question(
        questionText: "Who was the General of Sher Shah?",
        options: ["Shayestha Khan", "Jaisingh", "Brahmajit Gaur", "Dilir Khan"],
        correctAnswerIndex: 2,
        explanation: "Brahmajit Gaur served as the General of Sher Shah Suri, a prominent ruler in medieval India. Sher Shah Suri's military successes were in part due to the effectiveness of his generals."
    ),

    Question(
        questionText: "Who caused to build Qutub Minar in Delhi?",
        options: ["Balban", "Alauddin Khilji", "Qutbuddin Aibak", "Iltutmish"],
        correctAnswerIndex: 2,
        explanation: "Qutbuddin Aibak, the founder of the Delhi Sultanate, initiated the construction of the Qutub Minar in Delhi. The construction was later continued by his successors. "
    ),

    Question(
        questionText: "Name the Sultan who introduced the Rationing System in India",
        options: ["Muhammad bin Tughlaq", "Firuz Tughlaq", "Ghiyasuddin Balban", "Alauddin Khalji"],
        correctAnswerIndex: 3,
        explanation: "Alauddin Khalji, a powerful ruler of the Khalji dynasty, introduced the Rationing System (known as the Diwan-i-Mustakhraj) in India. This system aimed at regulating the prices of essential commodities to ensure food supply and stability in the market. "
    ),

    Question(
      questionText: "Sakabda was started in",
      options: ["58 A.D", "327 A.D", "78 B.C", "78 A.D"],
      correctAnswerIndex: 3,
      explanation: "Sakabda was started by Kanishka in 78 AD.",
    ),

    Question(
        questionText: "The battle of Tarain was fought between Muhammad Ghuri and",
        options: ["Prithviraj Chauhan", "Rama Hambirdeva", "Rana Sanga", "Rana Pratap"],
        correctAnswerIndex: 0,
        explanation: " The battle of Tarain was fought between the Ghurid ruler Muhammad Ghuri and the Chahamana Rajput king Prithviraj Chauhan. The second battle of Tarain in 1192 resulted in Prithviraj Chauhan's defeat"
    ),

    Question(
        questionText: "With whom did Shivaji sign the Treaty of Purandhar in 1665 A.D",
        options: ["Jaisingh", "Prince Muazzam", "Shaista Khan", "Afzal Khan"],
        correctAnswerIndex: 0,
        explanation: "Shivaji signed the Treaty of Purandhar in 1665 A.D with Jaisingh, a Mughal general. The treaty led to compromises between Shivaji and the Mughal Empire, marking a temporary truce. "
    ),
    Question(
      questionText:
      "Which part of Rig Veda considered to be written in later Veda age?",
      options: ["3rd mandala", "7th mandala", "9th mandala", "10th mandala"],
      correctAnswerIndex: 3,
      explanation:
      "1st and 10th mandala were written in the later Vedic age. 2nd to 9th mandala or books were written early Vedic era. The Vedic era is considered to be 1500 BC to 600 BC, where 1000 BC to 600 BC is called the later Vedic era.",
    ),

    Question(
      questionText: "Satyameva Jayate was taken from which book?",
      options: ["Budhacharita", "Arthasastra", "Mundaka Upnishida", "Mahabharata"],
      correctAnswerIndex: 2,
      explanation:
      "The phrase Satyameva Jayate is from the Mundaka Upanishad, one of the Upanishads that are part of the Vedas.",
    ),

    Question(
      questionText: "What is the meaning of the word 'Tripitaka'?",
      options: ["Book", "Truth", "Conclusion", "Basket"],
      correctAnswerIndex: 3,
      explanation: "Tripitaka means three baskets, referring to the three collections of Buddhist scriptures.",
    ),

    Question(
      questionText: "Dadashanga contains religious preach of?",
      options: ["Budha", "Mahaveera", "Rishabhanatha", "Sankaracharya"],
      correctAnswerIndex: 1,
      explanation:
      "Dadashanga contains the religious teachings of Mahaveera, who was the 24th Tirthankara in Jainism.",
    ),

    Question(
      questionText: "Vikramankadevacharita contains the achievement of which king?",
      options: ["Vikramaditya I", "Vikramaditya VI", "Vikramaditya II", "Skandagupta"],
      correctAnswerIndex: 1,
      explanation:
      "Vikramankadevacharita is a literary work by Bilhana, dedicated to the achievements of King Vikramaditya VI of the Western Chalukya dynasty.",
    ),

    Question(
      questionText: "Ganjam inscription depicts about which king?",
      options: ["Karbala", "Samudra Gupta", "Sasanka", "Rudradaman"],
      correctAnswerIndex: 2,
      explanation:
      "The Ganjam inscription depicts information about Gauda king Sasanka, whose capital was at Karnasubarna in present-day Murshidabad, West Bengal.",
    ),

    Question(
      questionText:
      "The conversation between Buddhist monk Nagasena and Bactria king Menander was written in which book?",
      options: ["C-U-Ki", "Fo-Que-Ki", "Milinda Panha", "Angurnikoy"],
      correctAnswerIndex: 2,
      explanation:
      "The Milinda Pañha (Questions of Milinda) is the outcome of a conversation between Buddhist monk Nagasena and Bactria king Menander I.",
    ),

    Question(
      questionText: "The Aihole inscription was written by?",
      options: ["Kautilya", "Horisena", "Rovikirti", "Nayanika"],
      correctAnswerIndex: 2,
      explanation: "The Aihole inscription was written by Rovikirti, a court poet of Chalukya King Pulakeshi II.",
    ),

    Question(
      questionText: "Tahkik-i-hind was written by?",
      options: ["Alberuni", "Al-Baradari", "Suleman", "Al-Masud"],
      correctAnswerIndex: 0,
      explanation:
      "Tahkik-i-hind was written by Alberuni, who came to India with Mahmud of Ghazni during his Indian invasion.",
    ),

    Question(
      questionText: "Ibn Battuta came to India during?",
      options: ["Akbar", "Muhammed Bin Tughlak", "Iltutmis", "Alauddin Khalji"],
      correctAnswerIndex: 1,
      explanation: "Ibn Battuta came to India during the region of Muhammed Bin Tughlak and joined as a Qazi in Delhi.",
    ),

    Question(
      questionText: "What is the meaning of Vedas?",
      options: ["Knowledge", "Truth", "Religion", "Unchanging"],
      correctAnswerIndex: 0,
      explanation:
      "Vedas means knowledge. It is believed that Vedas were not manmade and were called Apaurusheya. Vedas were initially passed down orally and were later compiled.",
    ),

    Question(
      questionText: "Allahabad pillar inscription carved by",
      options: ["Harisena", "Ravikirti", "Rudradaman", "Banabhatta"],
      correctAnswerIndex: 0,
      explanation:
      "The Allahabad pillar inscription was carved by Harisena, a court poet of Samundragupta. It is also known as the Prayaga Prasasti and was written in Sanskrit with Nagari script.",
    ),

    Question(
      questionText:
      "At which of the following places has the largest belt of painted rock shelter of the pre-historic period been found?",
      options: ["Bagor", "Ajanta", "Bhaja", "Bhimbetka"],
      correctAnswerIndex: 3,
      explanation:
      "The largest belt of painted rock shelter of the prehistoric period has been found in the Bhimbetka caves, located in the Raisen District of Madhya Pradesh.",
    ),

    Question(
      questionText: "Who wrote Milindapanha?",
      options: ["Basumitra", "Nagasena", "Asvaghosha", "Nagarjuna"],
      correctAnswerIndex: 1,
      explanation: "Milindapanha was written by Nagasena.",
    ),

    Question(
      questionText: "Who wrote Gitavali, Kavitawali, and Vinaya Patrika?",
      options: ["Chaitanya", "Namadeva", "Tulsidas", "Surdas"],
      correctAnswerIndex: 2,
      explanation: "Gitavali, Kavitawali, and Vinaya Patrika were written by Tulsidas.",
    ),

    Question(
      questionText:
      "Which school of Art flourished in the region between the lower valleys of Krishna and Godavari during 2nd Century BCE-3rd Century CE?",
      options: ["Nagarjuna School", "Amravati School", "Gandhara School", "Mathura School"],
      correctAnswerIndex: 1,
      explanation:
      "The Amravati School of Art flourished in the region between the lower valleys of Krishna and Godavari during 2nd Century BCE-3rd Century CE. The sculptures are made out of white marble.",
    ),

    Question(
      questionText:
      "Which of the following sources states that Srinagar was built by Asoka?",
      options: ["Taranath's History of Tibet", "Mahavamsa", "Divyavadana", "Rajtarangini"],
      correctAnswerIndex: 3,
      explanation:
      "Rajtarangini, written by Kashmiri historian Kalhana, states that Srinagar was built by Asoka. Rajtarangini is a legendary and historical chronicle of the kings of Kashmir.",
    ),





    Question(
        questionText:
        "Which Magadhan ruler launched a final military assault on the Gana rajyas of Kasi-Kosal with the help of new weapons like rathamushala and mahasilakantaka?",
        options: ["Prasenjit", "Sisunaga", "Bimbisara", "Ajatasatru"],
        correctAnswerIndex: 3,
        explanation: " Ajatasatru, the son of King Bimbisara, launched a final military assault on the Gana rajyas of Kasi-Kosal. He utilized new weapons like rathamushala (war chariots) and mahasilakantaka"
    ),

    Question(
        questionText: "The hereditary soldiers of the Mauryan period were known as",
        options: ["Vardhaki", "Atavivala", "Bhritakas", "Maula"],
        correctAnswerIndex: 3,
        explanation: "  The hereditary soldiers of the Mauryan period were known as Maula. They played a crucial role in the military structure of the Mauryan Empire."
    ),

    Question(
      questionText:
      "Official stamping of weights and measures and their periodical inspection are prescribed by",
      options: ["Brihaspati", "Parasara", "Manu", "Narada"],
      correctAnswerIndex: 2,
      explanation: "Official stamping of weights and measures and their periodical inspection are prescribed by Manu.",
    ),

    Question(
        questionText: "Name the historians who have rejected the idea of a marriage alliance between Chandragupta Maurya and Seleucus",
        options: ["H P. Shastri", "B.N. Mukherjee and Romila Thapar", "Vincent Smith", "H.C. Roychoudhury"],
        correctAnswerIndex: 1,
        explanation: " Historians B.N. Mukherjee and Romila Thapar have rejected the idea of a marriage alliance between Chandragupta Maurya and Seleucus. They argue against the historical accuracy of such a claim."
    ),

    Question(
        questionText: "Who among the following was not a Greek Ambassador staying at the Mauryan Court?",
        options: ["Dcimachus", "Dionisius", "Megasthenes", "Diodorus"],
        correctAnswerIndex: 3,
        explanation: "Diodorus was not a Greek Ambassador staying at the Mauryan Court. Megasthenes, Deimachus, and Dionisius are the names associated with Greek Ambassadors in Mauryan history. "
    ),

    Question(
      questionText:
      "Which of the following major rock edicts of Asoka are in Prakrit language and Kharosthi script?",
      options: ["Manshera", "Shahbazgarhi", "Both A and B", "Dhauli"],
      correctAnswerIndex: 2,
      explanation:
      "Major rock edicts of Asoka in Prakrit language and Kharosthi script can be found in both Manshera and Shahbazgarhi.",
    ),

    Question(
        questionText: "Rummindei pillar of Asoka is put up to mark Buddha's",
        options: ["First Sermon", "Death", "Birth", "Enlightenment"],
        correctAnswerIndex: 2,
        explanation: "  The Rummindei pillar of Asoka is put up to mark Buddha's birth. It is one of the significant pillars erected by Asoka with inscriptions."
    ),

    Question(
        questionText: "Which of the following was not a regional headquarters in the Maurya empire?",
        options: ["Tosali", "Tambaparini", "Ujjaiyini", "Taxila"],
        correctAnswerIndex: 1,
        explanation: " Tambaparini was not a regional headquarters in the Maurya empire. Tosali, Ujjaiyini, and Taxila were among the regional headquarters."
    ),

    Question(
        questionText: "To whom was the Lomasa Rishi cave in the Barabar hills (near Gaya) donated by Ashoka",
        options: ["Brahmanas", "Shri Lankan Buddhist monks", "Ajivika monks", "Jain monks"],
        correctAnswerIndex: 2,
        explanation: " The Lomasa Rishi cave in the Barabar hills was donated by Ashoka to Ajivika monks as part of his support for various religious communities. "
    ),

    Question(
      questionText:
      "'Just as for my children, I desire that they should enjoy all happiness and prosperity both in this world and the next. So for all men, I desire the like happiness and prosperity'. This is stated in -",
      options: ["Tarai Pillars", "Kalinga Inscriptions", "Barabar Cave Inscriptions", "Minor Rock Edicts"],
      correctAnswerIndex: 2,
      explanation:
      "This statement is found in the Barabar Cave Inscriptions. Asoka expresses his desire for the happiness and prosperity of all men similar to what he desires for his children.",
    ),

    Question(
      questionText:
      "During the post-Maurya times, elaborate Vedic sacrificial rituals like the Vajapeya, Rajasuya, and Aswamedha were regularly performed by the rulers of",
      options: ["North India", "Deccan", "Both North India and Deccan", "Chola dynasty"],
      correctAnswerIndex: 0,
      explanation:
      "During the post-Maurya times, elaborate Vedic sacrificial rituals were regularly performed by the rulers of North India.",
    ),

    Question(
      questionText: "The Kharosthi script derived from",
      options: ["Sanskrit", "Brahmi", "Pictographs", "Aramaic"],
      correctAnswerIndex: 3,
      explanation: "The Kharosthi script derived from Aramaic.",
    ),

    Question(
      questionText: "The earliest use of the term 'Hindustan' appears in which inscription of Sasanid ruler Shahpur I?",
      options: ["Behistun", "Hamadan", "Naqsh-i-Rustom", "Persepolis"],
      correctAnswerIndex: 2,
      explanation: "The earliest use of the term 'Hindustan' appears in the Naqsh-i-Rustom inscription of Sasanid ruler Shahpur I.",
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
    home: ancientHistory_3(),
  ));
}

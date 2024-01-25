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

class ancientHistory_1 extends StatefulWidget {
  final String? userIdentifier;

  ancientHistory_1({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ancientHistory_1> createState() => _ancientHistory_1State();
}

class _ancientHistory_1State extends State<ancientHistory_1> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "Which one of the following is more probable regarding the Harappa Script?",
      options: ["Pictographic", "Sumerian", "Proto Dravidian", "Sanskritic"],
      correctAnswerIndex: 0,
      explanation: "It was written in the Boustrophedon style. It is written in the first line from right to left and in the second line from left to right. It was pictographic in nature. 400 to 500 sign or logo symbolic used in this script. It is still an undecipherable script.",
    ),

    Question(
      questionText: "The great Bath was found in",
      options: ["Mohenjo-Daro", "Kalibangan", "Lothal", "Harappa"],
      correctAnswerIndex: 0,
      explanation: "The Great Bath was found in Mohenjo-Daro. A bronze dancing girl found in Mohenjodaro. Granary was the largest building of Mohenjo Daro.",
    ),

    Question(
      questionText: "Which emperor has been called Napoleon of India?",
      options: ["Samudragupta", "Chandragupta II Vikramaditya", "Ashoka", "Kanishka"],
      correctAnswerIndex: 0,
      explanation: "Samudragupta was the greatest ruler of the Gupta dynasty. He was called Napoleon of India by V. A. Smith. He was a follower of Vaishnavism but tolerant of other religions.",
    ),

    Question(
      questionText: "The first metal discovered by man was",
      options: ["Zinc", "Copper", "Iron", "Aluminum"],
      correctAnswerIndex: 1,
      explanation: "Copper is the first metal discovered by humans. The first domesticated animal was the dog. The Indus civilized people did not know the use of iron. It was contemporary with the Chalcolithic era.",
    ),

    Question(
      questionText: "Who composed the Allahabad Prasasti?",
      options: ["Harisena", "Vasumitra", "Asvaghosha", "Nagarjuna"],
      correctAnswerIndex: 0,
      explanation: "Harisena was a court poet of Samudra Gupta.",
    ),

    Question(
      questionText: "Which was a major port of the Indus Valley?",
      options: ["Chanhudaro", "Mehargarh", "Lothal", "Kalibangan"],
      correctAnswerIndex: 2,
      explanation: "Lothal was part of the present state of Gujarat. It was a seaport located on the banks of the river Bhogabar. In 1954 S.R. Rao has discovered it.",
    ),

    Question(
      questionText: "What was the policy of Samudragupta in the south?",
      options: ["Digvijay", "Dharmavijaya", "Conquest", "None of the above"],
      correctAnswerIndex: 0,
      explanation: "This policy of Samudragupta is described as Digvijaya or defeating the enemy kings of the South, Grahana or getting the authority over the kingdoms and then Anugraha allowing them to rule their Kingdoms under his Suzerainty. In course of his Southern Campaign, he humbled as many as twelve princes.",
    ),

    Question(
      questionText: "Who was the first independent King of Bengal?",
      options: ["Gopala", "Mahasengupta", "Sasanka", "King Ganesh"],
      correctAnswerIndex: 2,
      explanation: "Sasanka was a king of the Gauda Kingdom and capital was Karnasubarna, in present-day Murshidabad in West Bengal.",
    ),

    Question(
      questionText: "The Indus Valley Civilization belongs to the",
      options: ["Mesolithic period", "Chalcolithic period", "Neolithic period", "Paleolithic period"],
      correctAnswerIndex: 1,
      explanation: "Indus Valley civilization is also known as Harappan civilization. It belongs to the Chalcolithic period and Bronze age. They were not aware of iron metal. There is no clear timeline for the Indus valley civilization. It is considered that they were active from 2900 BC to 1700 BC.",
    ),

    Question(
      questionText: "Who wrote Ramcharita?",
      options: ["Sandhyakara Nandi", "Tulsi Das", "Banabhatta", "Kalidasa"],
      correctAnswerIndex: 0,
      explanation: "Ramcharit was written in Sanskrit by Sandhyakar Nandi. He was a contemporary poet of the Pala kingdom of Bengal. A palm leaf manuscript of Ramcharitam, discovered by Hariprasad Shastri, a Bengali scholar, is preserved in the museum of the Calcutta Asiatic Society. Ramcharitmanas was written by Goswami Tulsidas in the Awadhi language.",
    ),

    Question(
      questionText: "Total number of Puranas",
      options: ["43", "10", "11", "18"],
      correctAnswerIndex: 3,
      explanation: "There is a total of 18 Puranas. It contains many things all together like mythology, cosmology, various legends, folk belief, codes of law, miscellaneous topics. It has suggested a change in the mode of the warship from sacrifice to idol worship. It contains a description of an ancient legend that was heavily colored with superstitions. The Puranas are Brahma Puran, Vishnu Purana, Shiva Purana, Padma Purana, etc. The oldest purana is Matsya Purana.",
    ),

    Question(
      questionText: "Sulapani was a famous artist of the",
      options: ["Pala Period", "Sena Period", "Kushana Period", "Gupta Period"],
      correctAnswerIndex: 1,
      explanation: "Sulapani was one of the finest artists of the Sena era. Other important people are Sandhyakar Nandi, Madhavkar, Jayadeva, Umapati, Dhoyi, etc.",
    ),

    Question(
      questionText: "Divya was the leader of the",
      options: ["Munda Rebellion", "Santal Rebellion", "Kaivarta Rebellion", "Kol Rebellion"],
      correctAnswerIndex: 2,
      explanation: "The Varendra rebellion (also known as the Kaivarta revolt), a revolt against King Mahipala II. The revolt was led by Divya. The Kaivarta (community) were able to capture Varendra by this rebellion. Later on, in 1082 CE, King Rampala was succeeded to recapture his fatherland Varendra by defeating Vim with the assistance of neighboring vassals. Rampala is said to be the founder of the Third Pala Empire. Sandhyakar Nandi, the author of Ramcharit, was his court poet.",
    ),

    Question(
      questionText: "With the people of which country Harappan people carried trade?",
      options: ["Russia", "Sumer", "China", "Iran"],
      correctAnswerIndex: 1,
      explanation: "Indus people used to trade with the Sumerians, Mesopotamians (now southern Iraq) on waterways and land routes. The Harappan region was known as Meluha in Sumar. There was clear evidence of trading between these two civilizations. The same seals were found in both regions.",
    ),

    Question(
      questionText: "Who was the court poet of Samudra Gupta?",
      options: ["Aryabhatta", "Harisena", "Asvaghosha", "Nagarjuna"],
      correctAnswerIndex: 1,
      explanation: "Harisena was a 4th-century Sanskrit poet, an important figure in the court of the Gupta emperor, Samudragupta. His most famous poem, written in 345 C.E., describes the bravery of Samudragupta and is inscribed on the Allahabad Pillar.",
    ),

    Question(
      questionText: "Which of the following is a Harappan site located in Rajasthan?",
      options: ["Kalibangan", "Lothal", "Mohenjodaro", "Suktagendor"],
      correctAnswerIndex: 0,
      explanation: "Kalibangan discovered B. K. Thapar. It was situated on the banks of the river Ghaghara.",
    ),

    Question(
      questionText: "Name the last Tirthankara",
      options: ["Siddhartha", "Silbhadra", "Parsvanath", "Mahavira"],
      correctAnswerIndex: 3,
      explanation: "According to the Jains, a Tirthankara is a person who has conquered the cycle of death and rebirth by himself and paved the way for others to follow. There were 24 Tirthankars. The first Tirthankar was Rishabhanatha. The symbol used for him is the Bull. The 23rd Tirthankara was Parshvanath and the symbol used for him was Snake. The twenty-fourth Tirthankara was Mahavira and the symbol used for him was Lion. He was the original founder of Jainism.",
    ),

    Question(
      questionText: "Rice cultivation is associated with the Harappan site of",
      options: ["Kot Diji", "Ropar", "Kalibangan", "Lothal"],
      correctAnswerIndex: 3,
      explanation: "Lothal was the first dockyard in the world. It was called the entrance of Harappan civilization was located at present-day Gujarat. Lothal was discovered by S.R. Rao in 1954. Evidence of rice found in Lothal and Rangpur both are located in Gujarat",
    ),

    Question(
      questionText: "Taxila was the famous site of",
      options: ["Gupta Art", "Mauryan Art", "Early Vedic Age", "Gandhara Art"],
      correctAnswerIndex: 3,
      explanation: "Taxila was an important city of Ancient India on the eastern shore of the Indus river. Its origins go back to c. 1000 BCE. Taxila meaning City of Cut Stone or Takṣa Rock in Sanskrit is a significant archaeological site located in Punjab, Pakistan.",
    ),

    Question(
      questionText: "Sabha and Samiti are two democratic institutions of",
      options: ["Hilly tribes of India", "Indus Valley people", "Rigvedic Aryans", "Dravidians"],
      correctAnswerIndex: 2,
      explanation: "In the era of the Vedic age, there are many assemblies like Sabha, Samiti, Vidhata, and Gana as mentioned in Rig Veda. Among these Sabha and Samiti were the two most important assemblies. The status of women was admirable they are allowed to participate in Sabha and Samiti. Even the King and the Chief showed eagerness to win the support of Sabha and Samiti. The important administrative division in the Vedic age is: Jana: Aryan tribes were known as Jana, but there was no mention of Janapada. Vis: Jana was divided into a group of villages called vis and headed by Vrajapati. Grama: Vis again divided into grama and headed by Gramins. Kulas: Grama further divided in Kulas i.e family and headed by Kulapa.",
    ),

    Question(
      questionText: "Who composed 'Ai-hole' prasasti?",
      options: ["Harisena", "Nayanikar", "Kautilya", "Rabikirti"],
      correctAnswerIndex: 3,
      explanation: "Aihole was located in the state of Karnataka and was the first capital of the Chalukyas. Many inscriptions have been found here but the inscription at the Meguti temple is popularly known as the Aihole Inscription. It contains many historical events of Chalukyas. It was written in Sanskrit and it uses the old Kannada script. There are also references to the defeat of Harshavardhana by Pulakesin II and the victory of the Chalukyas on Pallavas. There is a reference to the transfer of capital from Aihole to Badami by Pulakesin I. The Aihole inscription was written by Ravikirti, a court poet of the Chalukya king Pulakesin II. Pulakesin II ruled from 610 to 642 CE.",
    ),

    Question(
      questionText: "Indus-valley civilization is called",
      options: ["Stone Age", "Iron Age", "Urban", "Rural"],
      correctAnswerIndex: 2,
      explanation: "The most striking feature of the Indus Valley Civilization was its town planning. It was an urban civilization, whereas the Vedic period was rural in nature. Great Bath was found in both Horoppa and Mohenjo-Daro. Granary was the larges building of the Indus Valley civilization found in Mohenjo-Daro.",
    ),

    Question(
      questionText: "Where was the capital of Sasanka?",
      options: ["Karnasuvarna", "Lakhnawati", "Samatata", "Tamralipta"],
      correctAnswerIndex: 0,
      explanation: "Shashanka was the first independent king of a unified polity in the Bengal region, called the Gauda Kingdom. He between 600 CE and 636/7 CE, whereas other sources place his reign between 590 and 625 CE. He is the contemporary of Harsha and of Bhaskaravarman of Kamarupa. His capital was at Karnasubarna, in present-day Murshidabad in West Bengal. The development of the Bengali calendar is often attributed to Shashanka because the starting date falls within his reign.",
    ),

    Question(
      questionText: "The Upanishads were compiled around",
      options: ["1000 BC", "1600-600 BC", "600 BC", "800 BC"],
      correctAnswerIndex: 2,
      explanation: "The Upanishads consist of a collection of religious and philosophical texts. It was written probably between 800 BCE and 500 BC. It was the time when the traditional Vedic religion has been questioned by Indian society.",
    ),
    Question(
      questionText: "The Origins of Indian Music may be traced to one of the following Vedas",
      options: ["Yajur", "Atharva", "Rig", "Sama"],
      correctAnswerIndex: 3,
      explanation: "The Vedic age was considered to be around 1500 BC to 600 BC in India. Earlier Sama Veda was known as Saman. It contains 1,875 verses that are primarily taken from Rig Veda. An earlier trace of Indian music is found in Sama Veda.",
    ),

    Question(
      questionText: "The famous physician during Buddha's time was",
      options: ["Charaka", "Jivaka", "Kautilya", "Nachiketa"],
      correctAnswerIndex: 1,
      explanation: "Sushruta was known as the 'Father of Indian Medicine' and 'Father of Plastic Surgery'. Jivika was a personal physician of Haryanka king Bimbisara and Buddha.",
    ),

    Question(
      questionText: "In which ancient text do you find the earliest reference to the Varna System?",
      options: ["Atharva Veda", "Satapatha Brahmana", "Manu Samhita", "Rigveda"],
      correctAnswerIndex: 3,
      explanation: "Purusha Sukta, 10th mandala of Vedas mention the four varnas by name - although the word 'varṇa' itself is not mentioned. 1st and 10th mandalas were compiled in the later Vedic period.",
    ),

    Question(
      questionText: "How many Tirthankaras were there in ancient India?",
      options: ["23", "24", "16", "22"],
      correctAnswerIndex: 1,
      explanation: "According to the Jains, a Tirthankara is a person who has conquered the cycle of death and rebirth by himself and paved the way for others to follow. There were 24 Tirthankars. The first Tirthankar was Rishabhanatha. The symbol used for him is the Bull. The 23rd Tirthankara was Parshvanath and the symbol used for him was Snake. The twenty-fourth Tirthankara was Mahavira and the symbol used for him was Lion. He was the original founder of Jainism.",
    ),

    Question(
      questionText: "Which metal was unknown to the Indus people?",
      options: ["Bronze", "Gold", "Copper", "Iron"],
      correctAnswerIndex: 3,
      explanation: "Indus Valley civilization is also known as Harappan civilization. It belongs to the Chalcolithic period and Bronze age. They were not aware of iron metal. There is no clear timeline for the Indus valley civilization. It is considered that they were active from 2900 BC to 1700 BC.",
    ),

    Question(
      questionText: "According to Buddhism, the cause of all sorrows is",
      options: ["Taṇhā", "Krodh", "Maya", "Kama"],
      correctAnswerIndex: 0,
      explanation: "The four noble truths by Buddha (Arya Satyas): Dukkha (suffering, incapable of satisfying, painful) is an innate characteristic of existence in the realm of samsara. Samudaya (origin, arising) of this dukkha, which arises or 'comes together' with taṇhā ('craving, desire or attachment'). Nirodha (cessation, ending) of this dukkha can be attained by the renouncement or letting go of this taṇhā. Magga (path, Noble Eightfold Path) is the path leading to renouncement of tanha and cessation of dukkha. They are traditionally identified as the first teaching given by the Buddha and considered one of the most important teachings in Buddhism.",
    ),

    Question(
      questionText: "Which of the following Gods do not belong to the Rigvedic period?",
      options: ["Shiva", "Aditi", "Indra", "Marut"],
      correctAnswerIndex: 0,
      explanation: "Gods mentioned in Rig Vedas are Indra, Agni, Varuna, Soma, Savitri, Vishnu, Aditi, Apsaras, Rudra, Usha, and Prithvi and many more. But there was no mention of God Shiva. Indra was known as Purandhara (i.e. Breaker of Fort). 250 Rig Vedic hymns are dedicated to Indra. He was the most important divinity and Agni was in 2nd in the list.",
    ),

    Question(
      questionText: "The oldest Veda is",
      options: ["Yajurveda", "Samveda", "Atharvaveda", "Rigveda"],
      correctAnswerIndex: 3,
      explanation: "Rig Vedas is the oldest religious text in the world. It contains 1,208 hymns and 10,600 verses. Consists of 10 mandalas.",
    ),

    Question(
      questionText: "The oldest school of Indian Philosophy is",
      options: ["Vaisesika", "Karma Mimansa", "Yoga", "Sankhya"],
      correctAnswerIndex: 3,
      explanation: "Indian philosophy refers to philosophical traditions that developed in the Indian subcontinent. A traditional classification divides orthodox (āstika) and heterodox (nāstika) schools of philosophy, depending on one of three alternate criteria: whether it believes the Vedas as a valid source of knowledge; whether the school believes in the premises of Brahman and Atman; and whether the school believes in the afterlife and devas. From this Hindu point of view, there are six major schools of orthodox (astika) Indian Hindu philosophy—Nyaya, Vaisheshika, Samkhya, Yoga, Mīmāṃsā, and Vedanta, and five major heterodox (nastika) schools—Jain, Buddhist, Ajivika, Ajñana, and Charvaka. However, there are other methods of classification; Vidyaranya, for instance, identifies sixteen schools of Indian philosophy by including those that belong to the Śaiva and Raseśvara traditions.",
    ),

    Question(
      questionText: "Whom does the Gayatri Mantra in the Rig Veda address?",
      options: ["Savitri", "Ushas", "Indra", "Agni"],
      correctAnswerIndex: 0,
      explanation: "The famous Gayatri mantra is addressed to Savitri. The Gayatri mantra was mentioned in the third mandala of Rig Veda. It is composed by the sage Viswamitra to offer prayer to solar deity Savitri. Savitṛ, a Vedic Sun deity. Maximum number of hymns was dedicated to Indra.",
    ),

    Question(
      questionText: ". Buddha was born in",
      options: ["623 B.C", "602 B.C", "523 B.C", "563 B.C"],
      correctAnswerIndex: 3,
      explanation: "According to Buddhist tradition, Gautama Buddha lived between 563 BCE to 483 BCE. He was born into an aristocratic family in the Shakya clan. Born in Lumbini near Kapilavastu, Nepal.\nExtra Info: Parents: Śuddhodana (father) Maya Devi (mother) Spouse: Yasodharā Children: Rāhula Other names: Shakyamuni ('Sage of the Shakyas') Masters(Gurus): Alara Kalama and Uddaka Rāmaputta Died(Mahaparinirvana): c. 483 BCE (aged 80) Kushinagar, Malla Republic (according to the Buddhist tradition)",
    ),
    Question(
      questionText: " During which period the Vedic Literature was composed?",
      options: ["1500 B.C-1000 B.C.", "1200 B.C-1000 B.C.", "1000 B.C.", "3000 B.C -2500 B.C."],
      correctAnswerIndex: 0,
      explanation: "Later Vedic Age: 1000—600 B.C\nThere are four Vedas: the Rigveda, the Yajurveda, the Samaveda and the Atharvaveda. Each Veda has four subdivisions – the Samhitas (mantras and benedictions), the Aranyakas (text on rituals, ceremonies, sacrifices and symbolic-sacrifices), the Brahmanas (commentaries on rituals, ceremonies and sacrifices), and the Upanishads (texts discussing meditation, philosophy and spiritual knowledge). Some scholars add a fifth category – the Upasanas (worship). The texts of the Upanishads discuss ideas akin to the heterodox sramana-traditions.",
    ),
    Question(
      questionText: " Who discovered the Indus Valley civilization?",
      options: ["Rakhaldas Banerjee", "A. L. Basham", "Sir Leonard Wooley", "V. S. Agarwal"],
      correctAnswerIndex: 0,
      explanation: "An archaeological campaign was started under Sir John Hubert Marshall(Sir John Marshall). The other members are Rai Bahadur Daya Ram Sahni and Madho Sarup Vats. They began excavating Harappa in 1921, finding buildings and artifacts indicative of an ancient civilization. These were soon complemented by discoveries at Mohenjo-Daro by Rakhal Das Banerjee, Ernest J. H. Mackay, and Marshall in 1922. By 1931, much of Mohenjo-Daro had been excavated.",
    ),
    Question(
      questionText: " Buddhist religious scripture Tripitaka was written in",
      options: ["Bengali", "Pali", "Sanskrit", "Hindi"],
      correctAnswerIndex: 1,
      explanation: "Tripitaka was written in Pali language. Pitaka means basket. The basket of expected discipline from monks (Vinaya Piṭaka), the basket of discourse (Sūtra Piṭaka, Nikayas), and the basket of special doctrine (Abhidharma Piṭaka).\n• Vinaya: the regulatory framework for the sangha.\n• Sutta: contains more than 10,000 suttas/teachings.\n• Abhidhamma: Philosophical and psychological analysis and interpretation of Buddhist doctrine.",
    ),
    Question(
      questionText: " The first permanent home of the Aryans in India was",
      options: ["Sindh", "Gujarat", "Punjab", "Rajasthan"],
      correctAnswerIndex: 2,
      explanation: "Punjab",
    ),
    Question(
      questionText: " The word Aryan denotes",
      options: ["Pastoral society", "Brahmachari", "Cultivation", "A race"],
      correctAnswerIndex: 3,
      explanation: "There are many opinions regarding the Aryans. But the most accepted opinion is that Aryan is a linguistic group, not a race. The people who speak Indo-European language like Greek, Latin, Germany, Persia, etc had come to India is called Aryans. They considered themselves a Nobel class. They were first settled near Indo-Gangetic(present-day in Punjab) plane in India.",
    ),
    Question(
      questionText: " Buddhist doctrines are contained in",
      options: ["Upanishads", "Dhammapada", "Jatakas", "Satapaths"],
      correctAnswerIndex: 1,
      explanation: "The Dhammapada is a collection of sayings of the Buddha in verse form and one of the most widely read and best-known Buddhist scriptures. The original version of the Dhammapada is in the Khuddaka Nikaya, a division of the Pali Canon of Theravada Buddhism.",
    ),
    Question(
      questionText: " Where did Buddha preach his first sermons?",
      options: ["Kasi", "Saranath", "Kushinagar", "Bodh Gaya"],
      correctAnswerIndex: 1,
      explanation: "Saranath",
    ),
    Question(
      questionText: " Which ruler was contemporary of both Buddha and Mahavira?",
      options: ["Pradyot", "Ajatasatru", "Bimbisara", "Chandragupta"],
      correctAnswerIndex: 1,
      explanation: "Ajatashatru, Ajatashattu or Ajatasatru (Sanskrit: Ajātaśatru, Pāli: Ajātasattu; 492 to 460 BCE or early 5th century BCE) was a king of the Haryanka dynasty of Magadha in East India. He was the son of King Bimbisara and was a contemporary of both Mahavira and Gautama Buddha.",
    ),
    Question(
      questionText: " Jibaka mentioned in the early Buddhist literature was a",
      options: ["Merchant", "Physician", "Bodhisattva", "King"],
      correctAnswerIndex: 1,
      explanation: "Physician",
    ),
    Question(
      questionText: " Which of the following was not a part of Tripitaka's three baskets?",
      options: ["Sutta", "Abhidhamma", "Jatakas", "Vinaya"],
      correctAnswerIndex: 2,
      explanation: "Tipitaka in Pali means Three Baskets (Ti = Three, Pitaka = Basket).\nThree Baskets (of scriptures)\n1. Vinaya-Pitaka: the origin of the sangha; rules for monks and nuns.\n2. Sutra-Pitaka: discourses of the Buddha.\n3. Abhidharma-Pitaka: writings and discourses on Buddhist psychology and philosophy.",
    ),
    Question(
      questionText: " The original name of the Sect which later came to be known as Jaina was",
      options: ["Nigranthas", "Arhant", "Tirthankars", "Jina"],
      correctAnswerIndex: 0,
      explanation: "Nigranthas",
    ),
    Question(
      questionText: " According to Ceylonese tradition Buddha's Parinirbana took place in",
      options: ["543 B.C.", "546 B.C.", "483 B.C.", "486 B.C."],
      correctAnswerIndex: 2,
      explanation: "483 B.C.",
    ),
    Question(
      questionText: " Which of the following was a Buddhist genealogical text?",
      options: ["Abhidhammapitaka", "Dipavamsa", "Suttapitaka", "Vinayapitaka"],
      correctAnswerIndex: 1,
      explanation: "The Mudrarakshasa is a Sanskrit-language play by Vishakhadatta that narrates the ascent of the Maurya Emperor Chandragupta Maurya (reign: 324 BCE–297BCE) to power in India. Vishakhadatta was a contemporary of the Gupta Emperor Chandragupta II and lived in the late 4th century to early 5th century.",
    ),
    Question(
      questionText: " The decline of the Nandas at the hands of Kautilya and Chandragupta Maurya has been vividly portrayed in the Sanskrit Play",
      options: ["Mattavilasa", "Mudrarakshasa", "Mrichhakatika", "Devi Chandragupta"],
      correctAnswerIndex: 1,
      explanation: "The Mudrarakshasa is a Sanskrit-language play by Vishakhadatta that narrates the ascent of the Maurya Emperor Chandragupta Maurya (reign: 324 BCE–297BCE) to power in India. Vishakhadatta was a contemporary of the Gupta Emperor Chandragupta II and lived in the late 4th century to early 5th century.",
    ),
    Question(
      questionText: " Allahabad pillar inscription carved by",
      options: ["Rudradaman", "Banabhatta", "Harisena", "Ravikirti"],
      correctAnswerIndex: 2,
      explanation: "Harisena",
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
    home: ancientHistory_1(),
  ));
}

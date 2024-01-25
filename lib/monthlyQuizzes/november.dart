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

class november extends StatefulWidget {
  final String? userIdentifier;

  november({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<november> createState() => _novemberState();
}

class _novemberState extends State<november> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(200, null); // Initialize with the number of questions

  List<Question> _questions = [




    Question(
      questionText: "Who was crowned Miss Universe 2023?",
      options: [
        "Anntonia Porslid",
        "Moraya Wilson",
        "Sheynnis Palacios",
        "R’Bonney Gabriel"
      ],
      correctAnswerIndex: 2,
      explanation: "Sheynnis Palacios from Nicaragua won the title of Miss Universe 2023.",
    ),

    Question(
      questionText: "Which country won the ICC Cricket World Cup 2023?",
      options: [
        "India",
        "Australia",
        "Sri Lanka",
        "New Zealand"
      ],
      correctAnswerIndex: 1,
      explanation: "Australia won the ICC Cricket World Cup 2023 by defeating India.",
    ),

    Question(
      questionText: "Who was declared the Player of the Match in the ICC Cricket World Cup 2023 final?",
      options: [
        "David Warner",
        "Mohammed Shami",
        "Travis Head",
        "Mitchell Starc"
      ],
      correctAnswerIndex: 2,
      explanation: "Travis Head was declared the Player of the Match in the ICC Cricket World Cup 2023 final.",
    ),

    Question(
      questionText: "Which Indian comedian's stand-up special won the Best Comedy Series award at the International Emmy Awards 2023?",
      options: [
        "Vir Das",
        "Kapil Sharma",
        "Gursimran Khamba",
        "Atul Khatri"
      ],
      correctAnswerIndex: 0,
      explanation: "Vir Das's stand-up special 'Vir Das: Landing' won the Best Comedy Series award at the International Emmy Awards 2023.",
    ),

    Question(
      questionText: "What is the Senior Citizens Savings Scheme (SCSS) designed for?",
      options: [
        "Individuals aged below 50",
        "Individuals aged 60 and above",
        "Government employees",
        "Individuals aged 55 and above but less than 60"
      ],
      correctAnswerIndex: 3,
      explanation: "The SCSS is designed for individuals aged 60 and above or employees aged 55 and above but less than 60.",
    ),
    Question(
      questionText: "Where did the 72nd Miss Universe event take place?",
      options: [
        "Managua, Nicaragua",
        "San Salvador, El Salvador",
        "Ahmedabad, India",
        "Kolkata, India"
      ],
      correctAnswerIndex: 1,
      explanation: "The 72nd Miss Universe event concluded in San Salvador, El Salvador.",
    ),
    Question(
      questionText: "Who was the reigning Miss Universe in 2022?",
      options: [
        "Anntonia Porslid",
        "Moraya Wilson",
        "Sheynnis Palacios",
        "R’Bonney Gabriel"
      ],
      correctAnswerIndex: 3,
      explanation: "The reigning Miss Universe in 2022 was R’Bonney Gabriel from the United States.",
    ),
    Question(
      questionText: "How many countries and territories participated in the 72nd Miss Universe pageant?",
      options: [
        "72",
        "84",
        "100",
        "50"
      ],
      correctAnswerIndex: 1,
      explanation: "Contestants from 84 countries and territories participated in the 72nd Miss Universe pageant.",
    ),

    Question(
      questionText: "Which country made its debut in the Miss Universe stage in 2023?",
      options: [
        "India",
        "Pakistan",
        "Netherlands",
        "Thailand"
      ],
      correctAnswerIndex: 1,
      explanation: "Pakistan made its debut on the Miss Universe stage in 2023.",
    ),
    Question(
      questionText: "How many times has Australia won the ICC ODI World Cup, including 2023?",
      options: [
        "4 times",
        "5 times",
        "6 times",
        "7 times"
      ],
      correctAnswerIndex: 2,
      explanation: "Australia has won the ICC ODI World Cup 6 times, including 2023.",
    ),

    Question(
      questionText: "Which show won the Best Drama Series at the International Emmy Awards 2023?",
      options: [
        "The Empress",
        "La Caida",
        "The Responder",
        "Derry Girls"
      ],
      correctAnswerIndex: 0,
      explanation: "The Empress won the Best Drama Series at the International Emmy Awards 2023.",
    ),
    Question(
      questionText: "Which show won the Best Drama Series at the International Emmy Awards 2023?",
      options: [
        "The Empress",
        "La Caida",
        "The Responder",
        "Derry Girls"
      ],
      correctAnswerIndex: 0,
      explanation: "The Empress won the Best Drama Series at the International Emmy Awards 2023.",
    ),
    Question(
      questionText: "When was the Senior Citizens Savings Scheme (SCSS) launched?",
      options: [
        "2000",
        "2004",
        "2008",
        "2010"
      ],
      correctAnswerIndex: 1,
      explanation: "The SCSS was launched in 2004, tailored for senior citizens, offering them a secure investment avenue and a regular income stream.",
    ),
    Question(
      questionText: "What report outlined the key findings and trends in global intellectual property (IP) in 2022?",
      options: [
        "World Economic Outlook",
        "World Intellectual Property Indicators (WIPI)",
        "Global Innovation Index",
        "World Trade Report"
      ],
      correctAnswerIndex: 1,
      explanation: "The key findings and trends in global intellectual property (IP) in 2022 were outlined in the World Intellectual Property Indicators (WIPI) report.",
    ),
    Question(
      questionText: "Which country accounted for nearly half of all global patent applications in 2022?",
      options: [
        "United States",
        "Japan",
        "Republic of Korea",
        "China"
      ],
      correctAnswerIndex: 3,
      explanation: "China accounted for nearly half of all global patent applications in 2022.",
    ),
    Question(
      questionText: "What was the growth rate of India in patent applications in 2022?",
      options: [
        "5.3%",
        "11.7%",
        "25.5%",
        "31.6%"
      ],
      correctAnswerIndex: 3,
      explanation: "India stood out with an exceptional growth rate of 31.6% in patent applications in 2022.",
    ),
    Question(
      questionText: "Who is the global forum for intellectual property policy, services, information, and cooperation?",
      options: [
        "United Nations",
        "World Bank",
        "World Health Organization",
        "World Intellectual Property Organization (WIPO)"
      ],
      correctAnswerIndex: 3,
      explanation: "The World Intellectual Property Organization (WIPO) is the global forum for intellectual property policy, services, information, and cooperation.",
    ),

    Question(
      questionText: "Who is the global forum for intellectual property policy, services, information, and cooperation?",
      options: [
        "United Nations",
        "World Bank",
        "World Health Organization",
        "World Intellectual Property Organization (WIPO)"
      ],
      correctAnswerIndex: 3,
      explanation: "The World Intellectual Property Organization (WIPO) is the global forum for intellectual property policy, services, information, and cooperation.",
    ),
    Question(
      questionText: "Under the 'Mera Bill Mera Adhikaar' (MBMA) scheme, what do citizens need to request from traders or shopkeepers?",
      options: [
        "Discounts",
        "Coupons",
        "Bills",
        "Credit"
      ],
      correctAnswerIndex: 2,
      explanation: "Under the 'Mera Bill Mera Adhikaar' (MBMA) scheme, citizens need to request bills from traders or shopkeepers.",
    ),

    Question(
      questionText: "Which two Indian institutions secured positions within the top 50 in the QS Asia University Rankings 2024?",
      options: [
        "IIT Bombay and IIT Delhi",
        "IIT Bombay and IIT Kharagpur",
        "IIT Delhi and IIT Madras",
        "IIT Madras and IIT Kanpur"
      ],
      correctAnswerIndex: 0,
      explanation: "IIT Bombay and IIT Delhi both secured positions within the top 50 in the QS Asia University Rankings 2024.",
    ),

    Question(
      questionText: "What is the rank of IIT Bombay in the QS Asia University Rankings 2024?",
      options: [
        "46",
        "53",
        "40",
        "58"
      ],
      correctAnswerIndex: 2,
      explanation: "IIT Bombay secured the 40th position in the QS Asia University Rankings 2024.",
    ),

    Question(
      questionText: "Which country has the highest number of universities featured in the QS Asia University Rankings 2024?",
      options: [
        "Mainland China",
        "Japan",
        "India",
        "South Korea"
      ],
      correctAnswerIndex: 2,
      explanation: "India has the highest number of universities featured in the QS Asia University Rankings 2024, with a total of 148.",
    ),

    Question(
      questionText: "Which university retained its top rank in Asia for the second consecutive year?",
      options: [
        "University of Hong Kong (HKU)",
        "National University of Singapore (NUS)",
        "Peking University",
        "Tsinghua University"
      ],
      correctAnswerIndex: 2,
      explanation: "Peking University of China retained its top rank in Asia for the second consecutive year.",
    ),

    Question(
      questionText: "Which Indian cities joined UNESCO's Creative Cities Network?",
      options: [
        "Kozhikode and Mumbai",
        "Delhi and Gwalior",
        "Kozhikode and Gwalior",
        "Mumbai and Chennai"
      ],
      correctAnswerIndex: 2,
      explanation: "Kozhikode and Gwalior joined UNESCO's Creative Cities Network.",
    ),

    Question(
      questionText: "What is Kozhikode's designation in the UNESCO Creative Cities Network?",
      options: [
        "City of Music",
        "City of Literature",
        "City of Arts",
        "City of Heritage"
      ],
      correctAnswerIndex: 1,
      explanation: "Kozhikode is designated as the 'City of Literature' in the UNESCO Creative Cities Network.",
    ),

    Question(
      questionText: "Which city in India is known as the 'City of Music' in the UNESCO Creative Cities Network?",
      options: [
        "Varanasi",
        "Delhi",
        "Mumbai",
        "Gwalior"
      ],
      correctAnswerIndex: 3,
      explanation: "Gwalior is designated as the 'City of Music' in the UNESCO Creative Cities Network.",
    ),

    Question(
      questionText: "What is the primary objective of the 'Vision India@2047' plan?",
      options: [
        "To achieve middle-income status",
        "To transform India into a developed nation by 2047",
        "To focus on social development only",
        "To prevent economic growth"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary objective of the 'Vision India@2047' plan is to transform India into a developed nation by 2047 and avoid the middle-income trap.",
    ),

    Question(
      questionText: "Which government think tank has been working on the 'Vision India@2047' plan?",
      options: [
        "ISRO",
        "DRDO",
        "Niti Aayog",
        "Ministry of Finance"
      ],
      correctAnswerIndex: 2,
      explanation: "Niti Aayog, a government think tank, has been working on the 'Vision India@2047' plan.",
    ),
    Question(
      questionText: "How many distinct countries and territories are featured in the QS Asia University Rankings 2024?",
      options: [
        "20",
        "25",
        "30",
        "15"
      ],
      correctAnswerIndex: 1,
      explanation: "The QS Asia University Rankings 2024 feature 25 distinct countries and territories.",
    ),

    Question(
      questionText: "What is the economic target envisioned in the plan for India by 2047?",
      options: [
        "\$20 trillion",
        "\$25 trillion",
        "\$30 trillion",
        "\$35 trillion"
      ],
      correctAnswerIndex: 2,
      explanation: "The plan envisions making India a \$30 trillion economy by 2047.",
    ),

    Question(
      questionText: "Which Indian state celebrates its Formation Day on November 1, 1966, and what linguistic division led to its creation?",
      options: [
        "Karnataka, based on cultural identity",
        "Punjab, based on linguistic identity",
        "Haryana, based on regional identity",
        "Madhya Pradesh, based on historical significance"
      ],
      correctAnswerIndex: 1,
      explanation: "Punjab celebrates its Formation Day on November 1, 1966, and its creation was based on linguistic identity.",
    ),
    Question(
      questionText: "Who secured the top spot on the EdelGive Hurun India Philanthropy List 2023?",
      options: [
        "Azim Premji and Family",
        "Mukesh Ambani and Family",
        "Gautam Adani and Family",
        "Shiv Nadar and Family"
      ],
      correctAnswerIndex: 3,
      explanation: "Shiv Nadar and Family secured the top spot on the EdelGive Hurun India Philanthropy List 2023.",
    ),

    Question(
      questionText: "Which player secured the eighth Ballon d’Or in 2023 and what record did he set?",
      options: [
        "Cristiano Ronaldo, 5-time winner",
        "Lionel Messi, 7-time winner",
        "Lionel Messi, 8-time winner",
        "Erling Haaland, debut winner"
      ],
      correctAnswerIndex: 2,
      explanation: "Lionel Messi secured the eighth Ballon d’Or in 2023, setting a new record.",
    ),

    Question(
      questionText: "Who was recognized with the Lev Yashin Award for the world’s best goalkeeper?",
      options: [
        "Lionel Messi",
        "Erling Haaland",
        "Emiliano Martinez",
        "Aitana Bonmati"
      ],
      correctAnswerIndex: 2,
      explanation: "Emiliano Martinez was recognized with the Lev Yashin Award for the world’s best goalkeeper.",
    ),
    Question(
      questionText: "What award did Vinicius Junior receive for acknowledging humanitarian work?",
      options: [
        "Ballon d’Or Feminin",
        "Kopa Trophy",
        "Yachine Trophy",
        "Sócrates Award"
      ],
      correctAnswerIndex: 3,
      explanation: "Vinicius Junior received the Sócrates Award for acknowledging humanitarian work.",
    ),
    Question(
      questionText: "What new parameter was introduced in the State Food Safety Index 2022-2023?",
      options: [
        "Consumer Empowerment",
        "Compliance",
        "Improvement in SFSI Rank",
        "Food Testing Infrastructure"
      ],
      correctAnswerIndex: 2,
      explanation: "The new parameter introduced in the State Food Safety Index 2022-2023 was 'Improvement in SFSI Rank.'",
    ),
    Question(
      questionText: "Which state showed significant improvement in the 'Improvement in SFSI Rank' parameter according to the State Food Safety Index 2022-2023?",
      options: [
        "Maharashtra",
        "Gujarat",
        "Punjab",
        "Tamil Nadu"
      ],
      correctAnswerIndex: 2,
      explanation: "Punjab showed significant improvement in the 'Improvement in SFSI Rank' parameter according to the State Food Safety Index 2022-2023.",
    ),
    Question(
      questionText: "Who among the following cricketing maestros was recently inducted into the ICC Cricket Hall of Fame?",
      options: [
        "Sachin Tendulkar",
        "Virender Sehwag",
        "Brian Lara",
        "Ricky Ponting"
      ],
      correctAnswerIndex: 1,
      explanation: "Virender Sehwag was recently inducted into the ICC Cricket Hall of Fame.",
    ),
    Question(
      questionText: "What is the primary focus of the novel 'Prophet Song' by Paul Lynch?",
      options: [
        "Romantic Relationships",
        "Civil War in Ireland",
        "Global Economic Crisis",
        "Environmental Conservation"
      ],
      correctAnswerIndex: 1,
      explanation: "The primary focus of the novel 'Prophet Song' by Paul Lynch is civil war in Ireland.",
    ),

    Question(
      questionText: "Which product from Uttarakhand, recognized with a Geographical Indication tag, is made from Himalayan nettle fibers?",
      options: [
        "Berinag Tea",
        "Bichhu Buti Fabrics",
        "Uttarakhand Mandua",
        "Jhangora"
      ],
      correctAnswerIndex: 1,
      explanation: "Bichhu Buti Fabrics from Uttarakhand are recognized with a Geographical Indication tag and are made from Himalayan nettle fibers.",
    ),

    Question(
      questionText: "What is the unique process involved in crafting Berinag Tea from Uttarakhand?",
      options: [
        "Fermentation",
        "Compressing leaves into a solid mass",
        "Roasting at high temperatures",
        "Freeze-drying"
      ],
      correctAnswerIndex: 1,
      explanation: "The unique process involved in crafting Berinag Tea from Uttarakhand is compressing leaves into a solid mass.",
    ),
    Question(
      questionText: "What makes Uttarakhand Lal Chawal unique?",
      options: [
        "It is organically grown in Purola region",
        "It is a black soybean",
        "It is a red rice variant",
        "It is made from Himalayan nettle fibers"
      ],
      correctAnswerIndex: 2,
      explanation: "Uttarakhand Lal Chawal is a red rice variant, and it is organically grown in the Purola region.",
    ),

    Question(
      questionText: "Which state was renamed as Karnataka on November 1, 1956?",
      options: [
        "Tamil Nadu",
        "Andhra Pradesh",
        "Mysore",
        "Kerala"
      ],
      correctAnswerIndex: 2,
      explanation: "On November 1, 1956, the state of Mysore was renamed as Karnataka.",
    ),

    Question(
      questionText: "Which Union Territory was formed on November 1, 1956, highlighting its unique colonial history and culture?",
      options: [
        "Daman and Diu",
        "Chandigarh",
        "Puducherry",
        "Lakshadweep"
      ],
      correctAnswerIndex: 2,
      explanation: "Puducherry, also known as Pondicherry, was created on November 1, 1956, highlighting its unique colonial history and culture.",
    ),
    Question(
      questionText: "According to the EdelGive Hurun India Philanthropy List 2023, what is the remarkable increase in the number of Indians making donations exceeding ₹5 crore?",
      options: [
        "30%",
        "50%",
        "59%",
        "75%"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the EdelGive Hurun India Philanthropy List 2023, there is a remarkable increase of 59% in the number of Indians making donations exceeding ₹5 crore.",
    ),


    Question(
      questionText: "Who won the Booker prize last year for 'The Seven Moons of Maali Almeida'?",
      options: [
        "Shehan Karunatilaka",
        "Anna Burns",
        "Lynch",
        "Michael Douglas"
      ],
      correctAnswerIndex: 0,
      explanation: "Shehan Karunatilaka won the Booker prize for 'The Seven Moons of Maali Almeida' last year.",
    ),

    Question(
      questionText: "Which novel won the Booker Prize for the 2023?",
      options: [
        "The Bee Sting",
        "Western Lane",
        "Prophet Song",
        "This Other Eden",
      ],
      correctAnswerIndex:2,
      explanation: "The information about the novel that won the Booker Prize for the 2023.",
    ),

    Question(
      questionText: "Which country's Angkor Wat recently earned the title of the 8th wonder of the world?",
      options: [
        "Cambodia",
        "Italy",
        "Sri Lanka",
        "India"
      ],
      correctAnswerIndex: 0,
      explanation: "Angkor Wat, located in Cambodia, recently earned the title of the 8th wonder of the world.",
    ),

    Question(
      questionText: "Who won the Golden Peacock at IFFI 2023 for the film 'Endless Borders'?",
      options: [
        "Rishab Shetty",
        "Pouria Rahimi Sam",
        "Melanie Thierry",
        "Michael Douglas"
      ],
      correctAnswerIndex: 1,
      explanation: "'Endless Borders' won the Golden Peacock at IFFI 2023, and Pouria Rahimi Sam won the Best Actor award for the film.",
    ),

    Question(
      questionText: "Where is COP28 scheduled to take place?",
      options: [
        "Goa, India",
        "Dubai, UAE",
        "Glasgow, UK",
        "Sri Lanka"
      ],
      correctAnswerIndex: 1,
      explanation: "COP28 is scheduled to take place in Dubai, United Arab Emirates.",
    ),

    Question(
      questionText: "Which historical site recently earned the title of the 8th wonder of the world, surpassing Italy's Pompeii?",
      options: [
        "Angkor Wat",
        "The Bee Sting",
        "Western Lane",
        "Prophet Song"
      ],
      correctAnswerIndex: 0,
      explanation: "Angkor Wat, located in Cambodia, recently earned the title of the 8th wonder of the world.",
    ),

    Question(
      questionText: "Which film became the first Kannada film to win an award at IFFI 2023?",
      options: [
        "Endless Borders",
        "Kantara",
        "Party of Fools",
        "The Featherweight"
      ],
      correctAnswerIndex: 1,
      explanation: "'Kantara' scripted history as the first Kannada film to win an award at IFFI 2023.",
    ),
    Question(
      questionText: "Who was honored with the Satyajit Ray Lifetime Achievement Award at IFFI 2023?",
      options: [
        "Michael Douglas",
        "Rishab Shetty",
        "Pouria Rahimi Sam",
        "Robert Kolodny"
      ],
      correctAnswerIndex: 0,
      explanation: "Michael Douglas was honored with the Satyajit Ray Lifetime Achievement Award at IFFI 2023.",
    ),
    Question(
      questionText: "What does 'Net-zero emissions by 2050' aim to achieve?",
      options: [
        "Increase greenhouse gas emissions",
        "Balance the release of greenhouse gases with their removal by 2050",
        "Ignore the consequences of climate change",
        "Promote deforestation"
      ],
      correctAnswerIndex: 1,
      explanation: "'Net-zero emissions by 2050' aims to balance the release of greenhouse gases with their removal by 2050.",
    ),

    Question(
      questionText: "Who is King Suryavarman II and what is he best known for?",
      options: [
        "A legendary Hollywood actor",
        "The director of 'The Featherweight'",
        "The king of the Khmer Empire known for building Angkor Wat",
        "An Indian filmmaker honored at IFFI 2023"
      ],
      correctAnswerIndex: 2,
      explanation: "Suryavarman II was a king of the Khmer Empire, best known for building the Angkor Wat temple complex.",
    ),
    Question(
      questionText: "What is Angkor Wat's historical significance?",
      options: [
        "It was a site of a major political conflict",
        "It served as the capital of the Khmer Empire",
        "It transformed from a Hindu temple to a Buddhist sanctuary",
        "It was built in the 18th century"
      ],
      correctAnswerIndex: 2,
      explanation: "Angkor Wat's historical significance includes its transformation from a Hindu temple to a Buddhist sanctuary.",
    ),

    Question(
      questionText: "What is depicted on the walls of Angkor Wat?",
      options: [
        "Random drawings without any meaning",
        "Scenes from Hindu epics, historical events, and Khmer people's daily life",
        "Political propaganda",
        "Abstract art"
      ],
      correctAnswerIndex: 1,
      explanation: "The walls of Angkor Wat are adorned with detailed bas-reliefs depicting scenes from Hindu epics, historical events, and daily life.",
    ),

    Question(
      questionText: "What is the new bulk deposit limit for Regional Rural Banks (RRBs) according to the RBI review?",
      options: [
        "Rs 10 lakh",
        "Rs 25 lakh",
        "Rs 50 lakh",
        "Rs 1 crore"
      ],
      correctAnswerIndex: 3,
      explanation: "The bulk deposit limit for RRBs has been increased from Rs 15 lakh to Rs 1 crore according to the RBI review.",
    ),
    Question(
      questionText: "Which two banks are set to merge, starting from February 1, 2024?",
      options: [
        "Fincare Small Finance Bank and HDFC Bank",
        "AU Small Finance Bank and ICICI Bank",
        "Axis Bank and Kotak Mahindra Bank",
        "Fincare Small Finance Bank and AU Small Finance Bank"
      ],
      correctAnswerIndex: 3,
      explanation: "Fincare Small Finance Bank is set to merge with AU Small Finance Bank starting from February 1, 2024.",
    ),

    Question(
      questionText: "What is the name of the co-branded credit card introduced by SBI Card in collaboration with Reliance Retail?",
      options: [
        "SBI-Retail Card",
        "Reliance-SBI Gold Card",
        "SBI-Reliance Lifestyle Card",
        "Reliance SBI Card"
      ],
      correctAnswerIndex: 3,
      explanation: "SBI Card has introduced the co-branded Reliance SBI Card in collaboration with Reliance Retail.",
    ),

    Question(
      questionText: "What new rule changes has the Pension Fund Regulatory and Development Authority (PFRDA) introduced for National Pension System (NPS) withdrawals?",
      options: [
        "Reduced flexibility in managing retirement funds",
        "Introduction of 'penny drop' verification for NPS fund withdrawals",
        "No changes in NPS withdrawal rules",
        "Mandatory annuity purchase for NPS subscribers"
      ],
      correctAnswerIndex: 1,
      explanation: "PFRDA has introduced 'penny drop' verification and increased flexibility in managing retirement funds for NPS withdrawals.",
    ),

    Question(
      questionText: "What significant announcement has the Reserve Bank of India (RBI) made regarding District Central Co-operative Banks (DCCBs)?",
      options: [
        "They are allowed to open branches without approval",
        "They can now close un-remunerative branches without prior RBI permission",
        "They are required to merge with other banks",
        "They can issue their own currency"
      ],
      correctAnswerIndex: 1,
      explanation: "DCCBs are now permitted to close un-remunerative branches without seeking prior permission from the RBI.",
    ),

    Question(
      questionText: "What is the recent directive from the RBI regarding entities facilitating cross-border payment transactions?",
      options: [
        "They are banned from operating in India",
        "They are required to submit monthly reports to the RBI",
        "They need to register with the International Monetary Fund (IMF)",
        "They will be directly regulated by the RBI"
      ],
      correctAnswerIndex: 3,
      explanation: "RBI has announced its decision to directly regulate all entities facilitating cross-border payment transactions.",
    ),

    Question(
      questionText: "As of October 31, 2023, what is the status of the withdrawal of ₹2,000 denomination banknotes according to the RBI?",
      options: [
        "All ₹2,000 banknotes have been withdrawn",
        "Over 97% of ₹2,000 banknotes in circulation have been returned",
        "₹2,000 banknotes are no longer legal tender",
        "No information is provided on the status"
      ],
      correctAnswerIndex: 1,
      explanation: "As of October 31, 2023, over 97% of ₹2,000 banknotes in circulation have been returned according to the RBI.",
    ),

    Question(
      questionText: "What milestone did UPI achieve in October, in terms of transactions and transaction value?",
      options: [
        "5 billion transactions and Rs 10 lakh crore transaction value",
        "8 billion transactions and Rs 15 lakh crore transaction value",
        "11.4 billion transactions and Rs 17.6 lakh crore transaction value",
        "15 billion transactions and Rs 20 lakh crore transaction value"
      ],
      correctAnswerIndex: 2,
      explanation: "In October, UPI achieved 11.4 billion transactions with a total transaction value surpassing Rs 17.6 lakh crore.",
    ),

    Question(
      questionText: "Which bank is facing a change in its digital leadership, with the head of digital lending deciding to leave?",
      options: [
        "HDFC Bank",
        "ICICI Bank",
        "Axis Bank",
        "Bank of Baroda"
      ],
      correctAnswerIndex: 2,
      explanation: "Bank of Baroda is facing a significant change in its digital leadership as the head of digital lending, Akhil Handa, has decided to leave.",
    ),

    Question(
      questionText: "Which insurance company is Zurich Insurance set to make a substantial investment in?",
      options: [
        "LIC (Life Insurance Corporation of India)",
        "Kotak Mahindra Life Insurance",
        "HDFC Life",
        "IndiaFirst Life"
      ],
      correctAnswerIndex: 3,
      explanation: "Zurich Insurance Company is set to make a substantial investment in IndiaFirst Life, marking a significant move in the insurance industry.",
    ),
    Question(
      questionText: "On November 3, the Reserve Bank of India (RBI) announced monetary penalties against several financial institutions. Which institutions faced penalties?",
      options: [
        "State Bank of India and ICICI Bank",
        "Punjab National Bank, Federal Bank, Kosamattam Finance, and Mercedes-Benz Financial Services India",
        "Axis Bank and HDFC Bank",
        "Bank of Baroda and Kotak Mahindra Bank"
      ],
      correctAnswerIndex: 1,
      explanation: "On November 3, RBI announced monetary penalties against Punjab National Bank, Federal Bank, Kosamattam Finance, and Mercedes-Benz Financial Services India.",
    ),
    Question(
      questionText: "What challenge has the RBI identified in achieving its 4% Consumer Price Index (CPI) target?",
      options: [
        "Rising interest rates",
        "Rising food prices",
        "Decreasing money supply",
        "Trade imbalances"
      ],
      correctAnswerIndex: 2,
      explanation: "The RBI has identified rising food prices as the primary challenge to achieving its 4% Consumer Price Index (CPI) target.",
    ),

    Question(
      questionText: "What substantial monetary penalty did the RBI levy on Axis Bank Ltd?",
      options: [
        "Rs 50 lakh",
        "Rs 1 crore",
        "Rs 25 crore",
        "Rs 90.92 lakh"
      ],
      correctAnswerIndex: 4,
      explanation: "The RBI levied a substantial monetary penalty of ₹90.92 lakh on Axis Bank Ltd for non-compliance with key directives.",
    ),

    Question(
      questionText: "Which markets emerged as pivotal drivers of India’s export landscape in the initial seven months of the financial year 2023-24?",
      options: [
        "USA, China, and Japan",
        "Germany, France, and Australia",
        "Netherlands, UK, and Australia",
        "Brazil, Russia, and South Africa"
      ],
      correctAnswerIndex: 3,
      explanation: "In the initial seven months of FY 2023-24, the Netherlands, the UK, and Australia emerged as pivotal drivers of India’s export landscape.",
    ),

    Question(
      questionText: "What significant leap has IndusInd Bank taken in the realm of digital payments?",
      options: [
        "Launch of a new mobile banking app",
        "Introduction of contactless cards",
        "Launch of a new credit card",
        "Launch of the 'IndusInd Bank Platinum RuPay Credit Card' on the UPI platform"
      ],
      correctAnswerIndex: 4,
      explanation: "IndusInd Bank has taken a significant leap with the launch of its 'IndusInd Bank Platinum RuPay Credit Card' on the UPI platform.",
    ),

    Question(
      questionText: "Which private sector lender has announced a strategic partnership with HDFC Life to provide innovative financial solutions?",
      options: [
        "Axis Bank",
        "ICICI Bank",
        "Kotak Mahindra Bank",
        "Karnataka Bank"
      ],
      correctAnswerIndex: 4,
      explanation: "Karnataka Bank, a leading Mangaluru-based private sector lender, has announced a strategic partnership with HDFC Life.",
    ),

    Question(
      questionText: "Who has ACKO, the insurtech company, partnered with as its 'Voice of the Customer'?",
      options: [
        "Amitabh Bachchan",
        "Shah Rukh Khan",
        "R Madhavan",
        "Deepika Padukone"
      ],
      correctAnswerIndex: 3,
      explanation: "ACKO, the insurtech company, has partnered with renowned actor R Madhavan as its 'Voice of the Customer'.",
    ),

    Question(
      questionText: "What is the RBI reportedly contemplating in terms of its penalty system?",
      options: [
        "Abolishing the penalty system",
        "Introducing lenient penalties",
        "Comprehensive review with potential increase in penalty amounts",
        "Outsourcing penalty enforcement to external agencies"
      ],
      correctAnswerIndex: 3,
      explanation: "The RBI is reportedly contemplating a comprehensive review of its penalty system with a potential increase in penalty amounts.",
    ),

    Question(
      questionText: "Why is India anticipated to prolong its restrictions on overseas sales of rice into the next year?",
      options: [
        "To boost exports",
        "To maintain domestic supplies and curb price surges",
        "To comply with international trade agreements",
        "To stimulate domestic rice consumption"
      ],
      correctAnswerIndex: 2,
      explanation: "India is anticipated to prolong its restrictions on overseas sales of rice to maintain domestic supplies and curb price surges.",
    ),

    Question(
      questionText: "What is the current status of India in the global startup landscape?",
      options: [
        "Second-largest hub",
        "Fourth-largest hub",
        "Fifth-largest hub",
        "Third-largest hub"
      ],
      correctAnswerIndex: 4,
      explanation: "India has emerged as the third-largest hub in the global startup landscape, following the United States and China.",
    ),

    Question(
      questionText: "Which city in India tops the list of women-led startups, according to the data of Traxon?",
      options: [
        "Mumbai",
        "Delhi",
        "Bengaluru",
        "Kolkata"
      ],
      correctAnswerIndex: 3,
      explanation: "Bengaluru tops the list of women-led startups in India, according to the data of Traxon.",
    ),
    Question(
        questionText: "Why did the government cancel the bid process for the strategic sale of IDBI Bank Ltd.?",
        options: [
          "Lack of interest from bidders, with only a single bid received.",
          "Competitive bids exceeding the government's expectations.",
          "Issues with the asset valuation process.",
          "Approval from the competent authority was not obtained."
        ],
        correctAnswerIndex: 0,
        explanation: "The cancellation was due to a lack of interest, with only a single bid received."
    ),

    Question(
        questionText: "What is the name of the groundbreaking black pepper variety developed by the Indian Institute of Spices Research?",
        options: [
          "IISR Chaitanya",
          "IISR Chandra",
          "IISR Shakti",
          "IISR Vikas"
        ],
        correctAnswerIndex: 1,
        explanation: "The black pepper variety is named 'IISR Chandra.'"
    ),

    Question(
        questionText: "Why did Nippon Life India Asset Management enter the realm of private credit in Mumbai?",
        options: [
          "To comply with regulatory tightening by banks and mutual funds.",
          "To withdraw from promoter funding.",
          "To compete with Centrum and Avendus.",
          "To focus on public credit instead."
        ],
        correctAnswerIndex: 0,
        explanation: "The move was in alignment with shifting trends due to regulatory tightening."
    ),



    Question(
        questionText: "Who officially launched the Investor Risk Reduction Access (IRRA) platform at the Bombay Stock Exchange (BSE)?",
        options: [
          "Madhabi Puri Buch",
          "Chandra Shekhar Ghosh",
          "SEBI Chief",
          "Nippon Life India Asset Management"
        ],
        correctAnswerIndex: 0,
        explanation: "Madhabi Puri Buch, the Chairperson of SEBI, officially launched the IRRA platform."
    ),

    Question(
        questionText: "What is the aim of the collaboration between Mastercard and U GRO Capital?",
        options: [
          "To promote digital transactions",
          "To enhance urban living standards",
          "To provide financial solutions to large businesses",
          "To address climate resilience"
        ],
        correctAnswerIndex: 0,
        explanation: "The collaboration aims to provide financial solutions to small businesses and address limited access to capital faced by MSMEs."
    ),

    Question(
        questionText: "What is the purpose of the \$170 million loan approved by the Asian Development Bank (ADB) for Kochi?",
        options: [
          "To promote digital transactions",
          "To catalyze the modernization of water supply services",
          "To enhance urban living standards",
          "To fortify climate resilience"
        ],
        correctAnswerIndex: 1,
        explanation: "The loan aims to catalyze the modernization of water supply services in Kochi."
    ),

    Question(
        questionText: "For how many years has Chandra Shekhar Ghosh been reappointed as the Managing Director & Chief Executive Officer (MD&CEO) of Bandhan Bank?",
        options: [
          "One year",
          "Two years",
          "Three years",
          "Five years"
        ],
        correctAnswerIndex: 2,
        explanation: "Chandra Shekhar Ghosh has been reappointed for a period of three years."
    ),

    Question(
        questionText: "What action did the Reserve Bank of India (RBI) take regarding Abhyudaya Cooperative Bank?",
        options: [
          "It imposed penalties on the bank.",
          "It superseded the board for a duration of 12 months.",
          "It approved a loan for the bank.",
          "It announced a merger with another bank."
        ],
        correctAnswerIndex: 1,
        explanation: "RBI superseded the board of Abhyudaya Cooperative Bank for a duration of 12 months."
    ),

    Question(
        questionText: "What was the reason for the Indian rupee closing at a new low of 83.38 against the US dollar?",
        options: [
          "Increased dollar demand from oil companies",
          "Intervention by the RBI to boost the rupee",
          "Robust growth in the Indian economy",
          "Decreased oil prices in the international market"
        ],
        correctAnswerIndex: 0,
        explanation: "The drop in the rupee was attributed to increased dollar demand from oil companies."
    ),

    Question(
        questionText: "Why did the Reserve Bank of India (RBI) impose penalties on Citibank, Bank of Baroda, and Indian Overseas Bank?",
        options: [
          "For exceeding the regulatory norms",
          "For contravention of regulatory norms",
          "For poor governance standards",
          "For non-compliance with international standards"
        ],
        correctAnswerIndex: 1,
        explanation: "The penalties were imposed for contravention of regulatory norms."
    ),

    Question(
        questionText: "What is the objective of the Payments Infrastructure Development Fund (PIDF) scheme's two-year extension by the RBI?",
        options: [
          "To reduce interest rates",
          "To promote digital transactions",
          "To enhance urban living standards",
          "To fortify climate resilience"
        ],
        correctAnswerIndex: 1,
        explanation: "The extension aims to promote digital transactions at the grassroots level."
    ),

    Question(
        questionText: "Why did HDFC Securities launch its mobile trading app, HDFC SKY, on Amazon Web Services (AWS) cloud?",
        options: [
          "To reduce infrastructure costs",
          "To comply with regulatory norms",
          "To enhance cybersecurity",
          "To compete with other trading apps"
        ],
        correctAnswerIndex: 0,
        explanation: "The partnership with AWS is expected to yield a remarkable 50% reduction in annual IT infrastructure and management costs."
    ),

    Question(
        questionText: "What is the focus of SEBI's plan to revolutionize the settlement process in India's financial markets?",
        options: [
          "To reduce interest rates",
          "To implement same-day settlement of trades",
          "To promote digital transactions",
          "To enhance urban living standards"
        ],
        correctAnswerIndex: 1,
        explanation: "SEBI is actively working on a roadmap to implement same-day settlement of trades by March 2024."
    ),

    Question(
        questionText: "How many entities are included in the Reserve Bank of India's 'Alert List' of unauthorized forex trading platforms?",
        options: [
          "19",
          "45",
          "56",
          "75"
        ],
        correctAnswerIndex: 3,
        explanation: "The latest update includes 19 additional entities, bringing the total number to 75."
    ),

    Question(
        questionText: "What does the Federal Retirement Thrift Investment Board (FRTIB) plan to transition from and to in its investment strategy?",
        options: [
          "From MSCI ACWI index to MSCI EAFE index",
          "From MSCI EAFE index to MSCI ACWI index",
          "From MSCI ACWI index to S&P 500 index",
          "From S&P 500 index to MSCI EAFE index"
        ],
        correctAnswerIndex: 1,
        explanation: "The FRTIB plans to transition from the MSCI EAFE index to the MSCI ACWI IMI ex USA ex China ex Hong index."
    ),
    Question(
        questionText: "What was the percentage increase in India's crude oil imports in October compared to the previous month?",
        options: [
          "4.8%",
          "5.9%",
          "6.4%",
          "7.2%"
        ],
        correctAnswerIndex: 1,
        explanation: "India's crude oil imports increased by 5.9% in October compared to the previous month."
    ),

    Question(
        questionText: "What is S&P Global Ratings' upgraded GDP growth projection for India in the financial year 2024?",
        options: [
          "5.5%",
          "6.0%",
          "6.2%",
          "6.4%"
        ],
        correctAnswerIndex: 3,
        explanation: "S&P Global Ratings upgraded its GDP growth projection for India in FY2024 to 6.4%."
    ),

    Question(
        questionText: "Why has the Securities and Exchange Board of India (SEBI) granted approval for Not for Profit Organisations (NPOs) regarding the social stock exchange?",
        options: [
          "To facilitate mergers and acquisitions",
          "To decrease the minimum issue size for public issuance",
          "To increase regulatory norms",
          "To enhance urban living standards"
        ],
        correctAnswerIndex: 1,
        explanation: "SEBI granted approval to NPOs by decreasing the minimum issue size for public issuance on the social stock exchange."
    ),
    Question(
        questionText: "According to the 'China Slows India Grows' report by S&P Global Ratings, what is the projected GDP growth for India by 2026?",
        options: [
          "3.8%",
          "4.6%",
          "6.0%",
          "7.0%"
        ],
        correctAnswerIndex: 3,
        explanation: "The report projects a 7% GDP growth for India by 2026, outpacing China's estimated 4.6%."
    ),

    Question(
        questionText: "What was the historic surge in women's labor force participation in the second quarter of FY24?",
        options: [
          "18%",
          "20%",
          "22%",
          "24%"
        ],
        correctAnswerIndex: 3,
        explanation: "In the second quarter of FY24, women's labor force participation reached an all-time high of 24%."
    ),

    Question(
        questionText: "What is the revised growth projection for India's economy in FY24 and FY25 by the Organisation for Economic Co-operation and Development (OECD)?",
        options: [
          "6.7% and 6.5%",
          "6.3% and 6.1%",
          "7.0% and 7.2%",
          "5.8% and 5.5%"
        ],
        correctAnswerIndex: 1,
        explanation: "OECD revised its projection to 6.3% for FY24 and 6.1% for FY25."
    ),

    Question(
        questionText: "Which Mumbai-based conglomerate acquired Reliance Naval and Engineering through its special purpose vehicle, Hazel Infra?",
        options: [
          "Adani Group",
          "Tata Group",
          "Swan Energy",
          "JSW Group"
        ],
        correctAnswerIndex: 2,
        explanation: "Swan Energy acquired Reliance Naval and Engineering through its special purpose vehicle, Hazel Infra."
    ),

    Question(
        questionText: "What award did Tata Motors secure in its arbitration with the West Bengal Industrial Development Corp. Ltd (WBIDC)?",
        options: [
          "₹500 crore",
          "₹600 crore",
          "₹700 crore",
          "₹766 crore"
        ],
        correctAnswerIndex: 3,
        explanation: "Tata Motors secured a significant ₹766 crore arbitration award from WBIDC."
    ),

    Question(
        questionText: "Which beauty retailer partnered with Reliance Beauty & Personal Care Limited to redefine luxury beauty retail in India?",
        options: [
          "Sephora",
          "MAC Cosmetics",
          "L'Oreal",
          "Clinique"
        ],
        correctAnswerIndex: 0,
        explanation: "Sephora partnered with Reliance Beauty & Personal Care Limited to redefine luxury beauty retail in India."
    ),

    Question(
        questionText: "What challenge does the cotton industry in India face for the 2023-2024 season?",
        options: [
          "Excessive rainfall",
          "Pink bollworm infestation",
          "Drought",
          "Labor shortage"
        ],
        correctAnswerIndex: 1,
        explanation: "The cotton industry faces challenges like pink bollworm infestation for the 2023-2024 season."
    ),

    Question(
        questionText: "What is the value of the Mudra Port project, and what cargo volume target does it aim to achieve by FY25?",
        options: [
          "Rs. 3,500 crore; 150 MMT",
          "Rs. 4,000 crore; 180 MMT",
          "Rs. 4,119 crore; 200 MMT",
          "Rs. 5,000 crore; 220 MMT"
        ],
        correctAnswerIndex: 2,
        explanation: "The Mudra Port project is valued at Rs. 4,119 crore, and it aims to achieve a cargo volume of 200 MMT by FY25."
    ),

    Question(
        questionText: "What is the approximate value of the acquisition of Mercator Petroleum Limited (MPL) by Indian Oil Corporation (IOC)?",
        options: [
          "Rs. 100 crore",
          "Rs. 148 crore",
          "Rs. 200 crore",
          "Rs. 250 crore"
        ],
        correctAnswerIndex: 1,
        explanation: "The acquisition of Mercator Petroleum Limited (MPL) by IOC is valued at approximately Rs. 148 crore."
    ),

    Question(
        questionText: "What initiative was launched by the Ministry of Electronics & Information Technology (Meity) Secretary, Shri S Krishnan, to support tech startups in India?",
        options: [
          "Digital India Initiative",
          "Startup India",
          "LEAP AHEAD",
          "Innovate for India"
        ],
        correctAnswerIndex: 2,
        explanation: "The LEAP AHEAD initiative was launched to support and accelerate the success of tech startups in India."
    ),

    Question(
        questionText: "What is the projected gross revenue for PwC India in the current fiscal year?",
        options: [
          "Rs. 8,000 crore",
          "Rs. 9,000 crore",
          "Rs. 10,000 crore",
          "Rs. 11,000 crore"
        ],
        correctAnswerIndex: 1,
        explanation: "PwC India is anticipating a gross revenue surpassing ₹9,000 crores in the current fiscal year."
    ),

    Question(
        questionText: "What strategic partnership did Blue Dart Express announce, and what does it aim to introduce at selected post offices?",
        options: [
          "Partnership with FedEx; Overnight shipping services",
          "Partnership with DHL; Express courier services",
          "Partnership with India Post; Automated Digital Parcel Lockers",
          "Partnership with UPS; Global shipping solutions"
        ],
        correctAnswerIndex: 2,
        explanation: "Blue Dart Express announced a partnership with India Post to introduce automated Digital Parcel Lockers at selected post offices."
    ),

    Question(
        questionText: "What significant acquisition is Svatantra Microfin Private Limited set to make, and what is the approximate value of the deal?",
        options: [
          "Acquisition of Reliance Jio; Rs. 2,000 crore",
          "Acquisition of Chaitanya India Fin Credit Private Limited; Rs. 1,479 crore",
          "Acquisition of HDFC Bank; Rs. 3,500 crore",
          "Acquisition of Axis Bank; Rs. 2,500 crore"
        ],
        correctAnswerIndex: 1,
        explanation: "Svatantra Microfin Private Limited is set to acquire Chaitanya India Fin Credit Private Limited in a deal valued at Rs. 1,479 crore."
    ),

    Question(
        questionText: "Which conglomerate recently divested its stake in One 97 Communications, the parent company of Paytm?",
        options: [
          "Reliance Industries",
          "Adani Group",
          "Tata Group",
          "Berkshire Hathaway"
        ],
        correctAnswerIndex: 3,
        explanation: "Berkshire Hathaway, led by Warren Buffett, completely divested its stake in One 97 Communications, the parent company of Paytm."
    ),

    Question(
        questionText: "What is the target set by the Association of Asia-Pacific Airlines (AAPA) for its member airlines regarding sustainable aviation fuel (SAF) usage by 2030?",
        options: [
          "3%",
          "5%",
          "7%",
          "10%"
        ],
        correctAnswerIndex: 1,
        explanation: "AAPA set a target for its member airlines to achieve 5% sustainable aviation fuel (SAF) usage by 2030."
    ),

    Question(
      questionText: "What was the purpose of the Virgin Atlantic passenger jet fueled by sustainable aviation fuel?",
      options: [
        "To set a new speed record in transatlantic flights.",
        "To test the feasibility of using sustainable aviation fuel for long-haul journeys.",
        "To showcase the luxury and comfort of Virgin Atlantic flights.",
        "To demonstrate the use of traditional aviation fuel for long-haul journeys."
      ],
      correctAnswerIndex: 1,
      explanation: "The purpose of the Virgin Atlantic passenger jet fueled by sustainable aviation fuel was to test the feasibility of using such fuel for long-haul journeys, showcasing the aviation industry's commitment to low-carbon options.",
    ),

    Question(
      questionText: "Which country recently became the 95th member of the International Solar Alliance?",
      options: [
        "Norway",
        "Chile",
        "India",
        "Thailand"
      ],
      correctAnswerIndex: 1,
      explanation: "Chile recently became the 95th member of the International Solar Alliance, reinforcing the country’s commitment to solar energy cooperation.",
    ),

    Question(
      questionText: "What is the main focus of Norway's initiative to support India’s 'Hunger Project' in Uttarakhand?",
      options: [
        "Enhancing military capabilities",
        "Empowering women leaders and enhancing food security",
        "Promoting tourism",
        "Exploring natural resources"
      ],
      correctAnswerIndex: 1,
      explanation: "Norway's initiative aims to empower women leaders, enhance food security, and protect the environment in the ecologically sensitive region of Uttarakhand.",
    ),

    Question(
      questionText: "Which two militant groups, considered proxies of Iran, were involved in recent attacks in Israel and on its northern border?",
      options: [
        "Al-Qassam Brigades and Hamas",
        "Hezbollah and Al-Qassam Brigades",
        "M23 rebels and government-backed militias",
        "FATF and Hezbollah"
      ],
      correctAnswerIndex: 1,
      explanation: "Hamas (Al-Qassam Brigades) launched a rocket attack, and Hezbollah, both considered proxies of Iran, attacked 19 positions in Israel, escalating tensions on Israel’s northern border.",
    ),

    Question(
      questionText: "What is the focus of Thailand's strategy to revitalize its tourism industry?",
      options: [
        "Implementing strict visa requirements",
        "Allowing visa-free entries for Indian and Taiwanese citizens",
        "Promoting cultural events",
        "Attracting Chinese tourists"
      ],
      correctAnswerIndex: 1,
      explanation: "Thailand is revitalizing its tourism industry by allowing visa-free entries for citizens of India and Taiwan as part of a broader strategy to attract more visitors.",
    ),
    Question(
      questionText: "Which country did a Chinese communist party delegation recently visit, highlighting growing cooperation between the two nations?",
      options: [
        "Bangladesh",
        "Solomon Islands",
        "Thailand",
        "Sri Lanka"
      ],
      correctAnswerIndex: 1,
      explanation: "A Chinese communist party delegation recently visited the Solomon Islands, highlighting the growing cooperation between China and the Solomon Islands.",
    ),

    Question(
      questionText: "What significant event does the memorial in Ashunganj, Bangladesh, commemorate?",
      options: [
        "Independence Day",
        "Victory in a war",
        "Liberation War of Bangladesh in 1971",
        "Foundation Day"
      ],
      correctAnswerIndex: 2,
      explanation: "The memorial in Ashunganj, Bangladesh, commemorates the sacrifices of Indian soldiers during the Liberation War of Bangladesh in 1971.",
    ),

    Question(
      questionText: "What is the primary purpose of Adani Power Ltd's green ammonia combustion pilot project at the Mundra power plant in Gujarat?",
      options: [
        "Increasing carbon footprint",
        "Enhancing agricultural practices",
        "Reducing carbon footprint",
        "Testing traditional fuel sources"
      ],
      correctAnswerIndex: 2,
      explanation: "Adani Power Ltd's green ammonia combustion pilot project aims at reducing its carbon footprint, aligning with the commitment to adopting sustainable practices.",
    ),

    Question(
      questionText: "Which organization announced the removal of several countries from its 'grey list' related to AML/CFT systems?",
      options: [
        "United Nations",
        "International Monetary Fund (IMF)",
        "Financial Action Task Force (FATF)",
        "World Health Organization (WHO)"
      ],
      correctAnswerIndex: 2,
      explanation: "FATF (Financial Action Task Force) announced the removal of several countries from its 'grey list' due to significant progress in enhancing their AML/CFT systems.",
    ),

    Question(
      questionText: "What is the focus of the IIT Madras initiative on Zanzibar Island in East Africa?",
      options: [
        "Establishing a new research center",
        "Promoting cultural exchange programs",
        "Establishing an international campus",
        "Launching a satellite"
      ],
      correctAnswerIndex: 2,
      explanation: "IIT Madras has established an international campus on Zanzibar Island, focusing on a new era of global education and cooperation.",
    ),

    Question(
      questionText: "What recent investment did the United States International Development Finance Corporation (DFC) make in Sri Lanka?",
      options: [
        "\$553 million in a container terminal project",
        "\$100 million in a renewable energy project",
        "\$1 billion in a healthcare infrastructure project",
        "\$250 million in a technology startup"
      ],
      correctAnswerIndex: 0,
      explanation: "The United States International Development Finance Corporation (DFC) invested \$553 million in Adani Ports’ container terminal project located in the Port of Colombo, Sri Lanka.",
    ),

    Question(
      questionText: "What recent setback did China face, impacting its economy?",
      options: [
        "Trade surplus increase",
        "Return to deflation in October",
        "Surge in consumer activity",
        "Economic growth exceeding expectations"
      ],
      correctAnswerIndex: 1,
      explanation: "China faced a setback as it slipped back into deflation in October, posing a challenge for officials working to stimulate demand.",
    ),

    Question(
      questionText: "What is the focus of the Group of Seven (G7) foreign ministers’ meetings regarding the Israel-Hamas conflict?",
      options: [
        "Supporting Hamas",
        "Addressing the humanitarian crisis in Gaza",
        "Advocating for Israeli aggression",
        "Promoting military intervention"
      ],
      correctAnswerIndex: 1,
      explanation: "The G7 foreign ministers’ meetings aimed at addressing the Israel-Hamas conflict and the ensuing humanitarian crisis in Gaza, emphasizing the importance of a unified response.",
    ),

    Question(
      questionText: "Why did Russia formally withdraw from the Treaty on Conventional Armed Forces in Europe (CFE)?",
      options: [
        "NATO's expansion",
        "Global disarmament efforts",
        "Concerns about nuclear proliferation",
        "Violation by other signatory countries"
      ],
      correctAnswerIndex: 0,
      explanation: "Russia formally withdrew from the Treaty on Conventional Armed Forces in Europe (CFE), citing NATO’s expansion as a barrier to cooperation.",
    ),

    Question(
      questionText: "What is the purpose of including India in the expanded list of safe states by the United Kingdom?",
      options: [
        "To increase tourism from India",
        "To expedite the process of returning illegal immigrants",
        "To promote cultural exchange programs",
        "To strengthen diplomatic ties"
      ],
      correctAnswerIndex: 1,
      explanation: "The United Kingdom's plan to include India in an expanded list of safe states aims to expedite the process of returning Indian nationals who have traveled illegally from India.",
    ),
    Question(
      questionText: "What distinguished British colonists in India from earlier invaders concerning the Indian economy?",
      options: [
        "They made structural changes in the Indian economy.",
        "They imposed heavy tributes on India's wealth.",
        "They promoted Indian industries.",
        "They did not affect India's economy."
      ],
      correctAnswerIndex: 0,
      explanation: "Unlike earlier invaders, the British colonists made structural changes in the Indian economy during their rule.",
    ),

    Question(
      questionText: "In a recent bilateral meeting between India and Australia, what were the discussions centered around?",
      options: [
        "Economic collaboration and trade agreements.",
        "Strategic collaborations in hydrography and joint air-to-air refueling.",
        "Enhancing cultural exchanges.",
        "Cooperation in space exploration."
      ],
      correctAnswerIndex: 1,
      explanation: "The discussions centered around strategic collaborations in hydrography and the potential for joint air-to-air refueling.",
    ),

    Question(
      questionText: "Who secured a decisive victory in Argentina's recent presidential runoff?",
      options: [
        "Economy Minister Sergio Massa.",
        "Javier Milei, a self-described anarcho-capitalist.",
        "A traditional political figure.",
        "A left-wing populist candidate."
      ],
      correctAnswerIndex: 1,
      explanation: "Javier Milei, a self-described anarcho-capitalist, secured a decisive victory in Argentina's recent presidential runoff.",
    ),

    Question(
      questionText: "Who is set to assume the role of prime minister in Luxembourg?",
      options: [
        "Vladimir Putin.",
        "Richard Marles.",
        "Luc Frieden.",
        "Anurag Singh Thakur."
      ],
      correctAnswerIndex: 2,
      explanation: "Former finance minister Luc Frieden is set to assume the role of prime minister in Luxembourg.",
    ),

    Question(
      questionText: "When is Russian President Vladimir Putin set to participate in a virtual G20 leaders meeting?",
      options: [
        "November 22.",
        "September 30.",
        "December 1.",
        "October 15."
      ],
      correctAnswerIndex: 0,
      explanation: "Vladimir Putin is set to participate in a virtual G20 leaders meeting on November 22.",
    ),

    Question(
      questionText: "What is the key unresolved issue in the negotiations between the UK and India for a free trade agreement (FTA)?",
      options: [
        "Trade tariffs.",
        "Labor rights.",
        "Level of protection for Geographical Indication (GI) products.",
        "Military cooperation."
      ],
      correctAnswerIndex: 2,
      explanation: "The key unresolved issue is the level of protection for Geographical Indication (GI) products from the agricultural sector.",
    ),

    Question(
      questionText: "Which cargo ship was hijacked by Yemen’s Houthi rebels in the Red Sea?",
      options: [
        "Freedom Voyager.",
        "Galaxy Leader.",
        "Ocean Explorer.",
        "Sea Guardian."
      ],
      correctAnswerIndex: 1,
      explanation: "The cargo ship 'Galaxy Leader' en route from Turkey to India was hijacked by Yemen’s Houthi rebels in the Red Sea.",
    ),

    Question(
      questionText: "What did the Film Bazaar, inaugurated by Shri Anurag Singh Thakur, represent?",
      options: [
        "A political summit.",
        "A military exhibition.",
        "A South Asian film market.",
        "An international sports event."
      ],
      correctAnswerIndex: 2,
      explanation: "The Film Bazaar represents the largest South Asian film market.",
    ),

    Question(
      questionText: "What does the diplomatic breakthrough between Israel and Hamas involve?",
      options: [
        "Trade agreements.",
        "Release of hostages and Palestinian prisoners.",
        "Joint military exercises.",
        "A ceasefire for a year."
      ],
      correctAnswerIndex: 1,
      explanation: "The diplomatic breakthrough involves the release of at least 50 hostages and numerous Palestinian prisoners.",
    ),

    Question(
      questionText: "What is the focus of the ASEAN-India Millet Festival 2023 in Indonesia?",
      options: [
        "Space exploration.",
        "Promoting culinary diversity.",
        "Nuclear disarmament.",
        "Climate change initiatives."
      ],
      correctAnswerIndex: 1,
      explanation: "The ASEAN-India Millet Festival 2023 focuses on promoting culinary diversity and fostering sustainable agriculture.",
    ),

    Question(
      questionText: "What has Israel officially declared regarding the terror outfit Lashkar-e-Taiba (LeT)?",
      options: [
        "Recognition as a political party.",
        "Support for their cause.",
        "No official stance.",
        "Declaration as a terrorist organization."
      ],
      correctAnswerIndex: 3,
      explanation: "Israel has officially declared the Pakistan-based terror outfit Lashkar-e-Taiba (LeT) as a terrorist organization.",
    ),

    Question(
      questionText: "What are health officials in China currently investigating?",
      options: [
        "A surge in COVID-19 cases.",
        "An unidentified illness affecting adults.",
        "Cases of malaria.",
        "A surge in cases of an unidentified illness affecting children."
      ],
      correctAnswerIndex: 3,
      explanation: "Health officials in China are currently investigating a surge in cases of an unidentified illness, particularly affecting children.",
    ),

    Question(
      questionText: "What is the name of the world's largest single-site solar power plant inaugurated by the UAE?",
      options: [
        "Sunshine Oasis.",
        "Solaris Haven.",
        "Al Dhafra Solar Photovoltaic (PV) Independent Power Project.",
        "EcoSun Paradise."
      ],
      correctAnswerIndex: 2,
      explanation: "The world's largest single-site solar power plant inaugurated by the UAE is the Al Dhafra Solar Photovoltaic (PV) Independent Power Project.",
    ),

    Question(
      questionText: "Who secured a landmark win in the recent Dutch elections?",
      options: [
        "Angela Merkel.",
        "Emmanuel Macron.",
        "Geert Wilders.",
        "Theresa May."
      ],
      correctAnswerIndex: 2,
      explanation: "Geert Wilders, leader of the Freedom Party (PVV), secured a landmark win in the recent Dutch elections.",
    ),

    Question(
      questionText: "Why has the Afghanistan embassy in New Delhi officially announced its permanent closure?",
      options: [
        "Lack of diplomatic relations.",
        "Persistent challenges from the Indian government.",
        "Security concerns.",
        "Financial difficulties."
      ],
      correctAnswerIndex: 1,
      explanation: "The Afghanistan embassy in New Delhi has officially announced its permanent closure, citing persistent challenges from the Indian government as the primary reason.",
    ),

    Question(
      questionText: "According to the Organisation for Economic Co-operation and Development (OECD), which country emerges as the foremost aid provider in 2022?",
      options: [
        "China.",
        "India.",
        "United States.",
        "Russia."
      ],
      correctAnswerIndex: 2,
      explanation: "According to the Organisation for Economic Co-operation and Development (OECD), the United States emerges as the foremost aid provider in 2022.",
    ),

    Question(
      questionText: "What provision is Malaysia making for visitors from India and China starting from December 1?",
      options: [
        "30 days of visa-free travel.",
        "Special discounts on accommodation.",
        "Extended work permits.",
        "Compulsory quarantine."
      ],
      correctAnswerIndex: 0,
      explanation: "Malaysia is offering 30 days of visa-free travel to visitors from India starting from December 1.",
    ),

    Question(
      questionText: "What does the Global Trade Research Initiative (GTRI) recommend regarding India's bilateral free trade agreements (FTAs)?",
      options: [
        "Immediate termination of all FTAs.",
        "Expansion of FTAs with all countries.",
        "A comprehensive review, focusing on agreements with Singapore and Thailand.",
        "No changes to existing FTAs."
      ],
      correctAnswerIndex: 2,
      explanation: "The Global Trade Research Initiative (GTRI) recommends a comprehensive review of India’s bilateral free trade agreements (FTAs), specifically focusing on the agreements with Singapore and Thailand.",
    ),

    Question(
      questionText: "What is the significant diplomatic move involving Robert Shetkintong?",
      options: [
        "Establishment of a new embassy.",
        "Appointment as the Ambassador to the United Nations.",
        "Designation as the next High Commissioner of India to the Republic of Mozambique.",
        "Resignation from diplomatic service."
      ],
      correctAnswerIndex: 2,
      explanation: "Robert Shetkintong, the current Ambassador of India to the Federal Democratic Republic of Ethiopia, has been designated as the next High Commissioner of India to the Republic of Mozambique.",
    ),

    Question(
      questionText: "What is the first human case of H1N2, or the pig virus, discovered in the UK?",
      options: [
        "Severe illness resulting in death.",
        "Mild illness with full recovery.",
        "Asymptomatic case.",
        "Severe illness with ongoing complications."
      ],
      correctAnswerIndex: 1,
      explanation: "The first human case of H1N2, or the pig virus, discovered in the UK experienced mild illness and fully recovered.",
    ),

    Question(
      questionText: "Who secured a significant political comeback by winning the New South Wales Liberal Senate race?",
      options: [
        "Angela Merkel.",
        "Emmanuel Macron.",
        "Geert Wilders.",
        "Dave Sharma."
      ],
      correctAnswerIndex: 3,
      explanation: "Dave Sharma, the Indian-origin politician, secured a significant political comeback by winning the New South Wales Liberal Senate race.",
    ),

    Question(
      questionText: "What groundbreaking law aimed at banning smoking is abandoned by New Zealand's recently elected government?",
      options: [
        "Restrictions on smoking in public places.",
        "Progressively increasing smoking age.",
        "Ban on cigarette production.",
        "Mandatory anti-smoking campaigns."
      ],
      correctAnswerIndex: 1,
      explanation: "New Zealand's recently elected government has decided to abandon its groundbreaking law aimed at banning smoking for future generations, which established a progressively increasing smoking age.",
    ),

    Question(
      questionText: "What significant event occurred at Indonesia’s Anak Krakatau volcano on Tuesday morning?",
      options: [
        "Peaceful eruption with no impact.",
        "Release of volcanic gases.",
        "Heightened volcanic activity since April last year.",
        "Formation of a new volcanic island."
      ],
      correctAnswerIndex: 2,
      explanation: "Indonesia’s Anak Krakatau volcano unleashed a powerful eruption on Tuesday morning, marking a continuation of heightened volcanic activity since April last year.",
    ),

    Question(
      questionText: "What was the focus of the ASEAN India Grassroots Innovation Forum 2023?",
      options: [
        "Space exploration.",
        "Promotion of cultural exchanges.",
        "Strengthening relationships between nations.",
        "Science, Technology, and Innovation (STI) at the grassroots level."
      ],
      correctAnswerIndex: 3,
      explanation: "The focus of the ASEAN India Grassroots Innovation Forum 2023 was to strengthen the relationship between nations and promote social innovations at the grassroots level in the fields of Science, Technology, and Innovation (STI).",
    ),

    Question(
      questionText: "What bold step did the Constitution of Nepal take in 2015 regarding discrimination?",
      options: [
        "No mention of discrimination.",
        "Prohibition of discrimination based on gender.",
        "Prohibition of discrimination based on religion.",
        "Prohibition of discrimination based on sexual orientation."
      ],
      correctAnswerIndex: 3,
      explanation: "The Constitution of Nepal, adopted in 2015, took a bold step by explicitly prohibiting discrimination based on sexual orientation.",
    ),

    Question(
      questionText: "What regions are the flexible workspace provider, The Executive Centre (TEC), strategically focusing on for expansion?",
      options: [
        "North America and Europe.",
        "Latin America and Africa.",
        "India and the Middle East.",
        "Asia-Pacific and Australia."
      ],
      correctAnswerIndex: 2,
      explanation: "The Executive Centre (TEC) is strategically focusing on its fastest-growing markets, India and the Middle East, with plans to add approximately 500,000 sq ft.",
    ),

    Question(
      questionText: "How did the Turkish Republic celebrate its 100th anniversary?",
      options: [
        "Grand gala reception.",
        "Military parade.",
        "Subdued celebration with fireworks and drone show.",
        "International music festival."
      ],
      correctAnswerIndex: 2,
      explanation: "The Turkish Republic celebrated its 100th anniversary with a relatively subdued celebration featuring a fireworks and drone show in Istanbul and a procession of 100 naval ships, but no grand gala reception.",
    ),

    Question(
      questionText: "What developmental projects will Prime Minister Narendra Modi inaugurate in Gujarat’s Mehsana district?",
      options: [
        "Road construction projects.",
        "Educational initiatives.",
        "Renewable energy projects.",
        "Projects valued at ₹5,950 crore."
      ],
      correctAnswerIndex: 3,
      explanation: "Prime Minister Narendra Modi will inaugurate and launch various developmental projects in Gujarat’s Mehsana district, valued at ₹5,950 crore.",
    ),

    Question(
      questionText: "What is the focus of the National Medical Commission's mission?",
      options: [
        "Research in medical sciences.",
        "Providing financial aid to medical students.",
        "Assigning a unique identification number to every doctor.",
        "Establishing new medical colleges."
      ],
      correctAnswerIndex: 2,
      explanation: "The National Medical Commission (NMC) has embarked on a mission to assign a unique identification number to every doctor in the country by the end of 2024.",
    ),

    Question(
      questionText: "What is the percentage of women in India’s workforce during the 2022-23 fiscal year?",
      options: [
        "23 percent.",
        "30 percent.",
        "37 percent.",
        "45 percent."
      ],
      correctAnswerIndex: 2,
      explanation: "The participation of women in India’s workforce has seen a significant increase, reaching 37 percent during the 2022-23 fiscal year.",
    ),

    Question(
      questionText: "What are the core strengths and growth potential outlined by Ashwini Vaishnaw during the Hindustan Times Leadership Summit?",
      options: [
        "India's cultural heritage and culinary diversity.",
        "Initiatives in the semiconductor and technology sectors.",
        "Global advancements in 5G and 6G networks.",
        "Groundbreaking initiatives in energy efficiency."
      ],
      correctAnswerIndex: 1,
      explanation: "Ashwini Vaishnaw outlined India's core strengths, growth potential, and key initiatives in the semiconductor and technology sectors during the Hindustan Times Leadership Summit.",
    ),

    Question(
      questionText: "What is the significance of World Food India 2023, and who will inaugurate the event?",
      options: [
        "It promotes cultural heritage and is inaugurated by Ashwini Vaishnaw.",
        "It focuses on global food potential and is inaugurated by Narendra Modi.",
        "It emphasizes efficient candidate and election management.",
        "It unveils initiatives in the agri-food sector by Piyush Goyal."
      ],
      correctAnswerIndex: 1,
      explanation: "World Food India 2023 unites culture, cuisine, and commerce, providing a platform for discussions, partnerships, and agri-food sector investments. It will be inaugurated by Prime Minister Narendra Modi.",
    ),

    Question(
      questionText: "What is ENCORE, and who developed this software?",
      options: [
        "A comprehensive software suite for efficient candidate and election management developed by EESL.",
        "A software for the semiconductor industry developed by Ashwini Vaishnaw.",
        "A groundbreaking initiative in energy efficiency by EESL.",
        "A software for election management developed by the Election Commission of India."
      ],
      correctAnswerIndex: 3,
      explanation: "ENCORE is a comprehensive software suite designed for efficient candidate and election management. It was developed by the Election Commission of India.",
    ),

    Question(
      questionText: "What are the two groundbreaking initiatives unveiled by Energy Efficiency Services Limited (EESL) on November 2, 2023?",
      options: [
        "National Efficient Cooking Programme (NECP) and Energy Efficient Fans Programme (EEFP).",
        "Semiconductor and Technology Initiatives.",
        "World Food India and ENCORE.",
        "India Manufacturing Show and Make in India."
      ],
      correctAnswerIndex: 0,
      explanation: "EESL unveiled two groundbreaking initiatives, the National Efficient Cooking Programme (NECP) and the Energy Efficient Fans Programme (EEFP), on November 2, 2023.",
    ),

    Question(
      questionText: "What is the central theme of the 'India Manufacturing Show' inaugurated by Shri Rajnath Singh?",
      options: [
        "Global advancements in 5G and 6G networks.",
        "Make in India, Make for the World.",
        "Efficient candidate and election management.",
        "Promotion of locally-made products."
      ],
      correctAnswerIndex: 1,
      explanation: "The central theme of the 'India Manufacturing Show' is 'Make in India, Make for the World,' emphasizing the significance of small-scale industries in India’s economic landscape.",
    ),

    Question(
      questionText: "What announcement did Union Communication & IT Minister, Ashwini Vaishnaw, make at the India Mobile Congress 2023?",
      options: [
        "Launch of 'Bharat' Atta.",
        "India's hosting of the World Telecommunication Standardisation Assembly (WTSA) in 2024.",
        "Inauguration of the three-day 'India Manufacturing Show' in Bengaluru.",
        "Flagging off the maiden voyage of Costa Serena from Mumbai."
      ],
      correctAnswerIndex: 1,
      explanation: "Ashwini Vaishnaw announced that India will host the World Telecommunication Standardisation Assembly (WTSA) in 2024 at the India Mobile Congress 2023.",
    ),

    Question(
      questionText: "Who flagged off the maiden voyage of Costa Serena, India’s first International Cruise Liner, and where did it take place?",
      options: [
        "Narendra Modi in New Delhi.",
        "Ashwini Vaishnaw in Mumbai.",
        "Shri Sarbananda Sonowal in Bengaluru.",
        "Piyush Goyal in Rajkot, Gujarat."
      ],
      correctAnswerIndex: 2,
      explanation: "Shri Sarbananda Sonowal, Union Minister of Ports, Shipping & Waterways, flagged off the maiden voyage of Costa Serena from Mumbai, marking a transformative phase in India’s cruising and tourism industry.",
    ),

    Question(
      questionText: "For how long has Prime Minister Narendra Modi been elected as the chairman of the Shree Somnath Trust (SST)?",
      options: [
        "One year.",
        "Two years.",
        "Three years.",
        "Five years."
      ],
      correctAnswerIndex: 3,
      explanation: "Prime Minister Narendra Modi has been elected as the chairman of the Shree Somnath Trust (SST) for a five-year term, marking a significant departure from the traditional one-year tenure for the trust’s chairman.",
    ),

    Question(
      questionText: "What significant initiative has Piyush Goyal launched to provide affordable wheat flour to consumers?",
      options: [
        "National Efficient Cooking Programme (NECP).",
        "Energy Efficient Fans Programme (EEFP).",
        "'Bharat' Atta under 'Vocal for Local'.",
        "Diwali Utsav’ Gramshilpa, Khadi Lounge in Connaught Place."
      ],
      correctAnswerIndex: 2,
      explanation: "Piyush Goyal has launched the 'Bharat' brand of wheat flour, aiming to provide an affordable alternative to market prices and support both farmers and consumers under the 'Vocal for Local' initiative.",
    ),

    Question(
      questionText: "What does the inauguration of the Department of Animal Husbandry and Dairying’s pavilion signify?",
      options: [
        "A celebration of India’s rich food culture.",
        "A commitment to sustainable agriculture and livestock practices.",
        "A groundbreaking initiative in energy efficiency.",
        "A platform for showcasing cutting-edge technologies and innovations."
      ],
      correctAnswerIndex: 1,
      explanation: "The inauguration of the Department of Animal Husbandry and Dairying’s pavilion signifies a commitment to sustainable agriculture and livestock practices.",
    ),

    Question(
      questionText: "What does Bharat Botanics announce in its recent development in Gondal, Rajkot Gujarat?",
      options: [
        "A unique establishment within the Supreme Court premises.",
        "A solar-powered 'mini-cruise' ship on the Saryu River.",
        "The opening of a wood-pressed Cold Oil processing facility.",
        "The inauguration of the VFX and Tech Pavilion at IFFI Goa."
      ],
      correctAnswerIndex: 2,
      explanation: "Bharat Botanics announced the opening of its cutting-edge wood-pressed Cold Oil processing facility in Gondal, Rajkot Gujarat.",
    ),

    Question(
      questionText: "Where was the statue of Chhatrapati Shivaji Maharaj inaugurated, and what does it symbolize?",
      options: [
        "Bengaluru; a celebration of India’s rich food culture.",
        "Kupwara district, Jammu and Kashmir; a symbol of cultural pride.",
        "Ravidas Ghat, Varanasi; a significant stride in adopting sustainable energy solutions.",
        "Connaught Place, New Delhi; a platform for showcasing film-making technology."
      ],
      correctAnswerIndex: 1,
      explanation: "The statue of Chhatrapati Shivaji Maharaj was inaugurated in the Kupwara district of Jammu and Kashmir, symbolizing cultural pride.",
    ),

    Question(
      questionText: "What initiative did the Khadi and Village Industries Commission (KVIC) launch in Connaught Place, New Delhi?",
      options: [
        "Diwali Utsav’ Gramshilpa.",
        "The winter session of the Indian Parliament.",
        "The 'Bharat' brand of wheat flour.",
        "The International Tourism Mart in Shillong, Meghalaya."
      ],
      correctAnswerIndex: 0,
      explanation: "Under the leadership of Shri Manoj Kumar, Chairman of KVIC, the 'Diwali Utsav’ Gramshilpa, Khadi Lounge' was inaugurated in Connaught Place, New Delhi.",
    ),

    Question(
      questionText: "When is the winter session of the Indian Parliament set to convene?",
      options: [
        "November 2 to November 22.",
        "November 15th.",
        "November 21st to 23rd, 2023.",
        "December 4 to December 22."
      ],
      correctAnswerIndex: 3,
      explanation: "The winter session of the Indian Parliament is set to convene from December 4 to December 22, as announced by Union Parliamentary Affairs Minister Prahlad Joshi on November 9.",
    ),

    Question(
      questionText: "What clarification did the Supreme Court of India provide regarding its directive on the use of barium and other prohibited chemicals in firecrackers?",
      options: [
        "The directive applies only to the National Capital Region.",
        "The directive applies to the entire country.",
        "The directive applies to the use of prohibited chemicals in agriculture.",
        "The directive applies to the use of prohibited chemicals in manufacturing."
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court of India clarified that its directive, banning the use of barium and other prohibited chemicals in firecrackers, applies not only to the National Capital Region but to the entire country.",
    ),

    Question(
      questionText: "Who inaugurated 'Mitti Cafe' within the Supreme Court premises, and what makes it unique?",
      options: [
        "Narendra Modi; it is managed by individuals with disabilities.",
        "DY Chandrachud; it is entirely managed by individuals with disabilities.",
        "Anurag Singh Thakur; it is a unique establishment promoting healthy living.",
        "Parshottam Rupala; it is a symbol of cultural pride."
      ],
      correctAnswerIndex: 1,
      explanation: "Chief Justice of India (CJI) DY Chandrachud inaugurated 'Mitti Cafe,' a unique establishment within the Supreme Court premises that is entirely managed by individuals with disabilities.",
    ),

    Question(
      questionText: "What record did Ayodhya set during the seventh edition of Deepotsav?",
      options: [
        "A world record for lighting a large number of lamps simultaneously at one place.",
        "A record for the longest parade of mini-cruise ships.",
        "A record for the highest number of patents granted in a fiscal year.",
        "A record for hosting the International Tourism Mart for the 11th time."
      ],
      correctAnswerIndex: 0,
      explanation: "Ayodhya set a new world record during the seventh edition of Deepotsav for lighting a large number of lamps simultaneously at one place.",
    ),

    Question(
      questionText: "What groundbreaking scheme is Prime Minister Narendra Modi set to launch for Particularly Vulnerable Tribal Groups (PVTGs)?",
      options: [
        "PM-PVTG Development Mission.",
        "PM's visit to Ulihatu Village.",
        "Blending compressed biogas with natural gas.",
        "Chairmanship of the International Sugar Organisation (ISO)."
      ],
      correctAnswerIndex: 0,
      explanation: "Prime Minister Narendra Modi is set to launch the PM-PVTG Development Mission, a groundbreaking scheme aimed at fostering the comprehensive development of approximately 28 lakh people belonging to Particularly Vulnerable Tribal Groups (PVTGs).",
    ),

    Question(
      questionText: "What historic visit is Prime Minister Narendra Modi set to make on November 15th?",
      options: [
        "Inauguration of the VFX and Tech Pavilion at IFFI Goa.",
        "Launching the PM-PVTG Development Mission.",
        "Visiting Ulihatu Village, the birthplace of Bhagwan Birsa Munda.",
        "Announcement of India's chairmanship of the ISO."
      ],
      correctAnswerIndex: 2,
      explanation: "Prime Minister Narendra Modi is set to make history by becoming the first Prime Minister to visit Ulihatu Village, the birthplace of Bhagwan Birsa Munda, on November 15th.",
    ),

    Question(
      questionText: "What economic prediction did Finance Minister Nirmala Sitharaman make at the Indo-Pacific Regional Dialogue?",
      options: [
        "India would surpass Japan and Germany to become the world’s third-largest economy by 2027.",
        "India would become the world's largest economy by 2027.",
        "India's economy would face a decline by 2027.",
        "India would achieve net zero emissions by 2070."
      ],
      correctAnswerIndex: 0,
      explanation: "Finance Minister Nirmala Sitharaman predicted that by 2027, India would surpass Japan and Germany to become the world’s third-largest economy.",
    ),

    Question(
      questionText: "What unique service is Varanasi-based Alaknanda Cruise set to pioneer in the sacred Saryu River?",
      options: [
        "Opening of a wood-pressed Cold Oil processing facility.",
        "Blending compressed biogas with natural gas.",
        "Launching solar-powered 'mini-cruise' ships.",
        "Chairmanship of the International Sugar Organisation (ISO)."
      ],
      correctAnswerIndex: 2,
      explanation: "Varanasi-based Alaknanda Cruise is set to pioneer the unique service of solar-powered 'mini-cruise' ships in the sacred Saryu River.",
    ),

    Question(
      questionText: "What unprecedented milestone did the Indian patent office achieve in the current fiscal year?",
      options: [
        "Opening of the VFX and Tech Pavilion at IFFI Goa.",
        "Blending compressed biogas with natural gas.",
        "Granting a record-breaking 41,010 patents.",
        "Launching solar-powered 'mini-cruise' ships."
      ],
      correctAnswerIndex: 2,
      explanation: "The Indian patent office achieved an unprecedented milestone by granting a record-breaking 41,010 patents in the current fiscal year, up until November 15.",
    ),

    Question(
      questionText: "What is the new name for Ayushman Bharat Health and Wellness Centres?",
      options: [
        "Ayushman Arogya Mandir",
        "Arogyam Parmam Dhanam",
        "Health and Wellness Mandir",
        "Ayushman Arogya Centre"
      ],
      correctAnswerIndex: 0,
      explanation: "The rebranded name for Ayushman Bharat Health and Wellness Centres is 'Ayushman Arogya Mandir.'",
    ),

    Question(
      questionText: "Which city in India is set to witness the development of a 287-km circular railway?",
      options: [
        "Mumbai",
        "Bengaluru",
        "Delhi",
        "Chennai"
      ],
      correctAnswerIndex: 1,
      explanation: "Bengaluru is poised to witness the development of a 287-km circular railway.",
    ),

    Question(
      questionText: "Who inaugurated the luxury cruise vessel 'Classic Imperial' in Kochi?",
      options: [
        "Ashwini Vaishnaw",
        "Nitin Gadkari",
        "Smriti Zubin Irani",
        "Manoj Sinha"
      ],
      correctAnswerIndex: 1,
      explanation: "Nitin Gadkari virtually inaugurated the luxury cruise vessel 'Classic Imperial' in Kochi.",
    ),

    Question(
      questionText: "Which Union Minister recently launched the Anganwadi Protocol Divyang Children?",
      options: [
        "Nitin Gadkari",
        "Ashwini Vaishnaw",
        "Smriti Zubin Irani",
        "Rajendra Vishwanath Arlekar"
      ],
      correctAnswerIndex: 2,
      explanation: "Smriti Zubin Irani, the Union Minister for Women and Child Development and Minority Affairs, launched the Anganwadi Protocol Divyang Children.",
    ),

    Question(
      questionText: "Which two multinational corporations were granted approval to deploy the automatic train collision avoidance system 'Kavach' on Indian Railways?",
      options: [
        "Siemens AG and Kyosan Electric Manufacturing Co",
        "Medha Servo Drives and HBL Power Systems",
        "NTPC REL and Kernex Microsystems",
        "Conde Nast Traveller and Jaipur Literature Festival"
      ],
      correctAnswerIndex: 0,
      explanation: "Siemens AG from Germany and Kyosan Electric Manufacturing Co from Japan were granted approval to deploy 'Kavach' on Indian Railways.",
    ),

    Question(
      questionText: "According to a Crisil report, what is the projected increase in capital expenditure for India's 18 largest states in the fiscal year 2023-24?",
      options: [
        "10-12%",
        "14-16%",
        "18-20%",
        "22-24%"
      ],
      correctAnswerIndex: 2,
      explanation: "The Crisil report projects an 18-20% increase in capital expenditure for India's 18 largest states in the fiscal year 2023-24.",
    ),

    Question(
      questionText: "Which state in India inaugurated a hallmarking centre in Idukki, becoming the first to establish such centres in all its 14 districts?",
      options: [
        "Karnataka",
        "Kerala",
        "Tamil Nadu",
        "Maharashtra"
      ],
      correctAnswerIndex: 1,
      explanation: "Kerala inaugurated a hallmarking centre in Idukki, solidifying its position as the first state in India to have such centres in all its 14 districts.",
    ),

    Question(
      questionText: "What significant event did Manipur Chief Minister N Biren Singh participate in on October 28, 2023?",
      options: [
        "Karnataka Rajyotsava",
        "Mera Houchongba celebrations",
        "Foundation Day of Uttarakhand",
        "Launch of Gyanodaya Express"
      ],
      correctAnswerIndex: 1,
      explanation: "Manipur Chief Minister N Biren Singh participated in the Mera Houchongba celebrations on October 28, 2023.",
    ),

    Question(
      questionText: "What does November 1, 2023, mark in Karnataka's history?",
      options: [
        "Foundation Day of Uttarakhand",
        "Mera Houchongba celebrations",
        "50th anniversary of Karnataka's formation",
        "Launch of Gyanodaya Express"
      ],
      correctAnswerIndex: 2,
      explanation: "November 1, 2023, marks the 50th anniversary of Karnataka's formation, celebrating the merger of Kannada-speaking regions into a single state.",
    ),

    Question(
      questionText: "Which state government approached the Supreme Court of India seeking a declaration about the Governor's failure in dealing with Bills passed by the State Legislature?",
      options: [
        "Kerala",
        "Uttarakhand",
        "Karnataka",
        "Assam"
      ],
      correctAnswerIndex: 0,
      explanation: "The Kerala Government approached the Supreme Court seeking a declaration about the Governor's failure in dealing with Bills passed by the State Legislature.",
    ),

    Question(
      questionText: "What is the purpose of the microsites launched by Kerala tourism?",
      options: [
        "To promote cruise tourism",
        "To celebrate literature",
        "To promote pilgrimage tourism",
        "To enhance water conservation"
      ],
      correctAnswerIndex: 2,
      explanation: "Kerala tourism launched microsites to promote pilgrimage tourism, emphasizing the state's heritage and religious destinations.",
    ),

    Question(
      questionText: "When is the 17th edition of the Jaipur Literature Festival set to take place?",
      options: [
        "December 1 to December 10, 2023",
        "February 1 to February 5, 2024",
        "November 9, 2023",
        "October 28, 2023"
      ],
      correctAnswerIndex: 1,
      explanation: "The 17th edition of the Jaipur Literature Festival is set to take place from February 1 to February 5, 2024.",
    ),

    Question(
      questionText: "Which subsidiary of NTPC declared the commercial operation of its first project, a 50 MW wind farm in Dayapar, Kutch, Gujarat?",
      options: [
        "NTPC REL",
        "Medha Servo Drives",
        "Kernex Microsystems",
        "HBL Power Systems"
      ],
      correctAnswerIndex: 0,
      explanation: "NTPC Renewable Energy Limited (NTPC REL) declared the commercial operation of its first project, a 50 MW wind farm in Dayapar, Kutch, Gujarat.",
    ),

    Question(
      questionText: "What is the significance of November 9th for Uttarakhand?",
      options: [
        "Launch of Gyanodaya Express",
        "Foundation Day",
        "Implementation of Uniform Civil Code",
        "Approval of Bihar Reservation Amendment Bill"
      ],
      correctAnswerIndex: 1,
      explanation: "November 9th is the Foundation Day for Uttarakhand, and President Draupadi Murmu participated in the program, marking the first instance in 23 years that a President has been part of Uttarakhand's Foundation Day.",
    ),

    Question(
      questionText: "Which Indian state is set to become the first to implement the Uniform Civil Code?",
      options: [
        "Uttarakhand",
        "Kerala",
        "Assam",
        "Meghalaya"
      ],
      correctAnswerIndex: 0,
      explanation: "Uttarakhand is set to become the first state in India to implement the Uniform Civil Code.",
    ),

    Question(
      questionText: "What is the new name of the amalgamated entity formed by the merger of SEBA and AHSEC in Assam?",
      options: [
        "Assam Secondary Education Board",
        "Assam Higher Secondary Education Council",
        "Assam State School Education Board",
        "Assam School Education Council"
      ],
      correctAnswerIndex: 2,
      explanation: "The amalgamated entity formed by the merger of SEBA and AHSEC in Assam is now known as the 'Assam State School Education Board.'",
    ),

    Question(
      questionText: "Which city in Kerala earned a spot on Conde Nast Traveller's list of the best places to visit in Asia in 2024?",
      options: [
        "Thiruvananthapuram",
        "Kochi",
        "Kozhikode",
        "Alappuzha"
      ],
      correctAnswerIndex: 1,
      explanation: "Kochi earned a spot on Conde Nast Traveller's list of the best places to visit in Asia in 2024.",
    ),

    Question(
      questionText: "What is the unique project flagged off by Jammu and Kashmir Lieutenant Governor Manoj Sinha from the Katra railway station?",
      options: [
        "Gyanodaya Express",
        "Uniform Civil Code",
        "Bihar Reservation Amendment Bill",
        "College on Wheels"
      ],
      correctAnswerIndex: 3,
      explanation: "Jammu and Kashmir Lieutenant Governor Manoj Sinha flagged off the 'College on Wheels' project from the Katra railway station.",
    ),

    Question(
      questionText: "What does the Bihar Reservation Amendment Bill approve?",
      options: [
        "50% reservation for Backward Classes",
        "65% reservation for Backward, Extremely Backward Classes, SCs, and STs",
        "Ban on halal certified products",
        "Declaration of 'Ghol' fish as the state fish of Gujarat"
      ],
      correctAnswerIndex: 1,
      explanation: "The Bihar Reservation Amendment Bill approves raising the reservation quota for Backward, Extremely Backward Classes, SCs, and STs from 50% to 65%.",
    ),

    Question(
      questionText: "What immediate ban did the Uttar Pradesh government impose?",
      options: [
        "Ban on the production of dairy products",
        "Ban on the sale of cosmetic products",
        "Ban on halal certified products",
        "Ban on the distribution of bakery goods"
      ],
      correctAnswerIndex: 2,
      explanation: "The Uttar Pradesh government imposed an immediate ban on the production, storage, distribution, and sale of halal certified products within the state.",
    ),

    Question(
      questionText: "Which fish has been officially declared the state fish of Gujarat?",
      options: [
        "Ghol",
        "Rohu",
        "Hilsa",
        "Catla"
      ],
      correctAnswerIndex: 0,
      explanation: "The 'Ghol' fish has been officially declared the state fish of Gujarat.",
    ),

    Question(
      questionText: "What campaign did Meghalaya Chief Minister Conrad K. Sangma launch under the Jal Jeevan Mission?",
      options: [
        "Gyanodaya Express",
        "Uniform Civil Code",
        "Meghalaya Water Smart Kid Campaign",
        "Bihar Reservation Amendment Bill"
      ],
      correctAnswerIndex: 2,
      explanation: "Meghalaya Chief Minister Conrad K. Sangma launched the 'Meghalaya Water Smart Kid Campaign' under the Jal Jeevan Mission.",
    ),



    Question(
      questionText: "What global recognition did Kerala's Responsible Tourism (RT) Mission achieve?",
      options: [
        "Inclusion in Conde Nast Traveller's list",
        "Case Studies by UNWTO",
        "Best places to visit in Asia",
        "Launch of microsites by Kerala tourism"
      ],
      correctAnswerIndex: 1,
      explanation: "Kerala's Responsible Tourism (RT) Mission achieved global acclaim by securing a spot on the prestigious list of Case Studies curated by the United Nations World Tourism Organisation (UNWTO).",
    ),

    Question(
      questionText: "Where is the world's first 3D-printed temple situated?",
      options: [
        "Varanasi",
        "Kolkata",
        "Burugupally, Siddipet district",
        "Thiruvananthapuram"
      ],
      correctAnswerIndex: 2,
      explanation: "The world's first 3D-printed temple is situated in Burugupally, Siddipet district, Telangana.",
    ),

    Question(
      questionText: "When is the Hornbill Festival 2023 scheduled to occur?",
      options: [
        "February 1 to February 5, 2024",
        "December 1 to December 10, 2023",
        "November 9, 2023",
        "October 28, 2023"
      ],
      correctAnswerIndex: 1,
      explanation: "The Hornbill Festival 2023 is scheduled to occur from Friday, December 1, 2023, to Sunday, December 10, 2023.",
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
    home: november(),
  ));
}

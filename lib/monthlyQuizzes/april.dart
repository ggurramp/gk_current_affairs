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

class april extends StatefulWidget {
  final String? userIdentifier;

  april({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<april> createState() => _aprilState();
}

class _aprilState extends State<april> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


  Question(
  questionText: "Who won the Women's Singles category at the Madrid Spain Masters 2023?",
  options: [
  "PV Sindhu (India)",
  "Gregoria Mariska Tunjung (Indonesia)",
  "Chen Fang Hui (China)",
  "Alexandra Bøje (Denmark)"
  ],
  correctAnswerIndex: 1,
  explanation: "Gregoria Mariska Tunjung from Indonesia won the Women's Singles category at the Madrid Spain Masters 2023."
  ),


  Question(
  questionText: "Who was named the richest sports owner in the Forbes billionaire 2023 list?",
  options: [
  "Steve Ballmer (US)",
  "Rob Walton (US)",
  "Mukesh Ambani (India)",
  "Mark Mateschitz (Austria)"
  ],
  correctAnswerIndex: 2,
  explanation: "Mukesh Ambani from India was named the richest sports owner in the Forbes billionaire 2023 list."
  ),

  Question(
  questionText: "Which team does Mukesh Ambani own?",
  options: [
  "Los Angeles Clippers",
  "Denver Broncos",
  "Mumbai Indians",
  "New York Red Bulls"
  ],
  correctAnswerIndex: 2,
  explanation: "Mukesh Ambani owns the Mumbai Indians in the sports industry."
  ),

  Question(
  questionText: "What was the repo rate set by the Reserve Bank of India in the bimonthly monetary policy?",
  options: [
  "6.25%",
  "6.50%",
  "6.75%",
  "7.00%"
  ],
  correctAnswerIndex: 1,
  explanation: "The Reserve Bank of India kept the repo rate unchanged at 6.50% in the bimonthly monetary policy."
  ),

  Question(
  questionText: "Who avenged the Jallianwala Bagh massacre by killing the British officer Michael O'Dwyer?",
  options: [
  "Mahatma Gandhi",
  "Subhas Chandra Bose",
  "Bhagat Singh",
  "Sardar Udham Singh"
  ],
  correctAnswerIndex: 3,
  explanation: "Sardar Udham Singh avenged the Jallianwala Bagh massacre by killing the British officer Michael O'Dwyer."
  ),

  Question(
  questionText: "Which city topped the list of the world's wealthiest cities in 2023?",
  options: [
  "Tokyo",
  "New York City",
  "London",
  "Hong Kong"
  ],
  correctAnswerIndex: 1,
  explanation: "New York City topped the list of the world's wealthiest cities in 2023."
  ),

  Question(
  questionText: "Who was named the ICC Women's Player of the Month for March 2023?",
  options: [
  "Shakib Al Hasan",
  "Henriette Ishimwe",
  "Harmanpreet Kaur",
  "Suryakumar Yadav"
  ],
  correctAnswerIndex: 1,
  explanation: "Henriette Ishimwe from Rwanda was named the ICC Women's Player of the Month for March 2023."
  ),

  Question(
  questionText: "Who won the Wisden Almanack's leading T20I cricketer award for 2022?",
  options: [
  "Suryakumar Yadav",
  "Kane Williamson",
  "Virat Kohli",
  "Rohit Sharma"
  ],
  correctAnswerIndex: 0,
  explanation: "Suryakumar Yadav won the Wisden Almanack's leading T20I cricketer award for 2022."
  ),

  Question(
  questionText: "Who will be honored with the Lata Deenanath Mangeshkar Puraskar?",
  options: [
  "Lata Mangeshkar",
  "Asha Bhosle",
  "Pankaj Udhas",
  "Vidya Balan"
  ],
  correctAnswerIndex: 1,
  explanation: "Asha Bhosle will be honored with the Lata Deenanath Mangeshkar Puraskar."
  ),
  Question(
  questionText: "What was the theme of the report released by the Stockholm International Peace Research Institute (SIPRI)?",
  options: [
  "Global Military Expenditure",
  "World's Wealthiest Cities",
  "AI Investments in India",
  "ICC Player of the Month Awards"
  ],
  correctAnswerIndex: 0,
  explanation: "The theme of the report released by SIPRI was 'Military Spending across the Globe.'"
  ),

  Question(
  questionText: "Which Indian city is recognized as one of the fastest-growing cities in the Asia Pacific region?",
  options: [
  "Mumbai",
  "Delhi",
  "Bengaluru",
  "Kolkata"
  ],
  correctAnswerIndex: 2,
  explanation: "Bengaluru has been recognized as one of the fastest-growing cities in the Asia Pacific region."
  ),

  Question(
  questionText: "Who is the Chairman of the Monetary Policy Committee (MPC) as of April 2023?",
  options: [
  "Shaktikanta Das",
  "Mukesh Ambani",
  "Raghuram Rajan",
  "Nirmala Sitharaman"
  ],
  correctAnswerIndex: 0,
  explanation: "Shaktikanta Das is the Chairman of the Monetary Policy Committee (MPC) as of April 2023."
  ),

  Question(
  questionText: "Which badminton player defeated PV Sindhu in the Women's singles category at the Madrid Spain Masters 2023?",
  options: [
  "Chen Fang Hui",
  "Mathias Christiansen",
  "Gregoria Mariska Tunjung",
  "Liu Sheng Shu"
  ],
  correctAnswerIndex: 2,
  explanation: "Gregoria Mariska Tunjung defeated PV Sindhu in the Women's singles category at the Madrid Spain Masters 2023."
  ),

  Question(
  questionText: "Who is the current richest sports owner according to the Forbes billionaire 2023 list?",
  options: [
  "Rob Walton",
  "Steve Ballmer",
  "Mark Mateschitz",
  "Mukesh Ambani"
  ],
  correctAnswerIndex: 3,
  explanation: "Mukesh Ambani is the current richest sports owner according to the Forbes billionaire 2023 list."
  ),


  Question(
  questionText: "Which AI startup received the highest investment in India in 2022?",
  options: [
  "South Korea",
  "Germany",
  "India",
  "Canada"
  ],
  correctAnswerIndex: 2,
  explanation: "India received the highest investment in AI startups, surpassing countries such as South Korea, Germany, Canada, and Australia."
  ),

  Question(
  questionText: "Who won the ICC Men's Player of the Month award for March 2023?",
  options: [
  "Shakib Al Hasan",
  "Asif Khan",
  "Kane Williamson",
  "Henriette Ishimwe"
  ],
  correctAnswerIndex: 0,
  explanation: "Shakib Al Hasan from Bangladesh won the ICC Men's Player of the Month award for March 2023."
  ),

  Question(
  questionText: "Which Indian duo won the Wisden Almanack's leading cricketer awards for 2022?",
  options: [
  "Virat Kohli & Smriti Mandhana",
  "Rohit Sharma & Jhulan Goswami",
  "Suryakumar Yadav & Harmanpreet Kaur",
  "KL Rahul & Shafali Verma"
  ],
  correctAnswerIndex: 2,
  explanation: "Suryakumar Yadav and Harmanpreet Kaur won the Wisden Almanack's leading cricketer awards for 2022."
  ),

  Question(
  questionText: "Who will receive the Master Deenanath Mangeshkar Puraskar for contribution to Indian music?",
  options: [
  "Asha Bhosle",
  "Pankaj Udhas",
  "Vidya Balan",
  "Prashant Damle"
  ],
  correctAnswerIndex: 1,
  explanation: "Pankaj Udhas will receive the Master Deenanath Mangeshkar Puraskar for contribution to Indian music."
  ),

  Question(
  questionText: "What is the total global military expenditure in 2022 according to SIPRI?",
  options: [
  "\$2240 billion",
  "\$2140 billion",
  "\$2040 billion",
  "\$2340 billion"
  ],
  correctAnswerIndex: 0,
  explanation: "The total global military expenditure in 2022 reached a record high of \$2240 billion according to SIPRI.",
  ),

  Question(
  questionText: "Which country experienced the most substantial year-on-year increase in military spending in Europe?",
  options: [
  "Germany",
  "France",
  "United Kingdom",
  "Russia"
  ],
  correctAnswerIndex: 2,
  explanation: "Europe witnessed its most substantial year-on-year increase in military spending, with the United Kingdom being a notable contributor.",
  ),

  Question(
  questionText: "What is India's rank in global military expenditure in 2022?",
  options: [
  "2nd",
  "3rd",
  "4th",
  "5th"
  ],
  correctAnswerIndex: 2,
  explanation: "India holds the 4th rank in global military expenditure in 2022, with a spending of \$81.4 billion.",
  ),

  Question(
  questionText: "When was the 1959 Ramon Magsaysay Award presented to the Dalai Lama in person?",
  options: [
  "1959",
  "1985",
  "2000",
  "2023"
  ],
  correctAnswerIndex: 3,
  explanation: "After 64 years, the 1959 Ramon Magsaysay Award was presented to the Dalai Lama in person in 2023.",
  ),

  Question(
  questionText: "Who is the current and 14th Dalai Lama?",
  options: [
  "Tenzin Gyatso",
  "Dalai Lama XIV",
  "Gautama Buddha",
  "Avalokiteshvara"
  ],
  correctAnswerIndex: 0,
  explanation: "The current and 14th Dalai Lama is Tenzin Gyatso, born in Tibet in 1935.",
  ),

  Question(
  questionText: "What is the Ramon Magsaysay Award often referred to as?",
  options: [
  "Asia's Pride",
  "Nobel Prize of Asia",
  "Magsaysay Nobel",
  "Philippines Honor"
  ],
  correctAnswerIndex: 1,
  explanation: "The Ramon Magsaysay Award is often referred to as the 'Nobel Prize of Asia.'",
  ),

  Question(
  questionText: "In which category did Vinoba Bhave receive the Ramon Magsaysay Award in 1958?",
  options: [
  "Peace and International Understanding",
  "Community Leadership",
  "Public Service",
  "Journalism"
  ],
  correctAnswerIndex: 1,
  explanation: "Vinoba Bhave received the Ramon Magsaysay Award in 1958 in the category of Community Leadership.",
  ),

  Question(
  questionText: "What is India's rank in the World Bank's Logistics Performance Index 2023?",
  options: [
  "32nd",
  "38th",
  "42nd",
  "50th"
  ],
  correctAnswerIndex: 1,
  explanation: "India's rank in the World Bank's Logistics Performance Index 2023 is 38th among 139 countries.",
  ),

  Question(
  questionText: "Which film won the 'Best Film' award at the 68th Filmfare Awards 2023?",
  options: [
  "Badhaai Do",
  "Jug Jugg Jeeyo",
  "Gangubai Kathiawadi",
  "Vadh"
  ],
  correctAnswerIndex: 2,
  explanation: "'Gangubai Kathiawadi' won the 'Best Film' award at the 68th Filmfare Awards 2023.",
  ),

  Question(
  questionText: "Which bank launched WhatsApp Banking Services in 2023?",
  options: [
  "ICICI Bank",
  "HDFC Bank",
  "Axis Bank",
  "India Post Payments Bank (IPPB)"
  ],
  correctAnswerIndex: 3,
  explanation: "India Post Payments Bank (IPPB) launched WhatsApp Banking Services in 2023."
  ),
  Question(
  questionText: "What is the percentage increase in global military expenditure in real terms in 2022?",
  options: [
  "2.5%",
  "3.7%",
  "4.9%",
  "5.2%"
  ],
  correctAnswerIndex: 1,
  explanation: "Global military expenditure increased by 3.7% in real terms in 2022, according to SIPRI.",
  ),

  Question(
  questionText: "Which organization is responsible for administering the Ramon Magsaysay Award?",
  options: [
  "United Nations",
  "Asian Development Bank",
  "Ramon Magsaysay Award Foundation",
  "International Red Cross"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ramon Magsaysay Award is administered by the Ramon Magsaysay Award Foundation.",
  ),

  Question(
  questionText: "What is India's rank in the Logistics Performance Index in the previous year before climbing to 38th in 2023?",
  options: [
  "30th",
  "34th",
  "36th",
  "40th"
  ],
  correctAnswerIndex: 0,
  explanation: "India's rank in the previous year was 30th before climbing to 38th in the World Bank's Logistics Performance Index 2023.",
  ),

  Question(
  questionText: "Which Indian city hosted the 68th edition of the Hyundai Filmfare Awards in 2023?",
  options: [
  "Delhi",
  "Mumbai",
  "Chennai",
  "Kolkata"
  ],
  correctAnswerIndex: 1,
  explanation: "The 68th edition of the Hyundai Filmfare Awards took place in Mumbai in 2023.",
  ),

  Question(
  questionText: "What is the primary goal of the PM GatiShakti National Master Plan, launched in October 2021?",
  options: [
  "Healthcare",
  "Education",
  "Logistics Infrastructure",
  "Agriculture"
  ],
  correctAnswerIndex: 2,
  explanation: "The PM GatiShakti National Master Plan primarily aims at reforming logistics infrastructure.",
  ),

  Question(
  questionText: "Who won the 'Best Actor (Male)' award at the 68th Filmfare Awards 2023?",
  options: [
  "Rajkummar Rao",
  "Sanjay Mishra",
  "Anil Kapoor",
  "Salman Khan"
  ],
  correctAnswerIndex: 0,
  explanation: "Rajkummar Rao won the 'Best Actor (Male)' award for 'Badhaai Do' at the 68th Filmfare Awards 2023.",
  ),

  Question(
  questionText: "Which bank has launched the 'digiPortfolio' investment solution in India?",
  options: [
  "State Bank of India",
  "ICICI Bank",
  "DBS Bank India",
  "Axis Bank"
  ],
  correctAnswerIndex: 2,
  explanation: "DBS Bank India has introduced the 'digiPortfolio' investment solution in India.",
  ),

  Question(
  questionText: "What is the purpose of the Logistics Data Bank project by NICDC?",
  options: [
  "Enhancing cybersecurity",
  "Improving healthcare infrastructure",
  "Facilitating cross-border trade",
  "Monitoring environmental conservation"
  ],
  correctAnswerIndex: 2,
  explanation: "The Logistics Data Bank project by NICDC aims at facilitating significant improvements in cross-border trade facilitation.",
  ),

  Question(
  questionText: "Who received the Lifetime Achievement Award at the 68th Filmfare Awards 2023?",
  options: [
  "Amitabh Bachchan",
  "Shah Rukh Khan",
  "Prem Chopra",
  "Dilip Kumar"
  ],
  correctAnswerIndex: 2,
  explanation: "Prem Chopra received the Lifetime Achievement Award at the 68th Filmfare Awards 2023.",
  ),

  Question(
  questionText: "What is the term used for the financial arrangement that enables foreign banks to conduct transactions in Indian rupees with domestic banks?",
  options: [
  "Rupee Doctrine",
  "Vostro System",
  "Forex Parity",
  "Domestic Arbitrage"
  ],
  correctAnswerIndex: 1,
  explanation: "The financial arrangement that enables foreign banks to conduct transactions in Indian rupees with domestic banks is called the 'Vostro' system.",
  ),
  Question(
  questionText: "What is the purpose of the new service 'Digitalised Submission of Form 15G/15H' introduced by Canara Bank in partnership with RBIH?",
  options: [
  "To enhance customer satisfaction.",
  "To increase TDS on interest income.",
  "To reduce PAN information requirements.",
  "To simplify regulatory compliance."
  ],
  correctAnswerIndex: 0,
  explanation: "The service aims to enhance customer satisfaction by providing a digitalized submission process for Form 15G/15H.",
  ),

  Question(
  questionText: "Which neobanking startup obtained a non-banking finance company (NBFC) license from the Reserve Bank of India (RBI)?",
  options: [
  "State Bank of India (SBI)",
  "Canara Bank",
  "Jupiter",
  "HDFC Bank"
  ],
  correctAnswerIndex: 2,
  explanation: "Jupiter, a neobanking startup, secured an NBFC license from the RBI.",
  ),

  Question(
  questionText: "What is the reason behind the penalties imposed by the Reserve Bank of India (RBI) on four cooperative banks?",
  options: [
  "Violating various norms related to regulatory compliance.",
  "Invalidity of transactions or agreements with customers.",
  "Excessive interest rates charged on loans.",
  "Failure to provide PAN information."
  ],
  correctAnswerIndex: 0,
  explanation: "The penalties were based on deficiencies in regulatory compliance by the cooperative banks.",
  ),

  Question(
  questionText: "According to the Centre for Monitoring Indian Economy (CMIE), what is India's unemployment rate in March 2023?",
  options: [
  "7.2%",
  "7.8%",
  "6.3%",
  "5.9%"
  ],
  correctAnswerIndex: 1,
  explanation: "India's unemployment rate rose to a three-month high of 7.8% in March 2023.",
  ),

  Question(
  questionText: "How much did the Goods and Services Tax (GST) revenue collection increase in March 2023?",
  options: [
  "5%",
  "10%",
  "13%",
  "20%"
  ],
  correctAnswerIndex: 2,
  explanation: "The GST revenue collection for March 2023 increased by 13% to Rs 1.60 lakh crore.",
  ),

  Question(
  questionText: "What is the revised GDP growth forecast for India in the financial year 2023-24 by the International Monetary Fund (IMF)?",
  options: [
  "6.4%",
  "6.3%",
  "5.9%",
  "7.2%"
  ],
  correctAnswerIndex: 2,
  explanation: "The IMF revised India's GDP growth forecast for 2023-24 to 5.9%, slightly below the RBI's projection of 6.4%.",
  ),

  Question(
  questionText: "Which Asian Development Bank (ADB) investment is aimed at improving power distribution in Delhi?",
  options: [
  "Investment in Canara Bank",
  "Investment in Jupiter",
  "Investment in Tata Power Delhi Distribution Ltd (TPDDL)",
  "Investment in Rail Vikas Nigam Limited (RVNL)"
  ],
  correctAnswerIndex: 2,
  explanation: "ADB plans to invest in non-convertible debentures valued at Rs 150 crore in Tata Power Delhi Distribution Ltd (TPDDL).",
  ),

  Question(
  questionText: "What significant achievement did the Unified Payments Interface (UPI) accomplish in March 2023?",
  options: [
  "Processed 5 billion transactions",
  "Processed 8.7 billion transactions",
  "Launched a new customer service",
  "Received a license from the RBI"
  ],
  correctAnswerIndex: 1,
  explanation: "In March 2023, UPI processed a historic high of 8.7 billion transactions, worth Rs 14.05 trillion.",
  ),

  Question(
  questionText: "Which Indian company has been ranked as the second-strongest tyre brand in the world by Brand Finance?",
  options: [
  "HDFC Bank",
  "Reliance Industries Limited (RIL)",
  "MRF Ltd.",
  "Tata Steel"
  ],
  correctAnswerIndex: 2,
  explanation: "MRF Ltd. has been ranked as the second-strongest tyre brand in the world by Brand Finance.",
  ),

  Question(
  questionText: "What is the significance of the UK joining the Comprehensive and Progressive Agreement for Trans-Pacific Partnership (CPTPP)?",
  options: [
  "It strengthens the UK's trade ties with Europe.",
  "It marks the UK's exit from international trade agreements.",
  "It expands the UK's trade relations with the Asia-Pacific region.",
  "It results in the UK's withdrawal from global trade organizations."
  ],
  correctAnswerIndex: 2,
  explanation: "The UK joining CPTPP expands its trade relations with the Asia-Pacific region, covering a market of around 500 million people."
  ),
  Question(
  questionText: "What new service did Canara Bank introduce in partnership with the Reserve Bank Innovation Hub (RBIH) to enhance customer satisfaction?",
  options: [
  "Digitalised Submission of Form 15G/15H",
  "Digital Banking Platform",
  "Online Loan Approval",
  "Mobile Wallet Services"
  ],
  correctAnswerIndex: 0,
  explanation: "Canara Bank introduced 'Digitalised Submission of Form 15G/15H' to enhance customer satisfaction.",
  ),

  Question(
  questionText: "Which cooperative banks faced penalties from the Reserve Bank of India (RBI) for violating various norms?",
  options: [
  "Punjab National Bank",
  "Canara Bank",
  "Tamil Nadu State Apex Co-operative Bank",
  "HDFC Bank"
  ],
  correctAnswerIndex: 2,
  explanation: "The cooperative banks penalized by the RBI include Tamil Nadu State Apex Co-operative Bank.",
  ),

  Question(
  questionText: "What is the primary purpose of the new customer-friendly service 'Digitalised Submission of Form 15G/15H' introduced by Canara Bank?",
  options: [
  "To encourage TDS on interest income",
  "To collect PAN information",
  "To avoid the deduction of TDS on interest income",
  "To impose heavy tributes on India's wealth"
  ],
  correctAnswerIndex: 2,
  explanation: "The service aims to help individuals avoid the deduction of TDS on interest income by submitting Form 15G/15H.",
  ),

  Question(
  questionText: "What was the annual retail inflation rate for India in March 2023, according to NSO data?",
  options: [
  "5.66%",
  "6.44%",
  "7.8%",
  "6.3%"
  ],
  correctAnswerIndex: 0,
  explanation: "India's annual retail inflation for March eased to 5.66% from 6.44% in February, according to NSO data.",
  ),

  Question(
  questionText: "What did the Ministry of New and Renewable Energy grant to Solar Energy Corporation of India Ltd (SECI)?",
  options: [
  "Miniratna Category-II status",
  "Miniratna Category-I status",
  "Maharatna status",
  "Navratna status"
  ],
  correctAnswerIndex: 1,
  explanation: "SECI, a CPSE, received Miniratna Category-I status from the Ministry of New and Renewable Energy.",
  ),

  Question(
  questionText: "What agreement did HDFC Bank sign with the Export-Import Bank of Korea?",
  options: [
  "Trade Agreement",
  "Master Inter Bank Credit Agreement",
  "Technology Collaboration Agreement",
  "Research and Development Agreement"
  ],
  correctAnswerIndex: 1,
  explanation: "HDFC Bank signed a Master Inter Bank Credit Agreement worth US \$300 million with the Export-Import Bank of Korea.",
  ),

  Question(
  questionText: "Which country successfully launched the world's first ferry that runs on liquid hydrogen?",
  options: [
  "India",
  "Norway",
  "Japan",
  "China"
  ],
  correctAnswerIndex: 1,
  explanation: "Norway successfully launched the world's first ferry, named MF Hydra, that runs on liquid hydrogen.",
  ),

  Question(
  questionText: "What legislative action did the Georgia Assembly take regarding Hinduphobia?",
  options: [
  "Introduced a new law against Hinduphobia",
  "Condemned Hinduphobia and anti-Hindu bigotry",
  "Ignored the issue of Hinduphobia",
  "Promoted Hinduphobia"
  ],
  correctAnswerIndex: 1,
  explanation: "Georgia Assembly passed a resolution condemning Hinduphobia, making it the first state in America to take such legislative action.",
  ),

  Question(
  questionText: "What is the current status of India's International Aviation Safety Assessment rating?",
  options: [
  "Category Two",
  "Category Three",
  "Category One",
  "Category Four"
  ],
  correctAnswerIndex: 2,
  explanation: "India's International Aviation Safety Assessment rating is Category One, indicating compliance with global standards for aviation safety oversight.",
  ),

  Question(
  questionText: "Which country has successfully launched a new spy satellite named Ofek-13 into orbit?",
  options: [
  "India",
  "Israel",
  "China",
  "Russia"
  ],
  correctAnswerIndex: 1,
  explanation: "Israel successfully launched a new spy satellite, Ofek-13, into orbit on April 5th, 2023.",
  ),
  Question(
  questionText: "What historic milestone did the Chinese company Space Pioneer achieve in space exploration?",
  options: [
  "Launching the Tianlong-2 rocket into orbit",
  "Operating the first liquid-fueled rocket in space",
  "Sending a satellite to Mars",
  "Conducting the first successful human spacewalk"
  ],
  correctAnswerIndex: 0,
  explanation: "Space Pioneer achieved a historic milestone by launching the Tianlong-2 rocket into orbit.",
  ),

  Question(
  questionText: "What significant contribution did India make to peace and stability in Somalia?",
  options: [
  "Handing over \$2 million to the United Nations Trust Fund",
  "Deploying military forces in Somalia",
  "Initiating peace talks between conflicting parties",
  "Building infrastructure in Somalia"
  ],
  correctAnswerIndex: 0,
  explanation: "India reaffirmed its commitment to peace in Somalia by contributing \$2 million to the United Nations Trust Fund.",
  ),

  Question(
  questionText: "What change occurred in Russia regarding currency trading?",
  options: [
  "The Ruble replaced the Yuan as the most traded currency.",
  "Russia stopped currency trading altogether.",
  "The Dollar replaced the Yuan as the most traded currency.",
  "The Yuan replaced the Dollar as the most traded currency."
  ],
  correctAnswerIndex: 3,
  explanation: "China's Yuan replaced the Dollar as the most traded currency in Russia.",
  ),

  Question(
  questionText: "What is the focus of the International Seabed Authority (ISA)?",
  options: [
  "Regulating international waters' exploration and exploitation of mineral resources",
  "Addressing climate change in coastal areas",
  "Promoting marine tourism",
  "Regulating fishing activities in international waters"
  ],
  correctAnswerIndex: 0,
  explanation: "ISA governs and regulates the exploration and exploitation of mineral resources in international waters.",
  ),

  Question(
  questionText: "What project did External Affairs Minister S. Jaishankar launch in Uganda?",
  options: [
  "Tulsi Ghat Restoration Project",
  "International Big Cats Alliance",
  "Ocean Mining Initiative",
  "Anti-Rat Measures"
  ],
  correctAnswerIndex: 0,
  explanation: "S. Jaishankar launched the 'Tulsi Ghat Restoration Project' during his visit to Uganda.",
  ),

  Question(
  questionText: "What did the World Health Organization (WHO) report regarding bird flu in China?",
  options: [
  "A woman died from a rare strain, H3N8, not commonly found in humans.",
  "The virus transmitted easily from person to person.",
  "China successfully eradicated bird flu.",
  "Three people died from the H5N1 strain."
  ],
  correctAnswerIndex: 0,
  explanation: "WHO reported a woman's death from the rare H3N8 bird flu strain in Guangdong, China.",
  ),

  Question(
  questionText: "Which country has made history by approving a highly effective malaria vaccine?",
  options: [
  "Ghana",
  "India",
  "China",
  "Russia"
  ],
  correctAnswerIndex: 0,
  explanation: "Ghana made history by approving the highly effective malaria vaccine, R21/Matrix-M.",
  ),

  Question(
  questionText: "What is Kathleen Corradi's role in addressing New York City's rodent issue?",
  options: [
  "She is the inaugural 'rat czar' tasked with minimizing the rat population.",
  "She is the head of a new rat research initiative.",
  "She is leading a campaign against rat poison use.",
  "She is advocating for rat rights."
  ],
  correctAnswerIndex: 0,
  explanation: "Kathleen Corradi has been appointed as NYC's inaugural 'rat czar' to minimize the rat population.",
  ),

  Question(
  questionText: "What significant achievement has the Turkish Navy made?",
  options: [
  "Received the TCG Anadolu, the first aircraft carrier",
  "Launched a new spy satellite",
  "Developed the world's fastest submarine",
  "Built the largest naval fleet"
  ],
  correctAnswerIndex: 0,
  explanation: "The Turkish Navy received its first aircraft carrier, the TCG Anadolu.",
  ),

  Question(
  questionText: "What is the objective of the joint military exercises between the Philippines and the United States?",
  options: [
  "Counter China's growing assertiveness in the region",
  "Fight terrorism in Southeast Asia",
  "Test advanced military technologies",
  "Promote cultural exchange"
  ],
  correctAnswerIndex: 0,
  explanation: "The joint military exercises aim to counter China's growing assertiveness in the region."
  ),
  Question(
  questionText: "What infrastructure project did External Affairs Minister S. Jaishankar inaugurate in Uganda?",
  options: [
  "Buzi Bridge",
  "International Big Cats Alliance",
  "Secunderabad-Tirupati Vande Bharat Express",
  "Tulsi Ghat Restoration Project"
  ],
  correctAnswerIndex: 0,
  explanation: "S. Jaishankar inaugurated the Buzi Bridge as part of the 132 km Tica-Buzi-Nova-Sofala Road project in Uganda.",
  ),

  Question(
  questionText: "What historic milestone did China achieve in space exploration with the Tianlong-2 rocket?",
  options: [
  "Launching the first liquid-fueled rocket into orbit",
  "Launching a satellite named 'Love Space Science'",
  "Sending the first human to Mars",
  "Building the largest space station"
  ],
  correctAnswerIndex: 1,
  explanation: "China achieved a historic milestone by launching the Tianlong-2 rocket and sending the 'Love Space Science' satellite into orbit.",
  ),

  Question(
  questionText: "How much did India contribute to the United Nations Trust Fund for peace and stability in Somalia?",
  options: [
  "USD 2 million",
  "USD 5 million",
  "USD 1 billion",
  "USD 500,000"
  ],
  correctAnswerIndex: 0,
  explanation: "India reaffirmed its commitment by handing over a contribution of USD 2 million to the United Nations Trust Fund for Somalia.",
  ),

  Question(
  questionText: "What significant change occurred in global trade in 2023 according to the WTO?",
  options: [
  "Expected to grow by 1.7%",
  "Expected to decline by 5%",
  "China became the largest trading nation",
  "Trade sanctions were imposed on Russia"
  ],
  correctAnswerIndex: 0,
  explanation: "The WTO reported that global trade is expected to grow by 1.7% in 2023.",
  ),

  Question(
  questionText: "What did Parisians vote for in a hotly debated referendum?",
  options: [
  "Banning rental electric scooters",
  "Promoting green energy initiatives",
  "Supporting a new metro system",
  "Allowing 24/7 access to public parks"
  ],
  correctAnswerIndex: 0,
  explanation: "Parisians voted to ban rental electric scooters in a hotly debated referendum.",
  ),

  Question(
  questionText: "What significant achievement did Ghana make in the fight against malaria?",
  options: [
  "Approving a highly effective malaria vaccine",
  "Eliminating malaria entirely",
  "Developing a new antimalarial drug",
  "Launching a nationwide mosquito eradication program"
  ],
  correctAnswerIndex: 0,
  explanation: "Ghana made history by becoming the first country to approve a highly effective malaria vaccine, R21/Matrix-M.",
  ),

  Question(
  questionText: "Who has been appointed as NYC's inaugural 'rat czar'?",
  options: [
  "Kathleen Corradi",
  "Eric Adams",
  "Ruchira Kamboj",
  "Mohammed Shahabuddin Chuppu"
  ],
  correctAnswerIndex: 0,
  explanation: "NYC Mayor Eric Adams appointed Kathleen Corradi as the city's inaugural 'rat czar' to tackle the severe rodent issue.",
  ),

  Question(
  questionText: "What did the Turkish Navy receive, marking a significant development?",
  options: [
  "The TCG Anadolu, its first aircraft carrier",
  "A fleet of advanced submarines",
  "An unmanned aerial vehicle",
  "A new class of destroyers"
  ],
  correctAnswerIndex: 0,
  explanation: "The Turkish Navy received its first aircraft carrier, the TCG Anadolu.",
  ),

  Question(
  questionText: "Which country has launched the largest-ever joint military exercises with the United States?",
  options: [
  "The Philippines",
  "Japan",
  "South Korea",
  "Australia"
  ],
  correctAnswerIndex: 0,
  explanation: "The Philippines and the United States launched their largest-ever joint military exercises, called Balikatan, to counter China's growing assertiveness.",
  ),

  Question(
  questionText: "What initiative has been launched by the International Seabed Authority (ISA) in ocean mining?",
  options: [
  "Exploring and regulating mineral resources in international waters",
  "Preserving marine biodiversity",
  "Promoting sustainable fishing practices",
  "Building artificial reefs"
  ],
  correctAnswerIndex: 0,
  explanation: "ISA was established to govern and regulate the exploration and exploitation of mineral resources in international waters beyond the Exclusive Economic Zones (EEZ) of its member countries.",
  ),
  Question(
  questionText: "What is the expected purpose of the 'Vande Metro' announced by Railway Minister Ashwini Vaishnaw?",
  options: [
  "Connect major cities and provide cost-effective transportation.",
  "Operate as a semi-high-speed train in various parts of the country.",
  "Enhance research and academic collaborations between the US and India.",
  "Generate geothermal energy to meet electricity demands."
  ],
  correctAnswerIndex: 0,
  explanation: "The 'Vande Metro' is expected to connect major cities and provide a cost-effective mode of transportation.",
  ),

  Question(
  questionText: "Where was the 16th Indian Visa Application Centre (IVAC) in Bangladesh inaugurated?",
  options: [
  "Dhaka",
  "Chittagong",
  "Rajshahi",
  "Kushtia"
  ],
  correctAnswerIndex: 3,
  explanation: "The 16th IVAC was inaugurated in Kushtia town.",
  ),

  Question(
  questionText: "Who has been selected as one of the co-chairs of the AAU task force to enhance US-India university partnerships?",
  options: [
  "Narendra Modi",
  "Neeli Bendapudi",
  "Ashwini Vaishnaw",
  "Pranya Verma"
  ],
  correctAnswerIndex: 1,
  explanation: "Neeli Bendapudi, an academic of Indian origin, has been selected as one of the co-chairs.",
  ),

  Question(
  questionText: "Which renewable resource is mentioned as a valuable energy source in the provided information?",
  options: [
  "Solar energy",
  "Wind energy",
  "Geothermal energy",
  "Hydroelectric energy"
  ],
  correctAnswerIndex: 2,
  explanation: "Geothermal energy is mentioned as a valuable renewable resource.",
  ),

  Question(
  questionText: "Who will inaugurate India Steel 2023 at the Mumbai Exhibition Centre?",
  options: [
  "Ashwini Vaishnaw",
  "Jyotiraditya Scindia",
  "Dr. Jitendra Singh",
  "Pranya Verma"
  ],
  correctAnswerIndex: 1,
  explanation: "Jyotiraditya Scindia will inaugurate India Steel 2023.",
  ),

  Question(
  questionText: "What is the primary purpose of the YUVA PORTAL launched by Science and Technology Minister Dr. Jitendra Singh?",
  options: [
  "Connect potential young start-ups",
  "Promote quantum technology",
  "Enhance academic collaborations",
  "Implement Animal Birth Control Rules"
  ],
  correctAnswerIndex: 0,
  explanation: "The YUVA PORTAL aims to connect and identify potential young start-ups.",
  ),

  Question(
  questionText: "What is the objective of the National Quantum Mission approved by the Union Cabinet?",
  options: [
  "Promoting economic growth through animal welfare",
  "Advancing India's position in the quantum technology sector",
  "Relocating stray dogs",
  "Expediting progress in geothermal energy"
  ],
  correctAnswerIndex: 1,
  explanation: "The National Quantum Mission aims to advance India's position in the quantum technology sector.",
  ),

  Question(
  questionText: "What recent rules have been issued by the Central Government regarding animal birth control?",
  options: [
  "Animal Welfare Rules, 2023",
  "Animal Protection Laws, 2023",
  "Animal Birth Control Rules, 2023",
  "Stray Animal Management Guidelines, 2023"
  ],
  correctAnswerIndex: 2,
  explanation: "The Central Government issued the Animal Birth Control Rules, 2023.",
  ),

  Question(
  questionText: "What is the significance of the new Rs 100 coin mentioned in the information?",
  options: [
  "To commemorate the launch of Vande Metro",
  "To celebrate the 100th episode of Mann Ki Baat",
  "To mark the inauguration of India Steel 2023",
  "To honor the National Quantum Mission"
  ],
  correctAnswerIndex: 1,
  explanation: "The new Rs 100 coin is minted to commemorate the 100th episode of Mann Ki Baat.",
  ),

  Question(
  questionText: "Which state plans to develop an integrated network of 10,000 kilometers of optic fiber cables by FY 2025?",
  options: [
  "Maharashtra",
  "Kerala",
  "Uttar Pradesh",
  "Himachal Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "The National Highways Authority of India in Uttar Pradesh plans to develop the optic fiber cables infrastructure."
  ),
  Question(
  questionText: "What initiative was launched by the Union Health Ministry and the Ministry of Housing & Urban Affairs to promote hygienic and safe food practices?",
  options: [
  "100 Smart Cities Project",
  "Food Street Revolution",
  "Swachh Bharat Abhiyan",
  "Clean Food India Campaign"
  ],
  correctAnswerIndex: 1,
  explanation: "The initiative aims to establish 100 food streets in 100 districts to promote hygienic and safe food practices.",
  ),

  Question(
  questionText: "What technology center was inaugurated by Union Ports, Shipping and Waterways Minister Sarbananda Sonowal?",
  options: [
  "National Maritime Technology Center",
  "National Technology Centre for Ports, Waterways & Coasts",
  "Marine Engineering Innovation Center",
  "Shipping and Waterways Research Institute"
  ],
  correctAnswerIndex: 1,
  explanation: "Sarbananda Sonowal inaugurated the National Technology Centre for Ports, Waterways & Coasts.",
  ),

  Question(
  questionText: "Where does India propose to construct a G20 park based on the theme 'One Earth, One Family, One Future'?",
  options: [
  "Mumbai",
  "New Delhi",
  "Kolkata",
  "Chennai"
  ],
  correctAnswerIndex: 1,
  explanation: "India has proposed to construct a G20 park in New Delhi based on the theme 'One Earth, One Family, One Future.'",
  ),

  Question(
  questionText: "Who inaugurated the 'Study in India Pavilion' at the Global Education & Training Exhibition (GETEX) in Dubai?",
  options: [
  "Union Minister for Education",
  "Consul General of India in Dubai",
  "Prime Minister of India",
  "Minister of External Affairs"
  ],
  correctAnswerIndex: 1,
  explanation: "The 'Study in India Pavilion' at GETEX 2023 was inaugurated by the Consul General of India in Dubai.",
  ),

  Question(
  questionText: "What policy has been approved by the Union Cabinet related to medical devices?",
  options: [
  "National Health Policy",
  "Medical Equipment Regulation Policy",
  "National Medical Devices Policy",
  "Healthcare Devices Control Guidelines"
  ],
  correctAnswerIndex: 2,
  explanation: "The Union Cabinet approved the National Medical Devices Policy.",
  ),

  Question(
  questionText: "Who inaugurated the 'NAMO Medical Education and Research Institute' in Silvassa?",
  options: [
  "Union Health Minister",
  "Chief Minister of Dadra and Nagar Haveli",
  "Prime Minister of India",
  "Union Minister for Education"
  ],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi inaugurated the 'NAMO Medical Education and Research Institute' in Silvassa.",
  ),

  Question(
  questionText: "Which three areas in Rajasthan have been declared as conservation reserves?",
  options: [
  "Sorsan, Khichan, and Hamirgarh",
  "Bikaner, Jaisalmer, and Jaipur",
  "Mount Abu, Udaipur, and Kota",
  "Alwar, Bharatpur, and Jodhpur"
  ],
  correctAnswerIndex: 0,
  explanation: "The Rajasthan government declared Sorsan, Khichan, and Hamirgarh as conservation reserves.",
  ),

  Question(
  questionText: "What does the Thawe Festival in Bihar aim to promote?",
  options: [
  "Cultural heritage",
  "Tourism in Gopalganj",
  "Religious practices",
  "Rural development"
  ],
  correctAnswerIndex: 1,
  explanation: "The Thawe Festival in Bihar aims to promote tourism in Gopalganj and attract visitors to the Thawe Durga Temple.",
  ),

  Question(
  questionText: "Which northeastern state recently received approval for setting up its first medical college?",
  options: [
  "Assam",
  "Meghalaya",
  "Nagaland",
  "Arunachal Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "Nagaland received approval for setting up its first medical college.",
  ),

  Question(
  questionText: "What historic achievement did Assam make that entered the Guinness Book of World Records?",
  options: [
  "Largest Rangoli",
  "Longest Bridge",
  "Highest Tea Garden",
  "Bihu dance with over 11,000 performers"
  ],
  correctAnswerIndex: 3,
  explanation: "Assam entered the Guinness Book of World Records for the largest Bihu dance with over 11,000 performers.",
  ),
  Question(
  questionText: "What celestial event is Bengaluru set to witness known as 'Zero Shadow Day'?",
  options: [
  "Solar eclipse",
  "Lunar eclipse",
  "Meteor shower",
  "Position of the sun directly overhead"
  ],
  correctAnswerIndex: 3,
  explanation: "Bengaluru is set to witness 'Zero Shadow Day,' a unique celestial event, due to the sun's position directly overhead."
  ),

  Question(
  questionText: "Which ministry launched the Captive Employer initiative under the Deen Dayal Upadhyaya Grameen Kaushalya Yojana?",
  options: [
  "Ministry of Finance",
  "Ministry of Rural Development",
  "Ministry of Housing and Urban Affairs",
  "Ministry of Culture"
  ],
  correctAnswerIndex: 1,
  explanation: "The Captive Employer initiative was launched by the Ministry of Rural Development under the Deen Dayal Upadhyaya Grameen Kaushalya Yojana (DDU-GKY)."
  ),

  Question(
  questionText: "Under the PM SVANidhi scheme, how many loans have been disbursed to street vendors, and what percentage went to minority communities?",
  options: [
  "31,000 loans; 9.3%",
  "42.7 lakh loans; 3.98 lakh loans",
  "5,152.37 crore loans; 10%",
  "20,000 loans; 7%"
  ],
  correctAnswerIndex: 1,
  explanation: "Under the PM SVANidhi scheme, 42.7 lakh loans worth ₹5,152.37 crore have been disbursed, with only 9.3% going to minority street vendors."
  ),

  Question(
  questionText: "Which committee's recommendations did the government implement for the pricing model of domestic natural gas?",
  options: [
  "Kirit Parikh committee",
  "Real Estate (Regulation and Development) Act committee",
  "National Pension System committee",
  "International Big Cat Alliance committee"
  ],
  correctAnswerIndex: 0,
  explanation: "The government implemented changes to the pricing model of domestic natural gas based on the recommendations of the Kirit Parikh committee."
  ),

  Question(
  questionText: "Which ministry has created a committee chaired by Amitabh Kant to tackle incomplete real estate projects?",
  options: [
  "Ministry of Finance",
  "Ministry of Rural Development",
  "Ministry of Housing and Urban Affairs",
  "Ministry of Culture"
  ],
  correctAnswerIndex: 2,
  explanation: "The Union Housing and Urban Affairs Ministry has created a committee chaired by Amitabh Kant to tackle incomplete real estate projects."
  ),

  Question(
  questionText: "Who will head the committee formed by the Indian government to explore ways of enhancing the pension benefits of government employees under the National Pension System (NPS)?",
  options: [
  "Minister of Finance",
  "Chairman of PFRDA",
  "Union Minister for Rural Development",
  "Special Secretary in the Department of Expenditure"
  ],
  correctAnswerIndex: 0,
  explanation: "The committee to enhance pension benefits under the National Pension System will be headed by the finance secretary."
  ),

  Question(
  questionText: "Which ministry informed the Rajya Sabha about the disbursement of loans under the PM SVANidhi scheme?",
  options: [
  "Ministry of Finance",
  "Ministry of Rural Development",
  "Ministry of Housing and Urban Affairs",
  "Ministry of Culture"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Housing and Urban Affairs informed the Rajya Sabha about the disbursement of loans under the PM SVANidhi scheme."
  ),

  Question(
  questionText: "What is the purpose of the 'Heritage Festival 2023' organized by the tourism department of the Goa government?",
  options: [
  "Promoting cultural tourism",
  "Showcasing traditions and culture",
  "Both A and B",
  "Promoting folk arts and culture abroad"
  ],
  correctAnswerIndex: 2,
  explanation: "The Heritage Festival 2023 aims to promote cultural tourism in Goa by showcasing its traditions, culture, and arts."
  ),

  Question(
  questionText: "Which Indian state was recognized as the leading state in implementing the Pradhan Mantri Fasal Bima Yojana?",
  options: [
  "Maharashtra",
  "Karnataka",
  "Punjab",
  "Haryana"
  ],
  correctAnswerIndex: 1,
  explanation: "Karnataka was recognized as the leading state in implementing the Pradhan Mantri Fasal Bima Yojana (PMFBY)."
  ),

  Question(
  questionText: "What is the objective of the 'Sangathan Se Samriddhi' campaign launched by Rural Development Minister Giriraj Singh?",
  options: [
  "Promoting financial inclusion",
  "Empowering marginalized rural households",
  "Enhancing procurement efficiency",
  "Expanding coverage of Self Help Groups (SHGs)"
  ],
  correctAnswerIndex: 1,
  explanation: "The 'Sangathan Se Samriddhi' campaign aims to empower marginalized rural households by ensuring the inclusion of all eligible rural women in Self Help Groups (SHGs)."
  ),
  Question(
  questionText: "Which Indian state has achieved the top rank in the State Energy Efficiency Index (SEEI) for 2021-22?",
  options: [
  "Andhra Pradesh",
  "Karnataka",
  "Kerala",
  "Rajasthan"
  ],
  correctAnswerIndex: 0,
  explanation: "Andhra Pradesh, Karnataka, Kerala, Rajasthan, and Telangana are the top-performing states in the State Energy Efficiency Index (SEEI) for 2021-22."
  ),

  Question(
  questionText: "According to the World of Statistics, which country has been ranked at the top in the list of the world's 'most criminal countries'?",
  options: [
  "Venezuela",
  "Papua New Guinea",
  "Afghanistan",
  "South Africa"
  ],
  correctAnswerIndex: 0,
  explanation: "Venezuela has been ranked at the top in the list of the world's 'most criminal countries' according to the World of Statistics."
  ),

  Question(
  questionText: "Which city has been named the city with the most exceptional public transport system globally, according to Time Out's survey?",
  options: [
  "Prague",
  "Mumbai",
  "Berlin",
  "London"
  ],
  correctAnswerIndex: 2,
  explanation: "Berlin in Germany has been named the city with the most exceptional public transport system globally, according to Time Out's survey."
  ),

  Question(
  questionText: "According to the Freedom in the World Index for 2023, which country is identified as the 'least-free country'?",
  options: [
  "Syria",
  "South Sudan",
  "Tibet",
  "North Korea"
  ],
  correctAnswerIndex: 2,
  explanation: "Tibet is identified as the 'least-free country' in the Freedom in the World Index for 2023."
  ),

  Question(
  questionText: "Who won the 2023 TIME100 Reader Poll and secured the lead position in Time Magazine's annual list of the most influential people?",
  options: [
  "Prince Harry",
  "Meghan Markle",
  "Lionel Messi",
  "Shah Rukh Khan"
  ],
  correctAnswerIndex: 3,
  explanation: "Shah Rukh Khan won the 2023 TIME100 Reader Poll and secured the lead position in Time Magazine's annual list of the most influential people."
  ),

  Question(
  questionText: "Which committee's recommendations did the Indian government implement for the pricing model of domestic natural gas?",
  options: [
  "Kirit Parikh committee",
  "Real Estate (Regulation and Development) Act committee",
  "National Pension System committee",
  "International Big Cat Alliance committee"
  ],
  correctAnswerIndex: 0,
  explanation: "The government implemented changes to the pricing model of domestic natural gas based on the recommendations of the Kirit Parikh committee."
  ),

  Question(
  questionText: "Which state has achieved the top rank among the 18 large and mid-sized states with populations over one crore in the India Justice Report (IJR) 2022?",
  options: [
  "Tamil Nadu",
  "Telangana",
  "Karnataka",
  "Gujarat"
  ],
  correctAnswerIndex: 2,
  explanation: "According to the India Justice Report (IJR) 2022, Karnataka has achieved the top rank among the 18 large and mid-sized states."
  ),

  Question(
  questionText: "In the World of Statistics criminal ranking, where does India stand?",
  options: [
  "55th",
  "65th",
  "77th",
  "92nd"
  ],
  correctAnswerIndex: 2,
  explanation: "India stands at the 77th spot in the World of Statistics criminal ranking."
  ),

  Question(
  questionText: "What is the primary objective of the International Big Cat Alliance launched by Prime Minister Narendra Modi?",
  options: [
  "Protection and conservation of tigers",
  "Promotion of international trade",
  "Global environmental sustainability",
  "Enhancement of wildlife tourism"
  ],
  correctAnswerIndex: 0,
  explanation: "The International Big Cat Alliance aims to protect and conserve major big cats worldwide, including tigers and lions."
  ),

  Question(
  questionText: "Which city has been named the city with the most exceptional public transport system globally, according to Time Out's survey?",
  options: [
  "Prague",
  "Mumbai",
  "Berlin",
  "London"
  ],
  correctAnswerIndex: 2,
  explanation: "Berlin in Germany has been named the city with the most exceptional public transport system globally, according to Time Out's survey."
  ),
  Question(
  questionText: "What is the purpose of the Nifty REITs & InvITs Index introduced by NSE Indices Limited?",
  options: [
  "To monitor the performance of publicly listed and traded REITs and InvITs in India.",
  "To track the stock market indices in India.",
  "To assess the financial health of state chief ministers in India.",
  "To rank Indian cities based on digital payment transactions."
  ],
  correctAnswerIndex: 0,
  explanation: "The Nifty REITs & InvITs Index is designed to monitor the performance of publicly listed and traded REITs and InvITs in India.",
  ),

  Question(
  questionText: "Who is the richest state chief minister in India according to the ADR report?",
  options: [
  "Mamata Banerjee",
  "Jagan Mohan Reddy",
  "Joe Biden",
  "King Charles"
  ],
  correctAnswerIndex: 1,
  explanation: "Jagan Mohan Reddy from Andhra Pradesh is the richest state chief minister in India with assets worth ₹510 crore, according to the ADR report.",
  ),

  Question(
  questionText: "Who are the two Indians included in Time Magazine's 100 Most Influential People of 2023?",
  options: [
  "Narendra Modi and Amitabh Bachchan",
  "Shah Rukh Khan and SS Rajamouli",
  "Mamata Banerjee and Jagan Mohan Reddy",
  "Sachin Tendulkar and AR Rahman"
  ],
  correctAnswerIndex: 1,
  explanation: "Shah Rukh Khan and 'RRR' director SS Rajamouli are the two Indians included in Time Magazine's 100 Most Influential People of 2023.",
  ),

  Question(
  questionText: "Which country has become the world's most populous nation according to the latest United Nations data?",
  options: [
  "China",
  "India",
  "USA",
  "Brazil"
  ],
  correctAnswerIndex: 1,
  explanation: "India has surpassed China to become the world's most populous nation with 142.86 crore people, according to the latest United Nations data.",
  ),

  Question(
  questionText: "Which city ranks among the top 5 in digital payment transactions in 2022, according to Worldline India?",
  options: [
  "Mumbai",
  "Delhi",
  "Chennai",
  "Bangalore"
  ],
  correctAnswerIndex: 2,
  explanation: "Chennai has become one of the leading cities for digital payment transactions in 2022, making 14.3 million transactions with a total value of USD 35.5 billion.",
  ),

  Question(
  questionText: "Which state topped the country in persondays generation under MGNREGA in 2022-23?",
  options: [
  "Tamil Nadu",
  "Rajasthan",
  "Uttar Pradesh",
  "Bihar"
  ],
  correctAnswerIndex: 1,
  explanation: "For the fourth year in a row, Rajasthan topped the country in terms of persondays generation under Mahatma Gandhi National Rural Employment Guarantee Scheme in 2022-23.",
  ),

  Question(
  questionText: "How many startup unicorns does India have, according to The Hurun Research Institute's Global Unicorn Index 2023?",
  options: [
  "45",
  "56",
  "68",
  "72"
  ],
  correctAnswerIndex: 2,
  explanation: "India has 68 startup unicorns, making it the third-largest hub for startup unicorns, according to The Hurun Research Institute's Global Unicorn Index 2023.",
  ),

  Question(
  questionText: "What is India's rank on the World Bank's Logistics Performance Index in 2023?",
  options: [
  "44",
  "38",
  "54",
  "60"
  ],
  correctAnswerIndex: 1,
  explanation: "India has made a significant leap on the World Bank's Logistics Performance Index, moving up six places to 38th out of 139 countries in the 2023 ranking.",
  ),

  Question(
  questionText: "Which state in India has the highest number of water bodies, according to the first-ever Census of Water Bodies?",
  options: [
  "Maharashtra",
  "West Bengal",
  "Uttar Pradesh",
  "Sikkim"
  ],
  correctAnswerIndex: 1,
  explanation: "West Bengal has the highest number of water bodies in India, according to the first-ever Census of Water Bodies.",
  ),

  Question(
  questionText: "Which company surpassed Infosys to become India's sixth most valuable company on the stock exchanges?",
  options: [
  "HDFC Ltd",
  "ITC",
  "Delhivery",
  "BYJU'S"
  ],
  correctAnswerIndex: 1,
  explanation: "ITC surpassed Infosys to become India's sixth most valuable company on the stock exchanges with a market capitalization of Rs 5.11 lakh crore.",
  ),

  Question(
  questionText: "Who won the men's singles title in the Miami Opens 2023 tennis tournament?",
  options: [
  "Rafael Nadal",
  "Roger Federer",
  "Novak Djokovic",
  "Daniil Medvedev"
  ],
  correctAnswerIndex: 3,
  explanation: "Russian tennis star Daniil Medvedev claimed his fourth title of the year by defeating Jannik Sinner in a closely-contested final match in Miami Opens 2023.",
  ),

  Question(
  questionText: "Who won the Australian Grand Prix 2023 in Formula 1?",
  options: [
  "Lewis Hamilton",
  "Max Verstappen",
  "Fernando Alonso",
  "Sebastian Vettel"
  ],
  correctAnswerIndex: 1,
  explanation: "Red Bull's Max Verstappen claimed his first Australian Grand Prix 2023 by finishing first, with Lewis Hamilton in second and Fernando Alonso in third.",
  ),

  Question(
  questionText: "Which Indian city hosted the 4th Asian Kho Kho Championships in 2023?",
  options: [
  "Delhi",
  "Mumbai",
  "Chennai",
  "Bangalore"
  ],
  correctAnswerIndex: 0,
  explanation: "India emerged as the winners in both men's and women's categories at the 4th Asian Kho Kho Championships held in Delhi.",
  ),

  Question(
  questionText: "Why was weightlifter Sanjita Chanu banned for four years by NADA?",
  options: [
  "Use of performance-enhancing drugs",
  "Violating match-fixing rules",
  "Doping violation",
  "Injury during a competition"
  ],
  correctAnswerIndex: 2,
  explanation: "Weightlifter Sanjita Chanu was banned for four years by NADA for a doping violation, testing positive for drostanolone, a prohibited substance.",
  ),

  Question(
  questionText: "Who, along with Yuvraj Singh, was awarded honorary life membership of the Marylebone Cricket Club (MCC)?",
  options: [
  "MS Dhoni",
  "Virat Kohli",
  "Rohit Sharma",
  "Ravichandran Ashwin"
  ],
  correctAnswerIndex: 0,
  explanation: "MS Dhoni, the former captain of the Indian cricket team, and Yuvraj Singh were among the five Indians awarded honorary life membership of the Marylebone Cricket Club (MCC).",
  ),

  Question(
  questionText: "Why did FIFA withdraw Peru's hosting rights to the FIFA U-17 World Cup 2023?",
  options: [
  "Security concerns",
  "Lack of infrastructure",
  "Financial issues",
  "Refusal to host Israel's team"
  ],
  correctAnswerIndex: 3,
  explanation: "FIFA withdrew Peru's hosting rights to the FIFA U-17 World Cup 2023 due to concerns over the country's ability to meet the requirements for hosting the tournament, particularly the refusal to host Israel's team.",
  ),

  Question(
  questionText: "Who was re-elected as the UEFA president unopposed at the Ordinary Congress in Lisbon?",
  options: [
  "Michel Platini",
  "Aleksander Ceferin",
  "Gianni Infantino",
  "Sepp Blatter"
  ],
  correctAnswerIndex: 1,
  explanation: "Aleksander Ceferin was re-elected as the UEFA president unopposed at the Ordinary Congress of European Soccer's governing body held in Lisbon.",
  ),

  Question(
  questionText: "Which Brazilian artist won the Winter Youth Olympic Games Gangwon 2024 medal design competition?",
  options: [
  "Romero Britto",
  "Dante Akira Uwai",
  "Beatriz Milhazes",
  "Vik Muniz"
  ],
  correctAnswerIndex: 1,
  explanation: "Brazilian artist Dante Akira Uwai won the Winter Youth Olympic Games Gangwon 2024 medal design competition with his creation 'A Sparkling Future.'",
  ),

  Question(
  questionText: "What is the current FIFA ranking of the Indian men's football team?",
  options: [
  "78",
  "92",
  "101",
  "117"
  ],
  correctAnswerIndex: 2,
  explanation: "The Indian men's football team has climbed up five spots and is now ranked at 101 in the latest FIFA rankings.",
  ),

  Question(
  questionText: "Who became the fastest batsman to reach 6000 runs in the Indian Premier League (IPL)?",
  options: [
  "Virat Kohli",
  "Rohit Sharma",
  "David Warner",
  "Shikhar Dhawan"
  ],
  correctAnswerIndex: 2,
  explanation: "During a match against Rajasthan Royals at the Barsapara Stadium in Guwahati, Delhi Capitals' captain David Warner became the fastest batsman to reach 6000 runs in the IPL.",
  ),

  Question(
  questionText: "Who won the men's singles title at the World Chess Armageddon Asia & Oceania event?",
  options: [
  "Magnus Carlsen",
  "Viswanathan Anand",
  "D Gukesh",
  "Hikaru Nakamura"
  ],
  correctAnswerIndex: 2,
  explanation: "Indian Grandmaster D Gukesh won the men's singles title at the World Chess Armageddon Asia & Oceania event.",
  ),
  Question(
  questionText: "Who was awarded the 2023 International Prize in Statistics, often considered the Nobel Prize in statistics?",
  options: [
  "Calyampudi Radhakrishna Rao",
  "Bharat Biotech",
  "Nilesh Bhagwan Sambre",
  "Kumar Mangalam Birla"
  ],
  correctAnswerIndex: 0,
  explanation: "Calyampudi Radhakrishna Rao was awarded the 2023 International Prize in Statistics.",
  ),

  Question(
  questionText: "Which Indian company won the Best Production/Process Development award at the World Vaccine Congress 2023?",
  options: [
  "Calyampudi Radhakrishna Rao",
  "Bharat Biotech",
  "Nilesh Bhagwan Sambre",
  "Kumar Mangalam Birla"
  ],
  correctAnswerIndex: 1,
  explanation: "Bharat Biotech won the Best Production/Process Development award at the World Vaccine Congress 2023.",
  ),

  Question(
  questionText: "Who presented INS Vikrant with its original bell from 1961?",
  options: [
  "Vice Admiral SN Ghormade",
  "Calyampudi Radhakrishna Rao",
  "Nilesh Bhagwan Sambre",
  "Kumar Mangalam Birla"
  ],
  correctAnswerIndex: 0,
  explanation: "Vice Admiral SN Ghormade presented INS Vikrant with its original bell from 1961.",
  ),

  Question(
  questionText: "Who received the 'Maratha Udyog Ratna' award at the 'Maratha Entrepreneurs Conference 2023'?",
  options: [
  "Calyampudi Radhakrishna Rao",
  "Bharat Biotech",
  "Nilesh Bhagwan Sambre",
  "Kumar Mangalam Birla"
  ],
  correctAnswerIndex: 2,
  explanation: "Nilesh Bhagwan Sambre received the 'Maratha Udyog Ratna' award at the 'Maratha Entrepreneurs Conference 2023'.",
  ),

  Question(
  questionText: "Who was presented with the 'Business Leader of the Decade Award' at the 13th Managing India Awards ceremony?",
  options: [
  "Calyampudi Radhakrishna Rao",
  "Bharat Biotech",
  "Nilesh Bhagwan Sambre",
  "Kumar Mangalam Birla"
  ],
  correctAnswerIndex: 3,
  explanation: "Kumar Mangalam Birla was presented with the 'Business Leader of the Decade Award' at the 13th Managing India Awards ceremony.",
  ),

  Question(
  questionText: "Which organization celebrated the National Panchayat Awards Week from 17th to 21st April, 2023?",
  options: [
  "Indian Navy",
  "Bharat Biotech",
  "Ministry of Panchayati Raj",
  "All India Management Association"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Panchayati Raj celebrated National Panchayat Awards Week from 17th to 21st April, 2023.",
  ),

  Question(
  questionText: "Who was honored with the Pravasi Bharatiya Samman award by India?",
  options: [
  "Raj Subramaniam",
  "Utsa Patnaik",
  "Angela Merkel",
  "Sonam Wangchuk"
  ],
  correctAnswerIndex: 0,
  explanation: "Raj Subramaniam was honored with the Pravasi Bharatiya Samman award by India.",
  ),

  Question(
  questionText: "Who received the Malcolm Adiseshiah Award 2023 in the field of social sciences?",
  options: [
  "Raj Subramaniam",
  "Utsa Patnaik",
  "Angela Merkel",
  "Sonam Wangchuk"
  ],
  correctAnswerIndex: 1,
  explanation: "Utsa Patnaik received the Malcolm Adiseshiah Award 2023 in the field of social sciences.",
  ),

  Question(
  questionText: "Who was recognized with Germany's highest Order of Merit?",
  options: [
  "Raj Subramaniam",
  "Utsa Patnaik",
  "Angela Merkel",
  "Sonam Wangchuk"
  ],
  correctAnswerIndex: 2,
  explanation: "Former Chancellor Angela Merkel received Germany's highest Order of Merit.",
  ),

  Question(
  questionText: "Who will be honored with the 'Latin Women of the Year' award at the inaugural Latin Women in Music gala?",
  options: [
  "Shakira",
  "Utsa Patnaik",
  "Angela Merkel",
  "Sonam Wangchuk"
  ],
  correctAnswerIndex: 0,
  explanation: "Shakira will be honored with the 'Latin Women of the Year' award at the inaugural Latin Women in Music gala.",
  ),

  Question(
  questionText: "Which Indian company received the Global Gold Award for Corporate Social Responsibility (CSR) work?",
  options: [
  "Power Grid Corporation of India Ltd. (PGCIL)",
  "Utsa Patnaik",
  "Angela Merkel",
  "Sonam Wangchuk"
  ],
  correctAnswerIndex: 0,
  explanation: "Power Grid Corporation of India Ltd. (PGCIL) received the Global Gold Award for Corporate Social Responsibility (CSR) work.",
  ),
  Question(
  questionText: "Which Indian state's Inland Navigation Corporation launched a solar-powered tourist boat called Sooryamshu?",
  options: [
  "Kerala",
  "Goa",
  "Maharashtra",
  "Tamil Nadu"
  ],
  correctAnswerIndex: 0,
  explanation: "Kerala State Inland Navigation Corporation (KSINC) launched the solar-powered tourist boat called Sooryamshu.",
  ),

  Question(
  questionText: "What significant milestone did ISRO achieve with the Reusable Launch Vehicle Autonomous Landing Mission (RLV LEX)?",
  options: [
  "First human mission to the Moon",
  "Autonomous landing of a space vehicle",
  "Launch of a cryogenic engine",
  "Development of a 3D-printed engine"
  ],
  correctAnswerIndex: 1,
  explanation: "ISRO achieved the autonomous landing of a space vehicle with the Reusable Launch Vehicle Autonomous Landing Mission (RLV LEX).",
  ),

  Question(
  questionText: "What notable discovery did scientists make in astronomy regarding black holes?",
  options: [
  "Discovery of the largest black hole",
  "Identification of the nearest black hole to Earth",
  "Detection of a binary black hole system",
  "Observation of a black hole merging event"
  ],
  correctAnswerIndex: 1,
  explanation: "Scientists identified the nearest black hole to Earth, marking a significant discovery in astronomy.",
  ),

  Question(
  questionText: "Who are the astronauts selected for the Artemis II Moon Mission by NASA?",
  options: [
  "Elon Musk and team",
  "Victor Glover and team",
  "Christina Koch and team",
  "Reid Wiseman and team"
  ],
  correctAnswerIndex: 2,
  explanation: "Christina Koch, along with Reid Wiseman, Victor Glover, and Jeremy Hansen, is part of the Artemis II Moon Mission selected by NASA.",
  ),

  Question(
  questionText: "What achievement did the Indian startup Skyroot Aerospace accomplish?",
  options: [
  "Launch of a solar-powered boat",
  "Test-firing of a 3D-printed engine",
  "Mission to the Moon",
  "Successful cryogenic engine launch"
  ],
  correctAnswerIndex: 1,
  explanation: "Skyroot Aerospace successfully test-fired an advanced, fully 3D-printed cryogenic engine.",
  ),

  Question(
  questionText: "What did the Union Government of India recently approve to enhance the role of the Department of Space?",
  options: [
  "Solar energy policy",
  "Telecommunication policy",
  "Space technology policy",
  "Aviation policy"
  ],
  correctAnswerIndex: 2,
  explanation: "The Union Government of India recently approved the Indian Space Policy 2023 to enhance the role of the Department of Space.",
  ),

  Question(
  questionText: "What is the name of the safety campaign initiated by WhatsApp to educate users about online safety?",
  options: [
  "Stay Secure with WhatsApp",
  "WhatsApp Safety Shield",
  "WhatsApp Security Campaign",
  "Stay Safe with WhatsApp"
  ],
  correctAnswerIndex: 3,
  explanation: "WhatsApp initiated the 'Stay Safe with WhatsApp' safety campaign to educate users about online safety.",
  ),

  Question(
  questionText: "Which space mission did the European Space Agency (ESA) launch to explore Jupiter and its moons?",
  options: [
  "Galileo",
  "Juno",
  "Voyager",
  "Jupiter Icy Moons Explorer (Juice)"
  ],
  correctAnswerIndex: 3,
  explanation: "The European Space Agency (ESA) launched the Jupiter Icy Moons Explorer (Juice) mission to explore Jupiter and its moons.",
  ),

  Question(
  questionText: "What is the name of the test flight conducted by SpaceX for its Starship rocket?",
  options: [
  "Starlink",
  "Starburst",
  "Starship Test",
  "Unicorn"
  ],
  correctAnswerIndex: 2,
  explanation: "SpaceX is preparing for an unprecedented test flight of its Starship rocket.",
  ),

  Question(
  questionText: "What advanced instrument did NASA successfully launch to monitor major air pollutants?",
  options: [
  "TEMPO",
  "AIRWATCH",
  "POLLUTECH",
  "SMOGSCOUT"
  ],
  correctAnswerIndex: 0,
  explanation: "NASA successfully launched the Tropospheric Emissions: Monitoring of Pollution (TEMPO) instrument to monitor major air pollutants.",
  ),
  Question(
  questionText: "Who is the Chief of Naval Staff of the Indian Navy?",
  options: [
  "Admiral R Hari Kumar",
  "Admiral Karambir Singh",
  "Admiral Sunil Lanba",
  "Admiral Dhowan"
  ],
  correctAnswerIndex: 0,
  explanation: "Admiral R Hari Kumar is the current Chief of Naval Staff of the Indian Navy.",
  ),

  Question(
  questionText: "When was the Indian Navy founded?",
  options: [
  "15th August 1947",
  "26th January 1950",
  "2nd October 1969",
  "1st April 1975"
  ],
  correctAnswerIndex: 1,
  explanation: "The Indian Navy was founded on 26th January 1950.",
  ),

  Question(
  questionText: "Who is the Chairman of ISRO (Indian Space Research Organisation)?",
  options: [
  "Dr. Vikram Sarabhai",
  "S. Somanath",
  "K Sivan",
  "A. S. Kiran Kumar"
  ],
  correctAnswerIndex: 1,
  explanation: "S. Somanath is the current Chairman of ISRO.",
  ),

  Question(
  questionText: "When was ISRO founded?",
  options: [
  "15th August 1947",
  "26th January 1950",
  "15th August 1969",
  "2nd October 1972"
  ],
  correctAnswerIndex: 2,
  explanation: "ISRO was founded on 15th August 1969.",
  ),

  Question(
  questionText: "Where is the headquarters of ISRO?",
  options: [
  "New Delhi",
  "Bengaluru",
  "Mumbai",
  "Chennai"
  ],
  correctAnswerIndex: 1,
  explanation: "The headquarters of ISRO is in Bengaluru.",
  ),

  Question(
  questionText: "Where is the headquarters of the United Nations Mine Action Service?",
  options: [
  "Geneva, Switzerland",
  "New York, USA",
  "Paris, France",
  "London, UK"
  ],
  correctAnswerIndex: 1,
  explanation: "The headquarters of the United Nations Mine Action Service is in New York, USA.",
  ),

  Question(
  questionText: "When was the United Nations Mine Action Service founded?",
  options: [
  "October 1997",
  "March 2000",
  "July 1985",
  "December 2005"
  ],
  correctAnswerIndex: 0,
  explanation: "The United Nations Mine Action Service was founded in October 1997.",
  ),

  Question(
  questionText: "Who is the Administrator of NASA (National Aeronautics and Space Administration)?",
  options: [
  "Elon Musk",
  "Jeff Bezos",
  "Bill Nelson",
  "Sundar Pichai"
  ],
  correctAnswerIndex: 2,
  explanation: "Bill Nelson is the current Administrator of NASA.",
  ),

  Question(
  questionText: "When was NASA founded?",
  options: [
  "29th July 1958",
  "4th April 1965",
  "12th June 1971",
  "18th September 1980"
  ],
  correctAnswerIndex: 0,
  explanation: "NASA was founded on 29th July 1958.",
  ),

  Question(
  questionText: "Who is the CEO of Bank of Maharashtra?",
  options: [
  "A. S. Rajeev",
  "Aditya Puri",
  "Chanda Kochhar",
  "Uday Kotak"
  ],
  correctAnswerIndex: 0,
  explanation: "A. S. Rajeev is the current CEO of Bank of Maharashtra.",
  ),
  Question(
  questionText: "Where is the headquarters of Bank of Maharashtra?",
  options: [
  "Mumbai",
  "Pune",
  "Delhi",
  "Kolkata"
  ],
  correctAnswerIndex: 1,
  explanation: "The headquarters of Bank of Maharashtra is in Pune.",
  ),

  Question(
  questionText: "When was Bank of Maharashtra founded?",
  options: [
  "15th August 1947",
  "26th January 1950",
  "16th September 1935",
  "2nd October 1969"
  ],
  correctAnswerIndex: 2,
  explanation: "Bank of Maharashtra was founded on 16th September 1935.",
  ),

  Question(
  questionText: "When was Fino Payments Bank founded?",
  options: [
  "4th April 2015",
  "15th August 2017",
  "1st January 2012",
  "4th April 2017"
  ],
  correctAnswerIndex: 3,
  explanation: "Fino Payments Bank was founded on 4th April 2017.",
  ),

  Question(
  questionText: "Where is the headquarters of Fino Payments Bank?",
  options: [
  "Mumbai",
  "Bengaluru",
  "Chennai",
  "Hyderabad"
  ],
  correctAnswerIndex: 0,
  explanation: "The headquarters of Fino Payments Bank is in Mumbai.",
  ),

  Question(
  questionText: "Who is the Founder of Fino Payments Bank?",
  options: [
  "Aditya Puri",
  "Ratan Tata",
  "Nandan Nilekani",
  "Ashish Ahuja"
  ],
  correctAnswerIndex: 3,
  explanation: "Fino Payments Bank was founded by Ashish Ahuja.",
  ),

  Question(
  questionText: "Where was the Nagarjunasagar-Srisailam Tiger Reserve signed an agreement for FASTag-based payment system?",
  options: [
  "Uttar Pradesh",
  "Andhra Pradesh",
  "Rajasthan",
  "Kerala"
  ],
  correctAnswerIndex: 1,
  explanation: "The Nagarjunasagar-Srisailam Tiger Reserve signed an agreement for FASTag-based payment system in Andhra Pradesh.",
  ),

  Question(
  questionText: "Which states in India are currently experiencing heatwave conditions, according to the India Meteorological Department?",
  options: [
  "Maharashtra, Bihar, Odisha, Andhra Pradesh, Delhi-NCR",
  "Uttar Pradesh, Gujarat, Rajasthan, Madhya Pradesh",
  "Tamil Nadu, Karnataka, Kerala, Telangana",
  "West Bengal, Assam, Meghalaya, Arunachal Pradesh"
  ],
  correctAnswerIndex: 0,
  explanation: "According to the India Meteorological Department, states experiencing heatwave conditions include Maharashtra, Bihar, Odisha, Andhra Pradesh, and Delhi-NCR.",
  ),

  Question(
  questionText: "Who is known as the 'Fit India Champion' and recently became the first Indian man to reach the summit of Mt. Annapurna 1?",
  options: [
  "Virat Kohli",
  "Sachin Tendulkar",
  "Arjun Vajpai",
  "Pullela Gopichand"
  ],
  correctAnswerIndex: 2,
  explanation: "Arjun Vajpai, known as the 'Fit India Champion,' recently became the first Indian man to reach the summit of Mt. Annapurna 1.",
  ),

  Question(
  questionText: "What is celebrated on April 11th every year in India?",
  options: [
  "Independence Day",
  "Republic Day",
  "Jyotirao Phule Jayanti",
  "Gandhi Jayanti"
  ],
  correctAnswerIndex: 2,
  explanation: "April 11th is celebrated as Jyotirao Phule Jayanti in India to commemorate the birth anniversary of Jyotirao Phule.",
  ),

  Question(
  questionText: "Which rice variety from West Champaran district of Bihar recently received the GI tag?",
  options: [
  "Basmati Rice",
  "Sona Masuri Rice",
  "Mircha Rice",
  "Nagri Dubraj Rice"
  ],
  correctAnswerIndex: 3,
  explanation: "The Mircha rice variety from West Champaran district of Bihar recently received the GI tag.",
  ),

  Question(
  questionText: "Where is the headquarters of Fino Payments Bank located?",
  options: [
  "Mumbai",
  "Navi Mumbai",
  "New Delhi",
  "Chennai"
  ],
  correctAnswerIndex: 1,
  explanation: "Fino Payments Bank has its headquarters in Juinagar, Navi Mumbai."
  ),
  Question(
  questionText: "Who is the MD & CEO of Fino Payments Bank?",
  options: [
  "Rishi Gupta",
  "Subodh Kumar Jaiswal",
  "Tedros Adhanom Ghebreyesus",
  "Krishna Ella"
  ],
  correctAnswerIndex: 0,
  explanation: "Rishi Gupta is the MD & CEO of Fino Payments Bank."
  ),
  Question(
  questionText: "When was the Central Bureau of Investigation founded?",
  options: [
  "1 April 1956",
  "7 April 1948",
  "1 April 1963",
  "18 February 1924"
  ],
  correctAnswerIndex: 2,
  explanation: "The Central Bureau of Investigation was founded on 1 April 1963."
  ),
  Question(
  questionText: "Where is the headquarters of WHO?",
  options: [
  "Geneva, Switzerland",
  "New York, USA",
  "London, UK",
  "Paris, France"
  ],
  correctAnswerIndex: 0,
  explanation: "The headquarters of WHO is located in Geneva, Switzerland."
  ),
  Question(
  questionText: "Who are the founders of Bharat Biotech?",
  options: [
  "Rishi Gupta",
  "Krishna Ella, Suchitra Ella",
  "Mahabaleshwara M. S",
  "Subodh Kumar Jaiswal"
  ],
  correctAnswerIndex: 1,
  explanation: "Bharat Biotech was founded by Krishna Ella and Suchitra Ella."
  ),
  Question(
  questionText: "Who is the Chief Executive Officer of Unique Identification Authority of India?",
  options: [
  "Tedros Adhanom Ghebreyesus",
  "Dr. Saurabh Garg",
  "Mangalam Ramasubramanian Kumar",
  "R Hari Kumar"
  ],
  correctAnswerIndex: 1,
  explanation: "Dr. Saurabh Garg is the Chief Executive Officer of Unique Identification Authority of India."
  ),
  Question(
  questionText: "When was the Unique Identification Authority of India founded?",
  options: [
  "28 January 2009",
  "1 September 1956",
  "16 November 1945",
  "1 March 1988"
  ],
  correctAnswerIndex: 0,
  explanation: "UIDAI was founded on 28 January 2009."
  ),
  Question(
  questionText: "What is the capital of Greece?",
  options: [
  "Rome",
  "Athens",
  "Paris",
  "Berlin"
  ],
  correctAnswerIndex: 1,
  explanation: "The capital of Greece is Athens."
  ),
  Question(
  questionText: "When was Life Insurance Corporation founded?",
  options: [
  "1 September 1963",
  "1 September 1956",
  "18 February 1924",
  "7 April 1948"
  ],
  correctAnswerIndex: 1,
  explanation: "Life Insurance Corporation was founded on 1 September 1956."
  ),
  Question(
  questionText: "Who is the Chief of Naval Staff of the Indian Navy?",
  options: [
  "R Hari Kumar",
  "Tedros Adhanom Ghebreyesus",
  "Dr. N. Kamakodi",
  "Kyriakos Mitsotakis"
  ],
  correctAnswerIndex: 0,
  explanation: "Admiral R Hari Kumar is the Chief of Naval Staff of the Indian Navy."
  ),

  Question(
  questionText: "What is the capital of Mozambique?",
  options: [
  "Nairobi",
  "Maputo",
  "Luanda",
  "Windhoek"
  ],
  correctAnswerIndex: 1,
  explanation: "The capital of Mozambique is Maputo."
  ),
  Question(
  questionText: "Who is the founder of MRF Ltd?",
  options: [
  "K. M. Mammen Mappillai",
  "Dr. N. Kamakodi",
  "Debjani Ghosh",
  "Rafael Laguens"
  ],
  correctAnswerIndex: 0,
  explanation: "K. M. Mammen Mappillai is the founder of MRF Ltd."
  ),
  Question(
  questionText: "Where is the headquarters of International Council on Monuments and Sites?",
  options: [
  "Paris, France",
  "New York, USA",
  "Geneva, Switzerland",
  "Brussels, Belgium"
  ],
  correctAnswerIndex: 0,
  explanation: "ICOMOS has its headquarters in Paris, France."
  ),
  Question(
  questionText: "When was Karnataka Bank founded?",
  options: [
  "18 February 1948",
  "7 April 1963",
  "1 March 1988",
  "18 February 1924"
  ],
  correctAnswerIndex: 3,
  explanation: "Karnataka Bank was founded on 18 February 1924."
  ),
  Question(
  questionText: "Who is the Governor of Arunachal Pradesh?",
  options: [
  "R. Hari Kumar",
  "Dr. B. D. Mishra",
  "Sheikh Hasina",
  "Luvsannamsrain Oyun-Erdene"
  ],
  correctAnswerIndex: 1,
  explanation: "Dr. B. D. Mishra is the Governor of Arunachal Pradesh."
  ),
  Question(
  questionText: "What is the currency of Bangladesh?",
  options: [
  "Indian Rupee",
  "Bangladeshi Taka",
  "Sri Lankan Rupee",
  "Nepalese Rupee"
  ],
  correctAnswerIndex: 1,
  explanation: "The currency of Bangladesh is Bangladeshi Taka."
  ),
  Question(
  questionText: "When was DRDO (Defence Research and Development Organization) founded?",
  options: [
  "1 April 1947",
  "7 April 1952",
  "15 April 1965",
  "1 January 1958"
  ],
  correctAnswerIndex: 3,
  explanation: "DRDO was founded on 1 January 1958."
  ),
  Question(
  questionText: "Where is the headquarters of City Union Bank Limited?",
  options: [
  "Mumbai",
  "Chennai",
  "New Delhi",
  "Kumbakonam"
  ],
  correctAnswerIndex: 3,
  explanation: "City Union Bank Limited has its headquarters in Kumbakonam."
  ),
  Question(
  questionText: "Who is the Director-General of UNESCO?",
  options: [
  "Debjani Ghosh",
  "Audrey Azoulay",
  "Rafael Laguens",
  "Jens Stoltenberg"
  ],
  correctAnswerIndex: 1,
  explanation: "Audrey Azoulay is the Director-General of UNESCO."
  ),
  Question(
  questionText: "When was NATO (North Atlantic Treaty Organization) founded?",
  options: [
  "4 April 1947",
  "4 April 1949",
  "4 April 1952",
  "4 April 1955"
  ],
  correctAnswerIndex: 1,
  explanation: "NATO was founded on 4 April 1949."
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
    home: april(),
  ));
}

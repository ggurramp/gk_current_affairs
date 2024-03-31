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

class july extends StatefulWidget {
  final String? userIdentifier;

  july({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<july> createState() => _julyState();
}

class _julyState extends State<july> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


  Question(
  questionText: "Who won the Men’s Singles title at Wimbledon 2023?",
  options: [
  "Novak Djokovic",
  "Carlos Alcaraz",
  "Marketa Vondrousova",
  "Ons Jabeur"
  ],
  correctAnswerIndex: 1,
  explanation: "Carlos Alcaraz won the Men’s Singles title at Wimbledon 2023."
  ),

  Question(
  questionText: "Who became the Women’s Singles champion at Wimbledon 2023?",
  options: [
  "Marketa Vondrousova",
  "Ons Jabeur",
  "Barbora Strýcová",
  "Hsieh Su-wei"
  ],
  correctAnswerIndex: 0,
  explanation: "Marketa Vondrousova became the Women’s Singles champion at Wimbledon 2023."
  ),

  Question(
  questionText: "Which pair won the Men’s Doubles title at Wimbledon 2023?",
  options: [
  "Wesley Koolhof & Neal Skupski",
  "Horacio Zeballos & Marcel Granollers",
  "Mate Pavić & Lyudmyla Kichenok",
  "Xu Yi fan & Joran Vliegen"
  ],
  correctAnswerIndex: 0,
  explanation: "Wesley Koolhof & Neal Skupski won the Men’s Doubles title at Wimbledon 2023."
  ),

  Question(
  questionText: "Who emerged as the champion in Women’s Doubles at Wimbledon 2023?",
  options: [
  "Barbora Strýcová & Hsieh Su-wei",
  "Elise Mertens & Storm Sanders",
  "Marketa Vondrousova & Ons Jabeur",
  "Xu Yi fan & Joran Vliegen"
  ],
  correctAnswerIndex: 0,
  explanation: "Barbora Strýcová & Hsieh Su-wei won the Women’s Doubles title at Wimbledon 2023."
  ),

  Question(
  questionText: "Which Indian state topped the NITI Aayog's Export Preparedness Index 2022?",
  options: [
  "Maharashtra",
  "Karnataka",
  "Tamil Nadu",
  "Gujarat"
  ],
  correctAnswerIndex: 2,
  explanation: "Tamil Nadu has topped in EPI 2022, followed by Maharashtra and Karnataka. Gujarat, which held the top position in EPI 2021 (released in 2022) has been pushed to the fourth slot in EPI 2022"
  ),

  Question(
  questionText: "What is the overall score of Tamil Nadu in the Export Preparedness Index 2022?",
  options: [
  "76.36",
  "78.20",
  "80.89",
  "73.22"
  ],
  correctAnswerIndex: 2,
  explanation: "Tamil Nadu scored 80.89 in the Export Preparedness Index 2022."
  ),

  Question(
  questionText: "Which country holds the title of the world’s most powerful passport in the Henley Passport Index 2023?",
  options: [
  "Germany",
  "Singapore",
  "Japan",
  "Italy"
  ],
  correctAnswerIndex: 1,
  explanation: "Singapore holds the title of the world’s most powerful passport in the Henley Passport Index 2023."
  ),

  Question(
  questionText: "What is India’s ranking in the Henley Passport Index 2023?",
  options: [
  "75th",
  "80th",
  "85th",
  "90th"
  ],
  correctAnswerIndex: 1,
  explanation: "India ranks 80th in the Henley Passport Index 2023."
  ),



  Question(
  questionText: "Which radio station in Ambala, Haryana, won the first prize in the National Community Radio Awards?",
  options: [
  "Radio Hirakhand",
  "Green Radio",
  "Radio Mind Tree",
  "Radio SD"
  ],
  correctAnswerIndex: 2,
  explanation: "Radio Mind Tree in Ambala, Haryana, won the first prize in the National Community Radio Awards."
  ),

  Question(
  questionText: "Which state's program 'Hope Jeene Ki Raah' won the first prize in the Thematic Awards category?",
  options: [
  "Odisha",
  "Haryana",
  "Bihar",
  "Uttar Pradesh"
  ],
  correctAnswerIndex: 1,
  explanation: "The program 'Hope Jeene Ki Raah' from Haryana won the first prize in the Thematic Awards category."
  ),

  Question(
  questionText: "Which state topped the Export Preparedness Index 2022 among coastal areas?",
  options: [
  "Andhra Pradesh",
  "Kerala",
  "West Bengal",
  "Gujarat"
  ],
  correctAnswerIndex: 2,
  explanation: "West Bengal topped the Export Preparedness Index 2022 among coastal areas."
  ),

  Question(
  questionText: "Which Union Territory/small state secured the top ranking in the Export Preparedness Index 2022?",
  options: [
  "Delhi",
  "Goa",
  "Andaman and Nicobar",
  "Ladakh"
  ],
  correctAnswerIndex: 1,
  explanation: "Goa topped the ranking among Union Territories/small states in the Export Preparedness Index 2022."
  ),

  Question(
  questionText: "Which Indian state showed the largest decline in multidimensional poverty according to the NITI Aayog report?",
  options: [
  "Uttar Pradesh",
  "Maharashtra",
  "Tamil Nadu",
  "Bihar"
  ],
  correctAnswerIndex: 0,
  explanation: "Uttar Pradesh showed the largest decline in multidimensional poverty according to the NITI Aayog report."
  ),


  Question(
  questionText: "Which country holds the lowest rank in the Henley Passport Index 2023?",
  options: [
  "Syria",
  "Pakistan",
  "Afghanistan",
  "Iraq"
  ],
  correctAnswerIndex: 2,
  explanation: "Afghanistan holds the lowest rank in the Henley Passport Index 2023."
  ),

  Question(
  questionText: "Which pillar in the Export Preparedness Index assesses the actual export outcomes of states and UTs?",
  options: [
  "Policy Pillar",
  "Business Ecosystem",
  "Export Ecosystem",
  "Export Performance"
  ],
  correctAnswerIndex: 3,
  explanation: "The Export Performance pillar assesses the actual export outcomes of states and UTs in the Export Preparedness Index."
  ),
  Question(
  questionText: "Which community radio station won the First Prize in the Promoting Local Culture Awards?",
  options: [
  "Kabir Radio, Sant Kabir Nagar, UP.",
  "Radio Mind Tree, Ambala, Haryana.",
  "Voice of SOA, Cuttack, Odissa.",
  "Friends FM, Tripura, Agartala."
  ],
  correctAnswerIndex: 2,
  explanation: "Voice of SOA, Cuttack, Odissa, won the First Prize in the Promoting Local Culture Awards.",
  ),




  Question(
  questionText: "What change has been made in the licensing time for Community Radio Stations by the government?",
  options: [
  "Reduced from six months to four years.",
  "Increased from six months to four years.",
  "Reduced from four years to six months.",
  "Unchanged at four years."
  ],
  correctAnswerIndex: 2,
  explanation: "The licensing time for Community Radio Stations has been significantly reduced from four years to six months.",
  ),

  Question(
  questionText: "What does the amended All India Services (Death-cum-Retirement Benefits) Rules, 1958, address?",
  options: [
  "Enhanced protection measures for tiger reserves.",
  "Changes in the retirement benefits of IAS, IPS, IFOS pensioners.",
  "The launch of a virtual branch by Punjab National Bank.",
  "The merger of IDFC First Bank and IDFC Ltd."
  ],
  correctAnswerIndex: 1,
  explanation: "The amendments in the rules relate to retirement benefits for officers of IAS, IPS, and IFoS.",
  ),


  Question(
  questionText: "What significant milestone did India achieve on Global Tiger Day, 29th July 2023?",
  options: [
  "Launching a comprehensive report on tiger conservation.",
  "Project Tiger completing 50 years.",
  "Revealing an annual growth rate of 6.1% in the tiger population.",
  "Announcing the establishment of 34 Transaction Banking Hubs by SBI."
  ],
  correctAnswerIndex: 2,
  explanation: "India revealed a tiger population estimate of 3,925 with an annual growth rate of 6.1% on Global Tiger Day.",
  ),

  Question(
  questionText: "Which state has the highest tiger population according to the data provided?",
  options: [
  "Madhya Pradesh.",
  "Karnataka.",
  "Uttarakhand.",
  "Maharashtra."
  ],
  correctAnswerIndex: 0,
  explanation: "Madhya Pradesh has the highest tiger population according to the data, with 785 tigers.",
  ),

  Question(
  questionText: "What is the purpose of the Urban Infrastructure Development Fund (UIDF) announced by NHB?",
  options: [
  "To facilitate tiger conservation in urban areas.",
  "To enhance protection measures for tiger reserves.",
  "To support the creation of urban infrastructure in tier-2 and tier-3 cities.",
  "To promote sustainable banking practices."
  ],
  correctAnswerIndex: 2,
  explanation: "The UIDF aims to facilitate the creation of urban infrastructure in tier-2 and tier-3 cities.",
  ),

  Question(
  questionText: "What is the objective of the RBI in introducing interoperability between CBDC and UPI?",
  options: [
  "To promote tiger conservation.",
  "To simplify the corporate structure of banks.",
  "To facilitate the use of UPI QR codes for CBDC transactions.",
  "To enhance data management."
  ],
  correctAnswerIndex: 2,
  explanation: "The RBI aims to implement interoperability between CBDC and UPI to allow the use of UPI QR codes for digital currency transactions.",
  ),
  Question(
  questionText: "What programme earned the Third Prize for Pantnagar Janvani, Pantnagar, Uttarakhand, in the Promoting Local Culture Awards?",
  options: [
  "Asmita.",
  "Revived a dying art: MASK & POT.",
  "Dadi Maa Ka Batua.",
  "Book Bugs."
  ],
  correctAnswerIndex: 2,
  explanation: "Pantnagar Janvani, Pantnagar, Uttarakhand, won the Third Prize for the programme 'Dadi Maa Ka Batua' in the Promoting Local Culture Awards.",
  ),


  Question(
  questionText: "What does the amended rule regarding retirement benefits of IAS, IPS, and IFOS pensioners address?",
  options: [
  "Enhanced protection measures for tiger reserves.",
  "Withholding or withdrawing pension for grave misconduct or serious crimes.",
  "Launching a virtual branch in the metaverse.",
  "Promoting the use of UPI QR codes for CBDC transactions."
  ],
  correctAnswerIndex: 1,
  explanation: "The amended rules empower the central government to take action against pensioners, including withholding or withdrawing pension, for grave misconduct or serious crimes.",
  ),

  Question(
  questionText: "What does the amended All India Services (Death-cum-Retirement Benefits) Rules, 1958, eliminate dependency on?",
  options: [
  "State government references for action against retired officials.",
  "Licensing time for Community Radio Stations.",
  "Central government references for tiger conservation measures.",
  "Virtual branches in the metaverse."
  ],
  correctAnswerIndex: 0,
  explanation: "The amended rules eliminate dependency on state government references for action against retired officials.",
  ),


  Question(
  questionText: "Who has been appointed as the Chief Financial Officer (CFO) of State Bank of India?",
  options: [
  "Abhijit Chakravorty.",
  "Kameshwar Rao Kodavanti.",
  "T. Rabi Sankar.",
  "Ashwini Kumar."
  ],
  correctAnswerIndex: 1,
  explanation: "Kameshwar Rao Kodavanti has been appointed as the Chief Financial Officer (CFO) of State Bank of India.",
  ),

  Question(
  questionText: "What does the RBI aim to achieve by introducing UPI QR codes for CBDC transactions?",
  options: [
  "Enhance data management for tiger conservation.",
  "Promote the use of UPI QR codes for digital currency transactions.",
  "Simplify the corporate structure of banks.",
  "Facilitate the creation of urban infrastructure in tier-2 and tier-3 cities."
  ],
  correctAnswerIndex: 1,
  explanation: "The RBI aims to facilitate the use of UPI QR codes for CBDC transactions by introducing interoperability between CBDC and UPI."
  ),
  Question(
  questionText: "What milestone did HDFC Bank achieve recently?",
  options: [
  "Entered the \$100 billion market-cap club",
  "Became the 2nd most valuable company in India",
  "Secured the top spot in CRISIL’s Corporate Banking Ranking",
  "Launched a co-branded credit card with Swiggy"
  ],
  correctAnswerIndex: 0,
  explanation: "HDFC Bank entered the \$100 billion market-cap club recently.",
  ),
  Question(
  questionText: "What is the GDP growth target set by RBI for India to become a developed economy by 2047?",
  options: [
  "5.0%",
  "6.5%",
  "7.6%",
  "8.9%"
  ],
  correctAnswerIndex: 2,
  explanation: "RBI has set a GDP growth target of 7.6% for India to become a developed economy by 2047.",
  ),
  Question(
  questionText: "How much funding is the European Investment Bank (EIB) planning to invest in India's renewable energy sector?",
  options: [
  "€200 million",
  "€500 million",
  "€1 billion",
  "€2 billion"
  ],
  correctAnswerIndex: 1,
  explanation: "EIB plans to invest approximately €500 million in India’s renewable energy sector.",
  ),
  Question(
  questionText: "Which banks are stepping up campaigns for the Central Bank Digital Currency (CBDC) pilot in India?",
  options: [
  "SBI and ICICI Bank",
  "HDFC Bank and Axis Bank",
  "SBI and HDFC Bank",
  "ICICI Bank and HDFC Bank"
  ],
  correctAnswerIndex: 2,
  explanation: "SBI and HDFC Bank are stepping up campaigns for the CBDC pilot in India.",
  ),
  Question(
  questionText: "What is the purpose of the RBI introducing a standard operating procedure (SOP) for banks regarding Foreign Inward Remittance Certificates (FIRC) and Electronic Bank Realization Certificates (e-BRCs)?",
  options: [
  "To simplify tax procedures for banks",
  "To expedite rupee trade for exporters",
  "To regulate interest rates for foreign transactions",
  "To enhance customer onboarding processes"
  ],
  correctAnswerIndex: 1,
  explanation: "The SOP is introduced to expedite the issuance of FIRC and e-BRC for foreign trade.",
  ),
  Question(
  questionText: "Why is AT-1 BOND in the news?",
  options: [
  "State Bank of India issued AT-1 bonds successfully",
  "AT-1 bonds worth Rs. 10,000 crore were oversubscribed",
  "AT-1 bonds worth Rs. 10,000 crore had a poor response",
  "AT-1 bonds were recently introduced by HDFC Bank"
  ],
  correctAnswerIndex: 2,
  explanation: "State Bank of India issued AT-1 bonds worth Rs. 10,000 crore, but only Rs. 3,100 crore worth were subscribed.",
  ),
  Question(
  questionText: "What led to the cancellation of the registration certificate of United India Cooperative Bank Ltd?",
  options: [
  "Inadequate capital and poor earning prospects",
  "Financial fraud and misconduct",
  "Government intervention",
  "Failure to meet regulatory compliance"
  ],
  correctAnswerIndex: 0,
  explanation: "The cancellation was due to inadequate capital and poor earning prospects.",
  ),
  Question(
  questionText: "What significant move did the RBI make regarding 'NongHyup Bank'?",
  options: [
  "Cancelled its license",
  "Added it to the Second Schedule of the RBI Act, 1934",
  "Imposed penalties for regulatory violations",
  "Approved its merger with another bank"
  ],
  correctAnswerIndex: 1,
  explanation: "RBI added 'NongHyup Bank' to the Second Schedule of the RBI Act, 1934.",
  ),
  Question(
  questionText: "Which bank has been the top public sector lender in lending to state-owned corporations and PSUs for the fifth consecutive year?",
  options: [
  "SBI",
  "ICICI Bank",
  "Canara Bank",
  "HDFC Bank"
  ],
  correctAnswerIndex: 2,
  explanation: "Canara Bank has been the top public sector lender in lending to state-owned corporations and PSUs for the fifth consecutive year.",
  ),

  Question(
  questionText: "What is the total budget estimate of direct taxes for the fiscal year 2023-24?",
  options: [
  "Rs 1.5 lakh crore",
  "Rs 2.1 lakh crore",
  "Rs 5.0 lakh crore",
  "Rs 18.23 lakh crore"
  ],
  correctAnswerIndex: 3,
  explanation: "The total budget estimate of direct taxes for the fiscal year 2023-24 is Rs 18.23 lakh crore.",
  ),
  Question(
  questionText: "What is the revised GDP growth forecast for India by the International Monetary Fund (IMF) for the current fiscal year?",
  options: [
  "5.5%",
  "6.1%",
  "7.0%",
  "8.2%"
  ],
  correctAnswerIndex: 1,
  explanation: "IMF revised India's GDP growth forecast for the current fiscal year to 6.1%.",
  ),
  Question(
  questionText: "What is the latest valuation of India's forex reserves?",
  options: [
  "\$580 billion",
  "\$600 billion",
  "\$620 billion",
  "\$650 billion"
  ],
  correctAnswerIndex: 1,
  explanation: "India's forex reserves breached the \$600 billion-mark.",
  ),
  Question(
  questionText: "According to Goldman Sachs, when is India projected to become the world's second-largest economy?",
  options: [
  "2030",
  "2040",
  "2055",
  "2075"
  ],
  correctAnswerIndex: 3,
  explanation: "Goldman Sachs projects India to become the world's second-largest economy by 2075.",
  ),
  Question(
  questionText: "What is the fiscal deficit of the central government at the end of May 2023?",
  options: [
  "10.5%",
  "11.8%",
  "12.3%",
  "13.0%"
  ],
  correctAnswerIndex: 1,
  explanation: "The fiscal deficit of the central government at the end of May 2023 is 11.8%.",
  ),


  Question(
  questionText: "According to Standard Chartered Research, what is the projected GDP of India by the year 2030?",
  options: [
  "\$5 trillion",
  "\$6 trillion",
  "\$7 trillion",
  "\$8 trillion"
  ],
  correctAnswerIndex: 1,
  explanation: "Standard Chartered’s India research team projects India's economy to reach \$6 trillion by 2030.",
  ),

  Question(
  questionText: "What is the purpose of the Corporate Debt Market Development Fund (CDMDF) introduced by SEBI?",
  options: [
  "To provide loans to corporate debtors",
  "To support during stressed market conditions by purchasing investment-grade corporate debt securities",
  "To regulate corporate debt interest rates",
  "To facilitate foreign direct investment in corporate debt"
  ],
  correctAnswerIndex: 1,
  explanation: "SEBI introduced CDMDF to function as a 'backstop facility,' providing support during stressed market conditions by purchasing investment-grade corporate debt securities.",
  ),

  Question(
  questionText: "What significant step has the Indian government taken towards establishing India’s first carbon market?",
  options: [
  "Implementation of carbon taxes",
  "Drafting the Carbon Credit Trading Scheme, 2023",
  "Establishing a carbon trading exchange",
  "Introducing carbon emission reduction targets"
  ],
  correctAnswerIndex: 1,
  explanation: "The Indian government has notified a draft framework for the Carbon Credit Trading Scheme, 2023, taking a significant step towards establishing India’s first carbon market.",
  ),

  Question(
  questionText: "According to a WTO-World Bank report, how much has India’s share of global commercial services exports increased from 2005 to 2022?",
  options: [
  "1.5%",
  "2.5%",
  "3.5%",
  "4.4%"
  ],
  correctAnswerIndex: 3,
  explanation: "India’s share of global commercial services exports has doubled from 2% in 2005 to 4.4% in 2022, as per a report by the World Bank and WTO.",
  ),

  Question(
  questionText: "Which PSU has become the first in India to achieve Anti-Bribery Management System Certification?",
  options: [
  "Indian Oil Corporation",
  "Bharat Heavy Electricals Limited",
  "Oil and Natural Gas Corporation (ONGC)",
  "Coal India Limited"
  ],
  correctAnswerIndex: 2,
  explanation: "ONGC has become the first Central Public Sector Enterprise (CPSE) in India to receive certification for its Anti-Bribery Management System (ABMS).",
  ),

  Question(
  questionText: "What is the significance of Schedule M for MSME Pharma Firms in India?",
  options: [
  "Tax incentives for MSMEs",
  "Quality assurance guidelines",
  "Labor standards for MSMEs",
  "Environmental compliance for MSMEs"
  ],
  correctAnswerIndex: 1,
  explanation: "India’s small drugmakers in the MSME sector will soon be required to adhere to the good manufacturing practices outlined in Schedule M of the Drugs and Cosmetics Act.",
  ),


  Question(
  questionText: "Which fintech giant has launched its first international payment gateway in Malaysia?",
  options: [
  "Paytm",
  "PhonePe",
  "Razorpay",
  "Google Pay"
  ],
  correctAnswerIndex: 2,
  explanation: "Razorpay, India’s leading fintech giant, has launched its first international Payment Gateway in Malaysia.",
  ),
  Question(
  questionText: "Which country has applied to join the BRICS group, offering to contribute \$1.5 billion to the group bank?",
  options: [
  "Saudi Arabia",
  "Algeria",
  "Nigeria",
  "South Africa"
  ],
  correctAnswerIndex: 1,
  explanation: "Algeria has formally submitted an application to join the BRICS group of nations, offering to contribute \$1.5 billion to the group bank.",
  ),

  Question(
  questionText: "What is the name of the joint venture between Jio Financial Services Ltd and BlackRock in the mutual fund market?",
  options: [
  "Jio Mutual Ventures",
  "BlackRock India Ventures",
  "Jio BlackRock",
  "Financial Innovations Alliance"
  ],
  correctAnswerIndex: 2,
  explanation: "Jio Financial Services Ltd and BlackRock have joined forces to create a joint venture called 'Jio BlackRock' to revolutionize India’s mutual fund market.",
  ),

  Question(
  questionText: "Where has Amazon India inaugurated its first-ever floating store?",
  options: [
  "Ganges River",
  "Yamuna River",
  "Dal Lake",
  "Brahmaputra River"
  ],
  correctAnswerIndex: 2,
  explanation: "Amazon India has inaugurated its first-ever floating store on Dal Lake in Srinagar, Kashmir.",
  ),

  Question(
  questionText: "Which country has become the first to implement a complete ban on thin plastic bags used in supermarkets for fruit and vegetable purchases?",
  options: [
  "Australia",
  "Canada",
  "New Zealand",
  "United Kingdom"
  ],
  correctAnswerIndex: 2,
  explanation: "New Zealand has become the first country to implement a complete ban on thin plastic bags used in supermarkets for fruit and vegetable purchases.",
  ),

  Question(
  questionText: "Which country has officially become a full member of the Shanghai Cooperation Organisation (SCO)?",
  options: [
  "Iran",
  "Turkey",
  "Iraq",
  "Egypt"
  ],
  correctAnswerIndex: 0,
  explanation: "Iran has officially become a full member of the Shanghai Cooperation Organisation (SCO).",
  ),


  Question(
  questionText: "Which international financial institution is keen to extend 1 billion euros for green hydrogen and renewable energy projects in India?",
  options: [
  "International Monetary Fund (IMF)",
  "World Bank",
  "Asian Development Bank (ADB)",
  "European Investment Bank (EIB)"
  ],
  correctAnswerIndex: 3,
  explanation: "The European Investment Bank (EIB) is keen to extend 1 billion euros for green hydrogen and renewable energy projects in India.",
  ),

  Question(
  questionText: "Which country has become the 51st to sign ASEAN's Treaty of Amity and Cooperation (TAC)?",
  options: [
  "Qatar",
  "UAE",
  "Oman",
  "Bahrain"
  ],
  correctAnswerIndex: 1,
  explanation: "Saudi Arabia has become the 51st country to sign ASEAN's Treaty of Amity and Cooperation (TAC).",
  ),

  Question(
  questionText: "What is the name of the world's first methane-fuelled space rocket launched by a Chinese company?",
  options: [
  "Long March 5",
  "Falcon 9",
  "Zhuque-2",
  "Soyuz"
  ],
  correctAnswerIndex: 2,
  explanation: "A private Chinese company launched the world's first methane-fuelled space rocket named 'Zhuque-2.'",
  ),

  Question(
  questionText: "What neurological condition has led Peru to declare a state of national emergency?",
  options: [
  "Parkinson's Disease",
  "Guillain-Barre Syndrome (GBS)",
  "Alzheimer's Disease",
  "Multiple Sclerosis"
  ],
  correctAnswerIndex: 1,
  explanation: "Peru declared a state of national emergency amid a surge in patients suffering from Guillain-Barre Syndrome (GBS).",
  ),
  Question(
  questionText: "What official approval did the World Bank issue for the Bank of Israel on July 13th?",
  options: [
  "Membership in the International Committee on Credit Reporting (ICCR).",
  "Participation in the UNESCO initiative on smartphone bans in schools.",
  "Leadership roles in the ruling Cambodian People’s Party.",
  "Recorded low levels of sea ice in Antarctica."
  ],
  correctAnswerIndex: 0,
  explanation: "The World Bank issued official approval for the Bank of Israel to join the International Committee on Credit Reporting (ICCR).",
  ),



  Question(
  questionText: "What is the recorded extent of Antarctica's sea ice, and how does it compare to the normal extent?",
  options: [
  "Recorded at 16.7 million sq. km, above the normal extent.",
  "Recorded at 14.2 million sq. km, significantly below the normal extent.",
  "Recorded at 18 million sq. km, the highest ever.",
  "Recorded at 15.5 million sq. km, close to the normal extent."
  ],
  correctAnswerIndex: 1,
  explanation: "Antarctica’s sea ice has been recorded at a low level of about 14.2 million sq. km, significantly below the normal extent of 16.7 million sq. km.",
  ),


  Question(
  questionText: "Who was elected as the new chair of the Intergovernmental Panel on Climate Change (IPCC)?",
  options: [
  "Thelma Krug of Brazil.",
  "James Ferguson ‘Jim’ Skea of the United Kingdom.",
  "A former researcher at Brazil’s national space institute.",
  "The first female chair of the IPCC."
  ],
  correctAnswerIndex: 1,
  explanation: "James Ferguson ‘Jim’ Skea of the United Kingdom was elected as the new chair of the IPCC.",
  ),

  Question(
  questionText: "What significant milestone has been achieved in India's nuclear energy sector?",
  options: [
  "Completion of the first indigenously developed nuclear reactor.",
  "Approval of the Digital Personal Data Bill.",
  "Inauguration of the Sai Hira Global Convention Centre.",
  "Commencement of commercial operations at the Kakrapar Atomic Power Project (KAPP) reactor."
  ],
  correctAnswerIndex: 3,
  explanation: "India’s first indigenously developed 700 MW nuclear power reactor at the Kakrapar Atomic Power Project (KAPP) in Gujarat has successfully commenced commercial operations.",
  ),

  Question(
  questionText: "Which global event did Prime Minister Narendra Modi inaugurate virtually in Andhra Pradesh?",
  options: [
  "The International Committee on Credit Reporting (ICCR) summit.",
  "The International Exhibition-cum-Convention Centre (IECC).",
  "The Startup20 Shikhar Summit.",
  "The Sai Hira Global Convention Centre."
  ],
  correctAnswerIndex: 3,
  explanation: "Prime Minister Narendra Modi virtually inaugurated the Sai Hira Global Convention Centre in Puttaparthi, Andhra Pradesh.",
  ),

  Question(
  questionText: "What was the focus of the Startup20 Shikhar Summit organized by the India G20 Presidency?",
  options: [
  "Cultural exchange and global harmony.",
  "Innovation, collaborations, and knowledge sharing.",
  "Promoting indigenous nuclear energy.",
  "Formation of the Champions Group."
  ],
  correctAnswerIndex: 1,
  explanation: "The Startup20 Shikhar Summit served as a platform for fostering innovations, collaborations, knowledge sharing, and strategic alliances within the global startup ecosystem.",
  ),

  Question(
  questionText: "What significant step did the Union Government take regarding personal data protection?",
  options: [
  "Inaugurated the CRCS – Sahara Refund Portal.",
  "Joined the Champions Group of the Global Crisis Response Group.",
  "Approved the Digital Personal Data Bill.",
  "Launched the Techno-Commercial Readiness and Market Maturity Matrix (TCRM Matrix) framework."
  ],
  correctAnswerIndex: 2,
  explanation: "The Union Government approved the draft Digital Personal Data Bill, which is set to come before Parliament in the monsoon season.",
  ),
  Question(
  questionText: "What campaign did Prime Minister Narendra Modi announce in the run-up to Independence Day?",
  options: [
  "Meri Mati Mera Desh",
  "Jagananna Amma Vodi",
  "ULLAS mobile application",
  "Antyodaya Shramik Suraksha Yojna"
  ],
  correctAnswerIndex: 0,
  explanation: "Prime Minister Narendra Modi announced the 'Meri Mati Mera Desh' campaign in the run-up to Independence Day.",
  ),

  Question(
  questionText: "What is the objective of the ULLAS: Nav Bharat Saksharta Karyakram launched at the Akhil Bharatiya Shiksha Samagam 2023?",
  options: [
  "Promote basic literacy",
  "Revolutionize education and literacy",
  "Enhance vocational training",
  "Implement NEP 2020"
  ],
  correctAnswerIndex: 1,
  explanation: "ULLAS aims to revolutionize education and literacy in India by creating a comprehensive learning ecosystem.",
  ),

  Question(
  questionText: "What coalition was launched by Union Minister Bhupender Yadav in Chennai?",
  options: [
  "Police Drone Unit",
  "Resource Efficiency Circular Economy Industry Coalition (RECEIC)",
  "Jagananna Amma Vodi scheme",
  "Meri Mati Mera Desh campaign"
  ],
  correctAnswerIndex: 1,
  explanation: "Union Minister Bhupender Yadav launched the Resource Efficiency Circular Economy Industry Coalition (RECEIC) in Chennai.",
  ),



  Question(
  questionText: "Which state regained the top spot in electronic exports in India?",
  options: [
  "Maharashtra",
  "Karnataka",
  "Tamil Nadu",
  "Andhra Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "Tamil Nadu reclaimed its position as the leader in electronic exports in India.",
  ),

  Question(
  questionText: "What is the objective of the 'Police Drone Unit' launched in Chennai?",
  options: [
  "Traffic management",
  "Aerial surveillance and crime detection",
  "Weather monitoring",
  "Disaster relief"
  ],
  correctAnswerIndex: 1,
  explanation: "The 'Police Drone Unit' in Chennai was launched for aerial surveillance and quick detection of criminal activities.",
  ),

  Question(
  questionText: "Which state surpassed Tamil Nadu in microlending borrowings?",
  options: [
  "Karnataka",
  "Andhra Pradesh",
  "Bihar",
  "Maharashtra"
  ],
  correctAnswerIndex: 2,
  explanation: "Bihar surpassed Tamil Nadu to become the state with the highest microlending borrowings.",
  ),

  Question(
  questionText: "Which municipal corporation in Madhya Pradesh became the first urban body to receive Extended Producers Responsibility (EPR) credit?",
  options: [
  "Mumbai Municipal Corporation",
  "Delhi Municipal Corporation",
  "Bhopal Municipal Corporation",
  "Indore Municipal Corporation"
  ],
  correctAnswerIndex: 3,
  explanation: "Indore Municipal Corporation became the first urban body to receive Extended Producers Responsibility (EPR) credit for recycling banned single-use plastic items.",
  ),

  Question(
  questionText: "What viruses affected tomato crops in Maharashtra and Karnataka?",
  options: [
  "CMV and ToMV",
  "H1N1 and Zika",
  "Ebola and Dengue",
  "SARS-CoV-2 and Influenza"
  ],
  correctAnswerIndex: 0,
  explanation: "Tomato crops in Maharashtra were affected by the cucumber mosaic virus (CMV), while those in Karnataka were affected by the tomato mosaic virus (ToMV).",
  ),


  Question(
  questionText: "What scheme did Chief Minister Y.S. Jagan Mohan Reddy implement in Andhra Pradesh to promote education?",
  options: [
  "Antyodaya Shramik Suraksha Yojna",
  "Mukhya Mantri Khet Suraksha Yojana",
  "Jagananna Amma Vodi scheme",
  "Mission Shakti Scooter Yojana"
  ],
  correctAnswerIndex: 2,
  explanation: "Chief Minister Y.S. Jagan Mohan Reddy implemented the 'Jagananna Amma Vodi' scheme in Andhra Pradesh to promote education.",
  ),

  Question(
  questionText: "Where was India's first 'Police Drone Unit' launched?",
  options: [
  "Delhi",
  "Mumbai",
  "Chennai",
  "Kolkata"
  ],
  correctAnswerIndex: 2,
  explanation: "India's first 'Police Drone Unit' was launched in Chennai for aerial surveillance and crime detection.",
  ),

  Question(
  questionText: "Which state overtook Tamil Nadu in electronic exports?",
  options: [
  "Karnataka",
  "Maharashtra",
  "Andhra Pradesh",
  "Telangana"
  ],
  correctAnswerIndex: 2,
  explanation: "Tamil Nadu was overtaken by Andhra Pradesh in electronic exports.",
  ),

  Question(
  questionText: "What project was launched in Assam to address the human-elephant conflict?",
  options: [
  "Project Gajah Kotha",
  "Project Ganga Kalyan",
  "Project Rhino Shield",
  "Project Tiger Resurgence"
  ],
  correctAnswerIndex: 0,
  explanation: "Assam launched 'Project Gajah Kotha' to address the human-elephant conflict.",
  ),

  Question(
  questionText: "Which city in Maharashtra will have the PM Mega Integrated Textile Regions and Apparel Park (PM MITRA Park)?",
  options: [
  "Mumbai",
  "Pune",
  "Nagpur",
  "Amravati"
  ],
  correctAnswerIndex: 3,
  explanation: "The PM Mega Integrated Textile Regions and Apparel Park (PM MITRA Park) will be in Amravati, Maharashtra.",
  ),

  Question(
  questionText: "Which river was declared a 'non-perennial river' by the Uttar Pradesh government?",
  options: [
  "Yamuna",
  "Ganga",
  "Saraswati",
  "Gomti"
  ],
  correctAnswerIndex: 3,
  explanation: "The Gomti River was declared a 'non-perennial river' by the Uttar Pradesh government.",
  ),

  Question(
  questionText: "What did the Odisha state cabinet approve under the Mission Shakti Scooter Yojana?",
  options: [
  "Interest subvention on home loans",
  "Interest subvention on agricultural loans",
  "Interest subvention on bank loans for scooters",
  "Interest subvention on education loans"
  ],
  correctAnswerIndex: 2,
  explanation: "The Odisha state cabinet approved interest subvention on bank loans for scooters under the Mission Shakti Scooter Yojana.",
  ),

  Question(
  questionText: "Who has become the second longest-serving Chief Minister in Indian history?",
  options: [
  "Bhupender Patel",
  "Naveen Patnaik",
  "Yogi Adityanath",
  "Jyoti Basu"
  ],
  correctAnswerIndex: 1,
  explanation: "Naveen Patnaik of Odisha has become the second longest-serving Chief Minister in Indian history.",
  ),

  Question(
  questionText: "What is the objective of the Mukhya Mantri Khet Suraksha Yojana in Uttar Pradesh?",
  options: [
  "Promoting education",
  "Improving healthcare",
  "Ensuring social security for farmers",
  "Addressing the human-elephant conflict"
  ],
  correctAnswerIndex: 2,
  explanation: "The Mukhya Mantri Khet Suraksha Yojana in Uttar Pradesh aims to ensure social security for farmers.",
  ),

  Question(
  questionText: "Which city in India has become the first to join the World Cities Culture Forum?",
  options: [
  "Delhi",
  "Mumbai",
  "Bengaluru",
  "Chennai"
  ],
  correctAnswerIndex: 2,
  explanation: "Bengaluru has become the first Indian city to join the World Cities Culture Forum.",
  ),
  Question(
  questionText: "What is the objective of the 'Mission Vatsalya' scheme?",
  options: [
  "To provide relief to families of minor girls who are victims of rape",
  "To empower women entrepreneurs from backward classes",
  "To modernize fire services in states",
  "To eliminate sickle cell anaemia among tribal populations"
  ],
  correctAnswerIndex: 0,
  explanation: "The objective of 'Mission Vatsalya' is to provide relief to families of minor girls who are victims of rape.",
  ),

  Question(
  questionText: "Which ministry introduced the Swarnima Scheme?",
  options: [
  "Ministry of Social Justice and Empowerment",
  "Ministry of Home Affairs",
  "Ministry of Agriculture and Farmers Welfare",
  "Ministry of Commerce & Industry"
  ],
  correctAnswerIndex: 0,
  explanation: "The Swarnima Scheme was introduced by the Ministry of Social Justice and Empowerment.",
  ),

  Question(
  questionText: "What is the allocated amount for the 'Scheme for Expansion and Modernization of Fire Services in States'?",
  options: [
  "Rs. 5,000 Crore",
  "Rs. 2,00,000/-",
  "Rs. 6,000 per year",
  "Rs. 81,597 Crore"
  ],
  correctAnswerIndex: 0,
  explanation: "The allocated amount for the fire services scheme is Rs. 5,000 Crore.",
  ),

  Question(
  questionText: "Which state did PM Modi inaugurate the National Sickle Cell Anemia Eradication Mission(NSCAEM)?",
  options: [
  "Madhya Pradesh",
  "Uttar Pradesh",
  "Maharashtra",
  "Gujarat"
  ],
  correctAnswerIndex: 0,
  explanation: "PM Modi inaugurated the NSCAEM in Shahdol, Madhya Pradesh.",
  ),

  Question(
  questionText: "When was the Pradhan Mantri Kisan Samman Nidhi Scheme launched?",
  options: [
  "1 December, 2018",
  "13 June, 2023",
  "19 July, 2023",
  "1 August, 2023"
  ],
  correctAnswerIndex: 0,
  explanation: "Pradhan Mantri Kisan Samman Nidhi Scheme was launched on 1 December, 2018.",
  ),

  Question(
  questionText: "How much is the increase in disbursal of loans under PMMY in Q1 FY24?",
  options: [
  "23%",
  "5%",
  "10%",
  "15%"
  ],
  correctAnswerIndex: 0,
  explanation: "Disbursal of loans under PMMY witnessed a 23% increase in Q1 FY24.",
  ),

  Question(
  questionText: "What does DGFT oversee through the Advance Authorisation Scheme?",
  options: [
  "Duty-free import of inputs for export purposes",
  "Expansion of fire services in states",
  "Financial assistance to women entrepreneurs",
  "Elimination of sickle cell anaemia"
  ],
  correctAnswerIndex: 0,
  explanation: "DGFT oversees duty-free import of inputs for export purposes through the Advance Authorisation Scheme.",
  ),

  Question(
  questionText: "What is the objective of the Gruha Lakshmi Scheme?",
  options: [
  "To provide financial assistance to women heads of households",
  "To enhance facilities at railway stations",
  "To eliminate sickle cell anaemia",
  "To provide affordable housing in MMR"
  ],
  correctAnswerIndex: 0,
  explanation: "The Gruha Lakshmi Scheme aims to provide financial assistance to women heads of households.",
  ),



  Question(
  questionText: "What is the 'Credit Guarantee Scheme' introduced by the Indian government for?",
  options: [
  "Livestock Sector",
  "MSMEs",
  "Rural economy",
  "Sickle Cell Anaemia Eradication"
  ],
  correctAnswerIndex: 0,
  explanation: "The 'Credit Guarantee Scheme' is for the Livestock Sector to reboot the rural economy and empower MSMEs.",
  ),

  Question(
  questionText: "What scheme did CM Bhupesh Baghel launch for providing free housing facilities to the poor?",
  options: [
  "Gramin Awaas Nyay Yojna",
  "PM Kisan Samman Nidhi",
  "Sashakt Mahila Rin Yojna",
  "New Rural Housing Scheme"
  ],
  correctAnswerIndex: 0,
  explanation: "CM Bhupesh Baghel launched the 'Gramin Awaas Nyay Yojna' to provide free housing facilities to the poor.",
  ),

  Question(
  questionText: "What is the aim of the 'Pradhan Mantri Shram Yogi Maan-dhan (PM-SYM)' scheme?",
  options: [
  "Pension scheme for unorganised workers",
  "Financial assistance to women entrepreneurs",
  "Expansion of fire services in states",
  "Elimination of sickle cell anaemia"
  ],
  correctAnswerIndex: 0,
  explanation: "The aim of PM-SYM is to provide a pension scheme for unorganised workers in India.",
  ),

  Question(
  questionText: "What is the objective of the 'Amrit Bharat Station Scheme (ABSS)'?",
  options: [
  "Enhancing facilities at railway stations",
  "Providing relief to families of rape victims",
  "Preparing master plans for railway stations",
  "Pension scheme for unorganised workers"
  ],
  correctAnswerIndex: 0,
  explanation: "The objective of ABSS is to enhance facilities at railway stations by identifying and developing 90 stations.",
  ),

  Question(
  questionText: "Which solar initiative operated by ISA is India considering expanding to Pacific Island countries?",
  options: [
  "Solar STAR-C",
  "PMAY-G",
  "NSCAEM 2047",
  "Gruha Lakshmi Scheme"
  ],
  correctAnswerIndex: 0,
  explanation: "India is considering expanding its solar STAR-C initiative operated by ISA to Pacific Island countries.",
  ),

  Question(
  questionText: "When did the registration for 'Gruha Lakshmi' start?",
  options: [
  "19th July 2023",
  "1st December 2018",
  "13th June 2023",
  "24th July 2023"
  ],
  correctAnswerIndex: 0,
  explanation: "Registration for 'Gruha Lakshmi' started on 19th July 2023.",
  ),

  Question(
  questionText: "What is the significance of the 'Prime Minister’s Development Initiative for North Eastern Region (PM-DevINE)' scheme?",
  options: [
  "100% funded by the Central Government",
  "To empower women entrepreneurs",
  "Elimination of sickle cell anaemia",
  "Expansion of fire services in states"
  ],
  correctAnswerIndex: 0,
  explanation: "PM-DevINE scheme is 100% funded by the Central Government for development projects in the North Eastern Region.",
  ),

  Question(
  questionText: "What does the 'Sahkar Se Samriddhi' scheme aim to achieve?",
  options: [
  "Strengthening the cooperation movement",
  "Pension scheme for unorganised workers",
  "Expansion of fire services in states",
  "Elimination of sickle cell anaemia"
  ],
  correctAnswerIndex: 0,
  explanation: "'Sahkar Se Samriddhi' aims to strengthen the cooperation movement in the country.",
  ),

  Question(
  questionText: "Which umbrella scheme has been approved for continuation by the Cabinet Committee on Economic Affairs?",
  options: [
  "Atmosphere & Climate Research-Modelling Observing Systems & Services (ACROSS)",
  "SAUNI Yojana",
  "Credit Guarantee Scheme",
  "Gruha Lakshmi Scheme"
  ],
  correctAnswerIndex: 0,
  explanation: "The Cabinet Committee on Economic Affairs approved the continuation of the 'ACROSS' umbrella scheme.",
  ),

  Question(
  questionText: "What has the Gujarat government successfully completed under the SAUNI scheme?",
  options: [
  "Construction of Package 8 and Package 9 of Link-3",
  "Expansion of fire services in states",
  "Financial assistance to women entrepreneurs",
  "Elimination of sickle cell anaemia"
  ],
  correctAnswerIndex: 0,
  explanation: "The Gujarat government has successfully completed the construction of Package 8 and Package 9 of Link-3 under the SAUNI scheme.",
  ),

  Question(
  questionText: "What is the target achievement of Ayushman Bharat-Pradhan Mantri Jan Arogya Yojna mentioned in the news?",
  options: [
  "3.14 crore beneficiaries benefiting in the last two years",
  "23% increase in disbursals under PMMY",
  "Rs. 5,000 Crore allocation for fire services",
  "Construction of 90 railway stations under ABSS"
  ],
  correctAnswerIndex: 0,
  explanation: "The target achievement of Ayushman Bharat-Pradhan Mantri Jan Arogya Yojna is 3.14 crore beneficiaries benefiting in the last two years.",
  ),
  Question(
  questionText: "Who was named the AIFF Men’s Footballer of the Year for 2022-23?",
  options: [
  "Lallianzuala Chhangte",
  "Manisha Kalyan",
  "Ajit Agarkar",
  "Tamim Iqbal"
  ],
  correctAnswerIndex: 0,
  explanation: "Lallianzuala Chhangte was named the AIFF Men’s Footballer of the Year for 2022-23.",
  ),

  Question(
  questionText: "Who won her second consecutive Women’s Footballer of the Year award for 2022-23?",
  options: [
  "Lallianzuala Chhangte",
  "Manisha Kalyan",
  "Ajit Agarkar",
  "Tamim Iqbal"
  ],
  correctAnswerIndex: 1,
  explanation: "Manisha Kalyan won her second consecutive Women’s Footballer of the Year award.",
  ),

  Question(
  questionText: "Who was appointed as the chairman of the Senior Men’s Cricket Selection Committee?",
  options: [
  "Lallianzuala Chhangte",
  "Ajit Agarkar",
  "Tamim Iqbal",
  "Max Verstappen"
  ],
  correctAnswerIndex: 1,
  explanation: "Ajit Agarkar was appointed as the chairman of the Senior Men’s Cricket Selection Committee.",
  ),

  Question(
  questionText: "Which country's men's hockey team won the second FIH Hockey Pro League title?",
  options: [
  "India",
  "Netherlands",
  "Australia",
  "Spain"
  ],
  correctAnswerIndex: 1,
  explanation: "Netherlands men's team won the second FIH Hockey Pro League title.",
  ),

  Question(
  questionText: "Who claimed victory at the British Grand Prix 2023?",
  options: [
  "Lando Norris",
  "Lewis Hamilton",
  "Max Verstappen",
  "Lakshya Sen"
  ],
  correctAnswerIndex: 2,
  explanation: "Max Verstappen claimed victory at the British Grand Prix 2023.",
  ),

  Question(
  questionText: "Who won the men’s singles title at the 58th Canada Open 2023?",
  options: [
  "Lakshya Sen",
  "Li Shi Feng",
  "Anthony Gordon",
  "Tamim Iqbal"
  ],
  correctAnswerIndex: 0,
  explanation: "Lakshya Sen won the men’s singles title at the 58th Canada Open 2023.",
  ),

  Question(
  questionText: "Which team emerged victorious in the Under-21 European Championship final?",
  options: [
  "Spain",
  "Italy",
  "England",
  "Netherlands"
  ],
  correctAnswerIndex: 2,
  explanation: "England emerged victorious in the Under-21 European Championship final against Spain.",
  ),

  Question(
  questionText: "In which country was the 34th International Biology Olympiad held?",
  options: [
  "India",
  "UAE",
  "Canada",
  "Australia"
  ],
  correctAnswerIndex: 1,
  explanation: "The 34th International Biology Olympiad was held in Al Ain, UAE.",
  ),

  Question(
  questionText: "How many medals did India win in the 2023 World Archery Youth Championships?",
  options: [
  "5",
  "9",
  "11",
  "15"
  ],
  correctAnswerIndex: 2,
  explanation: "India secured 11 medals in the 2023 World Archery Youth Championships.",
  ),

  Question(
  questionText: "Why did Australia withdraw as the host of the 2026 Commonwealth Games?",
  options: [
  "Security concerns",
  "COVID-19 pandemic",
  "Cost escalation",
  "Lack of infrastructure"
  ],
  correctAnswerIndex: 2,
  explanation: "Australia withdrew as the host of the 2026 Commonwealth Games due to a massive increase in the projected cost of staging the event.",
  ),
  Question(
  questionText: "Who clinched the gold medal in Para Athletics World Championships in Paris?",
  options: [
  "Ajeet Singh",
  "Prithviraj Tondaiman",
  "Harmanpreet Kaur",
  "Max Verstappen"
  ],
  correctAnswerIndex: 0,
  explanation: "Ajeet Singh clinched the gold medal in the Men’s javelin throw F46 category at the Para Athletics World Championships in Paris.",
  ),

  Question(
  questionText: "From which Indian state does Prithviraj Tondaiman, who won a bronze in trap at Shotgun World Cup, hail?",
  options: [
  "Maharashtra",
  "Karnataka",
  "West Bengal",
  "Rajasthan"
  ],
  correctAnswerIndex: 0,
  explanation: "Prithviraj Tondaiman, who won a bronze in trap at Shotgun World Cup, hails from Maharashtra.",
  ),

  Question(
  questionText: "How many medals did the Indian contingent win at the 25th Asian Athletics Championship 2023?",
  options: [
  "15",
  "20",
  "25",
  "27"
  ],
  correctAnswerIndex: 3,
  explanation: "The Indian contingent won 27 medals at the 25th Asian Athletics Championship 2023 in Bangkok, Thailand.",
  ),

  Question(
  questionText: "What Guinness world record did Satwiksairaj Rankireddy set in badminton?",
  options: [
  "Longest rally",
  "Fastest hit",
  "Highest jump",
  "Most consecutive wins"
  ],
  correctAnswerIndex: 1,
  explanation: "Satwiksairaj Rankireddy set a new Guinness world record for the fastest hit by a male player in badminton at the Korea Open 2023.",
  ),

  Question(
  questionText: "Which channel secured the television rights for the FIFA Women’s World Cup 2023?",
  options: [
  "Star Sports",
  "ESPN",
  "DD Sports",
  "Sony Six"
  ],
  correctAnswerIndex: 2,
  explanation: "DD Sports secured the television rights for the FIFA Women’s World Cup 2023.",
  ),

  Question(
  questionText: "Who won the Super GM chess tournament in Hungary in 2023?",
  options: [
  "Viswanathan Anand",
  "Magnus Carlsen",
  "R Praggnanandhaa",
  "Hikaru Nakamura"
  ],
  correctAnswerIndex: 2,
  explanation: "R Praggnanandhaa, the 17-year-old Indian Grandmaster, won the Super GM chess tournament in Hungary in 2023.",
  ),

  Question(
  questionText: "Which cricketer became the 10th in history to make 500 international appearances?",
  options: [
  "Sachin Tendulkar",
  "Ricky Ponting",
  "AB de Villiers",
  "Virat Kohli"
  ],
  correctAnswerIndex: 3,
  explanation: "Virat Kohli became the 10th cricketer in history to make 500 international appearances.",
  ),

  Question(
  questionText: "Which team won the Duleep Trophy with a 75-run victory?",
  options: [
  "North Zone",
  "East Zone",
  "West Zone",
  "South Zone"
  ],
  correctAnswerIndex: 3,
  explanation: "South Zone won the Duleep Trophy with a 75-run victory at M. Chinnaswamy Stadium, Bengaluru.",
  ),

  Question(
  questionText: "Who was appointed as the brand ambassador of ICC World Cup 2023?",
  options: [
  "Amitabh Bachchan",
  "Shah Rukh Khan",
  "Aamir Khan",
  "Deepika Padukone"
  ],
  correctAnswerIndex: 1,
  explanation: "Shah Rukh Khan was appointed as the brand ambassador of ICC World Cup 2023.",
  ),

  Question(
  questionText: "What milestone did Virat Kohli achieve during India’s second Test against West Indies?",
  options: [
  "200 centuries",
  "500 international appearances",
  "10000 Test runs",
  "50 Test centuries"
  ],
  correctAnswerIndex: 1,
  explanation: "Virat Kohli achieved the milestone of making 500 international appearances during India’s second Test against West Indies.",
  ),
  Question(
  questionText: "What significant growth and unity did the NATO summit in Vilnius, Lithuania, achieve?",
  options: [
  "Symbolic expansion and resolve against aggression.",
  "Strategic success in Russia's invasion of Ukraine.",
  "Two new members joining the alliance.",
  "A decrease in NATO's unity."
  ],
  correctAnswerIndex: 0,
  explanation: "The NATO summit achieved symbolic expansion and resolve against aggression."
  ),

  Question(
  questionText: "Who was elected as the chair of the 13th Ministerial Conference of the World Trade Organization (WTO)?",
  options: [
  "Dr. Thani Al Zeyoudi",
  "Jyotiraditya M Scindia",
  "Bhupendrabhai Patel",
  "Lt Gen M U Nair"
  ],
  correctAnswerIndex: 0,
  explanation: "Dr. Thani Al Zeyoudi was elected as the chair of the 13th Ministerial Conference of the WTO."
  ),

  Question(
  questionText: "Which theme was associated with the Heli Summit 2023?",
  options: [
  "Reaching the Last Mile: Regional Connectivity through Helicopters & Small Aircraft",
  "Sustainable Development in Aviation",
  "Advancements in Aerospace Technology",
  "Global Collaboration for Air Transport"
  ],
  correctAnswerIndex: 0,
  explanation: "The theme of the Heli Summit 2023 was 'Reaching the Last Mile: Regional Connectivity through Helicopters & Small Aircraft.'"
  ),

  Question(
  questionText: "Where was the SemiconIndia 2023 Exhibition inaugurated?",
  options: [
  "Gandhinagar, Gujarat",
  "Abu Dhabi",
  "Khajuraho",
  "Vilnius, Lithuania"
  ],
  correctAnswerIndex: 0,
  explanation: "The SemiconIndia 2023 Exhibition was inaugurated in Gandhinagar, Gujarat."
  ),

  Question(
  questionText: "On which day does the International Day of Cooperatives occur?",
  options: [
  "July 1st or First Saturday of July",
  "July 10th",
  "July 30th",
  "July 15th"
  ],
  correctAnswerIndex: 0,
  explanation: "The International Day of Cooperatives occurs on July 1st or the First Saturday of July."
  ),

  Question(
  questionText: "What was the theme of World Population Day in July 2023?",
  options: [
  "Unleashing the power of gender equality: Uplifting the voices of women and girls to unlock our world’s infinite possibilities",
  "One life, one liver",
  "Forests and Livelihoods: Sustaining People and Planet",
  "30 by 30"
  ],
  correctAnswerIndex: 0,
  explanation: "The theme of World Population Day was 'Unleashing the power of gender equality: Uplifting the voices of women and girls to unlock our world’s infinite possibilities.'"
  ),

  Question(
  questionText: "Who was appointed as the new National Cybersecurity Coordinator?",
  options: [
  "Lt Gen M U Nair",
  "Dr. Thani Al Zeyoudi",
  "Jyotiraditya M Scindia",
  "Bhupendrabhai Patel"
  ],
  correctAnswerIndex: 0,
  explanation: "Lt Gen M U Nair was appointed as the new National Cybersecurity Coordinator."
  ),

  Question(
  questionText: "Where is the seventh edition of the Japan-India Maritime Exercise 2023 (JIMEX 23) set to take place?",
  options: [
  "Visakhapatnam, India",
  "Kochi",
  "Jakarta",
  "Ulaanbaatar, Mongolia"
  ],
  correctAnswerIndex: 0,
  explanation: "The seventh edition of JIMEX 23 is set to take place in Visakhapatnam, India."
  ),

  Question(
  questionText: "What was the focus of Operation Broader Sword conducted by India and the United States?",
  options: [
  "Preventing the illegal shipment of pharmaceuticals, devices, and precursor chemicals",
  "Anti-terrorism operations",
  "Cybersecurity",
  "Counter-narcotics operations"
  ],
  correctAnswerIndex: 0,
  explanation: "Operation Broader Sword aimed at preventing the illegal shipment of pharmaceuticals, devices, and precursor chemicals."
  ),

  Question(
  questionText: "What did the Defence Acquisition Council (DAC) approve on July 13, 2023?",
  options: [
  "Procurement of 26 Rafale Marine aircraft and additional Scorpene submarines",
  "Development of a new cybersecurity strategy",
  "Deployment of advanced missile defense systems",
  "Expansion of the naval fleet"
  ],
  correctAnswerIndex: 0,
  explanation: "The DAC approved the procurement of 26 Rafale Marine aircraft and additional Scorpene submarines."
  ),
  Question(
  questionText: "What did Sarbananda Sonowal inaugurate with the aim of fostering digitalization in the maritime domain?",
  options: [
  "Sagar Sampark - an indigenous Differential Global Navigation Satellite System (DGNSS)",
  "SemiconIndia 2023 Exhibition",
  "Heli Summit 2023",
  "Japan-India Maritime Exercise 2023 (JIMEX 23)"
  ],
  correctAnswerIndex: 0,
  explanation: "Sarbananda Sonowal inaugurated Sagar Sampark - an indigenous Differential Global Navigation Satellite System (DGNSS)."
  ),

  Question(
  questionText: "Where is the India-Mongolia joint military exercise 'Nomadic Elephant' set to occur?",
  options: [
  "Ulaanbaatar, Mongolia",
  "Visakhapatnam, India",
  "Jakarta",
  "Gulf of Oman"
  ],
  correctAnswerIndex: 0,
  explanation: "The India-Mongolia joint military exercise 'Nomadic Elephant' is set to occur in Ulaanbaatar, Mongolia."
  ),

  Question(
  questionText: "Which countries are participating in the joint naval exercise called 'Security Bond-2023' in the Gulf of Oman?",
  options: [
  "China, Russia, and Iran",
  "India and the United States",
  "Japan and India",
  "North Korea and South Korea"
  ],
  correctAnswerIndex: 0,
  explanation: "'Security Bond-2023' is a joint naval exercise initiated by China, Russia, and Iran in the Gulf of Oman."
  ),

  Question(
  questionText: "What is the ongoing military operation in Jammu-Kashmir to neutralize hiding terrorists?",
  options: [
  "Operation Trinetra-II",
  "Operation Broader Sword",
  "Operation Nomadic Elephant",
  "Operation Security Bond"
  ],
  correctAnswerIndex: 0,
  explanation: "The ongoing military operation in Jammu-Kashmir to neutralize hiding terrorists is Operation Trinetra-II."
  ),

  Question(
  questionText: "Which naval ships reached Jakarta to take part in a bilateral maritime exercise alongside the Indonesian Naval Forces?",
  options: [
  "INS Sahyadri and INS Kolkata",
  "INS Kirpan and INS Vikrant",
  "HMAS Canberra and USS John C. Stennis",
  "HMS Queen Elizabeth and FNS Charles de Gaulle"
  ],
  correctAnswerIndex: 0,
  explanation: "INS Sahyadri and INS Kolkata reached Jakarta to take part in a bilateral maritime exercise alongside the Indonesian Naval Forces."
  ),


  Question(
  questionText: "Which country's Defence Minister signed a Letter of Intent (LoI) with HAL for the acquisition of Light and Medium Utility Helicopters?",
  options: [
  "Argentina",
  "Vietnam",
  "Mongolia",
  "Iran"
  ],
  correctAnswerIndex: 0,
  explanation: "The Defence Minister of Argentina signed a Letter of Intent (LoI) with HAL for the acquisition of Light and Medium Utility Helicopters."
  ),

  Question(
  questionText: "What ancient shipbuilding technique is being revived through a Memorandum of Understanding (MoU) between the Ministry of Culture and the Indian Navy?",
  options: [
  "Tankai method",
  "Stitched shipbuilding method",
  "Plank-on-frame method",
  "Ferrocement method"
  ],
  correctAnswerIndex: 0,
  explanation: "The MoU aims to revive the ancient 'Tankai method' of shipbuilding."
  ),

  Question(
  questionText: "What is the name of the quiz launched by the Indian Navy and the Navy Welfare and Wellness Association (NWWA) to unite youth from diverse regions?",
  options: [
  "G20 THINQ",
  "Naval Insight Challenge",
  "Sea Quest",
  "Maritime Minds"
  ],
  correctAnswerIndex: 0,
  explanation: "The quiz launched by the Indian Navy and NWWA is called 'G20 THINQ.'"
  ),

  Question(
  questionText: "What significant move did India make regarding INS Kirpan in July 2023?",
  options: [
  "Decommissioned and handed over to the Vietnam People’s Navy",
  "Upgraded with advanced technology",
  "Sent on a special mission to Antarctica",
  "Transferred to the Indian Coast Guard"
  ],
  correctAnswerIndex: 0,
  explanation: "India decommissioned and handed over INS Kirpan to the Vietnam People’s Navy."
  ),

  Question(
  questionText: "Which country's largest bilateral military exercise is Talisman Sabre 2023?",
  options: [
  "Australia",
  "India",
  "United States",
  "Japan"
  ],
  correctAnswerIndex: 0,
  explanation: "Talisman Sabre 2023 is Australia's largest bilateral military exercise with the United States."
  ),

  Question(
  questionText: "Where was the newly constructed National Martyr’s Memorial unveiled by the Director General of Railway Protection Force?",
  options: [
  "Jagjivan RPF Academy, Lucknow, Uttar Pradesh",
  "Delhi Junction Railway Station",
  "Victoria Terminus, Mumbai",
  "Howrah Junction, Kolkata"
  ],
  correctAnswerIndex: 0,
  explanation: "The National Martyr’s Memorial was unveiled at Jagjivan RPF Academy, Lucknow, Uttar Pradesh."
  ),

  Question(
  questionText: "Which Central Armed Police Force observed its 85th Raising Day on July 27, 2023?",
  options: [
  "Central Reserve Police Force (CRPF)",
  "Border Security Force (BSF)",
  "Indo-Tibetan Border Police (ITBP)",
  "Central Industrial Security Force (CISF)"
  ],
  correctAnswerIndex: 0,
  explanation: "The Central Reserve Police Force (CRPF) observed its 85th Raising Day on July 27, 2023."
  ),

  Question(
  questionText: "Which space-tech startup received a significant grant from the Ministry of Defence for developing satellites for the Indian Air Force?",
  options: [
  "Pixxel",
  "ISRO",
  "Astroscale",
  "Skyroot Aerospace"
  ],
  correctAnswerIndex: 0,
  explanation: "Pixxel, a space-tech startup, received a significant grant from the Ministry of Defence for developing satellites for the Indian Air Force."
  ),

  Question(
  questionText: "Who was honored with the PEN Pinter Prize 2023 for children's writing?",
  options: [
  "Michael Rosen",
  "Roald Dahl",
  "J.K. Rowling",
  "Enid Blyton"
  ],
  correctAnswerIndex: 0,
  explanation: "Michael Rosen, a renowned children's writer, was honored with the PEN Pinter Prize 2023."
  ),

  Question(
  questionText: "What is the focus of the 'Yellow Ribbon' campaign launched by the Ministry of Defence?",
  options: [
  "Mental health support for armed forces personnel",
  "Raising awareness about road safety",
  "Promoting environmental conservation",
  "Campaign against substance abuse"
  ],
  correctAnswerIndex: 0,
  explanation: "The 'Yellow Ribbon' campaign focuses on mental health support for armed forces personnel."
  ),

  Question(
  questionText: "What was the theme of World Hepatitis Day 2023?",
  options: [
  "Find the Missing Millions",
  "Hepatitis-free Future",
  "No Hepatitis. No Stigma.",
  "Prevent Hepatitis. Act Now."
  ],
  correctAnswerIndex: 0,
  explanation: "The theme of World Hepatitis Day 2023 was 'Find the Missing Millions.'"
  ),

  Question(
  questionText: "Which state in India launched the 'My Zone, My Safety' campaign to enhance public safety in public transport buses?",
  options: [
  "Maharashtra",
  "Delhi",
  "Tamil Nadu",
  "Karnataka"
  ],
  correctAnswerIndex: 0,
  explanation: "Maharashtra launched the 'My Zone, My Safety' campaign to enhance public safety in public transport buses."
  ),

  Question(
  questionText: "What is the name of the app launched by the Ministry of Labour & Employment for the welfare of Anganwadi workers and beneficiaries?",
  options: [
  "AnganSafar",
  "AnganVikas",
  "AnganMitram",
  "AnganSuvidha"
  ],
  correctAnswerIndex: 0,
  explanation: "The app launched by the Ministry of Labour & Employment is named 'AnganSafar.'"
  ),

  Question(
  questionText: "What initiative did the Ministry of Jal Shakti launch to promote rainwater harvesting and water conservation?",
  options: [
  "Jal Jeevan Mission",
  "Jal Sakshar Abhiyan",
  "Jal Suraksha Yojana",
  "Jal Shreshta Karyakram"
  ],
  correctAnswerIndex: 0,
  explanation: "The Ministry of Jal Shakti launched the 'Jal Sakshar Abhiyan' initiative to promote rainwater harvesting and water conservation."
  ),

  Question(
  questionText: "Which Indian state/UT became the first to achieve 100% vaccination coverage for the 15-18 age group?",
  options: [
  "Sikkim",
  "Goa",
  "Lakshadweep",
  "Puducherry"
  ],
  correctAnswerIndex: 0,
  explanation: "Lakshadweep became the first Indian state/UT to achieve 100% vaccination coverage for the 15-18 age group."
  ),

  Question(
  questionText: "What initiative did the Ministry of Education launch to promote awareness about road safety among school students?",
  options: [
  "Raksha Path",
  "Suraksha Mitra",
  "Road Suraksha Sathi",
  "Safe School Routes"
  ],
  correctAnswerIndex: 0,
  explanation: "The Ministry of Education launched the 'Raksha Path' initiative to promote awareness about road safety among school students."
  ),

  Question(
  questionText: "Who won the Men's Singles title at the French Open 2023?",
  options: [
  "Novak Djokovic",
  "Rafael Nadal",
  "Stefanos Tsitsipas",
  "Matteo Berrettini"
  ],
  correctAnswerIndex: 0,
  explanation: "Novak Djokovic won the Men's Singles title at the French Open 2023."
  ),

  Question(
  questionText: "Which Indian cricketer became the highest run-scorer in T20 internationals during the India vs. West Indies series in July 2023?",
  options: [
  "Virat Kohli",
  "Rohit Sharma",
  "KL Rahul",
  "Shikhar Dhawan"
  ],
  correctAnswerIndex: 0,
  explanation: "Virat Kohli became the highest run-scorer in T20 internationals during the India vs. West Indies series in July 2023."
  ),

  Question(
  questionText: "Who won the Women's Singles title at Wimbledon 2023?",
  options: [
  "Ashleigh Barty",
  "Karolina Pliskova",
  "Simona Halep",
  "Serena Williams"
  ],
  correctAnswerIndex: 0,
  explanation: "Ashleigh Barty won the Women's Singles title at Wimbledon 2023."
  ),

  Question(
  questionText: "Which Indian wrestler won a gold medal at the Asian Wrestling Championships 2023?",
  options: [
  "Bajrang Punia",
  "Vinesh Phogat",
  "Sakshi Malik",
  "Ravi Dahiya"
  ],
  correctAnswerIndex: 0,
  explanation: "Bajrang Punia won a gold medal at the Asian Wrestling Championships 2023."
  ),

  Question(
  questionText: "Who became the first Indian woman cricketer to score 10,000 runs in international cricket?",
  options: [
  "Mithali Raj",
  "Harmanpreet Kaur",
  "Smriti Mandhana",
  "Jhulan Goswami"
  ],
  correctAnswerIndex: 0,
  explanation: "Mithali Raj became the first Indian woman cricketer to score 10,000 runs in international cricket."
  ),

  Question(
  questionText: "Which Indian athlete won a gold medal in the javelin throw at the Paris Diamond League 2023?",
  options: [
  "Neeraj Chopra",
  "Annu Rani",
  "Dutee Chand",
  "Hima Das"
  ],
  correctAnswerIndex: 0,
  explanation: "Neeraj Chopra won a gold medal in the javelin throw at the Paris Diamond League 2023."
  ),

  Question(
  questionText: "Who won the Men's Singles title at the US Open 2023?",
  options: [
  "Daniil Medvedev",
  "Novak Djokovic",
  "Alexander Zverev",
  "Stefanos Tsitsipas"
  ],
  correctAnswerIndex: 0,
  explanation: "Daniil Medvedev won the Men's Singles title at the US Open 2023."
  ),

  Question(
  questionText: "Which Indian boxer won a gold medal at the AIBA World Boxing Championships 2023?",
  options: [
  "Mary Kom",
  "Manju Rani",
  "Pooja Rani",
  "Lovlina Borgohain"
  ],
  correctAnswerIndex: 0,
  explanation: "Mary Kom won a gold medal at the AIBA World Boxing Championships 2023."
  ),


  Question(
  questionText: "What is the primary objective of Elon Musk's artificial intelligence startup, xAI?",
  options: [
  "To disrupt the dominance of major technology corporations.",
  "To support OpenAI's ChatGPT.",
  "To focus on space exploration.",
  "To develop electric vehicles."
  ],
  correctAnswerIndex: 0,
  explanation: "The primary objective of xAI is to disrupt the dominance of major technology corporations in the AI industry."
  ),

  Question(
  questionText: "What is the Euclid Space Telescope designed to do?",
  options: [
  "Revolutionize our understanding of the universe.",
  "Explore the solar system.",
  "Create a three-dimensional map of Earth.",
  "Study the atmosphere of Mars."
  ],
  correctAnswerIndex: 0,
  explanation: "The Euclid Space Telescope is designed to revolutionize our understanding of the universe by creating a detailed three-dimensional map of billions of galaxies."
  ),

  Question(
  questionText: "What is the focus of the Ministry of New and Renewable Energy Sources in India's draft and roadmap for Green Hydrogen Ecosystem?",
  options: [
  "Research and development priorities for manufacturing and storing Green Hydrogen.",
  "Reducing carbon emissions from traditional energy sources.",
  "Exploring nuclear energy alternatives.",
  "Promoting fossil fuel consumption."
  ],
  correctAnswerIndex: 0,
  explanation: "The focus is on outlining research and development priorities for manufacturing and storing Green Hydrogen."
  ),

  Question(
  questionText: "Who successfully tested the service module propulsion system for the Gaganyaan Human Spaceflight Mission?",
  options: [
  "ISRO.",
  "NASA.",
  "SpaceX.",
  "ESA."
  ],
  correctAnswerIndex: 0,
  explanation: "ISRO successfully tested the service module propulsion system for the Gaganyaan Human Spaceflight Mission."
  ),

  Question(
  questionText: "Which IT company joined the XR Startup Program in collaboration with Meta and the MeitY Startup Hub?",
  options: [
  "HCL Tech.",
  "SpaceX.",
  "Twitter.",
  "Google."
  ],
  correctAnswerIndex: 0,
  explanation: "HCL Tech joined the XR Startup Program to bolster and accelerate extended reality (XR) technology startups in India."
  ),

  Question(
  questionText: "What did Elon Musk replace Twitter's iconic bird logo with?",
  options: [
  "'X'.",
  "'T'.",
  "'M'.",
  "'B'."
  ],
  correctAnswerIndex: 0,
  explanation: "Elon Musk replaced Twitter's iconic bird logo with the letter 'X'."
  ),



  Question(
  questionText: "Who authored the book 'Maya, Modi, Azad: Dalit Politics in the Time of Hindutva'?",
  options: [
  "Sudha Pai & Sajjan Kumar.",
  "Anita Bharat Shah.",
  "Abhishek Choudhary.",
  "T.N. Seshan."
  ],
  correctAnswerIndex: 0,
  explanation: "The book is authored by Sudha Pai and Sajjan Kumar, titled 'Maya, Modi, Azad: Dalit Politics in the Time of Hindutva.'"
  ),

  Question(
  questionText: "Which Indian state recently intensified efforts to curb poaching in the Mukurthi National Park?",
  options: [
  "Tamil Nadu.",
  "Kerala.",
  "Maharashtra.",
  "Andhra Pradesh."
  ],
  correctAnswerIndex: 0,
  explanation: "The Tamil Nadu Forest Department recently intensified efforts to curb poaching in the Mukurthi National Park."
  ),

  Question(
  questionText: "Who released the book 'Dr. APJ Abdul Kalam: Memories Never Die'?",
  options: [
  "Amit Shah.",
  "Narendra Modi.",
  "Arvind Kejriwal.",
  "Ranjit Pratap."
  ],
  correctAnswerIndex: 0,
  explanation: "The book 'Dr. APJ Abdul Kalam: Memories Never Die' was released by Union Home Minister Amit Shah."

  ),

  Question(
  questionText: "What event does the full moon in July 2023 commemorate?",
  options: [
  "Buck Moon.",
  "Thunder Moon.",
  "Berry Moon.",
  "Salmon Moon."
  ],
  correctAnswerIndex: 0,
  explanation: "The full moon in July 2023 is called the Buck Moon, named after the full growth of male deer antlers at this time of year."
  ),

  Question(
  questionText: "Who is honored by Google Doodle on its homepage for the 204th birthday celebration?",
  options: [
  "Eunice Newton Foote.",
  "Asma Hamza.",
  "Dalai Lama.",
  "J. Robert Oppenheimer."
  ],
  correctAnswerIndex: 0,
  explanation: "Google Doodle honors Eunice Newton Foote, an American scientist, on her 204th birthday for her contributions to climate science."

  ),

  Question(
  questionText: "What is the Guinness World record set by India's G-20 Presidency?",
  options: [
  "Largest display of Lambani items.",
  "Fastest rocket launch.",
  "Longest space mission.",
  "Most advanced AI system."
  ],
  correctAnswerIndex: 0,
  explanation: "India's G-20 Presidency set a Guinness World record for the largest display of Lambani items, showcasing India's rich heritage."
  ),

  Question(
  questionText: "What is the focus of Microsoft researchers' achievement in the field of quantum computing?",
  options: [
  "Creation of Majorana zero modes.",
  "Development of traditional computers.",
  "Exploration of deep learning algorithms.",
  "Advancement in space exploration."
  ],
  correctAnswerIndex: 0,
  explanation: "Microsoft researchers achieved a milestone in quantum computing by making progress in the creation of Majorana zero modes."
  ),

  Question(
  questionText: "What is the primary aim of the Protection of Plant Varieties and Farmers’ Right Authority (PPVFRA) in India?",
  options: [
  "Protection of plant varieties and farmers' rights.",
  "Encouraging deforestation.",
  "Promoting chemical agriculture.",
  "Controlling wildlife conservation."
  ],
  correctAnswerIndex: 0,
  explanation: "The PPVFRA provides an effective system for the protection of plant varieties, the rights of farmers, and plant breeders, and encourages the development of new plant varieties."
  ),

  Question(
  questionText: "Which Union Territory launched the Mobile-Dost App for mobile-based delivery of citizen-centric services?",
  options: [
  "Jammu and Kashmir.",
  "Puducherry.",
  "Chandigarh.",
  "Daman and Diu."
  ],
  correctAnswerIndex: 0,
  explanation: "Jammu and Kashmir launched the Mobile-Dost App as an effective initiative for mobile-based delivery of citizen-centric services."
  ),

  Question(
  questionText: "What is the historic significance of S Phangnon Konyak's nomination as a vice chairperson of Rajya Sabha?",
  options: [
  "First Naga woman MP.",
  "First Dalit woman MP.",
  "First woman President of India.",
  "First transgender MP."
  ],
  correctAnswerIndex: 0,
  explanation: "S Phangnon Konyak's nomination is historic as she is the first Naga woman MP to be nominated as a vice chairperson of Rajya Sabha."
  ),

  Question(
  questionText: "What is the purpose of Delhi's first 'water ATM' unveiled by Chief Minister Arvind Kejriwal?",
  options: [
  "Offer water access in regions without piped supply.",
  "Provide cash withdrawal services.",
  "Sell traditional Indian snacks.",
  "Promote water wastage."
  ],
  correctAnswerIndex: 0,
  explanation: "The water ATM aims to offer water access in regions without piped supply, reducing reliance on water tankers."

  ),

  Question(
  questionText: "What is the focus of India's first Cannabis Medicine Project initiated by CSIR-IIIM Jammu?",
  options: [
  "Harnessing the potential of cannabis for medical benefits.",
  "Promoting recreational use of cannabis.",
  "Banning the use of cannabis.",
  "Exploring alternative energy sources."
  ],
  correctAnswerIndex: 0,
  explanation: "The Cannabis Medicine Project aims to harness the potential of cannabis for the benefit of humanity, particularly for patients with neuropathies, cancer, and epilepsy."
  ),
  Question(
  questionText: "Who was APJ Abdul Kalam, and what event is mentioned in the provided text?",
  options: [
  "APJ Abdul Kalam was a renowned scientist, and the text mentions his death anniversary.",
  "APJ Abdul Kalam was a politician, and the text discusses his achievements in office.",
  "APJ Abdul Kalam was a famous artist, and the text highlights an exhibition in his honor.",
  "APJ Abdul Kalam was an athlete, and the text covers his sports career."
  ],
  correctAnswerIndex: 0,
  explanation: "APJ Abdul Kalam was a renowned scientist, and the text mentions his death anniversary.",
  ),

  Question(
  questionText: "What is the Batagaika crater, and where is it located?",
  options: [
  "The Batagaika crater is a volcano in Russia's Far East.",
  "The Batagaika crater is a permafrost crater in Russia's Far East.",
  "The Batagaika crater is a canyon in Siberia.",
  "The Batagaika crater is an ancient ocean in the Himalayas."
  ],
  correctAnswerIndex: 1,
  explanation: "The Batagaika crater is the world's largest permafrost crater, located in Russia's Far East.",
  ),

  Question(
  questionText: "When is the Mount Kailash View Point from India expected to be accessible?",
  options: [
  "By September",
  "By December",
  "By January",
  "By March"
  ],
  correctAnswerIndex: 0,
  explanation: "The Mount Kailash View Point from India is expected to be accessible by September.",
  ),

  Question(
  questionText: "Which goddess is the Machail Mata Yatra dedicated to?",
  options: [
  "Durga",
  "Lakshmi",
  "Saraswati",
  "Parvati"
  ],
  correctAnswerIndex: 0,
  explanation: "The Machail Mata Yatra is dedicated to goddess Durga, also known as 'Kaali' or 'Chandi'.",
  ),

  Question(
  questionText: "What groundbreaking discovery is mentioned regarding the Himalayas?",
  options: [
  "Discovery of ancient fossils",
  "Discovery of a new species",
  "Discovery of river droplets from 600 million years ago",
  "Discovery of a hidden temple"
  ],
  correctAnswerIndex: 2,
  explanation: "Scientists found water droplets in rocks from the Himalayas believed to be from an ancient ocean 600 million years ago.",
  ),




  Question(
  questionText: "Who is the Executive Director of the International Sports Press Association?",
  options: [
  "Dave Goren",
  "Greg Barclay",
  "Marco Lambertini",
  "Tedros Adhanom"
  ],
  correctAnswerIndex: 0,
  explanation: "The Executive Director of the International Sports Press Association is Dave Goren.",
  ),

  Question(
  questionText: "When was the Durand Cup established?",
  options: [
  "1924",
  "1937",
  "1954",
  "1988"
  ],
  correctAnswerIndex: 0,
  explanation: "The Durand Cup was established in 1924.",
  ),

  Question(
  questionText: "Which country is set to launch a 6G network and services by 2028?",
  options: [
  "India",
  "China",
  "Japan",
  "South Korea"
  ],
  correctAnswerIndex: 3,
  explanation: "South Korea is set to launch a 6G network and services by 2028.",
  ),




  Question(
  questionText: "Who is the Founder of the World Hindu Congress?",
  options: [
  "Swami Vigyanananda",
  "Jay Shah",
  "Dave Goren",
  "Chris Hipkins"
  ],
  correctAnswerIndex: 0,
  explanation: "The Founder of the World Hindu Congress is Swami Vigyanananda.",
  ),

  Question(
  questionText: "Who is the Director General of The European Space Agency?",
  options: [
  "Josef Aschbacher",
  "Michael S. Dell",
  "Patrick P. Gelsinger",
  "G. Kamala Vardhana Rao"
  ],
  correctAnswerIndex: 0,
  explanation: "The Director General of The European Space Agency is Josef Aschbacher.",
  ),

  Question(
  questionText: "Who are the Founders of Google?",
  options: [
  "Larry Page, Sergey Brin",
  "Mark Zuckerberg",
  "Dave Goren",
  "C Vijayakumar"
  ],
  correctAnswerIndex: 0,
  explanation: "The Founders of Google are Larry Page and Sergey Brin.",
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
    home: july(),
  ));
}

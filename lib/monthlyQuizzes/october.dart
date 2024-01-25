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

class october extends StatefulWidget {
  final String? userIdentifier;

  october({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<october> createState() => _octoberState();
}

class _octoberState extends State<october> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(200, null); // Initialize with the number of questions

  List<Question> _questions = [



  Question(
  questionText: "What is the theme of the Ninth P20 Summit scheduled to take place in New Delhi?",
  options: ["Parliaments for One Earth, One Family, One Future", "Driving Economic Growth through Tourism", "Enhancing Bilateral Relations between India and the UK", "Global Health Action in 2023"],
  correctAnswerIndex: 0,
  explanation: "The theme of the Ninth P20 Summit in New Delhi is 'Parliaments for One Earth, One Family, One Future,' emphasizing the interconnectedness of the world as one family.",
  ),
  Question(
  questionText: "What is the theme of the 16th Urban Mobility India Conference and Exhibition 2023?",
  options: ["Empowering Street Vendors for a Brighter Future", "Innovations in E-commerce Consumer Protection", "Integrated and Resilient Urban Transport", "Achieving Gender Equality through Micro-Credit Schemes"],
  correctAnswerIndex: 2,
  explanation: "The theme of the 16th Urban Mobility India Conference and Exhibition 2023 is 'Integrated and Resilient Urban Transport,' addressing critical aspects of urban transportation.",
  ),
  Question(
  questionText: "What is the primary purpose of PRAGATI, an ICT-based platform chaired by Prime Minister Narendra Modi?",
  options: ["Enhancing educational opportunities", "Reviewing wildlife conservation initiatives", "Coordinating disaster risk reduction", "Streamlining governance and project monitoring"],
  correctAnswerIndex: 3,
  explanation: "PRAGATI, which stands for 'Pro-Active Governance and Timely Implementation,' serves as an ICT-based platform to streamline governance and expedite the implementation of critical projects.",
  ),
  Question(
  questionText: "What groundbreaking developments in naval technology are expected to be showcased at the Naval Innovation and Indigenization Seminar, Swavlamban?",
  options: ["Air-to-Air Missiles", "Autonomous Weaponized Boat Swarms and Autonomous Vessel Underwater (AUV)", "Retirement of MiG-21 fighter jets", "Leadership transition in the Indian Navy"],
  correctAnswerIndex: 1,
  explanation: "The Indian Navy is set to unveil two remarkable platforms at the Swavlamban seminar: the Autonomous Weaponized Boat Swarms and the Autonomous Vessel Underwater (AUV).",
  ),
  Question(
  questionText: "What is the transformative initiative recently undertaken by the Indian Navy to recognize and enhance the professional and personal development of its personnel?",
  options: ["Atmanirbhar Bharat Programs", "Joint Humanitarian Assistance and Disaster Relief Exercise", "Indian Military Heritage Festival", "'360 Degree Appraisal Mechanism'"],
  correctAnswerIndex: 3,
  explanation: "The Indian Navy has initiated the '360 Degree Appraisal Mechanism' to recognize and enhance the professional and personal development of its personnel.",
  ),
  Question(
  questionText: "What groundbreaking development has taken place at the Siachen Glacier, the world's highest battlefield?",
  options: ["Purchase of Unmanned Aerial Vehicles", "Installation of a Mobile Tower", "Participation in Cambrian Patrol Competition", "Military Prowess Showcase in Wales"],
  correctAnswerIndex: 1,
  explanation: "The Siachen Glacier has witnessed the installation of a mobile tower, bringing enhanced mobile communication to soldiers at elevations exceeding 15,500 feet, achieved by the Fire and Fury Corps of the Indian Army in collaboration with Bharat Sanchar Nigam Limited (BSNL).",
  ),
  Question(
  questionText: "What significant event took place on October 20, 2023, for the Indian Navy?",
  options: ["Project Udbhav Launch", "Indian Military Heritage Festival", "Transfer of Yard 12706 (Imphal)", "MILAN-24 Multilateral Naval Exercise"],
  correctAnswerIndex: 2,
  explanation: "The state-of-the-art stealth guided missile destroyer, Yard 12706 (Imphal), was officially transferred to the Indian Navy on October 20, 2023, marking a major milestone in India’s indigenous shipbuilding capabilities.",
  ),
  Question(
  questionText: "What cutting-edge system has Israeli forces introduced to neutralize rocket launchers with remarkable accuracy?",
  options: ["Steel Sting", "Magellan unit", "Iron Sting", "Air Force collaboration"],
  correctAnswerIndex: 2,
  explanation: "Israeli forces have introduced the cutting-edge “Iron Sting” system, designed to neutralize rocket launchers with remarkable accuracy, marking the first-ever use of this technology.",
  ),
  Question(
  questionText: "Where was India's first Vertical Wind Tunnel (VWT) inaugurated by the Indian Army?",
  options: ["Himachal Pradesh", "Gujarat", "Bharuch", "Special Forces Training School"],
  correctAnswerIndex: 0,
  explanation: "The Indian Army inaugurated its first Vertical Wind Tunnel (VWT) at the Special Forces Training School (SFTS) in Himachal Pradesh. This cutting-edge facility provides military trainees with a controlled environment to enhance their Combat Free Fall (CFF) skills by simulating real-life free fall conditions.",
  ),
  Question(
  questionText: "What is the objective of the Indian Army and Indian Air Force contingent's mission to Kazakhstan?",
  options: ["Peacekeeping mission", "Humanitarian aid", "Joint Military Exercise (KAZIND-2023)", "Counter-terrorism operation"],
  correctAnswerIndex: 2,
  explanation: "The contingent from the Indian Army and Indian Air Force is participating in the 7th edition of the Joint Military Exercise 'KAZIND-2023' in Otar, Kazakhstan.",
  ),
  Question(
  questionText: "Which financial institution has introduced the 'Mobile Handheld Device' for its Financial Inclusion customers?",
  options: ["State Bank of India (SBI)", "Reserve Bank of India (RBI)", "YES Bank", "ICICI Bank"],
  correctAnswerIndex: 0,
  explanation: "The State Bank of India (SBI) has introduced the 'Mobile Handheld Device' as a groundbreaking move to enhance accessibility and convenience for its Financial Inclusion customers.",
  ),
  Question(
  questionText: "What sustainability initiative did Coca-Cola India announce, and how is it expected to impact the environment and the Indian consumer market?",
  options: ["Introduction of a new beverage", "Launch of fully recycled PET bottles", "Expansion into the energy sector", "Collaboration with NSDC for skill development"],
  correctAnswerIndex: 1,
  explanation: "Coca-Cola India announced the launch of fully recycled PET bottles for its flagship Coca-Cola brand as part of its sustainability initiative. This move is expected to have a positive impact on both the environment and the Indian consumer market.",
  ),
  Question(
  questionText: "What historic event did Malaysia's royal families recently decide on, and who was elected as the new king?",
  options: [
  "Election of the Prime Minister",
  "Appointment of the Chief Justice",
  "Selection of the new King",
  "Formation of a Constitutional Council"
  ],
  correctAnswerIndex: 2,
  explanation: "Malaysia's royal families recently elected Sultan Ibrahim Iskandar of Johor state as the country's new king.",
  ),
  Question(
  questionText: "What was the reason behind India's increase in net direct tax collections by October 9, 2023?",
  options: ["Rise in corporate taxes", "Decrease in personal income tax revenues", "Decrease in corporate taxes", "Rise in personal income tax revenues"],
  correctAnswerIndex: 3,
  explanation: "India experienced a substantial growth rate of 21.8% in net direct tax collections by October 9, primarily attributed to a 32.5% rise in personal income tax revenues.",
  ),
  Question(
  questionText: "What was the prediction made by the UNCTAD about India's economic growth for 2023 and 2024?",
  options: ["6.3% in 2023, 6.6% in 2024", "6.6% in 2023, 6.2% in 2024", "6.2% in 2023, 6% in 2024", "6% in 2023, 6.3% in 2024"],
  correctAnswerIndex: 1,
  explanation: "The UNCTAD revised India's economic growth forecast to 6.6% in 2023 and projected a slowdown to 6.2% in 2024.",
  ),
  Question(
  questionText: "What sector in India experienced a significant boost in domestic and international demand, reaching a 13-year high in September 2023?",
  options: ["Manufacturing sector", "Services sector", "Agricultural sector", "Retail sector"],
  correctAnswerIndex: 1,
  explanation: "The services sector in India experienced a significant boost in both domestic and international demand, reaching a 13-year high, according to the S&P Global Market Intelligence survey-based Purchasing Managers’ Index (PMI).",
  ),
  Question(
  questionText: "During the April-June quarter of the fiscal year, what was the urban unemployment rate in India as per the Periodic Labour Force Survey by MoSPI?",
  options: ["5.2%", "6.6%", "8.3%", "9.9%"],
  correctAnswerIndex: 1,
  explanation: "In the April-June quarter of the fiscal year, the urban unemployment rate in India dropped to 6.6%, as reported by the Ministry of Statistics and Programme Implementation (MoSPI).",
  ),
  Question(
  questionText: "Which Indian company introduced a maternity insurance plan for its women delivery partners, aiming to provide support during pregnancy?",
  options: ["Tata Motors", "Coca-Cola India", "Swan Energy", "Zomato"],
  correctAnswerIndex: 3,
  explanation: "Zomato introduced a maternity insurance plan for its women delivery partners, marking a supportive initiative for women during pregnancy and the first of its kind in the industry.",
  ),
  Question(
  questionText: "What was the purpose behind Tata Motors' acquisition of a stake in Freight Tiger?",
  options: ["To bolster renewable energy projects", "To enhance the truck and freight ecosystem", "To expand its automotive manufacturing", "To establish a wholly-owned subsidiary"],
  correctAnswerIndex: 1,
  explanation: "Tata Motors' acquisition of a stake in Freight Tiger aimed to reshape the truck and freight ecosystem through end-to-end logistics solutions.",
  ),
  Question(
  questionText: "Which government committee approved the Green Energy Corridor (GEC) Phase-II for a massive renewable energy project in Ladakh?",
  options: ["Cabinet Committee on Economic Affairs (CCEA)", "National Skill Development Corporation (NSDC)", "Union Minister of Commerce & Industry", "Ministry of Skill Development & Entrepreneurship"],
  correctAnswerIndex: 0,
  explanation: "The Cabinet Committee on Economic Affairs (CCEA) sanctioned the Green Energy Corridor (GEC) Phase-II for a 13-gigawatt (GW) Renewable Energy (RE) project in Ladakh.",
  ),
  Question(
  questionText: "Which major conglomerate successfully completed the acquisition of Activision Blizzard, a renowned video game developer?",
  options: ["Coca-Cola India", "Tata Motors", "Microsoft", "Indian Oil Corporation"],
  correctAnswerIndex: 2,
  explanation: "Microsoft completed the acquisition of Activision Blizzard, marking its largest-ever deal valued at dollars 69 billion and a significant entry into the gaming industry.",
  ),
    Question(
  questionText: "Which government initiative aims to issue system-based automatic 'Status Holder' certificates under the Foreign Trade Policy (FTP) 2023?",
  options: ["Cabinet Committee on Economic Affairs (CCEA)", "National Skill Development Corporation (NSDC)", "Union Minister of Commerce & Industry", "Ministry of Skill Development & Entrepreneurship"],
  correctAnswerIndex: 2,
  explanation: "The Union Minister of Commerce & Industry unveiled the initiative to issue system-based automatic 'Status Holder' certificates under the Foreign Trade Policy (FTP) 2023.",
  ),
  Question(
  questionText: "What is the purpose of the newly introduced 'SUGAM REC' mobile application by REC Limited?",
  options: ["To promote renewable energy projects", "To simplify investment in REC's 54EC Capital Gain Tax Exemption Bonds", "To enhance digital innovation in power sector financing", "To support logistic solutions for investors"],
  correctAnswerIndex: 1,
  explanation: "The 'SUGAM REC' mobile application by REC Limited is specifically designed to simplify the investment process for REC's 54EC Capital Gain Tax Exemption Bonds.",
  ),
  Question(
  questionText: "Which public sector company established a wholly-owned subsidiary known as NLC India Green Energy Limited (NIGEL) to focus on renewable energy projects?",
  options: ["Indian Oil Corporation", "Swan Energy", "Tata Motors", "NLC India"],
  correctAnswerIndex: 3,
  explanation: "NLC India, a Navratna public sector company, established NLC India Green Energy Limited (NIGEL) to play a crucial role in India's sustainable energy journey." ,
  ),
  Question(
  questionText: "On what date did Prime Minister Narendra Modi inaugurate the high-tech sports training center for Divyangjan in Gwalior, Madhya Pradesh?",
  options: ["October 2", "October 4", "October 30", "January 22, 2024"],
  correctAnswerIndex: 1,
  explanation: "Prime Minister Narendra Modi inaugurated the high-tech sports training center for Divyangjan in Gwalior, Madhya Pradesh, on October 4th. This initiative aims to provide equal opportunities in sports for individuals with disabilities.",
  ),
  Question(
  questionText: "Which state in India will be the location for the Sarakka Central Tribal University?",
  options: ["Telangana", "Tamil Nadu", "Madhya Pradesh", "Gujarat"],
  correctAnswerIndex: 0,
  explanation: "The Sarakka Central Tribal University, approved by the Union Cabinet, will be located in Telangana, specifically in Mulugu district. The university aims to focus on tribal education and development.",
  ),
  Question(
  questionText: "What is the aim of the Digital India Act 2023, recently introduced by the Ministry of Electronics and Information Technology?",
  options: ["To regulate sports training centers", "To promote Ayurveda", "To facilitate the safe return of citizens", "To govern India's digital realm"],
  correctAnswerIndex: 3,
  explanation: "The Digital India Act 2023 aims to harmonize and consolidate digital laws in India, providing a legal framework to govern the country's digital landscape. It works alongside other key legislation related to digital governance and cybercrime.",
  ),
  Question(
  questionText: "Which ministry organized the inaugural ceremony for the Pacific Asia Travel Association (PATA) Travel Mart 2023 in New Delhi?",
  options: ["Ministry of Tourism", "Ministry of Education", "Ministry of Ayush", "Ministry of Skill Development & Entrepreneurship"],
  correctAnswerIndex: 0,
  explanation: "The Ministry of Tourism, India, organized the inaugural ceremony for the Pacific Asia Travel Association (PATA) Travel Mart 2023 in New Delhi. The event aims to promote tourism and travel in the Asia-Pacific region.",
  ),
  Question(
  questionText: "What does the APAAR ID, known as the 'One Nation One Student ID Card,' initiated by the Ministry of Education and Government of India, aim to centralize?",
  options: ["Sports data", "Academic data", "Tourism information", "Digital laws"],
  correctAnswerIndex: 1,
  explanation: "The APAAR ID, or 'One Nation One Student ID Card,' aims to digitally centralize academic data, including degrees, scholarships, rewards, and other credits for students. This program is an initiative by the Ministry of Education and the Government of India.",
  ),
  Question(
  questionText: "What is the purpose of Operation Ajay, recently launched by India?",
  options: ["To celebrate Ayurveda Day", "To promote digital laws", "To facilitate the safe return of citizens from Israel", "To inaugurate a tribal university"],
  correctAnswerIndex: 2,
  explanation: "Operation Ajay is a dedicated initiative to facilitate the safe return of Indian citizens from Israel amidst ongoing developments in the region. It underscores the government's commitment to ensuring the safety and well-being of its nationals abroad.",
  ),
  Question(
  questionText: "Which body, approved by the Union Cabinet under Prime Minister Narendra Modi's leadership, aims to serve as a pivotal mechanism for youth development in India?",
  options: ["National Cooperative Exports Limited", "Mera Yuva Bharat", "IndiaSkills 2023-24", "Khadi and Village Industries Commission"],
  correctAnswerIndex: 1,
  explanation: "The Union Cabinet approved the establishment of 'Mera Yuva Bharat' (MY Bharat), an autonomous body designed to serve as a pivotal mechanism for youth development in India. It aligns with the National Youth Policy and targets individuals between the ages of 15-29.",
  ),
  Question(
  questionText: "What is the significance of the 37th National Games recently inaugurated by Prime Minister Narendra Modi?",
  options: ["It marks Goa's culture and identity", "It celebrates the birth anniversary of Birsa Munda", "It promotes government schemes", "It showcases India's achievements in green energy"],
  correctAnswerIndex: 0,
  explanation: "The 37th National Games were officially inaugurated by Prime Minister Narendra Modi in Goa. The event marked Goa's culture and identity, with Chief Minister Pramod Sawant felicitating the Prime Minister with a traditional Kunbi shawl.",
  ),
  Question(
  questionText: "What does the IndiaSkills 2023-24 program, unveiled by the Ministry of Skill Development & Entrepreneurship, aim to achieve?",
  options: ["To celebrate Ayurveda Day", "To promote digital laws", "To facilitate the safe return of citizens from Israel", "To make giant strides in skill development"],
  correctAnswerIndex: 3,
  explanation: "The IndiaSkills 2023-24 program, unveiled by the Ministry of Skill Development & Entrepreneurship, aims to make giant strides in skill development. It follows India securing the 11th position in the WorldSkills 2022 competition and emphasizes the need for a quantum leap in skill acquisition.",
  ),
  Question(
  questionText: "Which prestigious event did Prime Minister Narendra Modi inaugurate at Bharat Mandapam, Pragati Maidan, New Delhi?",
  options: ["India Mobile Congress", "Energy Technology Meet", "International Film Festival of India", "National Games"],
  correctAnswerIndex: 0,
  explanation: "Prime Minister Narendra Modi inaugurated the 7th Edition of the India Mobile Congress at Bharat Mandapam, Pragati Maidan, New Delhi. The event brought together leading figures from the telecommunications industry to showcase cutting-edge technologies and promote innovation.",
  ),
  Question(
  questionText: "Which city in India recently inaugurated its first solar roof cycling track named Healthway?",
  options: ["Mumbai", "Delhi", "Hyderabad", "Chennai"],
  correctAnswerIndex: 2,
  explanation: "Hyderabad, India, proudly inaugurated its first solar roof cycling track, Healthway.",
  ),
  Question(
  questionText: "Which Central Public Sector Enterprise (CPSE) recently achieved a remarkable feat in the renewable energy sector by securing an 810 MW solar photovoltaic power project in Rajasthan?",
  options: ["ONGC", "NTPC", "BHEL", "NLC India Ltd. (NLCIL)"],
  correctAnswerIndex: 3,
  explanation: "NLC India Ltd. (NLCIL), a Navaratna Central Public Sector Enterprise (CPSE) under the Ministry of Coal, has recently achieved a remarkable feat in the renewable energy sector by securing an 810 MW solar photovoltaic power project awarded by Rajasthan Rajya Vidyut Utpadan Nigam Limited (RRVUNL).",
  ),
  Question(
  questionText: "Under the Swachh Bharat Mission, all 6,650 villages in which region have been declared Open Defecation-Free (ODF) Plus Model?",
  options: ["Uttar Pradesh", "Jharkhand", "Kerala", "Jammu and Kashmir"],
  correctAnswerIndex: 3,
  explanation: "All 6,650 villages of Jammu and Kashmir have been declared Open Defecation-Free (ODF) Plus Model under the Swachh Bharat Mission.",
  ),

  Question(
  questionText: "Who were awarded the Nobel Prize in Physiology or Medicine in 2023 for their pioneering work on mRNA vaccines?",
  options: ["Pierre Agostini and Ferenc Krausz", "Katalin Karikó and Drew Weissman", "Moungi G. Bawendi and Louis E. Brus", "Jon Fosse"],
  correctAnswerIndex: 1,
  explanation: "Katalin Karikó and Drew Weissman were awarded the Nobel Prize in Physiology or Medicine in 2023 for their pioneering work on mRNA vaccines.",
  ),
  Question(
  questionText: "In the Global Hunger Index 2023, what is India's ranking among 125 countries?",
  options: ["81st", "69th", "111th", "60th"],
  correctAnswerIndex: 2,
  explanation: "India is ranked 111th out of 125 countries in the Global Hunger Index 2023, marking a decline from its 107th position in 2022.",
  ),
  Question(
  questionText: "In the Global Remote Work Index (GRWI), what is India's ranking among 108 countries, and how does it compare to the previous year?",
  options: ["64th, a decline of 15 places", "77th, an improvement of 10 places", "55th, no change from the previous year", "88th, a decline of 5 places"],
  correctAnswerIndex: 0,
  explanation: "India is ranked 64th out of 108 countries in the Global Remote Work Index (GRWI), marking a substantial decline of 15 places from the previous year.",
  ),
  Question(
  questionText: "What were the critical mission objectives of the Test Vehicle-D1 (TV-D1) launch for ISRO's Gaganyaan program?",
  options: [
  "To deploy communication satellites",
  "To study planetary atmospheres",
  "To evaluate Crew Escape System (CES)",
  "To test deep space exploration systems"
  ],
  correctAnswerIndex: 2,
  explanation: "The critical mission objectives of the Test Vehicle-D1 (TV-D1) launch included the evaluation of the Crew Escape System (CES) among other goals.",
  ),
  Question(
  questionText: "What is the primary objective of the 'Vision India@2047' plan?",
  options: ["To achieve dollars 30 trillion economy by 2047", "To prevent India from falling into the middle-income trap", "To consult with thought leaders for insights", "To address regional disparities"],
  correctAnswerIndex: 1,
  explanation: "The primary objective of the 'Vision India@2047' plan is to prevent India from falling into the middle-income trap and ensure its development into a developed nation by 2047.",
  ),
  Question(
  questionText: "Who won the Ballon d'Or in 2023?",
  options: ["Cristiano Ronaldo", "Emiliano Martínez", "Aitana Bonmatí", "Lionel Messi"],
  correctAnswerIndex: 3,
  explanation: "Lionel Messi secured his eighth Ballon d'Or in 2023, setting a new record for this prestigious football award.",
  ),
  Question(
  questionText: "Which bank introduced the ONDC Network Gift Card, making it the first bank in India to issue such a card?",
  options: ["State Bank of India (SBI)", "ICICI Bank", "YES Bank", "Union Bank of India"],
  correctAnswerIndex: 2,
  explanation: "YES Bank took a significant leap forward in the digital commerce space by introducing the ONDC Network Gift Card, becoming the first bank in India to issue such a card in partnership with the Open Network for Digital Commerce (ONDC).",
  ),
  Question(
  questionText: "On whose 106th birth anniversary did the Federal Bank inaugurate the 'Mookkannoor Mission' in the village of Mookkannoor, Kerala?",
  options: ["K.P Hormis", "Krishna Srinivasan", "Dr. Michael Debabrata Patra", "Zaakpay"],
  correctAnswerIndex: 0,
  explanation: "The Federal Bank inaugurated the 'Mookkannoor Mission' on the 106th birth anniversary of its visionary founder, K.P Hormis, as a testament to its commitment to community development, environmental sustainability, and digital transformation.",
  ),
  Question(
  questionText: "What is the predicted growth rate for India's economy in FY24, according to the Economic Outlook Survey by FICCI?",
  options: ["5.8%", "6.3%", "6.7%", "7.2%"],
  correctAnswerIndex: 1,
  explanation: "The FICCI Economic Outlook Survey predicts a 6.3% growth rate for India's economy in FY24, based on insights from eminent economists in the banking, financial services, and industry sectors.",
  ),
  Question(
  questionText: "What sustainability initiative did Coca-Cola India recently launch for its flagship Coca-Cola brand?",
  options: ["Plastic Reduction Campaign", "Recycled PET Bottles", "Carbon Neutral Production", "Biodegradable Packaging"],
  correctAnswerIndex: 1,
  explanation: "Coca-Cola India unveiled a sustainability initiative by launching fully recycled PET bottles for its flagship Coca-Cola brand.",
  ),
  Question(
  questionText: "Which country recently inaugurated Southeast Asia's first high-speed railway?",
  options: ["India", "Indonesia", "Pakistan", "Bangladesh"],
  correctAnswerIndex: 1,
  explanation: "Indonesian President Joko Widodo inaugurated Southeast Asia's first high-speed railway, a significant milestone for the nation's infrastructure development.",
  ),
  Question(
  questionText: "What significant step has Sri Lanka taken to revitalize its tourism sector?",
  options: [
  "Waiving visa fees for tourists from seven countries",
  "Renegotiating free trade agreements",
  "Inaugurating a high-speed railway",
  "Imposing sanctions on Chinese companies"
  ],
  correctAnswerIndex: 0,
  explanation: "Sri Lanka has waived visa fees for tourists from seven countries, including India, to revitalize its tourism sector.",
  ),
  Question(
  questionText: "Who has been elected as the Speaker of the House of Representatives in the United States?",
  options: ["Mike Johnson", "Robert Fico", "Sultan Ibrahim Iskandar", "Antonio Guterres"],
  correctAnswerIndex: 0,
  explanation: "Mike Johnson, a Republican Congressman from Louisiana, has been elected as the Speaker of the House of Representatives in the United States.",
  ),
  Question(
  questionText: "What initiative did the Khadi and Village Industries Commission (KVIC) undertake to bridge the generational gap and promote interest in traditional fabric?",
  options: ["National Turmeric Board", "Digital India Act 2023", "PATA Travel Mart 2023", "Revamped Khadi India outlet at IIT Delhi"],
  correctAnswerIndex: 3,
  explanation: "The Khadi and Village Industries Commission (KVIC) inaugurated a revamped Khadi India outlet at the prestigious Indian Institute of Technology (IIT) Campus in Delhi to bridge the generational gap and renew interest in traditional fabric.",
  ),
  Question(
  questionText: "Which state has declared 35% reservation for women in all state government job positions, except for the Forest Department?",
  options: ["Tamil Nadu", "Jammu and Kashmir", "Madhya Pradesh", "Arunachal Pradesh"],
  correctAnswerIndex: 2,
  explanation: "The Madhya Pradesh government has announced a groundbreaking policy to reserve 35% of all state government job positions for women, excluding the Forest Department.",
  ),
  Question(
  questionText: "Who announced the ambitious goals for skill development during the unveiling of the IndiaSkills 2023-24 program?",
  options: ["Dharmendra Pradhan", "Narendra Modi", "Hardeep Singh Puri", "Sarbananda Sonowal"],
  correctAnswerIndex: 0,
  explanation: "Union Minister for Skill Development, Dharmendra Pradhan, announced ambitious goals for skill development during the unveiling of the IndiaSkills 2023-24 program.",
  ),
  Question(
  questionText: "Where was the inaugural edition of the Women Entrepreneurship Platform (WEP) – NITI Aayog State Workshop Series on Enabling Women-led Development through Entrepreneurship organized?",
  options: ["Hyderabad", "Goa", "Uttarakhand", "Bihar"],
  correctAnswerIndex: 1,
  explanation: "The inaugural edition of the Women Entrepreneurship Platform (WEP) – NITI Aayog State Workshop Series was organized at CSIR-National Institute of Oceanography (NIO) Auditorium in Goa.",
  ),
  Question(
  questionText: "Which state has designated the Gangetic Dolphin as its aquatic animal?",
  options: ["Uttar Pradesh", "Rajasthan", "Jharkhand", "Kerala"],
  correctAnswerIndex: 0,
  explanation: "Uttar Pradesh Chief Minister Yogi Adityanath has designated the Gangetic Dolphin as the state's aquatic animal, demonstrating the government's commitment to wildlife conservation and environmental preservation.",
  ),
  Question(
  questionText: "Which state recently became the first in India to include gig workers, such as Swiggy, Zomato, Ola, Uber, and Rapido employees, under the ambit of minimum wages?",
  options: ["Uttar Pradesh", "Jharkhand", "Telangana", "Tamil Nadu"],
  correctAnswerIndex: 1,
  explanation: "Jharkhand is making history by becoming the first state in India to include gig workers, such as Swiggy, Zomato, Ola, Uber, and Rapido employees, under the ambit of minimum wages.",
  ),
  Question(
  questionText: "What initiative has Tamil Nadu Chief Minister M.K. Stalin launched to conserve and protect the endangered Nilgiri Tahr species?",
  options: ["Project GreenGuard", "Project Nilgiri Tahr", "Project Wildlife Shield", "Project EcoSafeguard"],
  correctAnswerIndex: 1,
  explanation: "Tamil Nadu’s Chief Minister M.K. Stalin has launched “Project Nilgiri Tahr,” an initiative aimed at conserving and protecting the endangered Nilgiri Tahr species.",
  ),
  Question(
  questionText: "When will the Hornbill Festival 2023 take place?",
  options: ["November 1 to November 10", "December 1 to December 10", "October 1 to October 10", "September 1 to September 10"],
  correctAnswerIndex: 1,
  explanation: "Hornbill Festival 2023 will start on December 1 and conclude on December 10, promising ten days of cultural immersion and spectacle.",
  ),
  Question(
  questionText: "What was the theme for the Swachhata Hi Seva (SHS) campaign in 2023?",
  options: ["Clean India, Green India", "Swachh Bharat Diwas", "Garbage Free India", "Hygiene for All"],
  correctAnswerIndex: 2,
  explanation: "The theme for SHS-2023 was ‘Garbage Free India,’ with a particular focus on visual cleanliness and the welfare of SafaiMitras (sanitation workers).",
  ),
  Question(
  questionText: "What is the objective of India’s Intensified Mission Indradhanush (IMI) 5.0?",
  options: ["Eradicating malaria", "Improving maternal health", "Enhancing agricultural productivity", "Flagship immunization for children and pregnant women"],
  correctAnswerIndex: 3,
  explanation: "IMI 5.0 is a flagship immunization campaign aimed at reaching children who have missed vaccine doses or fallen behind their vaccination schedule, along with pregnant women across the country.",
  ),
  Question(
  questionText: "What is the purpose of the collaboration between Slice and North East Small Finance Bank (NESFB)?",
  options: ["Revolutionizing agriculture", "Expanding financial inclusion", "Advancing medical research", "Enhancing telecommunications"],
  correctAnswerIndex: 1,
  explanation: "The collaboration between Slice and NESFB aims to revolutionize banking services and expand financial inclusion in India.",
  ),
  Question(
  questionText: "What does the Periodic Labour Force Survey Report for 2022-23, released by the Ministry of Statistics and Programme Implementation, reveal?",
  options: ["Decrease in Female Labor Force Participation Rate", "Rise in infrastructure spending", "KIA's recognition as the world's most punctual airport", "Ranking of retirement income systems"],
  correctAnswerIndex: 1,
  explanation: "The report reveals an increase in the Female Labor Force Participation Rate in India, reaching 37.0% in 2023.",
  ),
  Question(
  questionText: "What does the 'Global Tax Evasion Report 2024' by the European Union Tax Observatory propose?",
  options: ["2% global wealth tax on billionaires", "Global minimum tax on income", "Reducing billionaires' wealth growth", "Tax exemptions for billionaires"],
  correctAnswerIndex: 0,
  explanation: "The report proposes a 2% global wealth tax on billionaires to combat tax evasion and generate revenue.",
  ),
  Question(
  questionText: "Who secured a gold medal in men’s shot put at the Hangzhou Asian Games, becoming the fourth Indian shot putter to retain an Asian Games gold?",
  options: ["Avinash Sable", "Neeraj Chopra", "Tajinderpal Singh Toor", "Jyothi Surekha Vennam"],
  correctAnswerIndex: 2,
  explanation: "Tajinderpal Singh Toor secured a gold medal in men’s shot put at the Hangzhou Asian Games, making him the fourth Indian shot putter in history to successfully retain his Asian Games gold.",
  ),
  Question(
  questionText: "Which Indian athlete won the gold medal in the women’s individual compound archery event at the 19th Asian Games in Hangzhou, securing a hattrick of gold medals?",
  options: ["Jyothi Surekha Vennam", "Ojas Deotale", "P. R. Sreejesh", "David Warner"],
  correctAnswerIndex: 0,
  explanation: "Jyothi Surekha Vennam won the gold medal in the women’s individual compound archery event at the 19th Asian Games in Hangzhou, securing a hattrick of gold medals.",
  ),
  Question(
  questionText: "Where will the 37th edition of the National Games be held in 2023?",
  options: ["Delhi", "Mumbai", "Goa", "Bengaluru"],
  correctAnswerIndex: 2,
  explanation: "The 37th edition of the National Games in 2023 is set to take place in the picturesque state of Goa. This marks the first time Goa has hosted this prestigious competition.",
  ),
  Question(
  questionText: "Who has been officially nominated for the prestigious Men’s Athlete of the Year award for 2023 by World Athletics?",
  options: ["Neeraj Chopra", "Raunak Sadhwani", "Ashutosh Sharma", "Mohammad Shami"],
  correctAnswerIndex: 0,
  explanation: "World Athletics has officially nominated Neeraj Chopra for the prestigious Men’s Athlete of the Year award for 2023, recognizing his remarkable achievements in javelin throwing and gold medal victories at the Olympics and World Championships.",
  ),
  Question(
  questionText: "Who recently became the fastest player to reach 2000 runs in One Day International (ODI) cricket, surpassing the previous record held by Hashim Amla?",
  options: ["Unnati Hooda", "Sumit Antil", "Shubman Gill", "Sundar Singh Gurjar"],
  correctAnswerIndex: 2,
  explanation: "Shubman Gill, the dynamic Indian opener, has become the fastest player to reach 2000 runs in ODI cricket, surpassing the previous record held by Hashim Amla. This achievement adds to his growing reputation as a rising star in the world of cricket.",
  ),
  Question(
  questionText: "What is the purpose of the 'Shramdaan' event organized by the Ministry of Micro, Small and Medium Enterprises (MSME)?",
  options: ["To promote global business investments", "To discuss Afghanistan-related diplomatic matters", "To foster collective responsibility for a 'Garbage Free India'", "To address regional cooperation in the Indian Ocean Rim Association (IORA)"],
  correctAnswerIndex: 2,
  explanation: "The 'Shramdaan' event organized by the Ministry of Micro, Small and Medium Enterprises (MSME) aims to foster a spirit of collective responsibility and action, bringing together participants from various MSME offices nationwide to contribute to a 'Garbage Free India.'",
  ),
  Question(
  questionText: "What significant step has the Uttar Pradesh government taken regarding the Gangetic Dolphin?",
  options: ["Designated it as the state bird", "Declared it extinct", "Designated it as the state aquatic animal", "Implemented conservation programs"],
  correctAnswerIndex: 2,
  explanation: "Uttar Pradesh Chief Minister Yogi Adityanath has designated the Gangetic Dolphin as the state’s aquatic animal, highlighting the importance of conserving these unique creatures and preserving the purity of the rivers and ponds they inhabit.",
  ),
  Question(
  questionText: "What is the primary objective of the 'Yuva Uttarakhand mobile application' launched by the state government of Uttarakhand?",
  options: ["Providing weather updates", "Offering career counseling", "Promoting tourism", "Providing information about self-employment opportunities"],
  correctAnswerIndex: 3,
  explanation: "The primary objective of the 'Yuva Uttarakhand mobile application' is to provide valuable information about self-employment opportunities to the state’s unemployed youth.",
  ),
  Question(
  questionText: "Which Chief Minister recently celebrated the achievements of nine eminent space scientists from the state, including figures like K Sivan and Mylswamy Annadurai?",
  options: ["MK Stalin", "Yogi Adityanath", "Himanta Biswa Sarma", "Hemant Soren"],
  correctAnswerIndex: 0,
  explanation: "Tamil Nadu Chief Minister MK Stalin recently celebrated the achievements of nine eminent space scientists from the state, including renowned figures like K Sivan and Mylswamy Annadurai.",
  ),
  Question(
  questionText: "What percentage of all state government job positions has the Madhya Pradesh government announced to reserve for women?",
  options: ["25%", "30%", "35%", "40%"],
  correctAnswerIndex: 2,
  explanation: "The Madhya Pradesh government has announced a groundbreaking policy to reserve 35% of all state government job positions for women, excluding the Forest Department.",
  ),
  Question(
  questionText: "In which city did the Union Minister for Tribal Affairs, Shri Arjun Munda, inaugurate the 4th Eklavya Model Residential Schools (EMRS) National Cultural & Literary Fest and Kala Utsav-2023?",
  options: ["Chennai", "Dehradun", "Hyderabad", "Guwahati"],
  correctAnswerIndex: 1,
  explanation: "Union Minister for Tribal Affairs, Shri Arjun Munda, inaugurated the 4th Eklavya Model Residential Schools (EMRS) National Cultural & Literary Fest and Kala Utsav-2023 in the picturesque city of Dehradun.",
  ),
  Question(
  questionText: "Which Indian state recently unveiled a 10% reservation quota for people falling under the Economically Weaker Section (EWS) category in the state’s judicial services?",
  options: ["Uttar Pradesh", "Bihar", "Madhya Pradesh", "Assam"],
  correctAnswerIndex: 1,
  explanation: "In a significant move, the Bihar government has unveiled a 10% reservation quota for people falling under the Economically Weaker Section (EWS) category in the state’s judicial services, as well as in government-run law colleges and universities.",
  ),
  Question(
  questionText: "Where did the inaugural edition of the Women Entrepreneurship Platform (WEP) – NITI Aayog State Workshop Series on Enabling Women-led Development through Entrepreneurship take place?",
  options: ["Goa", "Mumbai", "Delhi", "Chandigarh"],
  correctAnswerIndex: 0,
  explanation: "The inaugural edition of the Women Entrepreneurship Platform (WEP) – NITI Aayog State Workshop Series on Enabling Women-led Development through Entrepreneurship was organized at CSIR-National Institute of Oceanography (NIO) Auditorium, Goa.",
  ),







  Question(
  questionText: "Who recently took over as the Deputy Chief of the Naval Staff in the Indian Navy?",
  options: ["Air Chief Marshal VR Chaudhari", "Vice Admiral Tarun Sobti", "Defence Minister Rajnath Singh", "Group Captain Shaliza Dhami"],
  correctAnswerIndex: 1,
  explanation: "Vice Admiral Tarun Sobti recently took over as the Deputy Chief of the Naval Staff in the Indian Navy, bringing a wealth of experience and expertise to his new role.",
  ),

  Question(
  questionText: "Where did India and Bangladesh commence the 11th edition of their annual joint military exercise, SAMPRITI?",
  options: ["Jorhat, Assam", "Meghalaya", "Umroi Cantonment", "Delhi"],
  correctAnswerIndex: 2,
  explanation: "India and Bangladesh commenced the 11th edition of their annual joint military exercise, SAMPRITI, in Umroi, Meghalaya, emphasizing robust bilateral defence cooperation initiatives.",
  ),

  Question(
  questionText: "What plans does the Indian Air Force (IAF) have regarding the iconic MiG-21 fighter jets?",
  options: ["Retiring them and replacing with Mirage 2000", "Upgrading them with advanced avionics", "Replacing them with indigenous Light Combat Aircraft (LCA) Mark 1A", "Deploying them in border security operations"],
  correctAnswerIndex: 2,
  explanation: "The Indian Air Force (IAF) has announced plans to retire its iconic MiG-21 fighter jets and replace them with the indigenous Light Combat Aircraft (LCA) Mark 1A, aligning with the push for self-reliance in defense production.",
  ),

  Question(
  questionText: "What significant delivery did Hindustan Aeronautics Limited (HAL) recently make to the Indian Air Force (IAF)?",
  options: ["Advanced Air Defense Systems", "Unmanned Aerial Vehicles (UAVs)", "Stealth Guided Missile Destroyer", "Light Combat Aircraft (LCA) Tejas Trainer"],
  correctAnswerIndex: 3,
  explanation: "Hindustan Aeronautics Limited (HAL) recently delivered the first trainer version of the Light Combat Aircraft (LCA) Tejas to the Indian Air Force (IAF), playing a crucial role in training IAF pilots.",
  ),

  Question(
  questionText: "What is the significance of the Emergency Procurement Power (EP) granted to India’s armed forces?",
  options: ["Bypassing environmental regulations", "Quickly acquiring essential equipment and technology", "Enhancing diplomatic relations", "Reducing defense budgets"],
  correctAnswerIndex: 1,
  explanation: "The Emergency Procurement Power (EP) granted to India’s armed forces allows them to quickly acquire essential equipment and technology, bypassing the lengthy procurement process.",
  ),

  Question(
  questionText: "Who unveiled the new IAF ensign during the 91st anniversary celebration of the Indian Air Force?",
  options: ["Prime Minister Narendra Modi", "Defence Minister Rajnath Singh", "Air Chief Marshal V.R. Chaudhari", "Group Captain Shaliza Dhami"],
  correctAnswerIndex: 2,
  explanation: "Air Chief Marshal V.R. Chaudhari unveiled the new IAF ensign during the 91st anniversary celebration of the Indian Air Force, including historic firsts like the inclusion of the Air Force crest and the first-ever woman officer to command the Air Force Day Parade, Group Captain Shaliza Dhami.",
  ),

  Question(
  questionText: "Who is the Director General of the United Nations Industrial Development Organization?",
  options: ["Gerd Müller", "Sandeep Varaganti", "Vivek Ram Chaudhari", "Bhupender Yadav"],
  correctAnswerIndex: 0,
  explanation: "Gerd Müller is the Director General of the United Nations Industrial Development Organization, with headquarters in Vienna, Austria, and founded on 17 November 1966."
  ),

  Question(
  questionText: "Who serves as the Chief of the Air Staff of India?",
  options: ["Gerd Müller", "Sandeep Varaganti", "Vivek Ram Chaudhari", "Bhupender Yadav"],
  correctAnswerIndex: 2,
  explanation: "Vivek Ram Chaudhari holds the position of Chief of the Air Staff of India, contributing to the leadership of the Indian Air Force.",
  ),

  Question(
  questionText: "Who is the Chief Minister of Assam?",
  options: ["Gerd Müller", "Sandeep Varaganti", "Vivek Ram Chaudhari", "Himanta Biswa Sarma"],
  correctAnswerIndex: 3,
  explanation: "Himanta Biswa Sarma is the Chief Minister of Assam, playing a crucial role in the state's governance.",
  ),

  Question(
  questionText: "Who is the President of Badminton World Federation?",
  options: ["Poul-Erik Hoyer Larsen", "S. C. Mudgerikar", "Shantanu Narayen", "Chan Chun Sing"],
  correctAnswerIndex: 0,
  explanation: "Poul-Erik Hoyer Larsen serves as the President of Badminton World Federation, headquartered in Kuala Lumpur, Malaysia.",
  ),

  Question(
  questionText: "Who is the Chairman of the State Bank of India (SBI)?",
  options: ["Dinesh Kumar Khara", "S. C. Mudgerikar", "V. Vaidyanathan", "Chan Chun Sing"],
  correctAnswerIndex: 0,
  explanation: "Dinesh Kumar Khara is the Chairman of the State Bank of India (SBI), with its headquarters in Mumbai, Maharashtra, and established in 1955.",
  ),

  Question(
  questionText: "What is the official currency of Thailand?",
  options: ["Indian Rupee", "Thai Baht", "Yen", "Ringgit"],
  correctAnswerIndex: 1,
  explanation: "The official currency of Thailand is the Thai Baht.",
  ),

  Question(
  questionText: "In which year was the Khelo India Programme launched?",
  options: ["2015", "2016", "2017", "2018"],
  correctAnswerIndex: 3,
  explanation: "The Khelo India Programme was launched in the year 2018, aiming to promote sports and fitness in India.",
  ),

  Question(
  questionText: "Who is the Chief Marketing and Communications Officer at Mastercard?",
  options: ["Raja Rajamannar", "V. Vaidyanathan", "S. C. Mudgerikar", "Chan Chun Sing"],
  correctAnswerIndex: 0,
  explanation: "Raja Rajamannar serves as the Chief Marketing and Communications Officer at Mastercard.",
  ),

  Question(
  questionText: "Who is the Chief Executive Officer of ICC?",
  options: ["Geoff Allardice", "S. C. Mudgerikar", "V. Vaidyanathan", "Chan Chun Sing"],
  correctAnswerIndex: 0,
  explanation: "Geoff Allardice holds the position of Chief Executive Officer of the International Cricket Council (ICC).",
  ),

  Question(
  questionText: "What was Anathalavattom Anandan's significant contribution to the CPI(M) party in Kerala?",
  options: [
  "Building the party's trade union base",
  "Leading the legislative assembly",
  "Establishing cultural programs",
  "Overseeing foreign relations"
  ],
  correctAnswerIndex: 0,
  explanation: "Anathalavattom Anandan played a key role in building the trade union base for the CPI(M) party in Kerala, contributing significantly to its organizational strength in the state.",
  ),

  Question(
  questionText: "For which internationally acclaimed films is Terence Davies known?",
  options: [
  "'Distant Voices, Still Lives' and 'The Long Day Closes'",
  "'Inception' and 'Interstellar'",
  "'The Godfather' and 'The Shawshank Redemption'",
  "'Titanic' and 'Avatar'"
  ],
  correctAnswerIndex: 0,
  explanation: "Terence Davies, the British filmmaker, is recognized for his thought-provoking and introspective films, including 'Distant Voices, Still Lives' and 'The Long Day Closes.",
  ),

  Question(
  questionText: "What was the significant contribution of former Chief Election Commissioner (CEC) Manohar Singh Gill?",
  options: [
  "Medical research",
  "Public service and dedication",
  "Environmental conservation",
  "Space exploration"
  ],
  correctAnswerIndex: 1,
  explanation: "Former Chief Election Commissioner (CEC) Manohar Singh Gill left behind a legacy of public service and dedication, serving as a significant figure in both the Indian bureaucracy and politics.",
  ),

  Question(
  questionText: "How was Saleemul Huq known in the field of climate change?",
  options: [
  "Climate revolutionary",
  "Climate denier",
  "Climate skeptic",
  "Climate historian"
  ],
  correctAnswerIndex: 0,
  explanation: "Saleemul Huq, the Bangladeshi-British scientist, gained renown as a 'climate revolutionary' for his efforts to make high-polluting countries help the world’s poorest and most vulnerable states deal with the devastating impacts of climate change.",
  ),

  Question(
  questionText: "What raised concerns about the meteorological event in Bangladesh?",
  options: [
  "Heavy rainfall",
  "Strong winds",
  "Increasing frequency and intensity of weather events",
  "A sudden temperature drop"
  ],
  correctAnswerIndex: 2,
  explanation: "The meteorological event in Bangladesh, specifically Cyclone Hamoon, has raised concerns about the increasing frequency and intensity of such weather events in the region, driven by the impacts of climate change.",
  ),

  Question(
  questionText: "Which department is closely monitoring Cyclone Hamoon?",
  options: [
  "Indian Space Research Organisation (ISRO)",
  "India Meteorological Department (IMD)",
  "National Disaster Response Force (NDRF)",
  "Ministry of Environment, Forest and Climate Change"
  ],
  correctAnswerIndex: 1,
  explanation: "The India Meteorological Department (IMD) is closely monitoring Cyclone Hamoon, the severe weather phenomenon that struck the southeastern coast of Bangladesh.",
  ),

  Question(
  questionText: "Who led the master ceremony at the opening of the Jio MAMI Mumbai Film Festival?",
  options: [
  "Nita Ambani",
  "Mukesh Ambani",
  "Priyanka Chopra Jonas",
  "Amitabh Bachchan"
  ],
  correctAnswerIndex: 2,
  explanation: "The master ceremony at the opening of the Jio MAMI Mumbai Film Festival was led by Priyanka Chopra Jonas, the chairperson of Jio MAMI.",
  ),

  Question(
  questionText: "What is the title of Vivek Agnihotri's latest book, and what movie did he direct in 2023?",
  options: [
  "The Book of Life: My Dance with Buddha for Success; The Kashmir Files",
  "Going Viral – Making of Covaxin: The Inside Story; The Vaccine War",
  "Ashtadhyayi Bhashya; Ramanandacharya Charitam",
  "Maadi; Gadkari"
  ],
  correctAnswerIndex: 0,
  explanation: "Vivek Agnihotri's latest book is titled 'The Book of Life: My Dance with Buddha for Success.' In 2023, he directed the medical drama film 'The Vaccine War,' based on Balram Bhargava's book 'Going Viral – Making of Covaxin: The Inside Story.",
  ),

  Question(
  questionText: "Which three books were released by Prime Minister Modi, providing insights into Hinduism and its traditions?",
  options: [
  "The Reverse Swing: Colonialism to Cooperation; The Book of Life: My Dance with Buddha for Success; Going Viral – Making of Covaxin: The Inside Story",
  "Ashtadhyayi Bhashya; Ramanandacharya Charitam; Bhagwan Shri Krishna ki Rashtraleela",
  "Appalachian Trail; Basohli Pashmina; Breast Cancer Awareness Month",
  "Neev Literature Festival 2023; Krish, Trish, and Baltiboy – Bharat Hain Hum; Cyclone Tej"
  ],
  correctAnswerIndex: 1,
  explanation: "Prime Minister Modi released three books: 'Ashtadhyayi Bhashya,' 'Ramanandacharya Charitam,' and 'Bhagwan Shri Krishna ki Rashtraleela,' offering unique insights into Hinduism and its rich traditions.",
  ),

  Question(
  questionText: "What does the Google Doodle pay tribute to on October 2nd?",
  options: [
  "Neev Literature Festival 2023",
  "Appalachian Trail",
  "Basohli Pashmina",
  "Breast Cancer Awareness Month"
  ],
  correctAnswerIndex: 1,
  explanation: "On October 2nd, Google Doodle pays tribute to the Appalachian Trail, the longest hiking-only footpath in the world, captivating adventurers, nature enthusiasts, and explorers for nearly a century.",
  ),






  Question(
  questionText: "Which traditional craft from Jammu and Kashmir recently earned the Geographical Indication (GI) tag?",
  options: [
  "Basohli Pashmina",
  "Appalachian Trail",
  "Neev Literature Festival 2023",
  "Breast Cancer Awareness Month"
  ],
  correctAnswerIndex: 0,
  explanation: "Basohli Pashmina, an age-old traditional craft from Jammu and Kashmir, recently earned the prestigious Geographical Indication (GI) tag, celebrating exceptional craftsmanship and protecting its authenticity.",
  ),

  Question(
  questionText: "What is observed throughout the entire month of October each year?",
  options: [
  "Basohli Pashmina Day",
  "Appalachian Trail Celebration",
  "Neev Literature Festival Month",
  "Breast Cancer Awareness Month"
  ],
  correctAnswerIndex: 3,
  explanation: "Breast Cancer Awareness Month is observed throughout the entire month of October each year, with collaborative efforts to raise awareness and promote breast cancer prevention and treatment.",
  ),

  Question(
  questionText: "When is the Neev Literature Festival 2023 scheduled to take place?",
  options: [
  "2nd and 3rd October",
  "7th and 8th October",
  "15th October",
  "30th October"
  ],
  correctAnswerIndex: 1,
  explanation: "The Neev Literature Festival 2023 is scheduled to take place on October 7th and 8th, 2023, at the Neev Academy in Yemalur, Bengaluru.",
  ),

  Question(
  questionText: "What animated series, related to Indian Freedom struggle, has been launched by Union Minister Shri Anurag Thakur?",
  options: [
  "The Reverse Swing: Colonialism to Cooperation",
  "Krish, Trish, and Baltiboy – Bharat Hain Hum",
  "Gadkari",
  "Navratna"
  ],
  correctAnswerIndex: 1,
  explanation: "Union Minister Shri Anurag Thakur has launched the trailer of 'Krish, Trish, and Baltiboy – Bharat Hain Hum,' an animated series featuring stories from the Indian Freedom struggle from 1500s to 1947.",
  ),

  Question(
  questionText: "Which Central Public Sector Enterprise (CPSE) recently achieved the 'Navratna' status?",
  options: [
  "RITES Ltd",
  "Indian Meteorological Department (IMD)",
  "Air India Express",
  "Tata Group"
  ],
  correctAnswerIndex: 0,
  explanation: "RITES Ltd, a prominent Central Public Sector Enterprise (CPSE) under the Ministry of Railways, has achieved the prestigious 'Navratna' status, becoming the 16th CPSE in India to be granted this distinction.",
  ),

  Question(
  questionText: "What is the title of the Garba song penned by Prime Minister Narendra Modi?",
  options: [
  "Maadi",
  "Gadkari",
  "Navratna",
  "Express Turquoise"
  ],
  correctAnswerIndex: 0,
  explanation: "The Garba song penned by Prime Minister Narendra Modi is titled 'Maadi,' celebrating the splendour of the Navratri festival and the vibrant traditions of Gujarat.",
  ),

  Question(
  questionText: "What is the focus of the ATMAN (Agri sTartup deMo And funding) 2023 program, and how much fund has been dedicated to support start-ups?",
  options: [
  "Telecom technology; Rs 10 crore",
  "Space exploration; Rs 15 crore",
  "Agricultural technology; Rs 20 crore",
  "6G technology; Rs 5 crore"
  ],
  correctAnswerIndex: 2,
  explanation: "The ATMAN (Agri sTartup deMo And funding) 2023 program focuses on the agri-tech sector. A dedicated fund of Rs 20 crore has been recommended to support 24 start-ups in this sector.",
  ),

  Question(
  questionText: "Where has Nokia established its state-of-the-art 6G lab, and what is its potential impact?",
  options: [
  "Mumbai, India; Transforming the healthcare sector",
  "Bengaluru, India; Revolutionizing wireless technology",
  "Beijing, China; Enhancing agricultural practices",
  "San Francisco, USA; Advancing space exploration"
  ],
  correctAnswerIndex: 1,
  explanation: "Nokia has established its state-of-the-art 6G lab at the company’s global R&D center in Bengaluru, India. This project is set to revolutionize the way we perceive and interact with the digital and physical worlds through wireless technology.",
  ),

  Question(
  questionText: "What critical test flights is ISRO preparing for, and when is the anticipated Gaganyaan mission?",
  options: [
  "Telecom test flights; 2025",
  "Wireless technology flights; 2030",
  "Manned space exploration test flights; 2040",
  "Commercial launch test flights; 2024"
  ],
  correctAnswerIndex: 2,
  explanation: "ISRO is preparing for critical test flights in anticipation of the Gaganyaan mission, marking India’s maiden charge into manned space exploration. The Gaganyaan mission is anticipated by 2040.",
  ),

  Question(
  questionText: "What is the collaborative initiative between ISRO and Vijnana Bharati (VIBHA), and where is it aimed at?",
  options: [
  "Quantum computing; Silicon Valley, USA",
  "Space on Wheels; East Siang District, Arunachal Pradesh, India",
  "Green energy; Antarctica",
  "Medical research; Amazon Rainforest"
  ],
  correctAnswerIndex: 1,
  explanation: "ISRO and VIBHA have joined hands for the 'Space on Wheels' program, aimed at taking the wonders of space exploration to the East Siang District of Arunachal Pradesh, India.",
  ),

  Question(
  questionText: "What ambitious plans has Prime Minister Narendra Modi announced for India’s space activities?",
  options: [
  "Building the tallest skyscraper; 2050",
  "Sending the first astronaut to Mars; 2030",
  "Establishing a native space station by 2035; Sending the first astronaut to the moon by 2040",
  "Hosting the first interstellar summit; 2022"
  ],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi has announced plans to expand India’s space activities, including sending its first astronaut to the moon by 2040 and establishing a native space station by 2035.",
  ),



  Question(
  questionText: "How is Google addressing online financial frauds in India, and what is the name of the program?",
  options: [
  "Blockchain technology; Project Shield",
  "Space exploration; Operation StarGuard",
  "Combatting fraudulent activities with countermeasures; DigiKavach",
  "Artificial Intelligence; Operation CyberGuard"
  ],
  correctAnswerIndex: 2,
  explanation: "Google is addressing online financial frauds in India through its program, DigiKavach. The program aims to combat these fraudulent activities by understanding the strategies employed by scammers and implementing countermeasures.",
  ),

  Question(
  questionText: "What significant event occurred in Hyderabad on October 24th, and what are the expectations for the future?",
  options: [
  "Launch of a new satellite; Full commercial launch in 2025",
  "Unveiling of Skyroot’s Vikram-1 orbital rocket; Fully commercial launch in later months of 2024",
  "First 6G technology test; Collaboration with international space agencies",
  "Announcement of a space-themed amusement park; Opening in 2023"
  ],
  correctAnswerIndex: 1,
  explanation: "In Hyderabad on October 24th, Dr. Jitendra Singh unveiled Skyroot’s Vikram-1 orbital rocket. Expectations are for a fully commercial launch in the later months of 2024, marking a momentous event for India’s space industry.",
  ),

  Question(
  questionText: "What recent achievement in space exploration did China celebrate, and what was the mission called?",
  options: [
  "First human mission to Mars; Mars Odyssey",
  "Exploration of the asteroid belt; Asteroid Voyager",
  "Launch of Shenzhou 17 from the Jiuquan Satellite Launch Center",
  "Establishment of a moon base; Lunar Horizon"
  ],
  correctAnswerIndex: 2,
  explanation: "China celebrated the recent launch of Shenzhou 17 from the Jiuquan Satellite Launch Center, highlighting the country’s determination to explore outer space, fueled by a competitive spirit with the United States.",
  ),

  Question(
  questionText: "What groundbreaking satellite broadband service has Reliance Jio Infocomm Ltd introduced, and what is its primary goal?",
  options: [
  "Quantum Satellite Network; Advancing quantum communication",
  "JioSpaceFiber; Extending high-speed internet access to underserved regions",
  "Global Internet Constellation; Providing worldwide internet coverage",
  "National Geospatial Satellite System; Enhancing navigation services.",
  ],
  correctAnswerIndex: 1,
  explanation: "Reliance Jio Infocomm Ltd has introduced 'JioSpaceFiber,' India’s first satellite-driven giga fiber service. The primary goal is to extend high-speed internet access to previously underserved and remote regions in India.",
  ),

  Question(
  questionText: "Who were awarded the 2023 Nobel Prize in Physiology or Medicine, and what is the reason for their recognition?",
  options: [
  "Pierre Agostini, Ferenc Krausz, and Anne L’Huillier; Quantum dots discovery",
  "Katalin Karikó and Drew Weissman; mRNA vaccines against COVID-19",
  "Moungi G. Bawendi, Louis E. Brus, and Alexei I. Ekimov; Attosecond pulses of light",
  "Jon Fosse; Innovative plays and prose"
  ],
  correctAnswerIndex: 1,
  explanation: "Katalin Karikó and Drew Weissman were awarded the 2023 Nobel Prize in Physiology or Medicine for their discoveries concerning nucleoside base modifications that enabled the development of effective mRNA vaccines against COVID-19.",
  ),

  Question(
  questionText: "Who received the Nobel Prize in Physics 2023, and what was the basis for their recognition?",
  options: [
  "Sudha Murthy; Philanthropy and social impact",
  "Pierre Agostini, Ferenc Krausz, and Anne L’Huillier; Attosecond pulses of light",
  "Moungi G. Bawendi, Louis E. Brus, and Alexei I. Ekimov; Quantum dots discovery",
  "Nita Ambani; Philanthropy and Corporate Social Responsibility"
  ],
  correctAnswerIndex: 1,
  explanation: "Pierre Agostini, Ferenc Krausz, and Anne L’Huillier received the Nobel Prize in Physics 2023 for experimental methods generating attosecond pulses of light for the study of electron dynamics in matter.",
  ),

  Question(
  questionText: "What was the focus of the Nobel Prize in Chemistry 2023, and who were the laureates?",
  options: [
  "Ambai; Contribution to Indian literature",
  "Jina Mahsa Amini; Sakharov Prize in the European Parliament",
  "Moungi G. Bawendi, Louis E. Brus, and Alexei I. Ekimov; Quantum dots discovery",
  "Dr. Joyeeta Gupta; Work in the field of climate change"
  ],
  correctAnswerIndex: 2,
  explanation: "The Nobel Prize in Chemistry 2023 focused on the discovery and development of quantum dots. The laureates were Moungi G. Bawendi, Louis E. Brus, and Alexei I. Ekimov.",
  ),

  Question(
  questionText: "Who received the Nobel Prize in Literature 2023, and what is the reason for their recognition?",
  options: [
  "Pierre Agostini, Ferenc Krausz, and Anne L’Huillier; Attosecond pulses of light",
  "Jina Mahsa Amini; Fight against oppression of women in Iran",
  "Renowned author Jon Fosse; Innovative plays and prose",
  "Dilip Nongmaithem; ‘Bal Sahitya Puraskar’ for his work in Manipuri language"
  ],
  correctAnswerIndex: 2,
  explanation: "The Nobel Prize in Literature 2023 was awarded to Norwegian author Jon Fosse for his innovative plays and prose, which give voice to the unsayable.",
  ),

  Question(
  questionText: "Who was conferred with the prestigious Dutch Spinoza Prize, and for what groundbreaking work?",
  options: [
  "Claudia Goldin; Advancing understanding of women’s labour market outcomes",
  "Michael Douglas; Satyajit Ray Excellence in Film Lifetime Award",
  "Dr. Joyeeta Gupta; Work in the field of climate change",
  "Indian-origin professor Dr. Joyeeta Gupta; Groundbreaking work in the field of climate change"
  ],
  correctAnswerIndex: 3,
  explanation: "Indian-origin professor Dr. Joyeeta Gupta was awarded the prestigious Dutch Spinoza Prize for her groundbreaking work in the field of climate change.",
  ),

  Question(
  questionText: "What recognition did Uttar Pradesh receive, and for what efforts?",
  options: [
  "Tamil writer Sivasankari; ‘Saraswati Samman’ for her memoirs",
  "Uttar Pradesh; Outstanding efforts in operationalizing Telemanas",
  "Renowned Hollywood actor Michael Douglas; Satyajit Ray Excellence in Film Lifetime Award",
  "Jina Mahsa Amini; Sakharov Prize in the European Parliament"
  ],
  correctAnswerIndex: 2,
  explanation: "Uttar Pradesh was awarded the third prize for its outstanding efforts in operationalizing Telemanas, a tele-technology-based mental health and counseling service.",
  ),

  Question(
  questionText: "Who was awarded the Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel 2023, and what was the reason for their recognition?",
  options: [
  "Nita Ambani; Philanthropy and Corporate Social Responsibility",
  "Claudia Goldin; Advancing understanding of women’s labour market outcomes",
  "Chief Justice of India DY Chandrachud; Award for Global Leadership",
  "Uttar Pradesh; Outstanding efforts in operationalizing Telemanas"
  ],
  correctAnswerIndex: 1,
  explanation: "Claudia Goldin was awarded the Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel 2023 for advancing our understanding of women’s labour market outcomes.",
  ),


  Question(
  questionText: "How much does India plan to invest in infrastructure between fiscal years 2024 and 2030, according to the Infrastructure Yearbook 2023?",
  options: ["₹67 lakh crore", "₹100 lakh crore", "₹143 lakh crore", "₹200 lakh crore"],
  correctAnswerIndex: 2,
  explanation: "India plans to invest nearly ₹143 lakh crore in infrastructure between fiscal years 2024 and 2030, more than double the amount spent over the past seven financial years.",
  ),
  Question(
  questionText: "Which airport has been recognized as the 'world’s most punctual airport' for the past three consecutive months?",
  options: ["Indira Gandhi International Airport", "Chhatrapati Shivaji Maharaj International Airport", "Kempegowda International Airport", "Rajiv Gandhi International Airport"],
  correctAnswerIndex: 2,
  explanation: "Kempegowda International Airport in Bengaluru has been recognized as the 'world’s most punctual airport' for the past three consecutive months.",
  ),
  Question(
  questionText: "What is the rank of India in the 15th annual Mercer CFA Institute Global Pension Index (MCGPI)?",
  options: ["25th", "37th", "45th", "52nd"],
  correctAnswerIndex: 2,
  explanation: "India showed improvement, moving up to the 45th rank out of 47 systems analyzed in the 15th annual Mercer CFA Institute Global Pension Index (MCGPI).",
  ),
  Question(
  questionText: "What does the 'Global Tax Evasion Report 2024' published by the European Union Tax Observatory propose for billionaires?",
  options: ["Lower income tax", "2% global wealth tax", "Tax exemptions", "Reduced corporate tax"],
  correctAnswerIndex: 1,
  explanation: "The 'Global Tax Evasion Report 2024' proposes a 2% global wealth tax on billionaires to combat tax evasion and generate approximately dollars 250 billion.",
  ),
  Question(
  questionText: "According to IQAir, which Indian city ranks as the second most polluted, and which city ranks sixth globally in terms of air quality challenges?",
  options: ["Delhi and Kolkata", "Mumbai and Chennai", "Chennai and Delhi", "Mumbai and Delhi"],
  correctAnswerIndex: 3,
  explanation: "According to IQAir, Mumbai ranks as the second most polluted city, and Delhi ranks sixth globally in terms of air quality challenges.",
  ),
  Question(
  questionText: "Who has been designated as the 'Global Ambassador' for the Cricket World Cup 2023 by the International Cricket Council (ICC)?",
  options: ["Virat Kohli", "MS Dhoni", "Rohit Sharma", "Sachin Tendulkar"],
  correctAnswerIndex: 3,
  explanation: "Sachin Tendulkar has been designated as the 'Global Ambassador' for the Cricket World Cup 2023 by the International Cricket Council (ICC).",
  ),
  Question(
  questionText: "What initiative did the Ministry of Micro, Small and Medium Enterprises (MSME) take towards realizing the vision of a 'Garbage Free India'?",
  options: ["Inaugurating a cleanliness drive", "Organizing 'Shramdaan' event", "Launching a waste management app", "Implementing a nationwide recycling program"],
  correctAnswerIndex: 1,
  explanation: "The Ministry of Micro, Small and Medium Enterprises (MSME) organized a 'Shramdaan' event to foster a spirit of collective responsibility and action towards a 'Garbage Free India.",
  ),
  Question(
  questionText: "Which organization is Sri Lanka set to chair for the next two years, as per the information provided?",
  options: ["United Nations", "South Asian Association for Regional Cooperation (SAARC)", "Indian Ocean Rim Association (IORA)", "World Health Organization (WHO)"],
  correctAnswerIndex: 2,
  explanation: "Sri Lanka is set to take over as the Chair of the Indian Ocean Rim Association (IORA) for the next two years.",
  ),
  Question(
  questionText: "Which refinery received the 'Best Innovation in Refinery' award for the year 2022-23?",
  options: ["IOCL", "BPCL", "HPCL", "Mangalore Refinery and Petrochemicals Ltd (MRPL)"],
  correctAnswerIndex: 3,
  explanation: "Mangalore Refinery and Petrochemicals Ltd (MRPL) received the 'Best Innovation in Refinery' award for the year 2022-23 at the 26th Energy Technology Meet 2023.",
  ),
  Question(
  questionText: "What is the theme of the Ninth P20 Summit hosted by the Parliament of India?",
  options: ["Global Economic Growth Strategies", "Parliaments for Sustainable Development", "Parliaments for One Earth, One Family, One Future", "Digital Transformation in Governance"],
  correctAnswerIndex: 2,
  explanation: "The theme of the Ninth P20 Summit hosted by the Parliament of India is 'Parliaments for One Earth, One Family, One Future,' emphasizing the interconnectedness of the world as one family.",
  ),
  Question(
  questionText: "Who is set to inaugurate the 141st International Olympic Committee (IOC) session, and where will it take place?",
  options: ["President of India - Rashtrapati Bhavan, New Delhi", "UN Secretary-General - United Nations Headquarters, New York", "Prime Minister Narendra Modi - Jio World Centre, Mumbai", "IOC President - Lausanne, Switzerland"],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi is set to inaugurate the 141st International Olympic Committee (IOC) session at the Jio World Centre in Mumbai on October 14.",
  ),
  Question(
  questionText: "What is highlighted as a critical focus for India during its G20 Presidency in relation to the tourism sector?",
  options: ["Space Tourism", "Responsible and Sustainable Tourism", "Adventure Tourism", "Cultural Tourism"],
  correctAnswerIndex: 1,
  explanation: "Responsible and sustainable tourism is highlighted as a critical focus for India during its G20 Presidency in the context of the tourism.",
  ),
  Question(
  questionText: "On which day does World Nature Day fall, and what is its significance?",
  options: ["October 3 - Celebrating biodiversity and nature conservation", "October 5 - Recognizing environmental achievements", "October 9 - Promoting eco-friendly practices", "October 11 - Focusing on sustainable agriculture"],
  correctAnswerIndex: 0,
  explanation: "World Nature Day is observed on October 3, emphasizing the importance of celebrating biodiversity and promoting nature conservation globally.",
  ),
  Question(
  questionText: "During which week is the 69th Wildlife Week celebrated, and what is its theme?",
  options: ["October 2 to October 8 - Theme: 'Conservation Challenges'", "October 10 to October 16 - Theme: 'Biodiversity Conservation'", "October 15 to October 21 - Theme: 'Wildlife Protection Measures'", "October 18 to October 24 - Theme: 'Eco-friendly Living'"],
  correctAnswerIndex: 0,
  explanation: "The 69th Wildlife Week is celebrated from October 2 to October 8, with the theme 'Partnerships for Wildlife Conservation.' It aims to highlight the importance of collaborative efforts in wildlife conservation.",
  ),
  Question(
  questionText: "What is the theme of World Mental Health Day observed on October 10?",
  options: ["Breaking the Stigma: Mental Health Matters", "Mind Matters: Nurturing Mental Well-being", "Mental Health for All: Let’s Talk Together", "Promoting Psychological Wellness"],
  correctAnswerIndex: 1,
  explanation: "The theme of World Mental Health Day observed on October 10 is 'Mind Matters: Nurturing Mental Well-being,' emphasizing the importance of promoting psychological wellness globally.",
  ),
  Question(
  questionText: "What is the theme of International Day for the Eradication of Poverty on October 17th?",
  options: ["Ending Poverty: A Collective Responsibility", "Decent Work and Social Protection: Putting dignity in practice for all", "Empowering Communities to Break the Poverty Cycle", "Building a Sustainable Future: Poverty-Free World"],
  correctAnswerIndex: 1,
  explanation: "The theme of International Day for the Eradication of Poverty on October 17th is 'Decent Work and Social Protection: Putting dignity in practice for all,' focusing on the importance of dignified work and social protection in overcoming poverty.",
  ),
  Question(
  questionText: "Which day is observed as World Development Information Day, and what is its significance?",
  options: ["October 24 - Celebrating achievements in global development", "October 27 - Promoting access to information for development", "October 30 - Highlighting progress in sustainable development goals", "October 31 - Recognizing advancements in technology for development"],
  correctAnswerIndex: 2,
  explanation: "World Development Information Day is observed on October 24, aiming to highlight progress in sustainable development goals globally.",
  ),
  Question(
  questionText: "On which day is United Nations Day celebrated, and what is its purpose?",
  options: ["October 24 - Commemorating the founding of the United Nations", "October 29 - Promoting international cooperation", "October 31 - Focusing on global unity", "November 1 - Highlighting UN achievements in peacekeeping"],
  correctAnswerIndex: 0,
  explanation: "United Nations Day is celebrated on October 24, commemorating the founding of the United Nations and promoting international cooperation for peace and development.",
  ),
  Question(
  questionText: "During which week is Vigilance Awareness Week 2023 celebrated, and what is its theme?",
  options: ["October 30 to November 5 - Theme: 'Say no to corruption; commit to the Nation'", "November 1 to November 7 - Theme: 'Ethical Governance for a Better Tomorrow'", "November 8 to November 14 - Theme: 'Transparency and Accountability'", "November 15 to November 21 - Theme: 'Citizen's Role in Governance'"],
  correctAnswerIndex: 0,
  explanation: "Vigilance Awareness Week 2023 is celebrated from October 30 to November 5 with the theme 'Say no to corruption; commit to the Nation,' emphasizing the importance of ethical governance.",
  ),
  Question(
  questionText: "On which day is World Cities Day observed, and what is the theme for the year?",
  options: ["October 29 - Theme: 'Building Sustainable Urban Futures'", "October 31 - Theme: 'Financing sustainable urban future for all'", "November 2 - Theme: 'Smart Cities for a Better Tomorrow'", "November 5 - Theme: 'Empowering Urban Communities'"],
  correctAnswerIndex: 1,
  explanation: "World Cities Day is observed on October 31 with the theme 'Financing sustainable urban future for all,' focusing on financial aspects related to sustainable urban development.",
  ),
  Question(
  questionText: "Which platforms is the Indian Navy set to unveil at the Swavlamban event?",
  options: ["Stealth Guided Missile Destroyer and Attack Submarine", "Autonomous Weaponized Boat Swarms and Autonomous Vessel Underwater (AUV)", "Indigenous Astra Beyond Visual Range Missiles and Advanced Air Defense Systems", "Next-generation Aircraft Carrier and Unmanned Aerial Vehicles (UAVs)"],
  correctAnswerIndex: 1,
  explanation: "The Indian Navy is set to unveil two remarkable platforms at the Swavlamban event: the Autonomous Weaponized Boat Swarms and the Autonomous Vessel Underwater (AUV).",
  ),
  Question(
  questionText: "What is the purpose of the 'SUGAM REC' mobile application launched by REC Limited?",
  options: ["Power sector financing", "Investment in 54EC Capital Gain Tax Exemption Bonds", "Digital innovation for NBFCs", "Promoting renewable energy projects"],
  correctAnswerIndex: 1,
  explanation: "REC Limited announced the launch of its latest digital innovation, the 'SUGAM REC' mobile application, designed to cater to the needs of investors interested in REC’s 54EC Capital Gain Tax Exemption Bonds.",
  ),
  Question(
  questionText: "Who unveiled the system-based automatic 'Status Holder' certificates under the Foreign Trade Policy (FTP) 2023?",
  options: ["Piyush Goyal", "Amit Shah", "Narendra Modi", "Hemant Soren"],
  correctAnswerIndex: 0,
  explanation: "Union Minister of Commerce & Industry, Consumer Affairs, Food & Public Distribution, and Textiles Shri Piyush Goyal unveiled the system-based automatic 'Status Holder' certificates under the Foreign Trade Policy (FTP) 2023.",
  ),
  Question(
  questionText: "What was the theme of the Swachhata Hi Seva (SHS) campaign in 2023, led by Prime Minister Narendra Modi?",
  options: ["Clean India, Green India", "Healthy India, Happy India", "Garbage Free India", "Swachh Bharat Diwas"],
  correctAnswerIndex: 2,
  explanation: "The theme for SHS-2023 was 'Garbage Free India,' with a particular focus on visual cleanliness and the welfare of SafaiMitras (sanitation workers).",
  ),
  Question(
  questionText: "What was the theme of the all-female bikers’ expedition rally named 'Yashasvini' initiated by the Central Reserve Police Force (CRPF)?",
  options: ["Empowerment Ride", "Women on Wheels", "Yashasvini Rally", "Bikers for Change"],
  correctAnswerIndex: 2,
  explanation: "The all-female bikers’ expedition rally initiated by the CRPF was named 'Yashasvini,' symbolizing women empowerment.",
  ),
  Question(
  questionText: "What is the primary objective of the 'Scheme for Residential Education for Students in High Schools in Targeted Areas' (SHRESHTA) launched by the Ministry of Social Justice & Empowerment?",
  options: ["Promoting sports in schools", "Empowering SC communities through education", "Providing scholarships for higher education", "Building new schools in rural areas"],
  correctAnswerIndex: 1,
  explanation: "The primary objective of SHRESHTA is to extend the influence of government development programs and address service gaps in regions predominantly inhabited by SC communities within the education sector.",
  ),
  Question(
  questionText: "What was the theme of the Special Campaign 3.0 inaugurated by Dr. Jitendra Singh in the Department of Administrative Reforms and Public Grievances (DARPG)?",
  options: ["Service Excellence", "Digital DARPG", "Efficient Government", "Technological Governance"],
  correctAnswerIndex: 1,
  explanation: "The Special Campaign 3.0 in the Department of Administrative Reforms and Public Grievances (DARPG) was themed 'Digital DARPG,' aiming at enhancing service delivery, utilizing emerging technologies, and ensuring efficient management within government offices.",
  ),
  Question(
  questionText: "How many bridge projects in Arunachal Pradesh recently received approval from the Union Road Transport & Highways Minister, Nitin Gadkari?",
  options: ["Three", "Five", "Seven", "Ten"],
  correctAnswerIndex: 2,
  explanation: "Seven bridge projects in Arunachal Pradesh recently received approval from the Union Road Transport & Highways Minister, Nitin Gadkari.",
  ),
  Question(
  questionText: "What is the objective of India’s Intensified Mission Indradhanush (IMI) 5.0, a flagship immunization campaign launched by the Health Ministry?",
  options: ["Promoting maternal health", "Enhancing education", "Vaccinating children and pregnant women", "Ensuring clean water supply"],
  correctAnswerIndex: 2,
  explanation: "The objective of IMI 5.0 is to reach children who have missed vaccine doses or fallen behind their vaccination schedule, along with pregnant women across the country.",
  ),
  Question(
  questionText: "How many beneficiaries does the Pradhan Mantri Jan Dhan Yojana (PMJDY) have, reflecting its success in promoting financial inclusion?",
  options: ["25 crore", "40 crore", "50 crore", "60 crore"],
  correctAnswerIndex: 2,
  explanation: "PMJDY has achieved remarkable success, with over 50 crore beneficiaries and a significant increase in total balance, especially post-Covid-19.",
  ),
  Question(
  questionText: "What is the focus of the recently approved increase in the Minimum Support Prices (MSP) for Rabi Crops for the Marketing Season 2024-25 by the Cabinet Committee on Economic Affairs?",
  options: ["Encouraging export of crops", "Ensuring fair prices for farmers", "Reducing agricultural production", "Promoting organic farming"],
  correctAnswerIndex: 1,
  explanation: "The recently approved increase in MSP aims to ensure fair prices for farmers and encourage crop diversification.",
  ),
  Question(
  questionText: "What is the focus of the collaboration between Indian fintech unicorn Slice and North East Small Finance Bank (NESFB)?",
  options: ["Revolutionizing agriculture", "Expanding financial inclusion", "Advancing healthcare services", "Promoting renewable energy"],
  correctAnswerIndex: 1,
  explanation: "The collaboration between Slice and NESFB aims to revolutionize banking services and expand financial inclusion in India.",
  ),
  Question(
  questionText: "During which event did India and Saudi Arabia sign a Memorandum of Understanding (MoU) on securing a green hydrogen supply chain and collaborating on power grid interconnection?",
  options: ["ASEAN Summit", "MENA Climate Week 2023", "G7 Summit", "BRICS Summit"],
  correctAnswerIndex: 1,
  explanation: "The MoU between India and Saudi Arabia was formalized in Riyadh during the MENA Climate Week 2023.",
  ),
  Question(
  questionText: "What is the key objective of the collaboration between Tyre manufacturer Bridgestone India and Tata Power?",
  options: ["Promoting agriculture", "Enhancing education", "Supporting electric mobility", "Advancing healthcare services"],
  correctAnswerIndex: 2,
  explanation: "The collaboration aims to promote electric mobility by installing high-capacity DC fast chargers at Bridgestone dealerships, supporting the growing EV ecosystem in India.",
  ),
  Question(
  questionText: "Which two organizations have aligned to build on the success of the Olympic Values Education Programme (OVEP) in India?",
  options: ["UNESCO and WHO", "IOC and FIFA", "Reliance Foundation and Olympic Museum", "NASA and ESA"],
  correctAnswerIndex: 2,
  explanation: "Reliance Foundation and the Olympic Museum have aligned to build on the success of the Olympic Values Education Programme (OVEP) in India."
  ),
  Question(
  questionText: "What did the recent agreement between India and Italy, signed during Defense Minister Rajnath Singh's visit, encompass?",
  options: ["Healthcare collaboration", "Cultural exchange", "Security and defense collaboration", "Trade and commerce agreement"],
  correctAnswerIndex: 2,
  explanation: "The agreement between India and Italy encompasses various aspects of security and defense collaboration.",
  ),
  Question(
  questionText: "What milestone has the Prime Minister Street Vendor’s AtmaNirbhar Nidhi (PM SVANidhi) scheme achieved?",
  options: ["Assisting over 10 lakh street vendors", "Providing assistance to over 50 lakh street vendors", "Supporting 1 crore street vendors", "Reaching 25 lakh street vendors"],
  correctAnswerIndex: 1,
  explanation: "The PM SVANidhi scheme has achieved a significant milestone by providing assistance to over 50 lakh street vendors across the country.",
  ),
  Question(
  questionText: "Which Indian state recently marked a historic moment in infrastructure development by inaugurating the 82-km Padma Bridge Rail Link?",
  options: ["West Bengal", "Assam", "Bangalore", "Bangladesh"],
  correctAnswerIndex: 3,
  explanation: "Bangladesh marked a historic moment by inaugurating the 82-km Padma Bridge Rail Link, a significant infrastructure project under China’s Belt and Road Initiative.",
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
    home: october(),
  ));
}

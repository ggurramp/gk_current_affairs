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

class september extends StatefulWidget {
  final String? userIdentifier;

  september({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<september> createState() => _septemberState();
}

class _septemberState extends State<september> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(400, null); // Initialize with the number of questions

  List<Question> _questions = [

    Question(
      questionText: "Who is set to receive the Dadasaheb Phalke Lifetime Achievement Award for the year?",
      options: ["Anurag Thakur", "Waheeda Rehman", "Oxford University", "Stanford University"],
      correctAnswerIndex: 1,
      explanation: "Waheeda Rehman is set to receive the Dadasaheb Phalke Lifetime Achievement Award for her illustrious career in Indian cinema.",
    ),
    Question(
      questionText: "Which film is NOT mentioned as part of Waheeda Rehman's iconic filmography?",
      options: ["Guide", "Pyaasa", "Kabhi Kabhie", "Kaagaz Ke Phool"],
      correctAnswerIndex: 2,
      explanation: "'Kabhi Kabhie' is not mentioned in the iconic filmography of Waheeda Rehman, which includes films like 'Guide,' 'Pyaasa,' and 'Kaagaz Ke Phool.'",
    ),
    Question(
      questionText: "Who announced the Dadasaheb Phalke Lifetime Achievement Award for Waheeda Rehman?",
      options: ["Waheeda Rehman", "Anurag Thakur", "Oxford University", "Stanford University"],
      correctAnswerIndex: 1,
      explanation: "The Union Minister for Information and Broadcasting, Anurag Thakur, announced the Dadasaheb Phalke Lifetime Achievement Award for Waheeda Rehman.",
    ),
    Question(
      questionText: "How many Indian universities secured positions in the World University Rankings 2024?",
      options: ["40", "75", "91", "108"],
      correctAnswerIndex: 2,
      explanation: "A total of 91 Indian universities secured positions in the World University Rankings 2024, showcasing notable growth in India's higher education sector.",
    ),
    Question(
      questionText: "Which Indian university claimed the top spot in the World University Rankings 2024?",
      options: ["IIT Delhi", "Anna University", "Indian Institute of Science (IISc) Bangalore", "Jawaharlal Nehru University"],
      correctAnswerIndex: 2,
      explanation: "The Indian Institute of Science (IISc) Bangalore claimed the top spot among Indian universities in the World University Rankings 2024.",
    ),
    Question(
      questionText: "Why have the top Indian Institutes of Technology (IITs) continued their boycott of the rankings?",
      options: ["Methodology concerns", "Financial issues", "Lack of recognition", "Faculty protests"],
      correctAnswerIndex: 0,
      explanation: "The top Indian Institutes of Technology (IITs) have continued their boycott of the rankings for the fourth consecutive year, citing concerns about the methodology used.",
    ),
    Question(
      questionText: "In which edition did Oxford University secure the first place in the World's Best Universities by the Times Higher Education (THE) rankings?",
      options: ["15th", "18th", "20th", "22nd"],
      correctAnswerIndex: 2,
      explanation: "Oxford University secured the first place for an unprecedented eighth consecutive year in the 20th edition of the World's Best Universities by the Times Higher Education (THE) rankings.",
    ),
    Question(
      questionText: "Which country topped the Global Innovation Index 2023?",
      options: ["United States", "Switzerland", "China", "India"],
      correctAnswerIndex: 1,
      explanation: "Switzerland topped the Global Innovation Index 2023, making it the most innovative economy for the 13th consecutive year.",
    ),
    Question(
      questionText: "What rank did India achieve in the Global Innovation Index 2023?",
      options: ["30th", "40th", "50th", "60th"],
      correctAnswerIndex: 1,
      explanation: "India retained the 40th rank out of 132 economies in the Global Innovation Index 2023, showcasing its continued progress in innovation.",
    ),
    Question(
      questionText: "Which organization collaborates with NITI Aayog and WIPO for the India Launch of the GII 2023?",
      options: ["Confederation of Indian Industry (CII)", "United Nations (UN)", "World Health Organization (WHO)", "World Economic Forum (WEF)"],
      correctAnswerIndex: 0,
      explanation: "The Confederation of Indian Industry (CII) collaborates with NITI Aayog and the World Intellectual Property Organisation (WIPO) for the India Launch of the Global Innovation Index 2023.",
    ),
    Question(
      questionText: "Who won the Golden Ball award for the Durand Cup 2023?",
      options: ["Nandhakumar Sekar", "David Lalhlansanga", "Vishal Kaith", "Mohun Bagan Super Giant"],
      correctAnswerIndex: 0,
      explanation: "East Bengal forward Nandhakumar Sekar won the Golden Ball award for the Durand Cup 2023, having scored the winner in the previous Kolkata derby and receiving three Player of the Match awards.",
    ),

    Question(
      questionText: "What were the key highlights of Prime Minister Modi's participation in the 20th ASEAN-India Summit and 18th East Asia Summit?",
      options: ["Multi-Modal Connectivity", "Digital Future Fund", "Support for ERIA", "All of the Above"],
      correctAnswerIndex: 3,
      explanation: "During the summits, PM Modi discussed various initiatives, including Multi-Modal Connectivity, Digital Future Fund, Support for ERIA, and more, emphasizing India's commitment to the Indo-Pacific region and addressing global challenges.",
    ),

    Question(
      questionText: "Who were the winners of the US Open 2023 Men's Singles?",
      options: ["Novak Djokovic", "Daniil Medvedev", "Coco Gauff", "Aryna Sabalenka"],
      correctAnswerIndex: 0,
      explanation: "Novak Djokovic won the Men's Singles title at the US Open 2023, defeating Daniil Medvedev in the final with a score of 6-3, 7-6(5), 6-3.",
    ),

    Question(
      questionText: "What were the key achievements of India's G20 presidency in 2023?",
      options: ["New Delhi Declaration", "Geopolitical Diplomacy", "Inclusive Partnerships", "All of the Above"],
      correctAnswerIndex: 3,
      explanation: "India's G20 presidency saw achievements like the New Delhi Declaration, Geopolitical Diplomacy, Inclusive Partnerships, and more, addressing global issues and enhancing cooperation among member countries.",
    ),

    Question(
      questionText: "Who won the Shanti Swarup Bhatnagar Prize in the Biological Sciences category for 2022?",
      options: ["Ashwani Kumar", "Maddika Subba Reddy", "Akkattu Biju", "Debabrata Maiti"],
      correctAnswerIndex: 0,
      explanation: "Ashwani Kumar, from CSIR-Institute of Microbial Technology, won the Shanti Swarup Bhatnagar Prize in the Biological Sciences category for 2022.",
    ),

    Question(
      questionText: "Which country claimed the top spot in the World Best Countries Report 2023?",
      options: ["Canada", "Sweden", "Switzerland", "Australia"],
      correctAnswerIndex: 2,
      explanation: "Switzerland claimed the top spot in the World Best Countries Report 2023, excelling in entrepreneurship, quality of life, social purpose, and cultural influence.",
    ),

    Question(
      questionText: "What is India's ranking in the World Best Countries Report 2023?",
      options: ["28th", "30th", "32nd", "34th"],
      correctAnswerIndex: 1,
      explanation: "India secured the 30th position in the World Best Countries Report 2023, showing improvement from the 31st position in 2022. India performed well in the 'Movers' category and cultural influence.",
    ),
    Question(
      questionText: "Which organization collaborates with NITI Aayog and WIPO for the India Launch of the GII 2023?",
      options: ["Confederation of Indian Industry (CII)", "United Nations (UN)", "World Health Organization (WHO)", "World Economic Forum (WEF)"],
      correctAnswerIndex: 0,
      explanation: "The Confederation of Indian Industry (CII) collaborates with NITI Aayog and the World Intellectual Property Organisation (WIPO) for the India Launch of the Global Innovation Index 2023.",
    ),

    Question(
      questionText: "Which company retained its top position in the Kantar BrandZ Top 75 Most Valuable Indian Brands Report 2023?",
      options: ["HDFC Bank", "Infosys", "Tata Consultancy Services (TCS)", "Airtel"],
      correctAnswerIndex: 2,
      explanation: "Tata Consultancy Services (TCS) retained its prestigious position at the top of the list with a brand value of  43 billion dollars in the Kantar BrandZ Top 75 Most Valuable Indian Brands Report 2023.",
    ),

    Question(
      questionText: "Who won the Golden Ball award for the Durand Cup 2023?",
      options: ["Nandhakumar Sekar", "David Lalhlansanga", "Vishal Kaith", "Mohun Bagan Super Giant"],
      correctAnswerIndex: 0,
      explanation: "East Bengal forward Nandhakumar Sekar won the Golden Ball award for the Durand Cup 2023, having scored the winner in the previous Kolkata derby and receiving three Player of the Match awards.",
    ),

    Question(
      questionText: "Which city is set to host the Global Fintech Fest 2023, the world's premier fintech conference?",
      options: ["New York", "London", "Mumbai", "Singapore"],
      correctAnswerIndex: 2,
      explanation: "Mumbai is set to host the Global Fintech Fest 2023, featuring diverse tracks, eminent speakers, cutting-edge reports, and a global reach spanning 125+ countries.",
    ),

    Question(
      questionText: "Who inaugurated the Global Fintech Fest 2023?",
      options: ["Smt. Nirmala Sitharaman", "Raghuram Rajan", "Arundhati Bhattacharya", "Nandan Nilekani"],
      correctAnswerIndex: 0,
      explanation: "The Global Fintech Fest 2023 was inaugurated by Smt. Nirmala Sitharaman, the Minister of Finance, Government of India, highlighting fintech's inclusive role, building a global responsible financial ecosystem, and its evolution as a dynamic financial inclusion tool.",
    ),

    Question(
      questionText: "Which country joined the G20 as a permanent member during India's presidency?",
      options: ["Brazil", "Turkey", "South Africa", "African Union"],
      correctAnswerIndex: 3,
      explanation: "One of the significant outcomes of India’s G20 presidency was the African Union joining the G20 as a permanent member, signifying a milestone in global diplomacy.",
    ),

    Question(
      questionText: "Who won the US Open 2023 Men's Singles title?",
      options: ["Daniil Medvedev", "Roger Federer", "Rafael Nadal", "Novak Djokovic"],
      correctAnswerIndex: 3,
      explanation: "Novak Djokovic won the US Open 2023 Men's Singles title, defeating Daniil Medvedev in the final with a score of 6-3, 7-6(5), 6-3.",
    ),

    Question(
      questionText: "Which country was ranked No. 1 in the World Best Countries Report 2023?",
      options: ["Canada", "Sweden", "Switzerland", "Australia"],
      correctAnswerIndex: 2,
      explanation: "Switzerland claimed the title of the world’s best country in the World Best Countries Report 2023, excelling in entrepreneurship, quality of life, social purpose, and cultural influence.",
    ),

    Question(
      questionText: "What is India's rank in the World Best Countries Report 2023?",
      options: ["25th", "30th", "35th", "40th"],
      correctAnswerIndex: 1,
      explanation: "India improved its ranking to 30th place in the World Best Countries Report 2023, showcasing its potential for future growth and readiness to face global challenges.",
    ),

    Question(
      questionText: "Who won the Golden Ball award for the Durand Cup 2023?",
      options: ["Nandhakumar Sekar", "David Lalhlansanga", "Vishal Kaith", "Mohun Bagan Super Giant"],
      correctAnswerIndex: 0,
      explanation: "East Bengal forward Nandhakumar Sekar won the Golden Ball award for the Durand Cup 2023, having scored the winner in the previous Kolkata derby and receiving three Player of the Match awards.",
    ),


    Question(
      questionText: "What are the three main categories for classifying investment portfolios under RBI's new directives?",
      options: [
        "Held to Maturity (HTM), Available for Sale (AFS), Fair Value through Profit and Loss (FVTPL)",
        "Investment Grade, Speculative Grade, Junk Bonds",
        "Government Securities, Corporate Bonds, Municipal Bonds",
        "Short-term, Medium-term, Long-term",
      ],
      correctAnswerIndex: 0,
      explanation: "The three main categories are Held to Maturity (HTM), Available for Sale (AFS), and Fair Value through Profit and Loss (FVTPL).",
    ),


    Question(
      questionText: "What does the inclusion of Santiniketan in UNESCO's World Heritage List signify?",
      options: [
        "Recognition of its status as the largest city in the region.",
        "Acknowledgment of its economic contributions to the nation.",
        "Celebration of its cultural and educational significance.",
        "Approval of its political influence in international affairs.",
      ],
      correctAnswerIndex: 2,
      explanation: "Santiniketan's inclusion in UNESCO's World Heritage List signifies the celebration of its cultural and educational significance.",
    ),
    Question(
      questionText: "What is the purpose of RBI's Scale Based Regulation (SBR) framework for NBFCs?",
      options: [
        "To categorize NBFCs based on their geographical location.",
        "To impose uniform regulations on all NBFCs.",
        "To tailor regulatory oversight based on asset size and activities.",
        "To encourage NBFCs to engage in risky financial activities.",
      ],
      correctAnswerIndex: 2,
      explanation: "The purpose of SBR is to categorize NBFCs based on their asset size and activities, providing tailored regulatory oversight.",
    ),
    Question(
      questionText: "Which companies are listed in the Upper Layer (NBFC-UL) under RBI's SBR for the year 2023-24?",
      options: [
        "Microsoft, Apple, Alphabet",
        "LIC Housing Finance, Bajaj Finance, Shriram Finance",
        "BMW, Dell Technologies, Louis Vuitton",
        "Infosys, Johnson & Johnson, Electricide de France",
      ],
      correctAnswerIndex: 1,
      explanation: "Companies listed in the Upper Layer (NBFC-UL) include LIC Housing Finance, Bajaj Finance, Shriram Finance, Tata Sons, L&T Finance, Piramal Capital, Cholamandalam Investment, Indiabulls Housing Finance, Mahindra & Mahindra Financial Services, Tata Capital Financial Services, PNB Housing Finance, HDB Financial Services, Aditya Birla Finance, Muthoot Finance, and Bajaj Housing Finance.",
    ),
    Question(
      questionText: "What is the aim of Tele-Law 2.0 launched by the Union Minister of Law and Justice?",
      options: ["To promote digital literacy in rural areas", "To provide free legal aid through video conferencing", "To enhance agricultural statistics", "To commemorate Mahatma Gandhi's legacy"],
      correctAnswerIndex: 1,
      explanation: "The aim of Tele-Law 2.0 is to provide free legal aid to the rural and marginalized sections of society through video conferencing.",
    ),

    Question(
      questionText: "On which date did President Droupadi Murmu inaugurate a 12-foot statue of Mahatma Gandhi and a 'Gandhi Vatika'?",
      options: ["September 1", "September 4", "September 9", "September 18"],
      correctAnswerIndex: 1,
      explanation: "President Droupadi Murmu inaugurated the statue of Mahatma Gandhi and 'Gandhi Vatika' on September 4, coinciding with India’s celebration of 75 years of independence.",
    ),

    Question(
      questionText: "What is the new status conferred upon the National Council of Educational Research and Training (NCERT)?",
      options: ["Deemed University", "Research Institute", "Autonomous Body", "Private University"],
      correctAnswerIndex: 0,
      explanation: "NCERT has been conferred with the status of a deemed university, as announced by Union Education Minister Dharmendra Pradhan.",
    ),

    Question(
      questionText: "When is the Delhi G20 Summit scheduled to take place?",
      options: ["September 1-2, 2023", "September 4-5, 2023", "September 9-10, 2023", "September 12-13, 2023"],
      correctAnswerIndex: 2,
      explanation: "The Delhi G20 Summit is scheduled for Saturday, September 9, 2023, and Sunday, September 10, 2023.",
    ),

    Question(
      questionText: "What steps has the Department of Telecommunications (DoT) taken to enhance the safety and security of SIM card acquisition in India?",
      options: ["Issued circulars to regulate telecom prices", "Launched a new telecom network", "Implemented a ban on international SIM cards", "Issued circulars to regulate and improve the SIM card acquisition process"],
      correctAnswerIndex: 3,
      explanation: "The DoT has issued two crucial circulars aimed at regulating and improving the safety and security of SIM card acquisition in the country.",
    ),

    Question(
      questionText: "What sparked speculations about a potential name change for India in the G20 summit dinner invitation?",
      options: ["Use of 'Bharat' instead of 'India'", "Use of 'Bharat' instead of 'Hindustan'", "Use of 'President of Bharat' instead of 'Prime Minister of India'", "Use of 'Bharat' instead of 'Republic of India'"],
      correctAnswerIndex: 0,
      explanation: "The use of 'President of Bharat' in an official G20 summit dinner invitation sparked speculations about a potential name change for India to 'Bharat.'",
    ),

    Question(
      questionText: "What is the groundbreaking feature of the world's first portable disaster hospital unveiled by India?",
      options: ["It can be dismantled and reassembled", "It is made of transparent materials", "It can be airlifted and consists of cubes", "It is equipped with advanced robotics"],
      correctAnswerIndex: 2,
      explanation: "The world's first portable disaster hospital can be airlifted and consists of 72 cubes, a part of Prime Minister Narendra Modi's 'Project BHISHM'.",
    ),

    Question(
      questionText: "What reservation has been approved by the Union Home Ministry for students pursuing undergraduate medical education in Puducherry?",
      options: ["5% reservation for economically weaker sections", "20% horizontal reservation for women", "10% horizontal reservation for government school graduates", "15% reservation for sports quota"],
      correctAnswerIndex: 2,
      explanation: "The Union Home Ministry has granted approval for a 10% horizontal reservation for students who graduate from government higher secondary schools pursuing undergraduate medical education in Puducherry.",
    ),

    Question(
      questionText: "What significant statue will greet world leaders at the venue of the G20 Summit?",
      options: ["Statue of Unity", "Statue of Nataraja", "Statue of Liberty", "Statue of Mahatma Gandhi"],
      correctAnswerIndex: 1,
      explanation: "World leaders at the G20 Summit will be greeted by a 27-foot-tall statue of Nataraja, Lord Shiva in his cosmic dance.",
    ),

    Question(
      questionText: "What is the purpose of the newly inaugurated underground transformer center in Bengaluru?",
      options: ["To generate renewable energy", "To modernize power distribution infrastructure", "To store excess electricity", "To provide emergency power during disasters"],
      correctAnswerIndex: 1,
      explanation: "The underground transformer center in Bengaluru is a significant step towards modernizing the city’s power distribution infrastructure.",
    ),

    Question(
      questionText: "What is the objective of the Global Biofuels Alliance (GBA) announced by Prime Minister Narendra Modi during the G20 Summit?",
      options: ["To promote traditional fuel sources", "To reduce carbon emissions", "To regulate biofuel prices", "To establish a global biofuel market"],
      correctAnswerIndex: 1,
      explanation: "The Global Biofuels Alliance (GBA) aims to promote the adoption of biofuels and expand bioenergy access in emerging economies, as announced by Prime Minister Narendra Modi during the G20 Summit.",
    ),

    Question(
      questionText: "What event did President Droupadi Murmu inaugurate on September 12, 2023, in New Delhi?",
      options: ["Global Symposium on Climate Change", "First Global Symposium on Farmers’ Rights", "International Summit on Agriculture", "World Conference on Sustainable Farming"],
      correctAnswerIndex: 1,
      explanation: "President Droupadi Murmu inaugurated the First Global Symposium on Farmers’ Rights in New Delhi, organized by the Union Ministry of Agriculture and Farmers Welfare.",
    ),

    Question(
      questionText: "What does the online portal 'Bharat: The Mother of Democracy' showcase?",
      options: ["Historical monuments in India", "India's economic achievements", "The rich history of democracy in India", "Indian cultural festivals"],
      correctAnswerIndex: 2,
      explanation: "The online portal 'Bharat: The Mother of Democracy' serves as a comprehensive digital exhibition chronicling the rich history of democracy in India spanning 7,000 years.",
    ),

    Question(
      questionText: "What campaign and portal were launched by President Droupadi Murmu to achieve Universal Health Coverage (UHC) in India?",
      options: ["Ayushman Bharat campaign and Ayushman Bharat portal", "Ayushman Seva campaign and Ayushman Seva portal", "Ayushman Bhav campaign and Ayushman Bhava portal", "Ayushman Samarthan campaign and Ayushman Samarthan portal"],
      correctAnswerIndex: 2,
      explanation: "President Droupadi Murmu launched the Ayushman Bhav campaign and the Ayushman Bhava portal, marking a significant stride towards achieving Universal Health Coverage (UHC) in India.",
    ),

    Question(
      questionText: "What does the third phase of the Ujjwala scheme aim to provide?",
      options: ["Free electricity connections", "Free water connections", "Free gas connections, stove, and refill", "Free internet connections"],
      correctAnswerIndex: 2,
      explanation: "The third phase of the Ujjwala scheme aims to provide free gas connections, along with a stove and a refill, to 7.5 million impoverished households for three years.",
    ),

    Question(
      questionText: "What modification has the Union Ministry of Home Affairs made in the utilization of birth certificates for essential services?",
      options: ["Abolishment of birth certificates", "Introduction of e-birth certificates", "Issuance of multi-purpose birth certificates", "Enhancements under the Registration of Births and Deaths (Amendment) Act, 2023"],
      correctAnswerIndex: 3,
      explanation: "The Union Ministry of Home Affairs has made noteworthy modifications in the utilization of birth certificates for essential services, driven by the Registration of Births and Deaths (Amendment) Act, 2023.",
    ),

    Question(
      questionText: "What is the budget allocation for Phase III of the e-Courts project?",
      options: ["Rs 2,500 crore", "Rs 5,210 crore", "Rs 7,210 crore", "Rs 10,000 crore"],
      correctAnswerIndex: 2,
      explanation: "Phase III of the e-Courts project has a substantial budget allocation of Rs 7,210 crore, marking a significant step towards modernizing India's judicial system.",
    ),

    Question(
      questionText: "What is the purpose of the Unified Portal for Agricultural Statistics (UPAg) unveiled by the Indian government?",
      options: ["To promote organic farming", "To tackle governance challenges in the agricultural sector", "To regulate agricultural prices", "To provide subsidies to farmers"],
      correctAnswerIndex: 1,
      explanation: "The Unified Portal for Agricultural Statistics (UPAg) is aimed at tackling the complex governance challenges that currently beset India’s farming industry.",
    ),

    Question(
      questionText: "What is the name of the state-of-the-art facility inaugurated by Prime Minister Narendra Modi for meetings, incentives, conferences, and exhibitions?",
      options: ["India Convention and Exhibition Centre (ICEC)", "Global Convention and Expo Hub (GCEH)", "International Conference and Exhibition Facility (ICEF)", "India International Convention and Expo Centre (IICC) – 'Yashobhoomi'"],
      correctAnswerIndex: 3,
      explanation: "Prime Minister Narendra Modi unveiled Phase 1 of the India International Convention and Expo Centre (IICC), aptly named 'Yashobhoomi', at a cost of Rs 5,400 crore.",
    ),

    Question(
      questionText: "What has been added to the UNESCO World Heritage list as the 42nd site in India?",
      options: ["Qutub Minar", "Taj Mahal", "Hoysala temples of Belur, Halebid, and Somananthpura", "Ajanta and Ellora Caves"],
      correctAnswerIndex: 2,
      explanation: "The Hoysala temples of Belur, Halebid, and Somananthpura in Karnataka have been added to the UNESCO World Heritage list as the 42nd site in India.",
    ),

    Question(
      questionText: "What is the name of the integrated office complex inaugurated by Civil Aviation Minister Jyotiraditya M. Scindia at Delhi’s Safdarjung Airport?",
      options: ["SkyConnect Hub", "Aviation Excellence Centre", "Udaan Bhawan", "AirLink Plaza"],
      correctAnswerIndex: 2,
      explanation: "'Udaan Bhawan' is the name of the state-of-the-art integrated office complex inaugurated by Civil Aviation Minister Jyotiraditya M. Scindia at Delhi’s Safdarjung Airport.",
    ),

    Question(
      questionText: "What is the new name given to the old Parliament building by Prime Minister Narendra Modi?",
      options: ["Lok Sabha Bhavan", "Sanskriti Sadan", "Samvidhan Sadan", "Rajya Sabha Bhavan"],
      correctAnswerIndex: 2,
      explanation: "Prime Minister Narendra Modi announced the new name for the old Parliament building as 'Samvidhan Sadan' or 'Constitution House'.",
    ),

    Question(
      questionText: "What historic step was taken by the Union Cabinet on September 18, 2023, regarding women in legislative bodies?",
      options: ["50% reservation for women", "25% reservation for women", "33% reservation for women", "10% reservation for women"],
      correctAnswerIndex: 2,
      explanation: "The Union Cabinet took a historic step by approving the Women Reservation Bill, which mandates a 33 percent reservation for women in both the Lok Sabha and state assemblies of India.",
    ),

    Question(
      questionText: "What series of initiatives aimed at revolutionizing the agricultural sector in India were launched by Finance Minister Nirmala Sitharaman?",
      options: ["Kisan Rin portal and Ghar Ghar KCC campaign", "PM Kisan Samman Nidhi and Weather Information Network Data Systems (WINDS) manual", "Kisan Maan Dhan Yojana and Krishi Sinchai Yojana", "Kisan Samrudhi Yojana and Agriculture Innovation Fund"],
      correctAnswerIndex: 0,
      explanation: "Finance Minister Nirmala Sitharaman launched a series of initiatives, including the Kisan Rin portal and Ghar Ghar KCC campaign, aimed at revolutionizing the agricultural sector in India.",
    ),

    Question(
      questionText: "What is the theme of the 'International Lawyers’ Conference 2023' inaugurated by Prime Minister Narendra Modi?",
      options: ["Global Legal Reforms", "Emerging Challenges in Justice Delivery System", "International Trade Law", "Human Rights and Social Justice"],
      correctAnswerIndex: 1,
      explanation: "The theme of the 'International Lawyers’ Conference 2023' inaugurated by Prime Minister Narendra Modi is 'Emerging Challenges in Justice Delivery System.'",
    ),

    Question(
      questionText: "How many Vande Bharat Express trains did Prime Minister Narendra Modi flag off on September 24th?",
      options: ["Five", "Seven", "Nine", "Eleven"],
      correctAnswerIndex: 2,
      explanation: "Prime Minister Narendra Modi flagged off nine Vande Bharat Express trains on September 24th, contributing to a significant boost in the country’s rail connectivity.",
    ),
    Question(
        questionText: "When is the Investor Global Summit scheduled to take place in Dehradun?",
        options: ["December 8-9, 2023", "January 15-16, 2024", "November 5-6, 2023", "February 22-23, 2024"],
        correctAnswerIndex: 0,
        explanation: "The Investor Global Summit is scheduled to take place in Dehradun on December 8-9, 2023, and was inaugurated by Pushkar Singh Dhami, the Chief Minister of Uttarakhand."
    ),

    Question(
        questionText: "Which city in Madhya Pradesh has become India’s first solar city?",
        options: ["Indore", "Gwalior", "Sanchi", "Bhopal"],
        correctAnswerIndex: 2,
        explanation: "Sanchi in Madhya Pradesh’s Raisen district has become India’s first solar city. Chief Minister Shivraj Singh Chouhan formally launched the initiative, which has a capacity of 3 megawatts near Sanchi."
    ),

    Question(
        questionText: "Which handwoven shawls of the Particularly Vulnerable Tribal Group (PVTG) Dongria Kondhs are on the verge of acquiring the Geographical Indicator (GI) tag?",
        options: ["Pochampally", "Banarasi", "Kapdaganda", "Kantha"],
        correctAnswerIndex: 2,
        explanation: "The exquisite handwoven shawls known as Kapdaganda of the Particularly Vulnerable Tribal Group (PVTG) Dongria Kondhs in Odisha's Rayagada district are on the verge of acquiring the prestigious Geographical Indicator (GI) tag."
    ),

    Question(
        questionText: "Which state is set to host the inaugural edition of the Zayed Charity Marathon in 2024?",
        options: ["Kerala", "Goa", "Tamil Nadu", "Maharashtra"],
        correctAnswerIndex: 0,
        explanation: "The inaugural edition of the Zayed Charity Marathon is set to take place in Kerala in 2024, marking a significant collaboration between Kerala State authorities and the Indian community residing in the United Arab Emirates (UAE)."
    ),

    Question(
        questionText: "Which day has been officially observed as Bengali New Year’s Day (Poila Baisakh) and the state’s foundation day in West Bengal?",
        options: ["January 26th", "April 15th", "September 9th", "December 25th"],
        correctAnswerIndex: 1,
        explanation: "The West Bengal assembly passed a resolution to officially observe Bengali New Year’s Day, known as Poila Baisakh, as the state’s foundation day on April 15th."
    ),

    Question(
        questionText: "Which Indian state has taken a progressive step by including the transgender community in its universal pension scheme?",
        options: ["Gujarat", "Jharkhand", "Odisha", "Punjab"],
        correctAnswerIndex: 1,
        explanation: "The Jharkhand government has taken a progressive step by including the transgender community in its universal pension scheme. This decision was announced during a cabinet meeting presided over by Chief Minister Hemant Soren."
    ),

    Question(
        questionText: "What is the name of the largest social welfare initiative launched by the Tamil Nadu government aimed at providing monthly financial assistance to eligible women heads of families?",
        options: ["Amma Unavagam", "Makkalai Thedi Maruthuvam", "Kalaignar Magalir Urimai Thogai Thittam", "Thalikku Thangam"],
        correctAnswerIndex: 2,
        explanation: "The Tamil Nadu government is set to launch the Kalaignar Magalir Urimai Thogai Thittam, the largest social welfare initiative aimed at providing monthly financial assistance to over 1.06 crore eligible women who are the heads of their families."
    ),

    Question(
        questionText: "Under the leadership of Chief Minister Shivraj Singh Chouhan, which Indian state cabinet has given the green light to a series of transformative initiatives addressing critical issues within the state?",
        options: ["Uttarakhand", "Punjab", "Madhya Pradesh", "Haryana"],
        correctAnswerIndex: 2,
        explanation: "The Madhya Pradesh (MP) cabinet, under the leadership of Chief Minister Shivraj Singh Chouhan, has given the green light to a series of transformative initiatives aimed at addressing critical issues within the state. These initiatives encompass compensation for mob lynching victims, housing schemes for homeless families, enhanced honorarium for guest faculty, flood relief packages, and the expansion of public services."
    ),

    Question(
        questionText: "What is the name of the digital project unveiled by President Droupadi Murmu in Gujarat, inspired by Prime Minister Narendra Modi’s concept of ‘One Nation, One Application’?",
        options: ["Digital India", "Gujarat e-Governance Initiative", "National Digital Assembly", "Digital House project, National eVidhan Application (NeVA)"],
        correctAnswerIndex: 3,
        explanation: "President Droupadi Murmu officially unveiled the Gujarat legislative assembly’s Digital House project, National eVidhan Application (NeVA), in Gandhinagar. This project signifies a substantial leap towards achieving a completely paperless Assembly process, inspired by Prime Minister Narendra Modi’s visionary concept of ‘One Nation, One Application.’"
    ),

    Question(
        questionText: "What is the name of the healthcare initiative inaugurated by the State Health Minister of Punjab, Balbir Singh, aimed at providing vaccination against 12 Vaccine-Preventable Diseases (VPD)?",
        options: ["Swasthya Suraksha Yojana", "Mission Intensified IndraDhanush", "Ayushman Bharat", "Punjab Health Assurance Scheme"],
        correctAnswerIndex: 1,
        explanation: "In Punjab, State Health Minister Balbir Singh inaugurated “Mission Intensified IndraDhanush” 5.0. This mission aims to provide vaccination against 12 Vaccine-Preventable Diseases (VPD) and was initially scheduled for August but was delayed due to flooding in the state."
    ),

    Question(
        questionText: "What significant announcement did Chief Minister Bhagwant Singh Mann make in Ferozepur, Punjab, regarding a monument dedicated to the Battle of Saragarhi?",
        options: ["Monument for Freedom Fighters", "Saragarhi Memorial Park", "Shaheed Smarak", "State-of-the-art monument for 21 Sikh soldiers"],
        correctAnswerIndex: 3,
        explanation: "Chief Minister Bhagwant Singh Mann announced a significant tribute to the valiant Sikh warriors who gave their lives in the historic Battle of Saragarhi. A state-of-the-art monument, dedicated to commemorating the martyrdom of 21 brave Sikh soldiers, will grace the landscape of Ferozepur, with an ambitious timeline of completion within six months."
    ),



    Question(
        questionText: "What groundbreaking initiative has the Karnataka government unveiled to safeguard the interests and well-being of platform-based gig workers?",
        options: ["Digital Employment Scheme", "Gig Worker Protection Act", "Karnataka Gig Workers Welfare Scheme", "Comprehensive Gig Worker Insurance Initiative"],
        correctAnswerIndex: 3,
        explanation: "The Karnataka government has unveiled a groundbreaking initiative that offers a comprehensive insurance package worth Rs 4 lakh, including Rs 2 lakh in life insurance and an additional Rs 2 lakh in accidental insurance, aimed at safeguarding the interests and well-being of platform-based gig workers."
    ),

    Question(
        questionText: "Which revered philosopher’s 108-feet-tall statue is set to be unveiled by Madhya Pradesh Chief Minister Shivraj Singh Chouhan in Omkareshwar?",
        options: ["Chanakya", "Adi Shankaracharya", "Vivekananda", "Kabir"],
        correctAnswerIndex: 1,
        explanation: "Madhya Pradesh Chief Minister Shivraj Singh Chouhan is set to unveil a majestic 108-feet-tall statue of the revered philosopher Adi Shankaracharya in Omkareshwar on September 18. This monumental project is named “Eaktmta Ki Pratima” (Statue of Oneness)."
    ),

    Question(
        questionText: "What is the name of the nutritional initiative unveiled by Odisha’s Chief Minister, Naveen Patnaik, addressing the needs of mothers, adolescent girls, and children?",
        options: ["Swasthya Sathi", "Poshan Abhiyan", "Mukhyamantri Sampoorna Pushti Yojana", "Nutrition for All"],
        correctAnswerIndex: 2,
        explanation: "In Odisha, Chief Minister Naveen Patnaik unveiled the “Mukhyamantri Sampoorna Pushti Yojana,” along with the complementary “Pada Pushti Yojana.” These initiatives aim to address the nutritional needs of mothers, adolescent girls, and children in the state."
    ),

    Question(
        questionText: "What are the new names given to the districts of Aurangabad and Osmanabad in Maharashtra?",
        options: ["Chhatrapati Sambhajinagar and Dharashiv", "Shivaji Nagar and Solapur", "Rajendra Nagar and Miraj", "Maratha Nagar and Vithalwadi"],
        correctAnswerIndex: 0,
        explanation: "The Maharashtra government has issued an official notification renaming Aurangabad and Osmanabad districts to Chhatrapati Sambhajinagar and Dharashiv, respectively."
    ),

    Question(
        questionText: "What groundbreaking app was unveiled by Assam Governor Gulab Chand Kataria in a grand launch ceremony, aimed at revolutionizing communication among village headmen?",
        options: ["Sarpanch Connect", "Gram Bandhu", "Sarpanch Samvad", "Panchayat Prahari"],
        correctAnswerIndex: 2,
        explanation: "Assam Governor Gulab Chand Kataria unveiled the ‘Sarpanch Samvad‘ app in a grand launch ceremony. This app is set to revolutionize the way Sarpanchs, who are village headmen, communicate, collaborate, and access vital resources."
    ),

    Question(
        questionText: "What annual observance does the Hyderabad-Karnataka Liberation Day commemorate?",
        options: ["Independence Day", "Republic Day", "Bihar Diwas", "Kalyana-Karnataka Liberation Day (Vimochana Diwas)"],
        correctAnswerIndex: 3,
        explanation: "Officially known as Kalyana-Karnataka Liberation Day (Vimochana Diwas), Hyderabad-Karnataka Liberation Day is an important annual observance celebrated across various districts of Karnataka, India. It commemorates the integration of Hyderabad into India in 1948."
    ),

    Question(
        questionText: "What proactive step did Chief Minister Pramod Sawant take in Goa to acknowledge the contributions of homemakers and uplift their socio-economic status?",
        options: ["Distribution of Free Rations", "Launch of Women Empowerment Program", "Distribution of Griha Adhar sanction orders", "Initiation of Skill Development Program"],
        correctAnswerIndex: 2,
        explanation: "Chief Minister Pramod Sawant in Goa took a proactive step to acknowledge the contributions of homemakers by distributing Griha Adhar sanction orders. This step aims to uplift the socio-economic status of homemakers."
    ),

    Question(
        questionText: "What recent approval has the Indian Council for Medical Research (ICMR) granted regarding the diagnosis of Nipah virus in Kerala?",
        options: ["Approval for Nipah Vaccine", "Approval for Nipah Treatment Centers", "Approval for Nipah Testing Kit", "Approval for Truenat test"],
        correctAnswerIndex: 3,
        explanation: "The Indian Council for Medical Research (ICMR) has granted approval for the use of the Truenat test to diagnose Nipah virus (NiV) in Kerala. This development is significant as hospitals equipped with Biosafety Level 2 (BSL 2) laboratories can now conduct the test."
    ),

    Question(
        questionText: "What cultural celebration organized by the National Mission on Cultural Mapping (NMCM) of IGNCA is set to take place in Delhi?",
        options: ["Kumbh Mela", "Holi Utsav", "Navratri Festival", "Nadi Utsav"],
        correctAnswerIndex: 3,
        explanation: "The fourth edition of ‘Nadi Utsav,’ a celebration of India’s rich river culture, begins on September 22nd and will continue until September 24th, 2023. Organized by the National Mission on Cultural Mapping (NMCM) of IGNCA in collaboration with the Janapada Sampada Division, this year’s ‘Nadi Utsav’ promises to be an enlightening and culturally immersive experience in Delhi."
    ),

    Question(
        questionText: "What is the name of the second tiger reserve established by the Madhya Pradesh Government, becoming the 54th in India?",
        options: ["Bandipur Tiger Reserve", "Veerangana Durgavati Tiger Reserve", "Ranthambore Tiger Reserve", "Jim Corbett Tiger Reserve"],
        correctAnswerIndex: 1,
        explanation: "Madhya Pradesh, home to the most number of tigers in the country, has got a new protected area for the big cats named ‘Veerangana Durgavati Tiger Reserve.’ The Madhya Pradesh Government has unveiled this reserve, becoming the seventh tiger reserve in the state and the 54th in India."
    ),
    Question(
      questionText: "Who became the first woman Speaker of the Odisha Assembly?",
      options: ["Santosh Rani Sahu", "Pramila Malik", "Rohini Sindhuri", "Sarojini Hembram"],
      correctAnswerIndex: 1,
      explanation: "Pramila Malik became the first woman Speaker of the Odisha Assembly. She was elected unopposed after the resignation of Bikram Keshari Arukha in May 2023. ",
    ),
    Question(
      questionText: "Which state in India has inaugurated the George Everest Cartography Museum?",
      options: ["Uttar Pradesh", "Himachal Pradesh", "Uttarakhand", "Manipur"],
      correctAnswerIndex: 2,
      explanation: "The Minister of Tourism and Culture of Uttarakhand, Satpal Maharaj, inaugurated the George Everest Cartography Museum in the picturesque town of Mussoorie, Uttarakhand, on the occasion of World Tourism Day. ",
    ),
    Question(
      questionText: "Which state is preparing to establish its second tiger reserve in the Kaimur district?",
      options: ["Bihar", "Madhya Pradesh", "Rajasthan", "Odisha"],
      correctAnswerIndex: 0,
      explanation: "In a significant development for wildlife conservation in Bihar, the state is preparing to establish its second tiger reserve within the Kaimur district. The upcoming tiger reserve in Kaimur district will complement the existing Valmiki Tiger Reserve (VTR) located in the West Champaran district of Bihar. ",
    ),

    Question(
      questionText: "What is the objective of the Jal Jeevan Mission (JJM) in India?",
      options: [
        "Providing financial support to traditional craftsmen and artisans",
        "Enhancing the quality of education and nurturing creativity",
        "Bolstering India's renewable energy sector",
        "Expanding access to clean water in rural areas"
      ],
      correctAnswerIndex: 3,
      explanation: "The Jal Jeevan Mission (JJM) aims to rapidly expand access to clean water in rural areas. It has provided tap water connections to an impressive 13 crore rural households since its launch in 2019. ",
    ),

    Question(
      questionText: "What is the 'Savera' scheme launched by Prayagraj police aimed at?",
      options: [
        "Strengthening the medical devices industry",
        "Offering essential services to senior citizens during emergencies",
        "Providing free legal aid to rural and marginalized sections",
        "Empowering rural youth with digital skills"
      ],
      correctAnswerIndex: 1,
      explanation: "The 'Savera' scheme launched by Prayagraj police is aimed at ensuring the safety and well-being of senior citizens by offering essential services during health and other emergencies. Over 700 senior citizens have registered in just the past three days. ",
    ),

    Question(
      questionText: "What does the Union Cabinet's approval of the groundbreaking scheme for a 4 GW battery energy storage system (BESS) aim to achieve?",
      options: [
        "Offering low-interest loans to traditional craftsmen",
        "Enhancing integration of solar and wind energy into the grid",
        "Providing financial support for exports",
        "Uplifting women across Tamil Nadu"
      ],
      correctAnswerIndex: 1,
      explanation: "The scheme approved by the Union Cabinet aims to bolster India's renewable energy sector by supporting the development of a 4 GW battery energy storage system (BESS) by 2030-31. The focus is on enhancing the integration of solar and wind energy into the grid. ",
    ),

    Question(
      questionText: "Under which scheme did the Union Minister of Law and Justice launch Tele-Law 2.0?",
      options: [
        "Remission of Duties and Taxes on Exported Products (RoDTEP) scheme",
        "Skills on Wheels initiative",
        "DISHA Scheme",
        "Sovereign Gold Bond (SGB) Scheme"
      ],
      correctAnswerIndex: 2,
      explanation: "The Union Minister of Law and Justice launched Tele-Law 2.0 under the DISHA Scheme. This initiative aims to provide free legal aid to the rural and marginalized sections of society through video conferencing. ",
    ),

    Question(
      questionText: "What is the objective of the Sovereign Gold Bond (SGB) Scheme's 2023-24 Series II?",
      options: [
        "Bolstering India's renewable energy sector",
        "Promoting clean mobility and bolstering the commercial vehicle industry",
        "Uplifting women across Tamil Nadu",
        "Providing a secure alternative for investing in gold"
      ],
      correctAnswerIndex: 3,
      explanation: "The Sovereign Gold Bond (SGB) Scheme's 2023-24 Series II aims to provide a secure alternative for investing in gold, diverging from physical gold ownership. It offers an opportunity for additional income. ",
    ),

    Question(
      questionText: "What is the focus of the 'Kalaignar Magalir Urimai Thogai Thittam' scheme launched by Tamil Nadu Chief Minister MK Stalin?",
      options: [
        "Enhancing the quality of education and nurturing creativity",
        "Bolstering India's renewable energy sector",
        "Promoting clean mobility and bolstering the commercial vehicle industry",
        "Uplifting women across Tamil Nadu"
      ],
      correctAnswerIndex: 3,
      explanation: "The 'Kalaignar Magalir Urimai Thogai Thittam' scheme launched by Tamil Nadu Chief Minister MK Stalin aims to uplift women across the state, bringing about a significant positive change in their lives. ",
    ),

    Question(
      questionText: "Which scheme, comprising four central sector sub-schemes, has been instrumental in empowering students from Scheduled Castes (SCs) and Other Backward Classes (OBCs) since 2014?",
      options: [
        "PM Vishwakarma scheme",
        "Malaviya Mission – Teacher Training Program",
        "Skills on Wheels initiative",
        "Scheme for Higher Education Youth in Apprenticeship and Skills (SHREYAS scheme)"
      ],
      correctAnswerIndex: 3,
      explanation: "The Scheme for Higher Education Youth in Apprenticeship and Skills (SHREYAS scheme), comprising four central sector sub-schemes, has been instrumental in empowering students from Scheduled Castes (SCs) and Other Backward Classes (OBCs) since 2014. ",
    ),

    Question(
      questionText: "What is the primary objective of the 'PM Vishwakarma' scheme unveiled by Prime Minister Narendra Modi?",
      options: [
        "Providing financial support to traditional craftsmen and artisans",
        "Enhancing the quality of education and nurturing creativity",
        "Empowering rural youth with digital skills",
        "Providing crucial support to traditional craftsmen and artisans"
      ],
      correctAnswerIndex: 3,
      explanation: "The 'PM Vishwakarma' scheme unveiled by Prime Minister Narendra Modi is designed to provide crucial support to traditional craftsmen and artisans by offering them low-interest loans without requiring collateral. The scheme aims to benefit approximately 30 lakh families of traditional artisans and craftsmen. ",
    ),

    Question(
      questionText: "What is the primary objective of the 'Skills on Wheels' initiative inaugurated by Union Education and Skill Development and Entrepreneurship Minister Dharmendra Pradhan?",
      options: [
        "Strengthening the medical devices industry",
        "Offering essential services to senior citizens during emergencies",
        "Enhancing the employability of rural youth",
        "Providing free legal aid to rural and marginalized sections"
      ],
      correctAnswerIndex: 2,
      explanation: "The primary objective of the 'Skills on Wheels' initiative inaugurated by Union Education and Skill Development and Entrepreneurship Minister Dharmendra Pradhan is to enhance the employability of rural youth and prepare them for the challenges of the future job market. ",
    ),

    Question(
      questionText: "What is the objective of the ₹480 crore scheme approved by the Indian government for the medical devices industry?",
      options: [
        "Enhancing the quality of education and nurturing creativity",
        "Promoting clean mobility and bolstering the commercial vehicle industry",
        "Developing a skilled talent pool",
        "Providing essential financial support to government institutions"
      ],
      correctAnswerIndex: 2,
      explanation: "The ₹480 crore scheme approved by the Indian government for the medical devices industry is aimed at developing a skilled talent pool. The initiative will provide essential financial support to government institutions for the implementation of various courses related to medical devices. ",
    ),

    Question(
      questionText: "What is the purpose of the Pandit Deendayal Upadhyay National Welfare Fund for Sportspersons (PDUNWFS) felicitated by Union Minister for Youth Affairs & Sports Shri Anurag Singh Thakur?",
      options: [
        "Bolstering India's renewable energy sector",
        "Providing a secure alternative for investing in gold",
        "Strengthening the medical devices industry",
        "Supporting sportspersons from poor and needy families"
      ],
      correctAnswerIndex: 3,
      explanation: "The Pandit Deendayal Upadhyay National Welfare Fund for Sportspersons (PDUNWFS) was formulated to help sportspersons who play well but are from poor and needy families. The scheme helps in the procurement of sports equipment and training. ",
    ),

    Question(
      questionText: "What is the purpose of the two-day event 'Arogya Manthan' hosted by the National Health Authority (NHA) in New Delhi?",
      options: [
        "Enhancing the quality of education and nurturing creativity",
        "Strengthening the medical devices industry",
        "Commemorating milestones in India's healthcare sector",
        "Bolstering India's renewable energy sector"
      ],
      correctAnswerIndex: 2,
      explanation: "The two-day event 'Arogya Manthan' hosted by the National Health Authority (NHA) in New Delhi is organized to commemorate two significant milestones in India's healthcare sector: the 5th anniversary of the Ayushman Bharat Pradhan Mantri Jan Arogya Yojana (AB PM-JAY) and the 2nd anniversary of the Ayushman Bharat Digital Mission (ABDM). ",
    ),

    Question(
      questionText: "What does the extension of support for exports under the Remission of Duties and Taxes on Exported Products (RoDTEP) scheme entail?",
      options: [
        "Enhancing the employability of rural youth",
        "Strengthening the medical devices industry",
        "Bolstering India's renewable energy sector",
        "Providing support for exports until June 2024"
      ],
      correctAnswerIndex: 3,
      explanation: "The Central Government extended support for exports under the Remission of Duties and Taxes on Exported Products (RoDTEP) scheme until June 2024. The extension comes at a crucial time when the country's exports are facing challenges due to the global economic slowdown. ",
    ),

    Question(
      questionText: "What is the focus of the Malaviya Mission – Teacher Training Program introduced by Union Minister for Education Dharmendra Pradhan?",
      options: [
        "Promoting clean mobility and bolstering the commercial vehicle industry",
        "Providing a secure alternative for investing in gold",
        "Enhancing the employability of rural youth",
        "Improving the standard of education in India"
      ],
      correctAnswerIndex: 3,
      explanation: "The Malaviya Mission – Teacher Training Program introduced by Union Minister for Education Dharmendra Pradhan is a crucial step in improving the standard of education in India. It aims to transform faculty capacity building and teacher preparation programs across the country's higher education institutions. ",
    ),

    Question(
      questionText: "What is the objective of the Memorandum of Understanding (MoU) signed between BEL and IAI?",
      options: [
        "Enhancing cooperation in addressing India's requirements in the domain of Short Range Air Defence Systems",
        "Strengthening the medical devices industry",
        "Bolstering India's renewable energy sector",
        "Developing digital marketing knowledge for business owners"
      ],
      correctAnswerIndex: 0,
      explanation: "The Memorandum of Understanding (MoU) signed between Bharat Electronics Limited (BEL) and Israel Aerospace Industries (IAI) aims to enhance cooperation in addressing India's requirements in the domain of Short Range Air Defence Systems. ",
    ),

    Question(
      questionText: "What is the objective of the three-year alliance between the Ministries and Meta (formerly known as Facebook)?",
      options: [
        "Commemorating milestones in India's healthcare sector",
        "Promoting clean mobility and bolstering the commercial vehicle industry",
        "Enhancing the quality of education and nurturing creativity",
        "Providing aspiring and established business owners with digital marketing knowledge"
      ],
      correctAnswerIndex: 3,
      explanation: "The three-year alliance between the Ministries of Skill Development and Entrepreneurship, Education, and Meta (formerly known as Facebook) aims to provide aspiring and established business owners with crucial digital marketing knowledge. The program is titled 'Education to Entrepreneurship: Empowering a Generation of Students, Educators, and Entrepreneurs.' ",
    ),

    Question(
      questionText: "What is the focus of the collaboration between the Union Ministry of Education and Adobe?",
      options: [
        "Strengthening the medical devices industry",
        "Bolstering India's renewable energy sector",
        "Developing digital marketing knowledge for business owners",
        "Promoting creative expression and digital literacy among students and educators"
      ],
      correctAnswerIndex: 3,
      explanation: "The collaboration between the Union Ministry of Education and Adobe aims to promote creative expression and digital literacy among students and educators through the utilization of Adobe Express, an innovative application developed by Adobe. ",
    ),

    Question(
      questionText: "What does the strategic collaboration between GSV Vadodara and Airbus aim to achieve?",
      options: [
        "Enhancing the quality of education and nurturing creativity",
        "Bolstering the Indian aviation sector",
        "Promoting clean mobility and bolstering the commercial vehicle industry",
        "Providing essential financial support to government institutions"
      ],
      correctAnswerIndex: 1,
      explanation: "The strategic collaboration between Gati Shakti Vishwavidyalaya (GSV) Vadodara and Airbus aims to fortify the Indian aviation sector. This partnership signifies a significant milestone in fostering industry-academia alliances to propel India's aviation industry to new heights. ",
    ),
  // G20 Summit in Delhi 2023
  Question(
  questionText: "When is the G20 Summit 2023 scheduled to take place?",
  options: ["September 5th to 7th", "September 9th and 10th", "September 14 to 16", "September 21"],
  correctAnswerIndex: 1,
  explanation: "The G20 Summit 2023 is scheduled to take place on September 9th and 10th in Delhi, bringing together leaders from member nations and guest nations to discuss various global issues."
  ),

// ASEAN Summit in Jakarta
  Question(
  questionText: "Where did the 43rd ASEAN Summit take place?",
  options: ["Bharat Mandappam, Delhi", "Jakarta Convention Center", "Vashi, Navi Mumbai", "Science City, Ahmedabad"],
  correctAnswerIndex: 1,
  explanation: "The 43rd ASEAN Summit took place at the Plenary Hall of the Jakarta Convention Center in Jakarta, Indonesia, from September 5th to 7th."
  ),

// Green Hydrogen Pilots Conference
  Question(
  questionText: "Which organization hosted the conference on 'green hydrogen pilots in India'?",
  options: ["UNCITRAL", "Spices Board India", "NTPC Limited", "IMD"],
  correctAnswerIndex: 2,
  explanation: "The conference on 'green hydrogen pilots in India' took place in New Delhi on September 5, hosted by NTPC Limited, showcasing green hydrogen initiatives from both public and private sectors."
  ),

// SCO Ministers of Law and Justice Meeting
  Question(
  questionText: "How was the 10th meeting of the Ministers of Law and Justice of SCO countries conducted?",
  options: ["In-person at Bharat Mandappam", "Via video conferencing", "At the Plenary Hall, Jakarta Convention Center", "During the G20 Summit"],
  correctAnswerIndex: 1,
  explanation: "The 10th meeting of the Ministers of Law and Justice of SCO countries was convened via video conferencing, where India reaffirmed its commitment to the Shanghai Cooperation Organisation (SCO)."
  ),

// G20 India Mobile App
  Question(
  questionText: "Which government department created the G20 India mobile app?",
  options: ["Ministry of Commerce and Industry", "Ministry of External Affairs", "NTPC Limited", "Spices Board India"],
  correctAnswerIndex: 1,
  explanation: "In preparation for the G20 Summit, the Indian government unveiled the G20 India mobile app, created by the Ministry of External Affairs, to facilitate interaction and provide information for all attendees."
  ),

// India's Diplomatic Relations with Timor-Leste
  Question(
  questionText: "During which summit did Indian Prime Minister Narendra Modi announce the opening of an embassy in Timor-Leste?",
  options: ["G20 Summit", "ASEAN Summit", "UNCITRAL South Asia Conference", "World Spice Congress"],
  correctAnswerIndex: 1,
  explanation: "During the annual ASEAN-India summit in Jakarta, Prime Minister Modi announced India's decision to open an embassy in Timor-Leste, reflecting its commitment to strengthening ties with the ASEAN region."
  ),

// G20 Presidency Handover
  Question(
  questionText: "To which country did Indian Prime Minister Narendra Modi hand over the G20 Presidency gavel?",
  options: ["United States", "Brazil", "China", "Indonesia"],
  correctAnswerIndex: 1,
  explanation: "In a symbolic ceremony, Prime Minister Modi handed over the G20 Presidency gavel to Brazil's President, marking the transition of leadership within the elite group."
  ),

// UNCITRAL South Asia Conference
  Question(
  questionText: "Who jointly organized the inaugural UNCITRAL South Asia conference, and when did it take place?",
  options: ["Ministry of External Affairs and Spices Board India, September 14 to 16", "UNCITRAL and Ministry of Commerce and Industry, September 21", "NTPC Limited, September 5", "ASEAN, September 7"],
  correctAnswerIndex: 0,
  explanation: "India recently hosted the inaugural UNCITRAL South Asia conference from September 14 to 16. The event was jointly organized by the Ministry of External Affairs, UNCITRAL, and the organization's national coordination committee for India."
  ),

// World Spice Congress
  Question(
  questionText: "Where did the 14th edition of the World Spice Congress (WSC) take place?",
  options: ["Delhi", "Vashi, Navi Mumbai", "Ahmedabad", "Jakarta"],
  correctAnswerIndex: 1,
  explanation: "The 14th edition of the World Spice Congress (WSC) commenced in Vashi, Navi Mumbai, organized by the Spices Board India in collaboration with trade bodies and export forums."
  ),

// Climate Ambition Summit (CAS)
  Question(
  questionText: "What major economies were notably absent from the Climate Ambition Summit (CAS) at the United Nations General Assembly?",
  options: ["India and China", "United States and China", "China and Russia", "China, United States, and India"],
  correctAnswerIndex: 3,
  explanation: "China, the United States, and India, collectively responsible for 42% of global greenhouse gas emissions, were notably missing from the Climate Ambition Summit, which aimed to showcase leaders with credible actions and policies for global emissions reduction."
  ),

// Quad Nations Meeting
  Question(
  questionText: "On the sidelines of which United Nations General Assembly session did Foreign Ministers from Quad nations convene?",
  options: ["77th session", "78th session", "79th session", "80th session"],
  correctAnswerIndex: 1,
  explanation: "On the sidelines of the 78th session of the United Nations General Assembly (UNGA), Foreign Ministers from the Quad nations – India, Australia, Japan, and the U.S. – convened to discuss various important issues, reaffirming their commitment to a 'free and open' Indo-Pacific region."
  ),

// Vibrant Gujarat Global Summit
  Question(
  questionText: "Who commemorated the 20th anniversary of the Vibrant Gujarat Global Summit, and where did it take place?",
  options: ["President of India, Vashi, Navi Mumbai", "Prime Minister Narendra Modi, Ahmedabad", "Indian External Affairs Minister, Jakarta", "G20 Summit, Delhi"],
  correctAnswerIndex: 1,
  explanation: "The Prime Minister, Shri Narendra Modi, graced the occasion commemorating the 20th anniversary of the Vibrant Gujarat Global Summit. The event took place at Science City in Ahmedabad, a city that has witnessed the remarkable transformation of Vibrant Gujarat over the past two decades."
  ),

// Ranks and Reports

// World's Freest Economy
  Question(
  questionText: "Which city surpassed Hong Kong as the world's freest economy?",
  options: ["Delhi", "Bengaluru", "Singapore", "Jakarta"],
  correctAnswerIndex: 2,
  explanation: "In a significant shift, Singapore has surpassed Hong Kong to claim the title of the world's freest economy, marking the end of Hong Kong's 53-year reign at the top, according to the Economic Freedom of the World Index released by the Canadian think tank Fraser Institute."
  ),

// India Ageing Report 2023
  Question(
  questionText: "What percentage of India's population is projected to be comprised of elderly individuals by the year 2050, according to the India Ageing Report 2023?",
  options: ["10%", "15%", "20%", "25%"],
  correctAnswerIndex: 2,
  explanation: "The India Ageing Report 2023 highlights a significant demographic shift, with the elderly projected to comprise over 20% of the total population by the year 2050, as jointly released by the International Institute for Population Sciences and the United Nations Population Fund."
  ),

// IMD World Talent Ranking
  Question(
  questionText: "Which country secured the top position in the IMD World Talent Ranking for 2023?",
  options: ["India", "Switzerland", "Luxembourg", "United States"],
  correctAnswerIndex: 1,
  explanation: "In the 2023 World Talent Ranking, Switzerland secured the top position, with Luxembourg in second place. India showed improvements in infrastructure but slipped four spots to the 56th position out of 64 economies, according to the International Institute for Management Development (IMD)."
  ),

// Bengaluru's Green-Certified Office Space
  Question(
  questionText: "Which report showcased Bengaluru as the city with the highest green-certified office space?",
  options: ["India Ageing Report 2023", "IMD World Talent Ranking", "CII Realty Conference", "Indian Real Estate: Taking Giant Strides – 2023 Mid-Year Outlook"],
  correctAnswerIndex: 3,
  explanation: "Bengaluru has emerged as the city with the highest green-certified office space, according to the 'Indian Real Estate: Taking Giant Strides – 2023 Mid-Year Outlook' report jointly released by real estate consultant CBRE and industry body CII during the CII Realty conference."
  ),
  // Trishul Exercise
  Question(
  questionText: "What is the objective of the annual mega training exercise 'Trishul' conducted by the Indian Air Force?",
  options: ["Strategic collaboration with foreign air forces", "Showcasing new aircraft technology", "Operational readiness and capabilities enhancement", "Counter-terrorism operations"],
  correctAnswerIndex: 2,
  explanation: "The Trishul exercise is organized by the Western Air Command (WAC) with the objective of bolstering the Indian Air Force's operational readiness and capabilities across a vast geographical area from Leh in Kashmir to Nal in Rajasthan."
  ),

// Bharat Drone Shakti 2023
  Question(
  questionText: "Where will the 'Bharat Drone Shakti 2023' event take place, and what is its focus?",
  options: ["Leh, showcasing military drones", "Ghaziabad, highlighting Indian drone industry prowess", "Mumbai, emphasizing civilian drone applications", "Jaisalmer, focusing on drone technology for agriculture"],
  correctAnswerIndex: 1,
  explanation: "The 'Bharat Drone Shakti 2023' event, co-hosted by the Indian Air Force and the Drone Federation of India, will take place in Hindan (Ghaziabad). It aims to be a pioneering exhibition highlighting the prowess of the Indian drone industry with over 50 live aerial demonstrations."
  ),

// Exercise BRIGHT STAR-23
  Question(
  questionText: "Where did the multinational Tri-Services military exercise 'Exercise BRIGHT STAR-23' take place, and how many countries participated?",
  options: ["Leh, with 20 countries participating", "Port Alexandria, Egypt, with 34 countries participating", "Mumbai, with 15 countries participating", "Nal in Rajasthan, with 25 countries participating"],
  correctAnswerIndex: 1,
  explanation: "Indian Navy's INS Sumedha participated in 'Exercise BRIGHT STAR-23' at Port Alexandria, Egypt, making it the largest-ever joint military exercise in the Middle East and North Africa region with the participation of 34 countries."
  ),

// Varuna-23 Naval Exercise
  Question(
  questionText: "Where did the Phase II of the Varuna naval exercise, Varuna-23, take place, and which two nations participated?",
  options: ["Bengaluru, involving India and Singapore", "Arabian Sea, involving India and France", "Maldives, involving India and the US", "Bay of Bengal, involving India and Australia"],
  correctAnswerIndex: 1,
  explanation: "The Phase II of the Varuna naval exercise, Varuna-23, took place in the Arabian Sea, involving the Indian and French Navies, with a focus on enhancing warfighting capabilities, improving interoperability, and promoting peace, security, and stability in the region."
  ),

// World's Highest Fighter Airfield
  Question(
  questionText: "Where is the world's highest fighter airfield under construction by the Border Roads Organisation (BRO), and when was the foundation stone scheduled to be placed?",
  options: ["Leh, foundation stone placed on August 15", "Nyoma in Ladakh, foundation stone to be placed on September 12, 2023", "Nal in Rajasthan, foundation stone placed on September 1", "Hindan in Ghaziabad, foundation stone to be placed on October 1, 2023"],
  correctAnswerIndex: 1,
  explanation: "The Border Roads Organisation (BRO) is constructing the world's highest fighter airfield at Nyoma in Ladakh. The foundation stone for this ambitious project was scheduled to be placed by Defence Minister Rajnath Singh on September 12, 2023, at the Devak Bridge in Jammu."
  ),

// Indian Coast Guard at HACGAM
  Question(
  questionText: "Where did the 19th Heads of Asian Coast Guard Agencies Meeting (HACGAM) take place, and which organization participated?",
  options: ["Mumbai, with 15 Asian Coast Guard Agencies", "Istanbul, Turkey, with the Indian Coast Guard participating", "Port Blair, with 10 participating nations", "Singapore, with ASEAN Coast Guard Agencies"],
  correctAnswerIndex: 1,
  explanation: "The Indian Coast Guard participated in the 19th Heads of Asian Coast Guard Agencies Meeting (HACGAM) from September 5-8, 2023, in Istanbul, Turkey."
  ),

// Indian Navy Collaboration with Uber
  Question(
  questionText: "What is the significance of the collaboration between the Indian Navy and Uber?",
  options: ["Launching a joint naval transportation service", "Providing naval personnel with exclusive discounts on Uber rides", "Enhancing the travel experience for naval personnel and their families", "Developing a naval-themed Uber app"],
  correctAnswerIndex: 2,
  explanation: "The Indian Navy has collaborated with Uber to enhance the travel experience of its personnel and their families by providing reliable, convenient, safe, and economical mobility solutions across the country."
  ),

// Border Roads Organisation Infrastructure Projects
  Question(
  questionText: "How many infrastructure projects of the Border Roads Organisation (BRO) were inaugurated by Defence Minister Rajnath Singh, and in how many states/union territories?",
  options: ["50 projects in 8 states", "75 projects in 12 states/union territories", "90 projects in 11 states/union territories", "100 projects in 15 states"],
  correctAnswerIndex: 2,
  explanation: "Raksha Mantri Shri Rajnath Singh inaugurated 90 infrastructure projects of the Border Roads Organisation (BRO) worth over Rs 2,900 crore, spread across 11 States/Union Territories, including tunnels, airfields, helipads, roads, and bridges."
  ),

// Arrival of the First C295 Aircraft
  Question(
  questionText: "What is the significance of the arrival of the first C295 aircraft in India?",
  options: ["India's first supersonic aircraft", "Collaboration between India and Russia in aircraft manufacturing", "First instance of an Indian private company manufacturing an aircraft", "Launch of a new commercial aircraft by Airbus"],
  correctAnswerIndex: 2,
  explanation: "The arrival of the first C295 aircraft marks a significant achievement in India's aviation history as it represents the first instance of an Indian private company, Tata Group, manufacturing an aircraft in collaboration with Airbus."
  ),

// BAE Systems and L&T Collaboration
  Question(
  questionText: "What is the aim of the collaboration between BAE Systems and L&T in the Indian defense landscape?",
  options: ["Developing a new missile defense system", "Introducing the world-leading Articulated All-Terrain Vehicle (AATV) to the Indian armed forces", "Building advanced naval warships", "Jointly manufacturing fighter jets"],
  correctAnswerIndex: 1,
  explanation: "The collaboration between BAE Systems and L&T aims to introduce the world-leading Articulated All-Terrain Vehicle (AATV) known as 'BvS10' to the Indian armed forces, revolutionizing the Indian defense landscape."
  ),

// Defence Acquisition Council Approvals
  Question(
  questionText: "What proposals were approved by the Defence Acquisition Council (DAC), led by Defence Minister Rajnath Singh?",
  options: ["Rs 30,000 crore for Indian Air Force's modernization", "Rs 45,000 crore for various defense projects", "Rs 20,000 crore for Indian Navy's capabilities enhancement", "Rs 15,000 crore for border security"],
  correctAnswerIndex: 1,
  explanation: "The Defence Acquisition Council (DAC) approved nine acquisition proposals amounting to a total of Rs 45,000 crore. These proposals encompass various aspects of defense, including Indian Air Force's modernization, Indian Navy's capabilities enhancement, and increasing indigenous content in defense projects."
  ),

// Operation Sajag by Indian Coast Guard
  Question(
  questionText: "What is the significance of 'Operation Sajag,' conducted by the Indian Coast Guard?",
  options: ["Anti-terrorism operation in coastal areas", "Humanitarian mission for coastal communities", "Drill to enhance coastal security mechanism", "Joint operation with foreign coast guards"],
  correctAnswerIndex: 2,
  explanation: "'Operation Sajag' is a comprehensive drill conducted by the Indian Coast Guard along the west coast on September 18, 2023. It plays a pivotal role in revalidating the coastal security mechanism while enhancing awareness among fishermen operating at sea."
  ),

// Naval Innovation and Indigenisation Seminar
  Question(
  questionText: "What is the significance of the Naval Innovation and Indigenisation (NIIO) Seminar known as 'Swavlamban 2023'?",
  options: ["Annual naval war games exercise", "Platform for global defense companies to showcase innovations", "Forum for discussing maritime policies", "Seminar focused on promoting naval innovation and self-reliance"],
  correctAnswerIndex: 3,
  explanation: "The Naval Innovation and Indigenisation (NIIO) Seminar known as 'Swavlamban 2023' is significant as it follows the maiden edition held in July 2022, marking a milestone in the Indian Navy's quest for innovation and self-reliance."
  ),

// P-7 Heavy Drop Parachute System
  Question(
  questionText: "What does the P-7 Heavy Drop Parachute System aim to enhance?",
  options: ["Paratroopers' training programs", "Military aircraft speed and agility", "Paradropping capabilities of the Armed Forces", "Communication systems in remote areas"],
  correctAnswerIndex: 2,
  explanation: "The P-7 Heavy Drop Parachute System, developed indigenously, aims to enhance the paradropping capabilities of India's Armed Forces, revolutionizing the way military stores are paradropped on the battlefield."
  ),

// Udhampur Railway Station Renaming
  Question(
  questionText: "What is the new name of the Udhampur railway station, and why was it renamed?",
  options: ["Utkrisht Express Railway Station, to honor Indian Railways", "Martyr Captain Tushar Mahajan Railway Station, in honor of an Army braveheart", "Swarnim Rail Yojana Railway Station, as part of a railway upgrade project", "Jai Hind Junction, to promote patriotism"],
  correctAnswerIndex: 1,
  explanation: "The Udhampur railway station has been renamed 'Martyr Captain Tushar Mahajan Railway Station' in honor of the Army braveheart, following the approval by the Jammu and Kashmir administration."
  ),

// SIMBEX-2023
  Question(
  questionText: "What is the significance of the Singapore India Maritime Bilateral Exercise (SIMBEX) 2023?",
  options: ["Joint naval exploration of the Arctic region", "Enhancing maritime cooperation with ASEAN nations", "Annual naval exercise between India and Singapore", "Development of a new naval base in Singapore"],
  correctAnswerIndex: 2,
  explanation: "The 30th edition of the Singapore India Maritime Bilateral Exercise (SIMBEX) commenced, strengthening the partnership between the Indian Navy and the Republic of Singapore Navy with the participation of naval ships and a submarine."
  ),

// Merkava Mark 5 Tank
  Question(
  questionText: "What is the name of Israel's cutting-edge main battle tank unveiled, and what does it signify?",
  options: ["Thunderbolt Mark 5, symbolizing rapid deployment", "Leopard Mark 5, emphasizing agility", "Merkava Mark 5 'Barak,' signifying technological advancement and military capability", "Vortex Mark 5, showcasing advanced weapon systems"],
  correctAnswerIndex: 2,
  explanation: "Israel unveiled its cutting-edge main battle tank, the Merkava Mark 5, known as 'Barak,' signifying a significant leap in technological advancement and military capability."
  ),

// Dhruvastra Short-Range Air-to-Surface Missile
  Question(
  questionText: "What is the significance of the Dhruvastra short-range air-to-surface missile approved by the Defence Acquisition Council?",
  options: ["Anti-satellite missile for space defense", "Surface-to-air missile for naval defense", "Precision-guided weapon for deployment on DHRUV MK-IV helicopters", "Long-range ballistic missile for strategic defense"],
  correctAnswerIndex: 2,
  explanation: "The Defence Acquisition Council approved the Dhruvastra short-range air-to-surface missile, designed for deployment on the indigenously built DHRUV MK-IV helicopters, significantly enhancing India's combat capabilities against enemy tanks and armored vehicles."
  ),

// YUDH ABHYAS-2023
  Question(
  questionText: "What is the purpose of the 19th edition of YUDH ABHYAS, and where is it set to commence?",
  options: ["Counter-terrorism exercise in Afghanistan", "Joint naval exercise in the Pacific Ocean", "Collaborative effort between the Indian and US Army to strengthen military cooperation", "Space exploration mission with NASA"],
  correctAnswerIndex: 2,
  explanation: "The 19th edition of YUDH ABHYAS is set to commence in Alaska, USA. This annual exercise is a collaborative effort between the Indian Army and the US Army, aimed at strengthening military cooperation and readiness."
  ),

// Bharat Drone Shakti-2023
  Question(
  questionText: "Where is the Bharat Drone Shakti-2023 exhibition set to be inaugurated, and what additional event will take place during the inauguration?",
  options: ["Delhi, with a live drone demonstration", "Bengaluru, focusing on drone technology for agriculture", "Ghaziabad, with the formal induction of C295 transport aircraft", "Mumbai, showcasing civilian drone applications"],
  correctAnswerIndex: 2,
  explanation: "Defence Minister Rajnath Singh is set to inaugurate the Bharat Drone Shakti-2023",
  ),








  // ...
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
    home: september(),
  ));
}

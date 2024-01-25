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

class may extends StatefulWidget {
  final String? userIdentifier;

  may({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<may> createState() => _mayState();
}

class _mayState extends State<may> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(300, null); // Initialize with the number of questions

  List<Question> _questions = [


    Question(
      questionText: "Who won the IPL 2023 final?",
      options: [
        "Gujarat Titans",
        "Mumbai Indians",
        "Chennai Super Kings",
        "Rajasthan Royals"
      ],
      correctAnswerIndex: 2,
      explanation: "Chennai Super Kings (CSK) won the IPL 2023 final, securing their fifth title.",
    ),


    Question(
      questionText: "Who won the Orange Cap in IPL 2023?",
      options: [
        "Faf du Plessis",
        "Shubman Gill",
        "Mohammad Shami",
        "Glenn Maxwell"
      ],
      correctAnswerIndex: 1,
      explanation: "Shubman Gill won the Orange Cap in IPL 2023 for scoring 890 runs.",
    ),

    Question(
      questionText: "Which venue shared the award for the Best Venue of the Season in IPL 2023?",
      options: [
        "Wankhede Stadium",
        "Eden Gardens",
        "M. A. Chidambaram Stadium",
        "Feroz Shah Kotla Ground"
      ],
      correctAnswerIndex: 1,
      explanation: "Eden Gardens and Wankhede Stadium shared the award for the Best Venues of the Season.",
    ),


    Question(
      questionText: "Which film won the Best Film award at IIFA 2023?",
      options: [
        "Rocketry: The Nambi Effect",
        "Gangubai Kathiawadi",
        "Vikram Vedha",
        "Drishyam 2"
      ],
      correctAnswerIndex: 3,
      explanation: "Drishyam 2 won the Best Film award at IIFA 2023.",
    ),

    Question(
      questionText: "Who won the Jnanpith Award in 2023?",
      options: [
        "Damodar Mauzo",
        "Gulzar",
        "Ravindra Kelekar",
        "Kamal Haasan"
      ],
      correctAnswerIndex: 0,
      explanation: "Damodar Mauzo received the 57th Jnanpith Award in 2023.",
    ),

    Question(
      questionText: "Which film won the Palme d'Or at the 2023 Cannes Film Festival?",
      options: [
        "The Pot-Au-Feu",
        "Anatomy Of A Fall",
        "Monster",
        "Perfect Days"
      ],
      correctAnswerIndex: 1,
      explanation: "Anatomy Of A Fall, directed by Justine Triet, won the Palme d'Or at the 2023 Cannes Film Festival.",
    ),

    Question(
      questionText: "Who won the Pulitzer Prize for Public Service in Journalism in 2023?",
      options: [
        "Staff of The Wall Street Journal",
        "Associated Press",
        "Caitlin Dickerson of The Atlantic",
        "Staff of the Los Angeles Times"
      ],
      correctAnswerIndex: 1,
      explanation: "Associated Press won the Pulitzer Prize for Public Service in Journalism in 2023.",
    ),

    Question(
      questionText: "What did the staff of The Wall Street Journal win the Pulitzer Prize for in 2023?",
      options: [
        "Best Screenplay",
        "Best Director",
        "Investigative Reporting",
        "Best Music Direction"
      ],
      correctAnswerIndex: 2,
      explanation: "The staff of The Wall Street Journal won the Pulitzer Prize for Investigative Reporting in 2023.",
    ),
    Question(
      questionText: "Who won the Purple Cap in IPL 2023?",
      options: [
        "Faf du Plessis",
        "Shubman Gill",
        "Mohammad Shami",
        "Glenn Maxwell"
      ],
      correctAnswerIndex: 2,
      explanation: "Mohammad Shami won the Purple Cap in IPL 2023 for taking 28 wickets.",
    ),

    Question(
      questionText: "Who won the Dream11 Gamechanger of the Season award in IPL 2023?",
      options: [
        "Faf du Plessis",
        "Shubman Gill",
        "Rashid Khan",
        "Glenn Maxwell"
      ],
      correctAnswerIndex: 1,
      explanation: "Shubman Gill won the Dream11 Gamechanger of the Season award in IPL 2023.",
    ),

    Question(
      questionText: "Which actor hosted the 23rd season of the IIFA Awards in 2023?",
      options: [
        "Hrithik Roshan",
        "Sidharth Malhotra",
        "Amitabh Bachchan",
        "Shah Rukh Khan"
      ],
      correctAnswerIndex: 1,
      explanation: "Sidharth Malhotra hosted the 23rd season of the IIFA Awards in 2023.",
    ),

    Question(
      questionText: "Who won the Best Actor in a Leading Role (Male) at IIFA 2023?",
      options: [
        "Hrithik Roshan",
        "Vikram Vedha",
        "Amitabh Bachchan",
        "R Madhavan"
      ],
      correctAnswerIndex: 0,
      explanation: "Hrithik Roshan won the Best Actor in a Leading Role (Male) at IIFA 2023 for Vikram Vedha.",
    ),

    Question(
      questionText: "Which country hosted the 22nd edition of the IIFA Awards?",
      options: [
        "India",
        "Abu Dhabi",
        "United Kingdom",
        "United States"
      ],
      correctAnswerIndex: 1,
      explanation: "The 22nd edition of the IIFA Awards was held in Abu Dhabi, UAE.",
    ),

    Question(
      questionText: "Who received the Honorary Palme d'Or at the 2023 Cannes Film Festival?",
      options: [
        "Jane Campion",
        "Julia Ducournau",
        "Michael Douglas",
        "Justine Triet"
      ],
      correctAnswerIndex: 2,
      explanation: "Michael Douglas received the Honorary Palme d'Or at the 2023 Cannes Film Festival.",
    ),

    Question(
      questionText: "Which film won the Best Sound Mixing at the 2023 Cannes Film Festival?",
      options: [
        "The Pot-Au-Feu",
        "Anatomy Of A Fall",
        "Monster",
        "Monica O My Darling"
      ],
      correctAnswerIndex: 7,
      explanation: "Monica O My Darling won the Best Sound Mixing at the 2023 Cannes Film Festival.",
    ),

    Question(
      questionText: "Who won the Pulitzer Prize for Commentary in 2023?",
      options: [
        "Kyle Whitmire of AL.com",
        "Andrea Long Chu of New York magazine",
        "Nancy Ancrum, Amy Driscoll, Luisa Yanez, Isadora Rangel, and Lauren Costantino of the Miami Herald",
        "Caitlin Dickerson of The Atlantic"
      ],
      correctAnswerIndex: 0,
      explanation: "Kyle Whitmire of AL.com won the Pulitzer Prize for Commentary in 2023.",
    ),

    Question(
      questionText: "Which film won the Camera d'Or at the 2023 Cannes Film Festival?",
      options: [
        "The Pot-Au-Feu",
        "Anatomy Of A Fall",
        "Monster",
        "Inside the Yellow Cocoon Shell"
      ],
      correctAnswerIndex: 3,
      explanation: "Inside the Yellow Cocoon Shell won the Camera d'Or at the 2023 Cannes Film Festival.",
    ),

    Question(
      questionText: "Who won the Pulitzer Prize for Best Adapted Story in 2023?",
      options: [
        "Aamil Keeyan Khan and Abhishek Pathak for Drishyam 2",
        "Perveez Sheikh and Jasmeet Reen for Darlings",
        "R Madhavan for Rocketry: The Nambi Effect",
        "Manish Malhotra"
      ],
      correctAnswerIndex: 0,
      explanation: "Aamil Keeyan Khan and Abhishek Pathak won the Pulitzer Prize for Best Adapted Story in 2023 for Drishyam 2.",
    ),

    Question(
      questionText: "Which global event for the travel and tourism industry took place in Dubai on May 1, 2023?",
      options: [
        "Arabian Travel Market (ATM) 2023",
        "Global Tourism Summit 2023",
        "Dubai Travel Expo 2023",
        "Middle East Tourism Forum 2023"
      ],
      correctAnswerIndex: 0,
      explanation: "The Arabian Travel Market (ATM) 2023 was one of the most prominent global events for the travel and tourism industry held in Dubai.",
    ),
    Question(
      questionText: "What is the significant feature of the Mumbai Coastal Road Project (MCRP)?",
      options: [
        "Construction of India's first undersea tunnel",
        "Linking Marine Drive to Bandra-Worli Sea Link",
        "Building elevated highways",
        "Creating a green belt along the coast"
      ],
      correctAnswerIndex: 0,
      explanation: "The most significant feature of the Mumbai Coastal Road Project (MCRP) is the construction of India's first undersea tunnel.",
    ),
    Question(
      questionText: "What is the name of the new recruitment portal launched for Central University faculty by UGC Chairman M Jagadesh Kumar?",
      options: [
        "CU-Chayan",
        "FacultyConnect",
        "UGCRecruit",
        "AcademicJobsPortal"
      ],
      correctAnswerIndex: 0,
      explanation: "UGC Chairman M Jagadesh Kumar launched a new recruitment portal called CU-Chayan for Central University faculty.",
    ),
    Question(
      questionText: "What is the 'Climate Club,' and what are its three pillars?",
      options: [
        "An environmental initiative by the G7; advancing ambitious climate policies, supporting industrial decarbonization, encouraging international cooperation",
        "A global climate conference; promoting renewable energy, reducing carbon emissions, protecting biodiversity",
        "A climate awareness campaign; planting trees, reducing plastic usage, promoting sustainable practices",
        "A climate research organization; studying weather patterns, predicting natural disasters, promoting climate education"
      ],
      correctAnswerIndex: 0,
      explanation: "India is reportedly considering joining the 'Climate Club,' which has three pillars: advancing ambitious climate policies, supporting industrial decarbonization, and encouraging international cooperation.",
    ),
    Question(
      questionText: "Which shipping route was inaugurated by Shri Shantanu Thakur, the Minister of State for Ports, Shipping and Waterways?",
      options: [
        "Direct Shipping Service between Tuticorin and Maldives",
        "Arabian Sea Shipping Corridor",
        "Mumbai to Dubai Shipping Route",
        "Malabar Coast Maritime Route"
      ],
      correctAnswerIndex: 0,
      explanation: "Shri Shantanu Thakur inaugurated the Direct Shipping Service between Tuticorin and Maldives by flagging off the vessel 'M.V. MSS Galena' from V.O. Chidambaranar Port.",
    ),
    Question(
      questionText: "What did Defence Minister Rajnath Singh inaugurate in Chandigarh on May 8, 2023?",
      options: [
        "Indian Air Force Heritage Centre",
        "National Defence Academy",
        "Military Technology Exhibition",
        "Veterans Support Center"
      ],
      correctAnswerIndex: 0,
      explanation: "Defence Minister Rajnath Singh opened India's first Indian Air Force Heritage Centre in Chandigarh.",
    ),
    Question(
      questionText: "What are the 'Harit Sagar' Green Port Guidelines 2023, and who launched them?",
      options: [
        "Guidelines for zero carbon emissions in port operations; launched by Union Minister for Ports, Shipping & Waterways",
        "Guidelines for promoting marine biodiversity; launched by Ministry of Environment",
        "Guidelines for sustainable fishing practices; launched by Ministry of Agriculture",
        "Guidelines for waste management in coastal areas; launched by Ministry of Urban Development"
      ],
      correctAnswerIndex: 0,
      explanation: "The Ministry of Ports, Shipping & Waterways launched 'Harit Sagar' Green Port Guidelines 2023 to achieve zero carbon emissions, and they were launched by Union Minister for Ports, Shipping & Waterways.",
    ),
    Question(
      questionText: "What services in the national capital were granted control by the Supreme Court to the Delhi government?",
      options: [
        "All services except land, police, and law and order",
        "Complete control over all services",
        "Control over administrative services only",
        "Control over municipal services only"
      ],
      correctAnswerIndex: 0,
      explanation: "The Supreme Court granted control over all services in the national capital, including the Indian Administrative Service (IAS), to the Delhi government, except for those related to land, police, and law and order.",
    ),
    Question(
      questionText: "What does the Directorate General of Trade Remedies (DGTR) propose to implement as a protective measure for the local industry?",
      options: [
        "Anti-dumping tax on a specific type of optical fiber imported from China, Korea, and Indonesia",
        "Export incentives for Indian manufacturers",
        "Tariff reductions for imported goods",
        "Tax exemptions for foreign investors"
      ],
      correctAnswerIndex: 0,
      explanation: "DGTR proposes the implementation of an anti-dumping tax on a specific type of optical fiber imported from China, Korea, and Indonesia to protect the local industry.",
    ),
    Question(
      questionText: "When will the fifth edition of the Global Ayurveda Festival (Gaf 2023) be held, and what is its theme?",
      options: [
        "December 1 to 5; 'Emerging Challenges in Healthcare & A Resurgent Ayurveda'",
        "March 15 to 20; 'Global Wellness through Ayurveda'",
        "July 10 to 15; 'Ayurveda for Modern Living'",
        "September 5 to 10; 'Holistic Healing with Ayurveda'"
      ],
      correctAnswerIndex: 0,
      explanation: "The fifth edition of the Global Ayurveda Festival (Gaf 2023) will be held from December 1 to 5, and its theme is 'Emerging Challenges in Healthcare & A Resurgent Ayurveda.'",
    ),
    Question(
      questionText: "What is the purpose of the Centre for Processing Accelerated Corporate Exit (C-PACE) established by the Ministry of Corporate Affairs?",
      options: [
        "To streamline the process of removing companies from the MCA Register",
        "To promote corporate mergers and acquisitions",
        "To facilitate fast-track registration of new companies",
        "To monitor corporate social responsibility activities"
      ],
      correctAnswerIndex: 0,
      explanation: "The Ministry of Corporate Affairs has established the Centre for Processing Accelerated Corporate Exit (C-PACE) to streamline the process of removing companies from the MCA Register.",
    ),

    Question(
      questionText: "What new regulation has been introduced by the National Medical Commission (NMC) for doctors practicing in India?",
      options: [
        "Unique Identification Number (UID)",
        "Specialized Medical License",
        "National Medical Practitioner ID",
        "Medical Ethics Certification"
      ],
      correctAnswerIndex: 0,
      explanation: "Doctors will now have to get a Unique Identification Number (UID) to be able to practice medicine in the country, as per the new regulations by the National Medical Commission (NMC).",
    ),

    Question(
      questionText: "What training program did Home Minister Amit Shah inaugurate in New Delhi?",
      options: [
        "Legislative Drafting",
        "Counterterrorism Operations",
        "Cybersecurity Awareness",
        "Emergency Response Training"
      ],
      correctAnswerIndex: 0,
      explanation: "Home Minister Amit Shah inaugurated a training program on legislative drafting in New Delhi.",
    ),

    Question(
      questionText: "What new websites have been launched by the University Grants Commission (UGC)?",
      options: [
        "UTSAH Portal and Professor of Practice (PoP) Portal",
        "Faculty Recruitment Portal and Academic Excellence Portal",
        "Student Enrollment Portal and Research Grants Portal",
        "Online Learning Portal and Alumni Network Portal"
      ],
      correctAnswerIndex: 0,
      explanation: "The UGC has launched a new website, the UTSAH (Undertaking Transformative Strategies and Actions in Higher Education) Portal, and the Professor of Practice (PoP) Portal.",
    ),
    Question(
      questionText: "What is the Meri LiFE app, and who launched it?",
      options: [
        "An app for tracking progress in the Mission LiFE mass movement; launched by Shri Bhupender Yadav",
        "A health and fitness app; launched by the Ministry of Health",
        "An environmental awareness app; launched by the Ministry of Environment",
        "A social networking app for professionals; launched by the Ministry of Corporate Affairs"
      ],
      correctAnswerIndex: 0,
      explanation: "The Meri LiFE app, launched by Union Minister for Environment, Forest, and Climate Change, Shri Bhupender Yadav, is set to revolutionize the way individuals and communities track their progress in the global mass movement called Mission LiFE.",
    ),
    Question(
      questionText: "What significant step has the Ministry of Corporate Affairs (MCA) taken to facilitate the removal of defunct companies?",
      options: [
        "Establishment of the Centre for Processing Accelerated Corporate Exit (C-PACE)",
        "Introduction of a tax relief scheme",
        "Creation of a Corporate Rehabilitation Fund",
        "Formation of a Corporate Governance Committee"
      ],
      correctAnswerIndex: 0,
      explanation: "The Ministry of Corporate Affairs has taken a significant step towards making the process of striking off defunct companies easier and more efficient through the establishment of the Centre for Processing Accelerated Corporate Exit (C-PACE).",
    ),
    Question(
      questionText: "What addition will be made during the inauguration of the new parliament building, according to Union Home Minister Amit Shah?",
      options: [
        "A significant golden sceptre near the Speaker's seat",
        "A statue of Mahatma Gandhi",
        "A digital display showcasing national achievements",
        "A special chamber for diplomatic meetings"
      ],
      correctAnswerIndex: 0,
      explanation: "The upcoming inauguration of the new parliament building will feature an important addition, as Prime Minister Narendra Modi will place a significant golden sceptre near the Speaker's seat, announced Union Home Minister Amit Shah.",
    ),


    Question(
      questionText: "From what date are businesses with a turnover of Rs 5 crore or more obligated to generate GST e-invoicing for B2B transactions?",
      options: [
        "1 August 2023",
        "1 July 2023",
        "1 September 2023",
        "1 June 2023"
      ],
      correctAnswerIndex: 0,
      explanation: "Businesses with a turnover of Rs 5 crore or more are obligated to generate GST e-invoicing for B2B transactions from 1 August 2023.",
    ),

    Question(
      questionText: "What is India's retail inflation rate based on the consumer price index in April?",
      options: [
        "4.7%",
        "5.66%",
        "2-6%",
        "1.34%"
      ],
      correctAnswerIndex: 0,
      explanation: "India's retail inflation rate based on the consumer price index decreased to 4.7% in April.",
    ),

    Question(
      questionText: "What was India's industrial production growth in March 2023, according to government data?",
      options: [
        "1.1%",
        "5%",
        "0.5%",
        "-1.6%"
      ],
      correctAnswerIndex: 0,
      explanation: "India's industrial production growth fell to a five-month low of 1.1% in March 2023.",
    ),

    Question(
      questionText: "Where does the London Stock Exchange Group (LSEG) plan to set up a technology centre of excellence?",
      options: [
        "Hyderabad, India",
        "London, UK",
        "New York, USA",
        "Singapore"
      ],
      correctAnswerIndex: 0,
      explanation: "The London Stock Exchange Group (LSEG) plans to set up a technology centre of excellence in Hyderabad, India.",
    ),

    Question(
      questionText: "By how much did India's foreign exchange reserves increase in the week ending May 5, 2023?",
      options: [
        "\$7.196 billion",
        "\$4.532 billion",
        "\$595.976 billion",
        "\$526.021 billion"
      ],
      correctAnswerIndex: 0,
      explanation: "India's foreign exchange reserves increased by \$7.196 billion in the week ending May 5, 2023.",
    ),

    Question(
      questionText: "What was the wholesale price-based inflation in India in April, according to the Department for Promotion of Industry and Internal Trade?",
      options: [
        "-0.92%",
        "1.34%",
        "2%",
        "5%"
      ],
      correctAnswerIndex: 0,
      explanation: "In April, wholesale price-based inflation dropped to -0.92% on a yearly basis.",
    ),

    Question(
      questionText: "What is India's expected contribution to global GDP growth over the period of 2023-2024, according to Morgan Stanley?",
      options: [
        "16%",
        "10%",
        "20%",
        "5%"
      ],
      correctAnswerIndex: 0,
      explanation: "India is expected to contribute 16% to global GDP growth over the period of 2023-2024, according to Morgan Stanley.",
    ),

    Question(
      questionText: "What is the projected growth rate of India's economy in the calendar year 2024, according to the United Nations?",
      options: [
        "6.7%",
        "5%",
        "8%",
        "10%"
      ],
      correctAnswerIndex: 0,
      explanation: "India's economy is projected to grow by 6.7% in the calendar year 2024, according to the United Nations.",
    ),

    Question(
      questionText: "According to the CBDT, will interest earned from Mahila Samman Savings Certificate (MSSC) be subject to TDS?",
      options: [
        "No",
        "Yes",
        "Depends on the income slab",
        "Not specified"
      ],
      correctAnswerIndex: 0,
      explanation: "Interest earned from Mahila Samman Savings Certificate (MSSC) will not be subject to Tax Deducted at Source (TDS), according to the CBDT.",
    ),
    Question(
      questionText: "What relaxation has the Indian government announced in Tax Collected At Source (TCS) rules for international transactions using debit or credit cards?",
      options: [
        "Exemption up to Rs 7 lakh",
        "20% TCS levy on all transactions",
        "Exemption up to Rs 5 lakh",
        "5% TCS levy on all transactions"
      ],
      correctAnswerIndex: 0,
      explanation: "Starting from July 1, 2023, individuals conducting international transactions up to Rs 7 lakh will be exempt from the 20 percent TCS levy.",
    ),

    Question(
      questionText: "What change has SEBI approved regarding HDFC Asset Management Company (HDFC AMC)?",
      options: [
        "Change in control due to amalgamation of HDFC Ltd and HDFC Bank Ltd",
        "Merger with another asset management company",
        "IPO launch",
        "Closure of operations"
      ],
      correctAnswerIndex: 0,
      explanation: "SEBI has granted approval for a change in control of HDFC Asset Management Company (HDFC AMC) due to the amalgamation of HDFC Ltd and HDFC Bank Ltd.",
    ),

    Question(
      questionText: "What change was observed in India's total forex reserves during the week ending on May 19, 2023?",
      options: [
        "Decrease by \$6.052 billion",
        "Increase by \$10 billion",
        "Remained unchanged",
        "Increase by \$2 billion"
      ],
      correctAnswerIndex: 0,
      explanation: "India's total forex reserves reached \$593.48 billion during the week ending on May 19, 2023, representing a decrease of \$6.052 billion from the previous week.",
    ),

    Question(
      questionText: "What is the expected GDP growth range for India in FY24, according to Bank of Baroda's economic research department?",
      options: [
        "6-6.5%",
        "5-6%",
        "7-7.5%",
        "8-8.5%"
      ],
      correctAnswerIndex: 0,
      explanation: "India's GDP is expected to grow in the 6-6.5 per cent range in FY24, according to Bank of Baroda's economic research department.",
    ),

    Question(
      questionText: "What is the projected GDP growth rate for India in FY23, according to the latest report by SBI Ecowrap?",
      options: [
        "7.1%",
        "6%",
        "8%",
        "5%"
      ],
      correctAnswerIndex: 0,
      explanation: "The latest report by SBI Ecowrap indicates that India’s GDP (gross domestic product) is expected to grow at a rate of 7.1% in FY23.",
    ),

    Question(
      questionText: "What is the current urban unemployment rate in India for the January to March 2023 quarter?",
      options: [
        "6.8%",
        "8.5%",
        "5.5%",
        "7.2%"
      ],
      correctAnswerIndex: 0,
      explanation: "The urban unemployment rate in India has continued its downward trajectory, reaching 6.8% in the January to March 2023 quarter.",
    ),

    Question(
      questionText: "What are the two new initiatives announced by Microsoft India to support small and medium-sized businesses (SMBs)?",
      options: [
        "Dedicated helpline and comprehensive website",
        "New software products",
        "Financial grants and loans",
        "International expansion"
      ],
      correctAnswerIndex: 0,
      explanation: "Microsoft India has announced two new initiatives: a dedicated helpline and a comprehensive website, to support small and medium-sized businesses (SMBs).",
    ),

    Question(
      questionText: "How much did Adani Ports and Special Economic Zone Ltd (APSEZ) sell its Myanmar port, Coastal International Terminals Pte Limited, for?",
      options: [
        "\$30 million",
        "\$50 million",
        "\$20 million",
        "\$40 million"
      ],
      correctAnswerIndex: 0,
      explanation: "Adani Ports and Special Economic Zone Ltd (APSEZ) announced that it has completed the sale of its Myanmar port, Coastal International Terminals Pte Limited, for \$30 million.",
    ),

    Question(
      questionText: "What is the new name for PAYBACK India, the country's largest multi-brand loyalty program, as announced by BharatPe?",
      options: [
        "Zillion",
        "LoyaltyMax",
        "RewardPro",
        "PointsMaster"
      ],
      correctAnswerIndex: 0,
      explanation: "BharatPe has announced the rebranding of PAYBACK India as 'Zillion.'",
    ),

    Question(
      questionText: "Which two entities have joined hands to launch 'Global Collections,' an international collection service for exporters?",
      options: [
        "Cashfree Payments and YES Bank",
        "Amazon and HDFC Bank",
        "Mastercard and ICICI Bank",
        "Microsoft and Axis Bank"
      ],
      correctAnswerIndex: 0,
      explanation: "Cashfree Payments and YES Bank have joined hands to launch 'Global Collections,' an international collection service for exporters who hold an account with YES Bank.",
    ),
    Question(
      questionText: "Who recently introduced the Kerala Institutional Ranking Framework (KIRF) to evaluate higher education institutions in Kerala?",
      options: [
        "K. Chandrasekhar Rao",
        "R. Bindu",
        "Pushkar Singh Dhami",
        "MK Stalin"
      ],
      correctAnswerIndex: 1,
      explanation: "The Kerala Institutional Ranking Framework (KIRF) was introduced by R. Bindu, the Higher Education Minister.",
    ),

    Question(
      questionText: "What is the objective of Telangana's Hare Krishna Heritage Tower project?",
      options: [
        "To establish a self-sustaining robotics ecosystem",
        "To promote the use of green hydrogen",
        "To meet 80% of India's demand for lithium",
        "To construct a tower housing temples of Sri Sri Radha Krishna and Sri Venkateswara Swamy"
      ],
      correctAnswerIndex: 3,
      explanation: "The Hare Krishna Heritage Tower project in Hyderabad aims to construct a tower that will house the temples of Sri Sri Radha Krishna and Sri Venkateswara Swamy.",
    ),

    Question(
      questionText: "Where have lithium reserves been recently discovered, potentially meeting up to 80% of India's demand for lithium?",
      options: [
        "Jammu and Kashmir's Reasi",
        "Telangana's Narsingi",
        "Goa",
        "Rajasthan's Degana"
      ],
      correctAnswerIndex: 3,
      explanation: "Lithium reserves have been discovered in Rajasthan's Degana, believed to be larger than those found in Jammu and Kashmir, with the potential to meet up to 80% of India's demand for lithium.",
    ),

    Question(
      questionText: "What is the focus of Telangana's new policy known as the State Robotics Framework?",
      options: [
        "Improving the health of students",
        "Establishing a self-sustaining robotics ecosystem",
        "Promoting the adoption of robotics technology",
        "Constructing a tower for Sri Sri Radha Krishna and Sri Venkateswara Swamy"
      ],
      correctAnswerIndex: 1,
      explanation: "The State Robotics Framework in Telangana is designed to establish a self-sustaining robotics ecosystem.",
    ),

    Question(
      questionText: "What is the objective of the pilot project called the 'School Health Program' launched in Lucknow?",
      options: [
        "Improving the health of students",
        "Showcasing the significance of homeopathy",
        "Constructing a tower for Sri Sri Radha Krishna and Sri Venkateswara Swamy",
        "Establishing a self-sustaining robotics ecosystem"
      ],
      correctAnswerIndex: 0,
      explanation: "The 'School Health Program' in Lucknow aims to improve the health of students.",
    ),

    Question(
      questionText: "Which state now holds the second position in the country for having the maximum number of Geographical Indication (GI)-tagged goods?",
      options: [
        "Kerala",
        "Maharashtra",
        "Uttar Pradesh",
        "Goa"
      ],
      correctAnswerIndex: 2,
      explanation: "Uttar Pradesh holds the second position in the country for having the maximum number of Geographical Indication (GI)-tagged goods.",
    ),

    Question(
      questionText: "What was inaugurated by Tamil Nadu Chief Minister MK Stalin, serving as a crucial connection between the Mambalam railway station and T Nagar bus terminus?",
      options: [
        "Shasan Aplya Dari initiative",
        "Sagar Parikrama Yatra",
        "One of India's biggest Skywalk bridges",
        "Khelo India University Games 2022"
      ],
      correctAnswerIndex: 2,
      explanation: "Tamil Nadu Chief Minister MK Stalin inaugurated one of India's biggest Skywalk bridges, serving as a crucial connection between the Mambalam railway station and T Nagar bus terminus.",
    ),

    Question(
      questionText: "Who was sworn in for his second term as the Chief Minister of Karnataka?",
      options: [
        "Siddaramaiah",
        "MK Stalin",
        "Pushkar Singh Dhami",
        "K. Chandrasekhar Rao"
      ],
      correctAnswerIndex: 0,
      explanation: "Siddaramaiah was sworn in for his second term as the Chief Minister of Karnataka.",
    ),

    Question(
      questionText: "Which state is set to make history by declaring itself as the country's first 'total e-governed state'?",
      options: [
        "Goa",
        "Kerala",
        "Maharashtra",
        "Himachal Pradesh"
      ],
      correctAnswerIndex: 1,
      explanation: "Kerala is set to make history by declaring itself as the country's first 'total e-governed state.'",
    ),

    Question(
      questionText: "Under the 'Swachh Mukh Abhiyan' initiative, who was named Maharashtra's 'Smile Ambassador'?",
      options: [
        "Sachin Tendulkar",
        "MK Stalin",
        "K. Chandrasekhar Rao",
        "Siddaramaiah"
      ],
      correctAnswerIndex: 0,
      explanation: "Cricket great Sachin Tendulkar was named Maharashtra's 'Smile Ambassador' under the 'Swachh Mukh Abhiyan' initiative.",
    ),

    Question(
      questionText: "Who has officially become the 28th Chief Justice of the Himachal Pradesh High Court?",
      options: [
        "Sukhvinder Singh Sukhu",
        "Mamidanna Satya Ratna Sri Ramachandra Rao",
        "Sarbananda Sonowal",
        "Tarun Kapoor"
      ],
      correctAnswerIndex: 1,
      explanation: "Justice Mamidanna Satya Ratna Sri Ramachandra Rao has officially become the 28th Chief Justice of the Himachal Pradesh High Court.",
    ),

    Question(
      questionText: "What is the objective of the National Monetisation Pipeline (NMP) platform for socio-economic development?",
      options: [
        "Offering affordable generic medicines",
        "Achieving national sporting excellence",
        "Strengthening the MSME sector",
        "Onboarding social sector ministries"
      ],
      correctAnswerIndex: 3,
      explanation: "The National Monetisation Pipeline (NMP) platform aims to onboard social sector ministries for socio-economic development.",
    ),

    Question(
      questionText: "What is the focus of the 'Accelerating the Prevention and Management of Hypertension and Diabetes' event?",
      options: [
        "Transforming waste into wealth",
        "Providing essential services to mobile phone users",
        "Screening and providing standard care for hypertension and diabetes",
        "Establishing Reduce, Reuse, Recycle (RRR) Centres"
      ],
      correctAnswerIndex: 2,
      explanation: "The focus of the 'Accelerating the Prevention and Management of Hypertension and Diabetes' event is to screen and provide standard care for hypertension and diabetes.",
    ),

    Question(
      questionText: "What is the aim of the 'Meri LiFE, Mera Swachh Shehar' campaign launched by Union Minister Shri Hardeep S. Puri?",
      options: [
        "Empowering mobile phone users",
        "Providing affordable healthcare",
        "Promoting Integrative Health",
        "Transforming waste into wealth"
      ],
      correctAnswerIndex: 3,
      explanation: "The aim of the 'Meri LiFE, Mera Swachh Shehar' campaign is to transform waste into wealth by encouraging cities to establish Reduce, Reuse, Recycle (RRR) Centres.",
    ),

    Question(
      questionText: "What significant modification has been proposed to the Foreign Exchange Management (Current Account Transaction) Rules?",
      options: [
        "Including credit card transactions within the limit of \$250,000 under the Liberalised Remittance Scheme (LRS)",
        "Phasing out motorcycles with internal combustion engines by 2035",
        "Prohibiting the usage of diesel-fueled four-wheeled vehicles",
        "Launching a new initiative called 'Shasan Aplya Dari'"
      ],
      correctAnswerIndex: 0,
      explanation: "The proposed modification involves including credit card transactions within the limit of \$250,000 under the Liberalised Remittance Scheme (LRS).",
    ),
    Question(
      questionText: "What is the objective of the Khelo India Scheme launched by the Ministry of Youth Affairs and Sports?",
      options: [
        "Promoting Integrative Health",
        "Fostering a sporting culture and achieving national sporting excellence",
        "Empowering mobile phone users",
        "Transforming waste into wealth"
      ],
      correctAnswerIndex: 1,
      explanation: "The Khelo India Scheme aims to foster a sporting culture and achieve national sporting excellence by tapping into the transformative power of sports.",
    ),

    Question(
      questionText: "What did the Union Minister for Communications, Ashwini Vaishnaw, launch in New Delhi to empower mobile phone users?",
      options: [
        "Khelo India Scheme",
        "Sanchar Saathi Portal",
        "PLI Scheme for IT Hardware",
        "National Monetisation Pipeline (NMP) platform"
      ],
      correctAnswerIndex: 1,
      explanation: "The Union Minister for Communications, Ashwini Vaishnaw, launched the Sanchar Saathi Portal in New Delhi to empower mobile phone users.",
    ),

    Question(
      questionText: "What significant approval did the Union Cabinet give for the IT hardware segment?",
      options: [
        "Launching Khelo India University Games 2022",
        "Approving the National Monetisation Pipeline (NMP) platform",
        "Initiating the Sagar Parikrama Yatra",
        "Production Linked Incentive (PLI) Scheme for IT Hardware"
      ],
      correctAnswerIndex: 3,
      explanation: "The Union Cabinet approved the Production Linked Incentive (PLI) Scheme for the IT hardware segment.",
    ),

    Question(
      questionText: "What did the Ministry of Ayush and the Ministry of Health & Family Welfare jointly announce their commitment to prioritize?",
      options: [
        "Transforming waste into wealth",
        "Accelerating the Prevention and Management of Hypertension and Diabetes",
        "Integrative Health",
        "Reducing import duties on raw materials"
      ],
      correctAnswerIndex: 2,
      explanation: "The Ministry of Ayush and the Ministry of Health & Family Welfare jointly announced their commitment to prioritize 'Integrative Health' for the well-being of the public.",
    ),

    Question(
      questionText: "Who initiated the fifth phase of the Sagar Parikrama Yatra in Karanja, Raigad, Maharashtra?",
      options: [
        "Sarbananda Sonowal",
        "Ashwini Vaishnaw",
        "Parshottam Rupala",
        "Anurag Singh Thakur"
      ],
      correctAnswerIndex: 2,
      explanation: "Shri Parshottam Rupala, the Union Minister of Fisheries, Animal Husbandry & Dairying, initiated the fifth phase of the Sagar Parikrama Yatra in Karanja, Raigad, Maharashtra.",
    ),

    Question(
      questionText: "What is the aim of the Advance Authorization Scheme (AAS) or Advance License Scheme?",
      options: [
        "Providing essential services to mobile phone users",
        "Promoting Integrative Health",
        "Reducing import duties on raw materials",
        "Promoting the competitiveness of Indian products in the global market"
      ],
      correctAnswerIndex: 3,
      explanation: "The Advance Authorization Scheme aims to promote the competitiveness of Indian products in the global market by providing duty exemptions on imported raw materials required for the manufacture of export products.",
    ),

    Question(
      questionText: "What bold initiative has the Union Health Ministry launched to screen and provide standard care for 75 million individuals?",
      options: [
        "Accelerating the Prevention and Management of Hypertension and Diabetes",
        "Meri LiFE, Mera Swachh Shehar",
        "Launching Khelo India University Games 2022",
        "Sagar Parikrama Yatra"
      ],
      correctAnswerIndex: 0,
      explanation: "The Union Health Ministry has launched a bold initiative to screen and provide standard care for 75 million individuals suffering from hypertension and diabetes by 2025.",
    ),

    Question(
      questionText: "What campaign, launched by Union Minister Shri Hardeep S. Puri, encourages cities to establish Reduce, Reuse, Recycle (RRR) Centres?",
      options: [
        "Meri LiFE, Mera Swachh Shehar",
        "Accelerating the Prevention and Management of Hypertension and Diabetes",
        "Sagar Parikrama Yatra",
        "National Monetisation Pipeline (NMP) platform"
      ],
      correctAnswerIndex: 0,
      explanation: "The 'Meri LiFE, Mera Swachh Shehar' campaign, launched by Union Minister Shri Hardeep S. Puri, encourages cities to establish Reduce, Reuse, Recycle (RRR) Centres.",
    ),

    Question(
      questionText: "What has been proposed by a report initiated by the Ministry of Petroleum and Natural Gas in India?",
      options: [
        "Gradually phasing out motorcycles with internal combustion engines by 2035",
        "Prohibiting the usage of diesel-fueled four-wheeled vehicles",
        "Launching a new initiative called 'Shasan Aplya Dari'",
        "Extending the deadline for the Smart Cities Mission"
      ],
      correctAnswerIndex: 0,
      explanation: "A report initiated by the Ministry of Petroleum and Natural Gas in India has proposed gradually phasing out motorcycles with internal combustion engines by 2035.",
    ),

    Question(
      questionText: "What did India host recently in New Delhi to expand startup interactions among SCO Member States?",
      options: [
        "National Monetisation Pipeline (NMP) platform",
        "Sanchar Saathi Portal",
        "Shanghai Cooperation Organisation (SCO) Startup Forum",
        "Khelo India Scheme"
      ],
      correctAnswerIndex: 2,
      explanation: "India hosted the third edition of the Shanghai Cooperation Organisation (SCO) Startup Forum in New Delhi to expand startup interactions among SCO Member States.",
    ),

    Question(
      questionText: "What joint initiative aimed to facilitate discussions on urban river management among member cities and global stakeholders?",
      options: [
        "Accelerating the Prevention and Management of Hypertension and Diabetes",
        "National Monetisation Pipeline (NMP) platform",
        "River-Cities Alliance (RCA) Global Seminar",
        "Sanchar Saathi Portal"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'River-Cities Alliance (RCA) Global Seminar' was a joint initiative by the National Mission for Clean Ganga (NMCG) and the National Institute of Urban Affairs, aimed at facilitating discussions on urban river management.",
    ),

    Question(
      questionText: "Where did Union Tourism Minister G Kishan Reddy inaugurate a PM Jan Aushadhi Kendra?",
      options: [
        "Secunderabad",
        "New Delhi",
        "Warasiguda",
        "Karja"
      ],
      correctAnswerIndex: 0,
      explanation: "Union Tourism Minister G Kishan Reddy inaugurated a PM Jan Aushadhi Kendra at Warasiguda in Secunderabad.",
    ),

    Question(
      questionText: "What digital platform, called SAKSHAM (Stimulating Advanced Knowledge for Sustainable Health Management), was recently launched by the Union Health Secretary?",
      options: [
        "Sanchar Saathi Portal",
        "River-Cities Alliance (RCA) Global Seminar",
        "Khelo India Scheme",
        "Learning Management Information System (LMIS)"
      ],
      correctAnswerIndex: 3,
      explanation: "The digital platform called SAKSHAM (Stimulating Advanced Knowledge for Sustainable Health Management) of the Ministry of Health and Family Welfare was recently launched by the Union Health Secretary.",
    ),

    Question(
      questionText: "What annual event aims to promote the values of Ayushman Bharat Yojana and aligns with India's commitment to achieving the Sustainable Development Goals?",
      options: [
        "Smart Cities Mission",
        "Ayushman Bharat Diwas",
        "National Homoeopathic Convention",
        "Geographical Indication (GI)-tagged goods"
      ],
      correctAnswerIndex: 1,
      explanation: "Ayushman Bharat Diwas, celebrated annually on April 30th, aims to promote the values of Ayushman Bharat Yojana and aligns with India's commitment to achieving the Sustainable Development Goals.",
    ),

    Question(
      questionText: "What is the total number of Geographical Indication (GI)-tagged products in Uttar Pradesh after receiving three more GI tags?",
      options: [
        "36",
        "48",
        "24",
        "12"
      ],
      correctAnswerIndex: 1,
      explanation: "Uttar Pradesh now holds the second position in the country in terms of having the maximum number of Geographical Indication (GI)-tagged goods, with a total of 48 GI-tagged products.",
    ),

    Question(
      questionText: "Who recently inaugurated the National Homoeopathic Convention ‘Homeocon 2023’ at Doon University, Dehradun?",
      options: [
        "MK Stalin",
        "Pushkar Singh Dhami",
        "R. Bindu",
        "K. Chandrasekhar Rao"
      ],
      correctAnswerIndex: 1,
      explanation: "Chief Minister Pushkar Singh Dhami recently inaugurated the National Homoeopathic Convention ‘Homeocon 2023’ at Doon University, Dehradun.",
    ),

    Question(
      questionText: "Which state is set to make history by declaring itself as the country’s first 'total e-governed state'?",
      options: [
        "Karnataka",
        "Maharashtra",
        "Kerala",
        "Goa"
      ],
      correctAnswerIndex: 2,
      explanation: "Kerala is set to make history by declaring itself as the country’s first 'total e-governed state.'",
    ),
    Question(
      questionText: "What announcement did the Supreme Court-appointed Expert Committee make regarding the Adani-Hindenburg controversy?",
      options: [
        "It determined SEBI's handling as regulatory failure.",
        "It declared Adani Group innocent of securities law contravention.",
        "It criticized the Supreme Court's involvement.",
        "It couldn't determine if SEBI's handling was a regulatory failure."
      ],
      correctAnswerIndex: 3,
      explanation: "The committee couldn't determine whether SEBI's handling constitutes 'regulatory failure' in the Adani-Hindenburg controversy.",
    ),

    Question(
      questionText: "What is the aim of the UGC's program 'NEP SAARTHI'?",
      options: [
        "Implementing the Adani Group's policies.",
        "Promoting academic reforms in higher education.",
        "Establishing new security laws.",
        "Combatting insurgencies in disturbed areas."
      ],
      correctAnswerIndex: 1,
      explanation: "The aim of 'NEP SAARTHI' is to involve students in implementing the National Education Policy (NEP) 2020 and promoting academic reforms in higher education.",
    ),

    Question(
      questionText: "What does AFSPA stand for, and why was it enacted in 1958?",
      options: [
        "Armed Forces Special Powers Act; to promote technological advancements.",
        "Armed Forces Securities Law; to combat separatist movements.",
        "Agricultural Farmers Protection Act; to support small farmers.",
        "Armed Forces Special Powers Act; to combat separatist movements and insurgencies in disturbed areas."
      ],
      correctAnswerIndex: 3,
      explanation: "AFSPA stands for Armed Forces (Special Powers) Act, enacted in 1958 to combat separatist movements and insurgencies in disturbed areas.",
    ),

    Question(
      questionText: "What is the purpose of the National Workshop on the National e-Vidhan Application (NeVA) planned by the Ministry of Parliamentary Affairs?",
      options: [
        "Promoting clean energy.",
        "Addressing ship design challenges.",
        "Implementing the National Education Policy.",
        "Discussing the National e-Vidhan Application (NeVA)."
      ],
      correctAnswerIndex: 3,
      explanation: "The workshop aims to discuss the National e-Vidhan Application (NeVA).",
    ),

    Question(
      questionText: "What is the objective of GRSE Accelerated Innovation Nurturing Scheme – 2023 (GAINS 2023) launched by Garden Reach Shipbuilders and Engineers?",
      options: [
        "Promoting academic reforms.",
        "Enhancing bargaining power of farmers.",
        "Identifying and promoting innovative solutions in shipbuilding.",
        "Addressing challenges in the ship design and construction industry."
      ],
      correctAnswerIndex: 2,
      explanation: "The objective is to identify and promote innovative solutions for technological advancements in shipbuilding.",
    ),

    Question(
      questionText: "According to Union Minister Dr. Mansukh Mandaviya, what is the significance of Capacity Building Plans?",
      options: [
        "Promoting academic reforms in higher education.",
        "Fostering a work culture within organizations.",
        "Combating insurgencies in disturbed areas.",
        "Implementing the National Education Policy."
      ],
      correctAnswerIndex: 1,
      explanation: "Capacity Building Plans are significant in fostering a work culture within organizations.",
    ),

    Question(
      questionText: "What is the central scheme that allocates 1,100 Farmer Producer Organizations (FPOs) to the National Cooperative Development Corporation (NCDC)?",
      options: [
        "National e-Vidhan Application (NeVA).",
        "Formation and Promotion of 10,000 FPOs.",
        "NEP SAARTHI.",
        "Armed Forces (Special Powers) Act."
      ],
      correctAnswerIndex: 1,
      explanation: "The central scheme is 'Formation and Promotion of 10,000 FPOs,' allocating 1,100 FPOs to NCDC.",
    ),

    Question(
      questionText: "What is the theme of the 14th Clean Energy Ministerial (CEM-14) and 8th Mission Innovation (MI-8) meeting to be hosted by India?",
      options: [
        "Advancing Clean Energy Together.",
        "Promoting academic reforms.",
        "Addressing ship design challenges.",
        "Enhancing bargaining power of farmers."
      ],
      correctAnswerIndex: 0,
      explanation: "The theme is 'Advancing Clean Energy Together.'",
    ),

    Question(
      questionText: "What collaborative initiative aims to address major engineering and technology challenges in India?",
      options: [
        "GAINS 2023.",
        "NEP SAARTHI.",
        "UDAN 5.1.",
        "IMPRINT India scheme."
      ],
      correctAnswerIndex: 3,
      explanation: "The collaborative initiative is the IMPRINT India scheme, aiming to address major engineering and technology challenges.",
    ),

    Question(
        questionText: "Who has been appointed to the Advisory Committee to the President of the Conference of the Parties (COP28) of the UNFCCC?",
        options: [
          "Mukesh Ambani.",
          "Dr. Mansukh Mandaviya.",
          "Margherita Della Valle.",
          "Sourav Ganguly."
        ],
        correctAnswerIndex: 0,
        explanation: "Mukesh Ambani, Chairman and CEO of Reliance Industries, has been appointed to the Advisory Committee to the President of COP28."
    ),
    Question(
      questionText: "What program has the Ministry of Civil Aviation launched to enhance connectivity to remote areas of India?",
      options: [
        "National Workshop on NeVA.",
        "UDAN 5.1.",
        "GAINS 2023.",
        "NEP SAARTHI."
      ],
      correctAnswerIndex: 1,
      explanation: "The Ministry of Civil Aviation has launched UDAN 5.1 to enhance connectivity to remote areas of India.",
    ),

    Question(
      questionText: "Who has been appointed as the chairman of the Cheetah Project Steering Committee under the Ministry of Environment, Forest and Climate Change?",
      options: [
        "R.N. Jayaprakash.",
        "Rajesh Gopal.",
        "Dr. K. Govindaraj.",
        "Sourav Ganguly."
      ],
      correctAnswerIndex: 1,
      explanation: "Rajesh Gopal, secretary general of Global Tiger Forum, has been appointed as the chairman of the Cheetah Project Steering Committee.",
    ),

    Question(
      questionText: "What collaborative initiative aims to promote and collaborate on integrative health research?",
      options: [
        "UDAN 5.1.",
        "IMPRINT India scheme.",
        "NCGG – INSA Leadership Programme.",
        "Pradhan Mantri Jan Dhan Yojana."
      ],
      correctAnswerIndex: 2,
      explanation: "The Ministry of Ayush and the Indian Council of Medical Research (ICMR) have signed a MoU to promote and collaborate on integrative health research.",
    ),

    Question(
      questionText: "What joint initiative between IIT Madras and Israel aims to address challenges in water resources management?",
      options: [
        "India-Israel Center of Water Technology (CoWT).",
        "GAINS 2023.",
        "CEM-14 and MI-8 meeting.",
        "NTPC-NPCIL supplementary agreement."
      ],
      correctAnswerIndex: 0,
      explanation: "IIT Madras has partnered with Israel to establish the 'India-Israel Center of Water Technology' (CoWT).",
    ),

    Question(
      questionText: "What significant milestone has Telangana State achieved in financial inclusion?",
      options: [
        "100% coverage of Pradhan Mantri Jan Dhan Yojana.",
        "Launch of UDAN 5.1.",
        "Signing MoU with Goa and Uttarakhand.",
        "Appointment of Virat Kohli as Duroflex brand ambassador."
      ],
      correctAnswerIndex: 0,
      explanation: "Telangana State has achieved 100% coverage of the Pradhan Mantri Jan Dhan Yojana (PMJDY).",
    ),

    Question(
      questionText: "What did the Indian government implement to prevent money laundering and terrorist financing in small savings schemes?",
      options: [
        "Formation and Promotion of 10,000 FPOs.",
        "New regulations requiring income proof for investments above Rs 10 lakh.",
        "Signing MoU on industrial research and development cooperation with Canada.",
        "Launch of UDAN 5.1."
      ],
      correctAnswerIndex: 1,
      explanation: "To prevent money laundering and terrorist financing, the government implemented new regulations requiring income proof for investments above Rs 10 lakh in small savings schemes.",
    ),

    Question(
      questionText: "Who is appointed as the Deputy Chief of the Air Staff?",
      options: [
        "Ashutosh Dixit.",
        "Manoj Soni.",
        "Praveen Sood.",
        "Rathendra Raman."
      ],
      correctAnswerIndex: 0,
      explanation: "Ashutosh Dixit has been appointed as the Deputy Chief of the Air Staff.",
    ),

    Question(
      questionText: "What scheme is being implemented in 8220 water-stressed Gram Panchayats of seven states under the Atal Bhujal Yojana?",
      options: [
        "Formation and Promotion of 10,000 FPOs.",
        "IMPRINT India scheme.",
        "CEM-14 and MI-8 meeting.",
        "Atal Bhujal Yojana (ATAL JAL)."
      ],
      correctAnswerIndex: 3,
      explanation: "Atal Bhujal Yojana (ATAL JAL) is being implemented in 8220 water-stressed Gram Panchayats of seven states.",
    ),

    Question(
      questionText: "What collaborative initiative between the Department of Science and Technology and the Ministry of Human Resource Development aims to strengthen research and innovation?",
      options: [
        "CEM-14 and MI-8 meeting.",
        "UDAN 5.1.",
        "IMPRINT India scheme.",
        "NCGG – INSA Leadership Programme."
      ],
      correctAnswerIndex: 2,
      explanation: "The IMPRINT India scheme is a collaborative initiative to strengthen research and innovation in the country.",
    ),

    Question(
      questionText: "What agreement did India and Canada reach during the sixth India-Canada Ministerial Dialogue on Trade and Investment?",
      options: [
        "UDAN 5.1.",
        "Signing MoU on industrial research and development cooperation.",
        "Movement of skilled professionals and students.",
        "Enhancing tourism landscape of Goa and Uttarakhand."
      ],
      correctAnswerIndex: 2,
      explanation: "India and Canada agreed to ramp up discussions on the movement of skilled professionals and students to enhance their bilateral economic partnership.",
    ),
    Question(
      questionText: "Which country led a list of 10 countries responsible for 60% of maternal, stillbirth, and newborn deaths in 2020-2021?",
      options: [
        "China",
        "United States",
        "India",
        "Brazil"
      ],
      correctAnswerIndex: 2,
      explanation: "India led the list of 10 countries responsible for 60% of maternal, stillbirth, and newborn deaths in 2020-2021.",
    ),

    Question(
      questionText: "When did the World Health Organization (WHO) declare the end of the global health emergency for mpox?",
      options: [
        "May 2022",
        "November 2022",
        "May 2023",
        "July 2023"
      ],
      correctAnswerIndex: 2,
      explanation: "The global health emergency for mpox was declared ended by WHO in May 2023.",
    ),

    Question(
      questionText: "Which ministry secured the second position in the Data Governance Quality Index (DGQI) assessment for 2022-2023 Q3?",
      options: [
        "Ministry of Finance",
        "Ministry of Health",
        "Ministry of Ports, Shipping and Waterways",
        "Ministry of Education"
      ],
      correctAnswerIndex: 2,
      explanation: "The Ministry of Ports, Shipping and Waterways secured the second position in the DGQI assessment.",
    ),

    Question(
      questionText: "According to Knight Frank, what is the projected increase in India's ultra-high-net-worth individuals (UHNWI) from 2022 to 2027?",
      options: [
        "25%",
        "42%",
        "58.4%",
        "70%"
      ],
      correctAnswerIndex: 2,
      explanation: "Knight Frank projects a 58.4% increase in UHNWI individuals in India from 2022 to 2027.",
    ),

    Question(
      questionText: "In terms of annual price growth of high-end residential properties, what rank did Mumbai achieve among 46 global cities?",
      options: [
        "1st",
        "10th",
        "6th",
        "20th"
      ],
      correctAnswerIndex: 2,
      explanation: "Mumbai achieved the 6th rank in annual price growth of high-end residential properties among 46 global cities.",
    ),

    Question(
      questionText: "How much arms, dual-use items, and raw materials worth did Indian government-owned companies and private firms supply to the military junta in Myanmar?",
      options: [
        "₹200 crore",
        "₹322 crore",
        "₹422 crore",
        "₹500 crore"
      ],
      correctAnswerIndex: 2,
      explanation: "Indian companies supplied arms and materials worth ₹422 crore to the military junta in Myanmar.",
    ),

    Question(
      questionText: "In the Financial Times Rankings 2023, at what position did the Indian Institute of Management Kozhikode (IIMK) rank among the top providers of open-enrolment executive programs globally?",
      options: [
        "50th",
        "72nd",
        "90th",
        "110th"
      ],
      correctAnswerIndex: 1,
      explanation: "IIM Kozhikode ranked 72nd among the top providers of open-enrolment executive programs globally in FT Rankings 2023.",
    ),

    Question(
      questionText: "Which states emerged as the top performers in the NITI Aayog's annual health index for the Covid year of 2020-21 among larger states?",
      options: [
        "Maharashtra, Uttar Pradesh, Karnataka",
        "Kerala, Tamil Nadu, Telangana",
        "Gujarat, Rajasthan, Madhya Pradesh",
        "Punjab, Haryana, Himachal Pradesh"
      ],
      correctAnswerIndex: 1,
      explanation: "Kerala, Tamil Nadu, and Telangana emerged as the top performers in the NITI Aayog's health index for larger states.",
    ),

    Question(
      questionText: "Who won the Azerbaijan Grand Prix, the fourth round of the 2023 Formula 1 World Championship?",
      options: [
        "Max Verstappen",
        "Lewis Hamilton",
        "Sergio Perez",
        "Charles Leclerc"
      ],
      correctAnswerIndex: 2,
      explanation: "Sergio Perez won the Azerbaijan Grand Prix in Baku.",
    ),

    Question(
      questionText: "Who became the first Indian men's doubles pair to win a gold medal at the Badminton Asia Championships?",
      options: [
        "Satwiksairaj Rankireddy and Chirag Shetty",
        "PV Sindhu and Saina Nehwal",
        "Kidambi Srikanth and Parupalli Kashyap",
        "Jwala Gutta and Ashwini Ponnappa"
      ],
      correctAnswerIndex: 0,
      explanation: "Satwiksairaj Rankireddy and Chirag Shetty became the first Indian men's doubles pair to win gold at the Badminton Asia Championships.",
    ),
    Question(
      questionText: "Who claimed his first world title in snooker by defeating Mark Selby in a thrilling final at the Crucible in Sheffield?",
      options: [
        "Ronnie O'Sullivan",
        "John Higgins",
        "Judd Trump",
        "Luca Brecel"
      ],
      correctAnswerIndex: 3,
      explanation: "Luca Brecel claimed his first world title in snooker by defeating Mark Selby in the final at the Crucible in Sheffield.",
    ),

    Question(
      questionText: "Which state government decided to extend its sponsorship for both the Men and Women Indian Hockey Teams for another ten years from 2023 to 2033?",
      options: [
        "Karnataka",
        "Odisha",
        "Maharashtra",
        "Punjab"
      ],
      correctAnswerIndex: 1,
      explanation: "The Odisha government decided to extend its sponsorship for both the Men and Women Indian Hockey Teams for another ten years.",
    ),

    Question(
      questionText: "Who will become the first Indian to participate in the FIM World JuniorGP World Championship for motorcycle racing?",
      options: [
        "Geoffrey Emmanuel",
        "Anand Kumar",
        "Rajesh Patel",
        "Priya Singh"
      ],
      correctAnswerIndex: 0,
      explanation: "Geoffrey Emmanuel will become the first Indian to participate in the FIM World JuniorGP World Championship for motorcycle racing.",
    ),

    Question(
      questionText: "Which fast bowler, known as the fastest in women's cricket, announced her retirement from international cricket, causing a blow to South Africa?",
      options: [
        "Ellyse Perry",
        "Shabnim Ismail",
        "Sophie Ecclestone",
        "Jhulan Goswami"
      ],
      correctAnswerIndex: 1,
      explanation: "Shabnim Ismail, the fastest bowler in women's cricket, announced her retirement from international cricket.",
    ),

    Question(
      questionText: "Where will the inaugural edition of the Global Chess League (GCL), a joint venture between FIDE and Tech Mahindra, be held?",
      options: [
        "Paris",
        "Dubai",
        "New York",
        "Tokyo"
      ],
      correctAnswerIndex: 1,
      explanation: "The inaugural edition of the Global Chess League (GCL) will be held in Dubai.",
    ),

    Question(
      questionText: "What was Neeraj Chopra's winning throw at the Doha Diamond League 2023, where he secured victory with an 88.67 m throw?",
      options: [
        "85.43 m",
        "87.21 m",
        "88.67 m",
        "90.12 m"
      ],
      correctAnswerIndex: 2,
      explanation: "Neeraj Chopra secured victory at the Doha Diamond League 2023 with a winning throw of 88.67 m.",
    ),

    Question(
      questionText: "Who has been chosen as the next president of the Marylebone Cricket Club (MCC)?",
      options: [
        "Andrew Strauss",
        "Mark Nicholas",
        "Nasser Hussain",
        "Michael Vaughan"
      ],
      correctAnswerIndex: 1,
      explanation: "Mark Nicholas has been chosen as the next president of the Marylebone Cricket Club (MCC).",
    ),

    Question(
      questionText: "Who became the fastest player to score 5000 runs in One Day International (ODI) cricket, breaking the previous record set by Hashim Amla?",
      options: [
        "Virat Kohli",
        "Babar Azam",
        "Rohit Sharma",
        "Steve Smith"
      ],
      correctAnswerIndex: 1,
      explanation: "Babar Azam became the fastest player to score 5000 runs in ODI cricket, breaking the previous record set by Hashim Amla.",
    ),

    Question(
      questionText: "What national record did Indian athlete Praveen Chithravel set in the men's triple jump event at an athletics meet in Havana, Cuba?",
      options: [
        "16.82m",
        "17.30m",
        "17.37m",
        "18.05m"
      ],
      correctAnswerIndex: 2,
      explanation: "Praveen Chithravel set a national record of 17.37m in the men's triple jump event at an athletics meet in Havana, Cuba.",
    ),

    Question(
      questionText: "Who won the Miami Grand Prix 2023, extending his lead at the top of the standings in the Formula 1 World Championship?",
      options: [
        "Lewis Hamilton",
        "Sergio Perez",
        "Max Verstappen",
        "Charles Leclerc"
      ],
      correctAnswerIndex: 2,
      explanation: "Max Verstappen won the Miami Grand Prix 2023, extending his lead in the Formula 1 World Championship standings.",
    ),
    Question(
      questionText: "Where was the Thematic Conference on Universal Holistic Health held, and what was its theme?",
      options: [
        "Goa, India - Epicenter of Growth",
        "Bangaram Island, Lakshadweep, India - Respecting Cultural Diversity",
        "Dubai, UAE - Machines Can See 2023",
        "Indonesia - Climate Change and Disaster Risk Reduction"
      ],
      correctAnswerIndex: 1,
      explanation: "The Thematic Conference on Universal Holistic Health was held on Bangaram Island, Lakshadweep, India, with a theme of respecting cultural diversity.",
    ),

    Question(
      questionText: "Where are the foreign ministers of eight SCO member countries meeting, and when is the SCO Leaders' Summit scheduled?",
      options: [
        "New Delhi, India - July",
        "Goa, India - May 4 and 5",
        "Dubai, UAE - May 2-3",
        "Indonesia - January 2024"
      ],
      correctAnswerIndex: 1,
      explanation: "The foreign ministers of eight SCO member countries are meeting in Goa on May 4 and 5, setting the stage for the SCO Leaders' Summit in July in New Delhi.",
    ),

    Question(
      questionText: "What was the theme of the 42nd ASEAN Summit, and where did it take place?",
      options: [
        "Epicenter of Growth - Indonesia",
        "Climate Change and Disaster Risk Reduction - Kashmir",
        "SAGAR - Indian Ocean",
        "One Earth, One Family, One Future - G20"
      ],
      correctAnswerIndex: 0,
      explanation: "The 42nd ASEAN Summit had the theme 'ASEAN Affairs: Epicenter of Growth' and took place in Indonesia.",
    ),

    Question(
      questionText: "What is the theme of the Youth20 event (Y20) on climate change hosted by the University of Kashmir?",
      options: [
        "Vasudhaiva Kutumbakam",
        "Epicenter of Growth",
        "Climate change and Disaster Risk Reduction: Making Sustainability a Way of Life",
        "Enabling the least developed nations through information and communication technologies"
      ],
      correctAnswerIndex: 2,
      explanation: "The theme of the Y20 event on climate change hosted by the University of Kashmir is 'Climate change and Disaster Risk Reduction: Making Sustainability a Way of Life.'",
    ),

    Question(
      questionText: "What does G20 stand for, and what percentage of the world's total GDP does it represent?",
      options: [
        "Group of 20 - 74%",
        "Global Platform - 82.8%",
        "Growth and Development - 20%",
        "World Bank - USD 82.8 trillion"
      ],
      correctAnswerIndex: 0,
      explanation: "G20 stands for Group of 20, and it represents 74% of the world's total GDP, approximately USD 82.8 trillion.",
    ),

    Question(
      questionText: "Where did the Petersberg Climate Dialogue take place, and who hosted it?",
      options: [
        "Goa, India - SCO",
        "Berlin, Germany - Germany and UAE",
        "Dubai, UAE - Machines Can See",
        "Indonesia - ASEAN"
      ],
      correctAnswerIndex: 1,
      explanation: "The Petersberg Climate Dialogue took place in Berlin, Germany, from May 2-3, 2023, and was hosted by Germany and the United Arab Emirates.",
    ),

    Question(
      questionText: "What is the objective of the Indian Ocean Conference (IOC), and when was it established?",
      options: [
        "ASEAN Affairs - 2016",
        "Security And Growth for All in the Region (SAGAR) - 2016",
        "Epicenter of Growth - 2016",
        "Vasudhaiva Kutumbakam - 2016"
      ],
      correctAnswerIndex: 1,
      explanation: "The objective of the Indian Ocean Conference (IOC) is to facilitate discussions on Security And Growth for All in the Region (SAGAR), and it was established in 2016.",
    ),

    Question(
      questionText: "Which digital public infrastructure (DPI) components did India propose to the Shanghai Cooperation Organisation (SCO)?",
      options: [
        "AI, Digital Economy, and Remote Work",
        "Aadhaar, UPI, and DigiLocker",
        "Thalassaemia Care Gap",
        "Cultural Diversity and Dialogue"
      ],
      correctAnswerIndex: 1,
      explanation: "India proposed the expansion and adoption of its digital public infrastructure (DPI), comprising Aadhaar, United Payments Interface (UPI), and DigiLocker, to the SCO.",
    ),

    Question(
      questionText: "Where will the annual ASEAN Tourism Forum take place in January 2024, and what is its theme?",
      options: [
        "Berlin, Germany - Time Shelter",
        "Vientiane, Laos - Quality and Responsible Tourism",
        "Dubai, UAE - Machines Can See",
        "Goa, India - SCO Leaders' Summit"
      ],
      correctAnswerIndex: 1,
      explanation: "The annual ASEAN Tourism Forum in January 2024 will take place in Vientiane, Laos, with the theme 'Quality and Responsible Tourism — Sustaining ASEAN Future.'",
    ),

    Question(
      questionText: "Where did Prime Minister Narendra Modi address the 76th Session of the World Health Assembly, and what milestone did he mention for the World Health Organization?",
      options: [
        "Geneva, Switzerland - 75 years",
        "New Delhi, India - 100 years",
        "Dubai, UAE - 2023",
        "Indonesia - ASEAN Summit"
      ],
      correctAnswerIndex: 0,
      explanation: "Prime Minister Narendra Modi addressed the 76th Session of the World Health Assembly in Geneva, Switzerland, congratulating the World Health Organization (WHO) on serving the world for 75 years and expressing confidence for the next 25 years as it reaches its 100 year milestone.",
    ),
    Question(
      questionText: "Where did the UAE government launch the 'Machines Can See 2023' Summit, and what was the focus of the event?",
      options: [
        "New Delhi, India - SCO Leaders' Summit",
        "Geneva, Switzerland - World Health Assembly",
        "Dubai, UAE - Museum of the Future",
        "Berlin, Germany - Petersberg Climate Dialogue"
      ],
      correctAnswerIndex: 2,
      explanation: "The UAE government launched the 'Machines Can See 2023' Summit in Dubai, UAE, at the Museum of the Future, with a focus on Artificial Intelligence (AI).",
    ),

    Question(
      questionText: "What is the theme of India's G20 Presidency, and what does it emphasize?",
      options: [
        "Epicenter of Growth",
        "Vasudhaiva Kutumbakam",
        "One Earth, One Family, One Future",
        "Security And Growth for All in the Region (SAGAR)"
      ],
      correctAnswerIndex: 2,
      explanation: "The theme of India's G20 Presidency is 'Vasudhaiva Kutumbakam' or 'One Earth, One Family, One Future,' emphasizing unity and interconnectedness.",
    ),

    Question(
      questionText: "Where did the Second G20 Anti-corruption Working Group Meeting take place, and when?",
      options: [
        "Rishikesh, Uttarakhand - May 25 to May 27",
        "Berlin, Germany - May 2-3",
        "Vientiane, Laos - January 2024",
        "Dubai, UAE - Machines Can See 2023"
      ],
      correctAnswerIndex: 0,
      explanation: "The Second G20 Anti-corruption Working Group Meeting took place in Rishikesh, Uttarakhand, from May 25 to May 27, 2023.",
    ),

    Question(
      questionText: "Who was awarded the honorary MBE by King Charles III for contributions to Indian classical arts in Britain?",
      options: [
        "Maria Stepanova",
        "Dr M.N. Nandakumara",
        "Pandit Ramkishan",
        "Michael Douglas"
      ],
      correctAnswerIndex: 1,
      explanation: "Dr M.N. Nandakumara, a renowned Sanskrit scholar and Executive Director of the Bharatiya Vidya Bhavan centre in London, was awarded an honorary MBE by King Charles III for his contributions to Indian classical arts in Britain.",
    ),

    Question(
      questionText: "Which Russian writer received the Leipzig Book Prize for European Understanding in 2023?",
      options: [
        "Maria Stepanova",
        "Gauri Lankesh",
        "Michael Douglas",
        "Ram Nath Kovind"
      ],
      correctAnswerIndex: 0,
      explanation: "Maria Stepanova, a renowned Russian writer, received the Leipzig Book Prize for European Understanding in 2023.",
    ),

    Question(
      questionText: "Who were the winners of UNESCO's annual World Press Freedom Prize in 2023?",
      options: [
        "Pandit Ramkishan",
        "Michael Douglas",
        "Niloufar Hamedi, Elaheh Mohammadi, and Narges Mohammadi",
        "Dr M.N. Nandakumara"
      ],
      correctAnswerIndex: 2,
      explanation: "UNESCO awarded its annual World Press Freedom Prize in 2023 to three imprisoned Iranian female journalists: Niloufar Hamedi, Elaheh Mohammadi, and Narges Mohammadi.",
    ),

    Question(
      questionText: "Who was awarded the title of 'Shatabdi Purush' (Man of the Century) in New Delhi?",
      options: [
        "Michael Douglas",
        "Pandit Ramkishan",
        "Ram Nath Kovind",
        "Maria Stepanova"
      ],
      correctAnswerIndex: 1,
      explanation: "Former Lok Sabha MP Pandit Ramkishan was awarded the title of 'Shatabdi Purush' (Man of the Century) in New Delhi in recognition of his contributions as a socialist leader.",
    ),

    Question(
      questionText: "Which film will be honored with an honorary Palme d'Or at the Cannes Film Festival in 2023?",
      options: [
        "The China Syndrome",
        "Basic Instinct",
        "Falling Down",
        "Behind the Candelabra"
      ],
      correctAnswerIndex: 3,
      explanation: "The Cannes Film Festival will honor Michael Douglas with an honorary Palme d'Or for his outstanding career and contributions to cinema, including films like Behind the Candelabra.",
    ),

    Question(
      questionText: "Who presented the Bharat Ratna Dr. Ambedkar Award to Chief Minister Yogi Adityanath?",
      options: [
        "Ram Nath Kovind",
        "Narendra Modi",
        "Michael Douglas",
        "Pandit Ramkishan"
      ],
      correctAnswerIndex: 0,
      explanation: "Former President of India, Ram Nath Kovind, presented the Bharat Ratna Dr. Ambedkar Award to Chief Minister Yogi Adityanath for his efforts in creating a fear-free Uttar Pradesh.",
    ),

    Question(
      questionText: "Which Indian port authority was honored with the Sagar Shreshtha Sammaan for the best turnaround time?",
      options: [
        "Cochin Port Authority (CPA)",
        "Mumbai Port Trust",
        "Chennai Port Trust",
        "Kolkata Port Trust"
      ],
      correctAnswerIndex: 0,
      explanation: "The Ministry of Ports, Shipping and Waterways honoured the Cochin Port Authority (CPA) with the Sagar Shreshtha Sammaan for the best turnaround time in the non-container category during 2022-23.",
    ),
    Question(
      questionText: "What is the purpose of the 'Ekta Evam Shradhanjali Abhiyan' organized by the Border Roads Organisation?",
      options: [
        "To celebrate the achievements of women in the Indian Air Force.",
        "To commemorate the decommissioning of INS Magar.",
        "To honor the sacrifices and contributions of Karmyogis in nation-building.",
        "To mark the successful test trial of the 'ADC-150' container."
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Ekta Evam Shradhanjali Abhiyan' is organized by the Border Roads Organisation to honor the sacrifices and contributions of Karmyogis in nation-building.",
    ),

    Question(
      questionText: "Who is Shivangi Singh, and what historic achievement is she known for?",
      options: [
        "A scientist involved in the development of loitering munitions.",
        "The first woman pilot to fly the Rafale fighter aircraft.",
        "A participant in the 'Buland Bharat' integrated training exercise.",
        "A key member of Project Dantak in Bhutan."
      ],
      correctAnswerIndex: 1,
      explanation: "Shivangi Singh is the first woman pilot to fly the Rafale fighter aircraft in the Indian Air Force.",
    ),

    Question(
      questionText: "What is the significance of the first successful test trial of 'ADC-150' conducted by the Indian Navy and DRDO?",
      options: [
        "It marks the decommissioning of INS Magar.",
        "It demonstrates the capabilities of a locally-made Air Droppable Container.",
        "It signifies the completion of the 64th BRO Day Celebrations.",
        "It showcases the participation of the Indian Navy in Exercise Orion."
      ],
      correctAnswerIndex: 1,
      explanation: "The first successful test trial of 'ADC-150' signifies the capabilities of a locally-made Air Droppable Container by the Indian Navy and DRDO.",
    ),

    Question(
      questionText: "'Buland Bharat' is an exercise conducted in which region and involves collaboration between which forces?",
      options: [
        "Western theatre, involving the Artillery and Infantry only.",
        "Eastern theatre, involving Artillery, Infantry, Special Forces, Aviation, and CAPF.",
        "Southern theatre, focusing on naval exercises.",
        "Central theatre, emphasizing air dominance."
      ],
      correctAnswerIndex: 1,
      explanation: "'Buland Bharat' is an integrated training exercise taking place in the eastern theatre, involving Artillery, Infantry, Special Forces, Aviation, and CAPF.",
    ),

    Question(
      questionText: "What is the historical background of Border Roads Organisation Project Dantak in Bhutan?",
      options: [
        "It was established during the 64th BRO Day Celebrations.",
        "It originated from an agreement between the third king of Bhutan and Jawahar Lal Nehru.",
        "It is a result of collaboration between India and Thailand.",
        "It was decommissioned on May 6 at the Naval base in Kochi."
      ],
      correctAnswerIndex: 1,
      explanation: "Project Dantak in Bhutan was established on April 24, 1961, as a result of an agreement between the third king of Bhutan and Jawahar Lal Nehru.",
    ),

    Question(
      questionText: "Which naval ship, the oldest Landing Ship Tank (Large), was decommissioned on May 6 at the Naval base in Kochi?",
      options: [
        "INS Kavaratti",
        "INS Magar",
        "INS TARKASH",
        "INS SUBHADRA"
      ],
      correctAnswerIndex: 1,
      explanation: "INS Magar, the oldest Landing Ship Tank (Large), was decommissioned on May 6 at the Naval base in Kochi.",
    ),

    Question(
      questionText: "Who developed the first indigenously designed and developed loitering munitions for the Indian Air Force?",
      options: [
        "ISRO",
        "DRDO",
        "Tata Advanced Systems Limited (TASL)",
        "Infosys"
      ],
      correctAnswerIndex: 2,
      explanation: "The first indigenously designed and developed loitering munitions for the Indian Air Force were developed by Tata Advanced Systems Limited (TASL).",
    ),

    Question(
      questionText: "Where did the inaugural flight of the first C295 aircraft for India take place, and which tactical plane is it used by?",
      options: [
        "Seville, Spain; Indian Navy's INS Kavaratti",
        "Kochi, India; Indian Air Force's Rafale",
        "Yangon, Myanmar; Indian Navy's INS Magar",
        "Port Al-Jubail, Saudi Arabia; Indian Navy's INS TARKASH"
      ],
      correctAnswerIndex: 0,
      explanation: "The inaugural flight of the first C295 aircraft for India took place in Seville, Spain, and it is used by the Indian Air Force.",
    ),

    Question(
      questionText: "What is the aim of the India-Thailand Coordinated Patrol (Indo-Thai CORPAT), and when did the 35th edition take place?",
      options: [
        "To conduct joint exercises with Thailand in the Bay of Bengal; April 27 to May 3, 2023.",
        "To reinforce maritime linkages and ensure safety in the Indian Ocean; May 3 to May 10, 2023.",
        "To decommission INS Kavaratti; May 14 to May 19, 2023.",
        "To participate in Exercise Orion in France; May 5th, 2023."
      ],
      correctAnswerIndex: 1,
      explanation: "The 35th edition of the India-Thailand Coordinated Patrol (Indo-Thai CORPAT) aimed to reinforce maritime linkages and ensure safety in the Indian Ocean, taking place from May 3 to May 10, 2023.",
    ),

    Question(
      questionText: "Which Indian Navy vessel, built and designed in India, participated in the 4th India-Indonesia Bilateral exercise, Samudra Shakti-23, in Batam, Indonesia?",
      options: [
        "INS Kavaratti",
        "INS TARKASH",
        "INS Magar",
        "INS SUBHADRA"
      ],
      correctAnswerIndex: 0,
      explanation: "The ASW Corvette, INS Kavaratti, built and designed in India, participated in the 4th India-Indonesia Bilateral exercise, Samudra Shakti-23, in Batam, Indonesia.",
    ),
    Question(
      questionText: "What steps is the Government of India taking to support the country's aviation market, according to the Civil Aviation Minister, Jyotiraditya Scindia?",
      options: [
        "Decommissioning old aircraft to make way for new ones.",
        "Implementing key reforms to boost growth in the aviation sector.",
        "Reducing the number of airports to streamline operations.",
        "Increasing reliance on military imports for aviation needs."
      ],
      correctAnswerIndex: 1,
      explanation: "The Government of India, according to Civil Aviation Minister Jyotiraditya Scindia, is implementing key reforms to boost growth in the aviation sector.",
    ),

    Question(
      questionText: "What significant milestone has India achieved in its defense sector, as reported in May 2023?",
      options: [
        "Completion of the 64th BRO Day Celebrations.",
        "Successful sea trials of the sixth Kalvari class submarine.",
        "Crossing ₹1 lakh crore in the value of defense production.",
        "Launch of the first C295 aircraft for India."
      ],
      correctAnswerIndex: 2,
      explanation: "India has achieved a significant milestone in its defense sector as the value of defense production in the country crossed ₹1 lakh crore for the first time.",
    ),

    Question(
      questionText: "What is the current status of the sixth and final Kalvari class submarine, Vaghsheer, as reported in May 2023?",
      options: [
        "It is participating in the 4th India-Indonesia Bilateral exercise.",
        "It has completed its inaugural flight.",
        "It has begun its sea trials and is scheduled for delivery in early 2024.",
        "It is part of the exercise 'Sudarshan Shakti 2023.'"
      ],
      correctAnswerIndex: 2,
      explanation: "The sixth and final Kalvari class submarine, Vaghsheer, has begun its sea trials and is scheduled for delivery to the Indian Navy in early 2024.",
    ),

    Question(
      questionText: "What is the objective of 'Operation Karuna,' launched by India on May 18th?",
      options: [
        "To conduct a joint naval exercise with Saudi Arabia.",
        "To aid those affected by Cyclone Mocha in Myanmar.",
        "To commemorate the achievements of women in the Indian Navy.",
        "To conduct a joint exercise with the Royal Thai Navy."
      ],
      correctAnswerIndex: 1,
      explanation: "'Operation Karuna' was launched by India on May 18th to aid those affected by Cyclone Mocha in Myanmar.",
    ),

    Question(
      questionText: "What is the name of the naval exercise between India and the Kingdom of Saudi Arabia, and what ships are participating?",
      options: [
        "'AL-MOHED AL-HINDI 2023'; INS Magar and INS TARKASH.",
        "'Samudra Shakti-23'; INS Kavaratti and INS SUBHADRA.",
        "'Sudarshan Shakti 2023'; INS TARKASH and INS SUBHADRA.",
        "'AL-MOHED AL-HINDI 2023'; INS TARKASH and INS SUBHADRA."
      ],
      correctAnswerIndex: 3,
      explanation: "The naval exercise between India and the Kingdom of Saudi Arabia is 'AL-MOHED AL-HINDI 2023,' and the participating ships are INS TARKASH and INS SUBHADRA.",
    ),

    Question(
      questionText: "Where was the highly anticipated exercise 'Sudarshan Shakti 2023' conducted, and what was its objective?",
      options: [
        "Western borders in Rajasthan and Punjab; To conduct sea trials.",
        "Eastern theatre in Arunachal Pradesh; To transform the forces using new-age technologies.",
        "Southern theatre in Goa; To test locally-made Air Droppable Container.",
        "Central theatre in Maharashtra; To launch the first C295 aircraft."
      ],
      correctAnswerIndex: 1,
      explanation: "'Sudarshan Shakti 2023' was conducted along the western borders in Rajasthan and Punjab, aiming to transform the forces into a modern, lean, and agile fighting combination capable of leveraging new-age technologies.",
    ),

    Question(
      questionText: "What computational tool has been developed by researchers at the Indian Institute of Technology Madras for improving cancer detection?",
      options: [
        "AIRAWAT",
        "GBMDriver",
        "Jugalbandi",
        "Topaz"
      ],
      correctAnswerIndex: 1,
      explanation: "Researchers at the Indian Institute of Technology Madras have developed a machine learning-based computational tool called 'GBMDriver' to improve the detection of cancer-causing tumors in the brain and spinal cord.",
    ),

    Question(
      questionText: "What is the objective of the new online training program 'Space Science and Technology Awareness Training (START)' announced by ISRO?",
      options: [
        "To launch a new satellite into space.",
        "To conduct experiments on human stem cell aging in space.",
        "To enable Indian students to become professionals in space science and technology.",
        "To develop advanced precision drones for various applications."
      ],
      correctAnswerIndex: 2,
      explanation: "The objective of the new online training program 'START' by ISRO is to enable Indian students to become professionals in space science and technology.",
    ),

    Question(
      questionText: "What information has been released by NASA's Jet Propulsion Laboratory about asteroids approaching Earth in May?",
      options: [
        "Details about the first C295 aircraft's inaugural flight.",
        "Information about the launch of the Axiom Mission 2 to the ISS.",
        "Updates on the generative AI chatbot Bard.",
        "Information about five asteroids approaching Earth closely in May."
      ],
      correctAnswerIndex: 3,
      explanation: "NASA's Jet Propulsion Laboratory released details about five asteroids that will approach Earth closely in May.",
    ),

    Question(
      questionText: "What is the purpose of the generative AI chatbot Bard announced by Google, and in how many countries will it be rolled out?",
      options: [
        "To conduct joint exercises with Thailand; Rolled out in 180 countries.",
        "To improve cancer detection; Rolled out in over 180 countries.",
        "To cover areas of rural India lacking media access; Rolled out in 50 countries.",
        "To provide information about five asteroids approaching Earth; Rolled out in India only."
      ],
      correctAnswerIndex: 2,
      explanation: "Google announced that Bard, a generative AI chatbot, will be rolled out in over 180 countries and is specifically designed to cover areas of rural India lacking media access.",
    ),

    Question(
      questionText: "Who authored the book titled 'NTR-A Political Biography'?",
      options: [
        "Ramachandra Murthy Kondubhatla",
        "Kiren Rijiju",
        "Deepika Padukone",
        "Hari Budha Magar"
      ],
      correctAnswerIndex: 0,
      explanation: "The book 'NTR-A Political Biography' is authored by Ramachandra Murthy Kondubhatla.",
    ),


    Question(
      questionText: "Which state is home to the first-ever movie in Tagin language?",
      options: [
        "Arunachal Pradesh",
        "Andhra Pradesh",
        "Telangana",
        "Maharashtra"
      ],
      correctAnswerIndex: 0,
      explanation: "The first-ever movie in Tagin language is from Arunachal Pradesh.",
    ),


    Question(
      questionText: "What is the expected reduction in travel time between Mumbai and Ahmedabad once the High-Speed Rail Corridor is completed?",
      options: [
        "1 hour 58 minutes",
        "3 hours 15 minutes",
        "4 hours 45 minutes",
        "6 hours 35 minutes"
      ],
      correctAnswerIndex: 0,
      explanation: "The travel time between Mumbai and Ahmedabad is expected to reduce to 1 hour 58 minutes.",
    ),


    Question(
      questionText: "Which country has put the Sittwe Port in Myanmar into operation?",
      options: [
        "India",
        "China",
        "Japan",
        "Bangladesh"
      ],
      correctAnswerIndex: 0,
      explanation: "India has put the Sittwe Port in Myanmar into operation as part of the Kaladan Multimodal Transit Transport initiative.",
    ),
    Question(
      questionText: "Which airport in India has become the first to have a reading lounge?",
      options: [
        "Lal Bahadur Shastri International Airport",
        "Indira Gandhi International Airport",
        "Chhatrapati Shivaji Maharaj International Airport",
        "Rajiv Gandhi International Airport"
      ],
      correctAnswerIndex: 0,
      explanation: "Lal Bahadur Shastri International Airport has become the first in India to have a reading lounge.",
    ),


    Question(
      questionText: "When did Cyclone Mocha make landfall in Bangladesh?",
      options: [
        "May 10, 2023",
        "May 12, 2023",
        "May 14, 2023",
        "May 17, 2023"
      ],
      correctAnswerIndex: 2,
      explanation: "Cyclone Mocha made landfall in Bangladesh on May 14, 2023.",
    ),

    Question(
      questionText: "Who is featured on the cover of the latest TIME magazine?",
      options: [
        "Kiren Rijiju",
        "Ramachandra Murthy Kondubhatla",
        "Deepika Padukone",
        "Nandamuri Taraka Rama Rao (NTR)"
      ],
      correctAnswerIndex: 2,
      explanation: "Deepika Padukone is featured on the cover of the latest TIME magazine.",
    ),

    Question(
      questionText: "Which temple in Rudraprayag, Uttarakhand, has been designated as a national monument?",
      options: [
        "Kashi Vishwanath Temple",
        "Tungnath",
        "Badrinath Temple",
        "Kedarnath Temple"
      ],
      correctAnswerIndex: 1,
      explanation: "Tungnath, located in Rudraprayag, Uttarakhand, has been designated as a national monument.",
    ),

    Question(
      questionText: "Who successfully reached the summit of Mount Everest for the 26th time?",
      options: [
        "Kami Rita Sherpa",
        "Pa Dawa",
        "Hari Budha Magar",
        "Sarath Babu"
      ],
      correctAnswerIndex: 0,
      explanation: "Kami Rita Sherpa reached the summit of Mount Everest for the 26th time.",
    ),

    Question(
      questionText: "Which university unveiled Asia's first-ever subsea research lab?",
      options: [
        "MIT-World Peace University (WPU)",
        "Harvard University",
        "Oxford University",
        "Stanford University"
      ],
      correctAnswerIndex: 0,
      explanation: "MIT-World Peace University (WPU) unveiled Asia's first-ever subsea research lab, the Centre for Subsea Engineering Research (CSER).",
    ),

    Question(
        questionText: "Who authored the book 'NTR-A Political Biography'?",
        options: [
          "Ramachandra Murthy Kondubhatla",
          "Kiren Rijiju",
          "Deepika Padukone",
          "Hari Budha Magar"
        ],
        correctAnswerIndex: 0,
        explanation: "The book 'NTR-A Political Biography' is authored by Ramachandra Murthy Kondubhatla."
    ),
    Question(
        questionText: "Which high-speed rail corridor is under construction to link Mumbai and Ahmedabad?",
        options: [
          "Mumbai-Delhi High-Speed Rail Corridor",
          "Chennai-Bengaluru High-Speed Rail Corridor",
          "Mumbai-Ahmedabad High-Speed Rail Corridor",
          "Hyderabad-Bengaluru High-Speed Rail Corridor"
        ],
        correctAnswerIndex: 2,
        explanation: "The Mumbai-Ahmedabad High-Speed Rail Corridor is under construction to link the major cities of Mumbai and Ahmedabad."
    ),
    Question(
        questionText: "Which port in Myanmar has been put into operation by India?",
        options: [
          "Chittagong Port",
          "Sittwe Port",
          "Yangon Port",
          "Mangla Port"
        ],
        correctAnswerIndex: 1,
        explanation: "The Sittwe Port in Myanmar has been put into operation by India as part of the Kaladan Multimodal Transit Transport initiative."
    ),
    Question(
        questionText: "Which Bollywood star appeared on the cover of TIME magazine?",
        options: [
          "Amitabh Bachchan",
          "Shah Rukh Khan",
          "Deepika Padukone",
          "Priyanka Chopra"
        ],
        correctAnswerIndex: 2,
        explanation: "Deepika Padukone appeared on the cover of TIME magazine, being described as a 'global star' bringing 'the world to Bollywood.'"
    ),
    Question(
        questionText: "Which Shiva temple in Rudraprayag, Uttarakhand, has been designated as a national monument?",
        options: [
          "Kedarnath Temple",
          "Badrinath Temple",
          "Tungnath Temple",
          "Somnath Temple"
        ],
        correctAnswerIndex: 2,
        explanation: "Tungnath, located in Rudraprayag, Uttarakhand, is not only one of the highest Shiva temples in the world but also the highest among the five Panch Kedar temples."
    ),
    Question(
        questionText: "How many times has Nepali climber Kami Rita Sherpa reached the summit of Mount Everest?",
        options: [
          "22 times",
          "25 times",
          "27 times",
          "30 times"
        ],
        correctAnswerIndex: 2,
        explanation: "Nepali climber Kami Rita Sherpa reached the top of Mount Everest for the 27th time, reclaiming the record for the most summits of the world’s highest mountain."
    ),
    Question(
        questionText: "Which university unveiled Asia's first-ever subsea research lab?",
        options: [
          "Harvard University",
          "MIT-World Peace University (WPU)",
          "Oxford University",
          "Stanford University"
        ],
        correctAnswerIndex: 1,
        explanation: "MIT-World Peace University (WPU) unveiled Asia's first-ever subsea research lab, the Centre for Subsea Engineering Research (CSER)."
    ),
    Question(
        questionText: "What does India plan to challenge at the World Trade Organisation (WTO)?",
        options: [
          "EU's proposal on digital taxation",
          "US sanctions on trade",
          "China's trade practices",
          "EU's carbon tax proposal"
        ],
        correctAnswerIndex: 3,
        explanation: "India plans to challenge the European Union's proposal to levy tariffs ranging from 20% to 35% on high-carbon goods at the WTO."
    ),
    Question(
        questionText: "What record did former Gurkha soldier Hari Budha Magar achieve?",
        options: [
          "Longest distance covered on a wheelchair",
          "Fastest climb of Mount Everest",
          "First person to swim across the English Channel with prosthetic limbs",
          "Climbing Mount Everest using prosthetic legs"
        ],
        correctAnswerIndex: 3,
        explanation: "Hari Budha Magar, a former Gurkha soldier, made history by successfully climbing Mount Everest using prosthetic legs."
    ),
    Question(
        questionText: "What is the significance of the bust of Mahatma Gandhi unveiled in Hiroshima, Japan?",
        options: [
          "A symbol of India's victory in World War II",
          "A gift from Japan to India",
          "A symbol of friendship and goodwill between India and Japan",
          "A tribute to the victims of the Hiroshima bombing"
        ],
        correctAnswerIndex: 2,
        explanation: "The bust of Mahatma Gandhi unveiled in Hiroshima serves as a gift from the Government of India to the city, symbolizing friendship and goodwill between India and Japan."
    ),

    Question(
        questionText: "Which tree in Chile has been officially recognized as the world’s oldest?",
        options: [
          "Baobab Tree",
          "Sequoia Tree",
          "Redwood Tree",
          "Patagonian Cypress"
        ],
        correctAnswerIndex: 3,
        explanation: "A 5,000-year-old tree in Chile, a Patagonian Cypress, has been officially recognized as the world’s oldest living organism."
    ),
    Question(
        questionText: "What is the name of the sword from Tipu Sultan’s reign that broke auction records?",
        options: [
          "Khanda",
          "Rapier",
          "Katana",
          "Sukhela"
        ],
        correctAnswerIndex: 3,
        explanation: "Tipu Sultan’s fabled sword, referred to as Sukhela, broke all auction records in London by fetching over GBP 14 million at Bonhams' Islamic and Indian Art sale."
    ),
    Question(
        questionText: "When is the first-ever Urban Climate Film Festival scheduled to take place?",
        options: [
          "May 15-17, 2023",
          "June 3-5, 2023",
          "July 8-10, 2023",
          "August 20-22, 2023"
        ],
        correctAnswerIndex: 1,
        explanation: "The first-ever Urban Climate Film Festival is scheduled to take place in New Town, Kolkata, from June 3 to 5, 2023."
    ),
    Question(
        questionText: "Which freedom fighter is commemorated on Veer Savarkar Jayanti?",
        options: [
          "Bhagat Singh",
          "Subhas Chandra Bose",
          "Veer Savarkar",
          "Mahatma Gandhi"
        ],
        correctAnswerIndex: 2,
        explanation: "Veer Savarkar Jayanti is celebrated to commemorate Vinayak Damodar 'Veer' Savarkar, one of the Indian freedom fighters."
    ),
    Question(
        questionText: "What is the focus of the open access course created by the University of Edinburgh and the Indian consulate in the UK?",
        options: [
          "Mathematics",
          "Climate Solutions",
          "History of Literature",
          "Space Exploration"
        ],
        correctAnswerIndex: 1,
        explanation: "The first open access course in Hindi language, named Climate Solutions, was created by the University of Edinburgh and the Indian consulate in the UK."
    ),
    Question(
        questionText: "Who is recognized as the Queen of Rock’n’Roll?",
        options: [
          "Aretha Franklin",
          "Janis Joplin",
          "Tina Turner",
          "Madonna"
        ],
        correctAnswerIndex: 2,
        explanation: "Tina Turner is recognized as the Queen of Rock’n’Roll."
    ),
    Question(
        questionText: "Which bank was founded on September 7, 1906, in Mumbai?",
        options: [
          "State Bank of India (SBI)",
          "ICICI Bank",
          "Axis Bank",
          "Bank of India"
        ],
        correctAnswerIndex: 3,
        explanation: "Bank of India was founded on September 7, 1906, in Mumbai."
    ),
    Question(
        questionText: "Who is the CEO of Twitter?",
        options: [
          "Elon Musk",
          "Mark Zuckerberg",
          "Sundar Pichai",
          "Jack Dorsey"
        ],
        correctAnswerIndex: 3,
        explanation: "Jack Dorsey is the CEO of Twitter."
    ),
    Question(
        questionText: "Which country's president is Joko Widodo?",
        options: [
          "India",
          "Indonesia",
          "Japan",
          "Italy"
        ],
        correctAnswerIndex: 1,
        explanation: "Joko Widodo is the president of Indonesia."
    ),
    Question(
        questionText: "Who is the Chief of Naval Staff, India?",
        options: [
          "Admiral Karambir Singh",
          "General Bipin Rawat",
          "Air Chief Marshal RKS Bhadauria",
          "Admiral R. Hari Kumar PVSM"
        ],
        correctAnswerIndex: 3,
        explanation: "Admiral R. Hari Kumar PVSM is the Chief of Naval Staff, India."
    ),

    Question(
        questionText: "Who is the President of FIFA?",
        options: [
          "Gianni Infantino",
          "Sepp Blatter",
          "Michel Platini",
          "Joseph S. Blatter"
        ],
        correctAnswerIndex: 0,
        explanation: "Gianni Infantino is the current President of FIFA."
    ),

    Question(
        questionText: "Who is the President of Chile?",
        options: [
          "Gabriel Boric Font",
          "Sebastian Piñera",
          "Michelle Bachelet",
          "Eduardo Frei Ruiz-Tagle"
        ],
        correctAnswerIndex: 0,
        explanation: "Gabriel Boric Font is the President of Chile."
    ),


    Question(
        questionText: "Who is the Director-General of the Food and Agriculture Organisation?",
        options: [
          "Qu Dongyu",
          "José Graziano da Silva",
          "Kofi Annan",
          "Jacques Diouf"
        ],
        correctAnswerIndex: 0,
        explanation: "Qu Dongyu is the Director-General of the Food and Agriculture Organisation."
    ),

    Question(
        questionText: "In which city is the headquarters of UNESCO located?",
        options: [
          "Paris",
          "Geneva",
          "London",
          "New York"
        ],
        correctAnswerIndex: 0,
        explanation: "The headquarters of UNESCO is located in Paris, France."
    ),

    Question(
        questionText: "Where is the headquarters of FIFA located?",
        options: [
          "Zürich, Switzerland",
          "Geneva, Switzerland",
          "Paris, France",
          "London, United Kingdom"
        ],
        correctAnswerIndex: 0,
        explanation: "The headquarters of FIFA is located in Zürich, Switzerland."
    ),

    Question(
        questionText: "Who is the Chief Operating Officer (COO) of Paytm?",
        options: [
          "Praveena Rai",
          "Vijay Shekhar Sharma",
          "Satya Nadella",
          "Ravi Shankar Prasad"
        ],
        correctAnswerIndex: 0,
        explanation: "Praveena Rai is the Chief Operating Officer (COO) of Paytm."
    ),

    Question(
        questionText: "Who is the President of Chile?",
        options: [
          "Gabriel Boric Font",
          "Sebastian Piñera",
          "Michelle Bachelet",
          "Eduardo Frei Ruiz-Tagle"
        ],
        correctAnswerIndex: 0,
        explanation: "Gabriel Boric Font is the President of Chile."
    ),

    Question(
        questionText: "Where is the headquarters of the Food and Agriculture Organisation located?",
        options: [
          "Rome, Italy",
          "Geneva, Switzerland",
          "Paris, France",
          "New York, USA"
        ],
        correctAnswerIndex: 0,
        explanation: "The headquarters of the Food and Agriculture Organisation is located in Rome, Italy."
    ),

    Question(
        questionText: "Who is the Director-General of UNESCO?",
        options: [
          "Audrey Azoulay",
          "Irina Bokova",
          "Koïchiro Matsuura",
          "Federico Mayor Zaragoza"
        ],
        correctAnswerIndex: 0,
        explanation: "Audrey Azoulay is the Director-General of UNESCO."
    ),

    Question(
        questionText: "Who is the Prime Minister of Japan?",
        options: [
          "Fumio Kishida",
          "Shinzo Abe",
          "Yoshihide Suga",
          "Naoto Kan"
        ],
        correctAnswerIndex: 0,
        explanation: "Fumio Kishida is the Prime Minister of Japan."
    ),

    Question(
        questionText: "What is the capital of Tripura?",
        options: [
          "Agartala",
          "Imphal",
          "Aizawl",
          "Kohima"
        ],
        correctAnswerIndex: 0,
        explanation: "The capital of Tripura is Agartala."
    ),

    Question(
        questionText: "Who is the CEO of the Swimming Federation of India?",
        options: [
          "Virendra Nanavati",
          "N. Ramachandran",
          "Anju Bobby George",
          "Pulella Gopichand"
        ],
        correctAnswerIndex: 0,
        explanation: "Virendra Nanavati is the CEO of the Swimming Federation of India."
    ),

    Question(
        questionText: "What is the currency of Ireland?",
        options: [
          "Irish Pound, Euro",
          "British Pound",
          "Swiss Franc",
          "Dollar"
        ],
        correctAnswerIndex: 0,
        explanation: "The currency of Ireland is Irish Pound and Euro."
    ),

    Question(
        questionText: "Who is the Director-General of the World Health Organization?",
        options: [
          "Dr Tedros Adhanom Ghebreyesus",
          "Margaret Chan",
          "Gro Harlem Brundtland",
          "Hiroshi Nakajima"
        ],
        correctAnswerIndex: 0,
        explanation: "Dr Tedros Adhanom Ghebreyesus is the Director-General of the World Health Organization."
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
    home: may(),
  ));
}

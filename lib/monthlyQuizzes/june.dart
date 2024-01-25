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

class june extends StatefulWidget {
  final String? userIdentifier;

  june({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<june> createState() => _juneState();
}

class _juneState extends State<june> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(200, null); // Initialize with the number of questions

  List<Question> _questions = [




  Question(
  questionText: "When is International Yoga Day celebrated?",
  options: [
  "June 21",
  "July 1",
  "May 15",
  "September 10"
  ],
  correctAnswerIndex: 0,
  explanation: "International Yoga Day is celebrated on June 21st every year.",
  ),

  Question(
  questionText: "What is the theme for International Yoga Day 2023?",
  options: [
  "Yoga for Vasudhaiva Kutumbakam",
  "Mindfulness and Meditation",
  "Physical Fitness and Wellness",
  "Global Harmony through Yoga"
  ],
  correctAnswerIndex: 0,
  explanation: "The theme for International Yoga Day 2023 is 'Yoga for Vasudhaiva Kutumbakam,' representing 'One Earth, One Family, One Future.'",
  ),


  Question(
  questionText: "Which city in India has been identified as the most expensive for expatriates?",
  options: [
  "Mumbai",
  "Delhi",
  "Bengaluru",
  "Hyderabad"
  ],
  correctAnswerIndex: 0,
  explanation: "Mumbai has been identified as the most expensive city for expatriates in India.",
  ),

  Question(
  questionText: "Who won the French Open 2023 men's singles title?",
  options: [
  "Novak Djokovic",
  "Rafael Nadal",
  "Roger Federer",
  "Casper Ruud"
  ],
  correctAnswerIndex: 0,
  explanation: "Novak Djokovic won the French Open 2023 men's singles title.",
  ),

  Question(
  questionText: "Which country won the ICC World Test Championship in 2023?",
  options: [
  "Australia",
  "India",
  "England",
  "South Africa"
  ],
  correctAnswerIndex: 0,
  explanation: "Australia won the ICC World Test Championship in 2023.",
  ),

  Question(
  questionText: "Who was awarded the Player of the Match in the ICC World Test Championship Final 2023?",
  options: [
  "Travis Head",
  "Steve Smith",
  "Virat Kohli",
  "Casper Ruud"
  ],
  correctAnswerIndex: 0,
  explanation: "Travis Head was awarded the Player of the Match in the ICC World Test Championship Final 2023.",
  ),

  Question(
  questionText: "What is the GDP growth rate projected by RBI for India in 2023-24?",
  options: [
  "6.5%",
  "7.2%",
  "5.1%",
  "8.5%"
  ],
  correctAnswerIndex: 0,
  explanation: "The GDP growth rate projected by RBI for India in 2023-24 is 6.5%.",
  ),
  Question(
  questionText: "Who has been awarded the ICC Men’s Player of the Month for May 2023?",
  options: [
  "Babar Azam",
  "Najmul Hossain Shanto",
  "Harry Tector",
  "Naruemol Chaiwai"
  ],
  correctAnswerIndex: 2,
  explanation: "Harry Tector has been awarded the ICC Men’s Player of the Month for May 2023.",
  ),

  Question(
  questionText: "Who is the ICC Women’s Player of the Month for May 2023?",
  options: [
  "Naruemol Chaiwai",
  "Thipatcha Putthawong",
  "Babar Azam",
  "Najmul Hossain Shanto"
  ],
  correctAnswerIndex: 1,
  explanation: "Thipatcha Putthawong from Thailand is the ICC Women’s Player of the Month for May 2023.",
  ),

  Question(
  questionText: "Which city is ranked as the second most unfriendly city in the world in the Community Spirit Index?",
  options: [
  "Mumbai",
  "Delhi",
  "Rio de Janeiro",
  "Accra"
  ],
  correctAnswerIndex: 0,
  explanation: "Mumbai is ranked as the second most unfriendly city in the world according to the Community Spirit Index.",
  ),


  Question(
  questionText: "Which structures from Telangana received the International Green Apple Awards for Beautiful Buildings?",
  options: [
  "Yadadri Temple",
  "Durgam Cheruvu Cable Bridge",
  "B R Ambedkar Telangana State Secretariat Building",
  "All of the above"
  ],
  correctAnswerIndex: 3,
  explanation: "Mozzam-Jahi Market, Durgam Cheruvu Cable Bridge, B R Ambedkar Telangana State Secretariat Building, Integrated Command Control Center of Telangana Police, and Yadadri Temple received the Green Apple Awards.",
  ),

  Question(
  questionText: "Which countries are named the top three most competitive economies in the Global Competitiveness Index 2023?",
  options: [
  "Denmark, Ireland, Switzerland",
  "USA, China, Japan",
  "India, Brazil, South Africa",
  "Australia, Canada, UK"
  ],
  correctAnswerIndex: 0,
  explanation: "Denmark, Ireland, and Switzerland are named the top three most competitive economies in the Global Competitiveness Index 2023.",
  ),

  Question(
  questionText: "In the Global Competitiveness Index 2023, what areas of improvement are highlighted for India?",
  options: [
  "Environmental Sustainability",
  "Government Efficiency, Exchange Rate Stability, Compensation Levels, and Pollution Control",
  "Infrastructure Development",
  "Educational Excellence"
  ],
  correctAnswerIndex: 1,
  explanation: "India demonstrated improvement in government efficiency, exchange rate stability, compensation levels, and pollution control.",
  ),

  Question(
  questionText: "Which Indian city has made substantial progress in the Global Startup Ecosystem Report 2023?",
  options: [
  "Delhi",
  "Mumbai",
  "Bangalore",
  "Pune"
  ],
  correctAnswerIndex: 2,
  explanation: "Bangalore has secured the 20th position in the Global Startup Ecosystem Report 2023, climbing two spots from the previous year.",
  ),

  Question(
  questionText: "What is the ranking of the University of Delhi in the QS World University Rankings 2024?",
  options: [
  "149",
  "197",
  "407",
  "500"
  ],
  correctAnswerIndex: 2,
  explanation: "The University of Delhi achieved a ranking of 407 in the QS World University Rankings 2024.",
  ),

  Question(
  questionText: "Which university retains its position at the top of the QS World University Rankings 2024?",
  options: [
  "University of Cambridge",
  "Harvard University",
  "MIT",
  "University of Oxford"
  ],
  correctAnswerIndex: 2,
  explanation: "MIT (Massachusetts Institute of Technology) retains its position at the top of the QS World University Rankings 2024.",
  ),
  Question(
  questionText: "Which country secured the third spot in the Global Competitiveness Index 2023?",
  options: [
  "Singapore",
  "United States",
  "Switzerland",
  "Germany"
  ],
  correctAnswerIndex: 2,
  explanation: "Switzerland maintained its position in the top three in the Global Competitiveness Index 2023.",
  ),

  Question(
  questionText: "Which Indian city has seen remarkable progress in the Global Startup Ecosystem Report 2023?",
  options: [
  "Delhi",
  "Mumbai",
  "Bangalore",
  "Pune"
  ],
  correctAnswerIndex: 1,
  explanation: "Mumbai has seen remarkable progress in the Global Startup Ecosystem Report 2023, climbing six places to secure the 33rd position.",
  ),

  Question(
  questionText: "Which Indian institution climbed an impressive 23 positions in the QS World University Rankings 2024?",
  options: [
  "IIT Bombay",
  "IIT Delhi",
  "IIT Madras",
  "IISc Bangalore"
  ],
  correctAnswerIndex: 0,
  explanation: "IIT Bombay climbed an impressive 23 positions in the QS World University Rankings 2024, securing the 149th rank globally.",
  ),

  Question(
  questionText: "Which region dominated the top 10 rankings in the Global Competitiveness Index 2023?",
  options: [
  "Asia",
  "North America",
  "Europe",
  "South America"
  ],
  correctAnswerIndex: 2,
  explanation: "European economies dominated the top 10 rankings in the Global Competitiveness Index 2023.",
  ),

  Question(
  questionText: "Which country is named the most competitive economy in the Global Competitiveness Index 2023?",
  options: [
  "Denmark",
  "Singapore",
  "Switzerland",
  "United States"
  ],
  correctAnswerIndex: 0,
  explanation: "Denmark retained its first-place position as the most competitive economy in the Global Competitiveness Index 2023.",
  ),

  Question(
  questionText: "Which Indian city is ranked as the second most unfriendly city in the world according to the Community Spirit Index?",
  options: [
  "Delhi",
  "Mumbai",
  "Bangalore",
  "Chennai"
  ],
  correctAnswerIndex: 1,
  explanation: "Mumbai is ranked as the second most unfriendly city in the world according to the Community Spirit Index.",
  ),

  Question(
  questionText: "Which Indian state received the International Green Apple Awards for Beautiful Buildings in the Urban and Real Estate Sector category?",
  options: [
  "Karnataka",
  "Maharashtra",
  "Telangana",
  "Andhra Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "Telangana received the International Green Apple Awards for Beautiful Buildings in the Urban and Real Estate Sector category.",
  ),

  Question(
  questionText: "Which city is ranked as the least friendly city in the world for non-natives according to the Community Spirit Index?",
  options: [
  "Accra",
  "Marrakech",
  "Delhi",
  "Mumbai"
  ],
  correctAnswerIndex: 0,
  explanation: "Accra in Ghana was ranked as the least friendly city in the world for non-natives according to the Community Spirit Index.",
  ),

  Question(
  questionText: "Which Asian country climbed seven places to reach the 17th rank globally in the Global Competitiveness Index 2023?",
  options: [
  "China",
  "India",
  "Saudi Arabia",
  "Japan"
  ],
  correctAnswerIndex: 2,
  explanation: "Saudi Arabia climbed seven places to reach the 17th rank globally in the Global Competitiveness Index 2023.",
  ),

  Question(
  questionText: "Which city has the most substantial year-on-year improvement in the Global Startup Ecosystem Report 2023?",
  options: [
  "Beijing",
  "Melbourne",
  "Shanghai",
  "Tokyo"
  ],
  correctAnswerIndex: 1,
  explanation: "Melbourne, Australia, has the most substantial year-on-year improvement in the Global Startup Ecosystem Report 2023, climbing six places to secure the 33rd position.",
  ),

  Question(
  questionText: "Which Asian country has the highest representation among the new entrants in the rankings?",
  options: [
  "Bangladesh",
  "Indonesia",
  "India",
  "Malaysia"
  ],
  correctAnswerIndex: 0,
  explanation: "Bangladesh has the highest representation among the new entrants in the rankings with 11 institutions.",
  ),

  Question(
  questionText: "Which two universities secured a place in the top 10 rankings among the new entrants?",
  options: [
  "National University of Singapore and University of California, Berkeley",
  "Hamad bin Khalifa University and University of Luxembourg",
  "Iceland and Luxembourg",
  "Nigeria and Ethiopia"
  ],
  correctAnswerIndex: 0,
  explanation: "The National University of Singapore and the University of California, Berkeley, secured a place in the top 10 rankings among the new entrants.",
  ),

  Question(
  questionText: "According to the RBI's Financial Stability Report, what is the GNPA ratio as of March 2023?",
  options: [
  "3.9%",
  "10.0%",
  "1.0%",
  "15.4%"
  ],
  correctAnswerIndex: 0,
  explanation: "The GNPA ratio reached a 10-year low of 3.9% in March 2023, according to the RBI's Financial Stability Report.",
  ),

  Question(
  questionText: "What is the primary driver of the robust deposit growth mentioned in the RBI's report?",
  options: [
  "Healthy accretions in term deposits by private-sector banks",
  "Rising interest rates",
  "Current account and savings account (CASA) deposits",
  "Global uncertainties"
  ],
  correctAnswerIndex: 0,
  explanation: "The primary driver of the robust deposit growth is healthy accretions in term deposits by private-sector banks.",
  ),

  Question(
  questionText: "What sector witnessed remarkable credit growth, according to the RBI's report?",
  options: [
  "Personal loans",
  "Corporate loans",
  "Government loans",
  "Infrastructure loans"
  ],
  correctAnswerIndex: 0,
  explanation: "The personal loan segment, including housing, credit card receivables, vehicle/auto loans, and education loans, witnessed broad-based growth of 22.2% year-on-year.",
  ),

  Question(
  questionText: "What does the RBI's Financial Stability Report highlight about large borrowers in the banking sector?",
  options: [
  "The share of large borrowers in gross advances has consistently decreased.",
  "The share of large borrowers in gross advances has increased.",
  "Large borrowers have become the primary contributors to credit growth.",
  "Large borrowers are the main contributors to non-performing assets."
  ],
  correctAnswerIndex: 0,
  explanation: "The share of large borrowers in the gross advances of scheduled commercial banks has consistently decreased.",
  ),

  Question(
  questionText: "What improvement in profit margin did banks experience during the period of 2022-23?",
  options: [
  "30 basis points improvement in net interest margin (NIM)",
  "20 basis points decline in net interest margin (NIM)",
  "40 basis points decline in net interest margin (NIM)",
  "No change in net interest margin (NIM)"
  ],
  correctAnswerIndex: 0,
  explanation: "Banks experienced a 30 basis points improvement in net interest margin (NIM) during the period of 2022-23.",
  ),

  Question(
  questionText: "What is the objective of RBI's new financial inclusion dashboard 'Antardrishti'?",
  options: [
  "To provide valuable insights and track the progress of financial inclusion",
  "To monitor monetary policy transmission",
  "To regulate forex trading",
  "To track credit growth of large borrowers"
  ],
  correctAnswerIndex: 0,
  explanation: "The objective of RBI's new financial inclusion dashboard 'Antardrishti' is to provide valuable insights and track the progress of financial inclusion.",
  ),

  Question(
  questionText: "Which bank has announced its intention to sell a portion of its ownership in the National Stock Exchange of India (NSE)?",
  options: [
  "Bank of Baroda",
  "State Bank of India",
  "Union Bank of India",
  "Canara Bank"
  ],
  correctAnswerIndex: 0,
  explanation: "Bank of Baroda has announced its intention to sell a portion of its ownership in the National Stock Exchange of India (NSE).",
  ),

  Question(
  questionText: "What does the Competition Commission of India (CCI) enforce and promote?",
  options: [
  "Competition laws and fair market practices",
  "Monetary policy and interest rates",
  "Foreign exchange regulations",
  "Credit growth and lending practices"
  ],
  correctAnswerIndex: 0,
  explanation: "The Competition Commission of India (CCI) is responsible for enforcing competition laws and promoting fair market practices in India.",
  ),

  Question(
  questionText: "What has LIC (Life Insurance Corporation of India) done regarding its stake in Tech Mahindra?",
  options: [
  "Increased its equity shareholding to 8.884%",
  "Sold its entire stake in Tech Mahindra",
  "Maintained its stake at 6.869%",
  "Invested in a new technology company"
  ],
  correctAnswerIndex: 0,
  explanation: "LIC has increased its equity shareholding in IT services provider Tech Mahindra from 6.869% to 8.884%.",
  ),

  Question(
  questionText: "What campaign has the Federal Bank initiated in Chennai to celebrate the local community?",
  options: [
  "'I am Adyar, Adyar is Me'",
  "'Local Stories, Local Bank'",
  "'Chennai Pride Campaign'",
  "'Celebrating Chennai Culture'"
  ],
  correctAnswerIndex: 0,
  explanation: "The Federal Bank has initiated the 'I am Adyar, Adyar is Me' campaign in Chennai to celebrate the rich culture and stories of the local community.",
  ),

  Question(
  questionText: "What significant step has the RBI taken to enhance the trade receivables discounting system (TReDS)?",
  options: [
  "Allowing insurance companies to participate as stakeholders",
  "Implementing stricter regulations on forex trading platforms",
  "Introducing a new currency",
  "Imposing penalties on unauthorized entities"
  ],
  correctAnswerIndex: 0,
  explanation: "The RBI has taken a significant step to enhance TReDS by allowing insurance companies to participate as stakeholders.",
  ),

  Question(
  questionText: "Which company has received regulatory approval from IRDAI to commence its life insurance business in India?",
  options: [
  "Go Digit Life Insurance Limited",
  "SBI Life Insurance Co",
  "LIC (Life Insurance Corporation of India)",
  "Tech Mahindra"
  ],
  correctAnswerIndex: 0,
  explanation: "Go Digit Life Insurance Limited, backed by Canada-based Fairfax Group, has received regulatory approval from IRDAI to commence its life insurance business in India.",
  ),

  Question(
  questionText: "What measures has the RBI introduced to strengthen 1,514 Urban Co-operative Banks (UCBs) in collaboration with the Central Government?",
  options: [
  "Four crucial measures",
  "Two regulatory measures",
  "Enhanced capital requirements",
  "Tax incentives"
  ],
  correctAnswerIndex: 0,
  explanation: "The RBI, in collaboration with the Central Government, has introduced four crucial measures to strengthen 1,514 Urban Co-operative Banks (UCBs).",
  ),

  Question(
  questionText: "What is the objective of the NBFC Growth Accelerator Program (NGAP) launched by GAME and SIDBI?",
  options: [
  "To ease funding woes of MSMEs",
  "To regulate the NBFC sector",
  "To promote international trade",
  "To enhance digital payments"
  ],
  correctAnswerIndex: 0,
  explanation: "The NBFC Growth Accelerator Program (NGAP) launched by GAME and SIDBI aims to ease the funding woes of MSMEs.",
  ),

  Question(
  questionText: "Which country has emerged as the global leader in digital payments for the year 2022?",
  options: [
  "India",
  "China",
  "United States",
  "United Kingdom"
  ],
  correctAnswerIndex: 0,
  explanation: "India has emerged as the global leader in digital payments for the year 2022, surpassing other nations in terms of both value and volume of transactions.",
  ),

  Question(
  questionText: "What mission has SIDBI announced in conjunction with NITI Aayog, World Bank, and Korean Economic Development Cooperation Fund (EDCF)?",
  options: [
  "EVOLVE (Electric Vehicle Operations and Lending for Vibrant Ecosystem)",
  "REVAMP (Revitalizing MSMEs and Value-Added Manufacturing Practices)",
  "GROWTH (Global Resources for Overcoming Woes and Harnessing Technologies)",
  "BOOST (Banking Options and Opportunities for Sustainable Transformation)"
  ],
  correctAnswerIndex: 0,
  explanation: "SIDBI announced the launch of mission EVOLVE (Electric Vehicle Operations and Lending for Vibrant Ecosystem) in conjunction with NITI Aayog, World Bank, and Korean-World Bank.",
  ),

  Question(
  questionText: "What significant step has the RBI taken to strengthen its presence in North East India?",
  options: [
  "Opened a sub-office in Kohima",
  "Closed existing branches",
  "Introduced new banking regulations",
  "Launched a financial literacy campaign"
  ],
  correctAnswerIndex: 0,
  explanation: "The RBI has taken a significant step towards strengthening its presence in North East India by opening a sub-office in Kohima, the capital of Nagaland.",
  ),

  Question(
  questionText: "What has Equitas Holdings Ltd done voluntarily regarding its NBFC license?",
  options: [
  "Surrendered its NBFC license to RBI",
  "Increased its capital adequacy",
  "Acquired a new NBFC license",
  "Applied for an international banking license"
  ],
  correctAnswerIndex: 0,
  explanation: "Equitas Holdings Ltd has voluntarily surrendered its NBFC license to the Reserve Bank of India (RBI).",
  ),

  Question(
  questionText: "What milestone has HDFC achieved in the banking industry?",
  options: [
  "Secured the fourth position in equity market capitalization",
  "Completed a merger with a Chinese bank",
  "Became the largest homegrown bank in India",
  "Achieved the highest annual revenue"
  ],
  correctAnswerIndex: 0,
  explanation: "HDFC has secured the fourth position in terms of equity market capitalization.",
  ),
  Question(
  questionText: "What is India's fiscal deficit target for the financial year 2022-23?",
  options: [
  "6.4% of GDP",
  "7.2% of GDP",
  "5.5% of GDP",
  "8% of GDP"
  ],
  correctAnswerIndex: 0,
  explanation: "The Union government has successfully achieved its fiscal deficit target of 6.4% of GDP.",
  ),

  Question(
  questionText: "What is the revised GDP growth forecast for India in FY24 by J.P. Morgan?",
  options: [
  "5.5%",
  "6.6%",
  "7%",
  "8%"
  ],
  correctAnswerIndex: 0,
  explanation: "J.P. Morgan has revised its projection for India’s annual growth rate, raising it to 5.5% for fiscal year 2024.",
  ),
  Question(
  questionText: "What is the GST revenue collection for May and how does it compare to the previous month?",
  options: [
  "Rs 1.57 lakh crore, down from Rs 1.87 lakh crore in April",
  "Rs 1.87 lakh crore, up from Rs 1.57 lakh crore in April",
  "Rs 1.4 lakh crore, up from Rs 1.2 lakh crore in April",
  "Rs 1.2 lakh crore, down from Rs 1.4 lakh crore in April"
  ],
  correctAnswerIndex: 0,
  explanation: "Despite a slight dip from April’s record-breaking collection of Rs 1.87 lakh crore, the GST revenue for May stood at Rs 1.57 lakh crore.",
  ),
  Question(
  questionText: "What is the objective of the RBI's '100 Days 100 Pays' campaign?",
  options: [
  "Settling unclaimed deposits in 100 days",
  "Launching 100 new banking services",
  "Promoting digital payments for 100 days",
  "Providing loans to 100 startups"
  ],
  correctAnswerIndex: 0,
  explanation: "The RBI has initiated the '100 Days 100 Pays' campaign to trace and settle the top 100 unclaimed deposits of every bank in every district within 100 days.",
  ),
  Question(
  questionText: "What is the World Bank's revised GDP growth forecast for India in FY24?",
  options: [
  "6.3%",
  "6.6%",
  "7%",
  "5.5%"
  ],
  correctAnswerIndex: 0,
  explanation: "The World Bank has reduced India’s GDP growth forecast for the fiscal year 2024 to 6.3%, down from the previous projection of 6.6% made in January.",
  ),
  Question(
  questionText: "What is Moody's GDP growth projection for India in the June quarter and what fiscal risks does it highlight?",
  options: [
  "6-6.3%, fiscal slippage due to weaker-than-expected government revenues",
  "8%, significant government expenditure",
  "5.5%, high inflation rates",
  "7%, robust economic growth"
  ],
  correctAnswerIndex: 0,
  explanation: "Moody’s Investors Service has forecasted a growth rate of 6-6.3% for India’s GDP in the June quarter and remains cautious about fiscal slippage due to weaker-than-expected government revenues.",
  ),
  Question(
  questionText: "How much tax devolution has the Central government provided to state governments in the third instalment?",
  options: [
  "Rs 1,18,280 crore",
  "Rs 2,000 crore",
  "Rs 1 lakh crore",
  "Rs 3,000 crore"
  ],
  correctAnswerIndex: 0,
  explanation: "The Central government provided the state governments with the third instalment of tax devolution worth a total of Rs 1,18,280 crore.",
  ),
  Question(
  questionText: "What is the retail inflation rate in India for May 2023?",
  options: [
  "4.25%",
  "5%",
  "3.5%",
  "6%"
  ],
  correctAnswerIndex: 0,
  explanation: "India’s retail inflation has decreased to a 25-month low of 4.25% in May.",
  ),

  Question(
  questionText: "What is the overall export figure for India in May 2023?",
  options: [
  "US\$ 60.29 billion",
  "US\$ 1.87 trillion",
  "US\$ 40 billion",
  "US\$ 80 billion"
  ],
  correctAnswerIndex: 0,
  explanation: "India’s overall exports in May 2023 stood at US\$ 60.29 billion, comprising both merchandise and services.",
  ),
  Question(
  questionText: "Why has the Securities and Exchange Board of India (Sebi) taken action against six entities?",
  options: [
  "Violating insider trading norms in the case of Shilpi Cable Technologies",
  "Non-payment of taxes",
  "Failure to comply with environmental regulations",
  "Manipulating stock prices"
  ],
  correctAnswerIndex: 0,
  explanation: "Sebi has taken action against six entities for violating insider trading norms in the case of Shilpi Cable Technologies.",
  ),
  Question(
  questionText: "What is Fitch's revised GDP forecast for India in FY24?",
  options: [
  "6.3%",
  "6.6%",
  "7%",
  "5.5%"
  ],
  correctAnswerIndex: 0,
  explanation: "Ratings agency Fitch has revised its GDP forecast for India, predicting a growth rate of 6.3% for the financial year 2023-24 (FY24).",
  ),
  Question(
  questionText: "What is S&P Global Ratings' projection for India's GDP growth in FY24?",
  options: [
  "6%",
  "6.3%",
  "7%",
  "5.5%"
  ],
  correctAnswerIndex: 0,
  explanation: "S&P Global Ratings has retained India’s GDP growth projection at six percent for the fiscal year 2023-2024.",
  ),
  Question(
  questionText: "What status has GAIL India Limited achieved from the Central Board of Indirect Taxes and Customs?",
  options: [
  "Authorised Economic Operator (AEO) T3",
  "National Trusted Exporter (NTE)",
  "Preferred Trade Partner (PTP)",
  "Global Export Facilitator (GEF)"
  ],
  correctAnswerIndex: 0,
  explanation: "GAIL India Limited has been bestowed with the prestigious Authorised Economic Operator (AEO) T3 status by the Central Board of Indirect Taxes and Customs, Ministry of Finance.",
  ),
  Question(
  questionText: "How does the Indian government plan to sell a stake in Coal India Ltd?",
  options: [
  "Through the offer for sale (OFS) route",
  "Through private negotiations",
  "Through a public auction",
  "By transferring it to a sovereign wealth fund"
  ],
  correctAnswerIndex: 0,
  explanation: "The Indian government has announced its intention to sell up to a 3% stake in Coal India Ltd through the offer for sale (OFS) route.",
  ),
  Question(
  questionText: "What new payment solution has Razorpay introduced for the Unified Payments Interface (UPI) network?",
  options: [
  "'Turbo UPI'",
  "'Instant UPI'",
  "'Swift UPI'",
  "'Quick UPI'"
  ],
  correctAnswerIndex: 0,
  explanation: "Razorpay has introduced 'Turbo UPI,' a revolutionary one-step payment solution for the Unified Payments Interface (UPI) network.",
  ),

  Question(
  questionText: "According to the fDi Markets Report, which city has emerged as the leading destination for foreign direct investment (FDI) from India in 2022?",
  options: [
  "Dubai",
  "Singapore",
  "London",
  "New York"
  ],
  correctAnswerIndex: 0,
  explanation: "According to the latest fDi Markets Report and the Dubai FDI Monitor, Dubai has secured its position as the leading destination for foreign direct investment (FDI) from India in the calendar year 2022.",
  ),
  Question(
  questionText: "What is the investment amount in the deal between Tata Group and Gujarat for an electric vehicle (EV) battery plant?",
  options: [
  "Approximately \$1.58 billion",
  "Approximately \$500 million",
  "Approximately \$2 billion",
  "Approximately \$1 trillion"
  ],
  correctAnswerIndex: 0,
  explanation: "India’s Tata Group has entered into an outline deal to construct a lithium-ion cell factory in Gujarat, with an investment of approximately 130 billion rupees (\$1.58 billion).",
  ),


  Question(
  questionText: "What caused New Zealand to slip into a recession?",
  options: [
  "A decline in GDP by 0.1% in the first quarter.",
  "A rise in GDP by 0.1% in the first quarter.",
  "A decline in GDP by 0.7% in the first quarter.",
  "An increase in GDP by 0.7% in the first quarter."
  ],
  correctAnswerIndex: 0,
  explanation: "New Zealand slipped into a recession due to a 0.1% decline in GDP in the first quarter."
  ),

  Question(
  questionText: "When was the Iran nuclear agreement, JCPOA, established?",
  options: [
  "July 2015",
  "July 2010",
  "June 2023",
  "August 2018"
  ],
  correctAnswerIndex: 0,
  explanation: "The Iran nuclear agreement, JCPOA, was established in July 2015."
  ),

  Question(
  questionText: "Who has been appointed as the first female British envoy to Pakistan?",
  options: [
  "Jane Marriott",
  "Nusrat Chowdhury",
  "Kyriakos Mitsotakis",
  "Petteri Orpo"
  ],
  correctAnswerIndex: 0,
  explanation: "Jane Marriott has been appointed as the first female British envoy to Pakistan."
  ),

  Question(
  questionText: "When is the United States expected to rejoin UNESCO?",
  options: [
  "July",
  "September",
  "November",
  "January"
  ],
  correctAnswerIndex: 0,
  explanation: "The United States is expected to rejoin UNESCO in July."
  ),


  Question(
  questionText: "What significant change has Japan made to its age of consent?",
  options: [
  "Raised from 13 to 16",
  "Lowered from 16 to 13",
  "Remained unchanged at 13",
  "Raised from 16 to 18"
  ],
  correctAnswerIndex: 0,
  explanation: "Japan has raised its age of consent from 13 to 16, a change after more than a century."
  ),

  Question(
  questionText: "In which country did IREDA participate in the Intersolar Europe 2023 exhibition?",
  options: [
  "Germany",
  "France",
  "Italy",
  "Spain"
  ],
  correctAnswerIndex: 0,
  explanation: "IREDA participated in the Intersolar Europe 2023 exhibition held in Munich, Germany."
  ),

  Question(
  questionText: "Why did Bangladesh allow its currency, the taka, to float freely for the first time?",
  options: [
  "To access IMF funds",
  "To control inflation",
  "To boost exports",
  "To stabilize the economy"
  ],
  correctAnswerIndex: 0,
  explanation: "Bangladesh allowed its currency to float freely to access funds from the International Monetary Fund (IMF)."
  ),

  Question(
  questionText: "Who has been confirmed as the first Muslim woman federal judge in US history?",
  options: [
  "Nusrat Chowdhury",
  "Jane Marriott",
  "Kyriakos Mitsotakis",
  "Petteri Orpo"
  ],
  correctAnswerIndex: 0,
  explanation: "Nusrat Chowdhury has been confirmed as the first Muslim woman federal judge in US history."
  ),

  Question(
  questionText: "What has been approved by UN member nations for the first time to safeguard high seas marine life?",
  options: [
  "A treaty",
  "A resolution",
  "A convention",
  "An agreement"
  ],
  correctAnswerIndex: 0,
  explanation: "UN member nations have approved the first-ever treaty to safeguard high seas marine life."
  ),
  Question(
  questionText: "What is the reason behind Pakistan's halt in the import of essential food and beverages?",
  options: [
  "Shortage of dollars",
  "Trade disputes",
  "Economic sanctions",
  "Natural disasters"
  ],
  correctAnswerIndex: 0,
  explanation: "Pakistan is facing a severe economic crisis with a shortage of dollars, leading to a halt in food imports."
  ),

  Question(
  questionText: "Which Central European country recently legalized same-sex marriage?",
  options: [
  "Estonia",
  "Hungary",
  "Poland",
  "Czech Republic"
  ],
  correctAnswerIndex: 0,
  explanation: "Estonia's parliament passed a law legalizing same-sex marriage, a first for Central Europe."
  ),

  Question(
  questionText: "Who has been elected as Finland's new Prime Minister?",
  options: [
  "Petteri Orpo",
  "Kyriakos Mitsotakis",
  "Narendra Modi",
  "Amit Shah"
  ],
  correctAnswerIndex: 0,
  explanation: "Petteri Orpo, the leader of the conservative party in Finland, has been elected as the country's prime minister."
  ),

  Question(
  questionText: "Which country has created history as the first foreign government to promote itself through Yoga?",
  options: [
  "Oman",
  "Saudi Arabia",
  "Qatar",
  "UAE"
  ],
  correctAnswerIndex: 0,
  explanation: "Oman has created history as the first foreign government to promote itself through Yoga."
  ),

  Question(
  questionText: "Why has Pakistan implemented a ban on the celebration of Holi and other Hindu festivals?",
  options: [
  "To protect Islamic identity",
  "To promote religious harmony",
  "To prevent public gatherings",
  "To comply with international pressure"
  ],
  correctAnswerIndex: 0,
  explanation: "Pakistan has implemented a ban on the celebration of Holi and other Hindu festivals to protect the Islamic identity of the nation."
  ),

  Question(
  questionText: "When did the UK's net debt surpass 100% of its GDP?",
  options: [
  "May",
  "June",
  "July",
  "August"
  ],
  correctAnswerIndex: 0,
  explanation: "The United Kingdom's net debt surpassed 100% of its GDP in May, reaching £2.567 trillion."
  ),

  Question(
  questionText: "What significant agreement has China signed with Pakistan worth USD 4.8 billion?",
  options: [
  "Establishment of a nuclear power plant",
  "Trade agreement",
  "Military alliance",
  "Infrastructure development"
  ],
  correctAnswerIndex: 0,
  explanation: "China and Pakistan have signed a significant agreement worth USD 4.8 billion to establish a 1,200-megawatt nuclear power plant."
  ),

  Question(
  questionText: "Who has been sworn in as the Prime Minister of Greece for a second term?",
  options: [
  "Kyriakos Mitsotakis",
  "Petteri Orpo",
  "Narendra Modi",
  "Amit Shah"
  ],
  correctAnswerIndex: 0,
  explanation: "Kyriakos Mitsotakis, leader of the centre-right New Democracy party, has been sworn in as the prime minister of Greece for a second term."
  ),

  Question(
  questionText: "What proactive strategy has Canada launched to address its shortage of skilled workers?",
  options: [
  "Digital nomad strategy",
  "Immigration reform",
  "Education subsidy",
  "Job training program"
  ],
  correctAnswerIndex: 0,
  explanation: "Canada has launched a digital nomad strategy to address its shortage of skilled workers, especially in the tech industry."
  ),

  Question(
  questionText: "Why was India removed from the UN Secretary-General's annual report on the impact of armed conflict on children?",
  options: [
  "Improved measures to protect children",
  "Decrease in child population",
  "Withdrawal of Indian forces from conflict zones",
  "Political pressure from India"
  ],
  correctAnswerIndex: 0,
  explanation: "India was removed from the UN Secretary-General's report due to improved measures to protect children."
  ),
  Question(
  questionText: "When does the field assessment of Swachcha Survekshan 2023 begin?",
  options: [
  "1st July 2023",
  "1st June 2023",
  "1st August 2023",
  "1st September 2023"
  ],
  correctAnswerIndex: 0,
  explanation: "The field assessment of Swachcha Survekshan 2023 begins on 1st July 2023.",
  ),

  Question(
  questionText: "Which ministry is launching the Swachcha Survekshan 2023?",
  options: [
  "Ministry of Health and Family Welfare",
  "Ministry of Housing and Urban Assessment",
  "Ministry of Fisheries, Animal Husbandry, and Dairying",
  "Ministry of Environment, Forest and Climate Change"
  ],
  correctAnswerIndex: 1,
  explanation: "The Swachcha Survekshan 2023 is launched by the Ministry of Housing and Urban Assessment.",
  ),

  Question(
  questionText: "What is the objective of the National Research Foundation (NRF) Bill, 2023?",
  options: [
  "Promoting agriculture",
  "Strengthening research and development",
  "Enhancing fish farming",
  "Digitizing the dairy sector"
  ],
  correctAnswerIndex: 1,
  explanation: "The NRF Bill, 2023 aims to strengthen research and development in India.",
  ),

  Question(
  questionText: "Which state recently launched the Namo Shetkari Mahasanman Yojana?",
  options: [
  "Telangana",
  "Karnataka",
  "Maharashtra",
  "Madhya Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "The Namo Shetkari Mahasanman Yojana was launched by the Maharashtra government.",
  ),

  Question(
  questionText: "What is the significance of Telangana Formation Day, observed on June 2nd?",
  options: [
  "Observing Independence Day",
  "Commemorating the formation of Telangana",
  "Celebrating a religious festival",
  "Honoring a historical figure"
  ],
  correctAnswerIndex: 1,
  explanation: "Telangana Formation Day marks the commemoration of the formation of the state of Telangana.",
  ),

  Question(
  questionText: "Why did the Meghalaya government form an expert committee?",
  options: [
  "To review the reservation policy",
  "To address climate change",
  "To improve healthcare",
  "To promote tourism"
  ],
  correctAnswerIndex: 0,
  explanation: "The expert committee in Meghalaya was formed to review the state's reservation policy.",
  ),

  Question(
  questionText: "What is the name of the gender-inclusive tourism policy approved by the Maharashtra cabinet?",
  options: [
  "Arogya",
  "Aai",
  "Awaas",
  "Annapurna"
  ],
  correctAnswerIndex: 1,
  explanation: "The Maharashtra cabinet approved the gender-inclusive tourism policy called 'Aai.'",
  ),

  Question(
  questionText: "Why was Ahmednagar district renamed Ahilyadevi Nagar?",
  options: [
  "To honor a freedom fighter",
  "To empower the Dhangar community",
  "To promote tourism",
  "To commemorate a historical event"
  ],
  correctAnswerIndex: 1,
  explanation: "Ahmednagar district was renamed Ahilyadevi Nagar to empower the Dhangar community.",
  ),

  Question(
  questionText: "What project is Karnataka urging Tamil Nadu's support for, related to the Cauvery River?",
  options: [
  "Swachcha Survekshan",
  "Namo Shetkari Mahasanman Yojana",
  "Mekedatu Project",
  "KFON internet connectivity"
  ],
  correctAnswerIndex: 2,
  explanation: "Karnataka is urging Tamil Nadu's support for the Mekedatu Project across the Cauvery River.",
  ),

  Question(
  questionText: "What did the Kerala government officially launch on June 5th?",
  options: [
  "Namo Shetkari Mahasanman Yojana",
  "Operation Conviction",
  "Karnataka's Anna Bhagya Scheme",
  "KFON internet connectivity"
  ],
  correctAnswerIndex: 3,
  explanation: "The Kerala government officially launched the Kerala Fibre Optical Network (KFON) on June 5th.",
  ),

  Question(
  questionText: "What is the name of the free bus travel scheme announced by the Karnataka government for women?",
  options: [
  "Operation Conviction",
  "Shakti",
  "Mukhyamantri Ladli Behna Scheme",
  "Anna Bhagya Scheme"
  ],
  correctAnswerIndex: 1,
  explanation: "The Karnataka government announced the free bus travel scheme 'Shakti' for women.",
  ),

  Question(
  questionText: "Which scheme did Madhya Pradesh Chief Minister Shivraj Singh Chouhan launch?",
  options: [
  "Operation Conviction",
  "Namo Shetkari Mahasanman Yojana",
  "Mukhyamantri Ladli Behna Scheme",
  "Anna Bhagya Scheme"
  ],
  correctAnswerIndex: 2,
  explanation: "MP CM Shivraj Singh Chouhan launched the 'Mukhyamantri Ladli Behna Scheme.'",
  ),

  Question(
  questionText: "What is the annual yatra to Pandharpur in Maharashtra known as?",
  options: [
  "Palkhi festival",
  "Raja festival",
  "Ladli Behna Yojana",
  "Mekedatu Project"
  ],
  correctAnswerIndex: 0,
  explanation: "The annual yatra to Pandharpur in Maharashtra is known as the Palkhi festival.",
  ),

  Question(
  questionText: "Which agricultural festival is celebrated in Odisha for three days?",
  options: [
  "Palkhi festival",
  "Raja festival",
  "Ladli Behna Yojana",
  "Mekedatu Project"
  ],
  correctAnswerIndex: 1,
  explanation: "Raja or Raja Parba is a three-day-long agricultural festival celebrated in Odisha.",
  ),

  Question(
  questionText: "What is the name of the app launched by the Ministry of Fisheries, Animal Husbandry, and Dairying for fish disease reporting?",
  options: [
  "Namo Shetkari Mahasanman Yojana",
  "Report Fish Disease",
  "Arunpol App",
  "Aai"
  ],
  correctAnswerIndex: 1,
  explanation: "The Ministry launched the android-based app 'Report Fish Disease' for fish disease reporting.",
  ),

  Question(
  questionText: "What was the reason behind the renaming of Ahmednagar district in Maharashtra?",
  options: [
  "To honor a freedom fighter",
  "To empower the Dhangar community",
  "To promote tourism",
  "To commemorate a historical event"
  ],
  correctAnswerIndex: 1,
  explanation: "Ahmednagar district was renamed Ahilyadevi Nagar to empower the Dhangar community.",
  ),

  Question(
  questionText: "Which state recently launched the 'Arunpol App' for the safety and security of its citizens?",
  options: [
  "Karnataka",
  "Maharashtra",
  "Arunachal Pradesh",
  "Uttar Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "Arunachal Pradesh launched the 'Arunpol App' for the safety and security of its citizens.",
  ),

  Question(
  questionText: "What decision did the Chief Minister of Uttar Pradesh, Yogi Adityanath, make in June 2023 regarding prisons?",
  options: [
  "Launching a free bus travel scheme",
  "Renaming a district",
  "Reforming the prison system",
  "Initiating a cleanliness survey"
  ],
  correctAnswerIndex: 2,
  explanation: "CM Yogi Adityanath made a decision to reform the prison system in Uttar Pradesh.",
  ),

  Question(
  questionText: "Which scheme in Karnataka guarantees 10 kg of rice to Below Poverty Line (BPL) cardholders?",
  options: [
  "Anna Bhagya Scheme",
  "Shakti",
  "Mukhyamantri Ladli Behna Scheme",
  "PM-KUSUM Scheme"
  ],
  correctAnswerIndex: 0,
  explanation: "The 'Anna Bhagya' scheme in Karnataka guarantees 10 kg of rice to BPL cardholders.",
  ),

  Question(
  questionText: "In collaboration with which organization did Himachal Pradesh announce the establishment of a milk processing unit?",
  options: [
  "National Dairy Development Board (NDDB)",
  "European Union (EU)",
  "Kreditanstalt für Wiederaufbau (KfW)",
  "French Development Agency (AFD)"
  ],
  correctAnswerIndex: 0,
  explanation: "Himachal Pradesh collaborated with the National Dairy Development Board (NDDB) for the milk processing unit.",
  ),
  Question(
  questionText: "Which Indian state recently achieved NABH accreditation, a significant milestone in healthcare quality?",
  options: [
  "Kerala",
  "Gujarat",
  "Maharashtra",
  "Nagaland"
  ],
  correctAnswerIndex: 3,
  explanation: "AIIMS Nagpur in the state of Nagaland achieved NABH accreditation, setting a benchmark in healthcare quality.",
  ),

  Question(
  questionText: "Who authored the book 'Master Residential Real Estate'?",
  options: [
  "Shashi Tharoor",
  "Ashwinder Singh",
  "Abhay K",
  "Roopa Pai"
  ],
  correctAnswerIndex: 1,
  explanation: "The book 'Master Residential Real Estate' was authored by Ashwinder Singh, a well-known real estate expert in India.",
  ),

  Question(
  questionText: "Which city in Gujarat, India, recently set a Guinness World Record for the largest gathering on Yoga Day?",
  options: [
  "Ahmedabad",
  "Surat",
  "Vadodara",
  "Rajkot"
  ],
  correctAnswerIndex: 1,
  explanation: "Surat, a city in Gujarat, set a Guinness World Record for the largest gathering of people participating in a yoga session at a single location.",
  ),

  Question(
  questionText: "Who is the acclaimed Indian diplomat who authored the book 'A Life Well Spent – Four Decades in the Indian Foreign Service'?",
  options: [
  "Shashi Tharoor",
  "Abhay K",
  "Satish Chandra",
  "AK Bhattacharya"
  ],
  correctAnswerIndex: 2,
  explanation: "Ambassador Satish Chandra, an Indian diplomat, authored the book 'A Life Well Spent – Four Decades in the Indian Foreign Service.'",
  ),

  Question(
  questionText: "Which international agreement did Prime Minister Narendra Modi sign during his state visit to the United States, signaling India's commitment to space exploration?",
  options: [
  "Paris Agreement",
  "Moon Agreement",
  "Artemis Accords",
  "Kyoto Protocol"
  ],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi signed the Artemis Accords during his state visit to the United States, marking India’s commitment to global space cooperation and lunar exploration.",
  ),

  Question(
  questionText: "Who is the author of the book 'Ringside' released by Shashi Tharoor?",
  options: [
  "Shashi Tharoor",
  "Vijay Darda",
  "KK Gopalakrishnan",
  "BK Shivani"
  ],
  correctAnswerIndex: 1,
  explanation: "Shashi Tharoor released the book 'Ringside' written by Lokmat Media Group Editorial Board Chairman and former MP Dr. Vijay Darda.",
  ),

  Question(
  questionText: "Which startup from Kerala was chosen by the UN for the 'Accelerator Programme' hosted by the UN’s Food and Agriculture Organisation (FAO)?",
  options: [
  "Farmers Fresh Zone",
  "BharatPe",
  "World Vapers’ Alliance",
  "Google"
  ],
  correctAnswerIndex: 0,
  explanation: "Farmers Fresh Zone (FarmersFZ), a startup located in Kerala, was chosen for the United Nations’ 'Accelerator Programme' hosted by the UN’s Food and Agriculture Organisation (FAO).",
  ),

  Question(
  questionText: "Which Indian minister flagged off the maiden International Cruise Vessel 'MV Empress' from Chennai to Sri Lanka?",
  options: [
  "Sarbananda Sonowal",
  "Manoj Sinha",
  "Asaduzzaman Khan",
  "Narendra Modi"
  ],
  correctAnswerIndex: 0,
  explanation: "Union Minister of Ports, Shipping and Waterways, Sarbananda Sonowal, flagged off the maiden International Cruise Vessel “MV Empress” from Chennai to Sri Lanka.",
  ),

  Question(
  questionText: "Who is the renowned Tollywood choreographer who recently passed away?",
  options: [
  "S. Rama Rao",
  "Rakesh Master",
  "Havildar Alby D’Cruz",
  "Daniel Ellsberg"
  ],
  correctAnswerIndex: 1,
  explanation: "Renowned Tollywood choreographer S. Rama Rao, widely known as Rakesh Master, recently passed away.",
  ),

  Question(
  questionText: "What event did Surat, a city in Gujarat, witness on International Yoga Day, breaking a Guinness World Record?",
  options: [
  "Largest vegetarian feast",
  "Largest gathering on Yoga Day",
  "Longest human chain",
  "Tallest sandcastle"
  ],
  correctAnswerIndex: 1,
  explanation: "Surat, a city in Gujarat, broke the Guinness World Record for the largest gathering of people participating in a yoga session at a single location on International Yoga Day.",
  ),
  Question(
  questionText: "Who is the author of the graphic novel 'Ajay to Yogi Adityanath'?",
  options: [
  "Shashi Tharoor",
  "Abhay K",
  "Shantanu Gupta",
  "Ashwinder Singh"
  ],
  correctAnswerIndex: 2,
  explanation: "Noted Author, Shantanu Gupta, who has written two bestseller titles on Uttar Pradesh Chief Minister Yogi Adityanath, launched his new graphic novel – 'Ajay to Yogi Adityanath' for the young readers.",
  ),

  Question(
  questionText: "Which cyclone made landfall in Gujarat on June 15, 2023?",
  options: [
  "Cyclone Amphan",
  "Cyclone Biparjoy",
  "Cyclone Nisarga",
  "Cyclone Yaas"
  ],
  correctAnswerIndex: 1,
  explanation: "A cyclone named Biparjoy made landfall in Gujarat, India, on June 15, 2023, with maximum sustained winds of 167 kilometers per hour.",
  ),

  Question(
  questionText: "What did Prime Minister Narendra Modi collaborate on with Grammy winner Falu?",
  options: [
  "Environmental conservation",
  "Space exploration",
  "Promoting millet benefits",
  "Youth empowerment"
  ],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi collaborated with Falu, a Grammy Award-winning singer, for a special song aimed at promoting the benefits of millet and its potential to address global hunger.",
  ),

  Question(
  questionText: "Which ancient human species engaged in burial practices and created engravings in southern Africa around 300,000 years ago?",
  options: [
  "Homo sapiens",
  "Neanderthals",
  "Homo naledi",
  "Australopithecus"
  ],
  correctAnswerIndex: 2,
  explanation: "New research indicates that Homo naledi, an ancient human species, engaged in burial practices and created engravings in southern Africa around 300,000 years ago.",
  ),

  Question(
  questionText: "Which Indian minister served as the Chief Guest at the inauguration of the 1971 Liberation War Gallery in Dhaka?",
  options: [
  "Narendra Modi",
  "Sarbananda Sonowal",
  "Manoj Sinha",
  "Asaduzzaman Khan"
  ],
  correctAnswerIndex: 3,
  explanation: "The 1971 Liberation War Gallery was inaugurated at the Indian Cultural Centre in Dhaka, with the Home Minister of Bangladesh, Asaduzzaman Khan, serving as the Chief Guest.",
  ),

  Question(
  questionText: "Who is the author of the book 'Nalanda' that delves into the history of the ancient seat of learning in Bihar?",
  options: [
  "Shashi Tharoor",
  "Abhay K",
  "Ashwinder Singh",
  "AK Bhattacharya"
  ],
  correctAnswerIndex: 1,
  explanation: "Poet-diplomat Abhay K’s book ‘Nalanda’ delves into the history of the ancient seat of learning in Bihar.",
  ),

  Question(
  questionText: "Which Indian city recently witnessed the beginning of the 146th Jagannath Puri Rath Yatra?",
  options: [
  "Varanasi",
  "Bhubaneswar",
  "Ahmedabad",
  "Gujarat"
  ],
  correctAnswerIndex: 2,
  explanation: "The 146th Rath Yatra of Lord Jagannath commenced in the city of Ahmedabad, Gujarat.",
  ),

  Question(
  questionText: "What significant event does June 17, 2013, commemorate concerning Uttarakhand?",
  options: [
  "Independence Day",
  "Kedarnath Floods",
  "Republic Day",
  "International Yoga Day"
  ],
  correctAnswerIndex: 1,
  explanation: "In the early hours of June 17, 2013, devastating floods caused by the Chorabari lake‘s overflowing banks in Uttarakhand resulted in significant destruction.",
  ),

  Question(
  questionText: "Which renowned actor and director, known for grand open-air stage productions, recently passed away?",
  options: [
  "Aamir Raza Hussain",
  "S. Rama Rao",
  "Daniel Ellsberg",
  "Cormac McCarthy"
  ],
  correctAnswerIndex: 0,
  explanation: "Aamir Raza Husain, a renowned theater actor and director famous for grand open-air stage productions, passed away at the age of 66.",
  ),

  Question(
  questionText: "Which international organization is AIIMS Nagpur set to upgrade its membership status with?",
  options: [
  "UNESCO",
  "ISSA",
  "WHO",
  "ICAO"
  ],
  correctAnswerIndex: 1,
  explanation: "The Employees’ Provident Fund Organisation (EPFO) is set to upgrade its membership status with the International Social Security Association (ISSA) from associate member to affiliate member.",
  ),
  Question(
  questionText: "Who is the CEO of the National Payments Corporation of India (NPCI)?",
  options: [
  "Dilip Asbe",
  "S N Subrahmanyan",
  "Karan Adani",
  "Julie Sweet"
  ],
  correctAnswerIndex: 0,
  explanation: "Dilip Asbe is the CEO of the National Payments Corporation of India (NPCI)."
  ),

  Question(
  questionText: "When was Larsen & Toubro (L&T) founded?",
  options: [
  "7 February 1946",
  "20 July 1908",
  "21 March 2006",
  "1 April 1976"
  ],
  correctAnswerIndex: 0,
  explanation: "Larsen & Toubro (L&T) was founded on 7 February 1946 in Mumbai."
  ),

  Question(
  questionText: "Who are the founders of Twitter?",
  options: [
  "Jack Dorsey, Evan Williams, Biz Stone, Noah Glass",
  "Steve Jobs, Steve Wozniak, Ronald Wayne",
  "Pierre de Coubertin, D. Bikélas",
  "Thomas Bach, Christophe De Kepper"
  ],
  correctAnswerIndex: 0,
  explanation: "Twitter was founded by Jack Dorsey, Evan Williams, Biz Stone, and Noah Glass."
  ),

  Question(
  questionText: "Where is the headquarters of the All India Football Federation (AIFF)?",
  options: [
  "Mumbai",
  "New Delhi",
  "Kolkata",
  "Hangzhou, China"
  ],
  correctAnswerIndex: 1,
  explanation: "The AIFF has its headquarters at the Football House in Dwarka, New Delhi."
  ),



  Question(
  questionText: "Where is the headquarters of the World Health Organization (WHO)?",
  options: [
  "New York, USA",
  "Geneva, Switzerland",
  "Montreal, Canada",
  "Vienna, Austria"
  ],
  correctAnswerIndex: 1,
  explanation: "The WHO Headquarters is in Geneva, Switzerland."
  ),

  Question(
  questionText: "Who is the Defence Minister of India?",
  options: [
  "Mariya Didi",
  "Rajnath Singh",
  "Air Chief Marshal VR Chaudhari",
  "General Manoj Pande"
  ],
  correctAnswerIndex: 1,
  explanation: "Rajnath Singh is the Defence Minister of India."
  ),

  Question(
  questionText: "Who is the Chief of the Army Staff (COAS) of India?",
  options: [
  "General Manoj Pande",
  "Air Chief Marshal VR Chaudhari",
  "Admiral R Hari Kumar",
  "Sebastian Coe"
  ],
  correctAnswerIndex: 0,
  explanation: "General Manoj Pande is the Chief of the Army Staff (COAS) of India."
  ),

  Question(
  questionText: "Who is the CEO of Accenture?",
  options: [
  "S N Subrahmanyan",
  "Karan Adani",
  "Julie Sweet",
  "Gilbert Houngbo"
  ],
  correctAnswerIndex: 2,
  explanation: "Julie Sweet is the CEO of Accenture."
  ),

  Question(
  questionText: "Where is the headquarters of Coal India?",
  options: [
  "Kolkata",
  "Mumbai",
  "New Delhi",
  "Hangzhou, China"
  ],
  correctAnswerIndex: 0,
  explanation: "The headquarters of Coal India is in Kolkata."
  ),
  Question(
  questionText: "Who is the Chairman of the National Dairy Development Board?",
  options: [
  "S N Subrahmanyan",
  "Karan Adani",
  "Meenesh Shah",
  "Julie Sweet"
  ],
  correctAnswerIndex: 2,
  explanation: "Meenesh Shah is the Chairman of the National Dairy Development Board."
  ),

  Question(
  questionText: "Where is the headquarters of Alibaba?",
  options: [
  "Hangzhou, China",
  "Mumbai",
  "New Delhi",
  "Cupertino, California, United States"
  ],
  correctAnswerIndex: 0,
  explanation: "Alibaba's headquarters is in Hangzhou, China."
  ),

  Question(
  questionText: "When was Railways founded?",
  options: [
  "7 April 1948",
  "18 February 1905",
  "21 March 2006",
  "15th August 1969"
  ],
  correctAnswerIndex: 1,
  explanation: "Railways was founded on 18 February 1905."
  ),

  Question(
  questionText: "Who are the founders of Apple?",
  options: [
  "Jack Dorsey, Evan Williams, Biz Stone, Noah Glass",
  "Steve Jobs, Steve Wozniak, Ronald Wayne",
  "Pierre de Coubertin, D. Bikélas",
  "Thomas Bach, Christophe De Kepper"
  ],
  correctAnswerIndex: 1,
  explanation: "Apple was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne."
  ),

  Question(
  questionText: "Where is the headquarters of the International Olympic Committee?",
  options: [
  "Lausanne, Switzerland",
  "Geneva, Switzerland",
  "Montreal, Canada",
  "Vienna, Austria"
  ],
  correctAnswerIndex: 0,
  explanation: "The International Olympic Committee has its headquarters in Lausanne, Switzerland."
  ),

  Question(
  questionText: "Who is the Chief Minister of Himachal Pradesh?",
  options: [
  "Rajnath Singh",
  "Mariya Didi",
  "Sukhvinder Singh Sukhu",
  "B. D. Mishra"
  ],
  correctAnswerIndex: 2,
  explanation: "Sukhvinder Singh Sukhu is the current Chief Minister of Himachal Pradesh."
  ),

  Question(
  questionText: "Who is the Chairman of GAIL?",
  options: [
  "S N Subrahmanyan",
  "Karan Adani",
  "Sandeep Kumar Gupta",
  "Siddhartha Mohanty"
  ],
  correctAnswerIndex: 2,
  explanation: "Sandeep Kumar Gupta is the Chairman and Managing Director of GAIL."
  ),

  Question(
  questionText: "Who is the Chairman of the Central Board of Indirect Taxes & Customs?",
  options: [
  "S N Subrahmanyan",
  "Karan Adani",
  "Vivek Johri",
  "Siddhartha Mohanty"
  ],
  correctAnswerIndex: 2,
  explanation: "Shri Vivek Johri is the Chairman of the Central Board of Indirect Taxes & Customs."
  ),

  Question(
  questionText: "When was the Life Insurance Corporation (LIC) established?",
  options: [
  "1965",
  "1956",
  "1971",
  "1933"
  ],
  correctAnswerIndex: 1,
  explanation: "The Life Insurance Corporation (LIC) was established in 1956."
  ),

  Question(
  questionText: "Where is the headquarters of Hindustan Unilever Ltd?",
  options: [
  "Mumbai",
  "Hangzhou, China",
  "New Delhi",
  "Cologny-Geneva, Switzerland"
  ],
  correctAnswerIndex: 0,
  explanation: "Hindustan Unilever Ltd has its headquarters in Mumbai."
  ),

  Question(
  questionText: "Which state recently inaugurated the largest private rail coach factory in India?",
  options: [
  "Telangana",
  "Maharashtra",
  "Karnataka",
  "Uttar Pradesh"
  ],
  correctAnswerIndex: 0,
  explanation: "Telangana recently inaugurated the Medha Rail Coach Factory, the largest private rail coach factory in India.",
  ),



  Question(
  questionText: "What is the name of the comprehensive program initiated by Uttar Pradesh Police to combat organized crime and expedite the conviction process?",
  options: [
  "Operation Conviction",
  "Operation Clean-up",
  "Operation Justice",
  "Operation Freedom"
  ],
  correctAnswerIndex: 0,
  explanation: "Uttar Pradesh Police initiated the comprehensive program named 'Operation Conviction' to combat organized crime.",
  ),



  Question(
  questionText: "How many handicrafts products from Uttar Pradesh received Geographical Indication (GI) Tag?",
  options: [
  "3",
  "5",
  "7",
  "10"
  ],
  correctAnswerIndex: 2,
  explanation: "7 Handicrafts products from Uttar Pradesh received Geographical Indication (GI) Tag.",
  ),

  Question(
  questionText: "What milestone did Ayushman Bharat Pradhan Mantri Jan Arogya Yojana achieve recently?",
  options: [
  "2 crore hospital admissions",
  "3 crore hospital admissions",
  "4 crore hospital admissions",
  "5 crore hospital admissions"
  ],
  correctAnswerIndex: 0,
  explanation: "Ayushman Bharat Pradhan Mantri Jan Arogya Yojana achieved 5 crore hospital admissions recently.",
  ),

  Question(
  questionText: "What is the duration of the City Investments to Innovate, Integrate and Sustain 2.0 (CITIIS 2.0) program?",
  options: [
  "2023-2025",
  "2023-2027",
  "2023-2030",
  "2023-2035"
  ],
  correctAnswerIndex: 1,
  explanation: "The CITIIS 2.0 program will be implemented from 2023 to 2027.",
  ),


  Question(
  questionText: "What are the names of the two schemes launched by PM Narendra Modi for wetland and mangrove conservation on World Environment Day?",
  options: [
  "Amrit Dharohar and Mangalaya",
  "MISHTI and Green India",
  "Amrit Dharohar and MISHTI",
  "Green India and Mangalaya"
  ],
  correctAnswerIndex: 2,
  explanation: "PM Modi launched Amrit Dharohar and MISHTI schemes for wetland and mangrove conservation.",
  ),

  Question(
  questionText: "Who presented the National Florence Nightingale Awards for 2022 and 2023?",
  options: [
  "President of India, Smt. Droupadi Murmu",
  "Prime Minister Narendra Modi",
  "UN Secretary-General",
  "Minister of Health and Family Welfare"
  ],
  correctAnswerIndex: 0,
  explanation: "The National Florence Nightingale Awards for 2022 and 2023 were presented by the President of India, Smt. Droupadi Murmu.",
  ),

  Question(
  questionText: "Which country is ranked first in the Global Startup Ecosystem Report 2023?",
  options: [
  "United States",
  "China",
  "India",
  "Singapore"
  ],
  correctAnswerIndex: 0,
  explanation: "The information about which country is ranked first in the Global Startup Ecosystem Report 2023 is not provided.",
  ),
  Question(
  questionText: "Which Russian bank has introduced Indian rupee accounts for individuals to decrease reliance on the US dollar and euro?",
  options: [
  "Sberbank",
  "Gazprombank",
  "Vnesheconombank",
  "Alfa-Bank"
  ],
  correctAnswerIndex: 0,
  explanation: "Sberbank, Russia’s top lender, has announced that individuals can now open accounts in Indian rupees.",
  ),

  Question(
  questionText: "Which bank has introduced a new deposit option for women, women entrepreneurs, pensioners, and cooperative housing societies?",
  options: [
  "Union Bank of India",
  "State Bank of India",
  "Canara Bank",
  "Bank of Baroda"
  ],
  correctAnswerIndex: 0,
  explanation: "Union Bank of India has debuted four specialized bank accounts catering to different segments of the population.",
  ),

  Question(
  questionText: "Which Indian author recently launched a graphic novel titled 'Ajay to Yogi Adityanath' for young readers?",
  options: [
  "Shashi Tharoor",
  "Abhay K",
  "Shantanu Gupta",
  "Ashwinder Singh"
  ],
  correctAnswerIndex: 2,
  explanation: "Noted Author, Shantanu Gupta, recently launched his new graphic novel – 'Ajay to Yogi Adityanath' for young readers.",
  ),
  Question(
  questionText: "Which UN organization hosted the 'Accelerator Programme' that selected the startup 'Farmers Fresh Zone' from Kerala?",
  options: [
  "UNDP",
  "UNESCO",
  "FAO",
  "WHO"
  ],
  correctAnswerIndex: 2,
  explanation: "Farmers Fresh Zone (FarmersFZ), a startup located in Kerala, was selected for the United Nations’ 'Accelerator Programme' hosted by the UN’s Food and Agriculture Organisation (FAO).",
  ),
  Question(
  questionText: "Which international agreement did Prime Minister Narendra Modi sign during his state visit to the United States, signaling India's commitment to space exploration?",
  options: [
  "Paris Agreement",
  "Moon Agreement",
  "Artemis Accords",
  "Kyoto Protocol"
  ],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi signed the Artemis Accords during his state visit to the United States, marking India’s commitment to global space cooperation and lunar exploration.",
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
    home: june(),
  ));
}

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

class august extends StatefulWidget {
  final String? userIdentifier;

  august({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<august> createState() => _augustState();
}

class _augustState extends State<august> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(200, null); // Initialize with the number of questions

  List<Question> _questions = [


  Question(
  questionText: "What is the current tiger population in India according to the August 2023 report?",
  options: ["3,167", "3,925", "4,500", "5,200"],
  correctAnswerIndex: 1,
  explanation: "As of August 2023, India's tiger population is reported to be 3,925, with an annual growth rate of 6.1%."
  ),
  Question(
  questionText: "When was Project Tiger initiated, and how has it evolved over the years?",
  options: [
  "Initiated in 1965, focusing on habitat protection.",
  "Initiated in 1973, initially covering nine reserves and later expanding to 53 reserves.",
  "Initiated in 1980, with a focus on scientific research.",
  "Initiated in 1990, emphasizing global collaboration."
  ],
  correctAnswerIndex: 1,
  explanation: "Project Tiger was initiated in 1973, covering nine reserves and later expanding to 53 reserves. It evolved from habitat protection to a landscape-level approach, community involvement, strict law enforcement, and scientific monitoring."
  ),
  Question(
  questionText: "Which Indian states have the largest tiger populations according to the August 2023 report?",
  options: ["Madhya Pradesh", "Karnataka", "Uttarakhand", "Maharashtra"],
  correctAnswerIndex: 0,
  explanation: "The states with the largest tiger populations in August 2023 are Madhya Pradesh (785), Karnataka (563), Uttarakhand (560), and Maharashtra (444)."
  ),
  Question(
  questionText: "What is the significance of Hiroshima Day, observed on August 6, 2023?",
  options: [
  "Commemorates India's independence movement.",
  "Marks the anniversary of an atomic bomb dropped on Hiroshima in 1945.",
  "Celebrates a historic peace treaty.",
  "Honors a significant environmental achievement."
  ],
  correctAnswerIndex: 1,
  explanation: "Hiroshima Day, observed on August 6, 2023, commemorates the anniversary of the atomic bomb dropped on Hiroshima in 1945, highlighting the devastating consequences of nuclear warfare."
  ),
  Question(
  questionText: "Who initiated the Quit India Movement, and what were its main objectives?",
  options: [
  "Subhas Chandra Bose, to demand equal rights.",
  "Mahatma Gandhi, to achieve immediate and complete independence from British rule.",
  "Jawaharlal Nehru, to promote industrialization.",
  "Sardar Patel, to seek better agricultural policies."
  ],
  correctAnswerIndex: 1,
  explanation: "The Quit India Movement was initiated by Mahatma Gandhi on August 8, 1942, with the objective of achieving immediate and complete independence from British colonial rule."
  ),
  Question(
  questionText: "What were the highlights of RBI's August 2023 Monetary Policy meeting?",
  options: [
  "Repo rate increased to 7%.",
  "Inflation forecast reduced for the fiscal year.",
  "Introduction of a flexible exchange rate.",
  "Repo rate unchanged at 6.5%, inflation forecasts, and liquidity measures discussed."
  ],
  correctAnswerIndex: 3,
  explanation: "RBI's August 2023 Monetary Policy meeting highlights include maintaining the repo rate at 6.5%, inflation forecasts, economic outlook, monitoring inflation trajectory, liquidity measures, UPI payment updates, transition to a fixed-rate regime, and a consistent policy stance."
  ),

  Question(
  questionText: "What groundbreaking initiatives has the Reserve Bank of India (RBI) recently announced for UPI and UPI Lite?",
  options: [
  "Introduction of offline payments with NFC technology.",
  "Conversational Payments, UPI Lite payment limit enhancement, and offline UPI payments with NFC technology.",
  "Enhanced security measures for UPI transactions.",
  "Introduction of a fixed-rate regime for UPI Lite."
  ],
  correctAnswerIndex: 1,
  explanation: "RBI has announced Conversational Payments, UPI Lite payment limit enhancement, and offline UPI payments with NFC technology to revolutionize the digital payments landscape in India."
  ),
  Question(
  questionText: "What are the key features of Conversational Payments on UPI?",
  options: [
  "Increased transaction limit and enhanced security.",
  "Multilingual support, AI-powered system, and accessibility for senior citizens.",
  "Offline payments and optimized processing.",
  "Introduction of UPI Lite by NPCI."
  ],
  correctAnswerIndex: 1,
  explanation: "Conversational Payments on UPI include multilingual support, the use of an AI-powered system for transactions, and enhanced accessibility, especially for senior citizens."
  ),
  Question(
  questionText: "What is the new transaction limit for UPI Lite, and how does it aim to enhance convenience?",
  options: [
  "Rs 200 with a balance ceiling of Rs 2,000.",
  "Rs 500 with an optimized processing approach.",
  "Rs 1,000 with a focus on security measures.",
  "Rs 300 with a fixed-rate regime."
  ],
  correctAnswerIndex: 1,
  explanation: "The new transaction limit for UPI Lite is Rs 500, aiming to facilitate more substantial and convenient transactions with an optimized processing approach."
  ),
  Question(
  questionText: "How does the RBI plan to address connectivity challenges in UPI Lite?",
  options: [
  "Introduction of multilingual support.",
  "Offline payments using NFC technology.",
  "Enhanced security measures.",
  "Introduction of fixed-rate regime for borrowers."
  ],
  correctAnswerIndex: 1,
  explanation: "RBI plans to address connectivity challenges in UPI Lite by introducing offline payments using Near Field Communication (NFC) technology."
  ),
  Question(
  questionText: "Who were the winners of the ICC Players of the Month for July 2023, and what were their notable performances?",
  options: [
  "Ashleigh Gardner for her batting performance, and Chris Woakes for his captaincy.",
  "Ellyse Perry for her all-round performance, and Zak Crawley for his bowling.",
  "Ashleigh Gardner for her all-round performance, and Chris Woakes for his bowling.",
  "Nat Sciver-Brunt for her fielding, and Bas de Leede for his wicketkeeping."
  ],
  correctAnswerIndex: 2,
  explanation: "Ashleigh Gardner won for her all-round performance, scoring 232 runs and taking 15 wickets. Chris Woakes won for his bowling, taking 19 wickets in three Tests against Australia."
  ),
  Question(
  questionText: "What is the significance of India's successful landing of Chandrayaan-3 on the lunar surface?",
  options: [
  "India's first mission to the moon.",
  "India becomes the fourth country to successfully land on the moon.",
  "Exploration of Mars by India.",
  "Initiation of a global space race."
  ],
  correctAnswerIndex: 1,
  explanation: "India's successful landing of Chandrayaan-3 is significant as it makes India the fourth country, after the United States, Russia, and China, to successfully land on the lunar surface."
  ),
  Question(
  questionText: "What is the expected role of the rover Pragyan in the Chandrayaan-3 mission?",
  options: [
  "Launching communication satellites.",
  "Exploring the lunar south pole.",
  "Conducting experiments on Mars.",
  "Collecting samples from asteroids."
  ],
  correctAnswerIndex: 1,
  explanation: "The rover Pragyan is expected to roll out of the lander and begin exploring the lunar south pole, collecting valuable data and conducting experiments to better understand the moon's formation and evolution."
  ),
  Question(
  questionText: "What theme is associated with the celebration of India's 77th Independence Day in 2023?",
  options: [
  "Freedom and Unity.",
  "Nation First, Always First.",
  "Diversity and Inclusion.",
  "Environmental Sustainability."
  ],
  correctAnswerIndex: 1,
  explanation: "The theme for the 77th Independence Day celebration in 2023 is 'Nation First, Always First,' aligning with the government's focus on national unity and development."
  ),
  Question(
  questionText: "What are some key events held during Independence Day celebrations in India?",
  options: [
  "Annual sports tournaments.",
  "Military parades and cultural programs.",
  "Scientific exhibitions.",
  "Fashion shows and beauty pageants."
  ],
  correctAnswerIndex: 1,
  explanation: "Independence Day celebrations in India include flag hoisting ceremonies, military parades, cultural programs showcasing the country's rich heritage, and the release of commemorative stamps and coins."
  ),
  Question(
  questionText: "What were some of the key events that led to India's independence?",
  options: [
  "Partition of Bengal.",
  "Quit India Movement.",
  "Salt March.",
  "All of the above."
  ],
  correctAnswerIndex: 3,
  explanation: "Key events that led to India's independence include the Partition of Bengal, Quit India Movement, Salt March, and more, highlighting the long struggle against British colonial rule."
  ),
  Question(
  questionText: "What is the significance of August 23, 2023, for India?",
  options: [
  "National Space Day",
  "Independence Day",
  "Chandrayaan-3 launch day",
  "BRICS Summit"
  ],
  correctAnswerIndex: 0,
  explanation: "August 23, 2023, is celebrated as National Space Day in India. Prime Minister Narendra Modi announced this to commemorate the successful landing of Chandrayaan-3 on the Moon. He also named the spot where the lander touched down as 'Shivashakti' and the Chandrayaan-2 landing site as 'Tiranga Point'.",
  ),

  Question(
  questionText: "Which city and state were recognized as the best in the India Smart Cities Awards 2022?",
  options: [
  "Surat and Rajasthan",
  "Agra and Tamil Nadu",
  "Indore and Madhya Pradesh",
  "Coimbatore and Uttar Pradesh"
  ],
  correctAnswerIndex: 2,
  explanation: "Indore was named the best city, and Madhya Pradesh was recognized as the best state in the India Smart Cities Awards 2022. These awards celebrate the progress and achievements of cities and states in promoting sustainable development and enhancing the quality of urban life.",
  ),

  Question(
  questionText: "Who is the Chairman of ISRO and the brain behind India’s Moon mission?",
  options: [
  "P Veeramuthuvel",
  "S Somanath",
  "M Sankaran",
  "S Mohana Kumar"
  ],
  correctAnswerIndex: 1,
  explanation: "S Somanath is the Chairman of ISRO and the brain behind India’s Moon mission, including Chandrayaan-3. He has played a crucial role in accelerating ISRO’s various missions, including Gaganyaan and Sun-mision Aditya-L1.",
  ),

  Question(
  questionText: "Which country officially became the fourth nation to achieve a soft lunar landing, joining the ranks of the United States, China, and the former Soviet Union?",
  options: [
  "Russia",
  "China",
  "India",
  "United States"
  ],
  correctAnswerIndex: 2,
  explanation: "India officially became the fourth nation to achieve a soft lunar landing with Chandrayaan-3. The successful landing took place on August 23, 2023, making India a significant player in lunar exploration.",
  ),

  Question(
  questionText: "What was the theme of India's 77th Independence Day celebration on August 15, 2023?",
  options: [
  "Unity in Diversity",
  "Nation First, Always First",
  "Digital India",
  "Sustainable Development"
  ],
  correctAnswerIndex: 1,
  explanation: "The theme for India's 77th Independence Day celebration in 2023 was 'Nation First, Always First.' This theme aligns with the government's focus on national unity and development.",
  ),
  Question(
  questionText: "What fund did the Securities and Exchange Board of India (SEBI) establish to support the corporate debt market?",
  options: [
  "Guarantee Scheme for Corporate Debt (GSCD)",
  "Corporate Debt Market Development Fund (CDMDF)",
  "Reserve Bank Innovation Hub (RBIH)",
  "Public Tech Platform for Frictionless Credit (PTPFC)"
  ],
  correctAnswerIndex: 1,
  explanation: "SEBI established the Corporate Debt Market Development Fund (CDMDF) to function as a 'backstop facility,' supporting the corporate debt market during stressed conditions by purchasing investment-grade corporate debt securities. The Guarantee Scheme for Corporate Debt (GSCD) is associated with the fund.",
  ),

  Question(
  questionText: "What was the Reserve Bank of India (RBI) Digital Payments Index (RBIDPI) for March 2023, and how much did it grow compared to September 2022?",
  options: [
  "RBIDPI: 377.46, Growth: 13.24%",
  "RBIDPI: 395.58, Growth: 13.24%",
  "RBIDPI: 377.46, Growth: 395.58%",
  "RBIDPI: 395.58, Growth: 23.46%"
  ],
  correctAnswerIndex: 1,
  explanation: "The RBI Digital Payments Index (RBIDPI) for March 2023 was 395.58, reflecting a 13.24% growth compared to September 2022, which had an index value of 377.46.",
  ),

  Question(
  questionText: "What records did the Unified Payments Interface (UPI) network set in July 2023?",
  options: [
  "Transaction volume and value records",
  "Only transaction volume record",
  "Only transaction value record",
  "Monthly profit record"
  ],
  correctAnswerIndex: 0,
  explanation: "In July 2023, the UPI network set new records in both transaction volume and value. Transactions surged by 44% YoY, reaching ₹15.34 lakh crore, with the number of transactions hitting 996 crore, a 58% increase compared to July 2022.",
  ),

  Question(
  questionText: "Who revealed the new logo of NMDC in a special event in New Delhi?",
  options: [
  "Narendra Modi",
  "Jyotiraditya Scidia",
  "S Somanath",
  "Sashidhar Jagdishan"
  ],
  correctAnswerIndex: 1,
  explanation: "Jyotiraditya Scidia, the Union Minister of Steel and Civil Aviation, revealed the new logo of NMDC in a special event in New Delhi. The new logo reflects NMDC's commitment to responsible mining and global standards.",
  ),

  Question(
  questionText: "Which major public sector undertakings faced late submission fees of ₹2,000 crore from the Reserve Bank of India (RBI)?",
  options: [
  "ONGC Videsh Ltd, Indian Oil Corp. Ltd, GAIL (India) Ltd, and Oil India Ltd",
  "SBI, HDFC Bank, ICICI Bank, and Axis Bank",
  "NMDC, Bandhan Bank, YES BANK, and Canara Bank",
  "Airtel Payment Bank, Kiwi, AU Small Finance Bank, and LIC"
  ],
  correctAnswerIndex: 0,
  explanation: "The RBI imposed late submission fees of ₹2,000 crore on ONGC Videsh Ltd, Indian Oil Corp. Ltd, GAIL (India) Ltd, and Oil India Ltd for failing to promptly report their overseas investments, affecting further remittances and transfers until the discrepancies are resolved.",
  ),

  Question(
  questionText: "Which fintech company partnered with Axis Bank to introduce lifetime free Axis Bank KWIK credit cards?",
  options: [
  "Airtel Payment Bank",
  "Kiwi",
  "YES BANK",
  "Canara Bank"
  ],
  correctAnswerIndex: 1,
  explanation: "Kiwi, a fintech company specializing in enabling credit on UPI, partnered with Axis Bank to introduce lifetime free Axis Bank KWIK credit cards through its app.",
  ),

  Question(
  questionText: "Which bank reported its highest-ever quarterly profit at ₹16,884 crore for the April-June quarter of 2023-24?",
  options: [
  "ICICI Bank",
  "Axis Bank",
  "HDFC Bank",
  "State Bank of India (SBI)"
  ],
  correctAnswerIndex: 3,
  explanation: "State Bank of India (SBI) reported its highest-ever quarterly profit at ₹16,884 crore for the April-June quarter of 2023-24, representing a significant jump from ₹6,068 crore in the same period the previous year.",
  ),

  Question(
  questionText: "Who became the highest-paid bank CEO in the fiscal year 2023?",
  options: [
  "Sashidhar Jagdishan",
  "S Somanath",
  "Jyotiraditya Scidia",
  "Narendra Modi"
  ],
  correctAnswerIndex: 0,
  explanation: "Sashidhar Jagdishan, the CEO of HDFC Bank, became the highest-paid bank CEO in the fiscal year 2023 with an overall package of Rs.10.55 crore.",
  ),

  Question(
  questionText: "How much profit did public sector banks (PSBs) register in the first quarter of June 2023?",
  options: [
  "Rs 15,306 crore",
  "Rs 20,000 crore",
  "Rs 34,774 crore",
  "Rs 10,000 crore"
  ],
  correctAnswerIndex: 2,
  explanation: "Public sector banks (PSBs) registered an impressive profit of over Rs 34,774 crore in the first quarter of June 2023, showcasing a substantial increase that more than doubles their previous earnings.",
  ),

  Question(
  questionText: "What is the name of the groundbreaking insurance product recently launched by IndiaFirst Life Insurance Company?",
  options: [
  "Lifetime Free Axis Bank KWIK Credit Card",
  "Infinity Savings Account",
  "Guarantee of Life Dreams (G.O.L.D.) Plan",
  "Marriott Bonvoy HDFC Bank Credit Card"
  ],
  correctAnswerIndex: 2,
  explanation: "IndiaFirst Life Insurance Company recently launched the 'Guarantee of Life Dreams (G.O.L.D.) Plan,' a non-linked and non-participating insurance plan designed to offer regular, long-term income to policyholders.",
  ),

  Question(
  questionText: "How much have state-owned and leading private banks garnered in fees from account holders failing to maintain the minimum balance, according to a Finance Ministry report?",
  options: [
  "Over ₹21,000 crore",
  "Over ₹10,000 crore",
  "Over ₹5,000 crore",
  "Over ₹30,000 crore"
  ],
  correctAnswerIndex: 0,
  explanation: "According to a Finance Ministry report, both state-owned banks and leading private banks have garnered more than ₹21,000 crore in fees primarily from account holders failing to maintain the minimum balance since 2018.",
  ),

  Question(
  questionText: "Which bank became the first Indian bank to launch an eco-friendly debit card crafted from recycle-Poly Vinyl Chloride (r-PVC) material?",
  options: [
  "HDFC Bank",
  "SBI",
  "Canara Bank",
  "Airtel Payment Bank"
  ],
  correctAnswerIndex: 3,
  explanation: "Airtel Payment Bank became the first Indian bank to launch an eco-friendly debit card for its new and existing customers with a savings bank account. The debit cards are crafted from recycle-Poly Vinyl Chloride (r-PVC) material, certified as an eco-friendly material.",
  ),

  Question(
  questionText: "Which cooperative banks faced monetary penalties totaling Rs4.20 lakh from the Reserve Bank of India (RBI)?",
  options: [
  "Canara Bank, Axis Bank, HDFC Bank, and SBI",
  "Vita Urban Cooperative Bank Ltd, Shri Vinayak Sahakari Bank Ltd, Shreeji Bhatia Cooperative Bank Ltd, and Mizoram Urban Cooperative Development Bank Ltd",
  "YES BANK, Bandhan Bank, AU Small Finance Bank, and LIC",
  "ICICI Bank, IDBI Bank, Kotak Mahindra Bank, and PNB"
  ],
  correctAnswerIndex: 1,
  explanation: "The RBI imposed monetary penalties totaling Rs4.20 lakh on Vita Urban Cooperative Bank Ltd, Shri Vinayak Sahakari Bank Ltd, Shreeji Bhatia Cooperative Bank Ltd, and Mizoram Urban Cooperative Development Bank Ltd for being in breach of various regulations set forth by the central banking authority.",
  ),

  Question(
  questionText: "Which bank has launched a 24x7 video banking platform, allowing customers to engage in face-to-face video interactions with expert bankers?",
  options: [
  "HDFC Bank",
  "ICICI Bank",
  "Axis Bank",
  "AU Small Finance Bank"
  ],
  correctAnswerIndex: 11,
  explanation: "AU Small Finance Bank, the largest small finance bank in India, has launched a 24x7 video banking platform, enabling customers to engage in face-to-face video interactions with expert bankers. This service provides round-the-clock support, even during weekends and holidays.",
  ),

  Question(
  questionText: "How has SEBI enhanced the efficiency of Initial Public Offerings (IPOs)?",
  options: [
  "Introduced a Corporate Debt Market Development Fund",
  "Halved the timeline for listing shares on stock exchanges after the IPO closure",
  "Imposed late submission fees on major public sector undertakings",
  "Launched a groundbreaking video banking platform"
  ],
  correctAnswerIndex: 1,
  explanation: "SEBI has enhanced the efficiency of Initial Public Offerings (IPOs) by halving the timeline for listing shares on stock exchanges after the IPO closure. This move aims to provide substantial benefits to both investors and issuers in the capital markets.",
  ),

  Question(
  questionText: "What is the forecasted economic growth rate for India in the financial year 2023-24, according to the National Institute of Public Finance and Policy (NIPFP)?",
  options: [
  "7.2%",
  "8.0%",
  "6.0%",
  "6.7%"
  ],
  correctAnswerIndex: 2,
  explanation: "According to a mid-year macroeconomic review by the National Institute of Public Finance and Policy (NIPFP), the forecasted economic growth rate for India in the financial year 2023-24 is expected to decelerate to 6.0%, down from the 7.2% recorded in FY23. This projected slowdown is attributed to prevailing headwinds in the global economy.",
  ),

  Question(
  questionText: "What is the theme of the third edition of the UPI Safety Awareness Campaign introduced by the National Payments Corporation of India (NPCI)?",
  options: [
  "Digital Payment Adoption",
  "Ease of Using UPI",
  "Safety, Ease, and Swiftness of UPI",
  "Financial Security and Stable Income"
  ],
  correctAnswerIndex: 2,
  explanation: "The third edition of the UPI Safety Awareness Campaign introduced by the National Payments Corporation of India (NPCI) is named 'UPI Chalega.' The campaign aims to emphasize the safety, ease, and swiftness of using the Unified Payments Interface (UPI) for transactions.",
  ),

  Question(
  questionText: "What reforms has the Reserve Bank of India (RBI) introduced pertaining to floating rate home loans?",
  options: [
  "Introduced a Corporate Debt Market Development Fund",
  "Halved the timeline for listing shares on stock exchanges after the IPO closure",
  "Increased the upper limit of offline payment transactions",
  "Provided more clarity to the process of resetting interest rates and offered the option to switch to fixed interest rates"
  ],
  correctAnswerIndex: 3,
  explanation: "The Reserve Bank of India (RBI) has introduced reforms pertaining to floating rate home loans to enhance transparency and consumer protection. These reforms provide more clarity to the process of resetting interest rates, offer borrowers the option to switch to fixed interest rates, and prevent banks from unilaterally changing the loan tenure without proper consent.",
  ),


  Question(
  questionText: "What significant change in Goods and Services Tax (GST) rules was announced by the Central Board of Indirect Taxes and Customs (CBIC) on July 28, 2023?",
  options: [
  "Introduction of a 28% tax on online gaming bets",
  "Companies with a turnover of more than ₹5 crore required to generate electronic invoices (e-invoices) for B2B transactions or exports",
  "Imposition of a 25.3% fiscal deficit on the Indian government",
  "Enhancement of windfall profit tax on crude oil and diesel"
  ],
  correctAnswerIndex: 1,
  explanation: "The CBIC announced that companies with a turnover of more than ₹5 crore will be required to generate electronic invoices (e-invoices) for their business-to-business (B2B) transactions or exports.",
  ),

  Question(
  questionText: "What is the fiscal deficit of the Indian government at the end of June 2023, according to the Controller General of Accounts (CGA)?",
  options: [
  "25.3% of the full-year target",
  "20% of the full-year target",
  "15% of the full-year target",
  "30% of the full-year target"
  ],
  correctAnswerIndex: 0,
  explanation: "The fiscal deficit of the Indian government at the end of June 2023 is 25.3% of the full-year target, according to data released by the Controller General of Accounts (CGA).",
  ),

  Question(
  questionText: "What is the gross Goods and Services Tax (GST) collection for July 2023, and how does it compare to the same month last year?",
  options: [
  "Rs 1.5 lakh crore, 10% higher than last year",
  "Rs 1.65 lakh crore, 11% higher than last year",
  "Rs 1.2 lakh crore, 5% higher than last year",
  "Rs 2 lakh crore, 15% higher than last year"
  ],
  correctAnswerIndex: 1,
  explanation: "The gross GST collection for July 2023 has surpassed the Rs 1.65 lakh crore mark, which is 11% higher than the same month last year, reflecting a positive trend in the country’s economic growth.",
  ),

  Question(
  questionText: "What is the Purchasing Managers’ Index (PMI) for India’s manufacturing sector in July 2023, and how does it compare to June and May?",
  options: [
  "57.7, a decrease from 58.7 in May",
  "57.7, a decrease from 57.8 in June",
  "58.7, an increase from 57.8 in June",
  "57.8, an increase from 57.7 in June"
  ],
  correctAnswerIndex: 1,
  explanation: "The PMI for India’s manufacturing sector in July 2023 is 57.7, indicating a slight dip from 57.8 in June. However, the figure still signals expansion in the sector.",
  ),

  Question(
  questionText: "What percentage of India’s GDP did the government's debt account for in March 2023?",
  options: [
  "61.5%",
  "57.1%",
  "50.0%",
  "65.2%"
  ],
  correctAnswerIndex: 1,
  explanation: "In March 2023, the Indian government's debt stood at ₹155.6 lakh crore, accounting for 57.1% of the country’s GDP, representing a reduction from 61.5% of GDP in 2020-21.",
  ),

  Question(
  questionText: "What tax has the Goods and Services Tax (GST) Council decided to impose on bets placed on online gaming, and when will it be implemented?",
  options: [
  "18%, effective immediately",
  "28%, effective from 1st October",
  "15%, effective from next fiscal year",
  "10%, effective from January 2024"
  ],
  correctAnswerIndex: 1,
  explanation: "The GST Council has decided to impose a 28% tax on the full face value of bets placed on online gaming, and it will be implemented from 1st October.",
  ),

  Question(
  questionText: "What was the growth rate of India’s services sector in July 2023, and what is the S&P Global India Services Purchasing Managers’ Index (PMI)?",
  options: [
  "60.5% growth rate, PMI of 58.0",
  "62.3% growth rate, record high PMI",
  "55.8% growth rate, PMI of 60.0",
  "58.7% growth rate, PMI of 63.5"
  ],
  correctAnswerIndex: 1,
  explanation: "In July 2023, India’s services sector experienced a significant rebound with its highest growth in 13 years, achieving a record high S&P Global India Services PMI of 62.3.",
  ),

  Question(
  questionText: "What does S&P Global’s report titled “Look Forward: India’s Moment” project for India’s GDP growth rate in fiscal year 2023-24?",
  options: [
  "5.5%",
  "7.0%",
  "6.0%",
  "6.7%"
  ],
  correctAnswerIndex: 2,
  explanation: "S&P Global’s report projects India’s GDP growth rate to be 6% in fiscal year 2023-24, making India the fastest-growing large economy.",
  ),

  Question(
  questionText: "What is the retail inflation rate in India for July 2023, and how does it compare to the central bank’s tolerance threshold?",
  options: [
  "6.5%, below the 6% tolerance threshold",
  "7.44%, above the 6% tolerance threshold",
  "5.8%, within the 6% tolerance threshold",
  "8.2%, significantly above the 6% tolerance threshold"
  ],
  correctAnswerIndex: 1,
  explanation: "In July 2023, the retail inflation in India reached 7.44%, marking the highest rate since April 2022 and exceeding the central bank’s 6% tolerance threshold.",
  ),

  Question(
  questionText: "What trend does the Wholesale Price Index (WPI) exhibit in July 2023, and what role did food and primary article prices play in this shift?",
  options: [
  "Inflationary trends, 2% increase in food prices",
  "Deflationary trends, 7.5% surge in food prices",
  "Stagnation, decline in food and primary article prices",
  "Hyperinflation, 10% increase in food prices"
  ],
  correctAnswerIndex: 1,
  explanation: "In July 2023, the Wholesale Price Index (WPI) exhibited deflationary trends for the fourth consecutive month, but the decline was notably mitigated by a substantial increase of over 7.5% in food and primary article prices.",
  ),

  Question(
  questionText: "What recent decision has the Indian government made regarding the windfall profit tax on crude oil and diesel?",
  options: [
  "Abolished the tax entirely",
  "Enhanced the tax on domestically produced crude oil and exported diesel",
  "Reduced the tax rates on crude oil and diesel",
  "Shifted the tax burden to aviation turbine fuel (ATF)"
  ],
  correctAnswerIndex: 1,
  explanation: "The Indian government has decided to enhance the windfall profit tax on domestically produced crude oil and exported diesel, accompanied by the reintroduction of the tax on aviation turbine fuel (ATF) shipments abroad, through a special additional excise duty (SAED) mechanism.",
  ),

  Question(
  questionText: "According to a study by SBI Research economists, by what factor is India’s per capita income expected to increase from FY23 to FY47?",
  options: [
  "5.0 times",
  "7.5 times",
  "10.0 times",
  "3.5 times"
  ],
  correctAnswerIndex: 1,
  explanation: "According to a study by SBI Research economists, India’s per capita income is projected to surge by 7.5 times, from Rs 2 lakh (2,500 dollars) in FY23 to Rs 14.9 lakh (dolars 12,400) per annum by FY47.",
  ),

  Question(
  questionText: "What is the GDP growth projection for India in the fiscal year 2024, according to Crisil?",
  options: [
  "7.5%",
  "6.0%",
  "8.0%",
  "5.5%"
  ],
  correctAnswerIndex: 1,
  explanation: "Crisil anticipates India’s GDP growth to reach 6% in the fiscal year 2024, which is lower than the 7% estimated by the National Statistical Organisation (NSO) for the fiscal year 2023.",
  ),

  Question(
  questionText: "What is the projected GDP growth rate for India in the first quarter of the fiscal year 2023-24, according to ICRA Ratings?",
  options: [
  "6.1%",
  "8.5%",
  "7.0%",
  "5.5%"
  ],
  correctAnswerIndex: 1,
  explanation: "ICRA Ratings projects that India’s GDP growth is expected to accelerate to 8.5% during the April-June period, a significant increase from the 6.1% growth rate witnessed in the preceding quarter (January-March).",
  ),

  Question(
  questionText: "How much has Foreign Direct Investment (FDI) inflow into India declined during the first quarter of the fiscal year 2023-24?",
  options: [
  "15%",
  "25%",
  "34%",
  "10%"
  ],
  correctAnswerIndex: 2,
  explanation: "The latest government data reveals a noteworthy decline of 34% in Foreign Direct Investment (FDI) inflows into India during the first quarter of the fiscal year 2023-24, plummeting to 10.94 billion from 16.58 billion dollars in the same period of the previous fiscal year.",
  ),

  Question(
  questionText: "Which bank has acquired the title rights for home international series of the Board of Control for Cricket in India (BCCI) for three years, and how much will they provide per international match?",
  options: [
  "State Bank of India, Rs 3 crore",
  "IDFC First Bank, Rs 4.2 crore",
  "HDFC Bank, Rs 5.5 crore",
  "ICICI Bank, Rs 2.8 crore"
  ],
  correctAnswerIndex: 1,
  explanation: "On 25th August, the IDFC First Bank acquired the title rights for home international series of the BCCI for three years and will provide Rs 4.2 crore per international match.",
  ),

  Question(
  questionText: "What is notable about Amazon India's store on Dal Lake in Srinagar, Kashmir?",
  options: [
  "It's the largest store in the region",
  "It's the first-ever floating store",
  "It's focused exclusively on fashion",
  "It's a cash-only store"
  ],
  correctAnswerIndex: 1,
  explanation: "Amazon India has inaugurated its first-ever floating store on Dal Lake in Srinagar, Kashmir, aligning with its commitment to providing customers with reliable and convenient delivery services.",
  ),

  Question(
  questionText: "What is the growth rate of India’s eight core infrastructure sectors in June 2023, according to the Ministry of Commerce and Industry?",
  options: [
  "5.5%",
  "8.2%",
  "6.0%",
  "7.8%"
  ],
  correctAnswerIndex: 1,
  explanation: "India’s eight core infrastructure sectors showed a notable growth rate of 8.2% in June 2023, marking the highest in five months, according to the Ministry of Commerce and Industry.",
  ),

  Question(
  questionText: "What major change has Tata Sons, the parent company of Air India, introduced for the airline’s appearance and brand identity?",
  options: [
  "Introduction of a new mascot",
  "New logo and design, replacing the mascot 'Maharaja'",
  "Shift to a budget airline model",
  "Partnership with another airline"
  ],
  correctAnswerIndex: 1,
  explanation: "Tata Sons has introduced a new appearance and brand identity for Air India, including a new logo and design, replacing the well-known mascot 'Maharaja.'",
  ),

  Question(
  questionText: "What significant progress has Viacom18 made in merging its two Over-The-Top (OTT) platforms, JioCinema and Voot?",
  options: [
  "Launch of a new streaming service",
  "Alignment of technology backends",
  "Closure of one of the platforms",
  "Reduction of subscription fees"
  ],
  correctAnswerIndex: 1,
  explanation: "Viacom18 has made significant strides in merging its two Over-The-Top (OTT) platforms, JioCinema and Voot, with the integration process reaching an advanced stage, aligning technology backends.",
  ),





  Question(
  questionText: 'What caused historic rainfall in Beijing, China?',
  options: [
  'Typhoon Doksuri',
  'Coup attempt',
  'New security pact with the U.S.',
  'Credit rating downgrade'
  ],
  correctAnswerIndex: 0,
  explanation:
  'Historic rainfall in Beijing was caused by the remnants of Typhoon Doksuri, resulting in severe flooding and significant damage.'
  ),
  Question(
  questionText: 'Who was ousted in the attempted coup in Niger on July 26?',
  options: [
  'Mohamed Bazoum',
  'Bikram Keshari Arukha',
  'Shehbaz Sharif',
  'Nelson Chamisa'
  ],
  correctAnswerIndex: 0,
  explanation:
  'President Mohamed Bazoum, who came to power in 2021, was ousted by mutinous soldiers in the attempted coup in Niger.'
  ),
  Question(
  questionText:
  'What is the name of the new security pact approved by Pakistan with the United States?',
  options: [
  'AAA+',
  'BRI',
  'CIS-MOA',
  'AUKUS'
  ],
  correctAnswerIndex: 2,
  explanation:
  'Pakistan approved the Communication Interoperability and Security Memorandum of Agreement (CIS-MOA) for enhanced defense ties with the U.S.'
  ),
  Question(
  questionText:
  'Which global ratings agency downgraded the United States\' credit rating?',
  options: [
  'Moody\'s',
  'S&P Global',
  'Fitch',
  'Standard & Poor\'s'
  ],
  correctAnswerIndex: 2,
  explanation:
  'Fitch downgraded the United States\' credit rating from AAA to AA+, raising concerns about the country\'s ability to repay debts.'
  ),
  Question(
  questionText:
  'Which country has been recognized by the WHO for eliminating trachoma as a public health concern?',
  options: [
  'Iraq',
  'Cambodia',
  'India',
  'Zimbabwe'
  ],
  correctAnswerIndex: 0,
  explanation:
  'Iraq has been officially recognized by the World Health Organization (WHO) as the 18th country to eliminate trachoma as a public health concern.'
  ),
  Question(
  questionText:
  'What is the name of the new COVID variant spreading rapidly in the UK?',
  options: [
  'Delta',
  'Omicron',
  'Eris or EG.5.1',
  'Alpha'
  ],
  correctAnswerIndex: 2,
  explanation:
  'A new COVID variant, Eris or EG.5.1, is rapidly spreading across the UK and globally, linking to one out of every seven COVID-19 cases in the UK.'
  ),
  Question(
  questionText:
  'Who did Cambodia\'s King appoint as the country\'s new leader?',
  options: [
  'Hun Sen',
  'King Norodom Sihamoni',
  'Hun Manet',
  'Kyriakos Mitsotakis'
  ],
  correctAnswerIndex: 2,
  explanation:
  'Cambodia\'s King appointed Hun Manet as Prime Minister, marking the beginning of a handover of power from Hun Sen.'
  ),
  Question(
  questionText:
  'What ceremony did the International Buddhist Confederation hold in Lumbini, Nepal?',
  options: [
  'Election ceremony',
  'Bhumi Pujan for IICBCH',
  'Coronation ceremony',
  'Trade agreement signing'
  ],
  correctAnswerIndex: 1,
  explanation:
  'The International Buddhist Confederation held the Bhumi Pujan ceremony for the construction of the India International Centre for Buddhist Culture and Heritage (IICBCH) in Lumbini, Nepal.'
  ),
  Question(
  questionText:
  'What alarming trend did the planet experience in July 2023?',
  options: [
  'Global economic recession',
  'Rise in temperatures',
  'Increase in diplomatic conflicts',
  'Pandemic resurgence'
  ],
  correctAnswerIndex: 1,
  explanation:
  'In July 2023, the planet experienced an unprecedented rise in temperatures, marking it as the hottest month ever recorded.'
  ),
  Question(
  questionText:
  'What economic challenge is China facing, as reported in August 2023?',
  options: [
  'Inflation',
  'Economic growth',
  'Trade surplus',
  'Deflation'
  ],
  correctAnswerIndex: 3,
  explanation:
  'China is facing deflation, triggering concerns about its economic prospects and the need for robust policy responses from Beijing.'
  ),
  Question(
  questionText:
  'What term has the media regulatory body of Iraq prohibited the usage of?',
  options: [
  'Terrorism',
  'Sexual deviance',
  'Censorship',
  'Political propaganda'
  ],
  correctAnswerIndex: 1,
  explanation:
  'The media regulatory body of Iraq has issued a prohibition on the usage of the term \'homosexuality,\' instructing the use of \'sexual deviance\' instead.'
  ),
  Question(
  questionText:
  'Why did Pakistan\'s President dissolve the country\'s parliament?',
  options: [
  'Economic recession',
  'Political and economic challenges',
  'Foreign intervention',
  'Military coup'
  ],
  correctAnswerIndex: 1,
  explanation:
  'Pakistan\'s President dissolved the country\'s parliament at the recommendation of Prime Minister Shehbaz Sharif, amidst political and economic challenges.'
  ),
  Question(
  questionText:
  'What is the focus of the AUKUS (Australia, United Kingdom, United States) pact?',
  options: [
  'Climate change',
  'Economic development',
  'Nuclear-powered submarines',
  'Regional trade'
  ],
  correctAnswerIndex: 2,
  explanation:
  'The AUKUS pact, initially focused on supplying Australia with nuclear-powered submarines, has gained attention for its potential role in testing advanced hypersonic and long-range precision weapons.'
  ),
  Question(
  questionText:
  'What has triggered concerns about China\'s economic prospects?',
  options: [
  'Inflation',
  'Trade surplus',
  'Economic growth',
  'Deflation'
  ],
  correctAnswerIndex: 3,
  explanation:
  'The recent occurrence of deflation in China has triggered concerns about its economic prospects, emphasizing the need for robust policy responses from Beijing.'
  ),
  Question(
  questionText:
  'What organization faces a critical situation after the coup in Niger on July 26?',
  options: [
  'United Nations',
  'European Union',
  'ASEAN',
  'ECOWAS'
  ],
  correctAnswerIndex: 3,
  explanation:
  'In the aftermath of the coup in Niger on July 26, the Economic Community of West African States (ECOWAS) faces a critical situation, with coup leaders defying deadlines to reinstate the ousted president.'
  ),
  Question(
  questionText:
  'Which English language proficiency test has been officially sanctioned for international students in Canada?',
  options: [
  'TOEFL',
  'IELTS',
  'Pearson\'s PTE Academic',
  'Cambridge English'
  ],
  correctAnswerIndex: 2,
  explanation:
  'Canada\'s Immigration, Refugees and Citizenship Canada (IRCC) has officially sanctioned the use of Pearson\'s PTE Academic test as an English language proficiency assessment for international students.'
  ),
  Question(
  questionText:
  'Who has taken the oath as the caretaker prime minister of a country?',
  options: [
  'Emmerson Mnangagwa',
  'Hun Manet',
  'Anwarul Haq Kakar',
  'Srettha Thavisin'
  ],
  correctAnswerIndex: 2,
  explanation:
  'Anwarul Haq Kakar, a prominent ethnic Pushtun leader, has taken the oath as the caretaker prime minister of a country, with responsibilities including supervising upcoming general elections and addressing economic challenges.'
  ),
  Question(
  questionText:
  'Which country has entered a recession, as reported in August 2023?',
  options: [
  'Germany',
  'France',
  'Netherlands',
  'Italy'
  ],
  correctAnswerIndex: 2,
  explanation:
  'The Dutch economy has entered a recession, shrinking 0.3% on a quarterly basis in the second quarter of 2023.'
  ),
  Question(
  questionText:
  'What infectious disease has been reported in China\'s Inner Mongolia region?',
  options: [
  'COVID-19',
  'Bubonic plague',
  'Ebola',
  'Zika virus'
  ],
  correctAnswerIndex: 1,
  explanation:
  'China\'s Inner Mongolia region has reported two cases of bubonic plague, causing concerns and highlighting the need for vigilant containment efforts.'
  ),
  Question(
  questionText:
  'What country has shown increased collaboration with Russia\'s Arctic region?',
  options: [
  'China',
  'India',
  'Brazil',
  'South Africa'
  ],
  correctAnswerIndex: 1,
  explanation:
  'India\'s collaboration with Russia\'s Arctic region is on the rise, evidenced by its substantial contribution to cargo handled at Murmansk port.'
  ),
  Question(
  questionText:
  'Which facility did Russia launch for Indian travellers from August 1?',
  options: [
  'Regular visa facility',
  'Emergency visa facility',
  'E-visa facility',
  'Work visa facility'
  ],
  correctAnswerIndex: 2,
  explanation:
  'Russia has launched an e-visa facility for Indians from August 1, allowing travellers to the country to bypass the hassles of obtaining a regular visa.'
  ),
  Question(
  questionText:
  'What is the extraordinary tale from the Amazon rainforest involving the Piripkura tribe?',
  options: [
  'Discovery of a new species',
  'Forest conservation efforts',
  'Piripkura tribe revolt',
  'Struggle against modern encroachment'
  ],
  correctAnswerIndex: 3,
  explanation:
  'Deep within the heart of the Amazon rainforest lies an extraordinary tale involving the Piripkura tribe, highlighting their unyielding struggle against the encroachment of the modern world.'
  ),
  Question(
  questionText:
  'Who has been elected as the new prime minister of Thailand?',
  options: [
  'Prayuth Chan-o-cha',
  'Srettha Thavisin',
  'Anwar Ibrahim',
  'Yingluck Shinawatra'
  ],
  correctAnswerIndex: 1,
  explanation:
  'Thai property tycoon Srettha Thavisin has been elected as the new prime minister of Thailand following a decisive win in a parliamentary vote.'
  ),
  Question(
  questionText:
  'What recent approval did the U.S. FDA grant for the prevention of RSV-associated LRTD in infants?',
  options: [
  'COVID-19 vaccine',
  'RSV vaccine',
  'Flu vaccine',
  'Measles vaccine'
  ],
  correctAnswerIndex: 1,
  explanation:
  'The U.S. Food and Drug Administration (FDA) recently granted approval to the first vaccine created to forestall Respiratory Syncytial Virus (RSV)-associated Lower Respiratory Tract Disease (LRTD) and severe cases in infants spanning birth to 6 months.'
  ),
  Question(
  questionText:
  'What global impact has the African Swine Fever (ASF) virus had since its resurgence?',
  options: [
  'Economic recession',
  'Pandemic resurgence',
  'Increase in agricultural productivity',
  'Loss of pig populations'
  ],
  correctAnswerIndex: 3,
  explanation:
  'Since its resurgence in January 2021, the highly contagious African Swine Fever (ASF) virus has spread across the globe, causing over 1.5 million pig losses within this timeframe.'
  ),
  Question(
  questionText:
  'What expansion has the BRICS alliance announced in August 2023?',
  options: [
  'Economic sanctions',
  'Military alliance',
  'Inclusion of new member countries',
  'Dissolution of the alliance'
  ],
  correctAnswerIndex: 2,
  explanation:
  'In a significant geopolitical development, the BRICS alliance announced the inclusion of six new member countries, reshaping the dynamics of global cooperation.'
  ),
  Question(
  questionText:
  'What cutting-edge unmanned aerial technology did Iran introduce in August 2023?',
  options: [
  'Predator drone',
  'Reaper drone',
  'Mohajer-10 drone',
  'Global Hawk drone'
  ],
  correctAnswerIndex: 2,
  explanation:
  'In a significant event attended by senior Iranian officials, the Islamic Republic introduced its latest achievement in unmanned aerial technology – the Mohajer-10 drone.'
  ),
  Question(
  questionText:
  'Who became the first Indian Prime Minister to visit Greece in 40 years?',
  options: [
  'Indira Gandhi',
  'Narendra Modi',
  'Manmohan Singh',
  'Atal Bihari Vajpayee'
  ],
  correctAnswerIndex: 1,
  explanation:
  'Indian Prime Minister Narendra Modi embarked on a landmark visit to Greece, becoming the first Indian Prime Minister to set foot in the country in 40 years.'
  ),

  Question(
  questionText: "What campaign did Prime Minister Narendra Modi announce in the run-up to Independence Day?",
  options: [
  "Namoh 108",
  "PM-eBus Sewa",
  "Meri Mati Mera Desh",
  "Unmesha International Literature Festival"
  ],
  correctAnswerIndex: 2,
  explanation: "Prime Minister Narendra Modi announced the launch of the 'Meri Mati Mera Desh' campaign in the run-up to Independence Day to honor the martyred bravehearts of the country."
  ),

  Question(
  questionText: "What initiative was inaugurated at the Akhil Bharatiya Shiksha Samagam 2023?",
  options: [
  "National Deep Tech Startup Policy",
  "Resource Efficiency Circular Economy Industry Coalition",
  "ULLAS: Nav Bharat Saksharta Karyakram",
  "Bharat New Car Assessment Programme"
  ],
  correctAnswerIndex: 2,
  explanation: "The ULLAS: Nav Bharat Saksharta Karyakram was inaugurated at the Akhil Bharatiya Shiksha Samagam 2023, aimed at revolutionizing education and literacy in India by creating a comprehensive learning ecosystem."
  ),

  Question(
  questionText: "Which ministry launched the Resource Efficiency Circular Economy Industry Coalition (RECEIC)?",
  options: [
  "Ministry of Home Affairs",
  "Union Education Ministry",
  "Finance Ministry",
  "Union Minister Bhupender Yadav"
  ],
  correctAnswerIndex: 3,
  explanation: "Union Minister Bhupender Yadav, in line with India’s G20 Presidency, launched the Resource Efficiency Circular Economy Industry Coalition (RECEIC) in Chennai to promote resource efficiency and circular economy practices worldwide."
  ),

  Question(
  questionText: "Which state emerges with the highest average assets per MLA and the highest number of billionaire MLAs?",
  options: [
  "Uttar Pradesh",
  "Karnataka",
  "Maharashtra",
  "Delhi"
  ],
  correctAnswerIndex: 1,
  explanation: "According to the Association for Democratic Reforms (ADR) analysis, Karnataka emerges as the state with the highest average assets per MLA and the highest number of billionaire MLAs."
  ),

  Question(
  questionText: "What does the Mines and Minerals (Development and Regulation) Amendment Bill, 2023 enable?",
  options: [
  "Privatization of all mining operations",
  "Mining operations for all minerals",
  "Mining operations for atomic minerals and deep-seated minerals",
  "Ban on mining operations"
  ],
  correctAnswerIndex: 2,
  explanation: "The Mines and Minerals (Development and Regulation) Amendment Bill, 2023, enables the private sector to undertake mining operations for six out of 12 atomic minerals, including lithium, as well as deep-seated minerals like gold and silver."
  ),

  Question(
  questionText: "What did the Union Education Ministry constitute on August 2nd?",
  options: [
  "National Deep Tech Startup Policy (NDTSP) Consortium",
  "Expert Panel for anti-discrimination guidelines",
  "Unmesha International Literature Festival",
  "Rajmargyatra mobile application"
  ],
  correctAnswerIndex: 1,
  explanation: "The Union Education Ministry constituted an Expert Panel on August 2nd to revise anti-discrimination guidelines with respect to the Scheduled caste, ST, OBC, person with disabilities, and other minorities in higher educational institutions."
  ),

  Question(
  questionText: "What was unveiled by the National Deep Tech Startup Policy (NDTSP) Consortium?",
  options: [
  "Draft National Deep Tech Startup Policy",
  "Rajmargyatra mobile application",
  "Government of National Capital Territory of Delhi (Amendment) Bill, 2023",
  "National New Car Assessment Programme (NCAP)"
  ],
  correctAnswerIndex: 0,
  explanation: "The National Deep Tech Startup Policy (NDTSP) Consortium unveiled the Draft National Deep Tech Startup Policy for public consultation, seeking to strengthen the Indian deep tech startup ecosystem."
  ),

  Question(
  questionText: "What festivals were commenced by the President of India in Bhopal?",
  options: [
  "Holi and Diwali festivals",
  "International Literature Festival and Folk and Tribal Performing Arts Festival",
  "Navratri and Durga Puja",
  "Christmas and New Year celebrations"
  ],
  correctAnswerIndex: 1,
  explanation: "The President of India commenced the 'Unmesha' International Literature Festival and the 'Utkarsh' Festival of Folk and Tribal Performing Arts in Bhopal, Madhya Pradesh, organized by the Sahitya Akademi and Sangeet Natak Akademi, respectively."
  ),

  Question(
  questionText: "What significant step did the National Highways Authority of India (NHAI) take to improve the highway user experience?",
  options: [
  "Introduction of 'Rajmargyatra' mobile application",
  "Privatization of national highways",
  "Construction of new highways",
  "Ban on highway travel"
  ],
  correctAnswerIndex: 0,
  explanation: "The National Highways Authority of India (NHAI) introduced the 'Rajmargyatra' mobile application to provide comprehensive information and efficient complaint redressal for national highway users, aiming to make travel safer and more convenient."
  ),

  Question(
  questionText: "What bill was passed by the Lok Sabha regarding the control of services in Delhi?",
  options: [
  "Government of National Capital Territory of Delhi (Amendment) Bill, 2023",
  "Mines and Minerals (Development and Regulation) Amendment Bill, 2023",
  "Anti-discrimination guidelines bill",
  "Deep Tech Startup Policy Bill"
  ],
  correctAnswerIndex: 0,
  explanation: "The Lok Sabha passed the Government of National Capital Territory of Delhi (Amendment) Bill, 2023, replacing the ordinance on control of services in Delhi, which was met with protests and a walkout by some Opposition parties."
  ),

  Question(
  questionText: "Which two oil sector companies were elevated to the Maharatna and Navratna categories?",
  options: [
  "ONGC and Indian Oil Corporation",
  "Oil India and ONGC Videsh",
  "Reliance Industries and BPCL",
  "HPCL and GAIL"
  ],
  correctAnswerIndex: 1,
  explanation: "The Finance Ministry of India elevated Oil India to the esteemed Maharatna category and ONGC Videsh to the Navratna category, granting them increased autonomy for investment, joint venture establishment, and other financial decisions."
  ),

  Question(
  questionText: "What new visa category was introduced by the Ministry of Home Affairs for foreign nationals seeking treatment under Ayush systems?",
  options: [
  "Medical Visa",
  "Tourist Visa",
  "Business Visa",
  "Ayush (AY) Visa"
  ],
  correctAnswerIndex: 3,
  explanation: "The Ministry of Home Affairs introduced a new Ayush (AY) visa for foreign nationals seeking treatment under Ayush systems/Indian systems of medicine like therapeutic care, wellness, and Yoga."
  ),

  Question(
  questionText: "How many entities have been recognized under the Startup India initiative since its launch in 2016?",
  options: [
  "50,000 entities",
  "78,234 entities",
  "98,911 entities",
  "120,000 entities"
  ],
  correctAnswerIndex: 2,
  explanation: "The Department for Promotion of Industry and Internal Trade (DPIIT) has recognized 98,911 entities under the Startup India initiative since its launch on January 16, 2016."
  ),

  Question(
  questionText: "What import restrictions were postponed by the Directorate General of Foreign Trade (DGFT)?",
  options: [
  "Import of luxury goods",
  "Import of agricultural products",
  "Import of laptops, tablets, and personal computers",
  "Import of automobiles"
  ],
  correctAnswerIndex: 2,
  explanation: "The DGFT announced the postponement of the licensing mandate for the import of laptops, tablets, and personal computers in India until November 1, 2023, due to security concerns and to boost domestic manufacturing."
  ),

  Question(
  questionText: "What application has been developed by the National Commission for Protection of Child Rights (NCPCR) for real-time monitoring of Child Care Institutions?",
  options: [
  "MASI",
  "FloodWatch",
  "Rajmargyatra",
  "SuSwagatam"
  ],
  correctAnswerIndex: 0,
  explanation: "The NCPCR has developed the 'MASI' application for real-time monitoring of Child Care Institutions (CCIs) and their inspection process across the country."
  ),

  Question(
  questionText: "How many years have passed since the abrogation of Article 370 in Jammu and Kashmir?",
  options: [
  "1 year",
  "2 years",
  "3 years",
  "4 years"
  ],
  correctAnswerIndex: 3,
  explanation: "As of August 5, 2023, it has been four years since the abrogation of Article 370 in Jammu and Kashmir."
  ),

  Question(
  questionText: "What milestone has the Atal Pension Yojana (APY) scheme achieved?",
  options: [
  "3 years of implementation",
  "5 crore subscribers",
  "10 years of implementation",
  "Rs 1.39 lakh crore budget"
  ],
  correctAnswerIndex: 1,
  explanation: "The Atal Pension Yojana (APY) scheme has reached a remarkable milestone as it completes eight years of successful implementation, gathering an impressive enrollment of over 5.25 crore subscribers."
  ),

  Question(
  questionText: "What announcement did Union Health & Family Welfare Minister, Mansukh Mandaviya, make during the inauguration of the second phase of the Annual Nationwide Mass Drug Administration (MDA) initiative?",
  options: [
  "Elimination of Lymphatic Filariasis by 2027",
  "Launch of a new healthcare program",
  "Introduction of a new vaccine",
  "Expansion of medical facilities"
  ],
  correctAnswerIndex: 0,
  explanation: "Union Health & Family Welfare Minister, Mansukh Mandaviya, announced the goal to eliminate Lymphatic Filariasis by 2027 during the inauguration of the second phase of the Annual Nationwide Mass Drug Administration (MDA) initiative."
  ),

  Question(
  questionText: "What did Chief Justice of India (CJI) D.Y Chandrachud unveil to modernize and streamline access to justice?",
  options: [
  "Rajmargyatra mobile application",
  "MASI application",
  "FloodWatch mobile application",
  "SuSwagatam portal"
  ],
  correctAnswerIndex: 3,
  explanation: "Chief Justice of India (CJI) D.Y Chandrachud unveiled the 'SuSwagatam' portal to offer a convenient way for advocates, litigants, and citizens to secure QR code-based ePasses, granting them entry to the esteemed halls of the Supreme Court."
  ),

  Question(
  questionText: "What significant step did the Ministry of Statistics and Programme Implementation (MoSPI) take regarding economic statistics?",
  options: [
  "Introduction of anti-discrimination guidelines",
  "Launch of a new economic survey",
  "Replacement of Standing Committee on Economic Statistics with Standing Committee on Statistics",
  "Introduction of National Deep Tech Startup Policy"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Statistics and Programme Implementation (MoSPI) replaced the existing Standing Committee on Economic Statistics (SCES) with a more comprehensive entity called the Standing Committee on Statistics (SCoS) to review the framework and outcomes of all surveys conducted under the National Statistical Office (NSO)."
  ),

  Question(
  questionText: "Who flagged off the 'Har Ghar Tiranga' motorcycle rally?",
  options: [
  "Prime Minister Narendra Modi",
  "President Droupadi Murmu",
  "Union Home Minister Amit Shah",
  "Vice President Jagdeep Dhankhar"
  ],
  correctAnswerIndex: 3,
  explanation: "Vice President Jagdeep Dhankhar flagged off the 'Har Ghar Tiranga' motorcycle rally at Pragati Maidan in Delhi as part of the Azadi Ka Amrit Mahotsav (AKAM) initiative, aiming to inspire individuals to proudly display the national flag at their residences."
  ),

  Question(
  questionText: "What is India's current share of natural gas within its energy mix, and what is the government's target for 2030?",
  options: [
  "Current: 10%, Target: 20%",
  "Current: 15%, Target: 25%",
  "Current: 6%, Target: 15%",
  "Current: 5%, Target: 10%"
  ],
  correctAnswerIndex: 2,
  explanation: "India is embarking on a journey to enhance its current 6% share of natural gas within its energy mix to a robust 15% by the year 2030, as announced by Rameswar Teli, the Minister of State in the Ministry of Petroleum & Natural Gas."
  ),

  Question(
  questionText: "What three new bills were introduced by Union Home Minister Amit Shah in Lok Sabha?",
  options: [
  "Anti-discrimination bill, Medical visa bill, Direct Benefit Transfer (DBT) bill",
  "Bharatiya Sakshya Bill, Deep Tech Startup Policy Bill, Direct Benefit Transfer (DBT) bill",
  "Government of National Capital Territory of Delhi (Amendment) Bill, Bharatiya Sakshya Bill, Direct Benefit Transfer (DBT) bill",
  "Bharatiya Sakshya Bill, Indian Evidence Act (Reform) Bill, Direct Benefit Transfer (DBT) bill"
  ],
  correctAnswerIndex: 2,
  explanation: "Union Home Minister Amit Shah introduced three new bills in Lok Sabha, including the Bharatiya Sakshya Bill, which aims to replace the outdated Indian Evidence Act of 1872."
  ),

  Question(
  questionText: "Who will be conferred with the first Maharashtra Udyog Ratna Award by the Maharashtra Government?",
  options: [
  "Ratan Tata",
  "Uday Samant",
  "Yogi Adityanath",
  "M.K. Stalin"
  ],
  correctAnswerIndex: 0,
  explanation: "Tata group Chairman Ratan Tata will be conferred with the first Maharashtra Udyog Ratna Award by the Maharashtra Government, as announced by state industries minister Uday Samant."
  ),

  Question(
  questionText: "What initiative did Uttar Pradesh CM Yogi Adityanath launch to ensure access to government schemes?",
  options: [
  "Amrit Brikshya Andolan",
  "Chief Minister’s Solar Mission",
  "Command Centre and CM Dashboard",
  "Rhino Task Force"
  ],
  correctAnswerIndex: 2,
  explanation: "Uttar Pradesh CM Yogi Adityanath launched the Command Centre and CM Dashboard to ensure that the needy and deserving have access to the benefits of government schemes and services."
  ),

  Question(
  questionText: "Which Taiwanese company pledged to invest ₹1,600 crore in establishing a manufacturing facility in Tamil Nadu?",
  options: [
  "Foxconn Technology Group",
  "Apple Inc.",
  "M.K. Stalin",
  "Chief Minister Bhupendra Patel"
  ],
  correctAnswerIndex: 0,
  explanation: "Foxconn Technology Group, a key supplier to Apple Inc., pledged to invest ₹1,600 crore in establishing a manufacturing facility in Kancheepuram district, Tamil Nadu, in the presence of Chief Minister M.K. Stalin."
  ),

  Question(
  questionText: "What is the name of the ambitious initiative announced by the Assam government to enhance its forest cover?",
  options: [
  "Amrit Brikshya Andolan",
  "Sinh Suchna",
  "Rhino Task Force",
  "Biodiversity Atlas of Mayem Village"
  ],
  correctAnswerIndex: 0,
  explanation: "The Assam government announced the 'Amrit Brikshya Andolan,' an ambitious initiative to plant 1 crore saplings in a single day in September, contributing to enhancing its forest cover and combating climate change."
  ),

  Question(
  questionText: "Which high court ordered the resumption of the caste-based survey in Bihar?",
  options: [
  "Patna High Court",
  "Delhi High Court",
  "Bombay High Court",
  "Madras High Court"
  ],
  correctAnswerIndex: 0,
  explanation: "The Patna High Court ordered the resumption of the caste-based survey in Bihar, which was initially started by Patna DM Chandrashekhar in Ward 10, Phulwarisharif, Patna."
  ),

  Question(
  questionText: "What festival does the Tamil Cultural community celebrate as an auspicious occasion to honor the monsoon season and soil fertility?",
  options: [
  "Diwali",
  "Navratri",
  "Aadi Perukku",
  "Pongal"
  ],
  correctAnswerIndex: 2,
  explanation: "The Tamil Cultural community celebrates 'Aadi Perukku,' also known as Pathinettam Perukku, as an auspicious festival to honor the monsoon season and the fertility of the soil."
  ),

  Question(
  questionText: "Which state expanded the coverage of the Social Security Scheme to 50 more categories of unorganized workers?",
  options: [
  "Goa",
  "Maharashtra",
  "Odisha",
  "Uttar Pradesh"
  ],
  correctAnswerIndex: 0,
  explanation: "The Odisha Government expanded the coverage of the Social Security Scheme to 50 more categories of unorganized workers, including delivery boys, boatmen, and photographers."
  ),

  Question(
  questionText: "How much amount has NABARD sanctioned to the Rajasthan government under the Rural Infrastructure Development Fund (RIDF) for the financial year 2023-24?",
  options: [
  "Rs 1,000 crore",
  "Rs 1,500 crore",
  "Rs 1,750 crore",
  "Rs 1,974.07 crore"
  ],
  correctAnswerIndex: 3,
  explanation: "NABARD has sanctioned a total amount of Rs 1,974.07 crore to the Rajasthan government under the Rural Infrastructure Development Fund (RIDF) for the financial year 2023-24, aiming to uplift the living conditions of rural communities and drive economic growth."
  ),

  Question(
  questionText: "What is the purpose of the public hearing to be conducted by TNPCB regarding Adani group’s Kattupalli Port in Tiruvallur district?",
  options: [
  "Introduction of a new economic survey",
  "Expansion of the Kattupalli Port",
  "National New Car Assessment Programme (NCAP)",
  "Proposed expansion of the Kattupalli Port"
  ],
  correctAnswerIndex: 3,
  explanation: "The Tamil Nadu Pollution Control Board (TNPCB) is set to conduct a public hearing on the proposed expansion of Adani group’s Kattupalli Port in Tiruvallur district."
  ),

  Question(
  questionText: "What task force will be constituted by the Bihar government for suggesting measures for the reintroduction of rhino conservation scheme?",
  options: [
  "Rhino Conservation Task Force",
  "Wildlife Protection Task Force",
  "Biodiversity Task Force",
  "Rhino Task Force"
  ],
  correctAnswerIndex: 3,
  explanation: "The Bihar government will constitute the 'Rhino Task Force' for suggesting measures for the reintroduction of the rhino conservation scheme in the 'Valmiki Tiger Reserve' in West Champaran district."
  ),

  Question(
  questionText: "Which think tank and government have entered into a Memorandum of Understanding (MoU) to establish a knowledge partnership?",
  options: [
  "Bharti Institute of Public Policy and Karnataka Government",
  "Tata Institute of Social Sciences (TISS) and Maharashtra Government",
  "Indian School of Business (ISB) and Government of Goa",
  "Observer Research Foundation (ORF) and Madhya Pradesh Government"
  ],
  correctAnswerIndex: 2,
  explanation: "The Bharti Institute of Public Policy, a think tank under the Indian School of Business (ISB), and the Government of Goa have entered into a Memorandum of Understanding (MoU) to establish a knowledge partnership for advancing evidence-based policy formulation and fostering impactful governance."
  ),

  Question(
  questionText: "Which Indian state has witnessed a remarkable increase in the elephant population, according to the Asian Elephant population and demography report 2023?",
  options: [
  "Kerala",
  "Karnataka",
  "Assam",
  "Maharashtra"
  ],
  correctAnswerIndex: 1,
  explanation: "According to the Asian Elephant population and demography report 2023, Karnataka has witnessed a remarkable increase in the elephant population, surging from an estimated 6,049 in 2017 to 6,395, making it the highest elephant-populated region in the country."
  ),

  Question(
  questionText: "What resolution did the Kerala Legislative Assembly pass regarding the name of the state?",
  options: [
  "Kerala Namakaranam Resolution",
  "Kerala Identity Resolution",
  "Keralam Naming Resolution",
  "Kerala Name Change Resolution"
  ],
  correctAnswerIndex: 2,
  explanation: "The Kerala Legislative Assembly passed a resolution requesting the Central government to change the name of the state from 'Kerala' to 'Keralam' as a move aimed at embracing its cultural and linguistic heritage."
  ),

  Question(
  questionText: "What mobile application was introduced by Gujarat Chief Minister Bhupendra Patel to celebrate World Lion Day?",
  options: [
  "Sinh Suchna",
  "Digi Yatra",
  "Chief Minister’s Solar Mission",
  "My Bengal, Addiction-Free Bengal"
  ],
  correctAnswerIndex: 0,
  explanation: "Gujarat Chief Minister Bhupendra Patel introduced a new mobile application called 'Sinh Suchna' to celebrate World Lion Day. The app is a significant step towards modern wildlife conservation, enabling effective monitoring of lion movements."
  ),

  Question(
  questionText: "Which Indian state registered the highest count of cancer cases, according to the Indian Council of Medical Research Cancer Registry data?",
  options: [
  "Maharashtra",
  "Uttar Pradesh",
  "Gujarat",
  "Madhya Pradesh"
  ],
  correctAnswerIndex: 1,
  explanation: "Uttar Pradesh registered the highest count of cancer cases in India during the year 2022, with an astonishing 210,000 new cases documented, as per the Indian Council of Medical Research Cancer Registry data."
  ),

  Question(
  questionText: "What initiative was launched by Meghalaya Chief Minister Conrad K Sangma to harness renewable energy?",
  options: [
  "Meghalaya Green Energy Initiative",
  "Chief Minister’s Solar Mission",
  "Renewable Meghalaya Campaign",
  "Meghalaya Clean Energy Project"
  ],
  correctAnswerIndex: 1,
  explanation: "Meghalaya Chief Minister Conrad K Sangma launched the Chief Minister’s Solar Mission, a pioneering initiative aimed at ushering in a new era of green progress for the northeastern hill state."
  ),

  Question(
  questionText: "What groundbreaking initiative was inaugurated by Goa Chief Minister Pramod Sawant at the Goa Medical College?",
  options: [
  "Free Health Checkup Program",
  "Free In vitro fertilization (IVF) treatment",
  "Childcare Services Enhancement Project",
  "Medical College Expansion Project"
  ],
  correctAnswerIndex: 1,
  explanation: "Goa Chief Minister Pramod Sawant inaugurated the groundbreaking initiative of introducing free In vitro fertilization (IVF) treatment at the Goa Medical College (GMC), along with assisted reproductive technology (ART) and intrauterine insemination (IUI)."
  ),

  Question(
  questionText: "What will be established by Tamil Nadu Industrial Development Corporation (TIDCO) under the Tamil Nadu Defence Industrial Corridor (TNDIC)?",
  options: [
  "Robotics Research Center",
  "India’s first Unmanned Aerial Systems (Drone) Common Testing Centre",
  "Nuclear Research Facility",
  "Space Exploration Hub"
  ],
  correctAnswerIndex: 1,
  explanation: "Tamil Nadu Industrial Development Corporation (TIDCO), overseeing the Tamil Nadu Defence Industrial Corridor (TNDIC), is set to establish India’s first Unmanned Aerial Systems (Drone) Common Testing Centre at an outlay of Rs 45 crore."
  ),

  Question(
  questionText: "What amount has the Asian Development Bank (ADB) sanctioned as a loan for early childhood development and maternal mental health in Meghalaya?",
  options: [
  "USD 20 million",
  "USD 30 million",
  "USD 40.5 million",
  "USD 50 million"
  ],
  correctAnswerIndex: 2,
  explanation: "The Asian Development Bank (ADB) has sanctioned a USD 40.5 million loan for the northeastern Indian state of Meghalaya, aiming to fortify both home-based and center-based childcare services through the establishment and enhancement of daycare centers known as Anganwadi centers."
  ),

  Question(
  questionText: "What groundbreaking initiative was unveiled by Goa’s Chief Minister Pramod Sawant to celebrate India’s rich socio-cultural heritage?",
  options: [
  "Biodiversity Atlas of Mayem Village",
  "Digital India Campaign",
  "Heritage Conservation Fund",
  "Cultural Preservation Project"
  ],
  correctAnswerIndex: 0,
  explanation: "Goa’s Chief Minister Pramod Sawant unveiled the 'Biodiversity Atlas of Mayem Village' as a significant step towards preserving and celebrating India’s rich socio-cultural heritage."
  ),

  Question(
  questionText: "What campaign was launched by President Droupadi Murmu at Raj Bhavan to address the issue of drug usage among the youth?",
  options: [
  "Say No to Drugs",
  "Drug-Free Bengal",
  "My Bengal, Addiction-Free Bengal",
  "Anti-Drug Drive"
  ],
  correctAnswerIndex: 2,
  explanation: "President Droupadi Murmu launched the 'My Bengal, Addiction-Free Bengal' campaign, organized by the Brahma Kumaris, to address the prevalent issue of drug usage among the youth."
  ),

  Question(
  questionText: "Which airport became the first in the Northeastern region of India to introduce the 'Digi Yatra' facility?",
  options: [
  "Guwahati Airport",
  "Imphal Airport",
  "Agartala Airport",
  "Lokpriya Gopinath Bordoloi International Airport (LBBI)"
  ],
  correctAnswerIndex: 3,
  explanation: "Guwahati’s Lokpriya Gopinath Bordoloi International Airport (LBBI) became the first airport in the Northeastern region of India to introduce the 'Digi Yatra' facility, revolutionizing the air travel experience."
  ),

  Question(
  questionText: "What significant project did Tamil Nadu Chief Minister M K Stalin lay the foundation stone for to resolve the water crisis in Chennai city?",
  options: [
  "Chennai Water Revitalization Project",
  "South East Asia’s Largest Water Desalination Project",
  "Chennai Water Connectivity Scheme",
  "Tamil Nadu Water Innovation Initiative"
  ],
  correctAnswerIndex: 1,
  explanation: "Tamil Nadu Chief Minister M K Stalin laid the foundation stone for what is set to become South East Asia’s largest water desalination project, a significant step towards resolving the water crisis in Chennai city."
  ),

  Question(
  questionText: "What cultural celebration took place in Kerala from August 20 to August 31, commemorating the return of King Mahabali?",
  options: [
  "Navratri",
  "Onam",
  "Diwali",
  "Pongal"
  ],
  correctAnswerIndex: 1,
  explanation: "The enchanting festivities of Onam, a significant cultural celebration in the state of Kerala, graced the calendar from August 20 to August 31 this year. Thiru-Onam or Thiruvonam celebrations commemorate the return of the revered King Mahabali, also known as Maveli."
  ),

  Question(
  questionText: "What milestone did the Pradhan Mantri MUDRA Yojana (PMMY) achieve in FY 2022-23?",
  options: [
  "Sanctioning over 5 crore loans",
  "Sanctioning over 6 crore loans",
  "Sanctioning over 7 crore loans",
  "Sanctioning over 8 crore loans"
  ],
  correctAnswerIndex: 1,
  explanation: "In Financial Year (FY) 2022-23, the Pradhan Mantri MUDRA Yojana (PMMY) achieved the significant milestone of sanctioning over 6.23 crore loans, as announced by the Union Minister for State for Finance, Dr. Bhagwat Kisanrao Karad, during a Lok Sabha session."
  ),

  Question(
  questionText: "What is the primary goal of the National Mission on Libraries initiated by the Ministry of Culture?",
  options: [
  "Modernization of cultural heritage sites",
  "Digital interconnection of libraries",
  "Promotion of traditional art forms",
  "Conservation of archaeological sites"
  ],
  correctAnswerIndex: 1,
  explanation: "The National Mission on Libraries, an initiative of the Ministry of Culture, aims at the modernization and digital interconnection of almost 9,000 libraries throughout India. The primary goal is to grant readers easy access to a vast array of books and information, catering to a diverse audience."
  ),

  Question(
  questionText: "Under which new division have Project Tiger and Project Elephant been merged?",
  options: [
  "Wildlife Conservation Division",
  "Biodiversity and Conservation Division",
  "Project Tiger and Elephant Division",
  "Eco Preservation Division"
  ],
  correctAnswerIndex: 2,
  explanation: "The Union Ministry of Environment, Forest and Climate Change (MoEFCC) has merged Project Tiger and Project Elephant under a new division called 'Project Tiger and Elephant Division.' This move was made to streamline and enhance conservation efforts, and it was commended by the Prime Minister on Project Tiger's 50th anniversary."
  ),

  Question(
  questionText: "What is the scholarship programme launched under the YASASVI Scheme by the National Testing Agency (NTA)?",
  options: [
  "Prime Minister's Scholarship Scheme",
  "National Merit Scholarship Scheme",
  "PM Young Achievers Scholarship Award Scheme",
  "NTA Scholarship for Excellence"
  ],
  correctAnswerIndex: 2,
  explanation: "The NTA has started the registration procedure for the scholarship entrance examination 2023 launched under the scheme of PM Young Achievers Scholarship Award Scheme for Vibrant India (YASASVI). Eligible applicants can apply for this scholarship programme through the NTA's website."
  ),

  Question(
  questionText: "Which technology platform has been selected by the Ministry of Education for the modernization of DIKSHA?",
  options: [
  "Microsoft Azure",
  "Google Cloud Platform",
  "Oracle Cloud Infrastructure",
  "Amazon Web Services"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Education has selected Oracle Cloud Infrastructure (OCI) to modernize the national education technology platform Digital Infrastructure for Knowledge Sharing (DIKSHA). This migration aims to make DIKSHA more accessible and reduce its IT costs, benefiting millions of students, teachers, and collaborators across the country."
  ),

  Question(
  questionText: "What is Vivad se Vishwas 2.0, recently launched by the Department of Expenditure?",
  options: [
  "Tax exemption scheme",
  "Dispute resolution scheme",
  "Tax evasion investigation scheme",
  "Contractual Disputes scheme"
  ],
  correctAnswerIndex: 3,
  explanation: "The Department of Expenditure under the Ministry of Finance has launched Vivad se Vishwas 2.0, also known as the Contractual Disputes scheme. This scheme aims to settle long-standing contractual disputes involving the government and government undertakings, providing a resolution framework for such disputes."
  ),

  Question(
  questionText: "Under which scheme is the redevelopment of 508 railway stations across India being carried out?",
  options: [
  "Smart Cities Mission",
  "Amrit Bharat Scheme",
  "Swachh Bharat Abhiyan",
  "Make in India Initiative"
  ],
  correctAnswerIndex: 1,
  explanation: "Prime Minister Narendra Modi is set to virtually lay the foundation stone for the redevelopment of 508 railway stations across India on August 6. This ambitious project is executed under the Amrit Bharat Scheme, aiming to enhance passenger amenities and improve railway infrastructure with an estimated cost of ₹24,470 crore."
  ),

  Question(
  questionText: "What is the objective of the 'Shubhayatra' scheme launched by the State government of Kerala?",
  options: [
  "Promotion of tourism",
  "Financial support for farmers",
  "Financial support for overseas emigrants",
  "Development of transportation infrastructure"
  ],
  correctAnswerIndex: 2,
  explanation: "The State government of Kerala has launched the 'Shubhayatra' scheme, aiming to provide much-needed financial support to first-time overseas emigrants from Kerala. The scheme offers financial assistance of up to ₹2 lakh, a tax holiday for six months, and attractive interest subvention to help eligible candidates cover incidental expenses associated with overseas employment."
  ),

  Question(
  questionText: "What is the 'Naya Savera' scheme implemented by the Ministry to assist minority communities?",
  options: [
  "Scholarship Scheme",
  "Skill Development Scheme",
  "Free Coaching and Allied Scheme",
  "Financial Inclusion Scheme"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry implemented the 'Naya Savera' scheme, also known as the 'Free Coaching and Allied' scheme, to assist students/candidates belonging to six minority communities: Sikh, Jain, Muslim, Christian, Buddhist, and Parsi. The scheme provides special coaching for qualifying examinations, supporting educational aspirations."
  ),

  Question(
  questionText: "Who will head the all-women panel announced by Chief Justice of India, D.Y. Chandrachud, for addressing violence in Manipur?",
  options: [
  "Justice Gita Mittal",
  "Justice Indu Malhotra",
  "Justice R. Banumathi",
  "Justice S. Ravindra Bhat"
  ],
  correctAnswerIndex: 0,
  explanation: "Chief Justice of India, D.Y. Chandrachud, announced the formation of an all-women panel to bring healing and relief to the violence-stricken region in Manipur. The panel will consist of three former High Court judges, with Justice Gita Mittal as its head."
  ),

  Question(
  questionText: "What is the flagship initiative initiated by the Chhattisgarh government for supporting cattle rearers, women’s self-help groups, and 'gauthan' committees?",
  options: [
  "Godhan Nyay Yojna (GNY)",
  "Pradhan Mantri Fasal Bima Yojna (PMFBY)",
  "Swachh Bharat Abhiyan",
  "Make in Chhattisgarh Initiative"
  ],
  correctAnswerIndex: 0,
  explanation: "As part of the flagship Godhan Nyay Yojna (GNY) initiated by the Chhattisgarh government, Chief Minister Bhupesh Baghel conducted online transfers exceeding Rs 15 crore to support cattle rearers, women’s self-help groups (SHGs), and 'gauthan' committees."
  ),

  Question(
  questionText: "What is 'Bhu-Vision' (KRISHI-RASTAA Soil Testing System), recently launched in India?",
  options: [
  "Smart Agriculture Platform",
  "Agricultural Subsidy Scheme",
  "Soil Health Monitoring System",
  "Crop Insurance Initiative"
  ],
  correctAnswerIndex: 2,
  explanation: "Bhu-Vision, also known as KRISHI-RASTAA Soil Testing System, is a revolutionary IoT-based automated soil testing and agronomy advisory platform recently launched in India. Developed by ICAR-IIRR and KrishiTantra, this system provides a smart, fast, easy, affordable, and accessible solution for soil testing and agronomy."
  ),

  Question(
  questionText: "What significant backlog of pending crop insurance claims was revealed under the Pradhan Mantri Fasal Bima Yojna (PMFBY)?",
  options: [
  "Rs. 1,500 crore",
  "Rs. 2,000 crore",
  "Rs. 2,500 crore",
  "Rs. 2,716.10 crore"
  ],
  correctAnswerIndex: 3,
  explanation: "According to recent data, a significant backlog of pending crop insurance claims totaling approximately Rs. 2,716.10 crore was revealed till 2021-22 under the Pradhan Mantri Fasal Bima Yojna (PMFBY). The maximum pendency of crop insurance claims is in Rajasthan, followed by Maharashtra and Gujarat."
  ),

  Question(
  questionText: "What is the 'Indira Gandhi Free Smartphone Yojana 2023' launched by Chief Minister Ashok Gehlot of Rajasthan?",
  options: [
  "Digital Literacy Program",
  "Free Smartphone Distribution Scheme",
  "Women Empowerment Initiative",
  "Youth Skill Development Program"
  ],
  correctAnswerIndex: 1,
  explanation: "Chief Minister Ashok Gehlot of Rajasthan has launched the 'Indira Gandhi Free Smartphone Yojana 2023.' This program provides free mobile phones, internet, and voice call services to women in the state, with the distribution of smartphones taking place from August 10 to August 30, 2023, prioritizing widows and divorced women."
  ),

  Question(
  questionText: "What is the objective of the 19-member committee formed by NCERT for textbook revision?",
  options: [
  "Enhancing cultural heritage education",
  "Aligning syllabi with National Curriculum Framework",
  "Promotion of vocational education",
  "Improving teacher training programs"
  ],
  correctAnswerIndex: 1,
  explanation: "The National Council of Educational Research and Training (NCERT) has formed a 19-member committee responsible for aligning school syllabi, textbooks, teaching materials, and learning resources with the National Curriculum Framework (NCF). The committee's mandate covers Classes 3 to 12, aiming for a seamless transition from Classes 1 and 2 to subsequent grades."
  ),

  Question(
  questionText: "What scheme, announced by Prime Minister Narendra Modi, aims to bolster the livelihood prospects of traditional artisans and craftspeople?",
  options: [
  "Skill India Mission",
  "Vishwakarma Yojana",
  "Make in India Initiative",
  "Crafts Revival Scheme"
  ],
  correctAnswerIndex: 1,
  explanation: "Prime Minister Narendra Modi's announcement of the Vishwakarma Yojana has paved the way for a new scheme aimed at bolstering the livelihood prospects of traditional artisans and craftspeople. The Union Cabinet swiftly approved the scheme, demonstrating its commitment to promoting and preserving traditional skills and crafts."
  ),

  Question(
  questionText: "What is the Pradhan Mantri Uchchatar Shiksha Abhiyan (PM-USHA) introduced by the Ministry of Education aimed at?",
  options: [
  "Enhancing primary education",
  "Skill development for youth",
  "Improving higher education",
  "Financial inclusion for students"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Education has introduced the Pradhan Mantri Uchchatar Shiksha Abhiyan (PM-USHA), a central scheme aimed at enhancing access, equity, and excellence in higher education across States and Union Territories. However, the requirement for implementing the National Education Policy (NEP) 2020 and adopting certain academic criteria to avail funds has sparked controversy."
  ),

  Question(
  questionText: "What proactive step has the Directorate General of Civil Aviation (DGCA) taken towards promoting gender equality in the aviation sector?",
  options: [
  "Introduction of gender quotas",
  "Establishment of a women's wing",
  "Formation of a committee for gender parity",
  "Incentive scheme for women pilots"
  ],
  correctAnswerIndex: 2,
  explanation: "The DGCA in India has taken a proactive step towards promoting gender equality within the nation’s aviation sector. On August 10, 2023, the DGCA established a four-member committee composed of senior officers to devise strategies and recommendations aimed at achieving gender parity in the industry. The committee’s objective is to propose actionable measures that the DGCA can implement to foster gender equality in the aviation sector."
  ),

  Question(
  questionText: "What is the extended budget allocation for the Digital India project announced by the cabinet?",
  options: [
  "₹10,000 crore",
  "₹12,345 crore",
  "₹14,903 crore",
  "₹20,000 crore"
  ],
  correctAnswerIndex: 2,
  explanation: "In a significant move, the cabinet has given its nod to the extension of the Digital India project, allocating a substantial budget of ₹14,903 crore. Union Minister Ashwini Vaishnaw announced this decision, highlighting that the extended initiative will build upon the achievements of its previous iteration."
  ),

  Question(
  questionText: "What is the 'Lakhpati Didi' scheme announced by the Indian government?",
  options: [
  "Financial inclusion scheme for women",
  "Skill training program for women",
  "Universal basic income for women",
  "Economic empowerment scheme for women"
  ],
  correctAnswerIndex: 1,
  explanation: "In a significant move to empower women and foster economic growth, the Indian government has announced the 'Lakhpati Didi' scheme. The scheme aims to provide skill training to two crore women across the nation, expanding its reach and impact on a national scale."
  ),

  Question(
  questionText: "What is the objective of the Bhagwan Birsa Munda Jodaraste Scheme launched by the Maharashtra government?",
  options: [
  "Promoting tribal art and culture",
  "Enhancing healthcare services",
  "Improving education in tribal areas",
  "Enhancing connectivity for tribal villages"
  ],
  correctAnswerIndex: 3,
  explanation: "The Maharashtra government has taken a significant step towards enhancing connectivity and improving the lives of tribal communities in the state. The Bhagwan Birsa Munda Jodaraste Scheme aims to link all tribal villages"
  ),
  Question(
  questionText: "Which state inaugurated its first AI school, and who inaugurated it?",
  options: [
  "Telangana - K. Chandrashekar Rao",
  "Kerala - Ram Nath Kovind",
  "Maharashtra - Uddhav Thackeray",
  "Assam - Himanta Biswa Sarma"
  ],
  correctAnswerIndex: 1,
  explanation: "The state of Kerala introduced its first AI school situated at Santhigiri Vidyabhavan in Thiruvananthapuram. It was inaugurated by the Former President of India, Ram Nath Kovind. This inaugural ceremony marked the beginning of a new era in the educational domain, characterized by innovative technology and forward-looking pedagogical methods."
  ),

  Question(
  questionText: "What initiative did the National Health Authority (NHA) of India launch under the '100 Microsites' initiative?",
  options: [
  "National Digital Health Mission (NDHM)",
  "Ayushman Bharat Digital Mission (ABDM)",
  "Swasthya Suraksha Yojana (SSY)",
  "Pradhan Mantri Jan Arogya Yojana (PMJAY)"
  ],
  correctAnswerIndex: 1,
  explanation: "Under the '100 Microsites' initiative, the National Health Authority (NHA) of India unveiled the first Ayushman Bharat Digital Mission (ABDM) Microsite in Mizoram's capital city. This initiative is set to transform the healthcare sector by leveraging the advantages of digitalization."
  ),

  Question(
  questionText: "Which organizations collaborated to infuse the Ethics of AI into artificial intelligence systems?",
  options: [
  "Indian Council for Cultural Relations (ICCR) and Ministry of Electronics and Information Technology",
  "United Nations Educational, Scientific and Cultural Organization (UNESCO) and Information Technology, Electronics and Communications Department of Telangana",
  "National Institution for Transforming India (NITI Aayog) and Ministry of Science and Technology",
  "Indian Space Research Organisation (ISRO) and Ministry of Environment, Forest and Climate Change"
  ],
  correctAnswerIndex: 1,
  explanation: "The United Nations Educational, Scientific and Cultural Organization (UNESCO) and the Information Technology, Electronics and Communications (ITE&C) Department of the Government of Telangana forged a pioneering partnership to infuse the Ethics of AI into the very essence of artificial intelligence systems."
  ),

  Question(
  questionText: "What significant step has the Assam Environment and Forest Department taken towards environmental conservation?",
  options: [
  "Ban on single-use plastics",
  "Ban on plastic bags",
  "Ban on plastic water bottles above 1000 ml capacity",
  "Ban on plastic packaging"
  ],
  correctAnswerIndex: 2,
  explanation: "The Assam Environment and Forest Department has announced the ban on the use and production of plastic water bottles below 1000 ml capacity within the state. This transformative initiative, set to be enforced from October 2, 2023, reflects Assam’s commitment to combat plastic pollution and promote sustainable practices."
  ),

  Question(
  questionText: "What proposals did the Uttar Pradesh Cabinet approve under the leadership of Chief Minister Yogi Adityanath?",
  options: [
  "Infrastructure development projects",
  "Youth empowerment initiatives",
  "Education-related proposals",
  "Healthcare reforms"
  ],
  correctAnswerIndex: 2,
  explanation: "The Uttar Pradesh Cabinet, under the leadership of Chief Minister Yogi Adityanath, gave the green light to several important proposals, highlighting the government’s commitment to education and youth empowerment."
  ),

  Question(
  questionText: "Which city in India has adopted an Air Quality Early Warning System (AQEWS) developed by the Indian Institute of Tropical Meteorology (IITM)?",
  options: [
  "Delhi",
  "Mumbai",
  "Chennai",
  "Kolkata"
  ],
  correctAnswerIndex: 3,
  explanation: "The Indian city of Kolkata has taken a significant step forward by adopting an Air Quality Early Warning System (AQEWS), developed by the Indian Institute of Tropical Meteorology (IITM) based in Pune. This system offers both real-time air pollution data and forecasts to enhance readiness and facilitate measures to tackle escalating air pollution levels within the city."
  ),

  Question(
  questionText: "What bold step has the Assam cabinet taken towards governance and line department convergence?",
  options: [
  "Creation of new ministries",
  "Abolition of certain departments",
  "Creation of four new districts",
  "Decentralization of administrative powers"
  ],
  correctAnswerIndex: 2,
  explanation: "In a significant move towards enhancing decentralization of governance and improving the convergence of line departments, the Assam cabinet has created four new districts that were previously abolished last year in December. The newly formed districts are Hojai, Biswanath, Tamulpur, and Bajali."
  ),

  Question(
  questionText: "What is the purpose of the Khanan Prahari App introduced by the Indian government?",
  options: [
  "Wildlife conservation reporting",
  "Illegal mining reporting",
  "Air pollution monitoring",
  "Cybersecurity awareness"
  ],
  correctAnswerIndex: 1,
  explanation: "Illegal coal mining poses a significant risk to both the environment and the economy of India. In response to this issue, the government has introduced the Khanan Prahari App. This mobile application allows citizens to report any suspicious activities related to coal mining in their vicinity, contributing to the fight against this illegal practice."
  ),

  Question(
  questionText: "What announcements were made by Madhya Pradesh Chief Minister Shivraj Singh Chouhan regarding the Ladli Behna Scheme?",
  options: [
  "Increase in financial aid and job reservations",
  "Increase in financial aid and cooking gas subsidies",
  "35 percent reservation in government jobs and cooking gas subsidies",
  "35 percent reservation in government jobs and increase in financial aid"
  ],
  correctAnswerIndex: 2,
  explanation: "Madhya Pradesh Chief Minister Shivraj Singh Chouhan raised the financial aid given to women in the Ladli Behna Scheme from ₹1,000 to ₹1,250 per month. Additionally, he announced 35 percent reservation for women in government jobs and said cooking gas cylinders will be provided to women at ₹450 in August to mark ‘Sawan’."
  ),

  Question(
  questionText: "Which state emerged as the front-runner in attracting Foreign Direct Investment (FDI) in the first quarter of the fiscal year 2023-24?",
  options: [
  "Telangana",
  "Karnataka",
  "Delhi",
  "Maharashtra"
  ],
  correctAnswerIndex: 3,
  explanation: "In the first quarter of the fiscal year 2023-24, Maharashtra has emerged as the front-runner in attracting Foreign Direct Investment (FDI). Deputy Chief Minister Devendra Fadnavis proudly announced that the state secured the top position by attracting FDI amounting to Rs 36,634 crore. This noteworthy achievement places Maharashtra ahead of other prominent states like Delhi, Karnataka, and Telangana, whose cumulative FDI values trail behind."
  ),
  Question(
  questionText: "What noteworthy achievement has the Pradhan Mantri Jan Dhan Yojana (PMJDY) accomplished?",
  options: [
  "Crossed 9 years of successful implementation",
  "Reached 50 crore Jan Dhan accounts in less than 9 years",
  "Launched a comprehensive financial inclusion program",
  "Completed 50 crore transactions in a fiscal year"
  ],
  correctAnswerIndex: 1,
  explanation: "In an impressive achievement, the total number of Jan Dhan accounts in India has crossed the significant 50 crore mark within a span of fewer than 9 years. This successful initiative has brought about substantial changes in the nation’s financial landscape, according to an official statement from the finance ministry."
  ),

  Question(
  questionText: "What is the approved budget for the continuation of the North East Special Infrastructure Development Scheme (NESIDS) for the period 2022-2023 to 2025-2026?",
  options: [
  "Rs. 5000 crore",
  "Rs. 6000 crore",
  "Rs. 7000 crore",
  "Rs. 8139.50 crore"
  ],
  correctAnswerIndex: 3,
  explanation: "On August 21, 2023, the Ministry of Development of North Eastern Region announced the continuation of the North East Special Infrastructure Development Scheme (NESIDS) with an approved budget of Rs. 8139.50 crore for the period 2022-2023 to 2025-2026. This initiative aims to bolster infrastructure development, particularly in connectivity and social sectors, within the North Eastern States."
  ),

  Question(
  questionText: "What significant decision has the Ministry of Defence in India taken regarding the Defence Research and Development Organisation (DRDO)?",
  options: [
  "Increased funding for missile programs",
  "Launched a new technology park for DRDO",
  "Comprehensive revamp of DRDO beyond missile program",
  "Established a new research institute"
  ],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Defence in India has taken a significant decision to undertake a comprehensive revamp of the Defence Research and Development Organisation (DRDO). Long recognized for its delayed projects and cost overruns, the DRDO is now set to undergo a transformation to enhance its technological advancements beyond the missile program."
  ),

  Question(
  questionText: "What pioneering scheme is the Indian government set to launch from September 1 to promote fiscal responsibility and accountability?",
  options: [
  "Digital India project",
  "Ayushman Bharat Digital Mission",
  "Mera Bill Mera Adhikar invoice incentive scheme",
  "Swachh Bharat Abhiyan"
  ],
  correctAnswerIndex: 2,
  explanation: "In a significant move towards enhancing transparency in financial transactions and empowering consumers, the Indian government is set to launch the ‘Mera Bill Mera Adhikar‘ invoice incentive scheme. This pioneering scheme, scheduled to commence from September 1, aims to promote the habit of requesting bills during purchases, thereby fostering a culture of fiscal responsibility and accountability."
  ),

  Question(
  questionText: "When was the Pradhan Mantri Jan Dhan Yojana (PMJDY) launched, and what milestone has it recently achieved?",
  options: [
  "Launched on August 15, 2014, and completed 10 years",
  "Launched on August 28, 2014, and crossed 50 crore Jan Dhan accounts in less than 9 years",
  "Launched on September 1, 2014, and completed 9 years",
  "Launched on August 28, 2013, and reached 40 crore Jan Dhan accounts in 10 years"
  ],
  correctAnswerIndex: 1,
  explanation: "The Pradhan Mantri Jan Dhan Yojana (PMJDY) – the National Mission for Financial Inclusion – completes nine years of successful implementation. Launched on August 28, 2014, by Prime Minister Shri Narendra Modi, the PMJDY stands as one of the most extensive financial inclusion initiatives globally, aimed at liberating the economically marginalized from a cycle of poverty."
  ),

  Question(
  questionText: "What collaboration took place between the Minister of State for Agriculture & Farmers Welfare, Sushri Shobha Karandlaje, and the Deputy Prime Minister and Minister for Agriculture & Food Industries of Moldova, Mr. Vladimir Bolea?",
  options: [
  "Bilateral trade agreement",
  "Agricultural technology exchange program",
  "Joint research initiative on climate change",
  "Meeting to discuss global food security"
  ],
  correctAnswerIndex: 0,
  explanation: "On July 31, 2023, a meeting was held between the Minister of State for Agriculture & Farmers Welfare, Sushri Shobha Karandlaje, and the Deputy Prime Minister and Minister for Agriculture & Food Industries of Moldova, Mr. Vladimir Bolea, at Krishi Bhawan in New Delhi."
  ),

  Question(
  questionText: "What is the focus of the memorandum of understanding (MoU) signed between the Ministry of Railways and the Indian Institute of Technology Madras (IIT Madras)?",
  options: [
  "Establishment of a railway university",
  "Implementation of high-speed rail projects",
  "Development of railway infrastructure in rural areas",
  "Establishment of the India 5G testbed for Indian Railways"
  ],
  correctAnswerIndex: 3,
  explanation: "The Ministry of Railways and the Indian Institute of Technology Madras (IIT Madras) signed a memorandum of understanding ((MoU) to establish the India 5G testbed at the Indian Railway Institute of Signal Engineering and Telecommunications (IRISET) in Secunderabad. The facility would be dedicated to the testing and development of 5G use cases for Indian Railways."
  ),

  Question(
  questionText: "What collaboration has taken place between the Petroleum and Natural Gas Regulatory Board (PNGRB) and the World Bank?",
  options: [
  "Development of natural gas infrastructure",
  "Introduction of hydrogen blending in natural gas",
  "Exploration of new oil reserves",
  "Construction of oil pipelines"
  ],
  correctAnswerIndex: 1,
  explanation: "The Petroleum and Natural Gas Regulatory Board (PNGRB) and the World Bank have joined forces to develop a comprehensive roadmap for integrating hydrogen blending in natural gas and establishing the infrastructure for their transmission through gas pipelines in the country."
  ),

  Question(
  questionText: "What partnership has been announced between travel company MakeMyTrip and the Ministry of Tourism?",
  options: [
  "Promotion of domestic tourism",
  "Introduction of a new visa system",
  "Development of new airports",
  "Introduction of over 600 unique travel destinations"
  ],
  correctAnswerIndex: 3,
  explanation: "Travel company MakeMyTrip has announced a collaboration with the Ministry of Tourism to introduce over 600 unique and unconventional travel destinations. The company has introduced a specialized microsite named ‘Traveller’s Map of India‘ to facilitate this initiative."
  ),

  Question(
  questionText: "What is the objective of the collaboration between the All India Council for Technical Education (AICTE) and Jio Institute?",
  options: [
  "Enhancing cybersecurity in educational institutions",
  "Developing new engineering courses",
  "Equipping faculty members with an understanding of Artificial Intelligence (AI) and Data Science (DS)",
  "Improving physical infrastructure of educational institutions"
  ],
  correctAnswerIndex: 2,
  explanation: "The All India Council for Technical Education (AICTE) has taken a significant step towards advancing the integration of Artificial Intelligence (AI) and Data Science (DS) within the realm of education. Partnering with the renowned Jio Institute, AICTE has unveiled a comprehensive faculty development programme aimed at equipping academic leaders and senior faculty members with an in-depth understanding of AI and DS."
  ),

  Question(
  questionText: "Which two entities have entered into a significant partnership to share the INDIA STACK technology?",
  options: [
  "India and the United States",
  "India and Australia",
  "India and Trinidad and Tobago",
  "India and South Africa"
  ],
  correctAnswerIndex: 2,
  explanation: "India and Trinidad and Tobago have recently entered into a significant partnership by signing a Memorandum of Understanding (MoU) to share the renowned INDIA STACK technology. This collection of open APIs and digital public goods, pioneered by India, is designed to enhance identity, data, and payment services on a large scale. This move reflects India’s commitment to aiding the digital transformation of nations through collaboration and technology sharing."
  ),

  Question(
  questionText: "What is the focus of the agreement between India and ASEAN countries?",
  options: [
  "Exploration of space collaboration",
  "Review of existing free trade pact for goods",
  "Development of new agricultural practices",
  "Joint research on climate change"
  ],
  correctAnswerIndex: 1,
  explanation: "In a significant move, India and the ASEAN countries have come to an agreement to reevaluate their existing free trade pact for goods. The aim of this review is to address the existing trade imbalances and disparities between the two parties. The announcement was made by the Commerce Ministry, indicating the commitment to enhance bilateral trade relations."
  ),

  Question(
  questionText: "What exciting collaboration has the International Cricket Council (ICC) made for the upcoming ICC Men’s Cricket World Cup 2023?",
  options: [
  "Partnership with a sports equipment manufacturer",
  "Collaboration with a leading technology company",
  "Global Partnership with Mastercard",
  "Exclusive broadcasting rights with a media network"
  ],
  correctAnswerIndex: 2,
  explanation: "The International Cricket Council (ICC) has made a significant announcement, revealing a thrilling collaboration with Mastercard, which is set to become a Global Partner for the upcoming ICC Men’s Cricket World Cup 2023. Scheduled to take place in India from October 5 to November 19, 2023, the partnership between Mastercard and ICC is poised to enhance the cricketing experience for fans worldwide."
  ),

  Question(
  questionText: "What collaboration has taken place between the state government of Maharashtra and the German professional football league, Bundesliga?",
  options: [
  "Youth development program",
  "Joint hosting of an international football tournament",
  "Introduction of a new football league",
  "Memorandum of Understanding (MoU) to elevate the status of football in Maharashtra"
  ],
  correctAnswerIndex: 3,
  explanation: "In a significant step towards elevating the status of football in Maharashtra, the state government has entered into a memorandum of understanding (MoU) with the renowned German professional football league, Bundesliga."
  ),

  Question(
  questionText: "What is the objective of the Memorandum of Understanding (MoU) signed between Goa Shipyard Limited (GSL) and Kenya Shipyards Limited (KSL)?",
  options: [
  "Establishment of joint ship manufacturing facilities",
  "Strengthening maritime security cooperation",
  "Development of new shipping routes",
  "Exploration of new oil reserves in the Indian Ocean Region (IOR)"
  ],
  correctAnswerIndex: 1,
  explanation: "With its efforts to enhance security of the Indian Ocean Region (IOR), especially on the eastern coast of Africa, a Memorandum of Understanding (MoU) was signed between Goa Shipyard Limited (GSL) and Kenya Shipyards Limited (KSL) to strengthen maritime security cooperation between the two nations."
  ),

  Question(
  questionText: "What is the focus of the Memorandum of Understanding (MoU) signed between the National Institution for Transforming India (NITI Aayog) and the United Nations Development Programme (UNDP)?",
  options: [
  "Implementation of digital education programs",
  "Promotion of sustainable and inclusive development",
  "Exploration of renewable energy sources",
  "Development of new agricultural practices"
  ],
  correctAnswerIndex: 1,
  explanation: "The National Institution for Transforming India (NITI Aayog), the central think tank responsible for monitoring India’s progress towards Sustainable Development Goals (SDGs), and the United Nations Development Programme (UNDP) have signed a significant Memorandum of Understanding (MoU) aimed at expediting India’s journey towards achieving its SDGs. This collaboration underscores the commitment to drive sustainable and inclusive development in the country."
  ),
  Question(
  questionText: "Who is appointed as the 33rd Chief Justice of the Orissa High Court?",
  options: [
  "Justice Subhasis Talapatra",
  "Justice N.V. Ramana",
  "Justice Prakash Shrivastava",
  "Justice Sanjay Kumar Agarwal"
  ],
  correctAnswerIndex: 0,
  explanation: "Justice Subhasis Talapatra is appointed as the 33rd Chief Justice of the Orissa High Court."
  ),

  Question(
  questionText: "Who is appointed as the Chairman of the Central Board of Indirect Taxes and Customs (CBIC)?",
  options: [
  "IRS officer Sanjay Kumar Agarwal",
  "Justice Subhasis Talapatra",
  "Prakash Shrivastava",
  "Geetika Srivastava"
  ],
  correctAnswerIndex: 0,
  explanation: "IRS officer Sanjay Kumar Agarwal is appointed as the Chairman of the Central Board of Indirect Taxes and Customs (CBIC)."
  ),

  Question(
  questionText: "Who is appointed as the Chairperson of the National Green Tribunal (NGT)?",
  options: [
  "Justice Sanjay Kumar Agarwal",
  "Geetika Srivastava",
  "Prakash Shrivastava",
  "Justice Subhasis Talapatra"
  ],
  correctAnswerIndex: 2,
  explanation: "Prakash Shrivastava is appointed as the Chairperson of the National Green Tribunal (NGT)."
  ),

  Question(
  questionText: "Who is appointed as India’s new chargé d’affaires at its high commission in Islamabad, Pakistan?",
  options: [
  "Justice Sanjay Kumar Agarwal",
  "Geetika Srivastava",
  "Prakash Shrivastava",
  "Justice Subhasis Talapatra"
  ],
  correctAnswerIndex: 1,
  explanation: "Geetika Srivastava is appointed as India’s new chargé d’affaires at its high commission in Islamabad, Pakistan."
  ),

  Question(
  questionText: "Who is appointed as a member of the International Mediator Panel of Singapore International Mediation Centre (SIMC)?",
  options: [
  "Justice Subhasis Talapatra",
  "Justice N.V. Ramana",
  "Rahul Dravid",
  "Geetika Srivastava"
  ],
  correctAnswerIndex: 1,
  explanation: "Justice N.V. Ramana is appointed as a member of the International Mediator Panel of Singapore International Mediation Centre (SIMC)."
  ),

  Question(
  questionText: "Who is appointed as the brand ambassador of Bharat Petroleum Corporation Ltd. (BPCL)?",
  options: [
  "Rahul Dravid",
  "Neelkanth Mishra",
  "Vaibhav Taneja",
  "Amit Jhingran"
  ],
  correctAnswerIndex: 0,
  explanation: "Rahul Dravid is appointed as the brand ambassador of Bharat Petroleum Corporation Ltd. (BPCL)."
  ),

  Question(
  questionText: "Who is appointed as the Part-time Chairperson of the Unique Identification Authority of India?",
  options: [
  "Neelkanth Mishra",
  "Amit Jhingran",
  "Vaibhav Taneja",
  "Rahul Dravid"
  ],
  correctAnswerIndex: 0,
  explanation: "Neelkanth Mishra is appointed as the Part-time Chairperson of the Unique Identification Authority of India."
  ),

  Question(
  questionText: "Who is appointed as Tesla’s new Chief Financial Officer?",
  options: [
  "Vaibhav Taneja",
  "Amit Jhingran",
  "Rahul Dravid",
  "Neelkanth Mishra"
  ],
  correctAnswerIndex: 0,
  explanation: "Vaibhav Taneja is appointed as Tesla’s new Chief Financial Officer."
  ),

  Question(
  questionText: "Who is appointed as the Managing Director and Chief Executive Officer for SBI Life Insurance Company Limited?",
  options: [
  "Vaibhav Taneja",
  "Amit Jhingran",
  "Kareena Kapoor Khan",
  "R. Doraiswamy"
  ],
  correctAnswerIndex: 1,
  explanation: "Amit Jhingran is appointed as the Managing Director and Chief Executive Officer for SBI Life Insurance Company Limited."
  ),

  Question(
  questionText: "Who is appointed as the brand ambassador of Pluckk?",
  options: [
  "Kareena Kapoor Khan",
  "Vaibhav Taneja",
  "R. Doraiswamy",
  "Amit Jhingran"
  ],
  correctAnswerIndex: 0,
  explanation: "Kareena Kapoor Khan is appointed as the brand ambassador of Pluckk."
  ),

  Question(
  questionText: "Who is appointed as the Managing Director of Life Insurance Corporation of India (LIC)?",
  options: [
  "Vaibhav Taneja",
  "R. Doraiswamy",
  "Amit Jhingran",
  "Kareena Kapoor Khan"
  ],
  correctAnswerIndex: 1,
  explanation: "R. Doraiswamy is appointed as the Managing Director of Life Insurance Corporation of India (LIC)."
  ),

  Question(
  questionText: "Who are the newly appointed SEBI Whole-Time Members?",
  options: [
  "Vaibhav Taneja and Kareena Kapoor Khan",
  "Kamlesh Varshney and Amarjeet Singh",
  "Rahul Dravid and N.V. Ramana",
  "Amit Jhingran and Neelkanth Mishra"
  ],
  correctAnswerIndex: 1,
  explanation: "The newly appointed SEBI Whole-Time Members are Kamlesh Varshney and Amarjeet Singh."
  ),

  Question(
  questionText: "Who is appointed as the Chairman and Managing Director (CMD) of Power Finance Corporation (PFC)?",
  options: [
  "Vaibhav Taneja",
  "Parminder Chopra",
  "Amit Jhingran",
  "R. Doraiswamy"
  ],
  correctAnswerIndex: 1,
  explanation: "Parminder Chopra is appointed as the Chairman and Managing Director (CMD) of Power Finance Corporation (PFC)."
  ),

  Question(
  questionText: "Who is appointed as the Managing Director & CEO of the South Indian Bank?",
  options: [
  "Vaibhav Taneja",
  "Amit Jhingran",
  "PR Seshadri",
  "Rahul Dravid"
  ],
  correctAnswerIndex: 2,
  explanation: "PR Seshadri is appointed as the Managing Director & CEO of the South Indian Bank."
  ),

  Question(
  questionText: "Who is appointed as the new CEO of Viacom18?",
  options: [
  "Vaibhav Taneja",
  "Kiran Mani",
  "R. Doraiswamy",
  "Amit Jhingran"
  ],
  correctAnswerIndex: 1,
  explanation: "Kiran Mani is appointed as the new CEO of Viacom18."
  ),

  Question(
  questionText: "Who are the four directors appointed by State Bank of India (SBI)?",
  options: [
  "Vaibhav Taneja, Kareena Kapoor Khan, R. Doraiswamy, and Kamlesh Varshney",
  "Ketan Shivji Vikamsey, Mrugank Madhukar Paranjape, Rajesh Kumar Dubey, and Dharmendra Singh Shekhawat",
  "Amit Jhingran, Neelkanth Mishra, Rahul Dravid, and Parminder Chopra",
  "Kiran Mani, PR Seshadri, Geetika Srivastava, and Sanjay Kumar Agarwal"
  ],
  correctAnswerIndex: 1,
  explanation: "State Bank of India (SBI) has appointed four directors: Ketan Shivji Vikamsey, Mrugank Madhukar Paranjape, Rajesh Kumar Dubey, and Dharmendra Singh Shekhawat."
  ),

  Question(
  questionText: "Who is appointed as the \"National icon\" of the Election Commission (EC)?",
  options: [
  "Rahul Dravid",
  "Kareena Kapoor Khan",
  "Sachin Tendulkar",
  "Geetika Srivastava"
  ],
  correctAnswerIndex: 2,
  explanation: "Sachin Tendulkar is appointed as the \"National icon\" of the Election Commission (EC)."
  ),

  Question(
  questionText: "Who are the brand ambassadors of Infosys?",
  options: [
  "Kareena Kapoor Khan and Sachin Tendulkar",
  "Rahul Dravid and N.V. Ramana",
  "Vaibhav Taneja and Kamlesh Varshney",
  "Rafael Nadal and Iga Swiatek"
  ],
  correctAnswerIndex: 3,
  explanation: "Rafael Nadal and Iga Swiatek are the brand ambassadors of Infosys."
  ),

  Question(
  questionText: "Who is appointed as the new Chairman of Finance Industry Development Council (FIDC)?",
  options: [
  "Umesh Revankar",
  "Amit Jhingran",
  "Parminder Chopra",
  "Vaibhav Taneja"
  ],
  correctAnswerIndex: 0,
  explanation: "Mr. Umesh Revankar is appointed as the new Chairman of Finance Industry Development Council (FIDC)."
  ),

  Question(
  questionText: "Who is appointed as Tesla’s new Chief Financial Officer?",
  options: [
  "Vaibhav Taneja",
  "Amit Jhingran",
  "Rahul Dravid",
  "Neelkanth Mishra"
  ],
  correctAnswerIndex: 0,
  explanation: "Vaibhav Taneja is appointed as Tesla’s new Chief Financial Officer."
  ),

  Question(
  questionText: "Who is appointed as the Managing Director and Chief Executive Officer for SBI Life Insurance Company Limited?",
  options: [
  "Vaibhav Taneja",
  "Amit Jhingran",
  "Kareena Kapoor Khan",
  "R. Doraiswamy"
  ],
  correctAnswerIndex: 1,
  explanation: "Amit Jhingran is appointed as the Managing Director and Chief Executive Officer for SBI Life Insurance Company Limited."
  ),

  Question(
  questionText: "Who is appointed as the brand ambassador of Pluckk?",
  options: [
  "Kareena Kapoor Khan",
  "Vaibhav Taneja",
  "R. Doraiswamy",
  "Amit Jhingran"
  ],
  correctAnswerIndex: 0,
  explanation: "Kareena Kapoor Khan is appointed as the brand ambassador of Pluckk."
  ),

  Question(
  questionText: "Who is appointed as the Managing Director of Life Insurance Corporation of India (LIC)?",
  options: [
  "Vaibhav Taneja",
  "R. Doraiswamy",
  "Amit Jhingran",
  "Kareena Kapoor Khan"
  ],
  correctAnswerIndex: 1,
  explanation: "R. Doraiswamy is appointed as the Managing Director of Life Insurance Corporation of India (LIC)."
  ),

  Question(
  questionText: "Who are the newly appointed SEBI Whole-Time Members?",
  options: [
  "Vaibhav Taneja and Kareena Kapoor Khan",
  "Kamlesh Varshney and Amarjeet Singh",
  "Rahul Dravid and N.V. Ramana",
  "Amit Jhingran and Neelkanth Mishra"
  ],
  correctAnswerIndex: 1,
  explanation: "The newly appointed SEBI Whole-Time Members are Kamlesh Varshney and Amarjeet Singh."
  ),

  Question(
  questionText: "Who is appointed as the Chairman and Managing Director (CMD) of Power Finance Corporation (PFC)?",
  options: [
  "Vaibhav Taneja",
  "Parminder Chopra",
  "Amit Jhingran",
  "R. Doraiswamy"
  ],
  correctAnswerIndex: 1,
  explanation: "Parminder Chopra is appointed as the Chairman and Managing Director (CMD) of Power Finance Corporation (PFC)."
  ),

  Question(
  questionText: "Who is appointed as the Managing Director & CEO of the South Indian Bank?",
  options: [
  "Vaibhav Taneja",
  "Amit Jhingran",
  "PR Seshadri",
  "Rahul Dravid"
  ],
  correctAnswerIndex: 2,
  explanation: "PR Seshadri is appointed as the Managing Director & CEO of the South Indian Bank."
  ),

  Question(
  questionText: "Who is appointed as the new CEO of Viacom18?",
  options: [
  "Vaibhav Taneja",
  "Kiran Mani",
  "R. Doraiswamy",
  "Amit Jhingran"
  ],
  correctAnswerIndex: 1,
  explanation: "Kiran Mani is appointed as the new CEO of Viacom18."
  ),


  Question(
  questionText: "Who were appointed as directors by the State Bank of India (SBI)?",
  options: ["Ketan Shivji Vikamsey", "Mrugank Madhukar Paranjape", "Rajesh Kumar Dubey", "Dharmendra Singh Shekhawat","all"],
  correctAnswerIndex: 4,
  explanation: "The State Bank of India (SBI) appointed four directors: Ketan Shivji Vikamsey, Mrugank Madhukar Paranjape, Rajesh Kumar Dubey, and Dharmendra Singh Shekhawat."
  ),
  Question(
  questionText: "Who is the 'National icon' of the Election Commission (EC)?",
  options: ["Virat Kohli", "Sachin Tendulkar", "MS Dhoni", "Rohit Sharma"],
  correctAnswerIndex: 1,
  explanation: "Sachin Tendulkar is the 'National icon' of the Election Commission (EC)."
  ),
  Question(
  questionText: "Who are the brand ambassadors for Infosys?",
  options: ["Rafael Nadal", "Iga Swiatek", "Both Rafael Nadal and Iga Swiatek", "None of the above"],
  correctAnswerIndex: 2,
  explanation: "Rafael Nadal and Iga Swiatek are the brand ambassadors for Infosys."
  ),
  Question(
  questionText: "Who is the new Chairman of Finance Industry Development Council (FIDC)?",
  options: ["Umesh Revankar", "Rahul Khullar", "Harsh Kumar Bhanwala", "Arvind Mayaram"],
  correctAnswerIndex: 0,
  explanation: "Mr. Umesh Revankar is the new Chairman of Finance Industry Development Council (FIDC)."
  ),
  Question(
  questionText: "What percentage of escalation did the FAO All Rice Price Index witness in July?",
  options: ["2.8%", "5.2%", "1.5%", "3.7%"],
  correctAnswerIndex: 0,
  explanation: "The FAO All Rice Price Index witnessed a 2.8 percent escalation in July compared to the preceding month."
  ),
  Question(
  questionText: "In the Internet Resilience Index (IRI), what overall score did India achieve?",
  options: ["35%", "43%", "50%", "28%"],
  correctAnswerIndex: 1,
  explanation: "India achieved an overall score of 43 percent in the Internet Resilience Index (IRI), positioning itself as the sixth-ranked country in the South Asian region."
  ),
  Question(
  questionText: "Which district became the highest-performing district under Jal Jeevan Survekshan (JJS-2023)?",
  options: ["Srinagar", "Indore", "Lucknow", "Bhopal"],
  correctAnswerIndex: 0,
  explanation: "The Srinagar district became the highest-performing district under Jal Jeevan Survekshan (JJS-2023), outshining 114 Har Ghar Jal certified villages across India."
  ),
  Question(
  questionText: "Which city clinched the top spot in Swachh Vayu Sarvekshan -2023 for cities with a population exceeding 10 lakhs?",
  options: ["Bhopal", "Indore", "Jaipur", "Chandigarh"],
  correctAnswerIndex: 1,
  explanation: "The city of Indore clinched the top spot in the Swachh Vayu Sarvekshan -2023 conducted by the Central Pollution Control Board, in the category of cities with a population exceeding 10 lakhs."
  ),


  Question(
  questionText: "Who announced his retirement from cricket after the ongoing Ashes series?",
  options: ["James Anderson", "Joe Root", "Stuart Broad", "Jofra Archer"],
  correctAnswerIndex: 2,
  explanation: "England pacer Stuart Broad announced his retirement from cricket after the ongoing Ashes series. He played 167 Test matches, picking 602 wickets."
  ),
  Question(
  questionText: "How many WTA titles did Iga Swiatek secure in the year?",
  options: ["Two", "Three", "Four", "Five"],
  correctAnswerIndex: 2,
  explanation: "Iga Swiatek achieved her fourth WTA title of the year by winning her very first on home soil."
  ),
  Question(
  questionText: "Which team did the Indian women’s hockey team defeat to win the Torneo del Centernario 2023 title?",
  options: ["Germany", "Spain", "Netherlands", "Australia"],
  correctAnswerIndex: 1,
  explanation: "The Indian women’s hockey team won the Torneo del Centernario 2023 title by defeating hosts Spain 3-0 in Terrassa, Barcelona."
  ),
  Question(
  questionText: "Who won the Belgian Grand Prix in Formula One?",
  options: ["Lewis Hamilton", "Sebastian Vettel", "Max Verstappen", "Sergio Perez"],
  correctAnswerIndex: 2,
  explanation: "Defending Formula One champion Max Verstappen won the Belgian Grand Prix, marking his eighth straight win and 10th overall of the season."
  ),
  Question(
  questionText: "Which former Uruguay defender recently retired from professional soccer?",
  options: ["Luis Suarez", "Diego Godin", "Edinson Cavani", "Fernando Muslera"],
  correctAnswerIndex: 1,
  explanation: "Former Uruguay defender Diego Godin retired from professional soccer at the age of 37, ending a 20-year career."
  ),
  Question(
  questionText: "Who dethroned Grandmaster Viswanathan Anand as India’s top-ranked chess player?",
  options: ["R. Praggnanandhaa", "D. Gukesh", "P. Harikrishna", "S. Vidit"],
  correctAnswerIndex: 1,
  explanation: "The 17-year-old chess prodigy, D. Gukesh, dethroned Grandmaster Viswanathan Anand as India’s top-ranked chess player by reaching a live rating of 2755.9 and climbing to the 9th position in the classic open category."
  ),
  Question(
  questionText: "Who announced his retirement from international cricket, signing off as a T20 World Cup winner?",
  options: ["Jos Buttler", "Jonny Bairstow", "Alex Hales", "Ben Stokes"],
  correctAnswerIndex: 2,
  explanation: "Alex Hales announced his retirement from international cricket with immediate effect, signing off as a T20 World Cup winner."
  ),
  Question(
  questionText: "Which Indian team created history by winning a gold medal at the World Archery Championships in Berlin?",
  options: ["Indian men’s compound archery team", "Indian women’s compound archery team", "Indian men’s recurve archery team", "Indian women’s recurve archery team"],
  correctAnswerIndex: 1,
  explanation: "The Indian women’s compound archery team etched their names in history by clinching a gold medal at the World Archery Championships held in Berlin, Germany."
  ),
  Question(
  questionText: "Under which campaign did the Sports Authority of India (SAI) launch a short movie series 'Halla Bol'?",
  options: ["Khelo India", "Play4India", "Cheer4India", "Sports4All"],
  correctAnswerIndex: 2,
  explanation: "Sports Authority of India (SAI) under the Umbrella Campaign 'Cheer4India' launched a short movie series 'Halla Bol' on the journey of Asian Games bound athletes."
  ),
  Question(
  questionText: "How many medals did India win, including gold, at the 2023 World Cadet Wrestling Championships in Istanbul?",
  options: ["7", "9", "11", "13"],
  correctAnswerIndex: 2,
  explanation: "India ended their 2023 World Cadet Wrestling Championships with a total of 11 medals, including a gold, at Istanbul, Turkey."
  ),
  Question(
  questionText: "Which forward joined Saudi Arabia’s Al-Hilal from Paris Saint-Germain (PSG)?",
  options: ["Kylian Mbappe", "Lionel Messi", "Neymar Jr", "Angel Di Maria"],
  correctAnswerIndex: 2,
  explanation: "Brazil forward Neymar Jr joined Saudi Arabia’s Al-Hilal from Paris Saint-Germain (PSG)."
  ),
  Question(
  questionText: "Where was the first-ever street circuit in India and South Asia for night racing launched?",
  options: ["Delhi", "Mumbai", "Chennai", "Bangalore"],
  correctAnswerIndex: 2,
  explanation: "The Tamil Nadu government and Racing Promotions Private Limited (RRPL) launched a new street circuit in Chennai, the first-ever street circuit in India and South Asia to host a night race."
  ),
  Question(
  questionText: "Which Sri Lankan all-rounder announced his retirement from Test cricket?",
  options: ["Angelo Mathews", "Dinesh Chandimal", "Wanindu Hasaranga", "Lasith Malinga"],
  correctAnswerIndex: 2,
  explanation: "Sri Lankan all-rounder Wanindu Hasaranga announced his retirement from Test cricket to focus on his limited-overs career."
  ),
  Question(
  questionText: "Which Pakistan fast bowler announced his retirement from international cricket?",
  options: ["Mohammad Amir", "Shaheen Afridi", "Wahab Riaz", "Hasan Ali"],
  correctAnswerIndex: 2,
  explanation: "Pakistan fast bowler Wahab Riaz announced his retirement from international cricket, ending a 15-year career."
  ),
  Question(
  questionText: "Why was Indian sprinter Dutee Chand handed a four-year ban?",
  options: ["Doping violation", "Match-fixing", "Age fraud", "Injury"],
  correctAnswerIndex: 0,
  explanation: "Indian sprinter Dutee Chand was handed a four-year ban following her failure in an out-of-competition dope test, revealing the presence of selective androgen receptor modulators (SARMs)."
  ),
  Question(
  questionText: "Who has been elected as one of the four vice presidents of World Athletics?",
  options: ["Suresh Kalmadi", "Anurag Singh Thakur", "Nita Ambani", "Adille Sumariwalla"],
  correctAnswerIndex: 3,
  explanation: "Adille Sumariwalla, the president of the Athletics Federation of India (AFI), has been elected as one of the four vice presidents of World Athletics."
  ),
  Question(
  questionText: "Which Indian wrestler became the first to attain the junior world championship title since 2019?",
  options: ["Bajrang Punia", "Ravi Kumar Dahiya", "Deepak Punia", "Mohit Kumar"],
  correctAnswerIndex: 3,
  explanation: "Mohit Kumar became the first Indian wrestler to attain the junior world championship title since 2019, securing the gold medal."
  ),
  Question(
  questionText: "Who secured the gold medal in the U-17 category of the Asian Junior Squash Individual Championships?",
  options: ["Saurav Ghosal", "Dipika Pallikal", "Anahat Singh", "Joshna Chinappa"],
  correctAnswerIndex: 2,
  explanation: "Anahat Singh secured the gold medal in the U-17 category of the Asian Junior Squash Individual Championships."
  ),
  Question(
  questionText: "Which Indian wrestler secured the gold medal at the U20 World Wrestling Championships in Jordan?",
  options: ["Vinesh Phogat", "Sakshi Malik", "Pooja Dhanda", "Priya Malik"],
  correctAnswerIndex: 3,
  explanation: "Indian wrestler Priya Malik secured the gold medal at the U20 World Wrestling Championships held in Jordan."
  ),
  Question(
  questionText: "Who clinched a silver medal at the Singapore International Math Olympiad Challenge (SIMOC)?",
  options: ["Raja Anirudh Sriram", "Arnav Sharma", "Priyanka Gupta", "Aditya Patel"],
  correctAnswerIndex: 0,
  explanation: "Raja Anirudh Sriram, a fourth-standard student from Tirupati, clinched a silver medal at the prestigious Singapore International Math Olympiad Challenge (SIMOC)."
  ),
  Question(
  questionText: "What is the new name for the Khelo India Women’s League?",
  options: ["Empower Women’s League", "Asmita Women’s League", "Shakti Women’s League", "Nari Shakti Women’s League"],
  correctAnswerIndex: 1,
  explanation: "The Khelo India Women’s League will now be recognized as the 'Asmita Women’s League,' unveiled by Union Minister for Youth Affairs and Sports, Anurag Singh Thakur."
  ),
  Question(
  questionText: "Why has the Wrestling Federation of India (WFI) faced suspension from the United World Wrestling (UWW)?",
  options: ["Doping violations", "Financial irregularities", "Controversies and election delays", "Match-fixing allegations"],
  correctAnswerIndex: 2,
  explanation: "The Wrestling Federation of India (WFI) has faced suspension from the United World Wrestling (UWW) due to ongoing controversies and prolonged delays in conducting essential elections."
  ),
  Question(
  questionText: "Who finished second in FIDE World Cup in chess?",
  options: ["Magnus Carlsen", "Fabiano Caruana", "Ding Liren", "Rameshbabu Praggnanandhaa"],
  correctAnswerIndex: 3,
  explanation: "Rameshbabu Praggnanandhaa finished second in FIDE World Cup in chess, with Magnus Carlsen winning the title."
  ),
  Question(
  questionText: "Who has been announced as the global brand ambassador for Infosys in women's tennis?",
  options: ["Serena Williams", "Simona Halep", "Naomi Osaka", "Iga Swiatek"],
  correctAnswerIndex: 3,
  explanation: "Infosys announced Iga Swiatek as the global brand ambassador, focusing on promoting Digital Innovation and inspiring women worldwide in tennis."
  ),
  Question(
  questionText: "Who won the gold medal in the men’s javelin throw event at the World Athletics Championships?",
  options: ["Johannes Vetter", "Neeraj Chopra", "Magnus Kirt", "Andreas Hofmann"],
  correctAnswerIndex: 1,
  explanation: "Neeraj Chopra made history by winning the gold medal in the men’s javelin throw event at the World Athletics Championships held in Budapest, Hungary."
  ),
  Question(
  questionText: "How many consecutive Dutch Grand Prix wins has Max Verstappen achieved?",
  options: ["Five", "Seven", "Nine", "Eleven"],
  correctAnswerIndex: 2,
  explanation: "Max Verstappen has won the Dutch Grand Prix for the third consecutive year, now matching Sebastian Vettel’s all-time record of nine F1 victories in a row."
  ),
  Question(
  questionText: "Which Indian badminton player secured the bronze medal in the men’s singles category at the BWF World Badminton Championships 2023?",
  options: ["Kidambi Srikanth", "HS Prannoy", "Parupalli Kashyap", "Sai Praneeth"],
  correctAnswerIndex: 1,
  explanation: "Indian badminton player HS Prannoy secured the bronze medal in the men’s singles category at the BWF World Badminton Championships 2023."
  ),
  Question(
  questionText: "Which football federation had its ban lifted by FIFA after government interference?",
  options: ["Brazilian Football Confederation", "Sri Lanka Football Federation", "German Football Association", "Nigerian Football Federation"],
  correctAnswerIndex: 1,
  explanation: "World governing body FIFA lifted the ban on the Sri Lanka Football Federation (FFSL) after government interference, and the FFSL agreed to hold fresh elections for its executive committee."
  ),
  Question(
  questionText: "How did India perform in the inaugural Women’s Asian Hockey 5s World Cup Qualifier final against Thailand?",
  options: ["Lost 3-1", "Draw 4-4", "Won 7-2", "Lost 5-3"],
  correctAnswerIndex: 2,
  explanation: "India defeated Thailand 7-2 in the final to win the inaugural Women’s Asian Hockey 5s World Cup Qualifier."
  ),

  Question(
  questionText: "Where is the 5th World Coffee Conference (WCC) scheduled to be held?",
  options: ["Bengaluru", "Johannesburg", "Gandhinagar", "New Delhi"],
  correctAnswerIndex: 0,
  explanation: "India is set to host the 5th World Coffee Conference (WCC) in Bengaluru from September 25 to 28. This marks the first time the event will be held in Asia."
  ),
  Question(
  questionText: "Which event did Russian President Vladimir Putin cancel his visit to, leading to Indian Prime Minister Narendra Modi's confirmed attendance?",
  options: ["G20 Summit", "BRICS Summit", "MSME Expo and Summit", "WHO Traditional Medicine Global Summit"],
  correctAnswerIndex: 1,
  explanation: "Indian Prime Minister Narendra Modi confirmed his attendance at the BRICS Summit in Johannesburg, South Africa, from August 22 to 24, 2023, after Russian President Vladimir Putin canceled his visit."
  ),
  Question(
  questionText: "Who inaugurated the 9th India International MSME Expo and Summit 2023 in New Delhi?",
  options: ["Narendra Modi", "Manoj Sinha", "Om Birla", "Amit Shah"],
  correctAnswerIndex: 1,
  explanation: "Lieutenant Governor Shri Manoj Sinha of Jammu and Kashmir inaugurated the 9th India International MSME Expo and Summit 2023 in New Delhi."
  ),
  Question(
  questionText: "Where will the first WHO Traditional Medicine Global Summit take place?",
  options: ["Bengaluru", "Johannesburg", "Gandhinagar", "New Delhi"],
  correctAnswerIndex: 2,
  explanation: "The first WHO Traditional Medicine Global Summit is set to unfold on August 17 and 18, 2023, in the city of Gandhinagar, Gujarat, India. It will coincide with the G20 health ministerial meeting."
  ),
  Question(
  questionText: "Which leaders from the BRICS economic alliance are converging in Sandton, Johannesburg, for a three-day summit?",
  options: ["G7", "G20", "ASEAN", "BRICS"],
  correctAnswerIndex: 3,
  explanation: "Leaders from the BRICS economic alliance (Brazil, Russia, India, China, and South Africa) are converging in Sandton, Johannesburg, for a three-day summit."
  ),

  Question(
  questionText: "Where did the Ninth India Region Conference of the Commonwealth Parliamentary Association (CPA) take place?",
  options: ["Mumbai", "Udaipur", "Chennai", "Kolkata"],
  correctAnswerIndex: 1,
  explanation: "The Ninth India Region Conference of the Commonwealth Parliamentary Association (CPA) took place in the historic city of Udaipur, located in the state of Rajasthan."
  ),
  Question(
  questionText: "What is the theme of the B20 Summit India 2023?",
  options: ["Rapid Growth and Development", "Digital Transformation", "Sustainable Agriculture", "R.A.I.S.E Businesses"],
  correctAnswerIndex: 3,
  explanation: "The theme for the B20 India 2023 is Responsible, Accelerated, Innovative, Sustainable, Equitable (R.A.I.S.E) Businesses."
  ),
  Question(
  questionText: "Which organizations unveiled the sixth edition of the Smart India Hackathon (SIH) 2023?",
  options: ["NITI Aayog and UGC", "Indian Army and DRDO", "Ministry of Education’s Innovation Cell and AICTE", "ISRO and BARC"],
  correctAnswerIndex: 2,
  explanation: "The Ministry of Education’s Innovation Cell and the All India Council of Technical Education (AICTE) unveiled the sixth edition of the Smart India Hackathon (SIH) 2023."
  ),
  Question(
  questionText: "To which country did India hand over the B20 presidency?",
  options: ["China", "USA", "Russia", "Brazil"],
  correctAnswerIndex: 3,
  explanation: "India gracefully handed over the B20 presidency to Brazil, marking the transition towards the G20 summit in 2024."
  ),


  Question(
  questionText: "Which country supplied air-launched Israeli Spike Non Line of Sight (NLOS) Anti-Tank Guided Missiles (ATGM) to the Indian Air Force?",
  options: ["USA", "Russia", "Israel", "France"],
  correctAnswerIndex: 2,
  explanation: "The Indian Air Force (IAF) received air-launched Israeli Spike NLOS Anti-Tank Guided Missiles (ATGM) from Israel."
  ),
  Question(
  questionText: "What is the name of the indigenous Anti-Tank Guided Missile (ATGM) developed by Defence Research and Development Organisation (DRDO) and set to be inducted into the Indian army and Indian Air Force (IAF)?",
  options: ["BrahMos", "Nag", "Astra", "Prithvi"],
  correctAnswerIndex: 1,
  explanation: "India’s indigenous Nag Anti-Tank Guided Missile (ATGM), developed by DRDO, is set to be inducted into the Indian army and Indian Air Force (IAF)."
  ),
  Question(
  questionText: "What is the name of the lighter and more compact version of the indigenous Weapon Locating Radar (WLR-M) recently inducted by the Indian Army?",
  options: ["Swathi Mountains", "Dhruvastra", "Heron Mark 2", "Mahendragiri"],
  correctAnswerIndex: 0,
  explanation: "The Indian Army has recently inducted the 'Swathi Mountains,' a lighter and more compact version of the indigenous Weapon Locating Radar (WLR-M)."
  ),
  Question(
  questionText: "Which maritime forces are participating in the Malabar series of naval exercises along the eastern coast of Australia?",
  options: ["India, China, Japan", "India, USA, Australia", "India, Russia, France", "India, Japan, USA, Australia"],
  correctAnswerIndex: 3,
  explanation: "The Malabar series of naval exercises involve the maritime forces of India, Japan, the United States, and Australia."
  ),
  Question(
  questionText: "What is the name of the domestically developed operating system that India’s Ministry of Defence is replacing Microsoft's operating system with?",
  options: ["Windows 10", "Linux", "Maya", "Android"],
  correctAnswerIndex: 2,
  explanation: "India’s Ministry of Defence is replacing the Microsoft operating system with a domestically developed alternative named the ‘Maya‘ operating system."
  ),
  Question(
  questionText: "What is the name of the latest drone with strike capability recently inducted by the Indian Air Force (IAF)?",
  options: ["Predator", "Reaper", "Heron Mark 2", "Rustom"],
  correctAnswerIndex: 2,
  explanation: "The Indian Air Force has inducted its latest Heron Mark 2 drones, which have strike capability and can carry out surveillance along the borders with both China and Pakistan."
  ),
  Question(
  questionText: "Which state-owned company is set to unveil 'Prabal,' India’s first long-range revolver?",
  options: ["HAL (Hindustan Aeronautics Limited)", "BEL (Bharat Electronics Limited)", "AWEIL (Advanced Weapons and Equipment India Limited)", "DRDO (Defence Research and Development Organisation)"],
  correctAnswerIndex: 2,
  explanation: "In a stride towards indigenous manufacturing and innovation, the state-owned company Advanced Weapons and Equipment India Limited (AWEIL) is all set to unveil ‘Prabal‘, India’s first long-range revolver."
  ),
  Question(
  questionText: "Where did the guided missile corvette INS Kulish make its presence felt during Singapore’s 77th Independence Day festivities?",
  options: ["Singapore", "India", "Australia", "USA"],
  correctAnswerIndex: 0,
  explanation: "The guided missile corvette INS Kulish made its presence felt during Singapore’s 77th Independence Day festivities as part of its engagement in the multinational SEACAT 2023 exercise."
  ),
  Question(
  questionText: "What is the purpose of the project for which the Central Government granted final approval, involving the construction of five fleet support ships for the Indian Navy?",
  options: ["Surveillance", "Logistical Support", "Attack Missions", "Aircraft Carrier Construction"],
  correctAnswerIndex: 1,
  explanation: "The Central Government has granted final approval for a pivotal project to construct five fleet support ships. These vessels are designed to serve as vital logistical lifelines, replenishing warships with essential supplies during missions."
  ),
  Question(
  questionText: "What did various Air Force Stations in and around Delhi celebrate from 09 to 15 August 2023 to commemorate 75 years of Independence?",
  options: ["Republic Day", "Victory Day", "Independence Day", "Azadi Ka Amrit Mahotsav (AKAM)"],
  correctAnswerIndex: 3,
  explanation: "To commemorate 75 years of Independence, various Air Force Stations in and around Delhi celebrated the Azadi Ka Amrit Mahotsav (AKAM) from 09 to 15 August 2023."
  ),
  Question(
  questionText: "What is the name of the colossal multilateral military exercise that the Indian Air Force is gearing up to host in the middle of 2024?",
  options: ["Varuna", "Garuda", "Tarang Shakti", "Malabar"],
  correctAnswerIndex: 2,
  explanation: "The Indian Air Force (IAF) is gearing up to host a colossal multilateral military exercise, ‘Tarang Shakti‘, in the middle of 2024."
  ),
  Question(
  questionText: "What is the name of the latest addition to the Indian Navy’s fleet that was inaugurated by President Droupadi Murmu at the Kolkata-based Garden Reach Shipbuilders and Engineers (GRSE)?",
  options: ["INS Vagir", "INS Vindhyagiri", "INS Vikrant", "INS Virat"],
  correctAnswerIndex: 1,
  explanation: "In a significant development aimed at enhancing the operational capabilities of the Indian Navy, President Droupadi Murmu inaugurated the latest addition to the Indian Navy’s fleet, INS Vindhyagiri."
  ),
  Question(
  questionText: "What milestone did the Indian Navy’s submarine, INS Vagir, achieve?",
  options: ["Fastest Deployment", "Deepest Dive", "Longest Deployment of Scorpeneclass Submarine", "First Underwater Missile Launch"],
  correctAnswerIndex: 2,
  explanation: "The Indian Navy’s submarine, INS Vagir, achieved the milestone of the longest-ever deployment of any Scorpeneclass submarine, covering an astonishing distance of 7,000 kilometers on its journey to Australia to participate in joint military exercises."
  ),
  Question(
  questionText: "What did the Light Combat Aircraft (LCA) Tejas achieve off the coast of Goa?",
  options: ["Supersonic Speed Record", "Successful Ejection System Test", "Aerial Refueling", "Successful Firing of Astra Indigenous Beyond Visual Range (BVR) Air-to-Air Missile"],
  correctAnswerIndex: 3,
  explanation: "The Light Combat Aircraft (LCA) Tejas achieved a significant milestone as it successfully fired the Astra indigenous Beyond Visual Range (BVR) air-to-air missile off the coast of Goa."
  ),
  Question(
  questionText: "What did the Chief of the Naval Staff and Commandant of Philippine Coast Guard sign on 23 August 2023?",
  options: ["Defense Pact", "Trade Agreement", "Standard Operating Procedure (SOP) for exchange of White Shipping Information", "Treaty on Maritime Borders"],
  correctAnswerIndex: 2,
  explanation: "The Chief of the Naval Staff and Commandant of Philippine Coast Guard signed the Standard Operating Procedure (SOP) for exchange of White Shipping Information on 23 August 2023."
  ),
  Question(
  questionText: "What groundbreaking contract did the Ministry of Defence sign with Hindustan Shipyard Limited (HSL) to bolster the Indian Navy’s operational capabilities?",
  options: ["Construction of Aircraft Carriers", "Acquisition of Submarines", "Construction of Destroyers", "Acquisition of Fleet Support Ships (FSS)"],
  correctAnswerIndex: 3,
  explanation: "The Ministry of Defence (MoD) signed a groundbreaking contract with Hindustan Shipyard Limited (HSL) for the acquisition of five Fleet Support Ships (FSS), marking a new era in naval logistics."
  ),
  Question(
  questionText: "Where is Exercise BRIGHT STAR-23, in which an Indian Air Force (IAF) contingent is participating, taking place?",
  options: ["New Delhi", "Cairo, Egypt", "Sydney, Australia", "Washington, USA"],
  correctAnswerIndex: 1,
  explanation: "An Indian Air Force (IAF) contingent has embarked on a significant journey, marking the first-ever participation in Exercise BRIGHT STAR-23. This biennial multilateral tri-service exercise is taking place at Cairo (West) Air Base in Egypt."
  ),
  Question(
  questionText: "What significant milestone is India’s latest warship, Mahendragiri, set to achieve?",
  options: ["Longest Journey", "Fastest Speed Record", "First Stealth Frigate", "Largest Aircraft Carrier"],
  correctAnswerIndex: 2,
  explanation: "India’s latest warship, Mahendragiri, is set to be launched on September 1 at the Mazagon Dock Shipbuilders in Mumbai. The launch of Mahendragiri, the seventh and final stealth frigate of Project 17A, symbolizes the remarkable progress India has made in constructing a self-sufficient naval force."
  ),
  Question(
  questionText: "Who was granted the Lokmanya Tilak National Award during a ceremony in Pune, Maharashtra?",
  options: ["Amit Shah", "Ratan Tata", "Narendra Modi", "Droupadi Murmu"],
  correctAnswerIndex: 2,
  explanation: "The Lokmanya Tilak National Award was granted to the Prime Minister of India, Shri Narendra Modi, during a ceremony in Pune, Maharashtra."
  ),
  Question(
  questionText: "Who received the Lifetime Achievement Award at the first-ever RICS South Asia Awards?",
  options: ["Ratan Tata", "Amit Shah", "Narendra Modi", "Subhash Runwal"],
  correctAnswerIndex: 3,
  explanation: "Subhash Runwal, Chairman of Runwal, a leading real estate developer, received the Lifetime Achievement Award at the first-ever RICS South Asia Awards."
  ),
  Question(
  questionText: "Which team was congratulated by Union Home Minister Amit Shah for securing the Gold Award in the Excellence in Government Process Re-engineering for Digital Transformation Category-1?",
  options: ["National Automated Fingerprint Identification System (NAFIS)", "National Crime Records Bureau (NCRB)", "Indian Navy", "Indian Air Force (IAF)"],
  correctAnswerIndex: 1,
  explanation: "Union Home Minister Amit Shah congratulated the team of National Automated Fingerprint Identification System (NAFIS) of the National Crime Records Bureau (NCRB) for securing the Gold Award in the Excellence in Government Process Re-engineering for Digital Transformation Category-1."
  ),
  Question(
  questionText: "How many Gallantry awards were approved by President Smt Droupadi Murmu on the occasion of Independence Day 2023?",
  options: ["50", "76", "100", "125"],
  correctAnswerIndex: 1,
  explanation: "President Smt Droupadi Murmu approved 76 Gallantry awards to members of the Armed Forces and Central Armed Police Forces on the occasion of Independence Day 2023."
  ),
  Question(
  questionText: "Who was awarded the George Ledlie Prize by Harvard University for groundbreaking work in their respective fields?",
  options: ["Ratan Tata", "Narendra Modi", "Raj Chetty and Michael Springer", "Subhash Runwal"],
  correctAnswerIndex: 2,
  explanation: "Raj Chetty, an Indian-American economist, and Michael Springer, a biologist, were awarded Harvard University’s George Ledlie Prize for their groundbreaking work in their respective fields."
  ),
  Question(
  questionText: "How many Indian youths were named among 17 teen environmental activists to receive the 2023 International Young Eco-Hero Award?",
  options: ["Two", "Three", "Four", "Five"],
  correctAnswerIndex: 3,
  explanation: "Five youths from India were named among 17 teen environmental activists from across the globe to receive the 2023 International Young Eco-Hero Award for their initiatives to tackle the world’s most pressing environmental challenges."
  ),
  Question(
  questionText: "Who was conferred with the first-ever ‘Udyog Ratna’ award by the Maharashtra government?",
  options: ["Amit Shah", "Narendra Modi", "Ratan Tata", "Subhash Runwal"],
  correctAnswerIndex: 2,
  explanation: "Eminent industrialist Ratan Tata was conferred with the first ever ‘Udyog Ratna’ award instituted by the Maharashtra government."
  ),
  Question(
  questionText: "Which civilian honour was conferred upon Prime Minister Narendra Modi by the Greek President Katerina N. Sakellaropoulou in Athens?",
  options: ["Order of Merit", "Grand Cross of the Order of Honour", "Order of Freedom", "Order of Independence"],
  correctAnswerIndex: 1,
  explanation: "Prime Minister Narendra Modi was conferred with the Grand Cross of the Order of Honour by Greek President Katerina N. Sakellaropoulou in Athens. It is the highest civilian honour that can be bestowed by Greece to a foreign head of government."
  ),

  Question(
  questionText: "Who launched the Worldcoin crypto project, aiming to provide users with a verified digital identity and access to a financial project?",
  options: ["Sam Altman", "Elon Musk", "Mark Zuckerberg", "Tim Cook"],
  correctAnswerIndex: 0,
  explanation: "Sam Altman, along with two co-founders, launched the Worldcoin crypto project to grant users a verified digital identity and access to a financial project."
  ),
  Question(
  questionText: "What achievement did the Chandrayaan-3 spacecraft accomplish in its lunar exploration mission?",
  options: ["Lunar Landing", "TransLunar Injection (TLI)", "Lunar Orbit Insertion (LOI)", "Mars Landing"],
  correctAnswerIndex: 1,
  explanation: "The Chandrayaan-3 spacecraft accomplished the TransLunar Injection (TLI), marking a significant step in India's third lunar exploration mission. The next crucial step is the Lunar Orbit Insertion (LOI) scheduled for August 5."
  ),
  Question(
  questionText: "What did astronomers discover related to Albert Einstein's theory of general relativity?",
  options: ["Einstein's Telescope", "Einstein's Cross", "Einstein's Galaxy", "Einstein's Star"],
  correctAnswerIndex: 1,
  explanation: "Astronomers made a stunning discovery of 'Einstein Cross,' where light from a distant galaxy is split and magnified by a foreground elliptical ground, confirming a prediction from Albert Einstein's theory of general relativity."
  ),
  Question(
  questionText: "What initiative is the National Health Authority (NHA) and the Ministry of Health actively engaged in?",
  options: ["Telemedicine Network", "National Health Insurance", "Organ Donation Registry", "Cancer Research Program"],
  correctAnswerIndex: 2,
  explanation: "The National Health Authority (NHA) and the Ministry of Health are actively engaged in the development of an Organ Donation Registry to introduce structural improvements to the National Organ Tissue Transplantation Organisation (NOTTO)."
  ),
  Question(
  questionText: "What publication did the Zoological Survey of India (ZSI) unveil on its 108th foundation day?",
  options: ["Indian Mammals Catalog", "75 Endemic Birds of India", "Amphibians of the Western Ghats", "Insects of the Himalayas"],
  correctAnswerIndex: 1,
  explanation: "On its 108th foundation day, the Zoological Survey of India (ZSI) unveiled a publication titled '75 Endemic Birds of India,' highlighting that 5% of India’s bird species are confined solely within the nation’s boundaries."
  ),
  Question(
  questionText: "What celestial object did the James Webb Space Telescope capture, showcasing the remains of a sun-like star?",
  options: ["Andromeda Galaxy", "Ring Nebula", "Whirlpool Galaxy", "Crab Nebula"],
  correctAnswerIndex: 1,
  explanation: "Astronomers used the James Webb Space Telescope to capture a striking image of Messier 57, more popularly known as the Ring Nebula, showcasing the remains of a sun-like star."
  ),
  Question(
  questionText: "What strategic partnership was formed between NewSpace India Limited (NSIL) and Tata Play?",
  options: ["Satellite Constellation Project", "GSAT-24 Launch", "Space Tourism Venture", "Lunar Exploration Program"],
  correctAnswerIndex: 1,
  explanation: "In a strategic partnership, NewSpace India Limited (NSIL) teams up with Tata Play to introduce GSAT-24, aiming to augment satellite broadcasting capabilities and provide high-quality entertainment across the nation."
  ),
  Question(
  questionText: "Which country is set to launch its first lunar landing spacecraft, Luna25, marking a significant step in its renewed lunar exploration efforts?",
  options: ["India", "China", "Russia", "USA"],
  correctAnswerIndex: 2,
  explanation: "Russia is set to launch its first lunar landing spacecraft, Luna25, on August 11, marking a significant step in its renewed lunar exploration efforts."
  ),
  Question(
  questionText: "What is the objective of the Indian Space Research Organisation's (ISRO) first solar mission, Aditya-L1?",
  options: ["Mars Exploration", "Asteroid Mining", "Study the Sun", "Interstellar Travel"],
  correctAnswerIndex: 2,
  explanation: "ISRO is launching its first solar mission, Aditya-L1, to study the Sun. The mission will be placed in a halo orbit around the Lagrange point 1 (L1), enabling the study of the Sun’s atmosphere, magnetic fields, and space weather impacts."
  ),
  Question(
  questionText: "What groundbreaking development has been made by the Korea Advanced Institute of Science & Technology (KAIST) in aviation?",
  options: ["Solar-powered Aircraft", "Humanoid Robot Pilot", "Supersonic Passenger Jet", "AI-controlled Drones"],
  correctAnswerIndex: 1,
  explanation: "KAIST is making groundbreaking advancements in aviation with the development of 'Pibot,' a humanoid robot designed to fly aircraft using its own dexterity and advanced AI capabilities."
  ),
  Question(
  questionText: "Which Chennai-based company has commenced the integration process of its groundbreaking launch vehicle, Agnibaan SOrTeD?",
  options: ["ISRO (Indian Space Research Organisation)", "DRDO (Defence Research and Development Organisation)", "Bharat Dynamics Limited", "Agnikul Cosmos"],
  correctAnswerIndex: 3,
  explanation: "Chennai-based Agnikul Cosmos has commenced the integration process of its groundbreaking launch vehicle, Agnibaan SOrTeD, with its private launchpad situated at the Satish Dhawan Space Centre in Sriharikota."
  ),
  Question(
  questionText: "What milestone did the Indian Space Research Organisation (ISRO) achieve during the Chandrayaan-3 Mission Soft-landing LIVE Telecast?",
  options: ["Most Satellites Launched", "First Woman Astronaut", "Largest Rocket Used", "Most-watched Live Stream Globally"],
  correctAnswerIndex: 3,
  explanation: "ISRO's Chandrayaan-3 Mission Soft-landing LIVE Telecast captured the attention of over 80 lakh peak concurrent viewers (PCVs), making it the most-watched live stream globally."
  ),
  Question(
  questionText: "When is the Aditya-L1 mission, India's first space-based observatory to study the Sun, likely to be launched?",
  options: ["October 2023", "November 2023", "December 2023", "January 2024"],
  correctAnswerIndex: 0,
  explanation: "ISRO's Chief S Somanath announced that the Aditya-L1 mission is likely to be launched by the first week of September."
  ),
  Question(
  questionText: "What did the James Webb Space Telescope capture, showcasing the irregular galaxy ESO 300-16?",
  options: ["Emission Nebula", "Spiral Galaxy", "Star Cluster", "Ring Nebula"],
  correctAnswerIndex: 1,
  explanation: "The Hubble Space Telescope captured the awe-inspiring image of the irregular galaxy ESO 300-16, providing high-resolution and meticulously detailed images of celestial objects."
  ),
  Question(
  questionText: "What collaborative lunar mission is ISRO planning with the Japanese space agency (JAXA), slated for 2024-25?",
  options: ["Chandrayaan-4", "Luna Exploration Program", "LUPEX (Lunar Polar Exploration)", "Mars Orbiter Mission 2"],
  correctAnswerIndex: 2,
  explanation: "ISRO is planning a collaborative lunar mission with the Japanese space agency (JAXA) called LUPEX (Lunar Polar Exploration), scheduled for 2024-25."
  ),
  Question(
  questionText: "When are trials for the Gaganyaan mission, led by ISRO, expected to commence?",
  options: ["July 2023", "October 2023", "December 2023", "February 2024"],
  correctAnswerIndex: 1,
  explanation: "Union Minister Jitendra Singh provided a significant update, stating that trials for ISRO's Gaganyaan mission will commence in October."
  ),
  Question(
  questionText: "What innovative device did ISRO successfully test to enhance the safety of fishermen during sea expeditions?",
  options: ["Aquatic Robotic Drone", "Fishermen GPS Tracker", "Nabhmitra", "Ocean Weather Forecasting System"],
  correctAnswerIndex: 2,
  explanation: "ISRO achieved a significant milestone by successfully testing its innovative device named 'Nabhmitra,' developed at ISRO’s Space Applications Centre in Ahmedabad, aimed at enhancing the safety of fishermen during their sea expeditions."
  ),
  Question(
  questionText: "What significant confirmation did Chandrayaan-3's Pragyan rover module provide during insitu recordings near the lunar south pole?",
  options: ["Presence of Water", "Presence of Oxygen", "Presence of Sulphur", "Presence of Gold"],
  correctAnswerIndex: 2,
  explanation: "In a groundbreaking announcement, ISRO revealed that Chandrayaan-3's Pragyan rover module confirmed the presence of sulphur (S) on the surface of the Moon during insitu recordings near the lunar south pole."
  ),
  Question(
  questionText: "Who released the book 'Dr. APJ Abdul Kalam: Memories Never Die' in Rameshwaram?",
  options: ["Narendra Modi", "Rahul Gandhi", "Amit Shah", "Sonia Gandhi"],
  correctAnswerIndex: 2,
  explanation: "Union Home Minister and Minister of Cooperation, Shri Amit Shah released the 'Dr. APJ Abdul Kalam: Memories Never Die' book in Rameshwaram."
  ),
  Question(
  questionText: "Which debut novel by London-based Indian-origin author Chetna Maroo is among the 2023 Booker Prize longlist?",
  options: ["City of Dreams", "Western Lane", "Garden of Shadows", "Ocean's Embrace"],
  correctAnswerIndex: 1,
  explanation: "Chetna Maroo's debut novel 'Western Lane' is among 13 books to make the cut for the 2023 Booker Prize longlist, praised for its portrayal of the British Gujarati milieu."
  ),
  Question(
  questionText: "Who released the book and illustrations titled 'Kargil: Ek Yatri Ki Jubani' (Hindi Edition) at the Constitution Club of India?",
  options: ["Amit Shah", "Rajnath Singh", "S Jaishankar", "Nirmala Sitharaman"],
  correctAnswerIndex: 0,
  explanation: "Ajay Bhatt, Minister of State (MoS), Ministry of Defence (MoD), released the book and illustrations titled 'Kargil: Ek Yatri Ki Jubani' (Hindi Edition) authored by Rishi Raj."
  ),
  Question(
  questionText: "What is the title of Neerja Chowdhury's new book, recalling the drama that led to Sonia Gandhi's announcement?",
  options: ["The Political Drama", "The Power Play", "How Prime Ministers Decide", "Sonia's Journey"],
  correctAnswerIndex: 2,
  explanation: "Neerja Chowdhury's new book is titled 'How Prime Ministers Decide,' recalling the drama that led to Sonia Gandhi's announcement, prompted by Rahul’s 'fear for his mother’s life.'"
  ),
  Question(
  questionText: "What is the title of Abhay Kumar's (Abhay K) new book, launched at Kathika Culture Centre in Old Delhi?",
  options: ["Monsoon: A Poem of Love and Longing", "Whispers of the Wind", "Echoes of the Himalayas", "Rhythms of the Rain"],
  correctAnswerIndex: 0,
  explanation: "Indian poet diplomat Abhay Kumar launched his new book titled 'Monsoon: A Poem of Love and Longing,' a book-length poem running across 150 four-line stanzas."
  ),
  Question(
  questionText: "Which three books were released by Goa governor PS Sreedharan Pillai at the Raj Bhavan?",
  options: ["Heritage Trees of Goa, Dance of Shadows, Essence of Poetry", "When Parallel Lines Meet, Midnight Musings, Song of the Soul", "Ente Priya Kavithakal, Reflections of Twilight, Sands of Time", "Heritage Trees of Goa, When Parallel Lines Meet, Ente Priya Kavithakal"],
  correctAnswerIndex: 2,
  explanation: "Goa governor PS Sreedharan Pillai released three new books namely 'Heritage Trees of Goa,' 'When Parallel Lines Meet,' and 'Ente Priya Kavithakal' (‘My Dear Poems’ a collection of poems)."
  ),
  Question(
  questionText: "What is the title of the book by long-term cricket administrator Amrit Mathur, bringing alive insightful first-person accounts of memorable moments in Indian Cricket?",
  options: ["On the Field and Beyond", "The Cricket Chronicles", "Playing It Straight", "Pitchside: My Life in Indian Cricket"],
  correctAnswerIndex: 3,
  explanation: "A book titled 'Pitchside: My Life in Indian Cricket' by long-term cricket administrator Amrit Mathur brings alive insightful first-person accounts of some of Indian Cricket’s most memorable moments."
  ),

  Question(
  questionText: "What is being investigated following the death of the female cheetah named Dhatri at Kuno National Park?",
  options: [
  "Possible foul play by external factors",
  "Conservation methods for relocated cheetahs",
  "Post-mortem examination to determine the cause of death",
  "Impact of climate change on wildlife"
  ],
  correctAnswerIndex: 2,
  explanation: "A post-mortem examination is underway to determine the cause of death of the female cheetah named Dhatri at Kuno National Park."
  ),
  Question(
  questionText: "Which species achieved a significant moment of hope in their conservation journey due to successful breeding in captivity at the Assam State Zoo?",
  options: [
  "Bengal Tiger",
  "Himalayan Vulture",
  "Indian Rhino",
  "Snow Leopard"
  ],
  correctAnswerIndex: 1,
  explanation: "The Himalayan Vulture achieved a significant moment of hope in their conservation journey due to successful breeding in captivity at the Assam State Zoo."
  ),
  Question(
  questionText: "What did the Union Ministry of Health and Family Welfare prohibit for animal use under section 26A of the Drugs and Cosmetics Act, 1940?",
  options: [
  "Antibiotics",
  "'Ketoprofen' and 'Aceclofenac' along with their formulations",
  "Vaccines",
  "Pesticides"
  ],
  correctAnswerIndex: 1,
  explanation: "The Union Ministry of Health and Family Welfare prohibited the production, sale, and distribution of 'Ketoprofen' and 'Aceclofenac', along with their formulations, for animal use under section 26A of the Drugs and Cosmetics Act, 1940."
  ),
  Question(
  questionText: "Which two products were granted Geographical Indication (GI) Tags, signifying their unique nature and exceptional qualities?",
  options: [
  "Darjeeling Tea and Alphonso Mango",
  "Basmati Rice and Kanchipuram Silk Saree",
  "Rajouri Chikri Wood Craft and Mushqbudji Rice",
  "Agra Petha and Banarasi Paan"
  ],
  correctAnswerIndex: 2,
  explanation: "Rajouri Chikri Wood Craft from Rajouri district and the prized Mushqbudji Rice variety from Anantnag district were granted Geographical Indication (GI) Tags."
  ),
  Question(
  questionText: "Which railway station became the first 'Pink Station,' wholly managed by women staff?",
  options: [
  "New Delhi Railway Station",
  "Mumbai Central Railway Station",
  "New Amravati Railway Station",
  "Chennai Central Railway Station"
  ],
  correctAnswerIndex: 2,
  explanation: "Central Railway’s New Amravati station became the first station in Bhusaval Division and the third station within the Central Railway to be designated a 'Pink Station' – a station that is wholly managed by women staff."
  ),
  Question(
  questionText: "What distinction did the Indira Gandhi Memorial Tulip Garden achieve, leading to its recognition in the World Book of Records?",
  options: [
  "Largest collection of rare flowers",
  "Asia's largest and most spectacular tulip garden",
  "First fully automated garden in Asia",
  "Home to the rarest butterfly species"
  ],
  correctAnswerIndex: 1,
  explanation: "The Indira Gandhi Memorial Tulip Garden achieved recognition in the World Book of Records as Asia's largest and most spectacular tulip garden."
  ),
  Question(
  questionText: "Which banana variety native to Kanniyakumari district was granted a Geographical Indication (GI) tag?",
  options: [
  "Plantain Banana",
  "Red Banana",
  "Cavendish Banana",
  "Matti Banana"
  ],
  correctAnswerIndex: 3,
  explanation: "The Matti Banana variety native to Kanniyakumari district was granted a Geographical Indication (GI) tag."
  ),
  Question(
  questionText: "Which steel plant achieved the milestone of rolling out its inaugural Hot Rolled (HR) Coil just 9 days after commencing hot metal production?",
  options: [
  "Tata Steel Jamshedpur",
  "JSW Steel Vijayanagar",
  "Nagarnar Steel Plant",
  "Bhilai Steel Plant"
  ],
  correctAnswerIndex: 2,
  explanation: "The Nagarnar Steel Plant achieved the milestone of rolling out its inaugural Hot Rolled (HR) Coil just 9 days after commencing hot metal production."
  ),
  Question(
  questionText: "What virus, initially identified in Uganda in 1947, primarily transmitted by Aedes mosquitoes, was mentioned in the current affairs?",
  options: [
  "Dengue Virus",
  "Zika Virus",
  "Chikungunya Virus",
  "Yellow Fever Virus"
  ],
  correctAnswerIndex: 1,
  explanation: "The Zika virus, initially identified in Uganda in 1947, was mentioned in the current affairs. It is primarily transmitted by Aedes mosquitoes, which are active during the day."
  ),
  Question(
  questionText: "Which rice variety, known as 'Magic rice' and native to Assam, was recently granted a Geographical Indication (GI) tag?",
  options: [
  "Basmati Rice",
  "Joha Rice",
  "Chokuwa Rice",
  "Sona Masuri Rice"
  ],
  correctAnswerIndex: 2,
  explanation: "Chokuwa rice, fondly known as 'Magic rice,' was recently bestowed with the prestigious Geographical Indication (GI) tag."
  ),
  Question(
  questionText: "Where is the 71st edition of the Miss World beauty pageant scheduled to be hosted?",
  options: [
  "New York, USA",
  "Paris, France",
  "Kashmir, India",
  "Tokyo, Japan"
  ],
  correctAnswerIndex: 2,
  explanation: "Julia Eric Morely, the CEO of Miss World, announced the 71st edition of the Miss World beauty pageant, which is scheduled to be hosted in Kashmir, India."
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
    home: august(),
  ));
}

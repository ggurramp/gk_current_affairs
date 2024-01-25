import 'package:flutter/material.dart';
import 'dart:async'; // Import the dart:async package

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

class ApPolice2018_prelims_1Screen extends StatefulWidget {
  final String? userIdentifier;

  ApPolice2018_prelims_1Screen({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ApPolice2018_prelims_1Screen> createState() => _ApPolice2018_prelims_1ScreenState();
}

class _ApPolice2018_prelims_1ScreenState extends State<ApPolice2018_prelims_1Screen> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(47, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
        questionText: "Let the sum of 3 numbers be 13680. If the first number is 3/5 of the third number and the ratio between the second and the third numbers is 4:7, then the first number is.",
        options: [
          "3,600",
          "3,780",
          "4,280",
          "4,800",
        ],
        correctAnswerIndex: 0,
        explanation: "The first number is 3/5 of the third number. Let the third number be 5x. So, the first number is 3x. The ratio between the second and the third numbers is 4:7, which means the second number is 4x. The sum of these three numbers is 3x + 4x + 5x = 12x, which is given as 13680. Therefore, 12x = 13680 => x = 13680 / 12 = 1140. So, the first number is 3x = 3 * 1140 = 3,600."
    ),

    Question(
        questionText: "A boy distributes chocolates among four of his friends in the ratio 1/3 : 1/4 : 1/5 : 1/6. The minimum number of chocolates this boy should have, in order to do this distribution is.",
        options: [
          "60",
          "114",
          "57",
          "54",
        ],
        correctAnswerIndex: 1,
        explanation: "To distribute chocolates in the given ratios, you need to find the least common multiple (LCM) of the denominators, which is 60. So, the boy needs 60 chocolates to distribute them in the ratios 1/3 : 1/4 : 1/5 : 1/6, which are equivalent to 20/60, 15/60, 12/60, and 10/60 respectively."
    ),

    Question(
        questionText: "A person gave 2/5 of his property to his elder son and 30% of his property to his younger son. He shared the rest of the property among his three daughters in the ratio 3:5:2. If one of his sons got Rs. 20,000 more than the other, then the largest share among the shares of the daughters is.",
        options: [
          "Rs. 18,000",
          "Rs. 22,000",
          "Rs. 24,000",
          "Rs. 30,000",
        ],
        correctAnswerIndex: 2,
        explanation: "Let the total property be P. The elder son received (2/5) * P, and the younger son received 30% of P, which is (30/100) * P = (3/10) * P. One son got Rs. 20,000 more than the other, so (2/5) * P - (3/10) * P = Rs. 20,000. Simplifying this equation, you get (4/10) * P - (3/10) * P = Rs. 20,000, which is (1/10) * P = Rs. 20,000. Therefore, P = 20,000 * 10 = Rs. 200,000. The daughters share the rest, which is (1 - 2/5 - 3/10) * P = (5/10) * P = (1/2) * P. So, the largest share among the daughters is (2/5) * P = (2/5) * 200,000 = Rs. 80,000."
    ),

    Question(
        questionText: "The ratio of the present prices of two bicycles is 2:3. Two years later, when the price of the first is increased by 15% and that of the second by Rs. 475, the ratio of their prices becomes 3:5. The present price of the first bicycle in rupees is.",
        options: [
          "1090",
          "1120",
          "1140",
          "1280",
        ],
        correctAnswerIndex: 0,
        explanation: "Let the present prices of the two bicycles be 2x and 3x respectively. Two years later, the price of the first bicycle becomes (2x + 0.15 * 2x) = 2.3x, and the price of the second bicycle becomes (3x + 475). According to the given information, (2.3x) / (3x + 475) = 3 / 5. Cross-multiplying and solving for x, you get 5 * 2.3x = 3 * (3x + 475), which simplifies to 11.5x = 9x + 1425. Solving for x, you get 2.5x = 1425, so x = 1425 / 2.5 = 570. Therefore, the present price of the first bicycle is 2x = 2 * 570 = Rs. 1140."
    ),

    Question(
        questionText: "If the difference between the yearly compound interest for 2 years and simple interest for 3 years on a certain amount at 10% per annum is Rs. 1080, then that amount (in Rs.) is",
        options: [
          "10,260",
          "10,800",
          "11,400",
          "12,000",
        ],
        correctAnswerIndex: 1,
        explanation: "Let the principal amount be P. The formula for compound interest for 2 years at an annual interest rate of 10% is P * (1 + 0.10)^2 - P. The formula for simple interest for 3 years at an annual interest rate of 10% is P * 0.10 * 3 = 0.3P. According to the given information, (P * (1 + 0.10)^2 - P) - (0.3P) = 1080. Simplifying this equation, you get (1.21P - P) - 0.3P = 1080, which is 0.21P - 0.3P = 1080. Combining like terms, you get -0.09P = 1080. Solving for P, you get P = 1080 / (-0.09) = 12,000. Therefore, the amount is Rs. 12,000."
    ),

    Question(
        questionText: "A person borrowed some money for simple interest, and the interest paid is 4/9th of the principal. If the magnitudes of the interest rate and the time period are equal, then the rate of interest per annum is.",
        options: [
          "6 2/3%",
          "8 1/3%",
          "12 1/2%",
          "16 2/3%",
        ],
        correctAnswerIndex: 1,
        explanation: "Let the principal amount be P, the rate of interest per annum be R%, and the time period be T years. According to the given information, the interest paid is (4/9) * P, which is equal to (P * R * T) / 100. Since the magnitudes of the interest rate and the time period are equal, you can write this as (P * R^2) / 100 = (4/9) * P. Canceling out the P on both sides and solving for R^2, you get R^2 = (4/9) * 100 = 44. Taking the square root of both sides, you get R = √44 ≈ 6.67. Therefore, the rate of interest per annum is approximately 8 1/3%."
    ),

    Question(
        questionText: "A person borrowed a sum for simple interest at a certain rate for a period of 3 years. If he has taken it for 2% higher rate, he would have to pay Rs. 720 more. Then the sum (in Rs.) borrowed by him is.",
        options: [
          "12,000",
          "10,800",
          "9,600",
          "6,000",
        ],
        correctAnswerIndex: 0,
        explanation: "Let the principal amount be P, the original rate of interest per annum be R%, and the time period be T years (which is 3 years in this case). According to the given information, if he had taken the loan at a rate 2% higher, the interest would be Rs. 720 more. So, (P * (R + 2) * T) / 100 - (P * R * T) / 100 = 720. Simplifying this equation, you get (P * (R + 2) * 3) / 100 - (P * R * 3) / 100 = 720. Combining like terms, you get (3P * (R + 2) - 3P * R) / 100 = 720. Simplifying further, you get (3P * R + 6P - 3P * R) / 100 = 720. The '3P * R' terms cancel out, leaving you with (6P) / 100 = 720. Solving for P, you get P = (720 * 100) / 6 = Rs. 12,000."
    ),

    Question(
        questionText: "Sunil borrowed Rs. 25,000 from a money lender at 20% compound interest per annum. At the end of each year, he repaid Rs. 5,000. The amount he still owes to the lender after paying three such instalments is (in Rs.)",
        options: [
          "25,000",
          "22,500",
          "21,600",
          "20,000",
        ],
        correctAnswerIndex: 1,
        explanation: "The interest is compounded annually, and Sunil repays Rs. 5,000 at the end of each year. To calculate the amount he still owes after three years, you can use the formula for compound interest with multiple installments. The formula is: A = P * (1 + r)^n - (A1 + A2 + A3), where A is the amount after 'n' years, P is the principal amount, r is the annual interest rate, n is the number of years, and A1, A2, A3 are the amounts repaid at the end of each year. In this case, P = Rs. 25,000, r = 20% = 0.20, n = 3, A1 = A2 = A3 = Rs. 5,000. Plugging these values into the formula, you get: A = 25,000 * (1 + 0.20)^3 - (5,000 + 5,000 + 5,000) = 25,000 * 1.728 - 15,000 = 43,200 - 15,000 = Rs. 28,200. Therefore, the amount he still owes to the lender after three such instalments is Rs. 28,200."
    ),

    Question(
        questionText: "The number of times the number key buttons of a typewriter have to be pressed in order to type the first 300 natural numbers is.",
        options: [
          "792",
          "684",
          "762",
          "300",
        ],
        correctAnswerIndex: 0,
        explanation: "To type the first 300 natural numbers, you will need to type each number from 1 to 300. The number of key presses required to type each number is determined by the number of digits in that number. Numbers with one digit require 1 key press, numbers with two digits require 2 key presses, and so on. So, to calculate the total number of key presses, you can sum the number of key presses required for each number from 1 to 300. The sum of the first 9 natural numbers (1 to 9) requires 1 + 2 + ... + 9 = 45 key presses. The sum of the next 90 natural numbers (10 to 99) requires 2 key presses for each number, which is 90 * 2 = 180 key presses. Finally, the sum of the next 201 natural numbers (100 to 300) requires 3 key presses for each number, which is 201 * 3 = 603 key presses. Adding these together, you get 45 + 180 + 603 = 828 key presses. However, this counts the key presses for the digits only. You also need to account for the key presses needed for the commas and spaces between the numbers. There are 299 commas and 299 spaces needed. So, add 299 + 299 = 598 key presses for commas and spaces. The total number of key presses required is 828 + 598 = 1426. Therefore, the number of times the number key buttons of a typewriter have to be pressed in order to type the first 300 natural numbers is 1426, which is not one of the provided options."
    ),

    Question(
        questionText: "The number of zeros occurring after the last significant (non-zero) digit in the product of 75x60x48x35x30x24x18x10x5 is.",
        options: [
          "5",
          "6",
          "7",
          "9",
        ],
        correctAnswerIndex: 2,
        explanation: "To find the number of zeros at the end of a product, you need to count the number of factors of 10 in the product. A factor of 10 is formed by multiplying 2 and 5. In the given numbers, 10 is a factor of 60, 30, and 10, so you have three factors of 10. To count the factors of 2 and 5 in the remaining numbers, you can analyze their prime factorization: 75 = 3^1 * 5^2, 48 = 2^4 * 3^1, 35 = 5^1 * 7^1, 24 = 2^3 * 3^1, and 18 = 2^1 * 3^2. Now, let's calculate the number of factors of 2 and 5 in the product: Factors of 2: 4 (from 48) + 3 (from 24) + 1 (from 18) = 8 factors of 2 Factors of 5: 2 (from 75) + 2 (from 60) + 1 (from 35) + 2 (from 10) = 7 factors of 5 Since you need both a factor of 2 and a factor of 5 to get a factor of 10, you have a total of 7 factors of 5. Therefore, the number of zeros at the end of the product is determined by the smaller of the counts of factors of 2 and 5, which is 7. So, there are 7 zeros at the end of the product."
    ),

    Question(
        questionText: "The sum of the distinct primes that divide 5400 is.",
        options: [
          "10",
          "15",
          "17",
          "28",
        ],
        correctAnswerIndex: 1,
        explanation: "To find the sum of the distinct prime factors that divide 5400, first factorize 5400 into its prime factors: 5400 = 2^3 * 3^3 * 5^2. The distinct prime factors of 5400 are 2, 3, and 5. Now, sum these prime factors: 2 + 3 + 5 = 10. Therefore, the sum of the distinct primes that divide 5400 is 10."
    ),

    Question(
        questionText: "The number, among the following, that divides 712 - 224 is.",
        options: [
          "32",
          "33",
          "34",
          "35",
        ],
        correctAnswerIndex: 0,
        explanation: "To find the number among the given options that divides 712 - 224, you can first calculate the difference: 712 - 224 = 488. Now, check which of the provided numbers divide 488 evenly. Among the options, 32 is the only number that divides 488 without leaving a remainder, so 32 is the answer."
    ),

    Question(
        questionText: "The average age of two sons and their father is greater than the average age of the two sons and their mother by 4 years. If the average age of these four persons is 19 years and the average age of the two sons is 6 years, then the ratio of the ages between the father and mother is.",
        options: [
          "19 : 13",
          "18 : 17",
          "17 : 13",
          "16 : 13",
        ],
        correctAnswerIndex: 1,
        explanation: "Let F represent the age of the father and M represent the age of the mother. According to the given information, the average age of the two sons and their father is 19 years, so (6 + 6 + F) / 3 = 19. Simplifying this equation, you get 12 + F = 57, which means F = 57 - 12 = 45 years. Now, the average age of the two sons and their mother is 6 years less than 19, which is 13 years, so (6 + 6 + M) / 3 = 13. Simplifying this equation, you get 12 + M = 39, which means M = 39 - 12 = 27 years. Therefore, the ratio of the ages between the father and mother is 45 : 27, which can be simplified to 15 : 9 and further to 5 : 3. So, the ratio is 5 : 3."
    ),

    Question(
        questionText: "The average weight of A, B, C is 84 kg. If D joins this group, their average weight becomes 80 kg. If another man E who weighs 3 kg more than D replaces A then, the average weight of B, C, D, E becomes 79 kg. The weight of A (in kg) is.",
        options: [
          "68",
          "72",
          "75",
          "80",
        ],
        correctAnswerIndex: 1,
        explanation: "Let the weight of A be W_A, the weight of B be W_B, the weight of C be W_C, the weight of D be W_D, and the weight of E be W_E. According to the given information, the average weight of A, B, C is 84 kg, so (W_A + W_B + W_C) / 3 = 84. Multiplying both sides by 3, you get W_A + W_B + W_C = 252. When D joins this group, their average weight becomes 80 kg, so (W_A + W_B + W_C + W_D) / 4 = 80. Multiplying both sides by 4, you get W_A + W_B + W_C + W_D = 320. Now, you can find the weight of D (W_D) by subtracting the weight of A, B, and C from the weight of all four (A, B, C, D): W_D = 320 - 252 = 68 kg. Now, it's given that E weighs 3 kg more than D, so W_E = W_D + 3 = 68 + 3 = 71 kg. Finally, if E replaces A, the average weight of B, C, D, E becomes 79 kg, so (W_B + W_C + W_D + W_E) / 4 = 79. Plugging in the values, (W_B + W_C + 68 + 71) / 4 = 79. Simplifying this equation, W_B + W_C + 139 = 316. Subtracting 139 from both sides, W_B + W_C = 177. Now, you have two equations: W_A + W_B + W_C = 252 and W_B + W_C = 177. Subtracting the second equation from the first, you get W_A = 252 - 177 = 75 kg. Therefore, the weight of A is 75 kg."
    ),



  Question(
      questionText: "Let the sum of 3 numbers be 13680. If the first number is 3/5 of the third number and the ratio between the second and the third numbers is 4:7, then the first number is.",
      options: ["3,600", "3,780", "4,280", "4,800"],
      correctAnswerIndex: 2,
      explanation: "To find the first number, let's assume that the third number is 7x. Then, the second number is 4x (since the ratio between the second and third numbers is 4:7). Now, we can calculate the sum of the three numbers:7x + 4x + 3/5 * 7x = 13680.\n\nSolving this equation gives us x = 680.  So, the first number = 3/5 * 7x = 3/5 * 7 * 680 = 4,280.",
    ),

    Question(
      questionText: "What is the capital of Andhra Pradesh?",
      options: ["Vijayawada", "Visakhapatnam", "Amaravati", "Hyderabad"],
      correctAnswerIndex: 2,
      explanation: "Amaravati is the capital of Andhra Pradesh.",
    ),
    Question(
      questionText: "Who is the Chief Minister of Andhra Pradesh?",
      options: ["Chandrababu Naidu", "Jagan Mohan Reddy", "N. T. Rama Rao", "K. Rosaiah"],
      correctAnswerIndex: 1,
      explanation: "Jagan Mohan Reddy is the Chief Minister of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which river flows through Andhra Pradesh?",
      options: ["Yamuna", "Godavari", "Krishna", "Ganges"],
      correctAnswerIndex: 1,
      explanation: "The Godavari River flows through Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the official language of Andhra Pradesh?",
      options: ["Telugu", "Hindi", "English", "Tamil"],
      correctAnswerIndex: 0,
      explanation: "Telugu is the official language of Andhra Pradesh.",
    ),
    Question(
      questionText: "When was Andhra Pradesh formed?",
      options: ["1950", "1960", "1970", "1980"],
      correctAnswerIndex: 1,
      explanation: "Andhra Pradesh was formed on October 1, 1953.",
    ),
    Question(
      questionText: "Which city is known as the 'City of Destiny'?",
      options: ["Vijayawada", "Visakhapatnam", "Amaravati", "Hyderabad"],
      correctAnswerIndex: 1,
      explanation: "Visakhapatnam is known as the 'City of Destiny'.",
    ),
    Question(
      questionText: "What is the state animal of Andhra Pradesh?",
      options: ["Tiger", "Lion", "Blackbuck", "Elephant"],
      correctAnswerIndex: 2,
      explanation: "The Blackbuck is the state animal of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which festival is celebrated with the 'Deccan Festival' in Andhra Pradesh?",
      options: ["Pongal", "Diwali", "Ugadi", "Ganesh Chaturthi"],
      correctAnswerIndex: 2,
      explanation: "Ugadi is celebrated with the 'Deccan Festival' in Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the highest peak in Andhra Pradesh?",
      options: ["Tirumala", "Arma Konda", "Anamudi", "Kalsubai"],
      correctAnswerIndex: 1,
      explanation: "Arma Konda is the highest peak in Andhra Pradesh.",
    ),
    Question(
      questionText: "Which fort is located in the city of Guntur?",
      options: ["Golconda Fort", "Warangal Fort", "Bhongir Fort", "Kondapalli Fort"],
      correctAnswerIndex: 3,
      explanation: "Kondapalli Fort is located in the city of Guntur.",
    ),
    Question(
      questionText: "Who was the first Chief Minister of Andhra Pradesh?",
      options: ["P. V. Narasimha Rao", "K. Brahmananda Reddy", "N. Chandrababu Naidu", "Y. S. Rajasekhara Reddy"],
      correctAnswerIndex: 1,
      explanation: "K. Brahmananda Reddy was the first Chief Minister of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which dance form is associated with Andhra Pradesh?",
      options: ["Bharatanatyam", "Kathakali", "Kuchipudi", "Odissi"],
      correctAnswerIndex: 2,
      explanation: "Kuchipudi is a famous dance form associated with Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the state bird of Andhra Pradesh?",
      options: ["Peacock", "Indian Roller", "Sparrow", "Parrot"],
      correctAnswerIndex: 1,
      explanation: "The Indian Roller is the state bird of Andhra Pradesh.",
    ),
    Question(
      questionText: "Which famous temple is located in Tirupati?",
      options: ["Meenakshi Temple", "Kashi Vishwanath Temple", "Siddhivinayak Temple", "Venkateswara Temple"],
      correctAnswerIndex: 3,
      explanation: "The Venkateswara Temple is located in Tirupati, Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the largest city in Andhra Pradesh by population?",
      options: ["Vijayawada", "Visakhapatnam", "Amaravati", "Hyderabad"],
      correctAnswerIndex: 1,
      explanation: "Visakhapatnam is the largest city in Andhra Pradesh by population.",
    ),
    Question(
      questionText: "Which Indian President hails from Andhra Pradesh?",
      options: ["A. P. J. Abdul Kalam", "Dr. Rajendra Prasad", "Dr. Zakir Husain", "S. Radhakrishnan"],
      correctAnswerIndex: 0,
      explanation: "Dr. A. P. J. Abdul Kalam, the 'Missile Man of India,' hails from Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the main seaport in Andhra Pradesh?",
      options: ["Kandla Port", "Mormugao Port", "Paradip Port", "Visakhapatnam Port"],
      correctAnswerIndex: 3,
      explanation: "Visakhapatnam Port is the main seaport in Andhra Pradesh.",
    ),
    Question(
      questionText: "Who wrote the Telugu epic 'Maha Bharatamu'?",
      options: ["Nannaya Bhattaraka", "Tikkana Somayaji", "Yerrapragada", "Bammera Potana"],
      correctAnswerIndex: 0,
      explanation: "Nannaya Bhattaraka wrote the Telugu epic 'Maha Bharatamu.'",
    ),
    Question(
      questionText: "What is the famous festival celebrated in Rajahmundry, Andhra Pradesh?",
      options: ["Pongal", "Diwali", "Ugadi", "Pushkaram"],
      correctAnswerIndex: 3,
      explanation: "Pushkaram is a famous festival celebrated in Rajahmundry, Andhra Pradesh.",
    ),
    Question(
      questionText: "What is the capital of France?",
      options: ["Madrid", "Berlin", "Paris", "London"],
      correctAnswerIndex: 2,
      explanation: "Paris is the capital of France.",
    ),
    Question(
      questionText: "Which planet is known as the Red Planet?",
      options: ["Mars", "Jupiter", "Venus", "Saturn"],
      correctAnswerIndex: 0,
      explanation: "Mars is often referred to as the Red Planet due to its reddish appearance.",
    ),
    Question(
      questionText: "Who wrote the play 'Romeo and Juliet'?",
      options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Leo Tolstoy"],
      correctAnswerIndex: 1,
      explanation: "William Shakespeare wrote the play 'Romeo and Juliet.'",
    ),
    Question(
      questionText: "Which gas do plants absorb from the atmosphere?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0,
      explanation: "Plants absorb carbon dioxide from the atmosphere during photosynthesis.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    Question(
      questionText: "What is the capital of France?",
      options: ["Madrid", "Berlin", "Paris", "London"],
      correctAnswerIndex: 2,
      explanation: "Paris is the capital of France.",
    ),
    Question(
      questionText: "Which planet is known as the Red Planet?",
      options: ["Mars", "Jupiter", "Venus", "Saturn"],
      correctAnswerIndex: 0,
      explanation: "Mars is often referred to as the Red Planet due to its reddish appearance.",
    ),
    Question(
      questionText: "Who wrote the play 'Romeo and Juliet'?",
      options: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Leo Tolstoy"],
      correctAnswerIndex: 1,
      explanation: "William Shakespeare wrote the play 'Romeo and Juliet.'",
    ),
    Question(
      questionText: "Which gas do plants absorb from the atmosphere?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0,
      explanation: "Plants absorb carbon dioxide from the atmosphere during photosynthesis.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    Question(
      questionText: "What is the largest mammal in the world?",
      options: ["Giraffe", "Elephant", "Blue whale", "Hippopotamus"],
      correctAnswerIndex: 2,
      explanation: "The blue whale is the largest mammal in the world.",
    ),
    // Add your questions here
    // ...
  ];
  int _elapsedTimeInSeconds = 0; // Elapsed exam time in seconds

  late Timer _examTimer;

  @override
  void initState() {
    super.initState();
    _loadLikedData();
    //_timerValueNotifier = ValueNotifier<int>(_timerSeconds);
    _startApPolice2018_prelims_1Timer();
  }
  void _startApPolice2018_prelims_1Timer() {
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
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
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
              return ListTile(
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
              );
            }).toList(),
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
    home: ApPolice2018_prelims_1Screen(),
  ));
}

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

class Csat_2023 extends StatefulWidget {
  final String? userIdentifier;

  Csat_2023({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<Csat_2023> createState() => _Csat_2023State();
}

class _Csat_2023State extends State<Csat_2023> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [
    Question(
      questionText: "Passage 1: We often hear about conflicts among different States in India over river waters. Of the 20 major river systems, 14 are already water-stressed; 75% of the population lives in water-stressed regions, a third of whom live in water-scarce areas. Climate change, the demands of rising population and the need for agriculture to keep pace, and increased rate of urbanization and industrialization will exacerbate water stress. According to the Constitution of India, water is a State subject and not that of the Union, except for regulation of inter-State rivers. Key to ensuring balance between competing demands of various stakeholders is a basin-based approach to allocate water amongst constituent regions and States. Allocating fair share of water to them requires assessments based on objective criteria, such as specificities of the river basin, size of dependent population, existing water use and demand, efficiency of use, projected future use, etc. while ensuring the environmental needs of the river and aquifers.\n\nWhich of the following statements best reflects the most rational, practical and immediate action required to ensure fair and equitable allocation of water to different stakeholders?",
      options: [
        "A national, pragmatic, legal and policy framework for water allocation should be made.",
        "All river systems of the country should be linked and huge aquifers created.",
        "Water channels between regions of water surplus and regions of water deficit should be created.",
        "To mitigate water crisis, water demand of sectors such as agriculture and industry should be reduced."
      ],
      correctAnswerIndex: 0,
      explanation: "The passage emphasizes the need for a basin-based approach to allocate water amongst various stakeholders, accounting for specificities of river basins, population, and projected water demand. A national framework would provide the guidelines and structures for this allocation, making it the most rational and immediate action.",
    ),

    Question(
      questionText: "Passage 2: More than half of Indian women and almost a quarter of Indian men of working age suffer from anaemia. According to studies, they are anywhere from 5 – 15% less productive than they could be, as a result thereof. India also has the largest tuberculosis burden in the world, costing 170 million workdays to the country annually. But what is just as important as lost productivity now is lost potential in the future. It is becoming increasingly clear that many measures of cognitive ability, malnourished Indian children perform two or three times worse than their adequately nourished peers. For an economy that will be more dependent on highly skilled workers, this poses a significant challenge. And it is one that really should be addressed given India’s demographic outlook.\n\nWhich one of the following statements best reflects what is implied by the passage?",
      options: [
        "Education system must be strengthened in rural areas.",
        "Large scale and effective implementation of skill development programme is the need of the hour.",
        "For economic development, health and nutrition of only skilled workers needs special attention.",
        "For rapid economic growth as envisaged by us, attention should be paid to health and nutrition of the people."
      ],
      correctAnswerIndex: 3,
      explanation: "The passage talks about the negative impact of anaemia on productivity and emphasizes the importance of health and nutrition in the future, especially considering India’s demographic outlook. While it mentions economic challenges due to malnutrition, the overall implication is about the broader importance of health and nutrition for the country's people.",
    ),
    Question(
      questionText: "Passage: In India, a majority of farmers are marginal and small, less educated and possess low adaptive capabilities to climate change, perhaps because of credit and other constraints. So, one cannot expect autonomous adaptation to climate change. Even if it was possible, it would not be sufficient to offset losses from climate change. To deal with this, adaptation to climate change is paramount, alongside a fast mitigation response. Another solution is to have a planned or policy-driven adaptation, which would require the government to come up with policy recommendations. Perception is a necessary pre-requisite for adaptation. Whether farmers are adapting agricultural practices to climate change depends on whether they perceive it or not. However, this is not always enough for adaptation. It is important how a farmer perceives the risks associated with climate change. Which one of the following statements best reflects the most logical and rational message conveyed by the author of the passage?",
      options: ["Adaptation to climate change and mitigation response are basically the responsibilities of the government.",
        "Climate change causes a change in government policies regarding land use patterns in the country.",
        "Risk perceptions of farmers are important for motivating them for taking adaptation decisions.",
        "Since mitigation is not possible, governments should come up with policies for quick response to climate change."],
      correctAnswerIndex: 2,
      explanation: "The passage emphasizes the importance of how farmers perceive the risks associated with climate change and that their perceptions are crucial for motivating them to take adaptation decisions.",
    ),
    Question(
      questionText: "Raj has ten pairs of red, nine pairs of white and eight pairs of black shoes in a box. If he randomly picks shoes one by one (without replacement) from the box to get a red pair of shoes to wear, what is the maximum number of attempts he has to make?",
      options: ["27", "36", "44", "45"],
      correctAnswerIndex: 2,
      explanation: "In the worst-case scenario, he might pick all the white and black shoes before getting to a red pair. That would be 9 pairs of white (18 shoes) + 8 pairs of black (16 shoes) = 34 shoes. He would then need to pick 2 more shoes (a pair of red) for a total of 36 attempts. But since he only needs one red pair to wear, he could potentially pick 10 individual red shoes before getting a matching pair, making it a total of 44 attempts.",
    ),
    Question(
      questionText: "In how many ways can a batsman score exactly 25 runs by scoring single runs, fours and sixes only, irrespective of the sequence of scoring shots?",
      options: ["18", "19", "20", "21"],
      correctAnswerIndex: 1, // Placeholder, answer may vary
      explanation: "The answer would depend on the different combinations of runs, fours, and sixes that sum up to 25 runs.", // Placeholder explanation
    ),
    Question(

      questionText: "passage:The emissions humans put into the atmosphere now will affect the climate in the middle of the century and onwards. Technological change, meanwhile, could make a future transition away from fossil fuels cheap or it might not, leaving the world with a terrible choice between sharply reducing emissions at huge cost or suffering through the effects of unabated warming. Businesses that do not hedge against the threat of uncertain outcomes fail. The world cannot afford such recklessness on climate change.\nWhich one of the following statements best reflects the crucial message conveyed by the author of the passage?",
      options: [
        "Businesses that cause emissions may need to close down or pay for pollution in future.",
        "The only solution is technological development related to the issues of climate change.",
        "Waiting to deal with carbon emissions until technology improves is not a wise strategy.",
        "Since future technological change is uncertain, new industries should be based on renewable energy sources."
      ],
      correctAnswerIndex: 2,
      explanation: "The author emphasizes the importance of not waiting and the dangers of recklessness concerning climate change. It suggests that waiting for technological advancements is a risky strategy given the uncertainties.",
    ),

    Question(
      questionText: "What is the remainder when 85 x 87 x 89 x 91 x 95 x 96 is divided by 100?",
      options: ["0", "1", "2", "4"],
      correctAnswerIndex: 1,
      explanation: "Without going into the detailed math, the result of multiplying several numbers and then finding the remainder when divided by 100 will give us 1.",
    ),

    Question(
      questionText: "What is the unit digit in the expansion of (57242)⁹⁷x5x3x1?",
      options: ["2", "4", "6", "8"],
      correctAnswerIndex: 0,
      explanation: "When calculating the unit digit of the product of numbers, only the unit digits of those numbers are relevant. 2x5x1 = 10, and the unit digit of 10 is 0. 0 multiplied by any number remains 0. But since there's a 2 outside the parenthesis, the unit digit becomes 2.",
    ),
    Question(
      questionText: "Passage: Environmental problems cause health problems. Substantial changes in lifestyle can reduce environmental or health problems, but this idea appears almost impossible to adopt. With environmental problems, individual efforts can be perceived as having a negligible effect and therefore lead to inertia. With health, on the other hand, individual choices can make the difference between life and death, literally. And yet, barring a few, there seems to be the same collective lethargy towards making their choices. Which one of the following statements best implies the most rational assumption that can be made from the passage?",
      options: ["We are likely to spend more money on cure than prevention.",
        "It is the job of the government to solve our environmental and public health problems.",
        "Health can be protected even if environmental problems go on unattended.",
        "Loss of traditional lifestyle and the influence of western values led to some unhealthy ways of living."],
      correctAnswerIndex: 0, // Placeholder, answer may vary
      explanation: "The passage suggests that while changes in lifestyle can help, there is a general inertia towards taking action. This could imply that we might end up spending more on curing the effects rather than preventing them in the first place.",
    ),
    Question(
      questionText: "Passage: Many people are not eating the right food. For some, it is simply a decision to stick with food they enjoy but which is not too healthy. This is leading to an increase in non-communicable diseases. This in turn leads to a major burden on our health-care systems that have the potential to derail the economic progress which is essential for the poor to improve their lives. For others, it is about limited access to nutritious food or a lack of affordability, leading to monotonous diets that do not provide the daily nutrients for them to develop fully. Part of the reason nutrition is under threat worldwide is that our food systems are not properly responding to nutritional needs. Somewhere along that long road from farm to fork, there are serious detours taking place. Which one of the following statements best reflects the crux of the passage?",
      options: ["The scheme of Universal Basic Income should be implemented worldwide as a way of poverty alleviation.",
        "We must place food-based nutrition at the centre of our policy debate.",
        "Nutritional status of food should be improved by creating appropriate genetically modified crops.",
        "Using modern food processing technologies, we must fortify food items with required nutrient elements."],
      correctAnswerIndex: 1, // Placeholder, answer may vary
      explanation: "The central theme of the passage is the importance of proper nutrition and the challenges faced by people in accessing nutritious food. This implies that food-based nutrition should be a primary concern in policy discussions.",
    ),


    Question(

      questionText: "passage:To tackle the problem of pollution in cities, policy makers think that drastic actions like temporary use of odd-even number scheme for vehicles, closing schools, factories, construction activities, and banning the use of certain type of vehicles are a way forward. Even then the air is not clean. Vehicles more than 15 years old comprise one percent of the total; and taking them off the road will not make any difference. Banning certain fuels and car types arbitrarily is not proper. Diesel engines produce more PM 2-5 and less CO₂ than petrol or CNG engines. On the other hand, both diesel and CNG engines produce more NOx than petrol engines. No one has measured the amount of NOx that CNG engines are emitting. Arbitrary bans on vehicles that have passed mandated fitness tests and periodic pollution tests are unfair. What is needed is the scientific and reliable information about the source of pollutants on a continuing basis and the technologies that will work to reduce pollution from them.\n Which one of the following statements best reflects the most logical and rational implication conveyed by the passage?",
      options: [
        "Arbitrary curbs on vehicles to reduce pollution are difficult to implement.",
        "Knee-jerk reactions cannot solve the problem of pollution but an evidence-based approach will be more effective.",
        "A heavy penalty should be enforced on those driving without periodic pollution tests.",
        "In the absence of laws to deal with the problems of pollution, the administration tends to make arbitrary decisions."
      ],
      correctAnswerIndex: 1,
      explanation: "The passage highlights that arbitrary bans are not proper and emphasizes the need for a scientific and evidence-based approach to tackle pollution. Thus, the statement 'Knee-jerk reactions cannot solve the problem of pollution but an evidence-based approach will be more effective' best reflects the passage's implication.",
    ),

    Question(

      questionText: "passage: Good corporate governance structures encourage companies to provide accountability and control. A fundamental reason why corporate governance has moved onto the economic and political agenda worldwide has been the rapid growth in international capital markets. Effective corporate governance enhances access to external financing by firms, leading to greater investment, higher growth and employment. Investors look to place their funds where the standards of disclosure, of timely and accurate financial reporting, and of equal treatment to all stakeholders are met, Which of the following statements best reflects the logical inference from the passage given above?",
      options: [
        "It is an important agenda of the countries around the world to ensure access to good external financing.",
        "Good corporate governance improves the credibility of the firms.",
        "International capital markets ensure that the firms maintain good corporate governance.",
        "Good corporate governance paves the way for robust supply chains."
      ],
      correctAnswerIndex: 1,
      explanation: "The passage suggests that effective corporate governance leads to better financial reporting and treatment of stakeholders, which improves the credibility and trustworthiness of firms. Hence, the statement 'Good corporate governance improves the credibility of the firms' is the best reflection of the passage's inference.",
    ),
    Question(
      questionText: "Three of the five positive integers p, q, r, s, t are even and two of them are odd (not necessarily in order). Consider the following : 1. p + q + r - s - t is definitely even. 2. 2p + q + 2r - 2s + t is definitely odd. Which of the above statements is/are correct?",
      options: ["1 only",
        "2 only",
        "Both 1 and 2",
        "Neither 1 nor 2"],
      correctAnswerIndex: 2,
      explanation: "An even number plus or minus another even number is always even. Similarly, an odd number plus or minus another odd number is also even. Thus, the sum or difference of any set of even numbers is always even. Therefore, the first statement is correct. The second statement is also correct because an even number times an odd number is even and the sum of even numbers is even. Adding or subtracting odd numbers from this result will yield an odd number.",
    ),
    Question(
      questionText: "Consider the following in respect of prime number p and composite number c: 1. p + c can be even. 2. 2p + c can be odd. 3. pc can be odd. Which of the statements given above are correct?",
      options: ["1 and 2 only",
        "2 and 3 only",
        "1 and 3 only",
        "1, 2 and 3"],
      correctAnswerIndex: 1,
      explanation: "The only even prime is 2. So if p is 2 and c is odd, both 1 and 2 are true. But 2 times any number is always even, so 3 cannot be true as even times odd is even.",
    ),
    Question(
      questionText: "A 3-digit number ABC, on multiplication with D gives 37DD where A, B, C and D are different non-zero digits. What is the value of A + B + C?",
      options: ["18",
        "16",
        "15",
        "Cannot be determined due to insufficient data"],
      correctAnswerIndex: 3,
      explanation: "From the information given, we cannot determine the exact values of A, B, and C without additional constraints on D.",
    ),
    Question(
      questionText: "For any choices of values of X, Y and Z, the 6-digit number of the form XYXZYZ is divisible by:",
      options: ["7 and 11 only",
        "11 and 13 only",
        "7 and 13 only",
        "7, 11 and 13"],
      correctAnswerIndex: 0,
      explanation: "The divisibility rule for 11 is that the difference between the sum of the digits in odd places and the sum of the digits in even places should be either 0 or divisible by 11. For the given form, this is true. The number isn't necessarily divisible by 13.",
    ),




    Question(
      questionText: "Who was the third president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 2,
      explanation: "Zakir Hussain was the third president of India.",
    ),

    Question(
      questionText: "Who was the first president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 0,
      explanation: "Rajendra Prasad was the first president of India.",
    ),
    Question(
      questionText: "Who was the second president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 1,
      explanation: "Sarvepalli Radhakrishnan was the second president of India.",
    ),

    Question(
      questionText: "Who was the fourth president of India?",
      options: ["Rajendra Prasad", "Sarvepalli Radhakrishnan", "Zakir Hussain", "V. V. Giri"],
      correctAnswerIndex: 3,
      explanation: "V. V. Giri was the fourth president of India.",
    ),
    Question(
      questionText: "Who was the fifth president of India?",
      options: ["Fakhruddin Ali Ahmed", "V. V. Giri", "Sanjiva Reddy", "N. Sanjiva Reddy"],
      correctAnswerIndex: 0,
      explanation: "Fakhruddin Ali Ahmed was the fifth president of India.",
    ),
    Question(
      questionText: "Who was the sixth president of India?",
      options: ["Fakhruddin Ali Ahmed", "V. V. Giri", "N. Sanjiva Reddy", "M Sanjiva Reddy"],
      correctAnswerIndex: 2,
      explanation: "N Sanjiva Reddy was the sixth president of India.",
    ),
    Question(
      questionText: "Who was the seventh president of India?",
      options: ["Fakhruddin Ali Ahmed", "V. V. Giri", "Sanjiva Reddy", "Giani Zail Singh"],
      correctAnswerIndex: 3,
      explanation: "Giani Zail Singh was the seventh president of India.",
    ),
    Question(
      questionText: "Who was the eighth president of India?",
      options: ["R. Venkataraman", "N. Sanjiva Reddy", "R. Venkataraman", "Ramaswamy Venkataraman"],
      correctAnswerIndex: 0,
      explanation: "R. Venkataraman was the eighth president of India.",
    ),
    Question(
      questionText: "Who was the 13th president of India?",
      options: ["Gyani Zail Singh", "N. Sanjiva Reddy", "R. Venkataraman", "Pranab Mukherjee"],
      correctAnswerIndex: 3,
      explanation: "Pranab Mukherjee was the ninth president of India.",
    ),
    Question(
      questionText: "Who was the eighth president of India?",
      options: ["Shankar Dayal Sharma", "Ramaswamy Venkataraman", "K. R. Narayanan", "Kocheril Raman Narayanan"],
      correctAnswerIndex: 0,
      explanation: "Shankar Dayal Sharma was the tenth president of India.",
    ),
    Question(
      questionText: "Who was the tenth president of India?",
      options: ["Shankar Dayal Sharma", "Ramaswamy Venkataraman", "M. R. Narayanan", "Kocheril Raman Narayanan"],
      correctAnswerIndex: 3,
      explanation: "Kocheril Raman Narayanan was the eleventh president of India.",
    ),
    Question(
      questionText: "Who is the fifteenth president of India?",
      options: ["Pranab Mukherjee", "Ram Nath Kovind", "Draupadi Murmu", "Droupadi Murmu"],
      correctAnswerIndex: 2,
      explanation: "Draupadi Murmu is the fifteenth and current president of India.",
    ),

    Question(
      questionText: "Who was the eleventh president of India?",
      options: ["A. P. J. Abdul Kalam", "K. R. Narayanan", "R. C. Prasad", "Abdul Kalam"],
      correctAnswerIndex: 0,
      explanation: "A. P. J. Abdul Kalam was the twelfth president of India.",
    ),
    Question(
      questionText: "Who was the twelfth  president of India?",
      options: ["A. P. J. Abdul Kalam", "Pratibha Patil", "Pranab Mukherjee", "A. P. J. Abdul Kalam"],
      correctAnswerIndex: 1,
      explanation: "Pratibha Patil was the thirteenth president of India.",
    ),
    Question(
      questionText: "Who was the fourteenth president of India?",
      options: ["Pratibha Patil", "Pranab Mukherjee", "Ram Nath Kovind", "Draupadi Murmu"],
      correctAnswerIndex: 2,
      explanation: "Ram Nath Kovind was the fourteenth president of India.",
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
    _startpresidentsOfIndiaTimer();
  }
  void _startpresidentsOfIndiaTimer() {
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
    home: Csat_2023(),
  ));
}

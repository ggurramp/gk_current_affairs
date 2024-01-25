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

class ljti extends StatefulWidget {
  final String? userIdentifier;

  ljti({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<ljti> createState() => _ljtiState();
}

class _ljtiState extends State<ljti> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [

   // 90.LANDMARK JUDGEMENT AND THEIR IMPACTS

    Question(
      questionText: "In the Romesh Thappar case (1950), what was the primary issue addressed by the Supreme Court?",
      options: ["Preventive Detention", "Freedom of the Press", "Landmark Judgments", "Constitutional Interpretation"],
      correctAnswerIndex: 1,
      explanation: "The primary issue addressed in the Romesh Thappar case was the freedom of the press. The Supreme Court ruled that freedom of speech and expression under Article 19(1)(a) includes the freedom of propagation of ideas.",
    ),

    Question(
      questionText: "What did the Supreme Court declare regarding the Madras government's ban on the weekly English journal Cross Roads?",
      options: [
        "It was upheld as constitutional.",
        "It was declared as unconstitutional and void.",
        "It required further review.",
        "It was considered valid under Article 19(2)."
      ],
      correctAnswerIndex: 1,
      explanation: "The Supreme Court declared that the Madras government's ban on the weekly English journal Cross Roads was unconstitutional and void in the Romesh Thappar case (1950).",
    ),

    Question(
      questionText: "What impact did the Romesh Thappar case have on subsequent legislation?",
      options: [
        "Introduction of Article 21 in the Constitution.",
        "Addition of 'public order' as a reasonable restriction under Article 19(2).",
        "Removal of restrictions on freedom of speech.",
        "Amendment of Article 22 related to preventive detention."
      ],
      correctAnswerIndex: 1,
      explanation: "As a sequel to the Romesh Thappar case, the 1st Amendment Act (1951) added 'public order' as a reasonable restriction under Article 19(2) on the freedom of speech and expression.",
    ),

    Question(
      questionText: "Which fundamental right was addressed in the A.K. Gopalan case (1950)?",
      options: ["Right to Equality", "Right to Religion", "Right to Freedom of Speech", "Right to Personal Liberty"],
      correctAnswerIndex: 3,
      explanation: "The A.K. Gopalan case (1950) primarily addressed the fundamental right to personal liberty, particularly under Article 21 of the Constitution.",
    ),

    Question(
      questionText: "What did the Supreme Court declare regarding Section 14 of the Preventive Detention Act (1950) in the A.K. Gopalan case?",
      options: [
        "It was declared as valid and effective.",
        "It was ruled unconstitutional and void.",
        "It required further legislative review.",
        "It was considered a reasonable restriction."
      ],
      correctAnswerIndex: 1,
      explanation: "In the A.K. Gopalan case, the Supreme Court invalidated Section 14 of the Preventive Detention Act (1950) on the ground that it violated the fundamental right guaranteed under Article 22.",
    ),

    Question(
      questionText: "What interpretation did the Supreme Court adopt in the A.K. Gopalan case regarding Article 21?",
      options: [
        "Broad (expansive) interpretation.",
        "Textualist (restrictive) interpretation.",
        "Liberal interpretation.",
        "Literal interpretation."
      ],
      correctAnswerIndex: 1,
      explanation: "In the A.K. Gopalan case, the Supreme Court adopted a textualist (restrictive) interpretation of Article 21, stating that the word 'law' in Article 21 referred to state-made law and not the principles of natural justice.",
    ),

    Question(
      questionText: "How did the Supreme Court interpret the expression 'procedure established by law' in Article 21 in the A.K. Gopalan case?",
      options: [
        "As equivalent to 'due process of law' as in the American legal system.",
        "As a protection against arbitrary legislative actions.",
        "As protection only against executive actions.",
        "As irrelevant to the protection of personal liberty."
      ],
      correctAnswerIndex: 0,
      explanation: "In the A.K. Gopalan case, the Supreme Court declared that the expression 'procedure established by law' in Article 21 cannot be interpreted to mean the same thing as the American expression 'due process of law.'",
    ),

    Question(
      questionText: "What was the key issue addressed in the Champakam Dorairajan case (1951)?",
      options: [
        "Power of Parliament to amend the constitution",
        "Communal reservation in admission to educational institutions",
        "Parliament's power to diminish the area of a state",
        "Validity of the 1st Amendment Act (1951)"
      ],
      correctAnswerIndex: 1,
      explanation: "The key issue addressed in the Champakam Dorairajan case was communal reservation in admission to educational institutions. The Supreme Court struck down the communal government order that provided for the proportionate reservation of seats in government medical and engineering colleges for different communities.",
    ),

    Question(
      questionText: "What did the Supreme Court declare regarding the directive principles in the Champakam Dorairajan case?",
      options: [
        "They can override fundamental rights.",
        "They are subsidiary to fundamental rights.",
        "They have equal importance with fundamental rights.",
        "They are independent of fundamental rights."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Champakam Dorairajan case, the Supreme Court declared that the directive principles cannot override or abridge fundamental rights. It stated that directive principles have to conform to and run as subsidiary to fundamental rights.",
    ),

    Question(
      questionText: "What impact did the Champakam Dorairajan case have on the Constitution?",
      options: [
        "Introduction of Article 21 in the Constitution.",
        "Insertion of Clause (4) in Article 15.",
        "Amendment of Article 368.",
        "Abolition of the right to property."
      ],
      correctAnswerIndex: 1,
      explanation: "The impact of the Champakam Dorairajan case led to the insertion of a new Clause (4) in Article 15 by the 1st Amendment Act (1951), permitting the state to make special provisions for the advancement of socially and educationally backward classes of citizens or for the SCs and STs.",
    ),

    Question(
      questionText: "What power did the Supreme Court recognize in the Shankari Prasad case (1951) regarding constitutional amendments?",
      options: [
        "Power to nullify any constitutional amendment.",
        "Power to review constitutional amendments under Article 368.",
        "Power to amend fundamental rights under Article 13(2).",
        "Power of Parliament to amend fundamental rights under Article 368."
      ],
      correctAnswerIndex: 3,
      explanation: "In the Shankari Prasad case (1951), the Supreme Court recognized that Parliament's amending power under Article 368 includes the power to amend fundamental rights guaranteed in Part III of the Constitution.",
    ),

    Question(
      questionText: "What distinction did the Supreme Court make in the Shankari Prasad case regarding legislative law and constituent law?",
      options: [
        "Both are inviolable.",
        "Constituent law is inviolable, but legislative law is not.",
        "Both are subject to judicial review.",
        "Constituent law is separate from legislative law."
      ],
      correctAnswerIndex: 3,
      explanation: "In the Shankari Prasad case, the Supreme Court made a distinction between legislative law (ordinary law) and constituent law (constitutional amendment law), stating that the Parliament can amend any provision of the constitution under Article 368.",
    ),

    Question(
      questionText: "What did the Supreme Court rule in the Berubari Union case (1960) regarding the power of Parliament under Article 3?",
      options: [
        "Parliament can cede Indian territory to a foreign country.",
        "Parliament's power to diminish the area of a state is absolute.",
        "Indian territory can only be ceded through an amendment of the constitution under Article 368.",
        "Parliament's power under Article 3 is limited to internal adjustments between states."
      ],
      correctAnswerIndex: 2,
      explanation: "In the Berubari Union case (1960), the Supreme Court ruled that the power of Parliament under Article 3 to diminish the area of a state does not cover cession of Indian territory to a foreign country. Indian territory can be ceded to a foreign state only by an amendment of the constitution under Article 368.",
    ),

    Question(
      questionText: "What impact did the Berubari Union case (1960) have on the constitution?",
      options: [
        "Enactment of the 8th Amendment Act (1960).",
        "Introduction of the Preamble as a part of the constitution.",
        "Abolition of the power of Parliament under Article 3.",
        "Enactment of the 9th Amendment Act (1960)."
      ],
      correctAnswerIndex: 3,
      explanation: "The Berubari Union case (1960) led to the enactment of the 9th Amendment Act (1960), giving effect to the transfer of certain territory known as Berubari Union (West Bengal) to Pakistan as per the provisions of the Indo-Pak Agreement of 1958.",
    ),

    Question(
      questionText: "What was the outcome of the K.M. Nanavati case (1961) regarding the accused Nanavati?",
      options: [
        "Acquittal of Nanavati",
        "Conviction of Nanavati under Section 302",
        "Sentencing of Nanavati to a fine",
        "Release of Nanavati without charges"
      ],
      correctAnswerIndex: 1,
      explanation: "In the K.M. Nanavati case (1961), the Supreme Court affirmed the judgement of the Bombay High Court, holding that the conviction of the accused Nanavati under Section 302 of the Indian Penal Code and the sentence of life imprisonment passed on him for the murder of his wife's paramour are correct.",
    ),

    Question(
      questionText: "What impact did the K.M. Nanavati case have on the jury system in India?",
      options: [
        "Strengthened the jury system",
        "No impact on the jury system",
        "Led to its improvement",
        "Led to its abolition"
      ],
      correctAnswerIndex: 3,
      explanation: "The K.M. Nanavati case (1961) brought out the shortcomings in the working of the jury system and led to its abolition in India. The new Code of Criminal Procedure, 1973, completely removed the system of trial by jury.",
    ),

    Question(
      questionText: "What was the reason behind the abolition of the jury system in India after the K.M. Nanavati case?",
      options: [
        "High costs associated with jury trials",
        "Inefficiency of the jury system",
        "Lack of public support for the jury system",
        "Government directive to abolish the system"
      ],
      correctAnswerIndex: 1,
      explanation: "The K.M. Nanavati case highlighted the shortcomings in the working of the jury system, leading to its abolition in India. The inefficiency of the jury system was a significant factor in this decision.",
    ),

    Question(
      questionText: "In the I.C. Golak Nath case (1967), what did the Supreme Court rule regarding Parliament's power to amend the constitution?",
      options: [
        "Parliament can amend any part of the constitution, including fundamental rights.",
        "Parliament cannot amend fundamental rights guaranteed in Part III of the constitution.",
        "Parliament's power to amend is limited to non-fundamental aspects of the constitution.",
        "Parliament's power to amend is subject to judicial approval."
      ],
      correctAnswerIndex: 1,
      explanation: "In the I.C. Golak Nath case (1967), the Supreme Court ruled that Parliament's power to amend under Article 368 cannot be used to abridge or take away the fundamental rights guaranteed in Part III of the constitution.",
    ),

    Question(
      questionText: "What doctrine did the Supreme Court apply in the I.C. Golak Nath case regarding the prospective operation of its judgement?",
      options: [
        "Doctrine of separation of powers",
        "Doctrine of federalism",
        "Doctrine of equality",
        "Doctrine of prospective overruling"
      ],
      correctAnswerIndex: 3,
      explanation: "In the I.C. Golak Nath case (1967), the Supreme Court applied the doctrine of prospective overruling. It declared that the judgement will have only prospective operation and not retrospective operation.",
    ),

    Question(
      questionText: "How did the 24th Amendment Act (1971) impact the Supreme Court's ruling in the I.C. Golak Nath case?",
      options: [
        "It upheld the ruling of the Supreme Court.",
        "It nullified the Supreme Court's ruling.",
        "It had no impact on the ruling.",
        "It affirmed the prospective overruling doctrine."
      ],
      correctAnswerIndex: 1,
      explanation: "The 24th Amendment Act (1971) was enacted to override the Supreme Court's ruling in the I.C. Golak Nath case. It provided that Parliament has the power to amend any part of the constitution, including fundamental rights, in accordance with the procedure laid down in Article 368.",
    ),

    Question(
      questionText: "What was the main issue addressed in the Indira Nehru Gandhi case (1975)?",
      options: [
        "Validity of the election process",
        "Basic structure of the constitution",
        "Implementation of the Emergency",
        "Amendment of Article 359"
      ],
      correctAnswerIndex: 1,
      explanation: "The main issue addressed in the Indira Nehru Gandhi case (1975) was the basic structure of the constitution. The Supreme Court reaffirmed the applicability of the doctrine of the basic structure of the constitution and struck down a provision that kept election disputes involving the Prime Minister and the Speaker of Lok Sabha outside the jurisdiction of all courts.",
    ),

    Question(
      questionText: "What impact did the judgement in the Indira Nehru Gandhi case have on the constitution?",
      options: [
        "Insertion of new clauses in Article 368",
        "Enactment of the 42nd Amendment Act (1976)",
        "Abolition of the doctrine of basic structure",
        "Repeal of Article 359A"
      ],
      correctAnswerIndex: 2,
      explanation: "The impact of the judgement in the Indira Nehru Gandhi case led to the enactment of the 42nd Amendment Act (1976), which inserted new clauses in Article 368. These clauses were aimed at diluting the doctrine of basic structure, which had been held to be a limitation on the amending power of the Parliament.",
    ),

    Question(
      questionText: "In the A.D.M. Jabalpur case (1976), what did the Supreme Court rule regarding the right to life and personal liberty during the emergency?",
      options: [
        "Preservation of the right to life and personal liberty",
        "Suspension of the right to life and personal liberty",
        "Expansion of the right to life and personal liberty",
        "Dependence on the state for the right to life and personal liberty"
      ],
      correctAnswerIndex: 1,
      explanation: "In the A.D.M. Jabalpur case (1976), the Supreme Court ruled that if the enforcement of the right to life and personal liberty is suspended by a Presidential Order under Article 359, then the detenu will have no locus standi to a writ petition for challenging the legality of his detention. It upheld the constitutional validity of Section 16A(9) of the Maintenance of Internal Security Act (MISA), 1971.",
    ),

    Question(
      questionText: "What impact did the A.D.M. Jabalpur case have on the understanding of the right to life and personal liberty under Article 21?",
      options: [
        "Expansion of the right to life and personal liberty",
        "Confirmation of the right to habeas corpus during emergencies",
        "Flawed and restrictive meaning of the right to life and personal liberty",
        "Enhancement of judicial protection for fundamental rights"
      ],
      correctAnswerIndex: 2,
      explanation: "The A.D.M. Jabalpur case (1976) had a flawed and restrictive interpretation of the right to life and personal liberty under Article 21. The Supreme Court argued that any claim to a writ of habeas corpus amounted to the enforcement of the right to life and personal liberty, which had been suspended by the Presidential Order.",
    ),

    Question(
      questionText: "How did the 44th Amendment Act (1978) impact the judgement in the A.D.M. Jabalpur case?",
      options: [
        "It confirmed the judgement of the Supreme Court.",
        "It had no impact on the judgement.",
        "It overturned the judgement.",
        "It affirmed the reliance on the state for the right to life and personal liberty."
      ],
      correctAnswerIndex: 2,
      explanation: "The 44th Amendment Act (1978) amended Article 359 to the effect that the enforcement of the right to life and personal liberty under Article 21 cannot be suspended by a Presidential Order. In view of this amendment, the judgement was delivered in the A.D.M. Jabalpur case is no longer a good law and is left only of academic importance.",
    ),

    Question(
      questionText: "What impact did the Maneka Gandhi case (1978) have on the interpretation of Article 21?",
      options: [
        "It reinforced a narrow interpretation of Article 21.",
        "It introduced the American concept of 'due process of law' in Indian judicial interpretation.",
        "It abolished the concept of 'procedure established by law' in Article 21.",
        "It had no impact on the interpretation of Article 21."
      ],
      correctAnswerIndex: 1,
      explanation: "The Maneka Gandhi case (1978) had a significant impact by introducing the American concept of 'due process of law' in Indian judicial interpretation. It took a wider interpretation of Article 21 and established the 'golden triangle' rule, interrelating Articles 14, 19, and 21, thereby expanding the scope of Article 21 and influencing subsequent cases.",
    ),

    Question(
      questionText: "What did the Supreme Court rule regarding the provision of death penalty in the Bachan Singh case (1980)?",
      options: [
        "The death penalty is unreasonable and violates Article 19.",
        "Article 19 guarantees the right to commit murder.",
        "The death penalty does not violate Article 21.",
        "The death penalty should be the rule rather than the exception."
      ],
      correctAnswerIndex: 2,
      explanation: "In the Bachan Singh case (1980), the Supreme Court ruled that the provision of death penalty in Section 302 of the Indian Penal Code does not violate Article 21. It recognized the right of the State to deprive a person of life or personal liberty in accordance with a fair, just, and reasonable procedure established by valid law.",
    ),

    Question(
      questionText: "What principle did the Bachan Singh case (1980) establish regarding the death penalty?",
      options: [
        "The death penalty is always justified for murder.",
        "The death penalty is unconstitutional.",
        "The death penalty should be the 'rarest of rare cases.'",
        "The death penalty is mandatory for all murder cases."
      ],
      correctAnswerIndex: 2,
      explanation: "The Bachan Singh case (1980) established the principle that the death penalty should be the 'rarest of rare cases.' It emphasised that the death penalty must be confined to exceptional and grave circumstances, and the exceptional nature of both the crime and the criminal should be taken into consideration when deciding on the death penalty.",
    ),
    Question(
      questionText: "What was the impact of the Minerva Mills case (1980) on the amendments made by the 42nd Amendment Act (1976)?",
      options: [
        "It upheld the amendments as constitutional.",
        "It declared the amendments to Article 368 and Article 31G as unconstitutional.",
        "It confirmed the unlimited amending power of Parliament.",
        "It emphasized the precedence of directive principles over fundamental rights."
      ],
      correctAnswerIndex: 1,
      explanation: "The Minerva Mills case (1980) declared Clauses (4) and (5) of Article 368 and the amendment to Article 31G by the 42nd Amendment Act (1976) as unconstitutional. The court held that these changes destroyed the basic structure of the constitution, emphasising the limited power of Parliament to amend, judicial review, and the balance between fundamental rights and directive principles as essential features of the constitution.",
    ),

    Question(
      questionText: "In the Waman Rao case (1980), what did the Supreme Court rule regarding amendments to the Ninth Schedule made after 24 April 1973?",
      options: [
        "They are all valid.",
        "They are open to challenge if they damage the basic structure of the Constitution.",
        "They are beyond the constituent power of Parliament.",
        "They are unconstitutional."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Waman Rao case (1980), the Supreme Court ruled that amendments to the Ninth Schedule made after 24 April 1973 are open to challenge if they damage the basic structure of the Constitution. Amendments made before this date were considered valid, while those made afterward could be contested on the grounds of damaging the basic structure of the Constitution.",
    ),

    Question(
      questionText: "What was the impact of the Shah Bano case (1985) on the legal landscape regarding the maintenance of a divorced Muslim wife?",
      options: [
        "It reinforced the traditional interpretation of Muslim personal law.",
        "It upheld the Muslim Women (Protection of Rights on Divorce) Act, 1986.",
        "It declared Section 125 of the Code of Criminal Procedure, 1973 as unconstitutional.",
        "It led to the enactment of the Muslim Women (Protection of Rights on Divorce) Act, 1986."
      ],
      correctAnswerIndex: 3,
      explanation: "The Shah Bano case (1985) upheld the judgement that a Muslim husband is liable to pay maintenance to the divorced wife beyond the period of iddat. It emphasized the secular nature of Section 125 of the Code of Criminal Procedure, 1973, which applies to all religions. The impact of this judgement led to the enactment of the Muslim Women (Protection of Rights on Divorce) Act, 1986, which modified the ruling by allowing maintenance only during the period of iddat.",
    ),

    Question(
      questionText: "In the D.C. Wadhwa case (1986), what did the Supreme Court rule regarding the ordinance-making power of the Governor of Bihar?",
      options: [
        "It upheld the re-promulgation of ordinances by the Governor.",
        "It declared the Bihar Intermediate Education Council Ordinance, 1985, as constitutional and valid.",
        "It emphasized the political necessity of re-promulgating ordinances.",
        "It declared the re-promulgated Bihar Intermediate Education Council Ordinance, 1985, as unconstitutional and invalid."
      ],
      correctAnswerIndex: 3,
      explanation: "In the D.C. Wadhwa case (1986), the Supreme Court ruled that the re-promulgated Bihar Intermediate Education Council Ordinance, 1985, was unconstitutional and invalid. It emphasised that the ordinance-making power is meant for extraordinary situations and cannot be used as a substitute for the regular law-making power of the State Legislature.",
    ),

    Question(
      questionText: "In the M.C. Mehta case (1986), what was the Supreme Court's ruling regarding its power under Article 32 and the awarding of compensation?",
      options: [
        "It ruled that Article 32 does not provide the power to award compensation.",
        "It held that its power under Article 32 is exclusively preventive and not remedial.",
        "It clarified that its power under Article 32 includes the authority to award compensation in appropriate cases.",
        "It declared Article 32 as unconstitutional for awarding compensation."
      ],
      correctAnswerIndex: 2,
      explanation: "In the M.C. Mehta case (1986), the Supreme Court clarified that its power under Article 32 is not only preventive but also remedial. It stated that this remedial relief may include the power to award compensation in appropriate cases, particularly when there is a gross and patent infringement of fundamental rights.",
    ),

    Question(
      questionText: "What did the Supreme Court rule in the Kihoto Hollohan case (1992) regarding paragraph 7 of the Tenth Schedule?",
      options: [
        "It upheld the constitutionality of paragraph 7.",
        "It declared paragraph 7 unconstitutional for violating Article 368(2).",
        "It emphasised the need for re-promulgation of ordinances.",
        "It held that paragraph 7 required approval from the President."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Kihoto Hollohan case (1992), the Supreme Court declared paragraph 7 of the Tenth Schedule unconstitutional for violating Article 368(2). It ruled that paragraph 7 needed ratification by at least half of the State Legislatures to exclude the jurisdiction of the Supreme Court and High Courts.",
    ),

    Question(
      questionText: "What was the impact of the Indra Sawhney case (1992) regarding reservation for OBCs in government jobs?",
      options: [
        "It declared reservation for OBCs unconstitutional.",
        "It upheld the 10% additional reservation for economically backward sections.",
        "It invalidated all reservations for OBCs.",
        "It upheld the validity of reservation for OBCs with certain conditions."
      ],
      correctAnswerIndex: 3,
      explanation: "In the Indra Sawhney case (1992), the Supreme Court upheld the validity of reservation for OBCs in government jobs under Article 16(4). However, it invalidated the 10% additional reservation for other economically backward sections. The judgement led to the appointment of the Ram Nandan Committee and the establishment of the National Commission for BCs, along with several amendment acts.",
    ),
    Question(
      questionText: "In the Mohini Jain case (1992), what did the Supreme Court declare regarding the right to education?",
      options: [
        "It ruled that the right to education is not a fundamental right.",
        "It declared the right to education as a fundamental right under Article 21.",
        "It stated that the right to education applies only to primary education.",
        "It held that charging capitation fee is constitutional."
      ],
      correctAnswerIndex: 1,
      explanation: "In the Mohini Jain case (1992), the Supreme Court declared that the right to education is a fundamental right under Article 21. It emphasized that this right extends to any level, including professional education, and charged capitation fee for admission violates Article 14.",
    ),

    Question(
      questionText: "What was the impact of the Mohini Jain case (1992) on later judgments and legislation?",
      options: [
        "It led to the repeal of the Right to Education Act.",
        "It influenced the passing of the 86th Amendment Act (2002).",
        "It declared capitation fee as constitutional.",
        "It had no impact on subsequent legal developments."
      ],
      correctAnswerIndex: 1,
      explanation: "The Mohini Jain case (1992) influenced the later Unni Krishnan case and led to the passing of the 86th Amendment Act (2002). The subsequent case partly upheld and partly overruled the Mohini Jain judgement, and the amendment added Article 21A, making the right to education an independent fundamental right.",
    ),

    Question(
      questionText: "What did the Unni Krishnan case (1993) establish regarding the right to education?",
      options: [
        "It declared the right to education as unconstitutional.",
        "It affirmed the right to free education for all children until the age of 18.",
        "It held that private unaided educational institutions cannot charge any fee.",
        "It established that only children have the right to free education until the age of 14."
      ],
      correctAnswerIndex: 3,
      explanation: "In the Unni Krishnan case (1993), the Supreme Court held that the right to education is a fundamental right under Article 21, but only children have the right to free education until they complete the age of 14. After that age, the obligation of the state to provide education depends on its economic capacity and development.",
    ),

    Question(
      questionText: "In the Supreme Court Advocates-on-Record Association case (1993), what issue was addressed?",
      options: [
        "Validity of the appointment of Supreme Court judges",
        "Power of the President to impose President's Rule",
        "Reservation for OBCs in government jobs",
        "Constitutional validity of the Right to Education Act"
      ],
      correctAnswerIndex: 0,
      explanation: "In the Supreme Court Advocates-on-Record Association case (1993), the issue addressed was the appointment of Supreme Court and High Court judges. This case is also known as the Second Judges case.",
    ),

    Question(
      questionText: "What did the Supreme Court decide in the S.R. Bommai case (1994) regarding the imposition of President's Rule?",
      options: [
        "Declared the imposition of President's Rule in all cases as constitutional and valid.",
        "Upheld the imposition of President's Rule in all the mentioned states.",
        "Declared the imposition of President's Rule in Nagaland, Karnataka, and Meghalaya as unconstitutional.",
        "Ruled that judicial review does not apply to the proclamation under Article 356."
      ],
      correctAnswerIndex: 2,
      explanation: "In the S.R. Bommai case (1994), the Supreme Court declared the imposition of President's Rule in Nagaland, Karnataka, and Meghalaya in 1988, 1989, and 1991 respectively as unconstitutional and invalid. The judgement established principles for the judicial review of Article 356 proclamations.",
    ),

    Question(
      questionText: "What was the key decision of the Vishaka case (1997) regarding sexual harassment at the workplace?",
      options: [
        "Declared Article 21 unconstitutional",
        "Established guidelines against workplace sexual harassment",
        "Affirmed the right to privacy",
        "Ruled against women's rights in the workplace"
      ],
      correctAnswerIndex: 1,
      explanation: "In the Vishaka case (1997), the Supreme Court established guidelines against workplace sexual harassment, asserting that it is a violation of Articles 15 and 21. The guidelines, known as the 'Vishaka Guidelines,' were meant to be followed until suitable legislation was enacted, leading to the Sexual Harassment of Women at Workplace Act in 2013.",
    ),

    Question(
      questionText: "What did the Vineet Narain case (1997) direct regarding the Central Bureau of Investigation (CBI)?",
      options: [
        "Abolish the CBI",
        "Grant statutory status to the CVC",
        "Authorise arbitrary provisions in the Single Directive",
        "Limit the power of the CBI"
      ],
      correctAnswerIndex: 1,
      explanation: "In the Vineet Narain case (1997), the Supreme Court directed the grant of statutory status to the Central Vigilance Commission (CVC) and autonomy to the Central Bureau of Investigation (CBI), aiming for effective and non-partisan functioning. The case also addressed issues related to the Enforcement Directorate and struck down the validity of certain provisions in the Single Directive.",
    ),

    Question(
      questionText: "What is the name of the case related to poll reforms and the criminalization of politics?",
      options: ["T.M.A. Pai Foundation Case", "Union of India vs. Association for Democratic Reforms Case", "Landmark Judgements Case", "Rights of Minority Educational Institutions Case"],
      correctAnswerIndex: 1,
      explanation: "The case related to poll reforms and the criminalization of politics is the Union of India vs. Association for Democratic Reforms Case (2002). The judgement emphasised voters' right to know about the criminal past of candidates.",
    ),

    Question(
      questionText: "Which constitutional right did the Supreme Court refer to in the Association for Democratic Reforms Case (2002) regarding voters' right to information about candidates?",
      options: ["Right to Equality", "Right to Life", "Right to Freedom of Speech and Expression", "Right to Education"],
      correctAnswerIndex: 2,
      explanation: "In the Association for Democratic Reforms Case (2002), the Supreme Court referred to the right under Article 19(1)(a), i.e., the Right to Freedom of Speech and Expression, stating that voters have the right to know about candidates' antecedents, including their criminal past.",
    ),

    Question(
      questionText: "What information did the Supreme Court direct the Election Commission to make mandatory for candidates in the Association for Democratic Reforms Case (2002)?",
      options: ["Only educational qualifications", "Assets and liabilities", "Criminal records only", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "In the Association for Democratic Reforms Case (2002), the Supreme Court directed the Election Commission to make it mandatory for candidates to furnish information about criminal records, assets and liabilities, educational qualifications, and more.",
    ),

    Question(
      questionText: "Which case is associated with laying down propositions on the rights of minority educational institutions?",
      options: ["Landmark Judgements Case", "T.M.A. Pai Foundation Case", "Rights of Minority Educational Institutions Case", "Association for Democratic Reforms Case"],
      correctAnswerIndex: 1,
      explanation: "The case associated with laying down propositions on the rights of minority educational institutions is the T.M.A. Pai Foundation vs. State of Karnataka (2002). The judgement discussed the rights of linguistic and religious minorities to establish and administer educational institutions.",
    ),

    Question(
      questionText: "What change did the 93rd Amendment Act (2005) bring in response to the T.M.A. Pai Foundation Case (2002)?",
      options: ["Empowering minority educational institutions", "Overcoming the effect of the judgement", "Stipulating common entrance tests for admission", "Inserting a new clause in Article 30(1)"],
      correctAnswerIndex: 2,
      explanation: "In response to the T.M.A. Pai Foundation Case (2002), the 93rd Amendment Act (2005) was enacted to overcome its effect. This amendment allowed stipulating common entrance tests for admission, especially in the case of aided professional institutions.",
    ),

    Question(
      questionText: "What is the popular name of the case related to the right to fly the national flag, decided in 2004?",
      options: ["Prakash Singh Case", "Union of India vs. Naveen Jindal Case", "Naveen Jindal vs. Union of India Case", "Right to Fly National Flag Case"],
      correctAnswerIndex: 1,
      explanation: "The case related to the right to fly the national flag, decided in 2004, is known as the Union of India vs. Naveen Jindal Case. The judgement affirmed that the right to fly the national flag is a fundamental right within the freedom of speech and expression.",
    ),

    Question(
      questionText: "According to the Supreme Court in the Naveen Jindal Case (2004), what is the right to fly the national flag considered as?",
      options: ["Commercial right", "Fundamental right", "Political right", "Social right"],
      correctAnswerIndex: 1,
      explanation: "In the Naveen Jindal Case (2004), the Supreme Court held that the right to fly the national flag is a fundamental right within the meaning of the freedom of speech and expression guaranteed by Article 19(1)(a).",
    ),

    Question(
      questionText: "What did the Supreme Court direct in the Prakash Singh Case (2006) to ensure police reforms and prevent political interference?",
      options: ["Setting up Police Establishment Board", "Constitution of State Security Commission", "Separation of investigation police from law and order police", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "In the Prakash Singh Case (2006), the Supreme Court issued directives for police reforms, including the separation of investigation police from law and order police, constitution of State Security Commission, and more, to prevent political interference in police functioning.",
    ),

    Question(
      questionText: "What impact did the Prakash Singh Case (2006) have on police reforms in the country?",
      options: ["Full implementation of reforms", "Partial implementation of reforms", "No impact on reforms", "Elimination of political interference"],
      correctAnswerIndex: 1,
      explanation: "The Prakash Singh Case (2006) led to the introduction of police reforms in the country, but only partially. It couldn't fully eliminate political interference in the functioning of the police system.",
    ),

    Question(
      questionText: "Which directive was not issued by the Supreme Court in the Prakash Singh Case (2006) for police reforms?",
      options: ["Minimum tenure of two years for DGP", "Setting up National Security Commission", "Separation of investigation police from law and order police", "Conducting common entrance tests for police officers"],
      correctAnswerIndex: 3,
      explanation: "In the Prakash Singh Case (2006), the Supreme Court did not issue a directive for conducting common entrance tests for police officers as part of the police reforms.",
    ),

    Question(
      questionText: "What is the popular name of the case related to reservation in promotions for SCs and STs, decided in 2006?",
      options: ["I.R. Coelho Case", "M. Nagaraj vs. Union of India Case", "Ninth Schedule Case", "Reservations in Promotions Case"],
      correctAnswerIndex: 1,
      explanation: "The case related to reservation in promotions for SCs and STs, decided in 2006, is known as the M. Nagaraj vs. Union of India Case. The judgement  upheld the constitutional validity of certain amendments related to reservations.",
    ),

    Question(
      questionText: "What constitutional amendments were upheld by the Supreme Court in the M. Nagaraj Case (2006)?",
      options: ["77th Amendment Act (1995)", "81st Amendment Act (2000)", "82nd Amendment Act (2000)", "All of the above"],
      correctAnswerIndex: 3,
      explanation: "In the M. Nagaraj Case (2006), the Supreme Court upheld the constitutional validity of the 77th Amendment Act (1995), the 81st Amendment Act (2000), the 82nd Amendment Act (2000), and the 85th Amendment Act (2001).",
    ),

    Question(
      questionText: "According to the M. Nagaraj Case (2006), what factors enable the State to provide reservation in promotions?",
      options: ["Quantitative limitations", "Qualitative exclusions", "Backwardness and inadequacy of representation", "Ceiling limit of 50%"],
      correctAnswerIndex: 2,
      explanation: "In the M. Nagaraj Case (2006), the Supreme Court stated that the factors enabling the State to provide reservation in promotions include backwardness and inadequacy of representation, considering the overall efficiency of the State administration under Article 335.",
    ),

    Question(
      questionText: "Which case reaffirmed the fundamental question of whether amendments to the Constitution made after 24 April 1973, damaging the basic structure, are open to challenge?",
      options: ["Waman Rao Case (1980)", "Kesavananda Bharati Case (1973)", "I.R. Coelho Case (2007)", "Ninth Schedule Case"],
      correctAnswerIndex: 2,
      explanation: "The I.R. Coelho Case (2007) reaffirmed the fundamental question of whether amendments made after 24 April 1973, damaging the basic structure, are open to challenge. It also laid down tests for deciding the validity of such amendments.",
    ),

    Question(
      questionText: "What is the subject matter of the I.R. Coelho Case (2007) with regard to the Ninth Schedule?",
      options: ["Judicial review of the ninth schedule", "Constitutional amendments after 24 April 1973", "Reservation in promotions for SCs and STs", "Rights of minority educational institutions"],
      correctAnswerIndex: 0,
      explanation: "The subject matter of the I.R. Coelho Case (2007) is judicial review of the Ninth Schedule. The judgement reaffirmed the court's position on the challenge to constitutional amendments made after 24 April 1973, which included laws inserted into the Ninth Schedule.",
    ),

    Question(
      questionText: "What is the popular name of the case related to euthanasia, decided in 2011?",
      options: ["Aruna Ramachandra Shanbaug Case", "People's Union for Civil Liberties Case", "M. Nagaraj vs. Union of India Case", "None of the Above Case"],
      correctAnswerIndex: 0,
      explanation: "The case related to euthanasia, decided in 2011, is known as the Aruna Ramachandra Shanbaug Case. The judgement addressed the permissibility of active euthanasia and assisted death, allowing passive euthanasia with certain conditions and safeguards.",
    ),

    Question(
      questionText: "According to the Supreme Court in the Aruna Ramachandra Shanbaug Case (2011), what decision requires approval from the High Court concerned?",
      options: ["Withdrawal of life support by doctors", "Withdrawal of life support by near relatives", "Approval for passive euthanasia", "All of the above"],
      correctAnswerIndex: 2,
      explanation: "In the Aruna Ramachandra Shanbaug Case (2011), the Supreme Court held that a decision to withdraw life support, even if taken by near relatives or doctors, requires approval from the High Court concerned in cases of passive euthanasia.",
    ),

    Question(
      questionText: "In the People's Union for Civil Liberties Case (2013), what did the Supreme Court direct the Election Commission to provide in the ballot papers/EVMs?",
      options: ["Multiple voting options", "Option for positive voting only", "None of the Above (NOTA) button", "Secret voting option"],
      correctAnswerIndex: 2,
      explanation: "In the People's Union for Civil Liberties Case (2013), the Supreme Court directed the Election Commission to provide a 'None of the Above' (NOTA) button in the ballot papers/EVMs, allowing voters to exercise their right not to vote while maintaining secrecy.",
    ),

    Question(
      questionText: "According to the observations of the Supreme Court in the People's Union for Civil Liberties Case (2013), what does Article 19 guarantee?",
      options: ["Right to vote only", "Right to free and fair elections", "Right to criticise and disagree", "Right to positive voting only"],
      correctAnswerIndex: 2,
      explanation: "In the People's Union for Civil Liberties Case (2013), the Supreme Court observed that Article 19 guarantees individuals the right to speak, criticise, and disagree on a particular issue, and not allowing a person to cast a negative vote defeats the freedom of expression and the right to liberty.",
    ),

    Question(
      questionText: "What impact did the judgement in the People's Union for Civil Liberties Case (2013) have on election procedures?",
      options: ["Introduction of compulsory voting", "Removal of secrecy in voting", "Provision for None of the Above (NOTA) option", "Only positive voting allowed"],
      correctAnswerIndex: 2,
      explanation: "Subsequent to the judgement in the People's Union for Civil Liberties Case (2013), the Election Commission introduced the provision for the 'None of the Above' (NOTA) option in ballot papers/EVMs, allowing voters to express their right not to vote while maintaining secrecy.",
    ),

    Question(
      questionText: "What is the popular name of the case related to criminalization of politics, decided in 2013?",
      options: ["Lily Thomas Case", "T.S.R. Subramanian Case", "National Legal Services Authority Case", "None of the Above Case"],
      correctAnswerIndex: 0,
      explanation: "The case related to the criminalization of politics, decided in 2013, is known as the Lily Thomas Case. The judgement addressed the disqualification of members of Parliament and State legislatures upon conviction for offences, leading to immediate disqualification.",
    ),

    Question(
      questionText: "What did the Supreme Court strike down in the Lily Thomas Case (2013)?",
      options: ["Section 79(d) of the Representation of the People Act, 1951", "Section 191 of the Constitution", "Section 8(4) of the Representation of the People Act, 1951", "None of the above"],
      correctAnswerIndex: 2,
      explanation: "In the Lily Thomas Case (2013), the Supreme Court struck down Section 8(4) of the Representation of the People Act, 1951, declaring it as unconstitutional. This section provided a saving for convicted sitting members, allowing them three months to appeal and get a stay on their conviction.",
    ),

    Question(
      questionText: "What impact did the Lily Thomas Case (2013) have on convicted members of Parliament and State legislatures?",
      options: ["Immediate disqualification", "Automatic re-election", "Three months to appeal", "Exemption from disqualification"],
      correctAnswerIndex: 0,
      explanation: "The Lily Thomas Case (2013) led to the immediate disqualification of convicted members of Parliament and State legislatures. The Supreme Court held that disqualification takes place from the date of conviction, and Section 8(4) of the Representation of the People Act, 1951, was declared unconstitutional.",
    ),

    Question(
      questionText: "What reforms were directed by the Supreme Court in the T.S.R. Subramanian Case (2013)?",
      options: ["Judicial reforms", "Police reforms", "Civil service reforms", "Electoral reforms"],
      correctAnswerIndex: 2,
      explanation: "In the T.S.R. Subramanian Case (2013), the Supreme Court directed civil service reforms, including the constitution of Civil Service Boards, providing fixed minimum tenure, and mandating that civil servants should not act on verbal instructions but in writing. These reforms aimed at effective, efficient, and transparent administration.",
    ),

    Question(
      questionText: "In the National Legal Services Authority Case (2014), what did the Supreme Court declare regarding transgender persons?",
      options: ["They have no fundamental rights", "They cannot decide their gender identity", "They are recognized as 'third gender'", "They are excluded from reservations"],
      correctAnswerIndex: 2,
      explanation: "In the National Legal Services Authority Case (2014), the Supreme Court declared transgender persons as 'third gender' and upheld their fundamental rights under Part III of the Constitution. The court affirmed their right to self-identified gender and directed legal recognition by the Central and State Governments.",
    ),

    Question(
      questionText: "In the Shreya Singhal Case (2015), what section of the Information Technology Act (2000) did the Supreme Court strike down?",
      options: ["Section 19", "Section 124", "Section 66A", "Section 217"],
      correctAnswerIndex: 2,
      explanation: "In the Shreya Singhal Case (2015), the Supreme Court struck down Section 66A of the Information Technology Act (2000). The court held that this section, which provided punishment for sending offensive messages online, violated the freedom of speech and expression guaranteed under Article 19(1)(a).",
    ),

    Question(
      questionText: "What did the Supreme Court declare in the Supreme Court Advocates-on-Record Association Case (2015) regarding the National Judicial Appointments Commission (NJAC)?",
      options: ["Constitutional and valid", "Unconstitutional and void", "Amended but valid", "Inoperative"],
      correctAnswerIndex: 1,
      explanation: "In the Supreme Court Advocates-on-Record Association Case (2015), the Supreme Court declared the 99th Amendment Act (2014) and the National Judicial Appointments Commission Act (2014) as unconstitutional and void. The court restored the earlier 'collegium system' for the appointment of judges to the Supreme Court and High Courts.",
    ),

    Question(
        questionText: "What case is also known as the 'Triple Talaq case'?",
        options: ["Shreya Singhal Case", "Supreme Court Advocates-on-Record Association Case", "Shayara Bano Case", "None of the above"],
        correctAnswerIndex: 2,
        explanation: "The case known as the 'Triple Talaq case' is the Shayara Bano Case (2017). In this case, the Supreme Court declared triple talaq (talaq-e-biddat) as unconstitutional, citing it as manifestly arbitrary and violative of the fundamental right under Article 14 of the Constitution."
    ),

    Question(
      questionText: "What action did the Supreme Court direct the central government to take in the Shayara Bano Case (2017)?",
      options: ["Implement NJAC", "Enact Triple Talaq Act", "Introduce Section 66A", "Amend the IT Act"],
      correctAnswerIndex: 1,
      explanation: "In the Shayara Bano Case (2017), the Supreme Court directed the central government to make a law within six months to govern divorce in the Muslim community, specifically addressing the practice of triple talaq. This led to the enactment of the Muslim Women (Protection of Rights on Marriage) Act, 2019, also known as the 'Triple Talaq Act.'",
    ),

    Question(
      questionText: "In the K.S. Puttaswamy Case (2017), what fundamental right did the Supreme Court declare as an intrinsic part of the right to life and personal liberty?",
      options: ["Right to equality", "Right to education", "Right to privacy", "Right to property"],
      correctAnswerIndex: 2,
      explanation: "In the K.S. Puttaswamy Case (2017), the Supreme Court declared the right to privacy as a fundamental right. The court ruled that the right to privacy is protected as an intrinsic part of the right to life and personal liberty under Article 21 and as a part of the freedoms guaranteed by Part III of the Constitution.",
    ),

    Question(
      questionText: "According to the judgement in the Indian Young Lawyers Association Case (2018), what did the Supreme Court declare as unconstitutional regarding the Sabarimala temple?",
      options: ["Offering of certain rituals", "Ban on entry of women aged 10-50", "Restrictions on loudspeakers", "Limitation on worship hours"],
      correctAnswerIndex: 1,
      explanation: "In the Indian Young Lawyers Association Case (2018), the Supreme Court declared that the ban on the entry of women of the age group 10-50 years into the Sabarimala temple is unconstitutional. The court held that this ban violates the right to equality under Article 14, the right to personal liberty under Article 21, and the right to freedom of religion under Article 25.",
    ),

    Question(
      questionText: "What was the impact of the K.S. Puttaswamy Case (2017) on the judgements related to Aadhaar?",
      options: ["Declared Aadhaar unconstitutional", "Struck down the Aadhaar Act", "Upheld the constitutional validity of Aadhaar Act", "No impact on Aadhaar"],
      correctAnswerIndex: 2,
      explanation: "The K.S. Puttaswamy Case (2017) influenced the Aadhaar judgements. In 2018, the Supreme Court delivered a separate judgement on the validity of Aadhaar known as the Aadhaar judgement or Puttaswamy-II judgement. The court upheld the constitutional validity of the Aadhaar (Targeted Delivery of Financial and Other Subsidies, Benefits and Services) Act, 2016, with certain provisions being struck down and changes suggested.",
    ),

    Question(
      questionText: "What did the Supreme Court state regarding the right to privacy in the K.S. Puttaswamy Case (2017)?",
      options: ["Absolute right", "Subject to reasonable restrictions", "Not protected by the Constitution", "Limited to certain individuals"],
      correctAnswerIndex: 1,
      explanation: "In the K.S. Puttaswamy Case (2017), the Supreme Court declared that the right to privacy is not an absolute right and is subject to reasonable restrictions placed on fundamental freedoms under Part III of the Constitution. The court emphasised the need for laws encroaching upon privacy to withstand the touchstone of permissible restrictions on fundamental freedoms.",
    ),
    Question(
      questionText: "What was the impact of the Joseph Shine Case (2018) on the criminalization of adultery in India?",
      options: ["Adultery remains a criminal offence", "Adultery is decriminalised", "Increased penalties for adultery", "Adultery is recognized as a civil wrong"],
      correctAnswerIndex: 1,
      explanation: "The Joseph Shine Case (2018) decriminalised adultery in India by striking down section 497 of the Indian Penal Code. As a result, adultery is no longer a criminal offence attracting imprisonment. However, it can still be considered as a civil wrong and is a ground for the dissolution of marriage.",
    ),

    Question(
        questionText: "In the Navtej Singh Johar Case (2018), what did the Supreme Court declare regarding Section 377 of the Indian Penal Code?",
        options: ["Section 377 remains valid", "Section 377 is expanded", "Section 377 is partially struck down", "Section 377 is declared unconstitutional"],
        correctAnswerIndex: 3,
        explanation: "In the Navtej Singh Johar Case (2018), the Supreme Court partially struck down Section 377 of the Indian Penal Code, which criminalized consensual sexual acts of adults of the same sex. The court declared that this section is unconstitutional insofar as it criminalizes consensual sexual acts between adults of the same sex. The impact of the judgement was the decriminalisation of homosexuality."
    ),

    Question(
      questionText: "What did the Supreme Court emphasise in the Navtej Singh Johar Case (2018) regarding the rights of LGBT persons?",
      options: ["No special rights for LGBT persons", "LGBT persons have limited rights", "LGBT persons have the same fundamental rights as others", "LGBT persons have fewer rights"],
      correctAnswerIndex: 2,
      explanation: "In the Navtej Singh Johar Case (2018), the Supreme Court declared that LGBT (lesbian, gay, bisexual, and transgender) persons are entitled to the same fundamental rights as others. The court emphasised equality, non-discrimination, freedom of expression, and the right to live a life of dignity and privacy for LGBT individuals.",
    ),

    Question(
      questionText: "What did the Supreme Court observe regarding Section 198(2) of the Code of Criminal Procedure in the Joseph Shine Case (2018)?",
      options: ["Declared it constitutional", "Struck it down as unconstitutional", "Expanded its applicability", "No impact on Section 198(2)"],
      correctAnswerIndex: 1,
      explanation: "In the Joseph Shine Case (2018), the Supreme Court declared Section 198(2) of the Code of Criminal Procedure as unconstitutional to the extent that it is applicable to the offence of adultery. The court observed that when the substantive provision (criminalising adultery) goes, the procedural provision (Section 198(2)) has to pave the same path.",
    ),

    Question(
      questionText: "What was the central directive given by the Supreme Court in the M. Siddiq Case (2019) regarding the disputed land in Ayodhya?",
      options: [
        "Awarded the land to Ram Lalla virajman",
        "Divided the land equally among the parties",
        "Directed demolition of existing structures",
        "Declared the land a national heritage site"
      ],
      correctAnswerIndex: 0,
      explanation: "In the M. Siddiq Case (2019), the Supreme Court awarded the entire 2.77 acres of the disputed land in Ayodhya to the deity Ram Lalla virajman. The court gave directives for the construction of a Ram Mandir at the disputed site and allotted 5 acres of alternative land to the UP Sunni Central Waqf Board for the construction of a mosque.",
    ),

    Question(
      questionText: "What did the Supreme Court declare in the Anuradha Bhasin Case (2020) regarding the suspension of internet services?",
      options: [
        "No constitutional protection for internet access",
        "Internet suspension can be indefinite",
        "Government has unlimited power to shut down the internet",
        "Right to access the internet enjoys constitutional protection"
      ],
      correctAnswerIndex: 3,
      explanation: "In the Anuradha Bhasin Case (2020), the Supreme Court declared that the freedom of speech and expression and the freedom to practise any profession over the medium of the internet enjoy constitutional protection under Article 19(1)(a) and Article 19(1)(g). The court emphasised that an order suspending internet services indefinitely is impermissible, and such suspension should adhere to the principle of proportionality.",
    ),

    Question(
      questionText: "What were the key directions given by the Supreme Court in the Rambabu Singh Thakur Case (2020) to address the criminalization of politics?",
      options: [
        "Political parties to disclose information about candidates with criminal cases on their websites",
        "Criminals barred from participating in politics",
        "Banning political parties with candidates having criminal records",
        "Political parties required to provide information only to the Election Commission"
      ],
      correctAnswerIndex: 0,
      explanation: "In the Rambabu Singh Thakur Case (2020), the Supreme Court directed political parties to disclose detailed information about individuals with pending criminal cases who have been selected as candidates. This information should be uploaded on their websites and published in newspapers and on social media platforms. The court emphasised that reasons for selection should be based on qualifications, achievements, and merit rather than mere winnability at the polls.",
    ),

    Question(
      questionText: "What was the outcome of the Internet and Mobile Association of India Case (2020) regarding the ban on cryptocurrency trading?",
      options: [
        "RBI's circular on banning cryptocurrency trading was upheld",
        "Cryptocurrency trading remains banned in India",
        "Supreme Court upheld the ban on crypto trading",
        "RBI's circular on banning cryptocurrency trading was declared illegal and unconstitutional"
      ],
      correctAnswerIndex: 3,
      explanation: "In the Internet and Mobile Association of India Case (2020), the Supreme Court struck down the circular issued by the Reserve Bank of India (RBI) banning cryptocurrency trading. The court declared the circular illegal and unconstitutional on the grounds of proportionality and violation of the freedom to carry on trade under Article 19(1)(g). This judgement removed the ban on cryptocurrency trading in India.",
    ),
    Question(
      questionText: "Which case is popularly known as the Fundamental Rights case and led to the 25th Amendment Act, 1971?",
      options: [
        "Romesh Thappar vs. State of Madras (1950)",
        "Kesavananda Bharati vs. State of Kerala (1973)",
        "Indira Nehru Gandhi vs. Raj Narain (1975)",
        "Minerva Mills vs. Union of India (1980)"
      ],
      correctAnswerIndex: 1,
      explanation: "Kesavananda Bharati vs. State of Kerala (1973) is popularly known as the Fundamental Rights case and led to the 25th Amendment Act, 1971.",
    ),

    Question(
      questionText: "Which case, known as the Election case, resulted in the 39th Amendment Act, 1975?",
      options: [
        "Indira Nehru Gandhi vs. Raj Narain (1975)",
        "P. Sambamurthy vs. State of Andhra Pradesh (1985)",
        "Zachillhu vs. Kihoto Hollohan (1992)",
        "L. Chandra Kumar vs. Union of India (1997)"
      ],
      correctAnswerIndex: 0,
      explanation: "Indira Nehru Gandhi vs. Raj Narain (1975), popularly known as the Election case, led to the 39th Amendment Act, 1975.",
    ),

    Question(
      questionText: "Which case, referred to as the Defection case, resulted in the Tenth Schedule?",
      options: [
        "Kesavananda Bharati vs. State of Kerala (1973)",
        "L. Chandra Kumar vs. Union of India (1997)",
        "Zachillhu vs. Kihoto Hollohan (1992)",
        "Supreme Court Advocates-on-Record Association vs. Union of India (2015)"
      ],
      correctAnswerIndex: 2,
      explanation: "Zachillhu vs. Kihoto Hollohan (1992) is known as the Defection case and led to the Tenth Schedule.",
    ),

    Question(
      questionText: "Which case, popularly known as the Fourth Judges case, resulted in the 99th Amendment Act, 2014?",
      options: [
        "Supreme Court Advocates-on-Record Association vs. Union of India (2015)",
        "Union of India vs. Rajendra N Shah (2021)",
        "L. Chandra Kumar vs. Union of India (1997)",
        "Internet and Mobile Association of India vs. Reserve Bank of India (2020)"
      ],
      correctAnswerIndex: 0,
      explanation: "Supreme Court Advocates-on-Record Association vs. Union of India (2015) is popularly known as the Fourth Judges case and led to the 99th Amendment Act, 2014.",
    ),

    Question(
      questionText: "Which case resulted in the 46th Amendment Act, 1982, and is also known as the Privy Purse case?",
      options: [
        "Madhav Rao Scindia vs. Union of India (1970)",
        "P. Sambamurthy vs. State of Andhra Pradesh (1985)",
        "Union of India vs. Virepal Singh Chauhan (1995)",
        "Minerva Mills vs. Union of India (1980)"
      ],
      correctAnswerIndex: 0,
      explanation: "Madhav Rao Scindia vs. Union of India (1970), also known as the Privy Purse case, resulted in the 46th Amendment Act, 1982.",
    ),

    Question(
      questionText: "Which case led to the 42nd Amendment Act, 1976, and is popularly known as the Bank Nationalisation case?",
      options: [
        "Minerva Mills vs. Union of India (1980)",
        "R.C. Cooper vs. Union of India (1970)",
        "Indira Nehru Gandhi vs. Raj Narain (1975)",
        "State of Himachal Pradesh vs. Associated Hotels of India Ltd. (1972)"
      ],
      correctAnswerIndex: 1,
      explanation: "R.C. Cooper vs. Union of India (1970), popularly known as the Bank Nationalisation case, led to the 42nd Amendment Act, 1976.",
    ),

    Question(
      questionText: "Which case resulted in the 97th Amendment Act, 2011, and is known as the Cross Roads case?",
      options: [
        "State of Madras vs. Champakam Dorairajan (1951)",
        "Union of India vs. Rajendra N Shah (2021)",
        "Romesh Thappar vs. State of Madras (1950)",
        "Berubari Union, In Re. (1960)"
      ],
      correctAnswerIndex: 1,
      explanation: "Union of India vs. Rajendra N Shah (2021) resulted in the 97th Amendment Act, 2011, and is known as the Cross Roads case.",
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
    home: ljti(),
  ));
}

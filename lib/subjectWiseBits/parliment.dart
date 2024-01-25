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

class parliment extends StatefulWidget {
  final String? userIdentifier;

  parliment({Key? key, this.userIdentifier}) : super(key: key);

  @override
  State<parliment> createState() => _parlimentState();
}

class _parlimentState extends State<parliment> {
  int? _selectedAnswerIndex;
  int _currentQuestionIndex = 0;
  List<int?> _userAnswers = List.filled(100, null); // Initialize with the number of questions

  List<Question> _questions = [


//23.Parliament

    Question(
      questionText: "According to the Constitution, under what condition can money be withdrawn from the Consolidated Fund of India?",
      options: [
        "When requested by the President",
        "After the completion of the financial year",
        "After the demands for grants are voted on and passed by the Lok Sabha",
        "At the discretion of the Prime Minister"
      ],
      correctAnswerIndex: 2,
      explanation: "Money can be withdrawn from the Consolidated Fund of India only after the demands for grants are voted on and passed by the Lok Sabha, as per the Constitution.",
    ),

    Question(
      questionText: "What does the Appropriation Act authorize or legalize?",
      options: [
        "Withdrawal of money from the Consolidated Fund of India",
        "Introduction of appropriation bills",
        "Payments from the Consolidated Fund of India",
        "Amendments to the Constitution"
      ],
      correctAnswerIndex: 2,
      explanation: "The Appropriation Act authorizes or legalizes payments from the Consolidated Fund of India, allowing the government to use the allocated funds.",
    ),

    Question(
      questionText: "What is the purpose of the 'Vote on Account'?",
      options: [
        "To advance the budget cycle",
        "To dissolve the Lok Sabha",
        "To grant money for normal activities before the enactment of the appropriation bill",
        "To pass amendments to the Constitution"
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Vote on Account' is granted to provide money for normal government activities before the enactment of the appropriation bill, overcoming the functional difficulty of the financial year end.",
    ),

    Question(
      questionText: "Why was the Budget session advanced to 31st January from 2017 onwards?",
      options: [
        "To celebrate a special occasion",
        "To avoid a Vote on Account",
        "To align with international financial practices",
        "To allow more time for budget discussions"
      ],
      correctAnswerIndex: 1,
      explanation: "The Budget session was advanced to 31st January from 2017 onwards to avoid a Vote on Account and enable the passage of a single Appropriation Bill before the close of the financial year.",
    ),

    Question(
      questionText: "In an election year, for how long can the Vote on Account be taken?",
      options: [
        "One month",
        "Two months",
        "Three to five months",
        "Six months"
      ],
      correctAnswerIndex: 2,
      explanation: "In an election year, the Vote on Account may be taken for a longer period, typically ranging from three to five months.",
    ),

    Question(
      questionText: "When is the Interim Budget presented to the Parliament?",
      options: [
        "Before the General Elections",
        "After the General Elections",
        "During the Budget session",
        "At the end of the financial year"
      ],
      correctAnswerIndex: 0,
      explanation: "The Interim Budget is presented to the Parliament in the year of General Elections, before the elections take place.",
    ),

    Question(
      questionText: "What change occurred in the budget cycle from 2017 onwards?",
      options: [
        "The budget cycle was extended to the end of February",
        "The budget cycle was shortened",
        "The budget session was advanced to 31st January",
        "The budget session was delayed"
      ],
      correctAnswerIndex: 2,
      explanation: "From 2017 onwards, the budget session was advanced to 31st January, allowing the Parliament to avoid a Vote on Account and pass a single Appropriation Bill before the close of the financial year.",
    ),
    Question(
      questionText: "At what stage in the Parliament does the 'guillotine' occur?",
      options: [
        "Presentation of budget",
        "General discussion",
        "Scrutiny by departmental committees",
        "Voting on demands for grants"
      ],
      correctAnswerIndex: 3,
      explanation: "The 'guillotine' occurs on the last day of the days allotted for discussion and voting on the demands for grants in the Parliament.",
    ),

    Question(
      questionText: "What is the purpose of the departmental standing committees during the budget process?",
      options: [
        "To present the Economic Survey",
        "To conduct general discussion",
        "To scrutinize and discuss demands for grants",
        "To vote on demands for grants"
      ],
      correctAnswerIndex: 2,
      explanation: "The departmental standing committees examine and discuss in detail the demands for grants of the concerned ministers, providing detailed and comprehensive parliamentary financial control over ministries.",
    ),

    Question(
      questionText: "During which stage does the finance minister present the budget with a speech known as the 'budget speech'?",
      options: [
        "General discussion",
        "Voting on demands for grants",
        "Scrutiny by departmental committees",
        "Presentation of budget"
      ],
      correctAnswerIndex: 3,
      explanation: "The finance minister presents the budget with a speech known as the 'budget speech' during the presentation of the budget to the Lok Sabha.",
    ),

    Question(
      questionText: "What is the role of the Rajya Sabha during the voting on demands for grants?",
      options: [
        "To vote on demands",
        "To discuss the budget",
        "To submit motions for cut motions",
        "To have a general right of reply"
      ],
      correctAnswerIndex: 1,
      explanation: "The Rajya Sabha has no power to vote on demands for grants during the budget process; it can only discuss the budget and has no power to vote.",
    ),

    Question(
      questionText: "What is the purpose of a 'cut motion' during the voting on demands for grants?",
      options: [
        "To pass a specific demand for grant",
        "To express disapproval of the policy underlying the demand",
        "To move an alternative policy",
        "To submit grievances to the government"
      ],
      correctAnswerIndex: 1,
      explanation: "A 'cut motion' is used to express disapproval of the policy underlying the demand for grant, and it may state that the amount of the demand be reduced to a specific level.",
    ),

    Question(
      questionText: "When does the general discussion on the budget usually take place?",
      options: [
        "Before the presentation of the budget",
        "After the voting on demands for grants",
        "During the scrutiny by departmental committees",
        "A few days after the presentation of the budget"
      ],
      correctAnswerIndex: 5,
      explanation: "The general discussion on the budget usually takes place a few days after its presentation in both the Houses of Parliament.",
    ),

    Question(
        questionText: "What is the significance of the 'guillotine' in the budget process?",
        options: [
          "To initiate concentrated discussion on specific demands for grants",
          "To present the Economic Survey",
          "To submit motions for cut motions",
          "To pass a specific demand for grant"
        ],
        correctAnswerIndex: 1,
        explanation: "The 'guillotine' is used to put to vote and dispose of all remaining demands for grants on the last day of the days allotted for discussion, facilitating concentrated discussion on specific demands for grants."
    ),
    Question(
      questionText: "Which article of the Indian Constitution mandates that the President shall lay before both Houses of Parliament a statement of estimated receipts and expenditure for every financial year?",
      options: [
        "Article 112",
        "Article 113",
        "Article 114",
        "Article 117"
      ],
      correctAnswerIndex: 0,
      explanation: "Article 112 of the Indian Constitution mandates that the President shall lay before both Houses of Parliament a statement of estimated receipts and expenditure for every financial year.",
    ),

    Question(
      questionText: "What type of expenditure is non-votable by Parliament and can only be discussed?",
      options: [
        "Expenditure made from the Consolidated Fund of India",
        "Charged expenditure upon the Consolidated Fund of India",
        "Expenditure related to the President's office",
        "Judicial expenses"
      ],
      correctAnswerIndex: 1,
      explanation: "Charged expenditure upon the Consolidated Fund of India is non-votable by Parliament and can only be discussed.",
    ),

    Question(
      questionText: "Which article specifies that no money shall be withdrawn from the Consolidated Fund of India except under appropriation made by law?",
      options: [
        "Article 112",
        "Article 113",
        "Article 114",
        "Article 117"
      ],
      correctAnswerIndex: 2,
      explanation: "Article 114 of the Indian Constitution specifies that no money shall be withdrawn from the Consolidated Fund of India except under appropriation made by law.",
    ),

    Question(
      questionText: "According to the Constitution, where must a money bill dealing with taxation be introduced?",
      options: [
        "Both Houses of Parliament",
        "Rajya Sabha",
        "Lok Sabha",
        "Joint session of Parliament"
      ],
      correctAnswerIndex: 2,
      explanation: "According to the Constitution, a money bill dealing with taxation must be introduced in the Lok Sabha.",
    ),

    Question(
      questionText: "Which house of Parliament has the exclusive privilege to vote on demands for grants?",
      options: [
        "Rajya Sabha",
        "Both Houses",
        "Lok Sabha",
        "Joint session of Parliament"
      ],
      correctAnswerIndex: 2,
      explanation: "The Lok Sabha has the exclusive privilege to vote on demands for grants.",
    ),

    Question(
      questionText: "What is the purpose of a 'cut motion' during the voting on demands for grants?",
      options: [
        "To pass a specific demand for grant",
        "To express disapproval of the policy underlying the demand",
        "To move an alternative policy",
        "To submit grievances to the government"
      ],
      correctAnswerIndex: 1,
      explanation: "A 'cut motion' is used to express disapproval of the policy underlying the demand for grant, and it may state that the amount of the demand be reduced to a specific level.",
    ),

    Question(
      questionText: "Which article of the Indian Constitution defines the relative roles or position of both Houses of Parliament with regard to the enactment of the budget?",
      options: [
        "Article 109",
        "Article 112",
        "Article 113",
        "Article 117"
      ],
      correctAnswerIndex: 7,
      explanation: "Article 117 of the Indian Constitution defines the relative roles or position of both Houses of Parliament with regard to the enactment of the budget.",
    ),
    Question(
      questionText: "What is the term used in the Constitution for the budget?",
      options: [
        "Financial document",
        "Annual financial statement",
        "Government statement",
        "Financial budget"
      ],
      correctAnswerIndex: 1,
      explanation: "In the Constitution, the budget is referred to as the 'annual financial statement,' and the term 'budget' is a popular name for it.",
    ),

    Question(
      questionText: "What does the budget in India primarily consist of?",
      options: [
        "Details of taxation proposals",
        "Estimates of revenue and capital receipts",
        "Economic and financial policy",
        "Actual receipts and expenditure of the closing financial year"
      ],
      correctAnswerIndex: 1,
      explanation: "The budget in India primarily consists of estimates of revenue and capital receipts, along with other elements such as ways and means to raise revenue, expenditure details, and economic and financial policy.",
    ),

    Question(
      questionText: "When does the financial year in India begin and end?",
      options: [
        "January 1 to December 31",
        "April 1 to March 31",
        "July 1 to June 30",
        "October 1 to September 30"
      ],
      correctAnswerIndex: 1,
      explanation: "The financial year in India begins on April 1 and ends on March 31 of the following year.",
    ),

    Question(
      questionText: "What were the reasons or objectives of separating the Railway Budget from the General Budget in 1924?",
      options: [
        "To introduce flexibility in railway finance",
        "To secure stability of general revenues",
        "To enable railways to keep profits for their own development",
        "All of the above"
      ],
      correctAnswerIndex: 3,
      explanation: "The separation of the Railway Budget in 1924 aimed to introduce flexibility in railway finance, secure stability of general revenues, and enable railways to keep profits for their own development.",
    ),

    Question(
      questionText: "When did the Central Government merge the Railway Budget into the General Budget?",
      options: [
        "1921",
        "2017",
        "2000",
        "1985"
      ],
      correctAnswerIndex: 1,
      explanation: "The Central Government merged the Railway Budget into the General Budget in 2017, ending the practice of having separate budgets for railways and other ministries.",
    ),

    Question(
      questionText: "What did the Railway Budget consist of before its merger into the General Budget?",
      options: [
        "Estimates of receipts and expenditures of all ministries",
        "Estimates of receipts and expenditures of only the Ministry of Railways",
        "Estimates of taxation proposals",
        "Estimates of capital receipts only"
      ],
      correctAnswerIndex: 1,
      explanation: "Before its merger into the General Budget, the Railway Budget consisted of estimates of receipts and expenditures of only the Ministry of Railways.",
    ),
    Question(
      questionText: "What is the purpose of a joint sitting of both Houses of Parliament?",
      options: [
        "To discuss ordinary bills",
        "To resolve a deadlock over the passage of a bill",
        "To discuss Constitutional amendment bills",
        "To pass money bills"
      ],
      correctAnswerIndex: 1,
      explanation: "A joint sitting of both Houses is an extraordinary mechanism to resolve a deadlock over the passage of a bill.",
    ),

    Question(
      questionText: "In which situations can a joint sitting be summoned?",
      options: [
        "If the bill is a money bill",
        "If the bill is a Constitutional amendment bill",
        "If the bill is rejected by the other House",
        "If the bill is passed by both Houses unanimously"
      ],
      correctAnswerIndex: 2,
      explanation: "A joint sitting can be summoned in situations where the bill is rejected by the other House, the Houses have finally disagreed on amendments, or more than six months have elapsed without the bill being passed by the other House.",
    ),

    Question(
      questionText: "Who presides over a joint sitting of both Houses?",
      options: [
        "Chairman of Rajya Sabha",
        "Deputy Speaker of Lok Sabha",
        "Deputy Chairman of Rajya Sabha",
        "Speaker of Lok Sabha"
      ],
      correctAnswerIndex: 3,
      explanation: "The Speaker of Lok Sabha presides over a joint sitting, and in their absence, the Deputy Speaker. If both are absent, the Deputy Chairman of Rajya Sabha presides.",
    ),

    Question(
      questionText: "What is the quorum required to constitute a joint sitting?",
      options: ["One-third", "One-fifth", "One-tenth", "One-half"],
      correctAnswerIndex: 2,
      explanation: "The quorum to constitute a joint sitting is one-tenth of the total number of members of the two Houses.",
    ),

    Question(
      questionText: "When can new amendments be proposed at a joint sitting?",
      options: [
        "Anytime during the joint sitting",
        "Only if the bill is a money bill",
        "Only if the bill is a Constitutional amendment bill",
        "In case of final disagreement between the Houses or due to delay in bill passage"
      ],
      correctAnswerIndex: 3,
      explanation: "New amendments can be proposed at a joint sitting in cases of final disagreement between the Houses or due to the delay in the passage of the bill.",
    ),

    Question(
      questionText: "How many times has the provision for a joint sitting been invoked since 1950?",
      options: ["Once", "Twice", "Thrice", "Four times"],
      correctAnswerIndex: 2,
      explanation: "Since 1950, the provision for a joint sitting has been invoked only three times, involving bills such as the Dowry Prohibition Bill, 1960, Banking Service Commission (Repeal) Bill, 1977, and Prevention of Terrorism Bill, 2002.",
    ),
    Question(
      questionText: "What are the three kinds of financial bills mentioned in the Constitution?",
      options: [
        "A, B, C",
        "Money bills, financial bills (I), and financial bills (II)",
        "Primary, secondary, tertiary",
        "Exclusive, inclusive, dual"
      ],
      correctAnswerIndex: 1,
      explanation: "The three kinds of financial bills mentioned in the Constitution are money bills, financial bills (I), and financial bills (II).",
    ),

    Question(
      questionText: "What distinguishes money bills from other financial bills?",
      options: [
        "They are introduced only in the Lok Sabha, while other financial bills can be introduced in either House.",
        "They require the President's recommendation for introduction.",
        "They deal exclusively with matters listed in Article 110 and are certified by the Speaker of Lok Sabha.",
        "They can be introduced in either House without any special recommendation."
      ],
      correctAnswerIndex: 2,
      explanation: "Money bills exclusively deal with matters mentioned in Article 110 and are certified by the Speaker of Lok Sabha. They are also introduced only in the Lok Sabha.",
    ),

    Question(
      questionText: "In what respects is a financial bill (I) similar to a money bill?",
      options: [
        "Introduction in either House and President's recommendation are not required.",
        "Both can be introduced only in the Lok Sabha and require the President's recommendation.",
        "They are treated as ordinary bills.",
        "Amendments are not allowed in either House."
      ],
      correctAnswerIndex: 1,
      explanation: "A financial bill (I) is similar to a money bill in that both can be introduced only in the Lok Sabha and require the President's recommendation.",
    ),

    Question(
      questionText: "What is a special feature of a financial bill (II)?",
      options: [
        "It requires unanimous approval in both Houses.",
        "It can be introduced only in the Rajya Sabha.",
        "It cannot be amended by either House.",
        "It cannot be passed unless the President recommends its consideration."
      ],
      correctAnswerIndex: 3,
      explanation: "A special feature of a financial bill (II) is that it cannot be passed unless the President has recommended its consideration to the House.",
    ),

    Question(
      questionText: "When can the President summon a joint sitting for a financial bill (I) or (II)?",
      options: [
        "If there is a disagreement between the two Houses.",
        "If the Lok Sabha is dissolved.",
        "If the bill is rejected in the Rajya Sabha.",
        "If the bill contains exclusively tax-related matters."
      ],
      correctAnswerIndex: 0,
      explanation: "The President can summon a joint sitting for a financial bill (I) or (II) in case of a disagreement between the two Houses.",
    ),

    Question(
      questionText: "What options does the President have when a financial bill is presented for approval?",
      options: [
        "Give assent, withhold assent, or send it for reconsideration.",
        "Give assent only.",
        "Withhold assent only.",
        "Send it for reconsideration only if there are amendments."
      ],
      correctAnswerIndex: 0,
      explanation: "The President can either give assent to the bill, withhold assent, or return it for reconsideration when presented for approval.",
    ),
    Question(
      questionText: "Which statement is true regarding the introduction of an Ordinary Bill?",
      options: [
        "It can only be introduced by a minister.",
        "It requires the certification of the Speaker when transmitted to the Rajya Sabha.",
        "It is introduced only on the recommendation of the President.",
        "It can be introduced either in the Lok Sabha or the Rajya Sabha."
      ],
      correctAnswerIndex: 3,
      explanation: "An Ordinary Bill can be introduced either in the Lok Sabha or the Rajya Sabha.",
    ),

    Question(
      questionText: "What is a unique feature of the introduction of a Money Bill?",
      options: [
        "It requires the certification of the Speaker when transmitted to the Rajya Sabha.",
        "It can be introduced by either a minister or a private member.",
        "It requires the recommendation of the President for introduction.",
        "It can only be introduced in the Lok Sabha and not in the Rajya Sabha."
      ],
      correctAnswerIndex: 3,
      explanation: "A Money Bill can only be introduced in the Lok Sabha and not in the Rajya Sabha.",
    ),

    Question(
        questionText: "What action can the Rajya Sabha take regarding an Ordinary Bill?",
        options: [
          "It can detain the bill for a maximum period of 14 days only.",
          "It cannot be amended or rejected by the Rajya Sabha.",
          "It can amend or reject the bill, and the Rajya Sabha should return the bill with or without recommendations.",
          "It can detain the bill for a maximum period of six months."
        ],
        correctAnswerIndex: 2,
        explanation: "The Rajya Sabha can amend or reject an Ordinary Bill, and it should return the bill with or without recommendations."
    ),

    Question(
      questionText: "What is the maximum period the Rajya Sabha can detain a Money Bill?",
      options: [
        "14 days",
        "Six months",
        "30 days",
        "There is no provision for detention of a Money Bill by the Rajya Sabha."
      ],
      correctAnswerIndex: 3,
      explanation: "There is no provision for the Rajya Sabha to detain a Money Bill; it can only be discussed for a maximum of 14 days.",
    ),

    Question(
      questionText: "How is a deadlock over a Money Bill resolved?",
      options: [
        "The President decides the fate of the Bill without joint sitting.",
        "A joint sitting of both houses is summoned by the President.",
        "It automatically becomes law without the need for Presidential approval.",
        "The Rajya Sabha can amend the Bill to resolve the deadlock."
      ],
      correctAnswerIndex: 0,
      explanation: "In case of a deadlock over a Money Bill, the President decides the fate of the Bill without the need for a joint sitting.",
    ),

    Question(
      questionText: "What happens if a Money Bill is defeated in the Lok Sabha?",
      options: [
        "The President can still approve it if the Rajya Sabha agrees.",
        "It leads to the resignation of the government.",
        "It is sent for the President's approval even if approved by only the Lok Sabha.",
        "It automatically becomes law without the need for Presidential approval."
      ],
      correctAnswerIndex: 1,
      explanation: "If a Money Bill is defeated in the Lok Sabha, it leads to the resignation of the government.",
    ),

    Question(
      questionText: "What options does the President have regarding an Ordinary Bill or Money Bill?",
      options: [
        "Can approve, reject, or return for reconsideration.",
        "Can only approve or reject.",
        "Can only return for reconsideration.",
        "Can only approve, regardless of Parliament's decision."
      ],
      correctAnswerIndex: 0,
      explanation: "The President can approve, reject, or return an Ordinary Bill or Money Bill for reconsideration.",
    ),
    Question(
      questionText: "According to Article 110, which matter is NOT explicitly mentioned as a criterion for a bill to be deemed a money bill?",
      options: [
        "Imposition of fines or other pecuniary penalties",
        "Custody of the Consolidated Fund of India",
        "Regulation of borrowing of money by the Union government",
        "Imposition of taxes by a local authority for local purposes"
      ],
      correctAnswerIndex: 3,
      explanation: "The imposition of taxes by a local authority for local purposes is not explicitly mentioned in Article 110 as a criterion for a bill to be deemed a money bill.",
    ),

    Question(
      questionText: "Who has the final authority to decide whether a bill is a money bill or not?",
      options: [
        "The President",
        "The Rajya Sabha",
        "The Speaker of the Lok Sabha",
        "The Prime Minister"
      ],
      correctAnswerIndex: 2,
      explanation: "The Speaker of the Lok Sabha has the final authority to decide whether a bill is a money bill or not. The decision of the Speaker in this regard is final and cannot be questioned.",
    ),

    Question(
      questionText: "Which house has more powers regarding a money bill?",
      options: [
        "Lok Sabha",
        "Rajya Sabha",
        "Both houses have equal powers",
        "The decision depends on the specific bill"
      ],
      correctAnswerIndex: 0,
      explanation: "The Lok Sabha has more powers regarding a money bill compared to the Rajya Sabha. The Rajya Sabha can only make recommendations and must return the bill to the Lok Sabha within 14 days.",
    ),

    Question(
      questionText: "What happens if the Rajya Sabha does not return a money bill within 14 days?",
      options: [
        "The bill is deemed to have been passed by both houses in the form originally passed by the Lok Sabha.",
        "The bill is automatically rejected.",
        "The bill is sent back to the Lok Sabha for reconsideration.",
        "The President decides the fate of the bill."
      ],
      correctAnswerIndex: 0,
      explanation: "If the Rajya Sabha does not return a money bill within 14 days, the bill is deemed to have been passed by both houses in the form originally passed by the Lok Sabha.",
    ),

    Question(
      questionText: "What options does the President have regarding a money bill?",
      options: [
        "Can approve, reject, or return for reconsideration.",
        "Can only approve or reject.",
        "Can only return for reconsideration.",
        "Can withhold assent but cannot return for reconsideration."
      ],
      correctAnswerIndex: 1,
      explanation: "The President can only approve or reject a money bill. The President cannot return a money bill for reconsideration by the Houses.",
    ),
    Question(
      questionText: "What is the focus of the discussion during the second reading of an ordinary bill?",
      options: [
        "Detailed scrutiny and final shape of the bill",
        "General principles and provisions of the bill",
        "Amendments to the bill",
        "Public opinion on the bill"
      ],
      correctAnswerIndex: 1,
      explanation: "During the second reading of an ordinary bill, the focus is on the general principles and provisions of the bill. Detailed scrutiny and final shape of the bill are addressed during subsequent stages.",
    ),

    Question(
        questionText: "What happens during the consideration stage of an ordinary bill?",
        options: [
          "General discussion on the bill",
          "Introduction of the bill",
          "Detailed examination clause by clause",
          "Amendments are proposed and voted upon"
        ],
        correctAnswerIndex: 3,
        explanation: "During the consideration stage of an ordinary bill, each clause is discussed separately, and members can propose amendments. These amendments are voted upon, and if accepted, they become part of the bill."
    ),

    Question(
      questionText: "At what stage does the debate focus on the acceptance or rejection of the entire ordinary bill?",
      options: [
        "First Reading",
        "Second Reading",
        "Third Reading",
        "Consideration Stage"
      ],
      correctAnswerIndex: 2,
      explanation: "The debate on the acceptance or rejection of the entire ordinary bill takes place during the Third Reading. This stage follows the detailed scrutiny and discussion in the consideration stage.",
    ),

    Question(
      questionText: "What options does the second House have when considering an ordinary bill?",
      options: [
        "Pass the bill without amendments, pass with amendments, reject the bill, or keep it pending",
        "Reject the bill or pass it without amendments",
        "Pass the bill with amendments only",
        "Refer the bill to a joint committee"
      ],
      correctAnswerIndex: 0,
      explanation: "The second House, when considering an ordinary bill, has four alternatives: pass the bill without amendments, pass with amendments, reject the bill, or keep it pending.",
    ),

    Question(
      questionText: "What happens if a deadlock occurs between the two Houses regarding an ordinary bill?",
      options: [
        "The bill is automatically rejected.",
        "The President has the final decision.",
        "The bill is sent to the Supreme Court for resolution.",
        "The President can summon a joint sitting to resolve the deadlock."
      ],
      correctAnswerIndex: 3,
      explanation: "If a deadlock occurs between the two Houses regarding an ordinary bill, the President can summon a joint sitting to resolve the deadlock. If the majority approves the bill, it is deemed to have been passed by both Houses.",
    ),

    Question(
      questionText: "What type of veto does the President have regarding an ordinary bill?",
      options: [
        "Absolute Veto",
        "Conditional Veto",
        "Suspensive Veto",
        "Pocket Veto"
      ],
      correctAnswerIndex: 2,
      explanation: "The President has a 'suspensive veto' regarding an ordinary bill. If the bill is passed again by both Houses after reconsideration, the President must give assent.",
    ),

    Question(
      questionText: "What is the main difference between public bills and private bills in Parliament?",
      options: [
        "Public bills are introduced by ministers and reflect government policies, while private bills are introduced by non-minister members and do not reflect government stands.",
        "Public bills have a greater chance of approval and may lead to the government's resignation if rejected, while private bills have lesser approval chances and no impact on the government.",
        "Public bills require one month's notice for introduction, while private bills need seven days' notice.",
        "Public bills deal with financial matters, while private bills are concerned with other subjects."
      ],
      correctAnswerIndex: 0,
      explanation: "The main difference is that public bills are introduced by ministers, reflect government policies, and have greater approval chances. Private bills, introduced by non-minister members, do not reflect government stands, have lesser approval chances, and don't impact the government if rejected.",
    ),

    Question(
      questionText: "What is the primary purpose of an amending bill in Parliament?",
      options: [
        "Introducing new proposals, ideas, or policies.",
        "Consolidating existing laws on a particular subject.",
        "Modifying, amending, or revising existing Acts.",
        "Continuing an expiring Act."
      ],
      correctAnswerIndex: 2,
      explanation: "An amending bill in Parliament seeks to modify, amend, or revise existing Acts.",
    ),

    Question(
      questionText: "Which type of bill requires consultation with the law department during drafting?",
      options: [
        "Expiring Laws (Continuance) bill",
        "Validating bill",
        "Money bill",
        "Private bill"
      ],
      correctAnswerIndex: 3,
      explanation: "A private bill requires consultation with the law department during drafting.",
    ),

    Question(
      questionText: "What is the responsibility of the concerned department in drafting a private bill?",
      options: [
        "Drafting the bill in consultation with the law department.",
        "Ensuring it reflects government policies.",
        "Seeking approval from the Parliament.",
        "Presenting the bill to the President."
      ],
      correctAnswerIndex: 0,
      explanation: "The concerned department's responsibility in drafting a private bill is to draft the bill in consultation with the law department.",
    ),

    Question(
      questionText: "What is the implication on parliamentary confidence and government resignation if a private bill is rejected?",
      options: [
        "It has no implication on parliamentary confidence or government resignation.",
        "It leads to the resignation of the government.",
        "It reflects a lack of parliamentary confidence.",
        "It triggers a vote of no confidence in the government."
      ],
      correctAnswerIndex: 0,
      explanation: "The rejection of a private bill has no implication on parliamentary confidence or government resignation.",
    ),
    Question(
      questionText: "What is the primary objective of the Youth Parliament scheme?",
      options: [
        "To introduce younger generations to parliamentary practices and procedures.",
        "To create a platform for political debates among the youth.",
        "To conduct mock parliamentary sessions for entertainment purposes.",
        "To encourage the youth to participate in political activities."
      ],
      correctAnswerIndex: 0,
      explanation: "The primary objective of the Youth Parliament scheme is to acquaint the younger generations with parliamentary practices and procedures.",
    ),

    Question(
      questionText: "How are resolutions different from motions in Parliament?",
      options: [
        "Resolutions are always voted upon, while motions are not necessarily put to vote.",
        "Motions are only moved by private members, while resolutions are moved by ministers.",
        "Resolutions are classified into private, government, and statutory categories, while motions are not.",
        "All resolutions are considered substantive motions, while motions are not."
      ],
      correctAnswerIndex: 3,
      explanation: "Resolutions are different from motions in that all resolutions are considered substantive motions, while motions are not necessarily substantive. Additionally, all resolutions are required to be voted upon.",
    ),

    Question(
      questionText: "What is the key difference between private member's resolution and government resolution in Parliament?",
      options: [
        "Private member's resolutions are discussed only on alternate Fridays, while government resolutions are discussed every day.",
        "Government resolutions are moved by ministers, while private member's resolutions are moved by any member other than a minister.",
        "Government resolutions deal with international treaties, policies, and committee recommendations, while private member's resolutions are more general.",
        "Private member's resolutions require one month's notice, while government resolutions require only seven days' notice."
      ],
      correctAnswerIndex: 1,
      explanation: "The key difference is that private member's resolutions are moved by any member other than a minister, while government resolutions are moved by ministers.",
    ),

    Question(
      questionText: "Under what circumstances can a matter be raised under 'Special Mention' in the Rajya Sabha?",
      options: [
        "During question hour and half-an-hour discussion.",
        "When it is a point of order.",
        "When it is a procedural matter during adjournment motion.",
        "When it cannot be raised under any rule of the House."
      ],
      correctAnswerIndex: 3,
      explanation: "A matter can be raised under 'Special Mention' in the Rajya Sabha when it is not a point of order, cannot be raised during specified times, and is not covered by any rule of the House.",
    ),
    Question(
      questionText: "What is the purpose of the 'Motion of Thanks' in Parliament?",
      options: [
        "To criticize the President's address.",
        "To express approval of the President's address.",
        "To discuss and debate the policies and programs outlined by the President.",
        "To propose new legislation."
      ],
      correctAnswerIndex: 2,
      explanation: "The 'Motion of Thanks' in Parliament is to discuss and debate the policies and programs outlined by the President during the address to both Houses.",
    ),

    Question(
      questionText: "What is the key difference between a 'Censure Motion' and a 'No-Confidence Motion' in the Lok Sabha?",
      options: [
        "A Censure Motion can be moved against any individual or group of ministers, while a No-Confidence Motion can only be moved against the entire council of ministers.",
        "A Censure Motion requires the council of ministers to resign only if passed, while a No-Confidence Motion mandates the resignation of the council of ministers upon passage.",
        "A Censure Motion must state the reasons for adoption in the Lok Sabha, while a No-Confidence Motion need not state reasons.",
        "A Censure Motion is moved to ascertain the confidence of Lok Sabha in the council of ministers."
      ],
      correctAnswerIndex: 0,
      explanation: "The key difference is that a Censure Motion can be moved against an individual minister or a group of ministers, while a No-Confidence Motion can only be moved against the entire council of ministers.",
    ),

    Question(
      questionText: "What is the purpose of a 'Dilatory Motion' in Parliament?",
      options: [
        "To discuss and debate a bill, motion, or resolution.",
        "To adjourn the House temporarily.",
        "To suspend the proceedings before the House.",
        "To delay the progress of a business under consideration."
      ],
      correctAnswerIndex: 3,
      explanation: "The purpose of a 'Dilatory Motion' in Parliament is to delay the progress of a business under consideration in the House.",
    ),

    Question(
      questionText: "What is the role of a 'Point of Order' in Parliament?",
      options: [
        "To raise debates on procedural matters.",
        "To suspend proceedings before the House.",
        "To control the government.",
        "To criticize the President's address."
      ],
      correctAnswerIndex: 2,
      explanation: "The role of a 'Point of Order' in Parliament is to control the government by raising concerns related to the interpretation or enforcement of the Rules of the House or the Constitution.",
    ),
    Question(
      questionText: "What is the purpose of a 'Substantive Motion' in Parliament?",
      options: [
        "To stop the debate on a matter before the House.",
        "To discuss a matter of general public importance.",
        "To propose an alternative to an original motion.",
        "To deal with a very important matter independently."
      ],
      correctAnswerIndex: 3,
      explanation: "A 'Substantive Motion' in Parliament is a self-contained independent proposal dealing with a very important matter, such as impeachment of the President or removal of the Chief Election Commissioner.",
    ),

    Question(
      questionText: "What is the purpose of a 'Closure Motion' in Parliament?",
      options: [
        "To delay the progress of a business under consideration.",
        "To cut short the debate on a matter before the House.",
        "To introduce a new motion in substitution of an original motion.",
        "To supersede another motion during the debate."
      ],
      correctAnswerIndex: 1,
      explanation: "A 'Closure Motion' in Parliament is moved to cut short the debate on a matter before the House. If approved, debate is stopped, and the matter is put to vote.",
    ),

    Question(
      questionText: "When is a 'Privilege Motion' introduced in Parliament?",
      options: [
        "To cut short the debate on a matter.",
        "To draw attention to a matter of urgent public importance.",
        "To censure a minister for a breach of parliamentary privileges.",
        "To seek an authoritative statement from a minister."
      ],
      correctAnswerIndex: 2,
      explanation: "A 'Privilege Motion' in Parliament is introduced to censure a minister for a breach of parliamentary privileges, such as withholding facts or providing wrong information.",
    ),

    Question(
      questionText: "What is the purpose of a 'No-Confidence Motion' in Parliament?",
      options: [
        "To draw attention to a matter of urgent public importance.",
        "To deal with a very important matter independently.",
        "To seek an authoritative statement from a minister.",
        "To remove the ministry from office by expressing a lack of confidence."
      ],
      correctAnswerIndex: 3,
      explanation: "The purpose of a 'No-Confidence Motion' in Parliament is to express a lack of confidence in the council of ministers, potentially leading to the removal of the ministry from office.",
    ),
    Question(
      questionText: "What is the main purpose of the 'Zero Hour' in parliamentary proceedings?",
      options: [
        "To ask oral questions to ministers.",
        "To raise various matters of urgent public importance.",
        "To discuss substantive motions.",
        "To seek written answers to questions."
      ],
      correctAnswerIndex: 1,
      explanation: "The 'Zero Hour' in parliamentary proceedings is an informal time slot for members to raise various matters of urgent public importance.",
    ),

    Question(
      questionText: "What distinguishes a 'Starred Question' from an 'Unstarred Question' during the Question Hour?",
      options: [
        "Starred questions require a written answer, while unstarred questions require an oral answer.",
        "Starred questions require an oral answer, while unstarred questions require a written answer.",
        "Starred questions do not allow supplementary questions, while unstarred questions allow supplementary questions.",
        "Starred questions are printed in green, while unstarred questions are printed in white."
      ],
      correctAnswerIndex: 2,
      explanation: "During the Question Hour, a 'Starred Question' requires an oral answer and allows supplementary questions, while an 'Unstarred Question' requires a written answer and does not allow supplementary questions.",
    ),

    Question(
      questionText: "How does a 'Short Notice Question' differ from other types of questions?",
      options: [
        "It requires a supplementary question.",
        "It requires a written answer.",
        "It is asked without giving the usual notice of ten days.",
        "It is addressed only to ministers."
      ],
      correctAnswerIndex: 2,
      explanation: "A 'Short Notice Question' is one that is asked without giving the usual notice of ten days. It is answered orally.",
    ),

    Question(
      questionText: "What color distinguishes the list of questions addressed to private members during the Question Hour?",
      options: [
        "Green",
        "White",
        "Light Pink",
        "Yellow"
      ],
      correctAnswerIndex: 3,
      explanation: "The list of questions addressed to private members during the Question Hour is printed in yellow to distinguish them from other types of questions.",
    ),
    Question(
      questionText: "What is Simple Majority, and in which cases is it required in Parliament?",
      options: [
        "It is a majority of the total membership of the House, required for constitutional amendments.",
        "It is a majority of the members present and voting, required for various matters like passing bills and motions.",
        "It is a majority excluding vacant seats, required for the removal of the Vice-President.",
        "It is a majority required for the impeachment of the President."
      ],
      correctAnswerIndex: 1,
      explanation: "Simple Majority is a majority of the members present and voting in the House, required for various matters like passing bills, motions, and certain motions related to confidence and censure in Parliament.",
    ),

    Question(
      questionText: "What is Effective Majority, and in which cases is it required?",
      options: [
        "It is a majority of the total membership of the House, required for constitutional amendments.",
        "It is a majority of the members present and voting, required for the removal of the Vice-President.",
        "It is a majority of the total membership of the House, required for the impeachment of the President.",
        "It is a majority excluding vacant seats, required for the removal of the Vice-President."
      ],
      correctAnswerIndex: 1,
      explanation: "Effective Majority means a majority of the total membership of the House excluding vacant seats. It is required in cases like the removal of the Vice-President, Deputy Chairman, Speaker, and Deputy Speaker.",
    ),

    Question(
      questionText: "What is Absolute Majority, and in which cases is it required?",
      options: [
        "It is a majority of the members present and voting, required for constitutional amendments.",
        "It is a majority excluding vacant seats, required for the removal of the Vice-President.",
        "It is a majority of the total membership of the House, required for constitutional amendments.",
        "It is a majority required for the impeachment of the President."
      ],
      correctAnswerIndex: 2,
      explanation: "Absolute Majority means a majority of the total membership of the House, irrespective of vacant seats or absentees. It is not prescribed as a standalone requirement but is needed in certain cases as part of special majority.",
    ),

    Question(
      questionText: "What is Special Majority-I, and in which cases is it required?",
      options: [
        "A majority of the members present and voting, required for constitutional amendments.",
        "A majority of the total membership of each House and a two-thirds majority of the members present and voting, required for specific cases like amending the Constitution and removing Judges.",
        "A two-thirds majority of the total membership of each House, required for the impeachment of the President.",
        "A two-thirds majority of the members present and voting (in Rajya Sabha), required for matters related to All-India Services and national emergency."
      ],
      correctAnswerIndex: 1,
      explanation: "Special Majority-I is a majority of the total membership of each House and a two-thirds majority of the members present and voting. It is required for specific cases like amending the Constitution, removing Judges, and other important matters.",
    ),
    Question(
      questionText: "How are matters decided in the House or joint sitting of both Houses?",
      options: [
        "By the presiding officer's decision",
        "By a simple majority of votes of the members present and voting",
        "By the presiding officer's casting vote",
        "By unanimous agreement of all members"
      ],
      correctAnswerIndex: 1,
      explanation: "All matters at any sitting of either House or joint sitting of both Houses are decided by a majority of votes of the members present and voting, excluding the presiding officer.",
    ),

    Question(
      questionText: "When does the presiding officer of a House exercise a casting vote?",
      options: [
        "In every instance",
        "In the case of a tie or equality of votes",
        "Only when there is a specific request",
        "At the beginning of each session"
      ],
      correctAnswerIndex: 1,
      explanation: "The presiding officer of a House exercises a casting vote in the case of a tie or equality of votes.",
    ),

    Question(
      questionText: "What are the various methods of voting in the Lok Sabha?",
      options: [
        "Voice Vote, Division, and Secret Ballot",
        "Voice Vote and Casting Vote",
        "Division and Physical Count",
        "Secret Ballot and Recording of Votes by Distribution of Slips"
      ],
      correctAnswerIndex: 0,
      explanation: "The various methods adopted for voting in the Lok Sabha include Voice Vote, Division (by different methods), and Secret Ballot.",
    ),

    Question(
      questionText: "Which languages are declared for transacting business in the Parliament?",
      options: ["Hindi and English", "English and Regional Languages", "Sanskrit and Hindi", "English and Sanskrit"],
      correctAnswerIndex: 0,
      explanation: "The Constitution has declared Hindi and English to be the languages for transacting business in the Parliament.",
    ),

    Question(
      questionText: "What happens during a 'lame-duck session' in the context of Parliament?",
      options: [
        "It refers to a session with no significant legislative activity.",
        "It is a session where only re-elected members participate.",
        "It is the last session of the preceding Lok Sabha after a new Lok Sabha has been elected.",
        "It is a session dedicated to environmental issues."
      ],
      correctAnswerIndex: 2,
      explanation: "A 'lame-duck session' refers to the last session of the preceding Lok Sabha, after a new Lok Sabha has been elected, involving members who could not get re-elected to the new Lok Sabha.",
    ),
    Question(
      questionText: "Who is considered the 'Leader of the House' in the Lok Sabha?",
      options: [
        "The President of India",
        "The Prime Minister, if a member of the Lok Sabha, or a nominated minister",
        "The Speaker of the Lok Sabha",
        "The Leader of the Opposition"
      ],
      correctAnswerIndex: 1,
      explanation: "Under the Rules of Lok Sabha, the 'Leader of the House' means the prime minister, if he/she is a member of the Lok Sabha, or a minister nominated by the prime minister.",
    ),

    Question(
      questionText: "What functions does the 'Leader of the Opposition' perform in Parliament?",
      options: [
        "To provide constructive criticism of the government's policies and offer alternative government",
        "To lead the ruling party in the House",
        "To supervise the legislative process",
        "To represent the President's views"
      ],
      correctAnswerIndex: 0,
      explanation: "The main functions of the 'Leader of the Opposition' include providing constructive criticism of the government's policies and offering an alternative government.",
    ),

    Question(
      questionText: "What is the role of the 'whip' in Parliament?",
      options: [
        "To regulate and monitor the behavior of party members in Parliament",
        "To lead parliamentary debates",
        "To make decisions on legislative matters",
        "To act as the presiding officer in the absence of the Speaker"
      ],
      correctAnswerIndex: 0,
      explanation: "The 'whip' is responsible for regulating and monitoring the behavior of party members in Parliament, ensuring their attendance, and securing support for or against specific issues.",
    ),

    Question(
      questionText: "What is the difference between adjournment and adjournment sine die in Parliament?",
      options: [
        "Adjournment suspends the work for a specified time; adjournment sine die terminates a sitting for an indefinite period.",
        "Both terms refer to the same action.",
        "Adjournment terminates a session, while adjournment sine die terminates a sitting.",
        "Adjournment sine die is done by the presiding officer, while adjournment is done by the President."
      ],
      correctAnswerIndex: 0,
      explanation: "Adjournment suspends the work for a specified time, while adjournment sine die terminates a sitting for an indefinite period. The power lies with the presiding officer of the House.",
    ),

    Question(
      questionText: "When does the dissolution of the Lok Sabha take place?",
      options: [
        "Automatically after five years",
        "Whenever the President decides to dissolve the House",
        "When the Prime Minister recommends it",
        "After the completion of a session"
      ],
      correctAnswerIndex: 1,
      explanation: "The dissolution of the Lok Sabha may take place either automatically after five years or when the President decides to dissolve the House.",
    ),

    Question(
      questionText: "What is the minimum number of members required to be present in the Lok Sabha for conducting business?",
      options: ["10 members", "25 members", "55 members", "75 members"],
      correctAnswerIndex: 2,
      explanation: "Quorum, the minimum number of members required to transact business in the Lok Sabha, is one-tenth of the total number of members, which is 55 members.",
    ),
    Question(
      questionText: "What is the term duration for the office of the Deputy Speaker of the Lok Sabha?",
      options: [
        "Life term",
        "Fixed term of 5 years",
        "Same as the Speaker, during the life of the Lok Sabha",
        "Appointed by the President"
      ],
      correctAnswerIndex: 2,
      explanation: "Like the Speaker, the Deputy Speaker usually remains in office during the life of the Lok Sabha.",
    ),

    Question(
      questionText: "Under what circumstances can the Deputy Speaker vacate the office?",
      options: [
        "If he/she resigns by writing to the Prime Minister",
        "If removed by a resolution passed by a majority of all the then members of the Lok Sabha",
        "If appointed as a minister in the Cabinet",
        "If the Prime Minister decides to replace the Deputy Speaker"
      ],
      correctAnswerIndex: 1,
      explanation: "The Deputy Speaker can vacate the office if removed by a resolution passed by a majority of all the then members of the Lok Sabha.",
    ),

    Question(
      questionText: "What special privilege does the Deputy Speaker have when appointed as a member of a parliamentary committee?",
      options: [
        "Automatic promotion to the position of Speaker",
        "Automatic chairmanship of the committee",
        "Entitlement to a higher salary",
        "Ability to cast two votes in committee decisions"
      ],
      correctAnswerIndex: 1,
      explanation: "The Deputy Speaker, when appointed as a member of a parliamentary committee, automatically becomes its chairman.",
    ),

    Question(
      questionText: "Who assumes the duties of the Speaker when both the Speaker and Deputy Speaker are absent?",
      options: [
        "Chief Whip",
        "Prime Minister",
        "President of India",
        "Senior-most member of the Lok Sabha"
      ],
      correctAnswerIndex: 3,
      explanation: "When both the Speaker and Deputy Speaker are absent, the duties of the Speaker are performed by such member of the Lok Sabha as the President may appoint for the purpose.",
    ),

    Question(
      questionText: "What is the temporary office called that exists for a few days before the newly-elected Lok Sabha elects a new Speaker?",
      options: [
        "Acting Speaker",
        "Provisional Speaker",
        "Speaker Pro Tem",
        "Interim Speaker"
      ],
      correctAnswerIndex: 2,
      explanation: "The temporary office that exists for a few days before the newly-elected Lok Sabha elects a new Speaker is called 'Speaker Pro Tem.'",
    ),

    Question(
      questionText: "Who is the ex-officio Chairman of the Rajya Sabha?",
      options: [
        "The President of India",
        "The Prime Minister",
        "The Vice-President of India",
        "The Speaker of Lok Sabha"
      ],
      correctAnswerIndex: 2,
      explanation: "The Vice-President of India is the ex-officio Chairman of the Rajya Sabha.",
    ),

    Question(
      questionText: "What powers does the Speaker have that the Chairman of the Rajya Sabha does not?",
      options: [
        "Deciding whether a bill is a money bill",
        "Presiding over a joint sitting of two Houses of Parliament",
        "Voting in the first instance",
        "Appointing members of the panel of chairpersons"
      ],
      correctAnswerIndex: 0,
      explanation: "The Speaker decides whether a bill is a money bill, and this decision is final. Additionally, the Speaker presides over a joint sitting of two Houses of Parliament.",
    ),

    Question(
      questionText: "What happens to the Deputy Chairman's role when a resolution for their removal is under consideration?",
      options: [
        "They continue to preside over the House",
        "They preside only in the absence of the Chairman",
        "They cannot preside over a sitting of the House",
        "They automatically become the Acting Chairman"
      ],
      correctAnswerIndex: 2,
      explanation: "When a resolution for the removal of the Deputy Chairman is under consideration, they cannot preside over a sitting of the House, though they may be present.",
    ),

    Question(
      questionText: "Who nominates the panel of chairpersons in the Lok Sabha?",
      options: [
        "The Prime Minister",
        "The Speaker",
        "The President",
        "The Deputy Speaker"
      ],
      correctAnswerIndex: 1,
      explanation: "Under the Rules of Lok Sabha, the Speaker nominates the panel of chairpersons.",
    ),

    Question(
      questionText: "What is the role of the Chairman of Rajya Sabha when the Vice-President is acting as President?",
      options: [
        "Continues to preside over the Rajya Sabha",
        "Performs ceremonial duties only",
        "Performs the duties of the Vice-President",
        "Vacates the office temporarily"
      ],
      correctAnswerIndex: 0,
      explanation: "During any period when the Vice-President acts as President, the Chairman of Rajya Sabha does not perform the duties of the office of the Chairman and continues to preside over the Rajya Sabha.",
    ),
    Question(
      questionText: "What provision ensures the independence and impartiality of the office of the Speaker of the Lok Sabha?",
      options: [
        "The Speaker's ability to vote in the first instance.",
        "Discussion and criticism of the Speaker's work in the Lok Sabha.",
        "The Speaker's high position in the order of precedence.",
        "The Speaker's security of tenure and removal by an effective majority."
      ],
      correctAnswerIndex: 3,
      explanation: "The independence and impartiality of the Speaker's office are ensured by the security of tenure and the requirement for removal by an effective majority in the Lok Sabha.",
    ),
    Question(
      questionText: "Under the Constitution, what are the qualifications for a person to be chosen as a member of Parliament?",
      options: [
        "Citizenship of India, age not less than 25 years, and registration as an elector for a parliamentary constituency.",
        "Citizenship of India, age not less than 30 years, and registration as an elector for a parliamentary constituency.",
        "Citizenship of India, age not less than 25 years, and membership of a scheduled caste or tribe.",
        "Citizenship of India, age not less than 30 years, and possession of other qualifications prescribed by Parliament."
      ],
      correctAnswerIndex: 3,
      explanation: "The Constitution requires citizenship of India, age not less than 30 years, and possession of other qualifications prescribed by Parliament for a person to be chosen as a member of Parliament.",
    ),

    Question(
      questionText: "What are the additional disqualifications laid down by the Representation of People Act (1951) for a person to be elected as a member of Parliament?",
      options: [
        "Found guilty of electoral offences, convicted for any offence resulting in imprisonment for one year, and dismissal from government service for corruption.",
        "Found guilty of electoral offences, convicted for any offence resulting in imprisonment for two or more years, and dismissal from government service for corruption.",
        "Convicted for promoting enmity between different groups, punished for preaching and practising social crimes, and dismissal from government service for corruption.",
        "Convicted for promoting enmity between different groups, failure to lodge an account of election expenses, and interest in government contracts."
      ],
      correctAnswerIndex: 1,
      explanation: "The Representation of People Act (1951) adds disqualifications such as being found guilty of electoral offences, being convicted for any offence resulting in imprisonment for two or more years, and being dismissed from government service for corruption.",
    ),

    Question(
        questionText: "In the context of the Tenth Schedule, when does a member incur disqualification under the defection law?",
        options: [
          "If the member voluntarily gives up the membership of any political party.",
          "If the member votes or abstains from voting in the House against the party's direction.",
          "If any independently elected member joins any political party.",
          "If any nominated member joins any political party within six months."
        ],
        correctAnswerIndex: 1,
        explanation: "A member incurs disqualification under the Tenth Schedule (defection law) if they voluntarily give up the membership of the political party, vote against the party's direction, join another party, or if a nominated member joins any political party after six months."
    ),
    Question(
      questionText: "What is the maximum strength of the Rajya Sabha, and how is it composed?",
      options: [
        "Maximum strength: 238 representatives of states and union territories elected indirectly; Composition: 225 state representatives, 8 union territory representatives, and 12 nominated by the President.",
        "Maximum strength: 250 representatives; Composition: 225 state representatives, 8 union territory representatives, and 12 nominated by the President.",
        "Maximum strength: 245 representatives; Composition: 225 state representatives, 10 union territory representatives, and 10 nominated by the President.",
        "Maximum strength: 250 representatives; Composition: 230 state representatives, 8 union territory representatives, and 12 nominated by the President."
      ],
      correctAnswerIndex: 1,
      explanation: "The Rajya Sabha has a maximum strength of 250 representatives, with 238 elected indirectly from states and union territories, and 12 nominated by the President. The current composition includes 225 state representatives, 8 union territory representatives, and 12 nominated members.",
    ),

    Question(
      questionText: "How are the representatives of states in the Rajya Sabha elected, and on what basis are seats allotted to states?",
      options: [
        "Directly elected by the people; Seats allotted based on the number of union territories.",
        "Indirectly elected by members of state legislative assemblies; Seats allotted based on population.",
        "Directly elected by the people; Seats allotted based on population.",
        "Indirectly elected by members of state legislative assemblies; Seats allotted based on the number of states."
      ],
      correctAnswerIndex: 1,
      explanation: "Representatives of states in the Rajya Sabha are indirectly elected by members of state legislative assemblies. Seats are allotted based on the population of states, ensuring proportional representation.",
    ),

    Question(
      questionText: "What is the maximum strength of the Lok Sabha, and how is it composed?",
      options: [
        "Maximum strength: 543 representatives; Composition: 524 state representatives, 19 union territory representatives, and 2 nominated by the President.",
        "Maximum strength: 550 representatives; Composition: 530 state representatives, 20 union territory representatives, and 2 nominated by the President.",
        "Maximum strength: 530 representatives; Composition: 510 state representatives, 20 union territory representatives, and 2 nominated by the President.",
        "Maximum strength: 545 representatives; Composition: 525 state representatives, 20 union territory representatives, and 2 nominated by the President."
      ],
      correctAnswerIndex: 1,
      explanation: "The Lok Sabha has a maximum strength of 550 representatives, with 530 from states, 20 from union territories, and 2 nominated by the President. The current composition includes 524 state representatives, 19 union territory representatives, and 2 nominated members.",
    ),

    Question(
        questionText: "How are representatives of states in the Lok Sabha elected?",
        options: [
          "Directly elected by the people; Seats allotted based on the population.",
          "Indirectly elected by members of state legislative assemblies; Seats allotted based on the number of union territories.",
          "Directly elected by the people; Seats allotted based on the number of states.",
          "Indirectly elected by members of state legislative assemblies; Seats allotted based on population."
        ],
        correctAnswerIndex: 0,
        explanation: "Representatives of states in the Lok Sabha are directly elected by the people, and seats are allotted based on the population of each state."
    ),
    Question(
      questionText: "What is the significance of the Parliament in the Indian democratic political system?",
      options: [
        "It serves as an advisory body to the President.",
        "It plays a central role due to the adoption of the parliamentary form of government.",
        "It functions as an independent body separate from the executive.",
        "It primarily focuses on the judiciary and legal matters."
      ],
      correctAnswerIndex: 1,
      explanation: "The Parliament holds a pre-eminent and central position in the Indian democratic political system due to the adoption of the parliamentary form of government, also known as the 'Westminster' model.",
    ),

    Question(
      questionText: "What are the three parts of the Parliament of India according to the Constitution?",
      options: [
        "The President, the House of Representatives, and the Senate.",
        "The President, the House of Lords, and the House of Commons.",
        "The President, the Council of States, and the House of the People.",
        "The President, the Supreme Court, and the Lok Sabha."
      ],
      correctAnswerIndex: 2,
      explanation: "The Parliament of India consists of three parts: the President, the Council of States (Rajya Sabha), and the House of the People (Lok Sabha).",
    ),

    Question(
      questionText: "Which house of Parliament represents the states and union territories?",
      options: [
        "Lok Sabha",
        "House of Lords",
        "House of Representatives",
        "Rajya Sabha"
      ],
      correctAnswerIndex: 3,
      explanation: "Rajya Sabha, also known as the Council of States, represents the states and union territories in the Indian Parliament.",
    ),

    Question(
      questionText: "How are representatives of states in the Rajya Sabha elected, and on what basis are seats allotted to states?",
      options: [
        "Directly elected by the people; Seats allotted based on the number of union territories.",
        "Indirectly elected by members of state legislative assemblies; Seats allotted based on population.",
        "Directly elected by the people; Seats allotted based on population.",
        "Indirectly elected by members of state legislative assemblies; Seats allotted based on the number of states."
      ],
      correctAnswerIndex: 1,
      explanation: "Representatives of states in the Rajya Sabha are indirectly elected by members of state legislative assemblies. Seats are allotted based on the population of states, ensuring proportional representation.",
    ),

    Question(
      questionText: "What is the maximum strength of the Lok Sabha, and how is it composed?",
      options: [
        "Maximum strength: 550 representatives; Composition: 530 state representatives, 20 union territory representatives.",
        "Maximum strength: 543 representatives; Composition: 524 state representatives, 19 union territory representatives.",
        "Maximum strength: 600 representatives; Composition: 580 state representatives, 20 union territory representatives.",
        "Maximum strength: 560 representatives; Composition: 540 state representatives, 20 union territory representatives."
      ],
      correctAnswerIndex: 1,
      explanation: "The Lok Sabha has a maximum strength of 543 representatives, including 524 state representatives and 19 union territory representatives.",
    ),

    Question(
      questionText: "Before 2020, what provision allowed the President to nominate two members from the Anglo-Indian community to the Lok Sabha?",
      options: [
        "Article 75(2)",
        "Article 330",
        "Article 331",
        "Article 324"
      ],
      correctAnswerIndex: 2,
      explanation: "Before 2020, Article 331 allowed the President to nominate two members from the Anglo-Indian community to the Lok Sabha.",
    ),

    Question(
      questionText: "What is the rationale behind nominating members to the Rajya Sabha by the President?",
      options: [
        "To represent political parties.",
        "To provide representation to union territories.",
        "To ensure proportional representation.",
        "To provide eminent persons a place without going through the process of election."
      ],
      correctAnswerIndex: 3,
      explanation: "The rationale behind nominating members to the Rajya Sabha by the President is to provide eminent persons a place without going through the process of election.",
    ),

    Question(
      questionText: "In which system are members of the Rajya Sabha elected?",
      options: [
        "First-Past-The-Post System",
        "Proportional Representation by Single Transferable Vote",
        "List System",
        "Mixed-Member Proportional Representation"
      ],
      correctAnswerIndex: 1,
      explanation: "Members of the Rajya Sabha are elected through the Proportional Representation by Single Transferable Vote system.",
    ),

    Question(
        questionText: "What is the basis for the reservation of seats for scheduled castes and scheduled tribes in the Lok Sabha?",
        options: [
          "Religious affiliation",
          "Caste-based representation",
          "Population ratios",
          "Educational qualifications"
        ],
        correctAnswerIndex: 2,
        explanation: "Seats are reserved for scheduled castes and scheduled tribes in the Lok Sabha based on population ratios."
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
    home: parliment(),
  ));
}

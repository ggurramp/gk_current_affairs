import 'package:flutter/material.dart';
import 'package:gk_current_affairs/economy/Capital_market.dart';
import 'package:gk_current_affairs/economy/Global_consensus.dart';
import 'package:gk_current_affairs/economy/Inflation.dart';
import 'package:gk_current_affairs/economy/a_s.dart';
import 'package:gk_current_affairs/economy/banking.dart';
import 'package:gk_current_affairs/economy/bopoe.dart';
import 'package:gk_current_affairs/economy/edoi.dart';
import 'package:gk_current_affairs/economy/els.dart';
import 'package:gk_current_affairs/economy/erd.dart';
import 'package:gk_current_affairs/economy/f_s.dart';
import 'package:gk_current_affairs/economy/fer.dart';
import 'package:gk_current_affairs/economy/fiii.dart';
import 'package:gk_current_affairs/economy/ftd.dart';
import 'package:gk_current_affairs/economy/g&d.dart';
import 'package:gk_current_affairs/economy/gegt.dart';
import 'package:gk_current_affairs/economy/gfmd.dart';
import 'package:gk_current_affairs/economy/globalisation.dart';
import 'package:gk_current_affairs/economy/globalisation_2.dart';
import 'package:gk_current_affairs/economy/guri.dart';
import 'package:gk_current_affairs/economy/gvt_f.dart';
import 'package:gk_current_affairs/economy/iage.dart';
import 'package:gk_current_affairs/economy/iep.dart';
import 'package:gk_current_affairs/economy/im.dart';
import 'package:gk_current_affairs/economy/indian_Economy.dart';
import 'package:gk_current_affairs/economy/is_l.dart';
import 'package:gk_current_affairs/economy/lfcioe.dart';
import 'package:gk_current_affairs/economy/mlfl.dart';
import 'package:gk_current_affairs/economy/oorc.dart';
import 'package:gk_current_affairs/economy/outofeconomy.dart';
import 'package:gk_current_affairs/economy/p&sc.dart';
import 'package:gk_current_affairs/economy/pin.dart';
import 'package:gk_current_affairs/economy/rbi_mpc.dart';
import 'package:gk_current_affairs/economy/rtb.dart';
import 'package:gk_current_affairs/economy/sd&cc.dart';
import 'package:gk_current_affairs/economy/wto.dart';
import 'package:gk_current_affairs/subjectWiseBits/adl.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_4.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_5.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_6.dart';
import 'package:gk_current_affairs/subjectWiseBits/bci.dart';
import 'package:gk_current_affairs/subjectWiseBits/cbi.dart';
import 'package:gk_current_affairs/subjectWiseBits/cgvnt.dart';
import 'package:gk_current_affairs/subjectWiseBits/citizenship.dart';
import 'package:gk_current_affairs/subjectWiseBits/coc.dart';
import 'package:gk_current_affairs/subjectWiseBits/cos.dart';
import 'package:gk_current_affairs/subjectWiseBits/directivePriciplesOfTheState.dart';
import 'package:gk_current_affairs/subjectWiseBits/dloc.dart';
import 'package:gk_current_affairs/subjectWiseBits/elections.dart';
import 'package:gk_current_affairs/subjectWiseBits/electionslaw.dart';
import 'package:gk_current_affairs/subjectWiseBits/erfrms.dart';
import 'package:gk_current_affairs/subjectWiseBits/fpcy.dart';
import 'package:gk_current_affairs/subjectWiseBits/fundamentalDuties.dart';
import 'package:gk_current_affairs/subjectWiseBits/fundamentalRights.dart';
import 'package:gk_current_affairs/subjectWiseBits/hbg.dart';
import 'package:gk_current_affairs/subjectWiseBits/hbg_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/language.dart';
import 'package:gk_current_affairs/subjectWiseBits/lcoi.dart';
import 'package:gk_current_affairs/subjectWiseBits/ljti.dart';
import 'package:gk_current_affairs/subjectWiseBits/lp_ly.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_10.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_11.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_13.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_14.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_15.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_2.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_3.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_4.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_5.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_6.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_7.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_8.dart';
import 'package:gk_current_affairs/subjectWiseBits/medievalHistory_9.dart';
import 'package:gk_current_affairs/subjectWiseBits/moc.dart';
import 'package:gk_current_affairs/subjectWiseBits/ncrwc.dart';
import 'package:gk_current_affairs/subjectWiseBits/ndm.dart';
import 'package:gk_current_affairs/subjectWiseBits/nia.dart';
import 'package:gk_current_affairs/subjectWiseBits/nintgrn.dart';
import 'package:gk_current_affairs/subjectWiseBits/pgrps.dart';
import 'package:gk_current_affairs/subjectWiseBits/ppart_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ps.dart';
import 'package:gk_current_affairs/subjectWiseBits/rrp.dart';
import 'package:gk_current_affairs/subjectWiseBits/sic.dart';
import 'package:gk_current_affairs/subjectWiseBits/soils.dart';
import 'package:gk_current_affairs/subjectWiseBits/sprcc.dart';
import 'package:gk_current_affairs/subjectWiseBits/spsc.dart';
import 'package:gk_current_affairs/subjectWiseBits/spss.dart';
import 'package:gk_current_affairs/subjectWiseBits/uit.dart';
import 'package:gk_current_affairs/subjectWiseBits/upsc.dart';
import 'package:gk_current_affairs/subjectWiseBits/vbr.dart';
import 'package:gk_current_affairs/subjectWiseBits/vicepresident.dart';
import 'package:gk_current_affairs/subjectWiseBits/wcstrctn.dart';
import '../economy/is_d.dart';
import '../economy/tr_fec.dart';
import '../subjectWiseBits/CONSTITUTIONALPRESCRIPTIONS.dart';
import '../subjectWiseBits/NATIONALCOMMISSIONFORPROTECTIONOFCHILDrIGHTS.dart';
import '../subjectWiseBits/NITIAayog.dart';
import '../subjectWiseBits/SPECIALOFFICERSFORLINGUISTICMINORITIES.dart';
import '../subjectWiseBits/advgOI.dart';
import '../subjectWiseBits/agi.dart';
import '../subjectWiseBits/agriculture.dart';
import '../subjectWiseBits/amendement11.dart';
import '../subjectWiseBits/ancientHistory_1.dart';
import '../subjectWiseBits/ancientHistory_2.dart';
import '../subjectWiseBits/ancientHistory_3.dart';

import '../subjectWiseBits/basicstructure12.dart';
import '../subjectWiseBits/cabinetcommitties.dart';
import '../subjectWiseBits/cag.dart';
import '../subjectWiseBits/centre&StateRelations.dart';
import '../subjectWiseBits/cheifMinister.dart';
import '../subjectWiseBits/cic.dart';
import '../subjectWiseBits/constitution.dart';
import '../subjectWiseBits/consumerCommision.dart';
import '../subjectWiseBits/counicilofministers.dart';
import '../subjectWiseBits/electionCommission.dart';
import '../subjectWiseBits/federalSystem.dart';
import '../subjectWiseBits/financeCommission.dart';
import '../subjectWiseBits/goodsServiceCouncil.dart';
import '../subjectWiseBits/governor.dart';
import '../subjectWiseBits/highCourt.dart';
import '../subjectWiseBits/interStateRelations.dart';
import '../subjectWiseBits/judicialActivism.dart';
import '../subjectWiseBits/judicialReview.dart';
import '../subjectWiseBits/lokadals_otherCourts.dart';
import '../subjectWiseBits/medievalHistory_1.dart';
import '../subjectWiseBits/medievalHistory_12.dart';
import '../subjectWiseBits/municipolities.dart';
import '../subjectWiseBits/nationalCommisionerBCs.dart';
import '../subjectWiseBits/nationalCommisionerSCs.dart';
import '../subjectWiseBits/nationalCommisionerSTs.dart';
import '../subjectWiseBits/national_income.dart';
import '../subjectWiseBits/national_income_te.dart';
import '../subjectWiseBits/ncforWomen.dart';
import '../subjectWiseBits/nhrc.dart';
import '../subjectWiseBits/panchayatRaj.dart';
import '../subjectWiseBits/parliment.dart';
import '../subjectWiseBits/parlimentary.dart';
import '../subjectWiseBits/emergencyprovisions.dart';
import '../subjectWiseBits/parlimentary_committie.dart';
import '../subjectWiseBits/parlimentary_group.dart';
import '../subjectWiseBits/plans_of_indian_economy_5yrs.dart';
import '../subjectWiseBits/ppart.dart';
import '../subjectWiseBits/preambleOfTheConstitution.dart';
import '../subjectWiseBits/president.dart';
import '../subjectWiseBits/primeminister.dart';
import '../subjectWiseBits/publicInterestLitigation.dart';
import '../subjectWiseBits/salientFeaturesOfTheConstitution.dart';
import '../subjectWiseBits/sceduledAreasTribalAreas.dart';
import '../subjectWiseBits/shrc.dart';
import '../subjectWiseBits/stateCouncilOfMinisters.dart';
import '../subjectWiseBits/stateLegislative.dart';
import '../subjectWiseBits/subOrdinateCourt.dart';
import '../subjectWiseBits/supremeCourt.dart';
import '../subjectWiseBits/tribunals.dart';
import '../subjectWiseBits/unionTerritories.dart';
import '../subjectWiseBits/universe_solar_system.dart';
import 'World_capitals_currencies_South_North_america.dart';
import 'ncm.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GK Current Affairs',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text('GK Current Affairs'),
//           actions: [
//             // Add the IconButton here
//             IconButton(
//               onPressed: () {
//                 _showAlertDialog(context);
//               },
//               icon: Icon(Icons.help_outline),
//             ),
//           ],
//
//         ),
//         body: SubjectsList(),
//       ),
//     );
//   }
  // Function to show the AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              'If there are any mistakes or suggestions, please reach out to us on WhatsApp at +917893305330.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }



class SubjectsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Add Scaffold here to have separate AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Quizzes'),
        actions: [
          // Add the IconButton here
          IconButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            icon: Icon(Icons.help_outline),
          ),
        ],
      ),
      body: Material(

        child: ListView(
          padding: EdgeInsets.all(16.0),

          children: [

            SubjectTile(
              subject: 'History',
              subTopics: ['Ancient Indian History 1', 'Ancient Indian History 2', 'Ancient Indian History 3', 'Ancient Indian History 4', 'Ancient Indian History 5',"Ancient Indian History 6",'Medieval Indian History 1', 'Medieval Indian History 2', 'Medieval Indian History 3', 'Medieval Indian History 4', 'Medieval Indian History 5',"Medieval Indian History 6",'Medieval Indian History 7', 'Medieval Indian History 8', 'Medieval Indian History 9', 'Medieval Indian History 10', 'Medieval Indian History 11',"Medieval Indian History 12",'Medieval Indian History 13', 'Medieval Indian History 14', 'Medieval Indian History 15', ],
            ),
            //medievalHistory_15
            SubjectTile(
              subject: 'Geography',
              subTopics: ['universe and solar system',"agriculture","soils"],
            ),
            SubjectTile(
              subject: 'Polity',
              subTopics: ["Historical Background of the Constitution",
                "making of the constitution",
                "Concept Of The Constitution",
                "Salient Features Of The Constitution",
                "Preamble Of The Constitution",
                "Union And It's Territory",
                "Fundamental Rights",
                "Directive Priciples Of The State",
                "Fundamental Duties",
                'Amendements of the indian constitution',"Basic structure of the constitution","parlimentary","Prime Minister","Counicil of Ministers","President","Vice President","Cabinet Committies","parliment","Parlimentary Committie","Parlimentary Group","Supreme Court","Judicial Review","judicialActivism","Public Interest Litigation","Governor","Cheif Minister","State Council Of Ministers","State Legislative","High Court","Sub Ordinate Court","Tribunals","Consumer Commission","Lok Adals Other Courts","Panchayat Raj","Municipolities","Sceduled Areas & Tribal Areas","Election Commission","Union Public Service Commission","State Public Service Commission","Constitution","Union & it's Territories","Federal System","Centre & StateRelations","Inter State Relations","Emergency Provisions","Finance Commission","Goods Service Council","National Commisioner for SCs","National Commisioner for St's","National Commisioner for BC's","SPECIAL OFFICERS FOR LINGUISTIC MINORITIES","COMPTROLLER AND AUDITOR GENERAL OF INDIA","ATTORNEY GENERAL OF INDIA","ADVOCATE GENERAL OF INDIA","CONSTITUTIONAL PRESCRIPTIONS","NITI Aayog","National Human Rights Commission","State Human Rights Commission","NATIONAL COMMISION FOR WOMEN ","NATIONAL COMMISSION FOR PROTECTION OF CHILD RIGHTS ","NATIONAL COMMISSION FOR MINORITIES","CENTRAL INFORMATION COMMISSION ","STATE INFORMATION COMMISSION","CENTRAL BUREAU OF INVESTIGATION","LOKPAL AND LOKAYUKTA","NATIONAL INVESTIGATION AGENCY","NATIONAL DISASTER MANAGEMENT AUTHORITY","BAR COUNCIL OF INDIA","LAW COMMISSION OF INDIA","DELIMITATION COMMISSION OF INDIA","DELIMITATION COMMISSION OF INDIA","CO-OPERATIVE SOCIETY ","OFFICIAL LANGUAGE","PUBLIC SERVICES ","RIGHTS AND LIABILITIES OF THE GOVERNMENT","SPECIAL PROVISION RELATING TO CERTAIN CLASSES","SPECIAL PROVISION FOR SOME STATES","POLITICAL PARTIES","ROLE OF REGIONAL PARTIES","ELECTIONS","ELECTIONS LAW","ELECTORAL REFORMS","VOTING BEHAVIOUR","COALITION GOVERNMENT","ANTI - DEFECTION LAW","PRESSURE GROUPS","NATIONAL INTEGRATION","FOREIGN POLICY","NATIONAL COMMISSION TO REVIEW WORKING OF THE CONSTITUTION","LANDMARK JUDGEMENT AND THEIR IMPACTS","IMPORTANT DOCTRINES OF CONSTITUTIONAL INTERPRETATION","WORLD CONSTITUTION"],
            ),
            SubjectTile(
              subject: 'Economy',
              subTopics: ["Output of an Economy",
                "Growth & Development",
                "Sustainable Developement & Climate change",
                "Poverty & Social Sector",
                "Food Security",
                "Agriculture Sector",
                "Industrial Sector & Liberalization",
                "Infrastructure Development",
                "Infrastructure Models",
                "Integrated Energy Policy",
                "Government Finances",
                "Reserve Bank of India & Monetary policy Committe",
                "Banking",
                "Inflation",
                "Capital Market",
                "Planning India",
                "Globalisation",
                "Globalisation 2",
                "Export, Growth , SEZ's",
                "Foreign Trade Policy",
                "Balance Of Payments of Economics",
                "Trade Reforms & Foreign Exchange Management",
                "Foreign Investment In india",
                "Multilateral Financial Instituitions",
                "External Debit Of India",
                "exchange rate Dermination",
                "Foreign Exhange Reserves",
                "Regional Trading blocks",
                "India And Global Economy",
                "Global Economy A Great Transition",
                "Lesson From crisis in open Economies",
                "Global Financial Melt Down",
                "Global Consensus",
                "Global Unresolved Issues",
                "World Trade Organisation",
                "Indian Economy",






                "5Years planning of indian Economy","National Income"],
            ),

          ],
        ),
      ),

    );
  }
  // Function to show the AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              "If you find any mistakes or have suggestions, please feel free to reach out to us on WhatsApp at +917893305330."
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}


class SubjectTile extends StatelessWidget {
  final String subject;
  final List<String> subTopics;

  const SubjectTile({
    required this.subject,
    required this.subTopics,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        title: Text(subject),
        children: subTopics.map((subTopic) {
          return ListTile(
            title: Text(subTopic),
            onTap: () {
              // Handle the tap event by navigating to the appropriate page
              navigateToPage(context, subTopic);
            },
          );
        }).toList(),
      ),
    );
  }
//STATE INFORMATION COMMISSION


  void navigateToPage(BuildContext context, String subTopic) {
    switch (subTopic) {
      case "Fundamental Duties":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fundamentalDuties()),
        );
        break;
      case "Directive Priciples Of The State":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => directivePriciplesOfTheState()),
        );
        break;
      case "Fundamental Rights":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fundamentalRights()),
        );
        break;
      case "Citizenship":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => citizenship()),
        );
        break;
      case "Union And It's Territory":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => uit()),
        );
        break;
      case "Concept Of The Constitution":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => coc()),
        );
        break;

      case "Historical Background of the Constitution":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => hbg()),
        );
        break;
      case "making of the constitution":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => moc()),
        );
        break;
      case "WORLD CONSTITUTION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => wcstrctn()),
        );
        break;
      case "IMPORTANT DOCTRINES OF CONSTITUTIONAL INTERPRETATION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ljti()),
        );
        break;
      case "LANDMARK JUDGEMENT AND THEIR IMPACTS":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ljti()),
        );
        break;
      case "NATIONAL COMMISSION TO REVIEW WORKING OF THE CONSTITUTION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ncrwc()),
        );
        break;
      case "FOREIGN POLICY":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fpcy()),
        );
        break;
      case "NATIONAL INTEGRATION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nintgn()),
        );
        break;
      case "PRESSURE GROUPS":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pgrps()),
        );
        break;
      case "ANTI - DEFECTION LAW":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => adl()),
        );
        break;
      case "COALITION GOVERNMENT":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cgvnt()),
        );
        break;
      case "VOTING BEHAVIOUR":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => vbr()),
        );
        break;
      case "ELECTORAL REFORMS":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => erfrms()),
        );
        break;
      case "ELECTIONS LAW":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => electionslaw()),
        );
        break;
      case "ELECTIONS":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => elections()),
        );
        break;
      case "ROLE OF REGIONAL PARTIES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rrp()),
        );
        break;
      case "POLITICAL PARTIES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ppart()),
        );
        break;
      case "SPECIAL PROVISION FOR SOME STATES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => spss()),
        );
        break;
      case "SPECIAL PROVISION RELATING TO CERTAIN CLASSES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sprcc()),
        );
        break;
      case "RIGHTS AND LIABILITIES OF THE GOVERNMENT":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ps()),
        );
        break;
      case "PUBLIC SERVICES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ps()),
        );
        break;
      case "OFFICIAL LANGUAGE":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => language()),
        );
        break;
      case "OFFICIAL LANGUAGE":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => language()),
        );
        break;
      case "CO-OPERATIVE SOCIETY":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cos()),
        );
        break;
      case "DELIMITATION COMMISSION OF INDIA":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => dloc()),
        );
        break;
      case "LAW COMMISSION OF INDIA":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => lci()),
        );
        break;
      case "BAR COUNCIL OF INDIA":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bci()),
        );
        break;
      case "NATIONAL DISASTER MANAGEMENT AUTHORITY":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ndm()),
        );
        break;
      case "NATIONAL INVESTIGATION AGENCY":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nia()),
        );
        break;
      case "LOKPAL AND LOKAYUKTA":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => lp_ly()),
        );
        break;
      case "CENTRAL BUREAU OF INVESTIGATION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cbi()),
        );
        break;
      case "STATE INFORMATION COMMISSION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sic()),
        );
        break;
      case "CENTRAL INFORMATION COMMISSION":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cic()),
        );
        break;
      case "NATIONAL COMMISSION FOR MINORITIES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ncm()),
        );
        break;
      case "NATIONAL COMMISSION FOR PROTECTION OF CHILD RIGHTS  ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ncpchildren()),
        );
        break;
      case "NATIONAL COMMISION FOR WOMEN ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nationalCommisionforWomen()),
        );
        break;
      case "State Human Rights Commission":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => shrc()),
        );
        break;
      case "National Human Rights Commission":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nhrc()),
        );
        break;
      case "NITI Aayog":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nitiAyogh()),
        );
        break;
      case "CONSTITUTIONAL PRESCRIPTIONS":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CONSTITUTIONALPRESCRIPTIONS()),
        );
        break;
      case "ADVOCATE GENERAL OF INDIA":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => advgOI()),
        );
        break;
      case "ATTORNEY GENERAL OF INDIA ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => agi()),
        );
        break;
      case "COMPTROLLER AND AUDITOR GENERAL OF INDIA ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cag()),
        );
        break;
      case "SPECIAL OFFICERS FOR LINGUISTIC MINORITIES":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SPECIALOFFICERSFORLINGUISTICMINORITIES()),
        );
        break;
      case "National Commisioner BC's":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nationalCommisionerBCs()),
        );
        break;
      case "National Commisioner ST's":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nationalCommisionerSTs()),
        );
        break;
      case "National Commisioner SC's":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nationalCommisionerSCs()),
        );
        break;
      case 'Goods Service Council':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => goodsServiceCouncil()),
        );
        break;
      case 'Finance Commission':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => financeCommission()),
        );
        break;
      case 'Emergency Provisions':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentarySystem()),
        );
        break;
      case 'Inter State Relations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => interStateRelations()),
        );
        break;
      case 'Centre & StateRelations':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => centreStateRelations()),
        );
        break;
      case 'Federal System':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => federalSystem()),
        );
        break;
      case "Union & it's Territories":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => unionTerritories()),
        );
        break;
      case 'Preamble Of The Constitution':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => preambleOfTheConstitution()),
        );
        break;
      case 'Salient Features Of The Constitution':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => salientFeaturesOfTheConstitution()),
        );
        break;
      case 'Constitution':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => constitution()),
        );
        break;
      case 'State Public Service Commission':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => spsc()),
        );
        break;
      case 'Union Public Service Commission':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => upsc()),
        );
        break;
      case 'Election Commission':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => electionCommission()),
        );
        break;
      case 'Sceduled Areas & Tribal Areas':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sceduledAreasTribalAreas()),
        );
        break;
      case "Union & It's Territories":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => unionTerritories()),
        );
        break;
      case 'Municipolities':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => municipolities()),
        );
        break;
      case 'Panchayat Raj':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => panchayatRaj()),
        );
        break;
      case 'Lok Adals Other Courts':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => lokadals_otherCourts()),
        );
        break;
      case 'Consumer Commission':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => consumerCommission()),
        );
        break;
      case 'Tribunals':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tribunals()),
        );
        break;
      case 'Sub Ordinate Court':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => subOrdinateCourt()),
        );
        break;
      case 'High Court':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => highCourt()),
        );
        break;
      case 'State Legislative':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => stateLegislative()),
        );
        break;
      case 'State Council Of Ministers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => stateCouncilOfMinisters()),
        );
        break;
      case 'Cheif Minister':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cheifMinister()),
        );
        break;
      case 'Governor':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => governor()),
        );
        break;
      case 'Public Interest Litigation':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => publicInterestLitigation()),
        );
        break;
      case 'Judicial Activism':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => judicialActivism()),
        );
        break;
      case 'Judicial Review':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => judicialReview()),
        );
        break;
      case 'Supreme Court':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => supremeCourt()),
        );
        break;
      case 'Parlimentary Group':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentary_group()),
        );
        break;
      case 'Parlimentary Committie':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentary_committie()),
        );
        break;
      case 'Parliment':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parliment()),
        );
        break;
      case 'Counicil of Ministers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => counicilofministers()),
        );
        break;
      case 'Prime Minister':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => primeminister()),
        );
        break;
      case 'Cabinet Committies':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cabinetcommitties()),
        );
        break;
      case 'Vice President':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => vicepresident()),
        );
        break;
      case 'National Income':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => national_income()),
        );
        break;
      case 'Ancient Indian History 1':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_1()),
        );
        break;
      case '5Years planning of indian Economy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => plans_indian_economy()),
        );
        break;
        //plans_indian_economy
      case 'Ancient Indian History 2':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_2()),
        );

        break;
      case 'Ancient Indian History 3':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_3()),
        );
        break;
      case 'Ancient Indian History 4':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_4()),
        );
        break;
      case 'Ancient Indian History 5':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_5()),
        );

        break;
      case 'Ancient Indian History 6':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_6()),
        );
        break;
        //'Medieval Indian History 15'

      case 'Medieval Indian History 1':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_1()),
        );
        break;
      case 'Medieval Indian History 2':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_2()),
        );

        break;
      case 'Medieval Indian History 3':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_3()),
        );
        break;
      case 'Medieval Indian History 4':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_4(
          )),
        );
        break;
      case 'Medieval Indian History 5':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_5()),
        );

        break;
      case 'Medieval Indian History 6':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_6(

          )),
        );
        break;
      case 'Medieval Indian History 7':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_7(
          )),
        );
        break;
      case 'Medieval Indian History 8':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_8(
          )),
        );

        break;
      case 'Medieval Indian History 9':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_9(

          )),
        );
        break;
      case 'Medieval Indian History 10':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_10()),
        );
        break;
      case 'Medieval Indian History 11':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_11()),
        );

        break;
      case 'Medieval Indian History 12':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_12()),
        );
        break;
      case 'Medieval Indian History 13':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_13()),
        );
        break;
      case 'Medieval Indian History 14':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_14()),
        );

        break;
      case 'Medieval Indian History 15':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_15()),
        );
        break;

        //from here modern
      case 'Medieval Indian History 10':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_4()),
        );
        break;
      case 'Medieval Indian History 11':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_5()),
        );

        break;
      case 'Medieval Indian History 612':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_6()),
        );
        break;
      case 'World_capitals_currencies_South_North_america':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => World_capitals_currencies_South_North_america()),
        );
        //
      case 'Amendements of the indian constitution':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => amendement11()),
        );
        break;
      case 'Basic structure of the constitution':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => basicstructure_12()),
        );
        break;
      case 'parlimentary':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentary()),
        );
        break;
      case 'universe and solar system':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => universe_solar_system()),
        );
        break;
      case 'agriculture':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => agriculture()),
        );
        break;
      case 'soils':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => soils()),
        );
        break;
      case 'president':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => president()),
        );
        break;


        //economy
      case 'Output of an Economy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => opoae()),
        );
        break;
      case "Growth & Development":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => growth_developement()),
        );

        break;
      case 'Sustainable Developement & Climate change':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sd_cc()),
        );
        break;
      case 'Poverty & Social Sector':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => p_sc()),
        );
    //
      case 'Food Security':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => f_s()),
        );
        break;
      case 'Agriculture Sector':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => a_s()),
        );
        break;
      case 'Industrial Sector & Liberalization':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => is_l()),
        );
        break;
      case 'Infrastructure Development':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => isd()),
        );
        break;
      case 'Infrastructure Models':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => im()),
        );
        break;
      case 'Integrated Energy Policy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => iep()),
        );
        break;
      case 'Government Finances':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gvt_f()),
        );
        break;
      case 'Reserve Bank of India & Monetary policy Committe':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rbi_mpc()),
        );

        break;
      case 'Banking':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => banking()),
        );
        break;
      case 'Inflation':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => inflation(
          )),
        );
        break;
      case 'Capital Market':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => c_m()),
        );

        break;
      case 'Planning India':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pin(

          )),
        );
        break;
      case 'Globalisation':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => globalisation(
          )),
        );
        break;
      case 'Globalisation 2':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => globalisation_2(
          )),
        );

        break;
      case "Export, Growth , SEZ's":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => els(

          )),
        );
        break;
      case 'Foreign Trade Policy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ftp()),
        );
        break;
      case 'Balance Of Payments of Economics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bope()),
        );

        break;
      case 'Trade Reforms & Foreign Exchange Management':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tf_fem()),
        );
        break;
      case 'Foreign Investment In india':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fiii()),
        );
        break;
      case 'Multilateral Financial Instituitions':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => mlfi()),
        );

        break;

        break;
    //'Medieval Indian History 15'

      case 'External Debit Of India':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => eboi()),
        );
        break;
      case 'exchange rate Dermination':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => erd()),
        );

        break;
      case 'Foreign Exhange Reserves':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fer()),
        );
        break;
      case 'Regional Trading blocks':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rtb(
          )),
        );
        break;
      case 'India And Global Economy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => iage()),
        );

        break;
      case 'Global Economy A Great Transition':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => geat(

          )),
        );
        break;
      case 'Lesson From crisis in open Economies':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => lfcioe(
          )),
        );
        break;
      case 'Global Financial Melt Down':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gfmd(
          )),
        );

        break;
      case 'Overview of Crisis Since 2008 ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_9(

          )),
        );
        break;
      case 'Overview of Crisis Since 2008':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => oorcs()),
        );
        break;
      case 'Global Consensus':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => global_consensus()),
        );

        break;
      case 'Global Unresolved Issues':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => guri()),
        );
        break;
      case 'World Trade Organisation':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => wto()),
        );
        break;
      case 'Indian Economy':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => indianEconomy()),
        );

        break;
      case 'Medieval Indian History 15':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => medievalHistory_15()),
        );
        break;

    //from here modern
      case 'Medieval Indian History 10':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_4()),
        );
        break;
      case 'Medieval Indian History 11':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_5()),
        );

        break;
      case 'Medieval Indian History 612':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_6()),
        );
        break;
    // universe_solar_system
    }
  }
}

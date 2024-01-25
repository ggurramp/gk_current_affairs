import 'package:flutter/material.dart';
import 'package:gk_current_affairs/subjectWiseBits/adl_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/agriculture_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_2_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_3_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_4_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_5_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ancientHistory_6_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/bci_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/cbi_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/centre&StateRelations.dart';
import 'package:gk_current_affairs/subjectWiseBits/cgvnt_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/cic_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/citizenship_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/coc_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/couniclofministers_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/directivePriciplesOfTheState_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/dloc_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/elections_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/electionslaw.dart';
import 'package:gk_current_affairs/subjectWiseBits/electionslaw_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/erfrms.dart';
import 'package:gk_current_affairs/subjectWiseBits/erfrms_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/federalSystem_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/fpcy_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/fundamentalDuties_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/fundamentalRights_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/governor_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/hbg_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/idci.dart';
import 'package:gk_current_affairs/subjectWiseBits/interStateRelations_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/judicialActivism_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/judicialReview_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/language_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/lci_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ljti_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/lp_ly_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/moc_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ncrwc_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ndm_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/nia_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/nintrn_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/parliment_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/parlimentarySystem_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/parlimentary_committie_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/pgrps_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/plans_of_indian_economy_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ppart.dart';
import 'package:gk_current_affairs/subjectWiseBits/ppart_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/preambleOfTheConstitution_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/primeminister_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/ps_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/publicInterestLitigation_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/rlg_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/rrp_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/sfoc_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/sic_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/sprcc_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/spss_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/supremeCourt_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/uit_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/vbr_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/vicepresident_te.dart';
import 'package:gk_current_affairs/subjectWiseBits/wcstrctn.dart';
import 'package:gk_current_affairs/subjectWiseBits/wcstrctn_te.dart';
import '../subjectWiseBits/amendement11_te.dart';
import '../subjectWiseBits/ancientHistory_1_te.dart';
import '../subjectWiseBits/basicstructure12_te.dart';
import '../subjectWiseBits/national_income_te.dart';
import '../subjectWiseBits/parlimentary_te.dart';
import '../subjectWiseBits/president_te.dart';
import '../subjectWiseBits/soils_te.dart';
import '../subjectWiseBits/universe_solar_system_te.dart';
import 'World_capitals_currencies_South_North_america.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GK Current Affairs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('GK Current Affairs'),
        ),
        body: SubjectsList_te(),
      ),
    );
  }
}

class SubjectsList_te extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Add Scaffold here to have separate AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Quizzes'),
      ),
      body: Material(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            // SubjectTile(
            //   subject: 'ఆర్థిక వ్యవస్థ',
            //   subTopics: [
            //     'World_capitals_currencies',
            //     'World_capitals_currencies_Africa',
            //     'World_capitals_currencies_Europe',
            //     'World_capitals_currencies_South_North_america',
            //   ],
            // ),
            SubjectTile(
              subject: 'చరిత్ర',
              subTopics: ['ప్రాచీన భారత చరిత్ర 1', 'ప్రాచీన భారత చరిత్ర 2', 'ప్రాచీన భారత చరిత్ర 3', 'ప్రాచీన భారత చరిత్ర 4', 'ప్రాచీన భారత చరిత్ర 5',"ప్రాచీన భారత చరిత్ర 6"],
            ),

            SubjectTile(
              subject: 'భౌగోళిక శాస్త్రం',
              subTopics: ['విశ్వం మరియు సౌర వ్యవస్థ',"వ్యవసాయం","నేలలు"],
            ),
            SubjectTile(
              subject: 'పాలిటి',
              subTopics: ["రాజ్యాంగం యొక్క చారిత్రక నేపథ్యం",
                "రాజ్యాంగాన్ని తయారు చేయడం",
                "రాజ్యాంగం యొక్క భావన",
                "రాజ్యాంగం యొక్క ముఖ్య లక్షణాలు",
                "రాజ్యాంగ ప్రవేశిక", "పౌరసత్వం","ప్రాథమిక హక్కులు","ఆదేశిక సూత్రాలు", "ప్రాథమిక విధులు", 'రాజ్యాంగ సవరణ',"రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణం","పార్లమెంటరీ వ్యవస్థ","సమాఖ్య వ్యవస్థ","కేంద్ర మరియు రాష్ట్ర సంబంధాలు","అంతర్-రాష్ట్ర సంబంధాలు","అత్యవసర నిబంధనలు","ప్రధాన మంత్రి","మంత్రి మండలి","పార్లమెంట్","పార్లమెంటరీ కమిటీ","సుప్రీం కోర్ట్","యూనియన్ అండ్ ఇట్స్ టెరిటరీ","న్యాయ సమీక్ష","న్యాయపరమైన కార్యాచరణ","ప్రెసిడెంట్","వైస్ ప్రెసిడెంట్","సెంట్రల్ ఇన్ఫర్మేషన్ కమిషన్","రాష్ట్ర సమాచార కమిషన్","సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్","లోక్‌పాల్ మరియు లోకాయుక్త","నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ","నేషనల్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ","భారతదేశ లా కమిషన్","డీలిమిటేషన్ కమిషన్ ఆఫ్ ఇండియా","అధికారిక భాష","పబ్లిక్ సర్వీసెస్","్రభుత్వ హక్కులు మరియు బాధ్యతలు","కొన్ని తరగతులకు సంబంధించిన ప్రత్యేక నిబంధన","కొన్ని రాష్ట్రాలకు ప్రత్యేక నిబంధన","రాజకీయ పార్టీలు","ప్రాంతీయ పార్టీల పాత్ర","ఎన్నికలు","ఎన్నికల చట్టాలు","ఎన్నికల సంస్కరణలు","ఓటింగ్ ప్రవర్తన","సంకీర్ణ ప్రభుత్వం","వ్యతిరేక - ఫిరాయింపు చట్టం","ప్రెజర్ గ్రూపులు","జాతీయ సమైక్యత","విదేశీ విధానం","రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్","LANDMARK తీర్పు మరియు వాటి ప్రభావాలు","రాజ్యాంగ వివరణ యొక్క ముఖ్యమైన సిద్ధాంతాలు","ప్రపంచ రాజ్యాంగం",],

            ),
            SubjectTile(
              subject: 'ఆర్థిక వ్యవస్థ',
              subTopics: ["భారతీయ ఆర్థిక వ్యవస్థ యొక్క 5 సంవత్సరాల ప్రణాళిక","జాతీయ ఆదాయం"],
            ),
          ],
        ),
      ),
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
//పబ్లిక్ ఇంటరెస్ట్ లిటిగేషన్ గవర్నర్
  void navigateToPage(BuildContext context, String subTopic) {
    switch (subTopic) {
      case "గవర్నర్":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => governor_te()),
        );
        break;
      case "పబ్లిక్ ఇంటరెస్ట్ లిటిగేషన్":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => publicInterestLitigation_te()),
        );
        break;
      case "న్యాయపరమైన కార్యాచరణ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => judicialActivism_te()),
        );
        break;
      case "న్యాయ సమీక్ష":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => judicialReview_te()),
        );
        break;
      case "సుప్రీం కోర్ట్":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => supremeCourt_te()),
        );
        break;
      case "పార్లమెంటరీ కమిటీ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentary_committie_te()),
        );
        break;
      case "పార్లమెంట్":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parliment_te()),
        );
        break;
      case "మంత్రి మండలి":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => counicilofministers_te()),
        );
        break;
      case "ప్రధాన మంత్రి":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => primeminister_te()),
        );
        break;
      case "అత్యవసర నిబంధనలు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentarySystem_te()),
        );
        break;

      case "అంతర్-రాష్ట్ర సంబంధాలు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => interStateRelations_te()),
        );
        break;
      case "కేంద్ర మరియు రాష్ట్ర సంబంధాలు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => centreStateRelations()),
        );
        break;
      case "సమాఖ్య వ్యవస్థ":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => federalSystem_te()),
        );
        break;
      case "ప్రాథమిక విధులు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fundamentalDuties_te()),
        );
        break;
      case "ఆదేశిక సూత్రాలు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => directivePriciplesOfTheState_te()),
        );
        break;
      case "ప్రాథమిక హక్కులు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fundamentalRights_te()),
        );
        break;
      case "పౌరసత్వం":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => citizenship_te()),
        );
        break;
      case "రాజ్యాంగ ప్రవేశిక":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => preambleOfTheConstitution_te()),
        );
        break;
      case "రాజ్యాంగం యొక్క ముఖ్య లక్షణాలు":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sfoc_te()),
        );
        break;
      case '"రాజ్యాంగం యొక్క భావన"':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => coc_te()),
        );
        break;
      case 'యూనియన్ అండ్ ఇట్స్ టెరిటరీ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => uit_te()),
        );
        break;
      case 'రాజ్యాంగం యొక్క చారిత్రక నేపథ్యం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => hbg_te()),
        );
        break;
      case 'రాజ్యాంగాన్ని తయారు చేయడం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => moc_te()),
        );
        break;
      case 'ప్రపంచ రాజ్యాంగం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => wcstrctn_te()),
        );
        break;
      case 'రాజ్యాంగ వివరణ యొక్క ముఖ్యమైన సిద్ధాంతాలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => idci()),
        );
        break;
      case 'LANDMARK తీర్పు మరియు వాటి ప్రభావాలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ljti_te()),
        );
        break;
      case 'రాజ్యాంగం యొక్క పనిని సమీక్షించడానికి జాతీయ కమిషన్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ncrwc_te()),
        );
        break;
      case 'విదేశీ విధానం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fpcy_te()),
        );
        break;
      case 'జాతీయ సమైక్యత':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nintgn_te()),
        );
        break;
      case 'ప్రెజర్ గ్రూపులు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pgrps_te()),
        );
        break;
      case 'వ్యతిరేక - ఫిరాయింపు చట్టం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => adl_te()),
        );
        break;
      case 'సంకీర్ణ ప్రభుత్వం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cgvnt_te()),
        );
        break;
      case 'ఓటింగ్ ప్రవర్తన':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => vbr_te()),
        );
        break;
      case 'ఎన్నికల సంస్కరణలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => erfrms_te()),
        );
        break;
      case 'ఎన్నికల చట్టాలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => electionslaw_te()),
        );
        break;
      case 'ఎన్నికలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => elections_te()),
        );
        break;
      case 'ప్రాంతీయ పార్టీల పాత్ర':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rrp_te()),
        );
        break;
      case 'రాజకీయ పార్టీలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ppart_te()),
        );
        break;
      case 'కొన్ని రాష్ట్రాలకు ప్రత్యేక నిబంధన':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => spss_te()),
        );
        break;
      case 'కొన్ని తరగతులకు సంబంధించిన ప్రత్యేక నిబంధన':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sprcc_te()),
        );
        break;
      case '్రభుత్వ హక్కులు మరియు బాధ్యతలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => rlg_te()),
        );
        break;
      case 'పబ్లిక్ సర్వీసెస్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pserv_te()),
        );
        break;
      case 'అధికారిక భాష':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => language_te()),
        );
        break;
      case 'డీలిమిటేషన్ కమిషన్ ఆఫ్ ఇండియా':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => dloc_te()),
        );
        break;
      case 'భారతదేశ లా కమిషన్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => lci_te()),
        );
        break;
      case 'బార్ కౌన్సిల్ ఆఫ్ ఇండియా':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => bci_te()),
        );
        break;
      case 'నేషనల్ డిజాస్టర్ మేనేజ్‌మెంట్ అథారిటీ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ndm_te()),
        );
        break;
      case 'నేషనల్ ఇన్వెస్టిగేషన్ ఏజెన్సీ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nia_te()),
        );
        break;
      case 'లోక్‌పాల్ మరియు లోకాయుక్త':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => lp_ly_te()),
        );
        break;
      case 'సెంట్రల్ బ్యూరో ఆఫ్ ఇన్వెస్టిగేషన్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cbi_te()),
        );
        break;
      case 'రాష్ట్ర సమాచార కమిషన్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sic_te()),
        );
        break;
      case 'సెంట్రల్ ఇన్ఫర్మేషన్ కమిషన్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cic_te()),
        );
        break;
      case 'జాతీయ ఆదాయం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => national_income_te()),
        );
        break;
      case 'వైస్ ప్రెసిడెంట్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => vicepresident_te()),
        );
        break;
      case 'ప్రాచీన భారత చరిత్ర 1':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_1_te()),
        );
        break;
      case 'ప్రాచీన భారత చరిత్ర 2':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_2_te()),
        );

        break;
      case 'ప్రాచీన భారత చరిత్ర 3':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_3_te()),
        );
        break;
      case 'ప్రాచీన భారత చరిత్ర 4':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_4_te()),
        );
        break;
      case 'ప్రాచీన భారత చరిత్ర 5':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_5_te()),
        );

        break;
      case 'ప్రాచీన భారత చరిత్ర 6':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ancientHistory_6_te()),
        );
        break;
      case 'రాజ్యాంగ సవరణ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => amendement11_te()),
        );
        break;
      case 'రాజ్యాంగం యొక్క ప్రాథమిక నిర్మాణం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => basicstructure12_te()),
        );
        break;
      case 'పార్లమెంటరీ వ్యవస్థ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parlimentary_te()),
        );
        break;
      case 'విశ్వం మరియు సౌర వ్యవస్థ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => universe_solar_system_te()),
        );
        break;
      case 'వ్యవసాయం':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => agriculture_te()),
        );
        break;
      case 'నేలలు':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => soils_te()),
        );
        break;
      case 'ప్రెసిడెంట్':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => president_te()),
        );
        break;
      case 'భారతీయ ఆర్థిక వ్యవస్థ యొక్క 5 సంవత్సరాల ప్రణాళిక':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => plans_indian_economy_te()),
        );
        break;
    // భారతీయ ఆర్థిక వ్యవస్థ యొక్క 5 సంవత్సరాల ప్రణాళిక
    }
  }
}

import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() {
  runApp(important_articleswithschedules());
}

class important_articleswithschedules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Important Articles of the Indian Constitution',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Important Articles of the Indian Constitution'),
        ),

        body: ListView( // Wrap the Column with a ListView
            children: [
            MyBannerAdWidget(), // Add the banner ad here SingleChildScrollView(
          DataTable(
            dataRowHeight: 130.0, // Adjust this value as needed
            decoration: BoxDecoration(color: Colors.white70),border: TableBorder.all(color: Colors.green),
            columns: [
              DataColumn(label: Text('part')),
              DataColumn(label: Text('article')),
             // DataColumn(label: Text('name')),
            ],
            rows: [
              for (var i = 0; i < data.length; i++) // Changed condition to i < data.length
                DataRow(
                  cells: [
                    DataCell(Text(data[i][0])),
                    DataCell(Text(data[i][1])),
                    //DataCell(Text(data[i][2])),
                  ],
                ),
            ],
          ),
        ]),
      ),
    );
  }
}

final List<List<String>> data = [

  ['Part I The Union And Its Territories', 'Article 1 - Name and territory of the union.'],
  ['Part I The Union And Its Territories', 'Article 3 - Formation of new states and alteration of areas, boundaries, and names of existing states.'],
  ['Part II Citizenship', 'Article 10 ', '  Continuance of the rights of citizenship'],



// ['Part I The Union And Its Territories', 'Article 1 ', 'Name and territory of the union.'],
  // ['Part I: The Union And Its Territories', 'Article 3 - Formation of new states and alteration of areas, boundaries, and names of existing states.'],
  // ['Part II: Citizenship', 'Article 10 - Continuance of the rights of citizenship'],
  ['Part II: Citizenship', 'Article 11 - Parliament to regulate the right of citizenship by law'],
  ['Part III: Fundamental Rights', 'Article 13 - Laws inconsistent with or in derogation of the fundamental rights'],
  ['Part III: Fundamental Rights', 'Article 14 - Equality before law'],
  ['Part III: Fundamental Rights', 'Article 15 - Prohibition of discrimination on the grounds of religion, race, caste, sex, or place of birth'],
  ['Part III: Fundamental Rights', 'Article 16 - Equality of opportunity in matters of public employment'],
  ['Part III: Fundamental Rights', 'Article 17 - Abolition of the untouchability'],
  ['Part III: Fundamental Rights', 'Article 18 - Abolition of titles'],
  ['Part III: Fundamental Rights', 'Article 19 - Protection of certain rights regarding freedom of speech etc'],
  ['Part III: Fundamental Rights', 'Article 19 (1)(a) - Freedom of speech and expression'],
  ['Part III: Fundamental Rights', 'Article 19 (1)(b) - Freedom to assemble peaceably and without arms'],
  ['Part III: Fundamental Rights', 'Article 19 (1)(c) - Freedom to form associations or unions'],
  ['Part III: Fundamental Rights', 'Article 19 (1)(d) - Freedom to move freely throughout the territory of India'],
  ['Part III: Fundamental Rights', 'Article 19 (1)(e) - Freedom to reside and settle in any part of the territory of India'],
  ['Part III: Fundamental Rights', 'Article 19 (1)(g) - Freedom to practice any profession or to carry on any occupation, trade, or business.'],
  ['Part III: Fundamental Rights', 'Article 21 - Protection of life and personal liberty'],
  ['Part III: Fundamental Rights', 'Article 21A - Right to elementary education'],
  ['Part III: Fundamental Rights', 'Article 23 - Prohibition of traffic in human beings and forced labour'],
  ['Part III: Fundamental Rights', 'Article 24 - Prohibition of employment of children in factories, etc.'],
  ['Part III: Fundamental Rights', 'Article 25 - Freedom of conscience and free profession, practice, and propagation of religion.'],
  ['Part III: Fundamental Rights', 'Article 29 - Protection of the interest of minorities'],
  ['Part III: Fundamental Rights', 'Article 30 - Right of minorities to establish and administer educational institutions'],
  ['Part III: Fundamental Rights', 'Article 32 - Remedies for enforcement of Fundamental Rights, including writs'],
  ['Part IV: Directive Principles', 'Article 38 - State to secure a social order for the promotion of the welfare of the people.'],
  ['Part IV: Directive Principles', 'Article 39A - Equal Justice and free legal aid'],
  ['Part IV: Directive Principles', 'Article 40 - Organisation of village panchayats'],
  ['Part IV: Directive Principles', 'Article 44 - Uniform Civil Code for the citizens'],
  ['Part IV: Directive Principles', 'Article 45 - Provision for early childhood care and education to children below the age of six years.'],
  ['Part IV: Directive Principles', 'Article 46 - Promotion of educational and economic interests of scheduled castes, scheduled tribes, and other weaker sections.'],
  ['Part IV: Directive Principles', 'Article 50 - Separation of the judiciary from the executive'],
  ['Part IV: Directive Principles', 'Article 51 - Promotion of International peace and security'],
  ['Part IV A: Fundamental Duties', 'Article 51A - Fundamental Duties'],
  ['Part V: The Union', 'Article 72 - Power of the President to grant pardons, etc., and to suspend, remit, or commute sentences in certain cases'],
  ['Part V: The Union', 'Article 74 - Council of ministers to aid and advice President'],
  ['Part V: The Union', 'Article 76 - Attorney-General For India'],
  ['Part V: The Union', 'Article 78 - Duties of the Prime Minister with respect to the furnishing of information to the President, etc.'],
  ['Part V: The Union', 'Article 85 - Sessions of Parliament, prorogation, and dissolution'],
  ['Part V: The Union', 'Article 100 - Voting in Houses, power of Houses to act notwithstanding vacancies and quorum'],
  ['Part V: The Union', 'Article 108 - Joint sitting of both the Houses in certain cases'],
  ['Part V: The Union', 'Article 109 - Special procedure in respect of Money bills'],
  ['Part V: The Union', 'Article 110 - Definition of Money bills'],
  ['Part V: The Union', 'Article 112 - Annual financial statement'],
  ['Part V: The Union', 'Article 123 - Power of President to promulgate Ordinances during the recess of Parliament'],
  ['Part V: The Union', 'Article 139 - Conferment on the Supreme Court of powers to issue certain Writs'],
  ['Part V: The Union', 'Article 141 - Law declared by the Supreme Court to be binding on all courts'],
  ['Part V: The Union', 'Article 143 - Power of President to consult the Supreme Court'],
  ['Part V: The Union', 'Article 148 - Comptroller and Auditor General of India'],
  ['Part V: The Union', 'Article 149 - Duties and powers of the Comptroller and Auditor General'],
  ['Part VI: The States', 'Article 155 - Appointment of Governor'],
  ['Part VI: The States', 'Article 161 - Power of Governor to grant pardons, etc., and to suspend, remit or commute sentences in certain cases'],
  ['Part VI: The States', 'Article 163 - Council of Ministers to aid and advice the Governor'],
  ['Part VI: The States', 'Article 167 - Duties of the Chief Minister with respect to the furnishing of information to the Governor, etc.'],
  ['Part VI: The States', 'Article 169 - Abolition or creation of Legislative Councils in States'],
  ['Part VI: The States', 'Article 198 - Special Procedure in respect of money bills'],
  ['Part VI: The States', 'Article 201 - Bills reserved for the consideration of the President'],
  ['Part VI: The States', 'Article 202 - Annual Financial Statement (State)'],
  ['Part VI: The States', 'Article 224 - Appointment of additional and acting judges'],
  ['Part VI: The States', 'Article 224A - Appointment of retired judges at sittings of High Court'],
  ['Part VI: The States', 'Article 226 - Power of the High Court to issue certain writs'],
  ['Part VIII: Union Territories', 'Article 239 - Administration of Union Territories'],
  ['Part IX: Panchayats', 'Article 243B - Constitution of Panchayats'],
  ['Part IX: Panchayats', 'Article 243G - Powers, authority, and responsibilities of Panchayats'],
  ['Part XI: Centre-State Relations', 'Article 249 - Power of the Parliament to legislate with respect to a matter in the State List in the national interest'],
  ['Part XI: Centre-State Relations', 'Article 257 - Control of the Union over the State in certain cases'],
  ['Part XI: Centre-State Relations', 'Article 262 - Adjudication of disputes relating to waters of inter-state rivers or river-valleys'],
  ['Part XII: Finance, Property, Contracts, and Suits', 'Article 266 - Consolidated Funds and Public Accounts of India and of the States'],
  ['Part XII: Finance, Property, Contracts, and Suits', 'Article 267 - Contingency Fund'],
  ['Part XII: Finance, Property, Contracts, and Suits', 'Article 275 - Grants from the Union to certain States'],
  ['Part XII: Finance, Property, Contracts, and Suits', 'Article 280 - Finance Commission'],
  ['Part XII: Finance, Property, Contracts, and Suits', 'Article 300A - Persons not to be deprived of property save by authority of law'],
  ['Part XIV: Services under the Union and the States', 'Article 312 - All-India Services'],
  ['Part XIV: Services under the Union and the States', 'Article 315 - Public Service Commission for the Union and for the States'],
  ['Part XV: Elections', 'Article 324 - Superintendence, direction, and control of elections to be vested in an Election Commission'],
  ['Part XVI: Special Provisions Relating to Certain Classes', 'Article 335 - Claims of Scheduled Castes and Scheduled Tribes to services and posts'],
  ['Part XVI: Special Provisions Relating to Certain Classes', 'Article 338 - National Commission for Scheduled Castes'],
  ['Part XVI: Special Provisions Relating to Certain Classes', 'Article 338A - National Commission for Scheduled Tribes'],
  ['Part XVI: Special Provisions Relating to Certain Classes', 'Article 340 - Appointment of a commission to investigate the conditions of backward classes'],
  ['Part XVII: Official Languages', 'Article 343 - Official Language of the Union'],
  ['Part XVIII: Emergency Provisions', 'Article 352 - Proclamation of Emergency (National Emergency)'],
  ['Part XVIII: Emergency Provisions', 'Article 356 - Provisions in case of the failure of Constitutional machinery in States (President’s rule)'],
  ['Part XVIII: Emergency Provisions', 'Article 360 - Provisions as to Financial Emergency'],
  ['Part XIX: Miscellaneous', 'Article 352 - Proclamation of Emergency (National Emergency)'],
  ['Part XIX: Miscellaneous', 'Article 356 - Provisions in case of the failure of Constitutional machinery in States (President’s rule)'],
  ['Part XIX: Miscellaneous', 'Article 360 - Provisions as to Financial Emergency'],
  ['Part XIX: Miscellaneous', 'Article 365 - Effect of failure to comply with, or to give effect to directions given by the Union (President’s rule)'],
  ['Part XX: Amendment of the Constitution', 'Article 368 - Power of Parliament to amend the Constitution and procedure thereof'],
  ['Part XXI: Special, Transitional, and Temporary Provisions', 'Article 370 - Special provision of J&K.'],
  ['Part XXI: Special, Transitional, and Temporary Provisions', 'Article 371A - Special provision with respect to the State of Nagaland'],
  ['Part XXI: Special, Transitional, and Temporary Provisions', 'Article 371-J - Special Status for Hyderabad-Karnataka region'],
  ['Part XXII: Short Text, Commencement, Authoritative Text in Hindi and Repeals', 'Article 393 - Short title - This Constitution may be called the Constitution of India.'],



];

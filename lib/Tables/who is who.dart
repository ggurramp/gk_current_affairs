import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() {
  runApp(who_is_who());
}

class who_is_who extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Who Is Who',
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
          title: Text('Who Is Who'),
        ),
        body: ListView( // Wrap the Column with a ListView
          children: [
            MyBannerAdWidget(), // Add the banner ad here
            SingleChildScrollView(
              child: DataTable(
                dataRowHeight: 80.0,
                decoration: BoxDecoration(color: Colors.white70),
                border: TableBorder.all(color: Colors.green),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Role')),
                ],
                rows: [
                  for (var i = 0; i < data.length; i++)
                    DataRow(
                      cells: [
                        DataCell(Text(data[i][0])),
                        DataCell(Text(data[i][1])),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


final List<List<String>> data = [


    ['President', 'Smt. Droupadi Murmu'],
    ['Vice-President', 'Shri Jagdeep Dhankhar'],
    ['Prime Minister', 'Shri Narendra Modi'],
    ['Chief of Defence Staff', 'General, Anil Chauhan'],
    ['The Chief Justice of India', 'Hon\'ble Dr. Justice D.Y. Chandrachud'],

['Chairman of the Rajya Sabha', 'Jagdeep Dhankhar (Vice President)'],

['Lok Sabha Speaker', 'Om Birla'],
['Leader of the Lok Sabha', 'Narendra Modi'],
['Leader of the Rajya Sabha', 'Shri Piyush Goyal'],
['Pro tem Speaker', 'Virendra Kumar Khatik'],
['Chief Election Commissioner', 'Rajiv Kumar'],
['Comptroller and Auditor General of India (CAG)', 'Girish Chandra Murmu'],
['Attorney General of India', 'R. Venkataramani'],
['Cabinet Secretary of India', 'Rajiv Gauba'],
['Principal Secretary to the Prime Minister', 'Pramod Kumar Misra'],
['National Security Advisor', 'Ajit Doval'],
['Home Secretary', 'Ajay Kumar Bhalla'],
['Finance Secretary', 'T. V Somanathan'],
['Defence Secretary', 'Ajay Kumar'],
['Foreign Secretary', 'Vinay Mohan Kwatra'],
['Revenue Secretary', 'Tarun Bajaj'],
['Solicitor General of India', 'Tushar Mehta'],
['Principal Scientific Adviser', 'Ajay Kumar Sood'],
['Chief Economic Advisor', 'Dr. V. Anantha Nageswaran'],
['Vice-chairperson NITI Aayog', 'Suman Bery'],
['Governor, Reserve Bank of India', 'Shaktikanta Das'],
['Central Vigilance Commissioner', 'Suresh N. Patel'],
['Chief Information Commissioner', 'Yashvardhan Kumar Sinha'],
['UN Ambassador (Permanent Representative)', 'Ruchira Kamboj'],
['Director, RAW', 'Samant Goel'],
['Director of the Intelligence Bureau (IB)', 'Tapan Deka'],
['Director, CBI', 'Subodh Jaiswal'],
['Director-General, NIA', 'Dinkar Gupta'],
['Director-General, National Security Guard', 'M.A. Ganapathy'],
['Chairman, ISRO', 'S. Somanath'],
['Chairman, SEBI', 'Madhabi Puri Buch'],
['Chairperson, Atomic Energy Commission', 'K N Vyas'],
['Chairman, National Commission for Minorities', 'Iqbal Singh Lalpura'],
['Chairman, National Commission for Scheduled Castes', 'Vijay Sampla'],
['Chairperson, National Commission for Women', 'Rekha Sharma'],
['Chairman, National Commission for Backward Classes', 'Bhagwan Lal Sahni'],
['Chairman, Telecom Regulatory Authority of India', 'P D Vaghela'],
['Chairman, 15th Finance Commission of India', 'N K Singh'],
['Chief of the Army Staff', 'General Manoj Pande'],
['Chief of the Naval Staff', 'Admiral R. Hari Kumar'],
['Chief of the Air Staff', 'Air Chief Marshal VR Chaudhari'],




];

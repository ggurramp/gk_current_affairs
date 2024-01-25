import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() {
  runApp(governors());
}

class governors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Governors',
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
          title: Text("Governors Of States & UT's"),
        ),

        body: ListView( // Wrap the Column with a ListView
            children: [
            MyBannerAdWidget(), // Add the banner ad here SingleChildScrollView(
           DataTable(
             dataRowHeight: 80.0,
            decoration: BoxDecoration(color: Colors.white70),border: TableBorder.all(color: Colors.black87),
            columns: [
              DataColumn(label: Text('State')),
              DataColumn(label: Text("Governors & UT's")),
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
        ]),
      ),
    );
  }
}

final List<List<String>> data = [

    ['Andaman and Nicobar Island (UT)', 'Admiral D K Joshi (Lieutenant Governor)'],
    ['Chandigarh (UT)', 'Shri Banwarilal Purohit (Administrator)'],
    ['Dadra and Nagar Haveli and Daman and Diu (UT)', 'Shri Praful Patel (Administrator)'],
    ['Delhi (NCT)', 'Shri Vinai Kumar Saxena (Lieutenant Governor)'],
    ['Jammu and Kashmir (UT)', 'Shri Manoj Sinha (Lieutenant Governor)'],
    ['Lakshadweep (UT)', 'Shri Praful Patel (Administrator)'],
    ['Puducherry (UT)', 'Dr. Tamilisai Soundararajan (Addl. Charge) (Lieutenant Governor)'],
    ['Ladakh (UT)', 'Brig. (Dr.) Shri B.D. Mishra (Retd.) (Lieutenant Governor)'],


  ['Andhra Pradesh', 'Shri Justice (Retd.) S. Abdul Nazeer'],
  ['Arunachal Pradesh', 'Lt. General Kaiwalya Trivikram Parnaik, PVSM, UYSM, YSM (Retired)'],
  ['Assam', 'Shri Gulab Chand Kataria'],
  ['Bihar', 'Shri Rajendra Vishwanath Arlekar'],
  ['Chhattisgarh', 'Shri Biswa Bhusan Harichandan'],
  ['Goa', 'Shri P.S. Sreedharan Pillai'],
  ['Gujarat', 'Shri Acharya Dev Vrat'],
  ['Haryana', 'Shri Bandaru Dattatraya'],
  ['Himachal Pradesh', 'Shri Shiv Pratap Shukla'],
  ['Jharkhand', 'Shri C.P. Radhakrishnan'],
  ['Karnataka', 'Shri Thaawarchand Gehlot'],
  ['Kerala', 'Shri Arif Mohammed Khan'],
  ['Madhya Pradesh', 'Shri Mangubhai Chhaganbhai Patel'],
  ['Maharashtra', 'Shri Ramesh Bais'],
  ['Manipur', 'Sushri Anusuiya Uikye'],
  ['Meghalaya', 'Shri Phagu Chauhan'],
  ['Mizoram', 'Dr. Kambhampati Haribabu'],
  ['Nagaland', 'Shri La. Ganesan'],
  ['Odisha', 'Shri Raghubar Das'],
  ['Punjab', 'Shri Banwarilal Purohit'],
  ['Rajasthan', 'Shri Kalraj Mishra'],
  ['Sikkim', 'Shri Lakshman Prasad Acharya'],
  ['Tamil Nadu', 'Shri R. N. Ravi'],
  ['Telangana', 'Dr. Tamilisai Soundararajan'],
  ['Tripura', 'Shri Indra Sena Reddy Nallu'],
  ['Uttar Pradesh', 'Smt. Anandiben Patel'],
  ['Uttarakhand', 'Lt. Gen. Gurmit Singh, PVSM, UYSM, AVSM, VSM (Retd.)'],
  ['West Bengal', 'Dr. C.V. Ananda Bose'],
];

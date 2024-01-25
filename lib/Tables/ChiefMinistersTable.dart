import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() {
  runApp(cm());
}

class cm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indian Chief Ministers',
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
          title: Text('Indian Chief Ministers'),
        ),

        body: ListView( // Wrap the Column with a ListView
            children: [
            MyBannerAdWidget(), // Add the banner ad here SingleChildScrollView(
           DataTable(
            decoration: BoxDecoration(color: Colors.white70),border: TableBorder.all(color: Colors.black87),
            columns: [
              DataColumn(label: Text('State')),
              DataColumn(label: Text('Chief Minister')),
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
  ['Andhra Pradesh', 'Shri YS Jagan Mohan Reddy'],
  ['Arunachal Pradesh', 'Shri Pema Khandu'],
  ['Assam', 'Shri Himanta Biswa Sarma'],
  ['Bihar', 'Shri Nitish Kumar'],
  ['Chhattisgarh', 'Shri Bhupesh Baghel'],
  ['Delhi (NCT)', 'Shri Arvind Kejriwal'],
  ['Goa', 'Shri Pramod Sawant'],
  ['Gujarat', 'Shri Bhupendra Patel'],
  ['Haryana', 'Shri Manohar Lal'],
  ['Himachal Pradesh', 'Shri Sukhvinder Singh Sukhu'],
  ['Jharkhand', 'Shri Hemant Soren'],
  ['Karnataka', 'Shri Siddaramaiah'],
  ['Kerala', 'Shri Pinarayi Vijayan'],
  ['Madhya Pradesh', 'Shri Shivraj Singh Chouhan'],
  ['Maharashtra', 'Shri Eknath Shinde'],
  ['Manipur', 'Shri N. Biren Singh'],
  ['Meghalaya', 'Shri Conrad Kongkal Sangma'],
  ['Mizoram', 'Shri Pu Zoramthanga'],
  ['Nagaland', 'Shri Neiphiu Rio'],
  ['Odisha', 'Shri Naveen Patnaik'],
  ['Puducherry (UT)', 'Shri N. Rangaswamy'],
  ['Punjab', 'Shri Bhagwant Singh Mann'],
  ['Rajasthan', 'Shri Ashok Gehlot'],
  ['Sikkim', 'Shri PS Golay'],
  ['Tamil Nadu', 'Shri M. K. Stalin'],
  ['Telangana', 'Shri Revanth reddy'],
  ['Tripura', 'Dr. Manik Saha'],
  ['Uttar Pradesh', 'Shri Yogi Aditya Nath'],
  ['Uttarakhand', 'Shri Pushkar Singh Dhami'],
  ['West Bengal', 'Km. Mamata Banerjee'],
];

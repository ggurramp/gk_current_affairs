import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';
import 'package:flutter_tts/flutter_tts.dart';
class cm extends StatefulWidget {
  @override
  _CmState createState() => _CmState();
}
class _CmState extends State<cm> {
  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

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
          actions: [
            IconButton(
              icon: Icon(isSpeaking ? Icons.volume_up : Icons.volume_off),
              onPressed: () {
                toggleSpeaking();
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            MyBannerAdWidget(),
            DataTable(
              decoration: BoxDecoration(color: Colors.white70),
              border: TableBorder.all(color: Colors.black87),
              columns: [
                DataColumn(label: Text('State')),
                DataColumn(label: Text('Chief Minister')),
              ],
              rows: [
                for (var i = 0; i < data.length; i++)
                  DataRow(
                    cells: [
                      DataCell(Text(data[i][0])),
                      DataCell(
                        TextButton(
                          onPressed: () {
                            speakText(data[i][1]);
                          },
                          child: Text(data[i][1]),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> speakText(String text) async {
    await flutterTts.speak(text);
  }

  void toggleSpeaking() {
    setState(() {
      isSpeaking = !isSpeaking;
      if (isSpeaking) {
        // Concatenate both State names and Chief Ministers' names
        String allText = data.map((item) => '${item[0]}. ${item[1]}').join('. '); // Adjust separator as needed
        speakText(allText);
      } else {
        // Stop speaking
        flutterTts.stop();
      }
    });
  }


}

final List<List<String>> data = [
  ['padyamu','''అల్పుడెపుడు బల్కు నాడంబరముగాను
  సజ్జనుండు పలుకు చల్లగాను
  కంచుమ్రోగినట్లు కనకంబుమ్రోగునా
  విశ్వదాభిరామ వినురవేమ!'''],
  ['ఆంధ్ర ప్రదేశ్', 'Shri YS Jagan Mohan Reddy'],
  ['Arunachal Pradesh', 'Shri Pema Khandu'],
  ['Assam', 'Shri Himanta Biswa Sarma'],
  ['Bihar', 'Shri Nitish Kumar'],
  ['Chhattisgarh', 'Shri Vishnu Deo Sai'],
  ['Delhi (NCT)', 'Shri Arvind Kejriwal'],
  ['Goa', 'Shri Pramod Sawant'],
  ['Gujarat', 'Shri Bhupendra Patel'],
  ['Haryana', 'Shri Manohar Lal'],
  ['Himachal Pradesh', 'Shri Sukhvinder Singh Sukhu'],
  ['Jharkhand', 'Shri Champai Soren'],
  ['Karnataka', 'Shri Siddaramaiah'],
  ['Kerala', 'Shri Pinarayi Vijayan'],
  ['Madhya Pradesh', 'Shri Mohan Yadav'],
  ['Maharashtra', 'Shri Eknath Shinde'],
  ['Manipur', 'Shri N. Biren Singh'],
  ['Meghalaya', 'Shri Conrad Kongkal Sangma'],
  ['Mizoram', 'Shri Pu Zoramthanga'],
  ['Nagaland', 'Shri PU Lalduhoma'],
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

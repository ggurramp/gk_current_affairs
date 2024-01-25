import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() {
  runApp(parks_speciality());
}

class parks_speciality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parks & Speciality',
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
          title: Text('Parks & Speciality'),
        ),

        body: ListView( // Wrap the Column with a ListView
            children: [
              MyBannerAdWidget(), // Add the banner ad here SingleChildScrollView(
              DataTable(
                dataRowHeight: 80.0, // Adjust this value as needed
                decoration: BoxDecoration(color: Colors.white70),border: TableBorder.all(color: Colors.green),
                columns: [
                  DataColumn(label: Text('Park Name')),
                  DataColumn(label: Text('State')),
                  DataColumn(label: Text('Speciality')),
                ],
                rows: [
                  for (var i = 0; i < data.length; i++)
                    DataRow(
                      cells: [
                        DataCell(Text(data[i][0])),
                        DataCell(Text(data[i][1])),
                        DataCell(Text(data[i][2])),
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


  ['Jim Corbett National Park', 'Uttarakhand', 'Tiger'],
  ['Kaziranga National Park', 'Assam', 'One-horned rhinoceros'],
  ['Gir Forest National Park', 'Gujarat', 'Asiatic lion'],
  ['Sundarban National Park', 'West Bengal', 'Royal Bengal tiger'],
  ['Satpura National Park', 'Madhya Pradesh', 'Tiger, leopard, sloth bear'],
  ['Eravikulam National Park', 'Kerala', 'Nilgiri tahr'],
  ['Pench National Park', 'Madhya Pradesh', 'Tiger, leopard, sloth bear'],
  ['Sariska National Park', 'Rajasthan', 'Tiger'],
  ['Kanha National Park', 'Madhya Pradesh', 'Barasingha (swamp deer)'],
  ['Ranthambore National Park', 'Rajasthan', 'Tiger'],
  ['Bandhavgarh Tiger Reserve', 'Madhya Pradesh', 'Tiger'],
  ['Bandipur National Park', 'Karnataka', 'Tiger'],
  ['Nagarhole National Park', 'Karnataka', 'Tiger'],
  ['Periyar National Park', 'Kerala', 'Elephant'],
  ['Manas National Park', 'Assam', 'Hoolock gibbon'],
  ['The Great Himalayan National Park', 'Himachal Pradesh', 'Snow leopard'],
  ['Sanjay Gandhi National Park', 'Maharashtra', 'Tiger, leopard'],
  ['Rajaji National Park', 'Uttarakhand', 'Tiger, leopard'],
  ['Silent Valley National Park', 'Kerala', 'Lion-tailed macaque'],
  ['Dudhwa National Park', 'Uttar Pradesh', 'Tiger, rhinoceros'],
  ['Panna National Park', 'Madhya Pradesh', 'Wild ass'],
  ['Van Vihar National Park', 'Madhya Pradesh', 'Leopard'],
  ['Bharatpur National Park', 'Rajasthan', 'Siberian crane'],
  ['Bannerghatta National Park', 'Karnataka', 'Vulture'],
  ['Wandoor Marine National Park', 'Andaman And Nicobar Islands', 'Marine life'],
  ['Nameri National Park', 'Assam', 'Tiger, elephant'],
  ['Mudumalai National Park', 'Tamil Nadu', 'Grizzled giant squirrel'],
  ['Jaldapara National Park', 'West Bengal', 'Rhino'],
  ['Pin Valley National Park', 'Himachal Pradesh', 'Snow leopard'],
  ['Orang National Park', 'Assam', 'Golden langur'],
  ['Gorumara National Park', 'West Bengal', 'Elephant'],
  ['Simlipal National Park', 'Odisha', 'Tiger, elephant'],
  ['Desert National Park', 'Rajasthan', 'Great Indian bustard'],
  ['Dachigam National Park', 'Jammu And Kashmir', 'Hangul (Kashmir stag)'],
  ['Mrugavani National Park', 'Telangana', 'Tiger'],
  ['Hemis National Park', 'Jammu And Kashmir', 'Snow leopard'],
  ['Namdapha National Park', 'Arunachal Pradesh', 'Tiger, red panda, hornbill'],
  ['Khangchendzonga National Park', 'Sikkim', 'Red panda'],
  ['Inderkilla National Park', 'Himachal Pradesh', 'Snow leopard'],
  ['Mount Harriet National Park', 'Andaman And Nicobar Islands', 'Narcondam hornbill'],
  ['Anshi National Park', 'Karnataka', 'Bear'],
  ['Kishtwar National Park', 'Jammu And Kashmir', 'Snow leopard, musk deer'],
  ['Keibul Lamjao National Park', 'Manipur', 'Sangai (brow-antlered deer)'],
  ['Blackbuck National Park', 'Gujarat', 'Blackbuck'],
  ['Kuno National Park', 'Madhya Pradesh', 'Asiatic lion'],
  ['Gangotri National Park', 'Uttarakhand', 'Snow leopard, musk deer, bharal'],
  ['Nanda Devi And Valley Of Flowers National Park', 'Uttarakhand', 'Snow leopard, musk deer, bharal'],
  ['Papikonda National Park', 'Andhra Pradesh', 'Tiger'],
  ['Valmiki National Park', 'Bihar', 'Tiger'],
  ['Betla National Park', 'Jharkhand', 'Tiger, leopard'],
  ['Keoladeo National Park Bharatpur', 'Rajasthan', 'Bird sanctuary'],


];

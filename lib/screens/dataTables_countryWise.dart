import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedalTableScreen(),
    );
  }
}

class MedalTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('2022 Asian Games Medal Table')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Rank')),
              DataColumn(label: Text('Nation')),
              DataColumn(label: Text('Gold')),
              DataColumn(label: Text('Silver')),
              DataColumn(label: Text('Bronze')),
              DataColumn(label: Text('Total')),
            ],
            rows: List<DataRow>.generate(
              medalData.length,
                  (index) => DataRow(
                cells: <DataCell>[
                  DataCell(Text('${index + 1}')),
                  DataCell(Text('${medalData[index].country}')),
                  DataCell(Text('${medalData[index].gold}')),
                  DataCell(Text('${medalData[index].silver}')),
                  DataCell(Text('${medalData[index].bronze}')),
                  DataCell(Text('${medalData[index].total}')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CountryMedalData {
  final String country;
  final int gold;
  final int silver;
  final int bronze;
  int get total => gold + silver + bronze;

  CountryMedalData(this.country, this.gold, this.silver, this.bronze);
}

final List<CountryMedalData> medalData = [
  CountryMedalData('China', 201, 111, 71),
  CountryMedalData('Japan', 52, 67, 69),
  CountryMedalData('South Korea', 42, 59, 89),
  CountryMedalData('India', 28, 38, 41),
  CountryMedalData('Uzbekistan', 22, 18, 31),
  CountryMedalData('Chinese Taipei', 19, 20, 28),
  CountryMedalData('Iran', 13, 21, 20),
  CountryMedalData('Thailand', 12, 14, 32),
  CountryMedalData('Bahrain', 12, 3, 5),
  CountryMedalData('North Korea', 11, 18, 10),
  CountryMedalData('Kazakhstan', 10, 22, 48),
  CountryMedalData('Hong Kong', 8, 16, 29),
  CountryMedalData('Indonesia', 7, 11, 18),
  CountryMedalData('Malaysia', 6, 8, 18),
  CountryMedalData('Qatar', 5, 6, 3),
  CountryMedalData('United Arab Emirates', 5, 5, 10),
  CountryMedalData('Philippines', 4, 2, 12),
  CountryMedalData('Kyrgyzstan', 4, 2, 9),
  CountryMedalData('Saudi Arabia', 4, 2, 4),
  CountryMedalData('Singapore', 3, 6, 7),
  CountryMedalData('Vietnam', 3, 5, 19),
  CountryMedalData('Mongolia', 3, 5, 13),
  CountryMedalData('Kuwait', 3, 4, 4),
  CountryMedalData('Tajikistan', 2, 1, 4),
  CountryMedalData('Macau', 1, 3, 2),
  CountryMedalData('Sri Lanka', 1, 2, 2),
  CountryMedalData('Myanmar', 1, 0, 2),
  CountryMedalData('Jordan', 0, 5, 4),
  CountryMedalData('Turkmenistan', 0, 1, 6),
  CountryMedalData('Afghanistan', 0, 1, 4),
  CountryMedalData('Pakistan', 0, 1, 2),
  CountryMedalData('Brunei', 0, 1, 1),
  CountryMedalData('Nepal', 0, 1, 1),
  CountryMedalData('Oman', 0, 1, 1),
  CountryMedalData('Iraq', 0, 0, 3),
  CountryMedalData('Laos', 0, 0, 3),
  CountryMedalData('Bangladesh', 0, 0, 2),
  CountryMedalData('Cambodia', 0, 0, 1),
  CountryMedalData('Lebanon', 0, 0, 1),
  CountryMedalData('Palestine', 0, 0, 1),
  CountryMedalData('Syria', 0, 0, 1),
  // ... [You can continue to add more if needed]
];








import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParaAsianCountryWiseTable(),
    );
  }
}

class ParaAsianCountryWiseTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('2023 Para Asian Games Table')),
      body: Column(
        children: [
          MyBannerAdWidget(), // Add the banner ad here
          SingleChildScrollView(
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
        ],
      ),
    );
  }

}

class CountryMedalData {
  final String country;
  final int gold;
  final int silver;
  final int bronze;
  final int total;

  CountryMedalData(this.country, this.gold, this.silver, this.bronze)
      : total = gold + silver + bronze;
}

final List<CountryMedalData> medalData = [
  CountryMedalData('China', 214, 167, 140),
  CountryMedalData('Iran', 44, 46, 41),
  CountryMedalData('Japan', 42, 49, 59),
  CountryMedalData('South Korea', 30, 33, 40),
  CountryMedalData('India', 29, 31, 51),
  CountryMedalData('Indonesia', 29, 30, 36),
  CountryMedalData('Thailand', 27, 26, 55),
  CountryMedalData('Uzbekistan', 25, 24, 30),
  CountryMedalData('Philippines', 10, 4, 5),
  CountryMedalData('Hong Kong China', 8, 15, 24),
  // ... [You can continue to add more if needed]
];

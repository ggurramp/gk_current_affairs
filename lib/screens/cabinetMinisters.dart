import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MinisterListScreen(),
    );
  }
}

class Minister {
  final String sNo;
  final String name;
  final List<String> portfolios;

  Minister(this.sNo, this.name, this.portfolios);
}

class MinisterListScreen extends StatelessWidget {
  final List<Minister> ministers = [
    Minister('1', 'Narendra Modi', [
      'Prime Minister',
      'Minister of Personnel, Public Grievances and Pensions',
      'Department of Atomic Energy',
      'Department of Space',

      '(All important policy issues and other portfolios not allocated to any minister)'


    ]),
    // ... Add all ministers in similar fashion
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ministers List")),
      body: ListView.builder(
        itemCount: ministers.length,
        itemBuilder: (context, index) {
          final minister = ministers[index];
          return Card(
            margin: EdgeInsets.all(10.0),
            child: DataTable(
              columns: [
                DataColumn(label: Text('S No.')),
                DataColumn(label: Text('Minister')),
                DataColumn(label: Text('Portfolio')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text(minister.sNo)),
                    DataCell(Text(minister.name)),
                    DataCell(Text(minister.portfolios.join('\n')))
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

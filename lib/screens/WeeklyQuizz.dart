import 'package:flutter/material.dart';

import 'LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonthListScreen(),
    );
  }
}

class MonthListScreen extends StatelessWidget {
  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Months'),
      ),
      body: MonthList(months: months),
    );
  }
}
class MonthList extends StatelessWidget {
  final List<String> months;

  MonthList({required this.months});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: months.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(months[index]),
          onTap: () {
            if (months[index] == 'October') {
              Navigator.pop(context); // Close the current screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            } else if (months[index] == 'January') {
              Navigator.pop(context); // Close the current screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            }
          },
        );
      },
    );
  }
}

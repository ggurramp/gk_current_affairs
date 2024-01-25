import 'package:flutter/material.dart';
import 'package:gk_current_affairs/screens/ApPolice2018_prelims_1.dart';

import 'ApPolice2018_prelims_2.dart';
import 'ApPolice2023_prelims.dart';

class PoliceExamsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Police Exams Menu'),
      ),
      body:
      ListView(
        shrinkWrap: true, // Set shrinkWrap to true
        children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to ApPolice2023_prelimsScreen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ApPolice2018_prelims_1Screen(),
                  ),
                );
              },
              child: Text('AP Police SI (Prelims) 2018 Official Paper 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ApPolice2023_prelimsScreen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ApPolice2018_prelims_2Screen(),
                  ),
                );
              },
              child: Text('AP Police SI (Prelims) 2018 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ApPolice2023_prelimsScreen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ApPolice2023_prelimsScreen(),
                  ),
                );
              },
              child: Text('AP Police SI (Prelims) Exam Official Paper-I (Held On: 19 Feb 2023)'),
            ),

            ElevatedButton(
              onPressed: () {
                // Handle Option 1
                print('Option 1 selected');
              },
              child: Text('AP Police SI (Prelims) Exam Official Paper-I (Held On: 19 Feb 2023)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 2
                print('AP Police SI (Prelims) Exam Official Paper-II (Held On: 19 Feb 2023)');
              },
              child: Text('AP Police SI (Prelims) Exam Official Paper-II (Held On: 19 Feb 2023)'),
            ),

            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (Prelims) 2018 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 3
                print('Option 3 selected');
              },
              child: Text('AP Police SI (mains) 2018 Official Paper 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (mains) 2018 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 3
                print('Option 3 selected');
              },
              child: Text('AP Police SI (Prelims) 2016 Official Paper 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (Prelims) 2016 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 3
                print('Option 3 selected');
              },
              child: Text('AP Police SI (mains) 2016 Official Paper 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (mains) 2016 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (mains) 2018 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 3
                print('Option 3 selected');
              },
              child: Text('AP Police SI (Prelims) 2016 Official Paper 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (Prelims) 2016 Official Paper 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 3
                print('Option 3 selected');
              },
              child: Text('AP Police SI (mains) 2016 Official Paper 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Option 4
                print('Option 4 selected');
              },
              child: Text('AP Police SI (mains) 2016 Official Paper 2'),
            ),
          ],
        ),
    );
  }
}

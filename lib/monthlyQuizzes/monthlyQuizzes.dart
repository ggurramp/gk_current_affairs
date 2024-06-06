import 'package:flutter/material.dart';
import 'package:gk_current_affairs/monthlyQuizzes/april.dart';
import 'package:gk_current_affairs/monthlyQuizzes/july.dart';
import 'package:gk_current_affairs/monthlyQuizzes/june.dart';
import 'package:gk_current_affairs/monthlyQuizzes/may.dart';
import 'package:gk_current_affairs/monthlyQuizzes/november.dart';
import 'package:gk_current_affairs/monthlyQuizzes/october.dart';
import 'package:gk_current_affairs/monthlyQuizzes/september.dart';

import 'august.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MonthlyQuizzes(),
//     );
//   }
// }

class MonthlyQuizzes extends StatelessWidget {
  final List<String> months = [
   // 'March',
    'April',
    'May',
    'June',
    'july',
    'August',
    'September',
    'October',
    'November',
    // 'December',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Quizzes'),
        backgroundColor: Colors.blue[500],
        shape: StadiumBorder(),
      ),
      body: ListView.builder(

        itemCount: months.length,
        itemBuilder: (context, index) {
          return GestureDetector(

            onTap: () {
              // Navigate to specific quiz page based on the selected month
              switch (months[index]) {
                case 'April':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => april(),
                    ),
                  );
                  break;
                case 'May':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => may(),
                    ),
                  );
                  break;
                case 'June':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => june(),
                    ),
                  );
                  break;
                case 'July':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => july(),
                    ),
                  );
                  break;
                case 'August':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => august(),
                    ),
                  );
                  break;
                case 'September':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => september(),
                    ),
                  );
                  break;
                case 'October':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => october(),
                    ),
                  );
                  break;
                case 'November':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => november(),
                    ),
                  );
                  break;
              // Add cases for other months if needed
              }

            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                months[index],
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        },
      ),
    );
  }
}




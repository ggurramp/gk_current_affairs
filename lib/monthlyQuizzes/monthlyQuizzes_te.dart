import 'package:flutter/material.dart';
import 'package:gk_current_affairs/monthlyQuizzes/april_te.dart';
import 'package:gk_current_affairs/monthlyQuizzes/august.dart';
import 'package:gk_current_affairs/monthlyQuizzes/july_te.dart';
import 'package:gk_current_affairs/monthlyQuizzes/june_te.dart';
import 'package:gk_current_affairs/monthlyQuizzes/may_te.dart';
import 'package:gk_current_affairs/monthlyQuizzes/november_te.dart';
import 'package:gk_current_affairs/monthlyQuizzes/october_te.dart';
import 'package:gk_current_affairs/monthlyQuizzes/september.dart';
import 'package:gk_current_affairs/monthlyQuizzes/september_te.dart';

import 'august_te.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonthlyQuizzes_te(),
    );
  }
}

class MonthlyQuizzes_te extends StatelessWidget {
  final List<String> months = [
  "ఏప్రిల్", "మే", "జూన్",
    'జూలై',
    'ఆగస్టు',
    'సెప్టెంబర్',
    'అక్టోబర్',
     'నవంబర్',
    // 'December',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Months Quizzes'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: months.length,

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to specific quiz page based on the selected month
              switch (months[index]) {
                case 'ఏప్రిల్':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => april_te(),
                    ),
                  );
                  break;
                case 'మే':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => may_te(),
                    ),
                  );
                  break;
                case 'జూన్':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => june_te(),
                    ),
                  );
                case 'జూలై':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => july_te(),
                    ),
                  );
                  break;
                case 'ఆగస్టు':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => august_te(),
                    ),
                  );
                  break;
                case 'సెప్టెంబర్':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => september_te(),
                    ),
                  );
                  break;
                case 'అక్టోబర్':
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => october_te(),
                  ),
                );
                  break;
                case 'నవంబర్':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => november_te(),
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




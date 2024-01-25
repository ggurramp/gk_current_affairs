import 'package:flutter/material.dart';

import 'GenaralKnowledgeMenu.dart';
import 'ScrollableTabs.dart';

class AtoZMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //title: Text('General Knowledge'),
      // ),
      body: ListView(
        shrinkWrap: true, // Set shrinkWrap to true
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralKnowledgeMenu()),
              // Handle Option 1
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            ),
            child: Text('Gk'),
          ),
          ElevatedButton(
            onPressed: () {
              // Show AlertDialog when the button is pressed
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Alert'),
                    content: Text('General Knowledge Will update soon'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // Close the AlertDialog
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('General Knowledge'),
          ),

          ElevatedButton(
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScrollableTabsScreen()), // Navigate to the scrollable tabs screen
              );
            },
            child: Text('Old Question Papers'),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (Prelims) 2018 Official Paper 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 3
          //     print('Option 3 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2018 Official Paper 1'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2018 Official Paper 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 3
          //     print('Option 3 selected');
          //   },
          //   child: Text('AP Police SI (Prelims) 2016 Official Paper 1'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (Prelims) 2016 Official Paper 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 3
          //     print('Option 3 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2016 Official Paper 1'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2016 Official Paper 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2018 Official Paper 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 3
          //     print('Option 3 selected');
          //   },
          //   child: Text('AP Police SI (Prelims) 2016 Official Paper 1'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (Prelims) 2016 Official Paper 2'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 3
          //     print('Option 3 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2016 Official Paper 1'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle Option 4
          //     print('Option 4 selected');
          //   },
          //   child: Text('AP Police SI (mains) 2016 Official Paper 2'),
          // ),
        ],
      ),

    );
  }
}

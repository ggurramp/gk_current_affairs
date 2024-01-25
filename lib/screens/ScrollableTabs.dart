import 'package:flutter/material.dart';
import 'package:gk_current_affairs/screens/Group1ExamsMenu.dart';

import 'Exam.dart';
import 'Group2ExamsMenu.dart';
import 'PoliceExams2023_prelims.dart';
import 'PoliceExamsMenu.dart';


class ScrollableTabsScreen extends StatelessWidget {
  final List<String> stateAbbreviations = [
    'AP', 'TS', 'AS', 'BR', 'CG', 'GA', 'GJ', 'HR', 'HP', 'JK', 'JH', 'KA',
    'KL', 'MP', 'MH', 'MN', 'ML', 'MZ', 'NL', 'OR', 'PB', 'RJ', 'SK', 'TN',
    'TR', 'UK', 'UP', 'WB', 'TN', 'TR', 'AN', 'CH', 'DH', 'DD', 'DL', 'LD', 'PY'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: stateAbbreviations.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Old Question Papers'),
          backgroundColor: Colors.lightBlue,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            tabs: stateAbbreviations.map((abbr) => Tab(text: abbr)).toList(),
          ),
        ),
        body: TabBarView(
          children: stateAbbreviations.map((abbr) {
            return _buildTabContent(context, abbr);
          }).toList(),
        ),
      ),
    );
  }
}


Widget _buildTabContent(BuildContext context, String stateAbbreviation) {

  Widget content;
  switch (stateAbbreviation) {
    case 'AP':
      content = Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),

       ElevatedButton(
         onPressed: () {
           // Navigate to the Police Exams Menu page
           Navigator.of(context).push(
             MaterialPageRoute(
               builder: (context) => PoliceExamsMenu(),
             ),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.red, // Set the background color to red
         ),

         child:Align(
         alignment: Alignment.centerLeft, // Align the text to the left
        child: Text('AP Police SI (Prelims & Mains) Exam Old question Papers '),
            ),
       ),
      ElevatedButton(
        onPressed: () {
          // Navigate to the Police Exams Menu page
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Group1ExamsMenu(),
            ),
          );
        },
        child: Align(
          alignment: Alignment.centerLeft, // Align the text to the left
        child : Text('Group1Exams '),
      ),
      ),
      ElevatedButton(
        onPressed: () {
          // Navigate to the Police Exams Menu page
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Group2ExamsMenu(),
            ),
          );
        },
        child: Align(
          alignment: Alignment.bottomLeft,
        child: Text('Group2Exams '),
      ),
      ),
      ElevatedButton(
        onPressed: () {
          // Navigate to the ExamScreen when "Police Exams" button is pressed
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Prelims_2023Screen(
                userIdentifier: stateAbbreviation,
              ),
            ),
          );
        },
        child: Text('Test'),
      ),


      ElevatedButton(
        onPressed: () {
          // Show a full-screen menu when "Police Exams" button is tapped
          showMenu(
            context: context,
            position: RelativeRect.fill,
            items: [
              PopupMenuItem(
                child: Text('Option 1'),
                onTap: () {
                  // Handle Option 1
                  print('Option 1 selected for $stateAbbreviation');
                },
              ),
              PopupMenuItem(
                child: Text('Option 2'),
                onTap: () {
                  // Handle Option 2
                  print('Option 2 selected for $stateAbbreviation');
                },
              ),
              PopupMenuItem(
                child: Text('Option 3'),
                onTap: () {
                  // Handle Option 3
                  print('Option 3 selected for $stateAbbreviation');
                },
              ),
              PopupMenuItem(
                child: Text('Option 4'),
                onTap: () {
                  // Handle Option 4
                  print('Option 4 selected for $stateAbbreviation');
                },
              ),
            ],
          );
        },
        child: Text('Police Exams'),
      ),



      ElevatedButton(
              onPressed: () {
                // Handle Group Exams button tap
                print('Group Exams button tapped for $stateAbbreviation');
              },
              child: Text('Group Exams'),
            ),
     ElevatedButton(
              onPressed: () {
                // Handle Police Exams button tap
                print('Police Exams button tapped for $stateAbbreviation');
              },
              child: Text('Police Exams'),
            ),
      ElevatedButton(
        onPressed: () {
          // Show a menu when "Police Exams" button is tapped
          showMenu(
            context: context,
            position: RelativeRect.fill,
            items: [
              PopupMenuItem(
                child: Text('Option 1'),
                onTap: () {
                  // Handle Option 1
                  print('Option 1 selected for $stateAbbreviation');
                },
              ),
              PopupMenuItem(
                child: Text('Option 2'),
                onTap: () {
                  // Handle Option 2
                  print('Option 2 selected for $stateAbbreviation');
                },
              ),
              PopupMenuItem(
                child: Text('Option 3'),
                onTap: () {
                  // Handle Option 3
                  print('Option 3 selected for $stateAbbreviation');
                },
              ),
              PopupMenuItem(
                child: Text('Option 4'),
                onTap: () {
                  // Handle Option 4
                  print('Option 4 selected for $stateAbbreviation');
                },
              ),
            ],
          );
        },
        child: Text('Police Exams'),
      ),


      ElevatedButton(
        onPressed: () {
          // Handle Question Paper 1 button tap
          print('Question Paper 1 tapped for $stateAbbreviation');
        },
        child: Text('Question Paper 1'),
      ),


      ElevatedButton(
        onPressed: () {
          // Handle Question Paper 2 button tap
          print('Question Paper 2 tapped for $stateAbbreviation');
        },
        child: Text('Question Paper 2'),
      ),

      ElevatedButton(
        onPressed: () {
          // Handle Group Exams button tap
          print('Group Exams button tapped for $stateAbbreviation');
        },
        child: Text('Group Exams'),
      ),
      ElevatedButton(
        onPressed: () {
          // Handle Police Exams button tap
          print('Police Exams button tapped for $stateAbbreviation');
        },
        child: Text('Police Exams'),
      ),
      ElevatedButton(
        onPressed: () {
          // Handle Police Exams button tap
          print('Police Exams button tapped for $stateAbbreviation');
        },
        child: Text('Police Exams'),
      ),

      ElevatedButton(
        onPressed: () {
          // Handle Question Paper 1 button tap
          print('Question Paper 1 tapped for $stateAbbreviation');
        },
        child: Text('Question Paper 1'),
      ),


      ElevatedButton(
        onPressed: () {
          // Handle Question Paper 2 button tap
          print('Question Paper 2 tapped for $stateAbbreviation');
        },
        child: Text('Question Paper 2'),
      ),

      ElevatedButton(
        onPressed: () {
          // Handle Group Exams button tap
          print('Group Exams button tapped for $stateAbbreviation');
        },
        child: Text('Group Exams'),
      ),
      ElevatedButton(
        onPressed: () {
          // Handle Police Exams button tap
          print('Police Exams button tapped for $stateAbbreviation');
        },
        child: Text('Police Exams'),
      ),


    ],
  );
      break;
    // case 'TS':
    //   content = Column(
    //     children: [
    //       // Add content specific to 'AR' here
    //     ],
    //   );
    //   break;
    case 'TS':
      content = Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
          ),

          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI '),
            ),
          ),ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI '),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI '),
            ),
          ),ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI '),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI '),
            ),
          ),ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI '),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the Police Exams Menu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PoliceExamsMenu(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the background color to red
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text('TS Police SI (Prelims & Mains) Exam Old question Papers'),
            ),
          ),







          ElevatedButton(
            onPressed: () {
              // Navigate to the Group2ExamsMenu page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Group2ExamsMenu(),
                ),
              );
            },
            child: Text('TS Group2 Exams'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the ExamScreen when "Police Exams" button is pressed
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Prelims_2023Screen(
                    userIdentifier: stateAbbreviation,
                  ),
                ),
              );
            },
            child: Text('TS Test'),
          ),
        ],
      );
      break;

  // Add cases for other state abbreviations with their specific content
    default:
      content = Column(
        children: [
          Text('Content for $stateAbbreviation is not available.'),
        ],
      );
}
  return ListView(
    children: [content],
  );
}


void main() {
  runApp(MaterialApp(
    home: ScrollableTabsScreen(),
  ));
}

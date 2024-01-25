import 'package:flutter/material.dart';
import 'package:gk_current_affairs/screens/birdSanctuary.dart';
import 'package:gk_current_affairs/screens/indianHills.dart';
import 'package:gk_current_affairs/screens/nationalParks.dart';
import 'package:gk_current_affairs/screens/presidentsOfIndia.dart';
import 'package:gk_current_affairs/screens/rivers.dart';
import 'package:gk_current_affairs/screens/statesAndGovernors.dart';
import 'package:gk_current_affairs/screens/statesCapitalsIndia.dart';
import 'package:gk_current_affairs/screens/world_capitals_currencies_Asia.dart';

import 'World_capitals_currencies_Africa.dart';
import 'World_capitals_currencies_Europe.dart';
import 'World_capitals_currencies_South_North_america.dart';
import 'chiefMinisters.dart';

class GeneralKnowledgeMenu extends StatelessWidget {
  // final List<Color> colors = [
  //   Colors.red,
  //   Colors.pink,
  //   Colors.purple,
  //   Colors.deepPurple,
  //   Colors.indigo,
  //   Colors.blue,
  //   Colors.lightBlue,
  //   Colors.cyan,
  //   Colors.teal,
  //   Colors.green,
  //   Colors.lightGreen,
  //   Colors.lime,
  //   Colors.yellow,
  //   Colors.amber,
  //   Colors.orange,
  //   Colors.deepOrange,
  //   Colors.brown,
  //   Colors.grey,
  //   Colors.blueGrey,
  //   Colors.black,
  //   Colors.white,
  // ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop();
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            toolbarHeight: 40,
            title: Text('Menu'),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: MenuSearch());
                },
              )

            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0, // horizontal space between buttons
              runSpacing: 8.0, // vertical space between lines
              children: [
                _buildButton(context, 0, 'Presidents of India', presidentsOfIndiaScreen()),
                _buildButton(context, 1, "CM's of states", chiefMinistersScreen()),
                _buildButton(context, 2, 'States And Governors', statesAndGovernorsScreen()),
                _buildButton(context, 3, 'States and Capitals', statesCapitalsIndiaScreen()),
                _buildButton(context, 4, 'Rivers', riversScreen()),
                _buildButton(context, 5, 'Bird Sanctuaries', birdSanctuary()),
                _buildButton(context, 6, 'National Parks', nationalParks()),
                _buildButton(context, 7, 'Indian Hills', indianHills()),
                _buildButton(context, 8, 'World Capitals & Currencies part 1(Asia)', World_capitals_currencies()),
                _buildButton(context, 9, 'World Capitals & Currencies part 2(Europe)', World_capitals_currencies_Europe()),
                _buildButton(context, 10, 'World Capitals & Currencies part 3(Africa)', World_capitals_currencies_Africa()),
                _buildButton(context, 11, 'World Capitals & Currencies part 4(N.A,S.A,Australia)', World_capitals_currencies_South_North_america()),
                // Add more buttons as needed...World_capitals_currencies_Europe
              ],
            ),
          ),
        ));
  }

  Widget _buildButton(BuildContext context, int index, String text, Widget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      // style: ElevatedButton.styleFrom(
      //   primary: colors[index % colors.length],  // Cycle through the color list
      // ),
    );
  }
}

class MenuSearch extends SearchDelegate<String> {
  final List<String> menuItems = [
    'Presidents of India',
    "CM's of states",
    'States And Governors',
    'States and Capitals',
    'Rivers',
    'Bird Sanctuaries',
    'National Parks',
    'Indian Hills',
    'World Capitals Currencies Asia',
    'World Capitals Currencies Europe',
    'World Capitals Currencies Africa',
    'World Capitals Currencies Remaining',
    // Add more items as needed...
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");

      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? menuItems
        : menuItems.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestionList[index]),
        onTap: () {
          close(context, suggestionList[index]);  // Close the search
          navigateToScreen(context, suggestionList[index]);  // Navigate to the respective page
        },
      ),
      itemCount: suggestionList.length,
    );
  }

  void navigateToScreen(BuildContext context, String menuItem) {
    switch (menuItem) {
      case 'Presidents of India':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => presidentsOfIndiaScreen()),
        );
        break;
      case "CM's of states":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => chiefMinistersScreen()),
        );
        break;
      case 'States And Governors':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => statesAndGovernorsScreen()),
        );
        break;
      case 'States and Capitals':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => statesCapitalsIndiaScreen()),
        );
        break;
      case 'Rivers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => riversScreen()),
        );
        break;
      case 'Bird Sanctuaries':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => birdSanctuary()),
        );
        break;
      case 'National Parks':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nationalParks()),
        );
        break;
      case 'Indian Hills':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => indianHills()),
        );
        break;
      case 'World Capitals Currencies Asia':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => World_capitals_currencies()),
        );
        break;
      case 'World Capitals Currencies Europe':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => World_capitals_currencies_Europe()),
        );
        break;
      case 'World Capitals,Currencies of Africa':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => World_capitals_currencies_Africa()),
        );
        break;
      case 'World Capitals,Currencies of Remaining ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => World_capitals_currencies_South_North_america()),
        );
        break;
    // '', Add more cases as needed...World Capitals Currencies Asia World_capitals_currencies_Europe
      default:
        break;
    }
  }
}

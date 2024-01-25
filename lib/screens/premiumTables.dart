import 'package:flutter/material.dart';
import 'package:gk_current_affairs/screens/paraAsianMedals.dart';
import '../Tables/Cabinet Ministers.dart';
import '../Tables/ChiefMinistersTable.dart';
import '../Tables/HeritageSites_india.dart';
import '../Tables/Important_Dates.dart';
import '../Tables/Parks_Speciality.dart';
import '../Tables/articles of indian constitution.dart';
import '../Tables/capitals & currency.dart';
import '../Tables/governors.dart';
import '../Tables/who is who.dart';
import 'ParaMedalsCountryWise.dart';
import 'dataTables_countryWise.dart';
import 'indianAsianMedals.dart';
import 'indianMultipleMedals.dart';

class PremiumTables extends StatelessWidget {


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
            title: Text(
              'Update App For Latest',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
// Change text color here
            ),
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
                _buildButton(context, 5, 'Who Is Who', who_is_who()),
                _buildButton(context, 5, 'Chief Ministers', cm()),
                _buildButton(context, 6, 'Governors', governors()),
                _buildButton(context, 4, 'Cabinet Ministers', CabinetMinisters()),
                _buildButton(context, 4, 'Important Dates', important_dates()),
                _buildButton(context, 4, 'Parks & Speciality', parks_speciality()),
                _buildButton(context, 4, 'Heritage Sites india', HeritageSites_india()),

                _buildButton(context, 0, 'Para Asian Games Indian Medals 2023', ParaAsianMedalsTable()),
                _buildButton(context, 1, 'Para Asian Games Medals Table 2023', ParaAsianCountryWiseTable()),
                _buildButton(context, 2, 'Asian Games Country Wise Medals 2022(2023)', MedalTableScreen()),
                _buildButton(context, 3, "Asian Games Multiple Medal winners India", MedalistList()),
                 _buildButton(context, 4, 'Asian Games Indian Winners', MedalWinnersTable()),
                _buildButton(context, 4, 'Countries Capitals Currency', capitals_currency()),
                _buildButton(context, 7, 'Important Articles of the Indian Constitution', important_articleswithschedules()),


//parks_speciality
                // _buildButton(context, 4, 'Rivers', riversScreen()),
                // _buildButton(context, 5, 'Bird Sanctuaries', birdSanctuary()),

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
    "Who Is Who",
    'Para Asian Games Indian Medals 2023',
    'Para Asian Games Medals Table 2023',
    'Asian Games Country Wise Medals 2022(2023)',
     "Asian Games Multiple Medal Medals India",
     'Asian Games Indian Winners',
    'Chief Ministers',
    'Governors',
    "Cabinet Ministers",
    "Countries Capitals Currency",
    "Important Articles of the Indian Constitution",
    "Important Dates",
    "Parks & Speciality",
    "Heritage Sites india"

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
      case 'Para Asian Games Indian Medals 2023':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ParaAsianMedalsTable()),
        );
        break;
      case 'Para Asian Games Medals Table 2023':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ParaAsianCountryWiseTable()),
        );
        break;

      case 'Asian Games 2022(2023)':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MedalTableScreen()),
        );
        break;
      case "CM's of states":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MedalistList()),
        );
        break;
      case 'States And Governors':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MedalWinnersTable()),
        );
        break;
      case 'Chief Ministers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cm()),
        );
        break;
      case 'Chief Ministers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => governors()),
        );
        break;
      case 'Cabinet Ministers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CabinetMinisters()),
        );
        break;
      case 'Who Is Who':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => who_is_who()),
        );
        break;
      case 'Countries Capitals Currency':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => who_is_who()),
        );
        break;
      case 'Important Articles of the Indian Constitution':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => important_articleswithschedules()),
        );
        break;
      case 'Important Dates':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => important_dates()),
        );
        break;

      case 'Parks & Speciality ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => parks_speciality()),
        );
        break;

      case 'Heritage Sites india ':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HeritageSites_india()),
        );
        break;
        // HeritageSites_india Important Dates Important Articles of the Indian Constitution
      // case 'Cabinet Ministers':
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => MinisterListScreen()),
      //   );
      //   break;
    //   case 'Rivers':
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => riversScreen()),
    //     );
    //     break;

    }
  }
}

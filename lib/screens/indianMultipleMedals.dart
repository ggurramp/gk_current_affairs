import 'package:flutter/material.dart';

import '../path_to_my_banner_ad_widget.dart';
class MedalistList extends StatelessWidget {
  Color goldColor = Color(0xFFFFD700); // Define the gold color here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medalists')),
      body: Column(
        children: [
          MyBannerAdWidget(), // Add the banner ad here
          Expanded(
            child: ListView.builder(
              itemCount: medalists.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(medalists[index].name),
                  subtitle: Text(
                      'Sport: ${medalists[index]
                          .sport} | Total Medals: ${medalists[index].total}'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                                color: goldColor, size: 16.0),
                            SizedBox(width: 2.0),
                            Text('${medalists[index].gold}',
                                style: TextStyle(fontSize: 12.0)),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                                color: Colors.grey, size: 16.0),
                            SizedBox(width: 2.0),
                            Text('${medalists[index].silver}',
                                style: TextStyle(fontSize: 12.0)),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                                color: Colors.brown, size: 16.0),
                            SizedBox(width: 2.0),
                            Text('${medalists[index].bronze}',
                                style: TextStyle(fontSize: 12.0)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
  class MultipleMedalist {
  final String name;
  final String sport;
  final int gold;
  final int silver;
  final int bronze;
  final int total;

  MultipleMedalist({
    required this.name,
    required this.sport,
    required this.gold,
    required this.silver,
    required this.bronze,
    required this.total,
  });
}

final List<MultipleMedalist> medalists = [

  MultipleMedalist(name: 'Jyothi Surekha', sport: 'Archery', gold: 3, silver: 0, bronze: 0, total: 3),
  MultipleMedalist(name: 'Ojas Detole', sport: 'Archery', gold: 3, silver: 0, bronze: 0, total: 3),
  MultipleMedalist(name: 'APS Tomar', sport: 'Shooting', gold: 2, silver: 1, bronze: 1, total: 4),
  MultipleMedalist(name: 'Harinder Pal Sandhu', sport: 'Squash', gold: 2, silver: 0, bronze: 0, total: 2),
  MultipleMedalist(name: 'Esha Singh', sport: 'Shooting', gold: 2, silver: 1, bronze: 1, total: 4),
  MultipleMedalist(name: 'Abhishek Verma', sport: 'Archery', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Avinash Sable', sport: 'Athletics', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Muhammad Ajmal', sport: 'Athletics', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Parul Chaudhary', sport: 'Athletics', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Rajesh Ramesh', sport: 'Athletics', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Chirag Shetty', sport: 'Badminton', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Satwiksairaj Rankireddy', sport: 'Badminton', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Palak Gulia', sport: 'Shooting', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Sifat Kaur Samra', sport: 'Shooting', gold: 1, silver: 1, bronze: 0, total: 2),
  MultipleMedalist(name: 'Saurav Ghosal', sport: 'Squash', gold: 1, silver: 0, bronze: 2, total: 3),
  MultipleMedalist(name: 'Aditi Swami', sport: 'Archery', gold: 1, silver: 0, bronze: 1, total: 2),
  MultipleMedalist(name: 'Abhay Singh', sport: 'Squash', gold: 1, silver: 0, bronze: 1, total: 2),
  MultipleMedalist(name: 'Dipika Pallikal', sport: 'Squash', gold: 1, silver: 0, bronze: 1, total: 2),
  MultipleMedalist(name: 'Anush Agarwalla', sport: 'Equestrian', gold: 1, silver: 0, bronze: 1, total: 2),
  MultipleMedalist(name: 'Kyana Chenai', sport: 'Shooting', gold: 1, silver: 0, bronze: 1, total: 2),
  MultipleMedalist(name: 'Vithya Ramraj', sport: 'Athletics', gold: 0, silver: 2, bronze: 1, total: 3),
  MultipleMedalist(name: 'Harmilan Bains', sport: 'Athletics', gold: 0, silver: 2, bronze: 0, total: 2),
  MultipleMedalist(name: 'Subha Venkatesan', sport: 'Athletics', gold: 0, silver: 2, bronze: 0, total: 2),
  MultipleMedalist(name: 'A S Naruka', sport: 'Shooting', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Ashi Chouksey', sport: 'Shooting', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Ramita Jindal', sport: 'Shooting', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Bheem Singh', sport: 'Rowing', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Jaswinder Singh', sport: 'Rowing', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Punit Kumar', sport: 'Rowing', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Ashish Goliyan', sport: 'Sailing', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Prannoy H. S.', sport: 'Badminton', gold: 0, silver: 1, bronze: 1, total: 2),
  MultipleMedalist(name: 'Anahat Singh', sport: 'Squash', gold: 0, silver: 0, bronze: 2, total: 2),


];

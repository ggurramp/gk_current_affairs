import 'package:flutter/material.dart';
class StateExamsPage extends StatelessWidget {
  final List<String> indianStates = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Exams'),
      ),
      body: ListView.builder(
        itemCount: indianStates.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(indianStates[index]),
            onTap: () {
              // Handle tap on a state
            },
          );
        },
      ),
    );
  }
}

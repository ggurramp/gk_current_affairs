import 'package:flutter/material.dart';

import 'ThemesPage.dart';

class SettingsPage extends StatefulWidget {
  final VoidCallback openThemesPage;

  SettingsPage({required this.openThemesPage});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _receiveNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SwitchListTile(
            title: Text('Receive Notifications'),
            value: _receiveNotifications,
            onChanged: (value) {
              setState(() {
                _receiveNotifications = value;
              });
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.color_lens),
          //   title: Text('Themes'),
          //   onTap: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => ThemesPage()));
          //   },
          // ),

          // Add more settings options here
        ],
      ),
    );
  }
}

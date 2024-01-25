import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Display App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage_1(),
    );
  }
}

class MyHomePage_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Display'),
      ),
      body: Center(
        child: Image.asset('assets/WIN_20231110_23_29_50_Pro.jpg'),
      ),
    );
  }
}

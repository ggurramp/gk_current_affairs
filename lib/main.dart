import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gk_current_affairs/screens/CurrentAffairs.dart';
import 'package:gk_current_affairs/screens/HomePage.dart';
import 'package:gk_current_affairs/screens/QuizScreen.dart';
import 'package:gk_current_affairs/screens/LoginPage.dart';
import 'package:gk_current_affairs/screens/SignUpPage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:gk_current_affairs/screens/phone_login_page.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/gmail_login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart'; // Import Firebase Messaging

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  subscribeToTopic('allDevices'); // Subscribe to the 'allDevices' topic
  FirebaseFirestore.instance.settings;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final InAppReview _inAppReview = InAppReview.instance;

  // Method to prompt for in-app review
  void promptForReview() async {
    try {
      if (await _inAppReview.isAvailable()) {
        _inAppReview.requestReview();
      }
    } catch (e) {
      // Handle the error, could log or show some feedback to the user
      print("Error showing review: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => promptForReview());
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage', // Initial route to launch
      routes: {
        '/HomePage': (context) => HomePage(),
        '/QuizScreen': (context) => QuizScreen(),
        '/LoginPage': (context) => LoginPage(),
        '/SignUpPage': (context) => SignUpPage(),
        '/PhoneLoginPage': (context) => PhoneLoginPage(),
        '/GmailLoginPage': (context) => GmailLoginPage(),
        '/CurrentAffairsScreen': (context) => CurrentAffairsScreen(),
        // Define other routes as needed
      },
    );
  }
}

// Function to subscribe to a topic
void subscribeToTopic(String topic) {
  FirebaseMessaging.instance.subscribeToTopic(topic);
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gk_current_affairs/screens/CurrentAffairs.dart';
import 'package:gk_current_affairs/screens/CurrentAffairs_te.dart';
import 'package:gk_current_affairs/screens/HomePage.dart';
import 'package:gk_current_affairs/screens/QuizScreen.dart';
import 'package:gk_current_affairs/screens/LoginPage.dart';
import 'package:gk_current_affairs/screens/QuizScreen_te.dart';
import 'package:gk_current_affairs/screens/SignUpPage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:gk_current_affairs/screens/phone_login_page.dart';
import 'package:in_app_review/in_app_review.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
const String notificationClickAction = 'FLUTTER_NOTIFICATION_CLICK'; // Add this line
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  subscribeToTopic('allDevices');
  FirebaseFirestore.instance.settings;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final InAppReview _inAppReview = InAppReview.instance;
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin _localNotifications = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    // Configure FCM message handling
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print("onMessage: $message");
      showNotification(message.data);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      print("onMessageOpenedApp: $message");
      navigateToSpecificScreen(message.data);
    });

    // Request FCM token
    _firebaseMessaging.getToken().then((token) {
      print("FCM Token: $token");
    });

    // Initialize local notifications
    _initializeLocalNotifications();
  }

  // Method to prompt for in-app review
  void promptForReview() async {
    try {
      if (await _inAppReview.isAvailable()) {
        _inAppReview.requestReview();
      }
    } catch (e) {
      print("Error showing review: $e");
    }
  }

  // Function to initialize local notifications
  void _initializeLocalNotifications() {
    var initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );
    _localNotifications.initialize(initializationSettings);
  }

  // Function to show a local notification
  void showNotification(Map<String, dynamic> message) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your_channel_id', 'Your Channel Name',
      importance: Importance.max,
      priority: Priority.high,
    );

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    await _localNotifications.show(
      0,
      message['title'],
      message['body'],
      platformChannelSpecifics,
      payload: jsonEncode(message),
    );
  }

// Function to navigate to a specific screen
  void navigateToSpecificScreen(Map<String, dynamic> message) {
    // Extract the screen information from the message payload
    String screen = message['data']['screen'] ?? '/HomePage';
    print(screen);

    // Use Navigator to navigate to the specified screen
    switch (screen) {
      case '/HomePage':
        Navigator.pushReplacementNamed(context, '/HomePage');
        break;
      case '/QuizScreen':
        Navigator.pushReplacementNamed(context, '/QuizScreen');
        break;
      case '/QuizScreen_te':
        Navigator.pushReplacementNamed(context, '/QuizScreen_te');
        break;
      case '/LoginPage':
        Navigator.pushReplacementNamed(context, '/LoginPage');
        break;
      case '/SignUpPage':
        Navigator.pushReplacementNamed(context, '/SignUpPage');
        break;
      case '/PhoneLoginPage':
        Navigator.pushReplacementNamed(context, '/PhoneLoginPage');
        break;
      case '/CurrentAffairsScreen':
        Navigator.pushReplacementNamed(context, '/CurrentAffairsScreen');
        break;
      case '/CurrentAffairsScreen_te':
        Navigator.pushReplacementNamed(context, '/CurrentAffairsScreen_te');
        break;
    // Add more cases for other pages as needed
      default:
      // If the specified screen is not recognized, navigate to the default page
        Navigator.pushReplacementNamed(context, '/HomePage');
    }
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (context) => HomePage(),
        '/QuizScreen': (context) => QuizScreen(),
        '/QuizScreen_te': (context) => QuizScreen_te(),
        '/LoginPage': (context) => LoginPage(),
        '/SignUpPage': (context) => SignUpPage(),
        '/PhoneLoginPage': (context) => PhoneLoginPage(),
        //  '/GmailLoginPage': (context) => GmailLoginPage(),
        '/CurrentAffairsScreen': (context) => CurrentAffairsScreen(),
        '/CurrentAffairsScreen_te': (context) => CurrentAffairsScreen_te()
        // Define other routes as needed
      },
    );
  }
}

// Function to subscribe to a topic
void subscribeToTopic(String topic) {
  FirebaseMessaging.instance.subscribeToTopic(topic);
}

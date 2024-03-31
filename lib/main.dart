import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:gk_current_affairs/screens/subjectWiseBits.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/CurrentAffairs.dart';
import 'screens/HomePage.dart';
import 'screens/QuizScreen.dart'; // Import the QuizScreen widget
import 'screens/LoginPage.dart';
import 'screens/SignUpPage.dart';
import 'screens/phone_login_page.dart';
import 'screens/gmail_login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterTts flutterTts = FlutterTts();

  await Firebase.initializeApp();
  subscribeToTopic('allDevices');
  MobileAds.instance.initialize();
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final InAppReview _inAppReview = InAppReview.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void promptForReview() async {
    try {
      if (await _inAppReview.isAvailable()) {
        _inAppReview.requestReview();
      }
    } catch (e) {
      print("Error showing review: $e");
    }
  }
  void navigateBasedOnRoute(String route, String questionIndex) {
    if (route == '/QuizScreen') {
      if (questionIndex.isNotEmpty) {
        // If questionIndex is provided, navigate to QuizScreen with the specific questionIndex
        navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
          builder: (context) => QuizScreen(questionIndex: questionIndex),
        ));
      } else {
        // If questionIndex is not provided, navigate to QuizScreen without a specific questionIndex
        navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
          builder: (context) => QuizScreen(questionIndex: '',),
        ));
      }
    } else if (route == '/CurrentAffairsScreen') {
      navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
        builder: (context) => CurrentAffairsScreen(title: questionIndex),
      ));
    } else {
      navigatorKey.currentState?.pushNamed(route);
    }
  }


  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Received message: ${message.notification?.title}");
      String route = message.data['route'] ?? '/HomePage';
      String questionIndex = message.data['questionIndex'] ?? ''; // Use questionIndex directly

      navigateBasedOnRoute(route, questionIndex);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("Opened app from terminated state. Received message: ${message.notification?.title}");
      String route = message.data['route'] ?? '/HomePage';
      String questionIndex = message.data['questionIndex'] ?? ''; // Use questionIndex directly

      navigateBasedOnRoute(route, questionIndex);
    });


    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    print("Handling background message: ${message.notification?.title}");
    // You can perform background tasks here
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => promptForReview());
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (context) => HomePage(),
        '/QuizScreen': (context) {
          return QuizScreen(questionIndex: ModalRoute.of(context)?.settings.arguments as String? ?? '');
        },
        '/LoginPage': (context) => LoginPage(),
        '/SignUpPage': (context) => SignUpPage(),
        '/PhoneLoginPage': (context) => PhoneLoginPage(),
        '/GmailLoginPage': (context) => GmailLoginPage(),
        '/CurrentAffairsScreen': (context) => CurrentAffairsScreen(title: ''),
        '/SubjectsList': (context) => SubjectsList(),
      },
    );
  }
}

// Function to subscribe to a topic
void subscribeToTopic(String topic) {
  FirebaseMessaging.instance.subscribeToTopic(topic);
}

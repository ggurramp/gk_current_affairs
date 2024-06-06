import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gk_current_affairs/screens/CurrentAffairs.dart';
import 'package:gk_current_affairs/screens/CurrentAffairs_te.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/subjectWiseBits.dart';
import 'screens/HomePage.dart';
import 'screens/QuizScreen.dart';
import 'screens/LoginPage.dart';
import 'screens/SignUpPage.dart';
import 'screens/phone_login_page.dart';
import 'screens/gmail_login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Get the FCM token
  String? fcmToken = await FirebaseMessaging.instance.getToken();

  // Print the FCM token to the console
  print('FCM Token: $fcmToken');
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

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

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Future<void> setLoggedIn(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', value);
  }

  void navigateToPage(String route) {
    navigatorKey.currentState?.pushReplacementNamed(route);
  }

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Received message: ${message.notification?.title}");
      String route = message.data['route'] ?? '/HomePage';
      String questionIndex = message.data['questionIndex'] ?? '';

      navigateBasedOnRoute(route, questionIndex);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("Opened app from terminated state. Received message: ${message.notification?.title}");
      String route = message.data['route'] ?? '/HomePage';
      String questionIndex = message.data['questionIndex'] ?? '';

      navigateBasedOnRoute(route, questionIndex);
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    isLoggedIn().then((loggedIn) {
      String initialRoute = loggedIn ? '/HomePage' : '/LoginPage';
      navigateToPage(initialRoute);
    });
  }

  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    print("Handling background message: ${message.notification?.title}");
  }

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
        navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
          builder: (context) => QuizScreen(questionIndex: questionIndex),
        ));
      } else {
        navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
          builder: (context) => QuizScreen(questionIndex: ''),
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
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => promptForReview());
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: '/LoginPage', // Initially direct to LoginPage
      routes: {
        '/HomePage': (context) => HomePage(),
        '/QuizScreen': (context) {
          return QuizScreen(questionIndex: ModalRoute.of(context)?.settings.arguments as String? ?? '');
        },
        '/LoginPage': (context) => LoginPage(
          onLoginSuccess: () { // Define the onLoginSuccess function
            setLoggedIn(true);
            navigateToPage('/HomePage');
          },
        ),
        '/SignUpPage': (context) => SignUpPage(),
        '/PhoneLoginPage': (context) => PhoneLoginPage(),
        '/GmailLoginPage': (context) => GmailLoginPage(),
        '/CurrentAffairsScreen': (context) => CurrentAffairsScreen(title: ''),
        '/CurrentAffairsScreen_te': (context) => CurrentAffairsScreen_te(),
        '/SubjectsList': (context) => SubjectsList(),
      },
    );
  }
  //
}

void subscribeToTopic(String topic) {
  FirebaseMessaging.instance.subscribeToTopic(topic);
}

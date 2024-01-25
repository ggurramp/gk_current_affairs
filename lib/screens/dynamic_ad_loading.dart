// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// // Define a mapping between pages and their corresponding ad unit IDs
// const Map<String, String> pageAdUnitIds = {
//   'current_affairs': 'ca-app-pub-XXXXXXXX/YYYYYYYYY',
//   'quizzes': 'ca-app-pub-XXXXXXXX/ZZZZZZZZZ',
//   'facts': 'ca-app-pub-XXXXXXXX/QQQQQQQQQ',
// };
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String currentPage = 'current_affairs';
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Initialize the Mobile Ads SDK
//     MobileAds.instance.initialize();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dynamic Ad Loading'),
//         ),
//         body: Builder(
//           builder: (context) {
//             // Check the current page and load the corresponding ad
//             String adUnitId = pageAdUnitIds[currentPage]!;
//             if (adUnitId != null) {
//               return _buildAdContainer(context, adUnitId);
//             } else {
//               return Text('No ad for this page');
//             }
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             // Navigate to a different page and update the ad unit ID
//             String nextPage = currentPage == 'current_affairs'
//                 ? 'quizzes'
//                 : (currentPage == 'quizzes' ? 'facts' : 'current_affairs');
//
//             setState(() {
//               currentPage = nextPage;
//             });
//           },
//           child: Icon(Icons.navigate_next),
//         ),
//       ),
//     );
//   }
//
//   BannerAd _buildAdContainer(BuildContext context, String adUnitId) {
//     return BannerAd(
//       adUnitId: adUnitId,
//       size: AdSize.banner,
//       request: AdRequest(),
//       listener: AdListener(
//         onAdLoaded: (Ad ad) {
//           print('Ad loaded');
//         },
//         onAdFailedToLoad: (LoadAdFailure adFailure) {
//           print('Ad failed to load: ${adFailure.error}');
//         },
//       ),
//     );
//   }
//

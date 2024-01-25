// import 'package:flutter/widgets.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// class MyInterstitialAdWidget extends StatefulWidget {
//   /// The AdMob ad unit to show.
//   final String adUnitId;
//
//   MyInterstitialAdWidget({
//     Key? key,
//     this.adUnitId = 'ca-app-pub-8650911541008756/7410489682', // Use your Interstitial ad unit ID here
//   }) : super(key: key);
//
//   @override
//   State<MyInterstitialAdWidget> createState() => _MyInterstitialAdWidgetState();
// }
//
// class _MyInterstitialAdWidgetState extends State<MyInterstitialAdWidget> {
//   /// The Interstitial ad to show. This is `null` until the ad is actually loaded.
//   InterstitialAd? _interstitialAd;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox.shrink(); // Interstitial ads usually cover the whole screen, no need for a specific widget here.
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     MobileAds.instance.initialize();
//
//     _loadAd();
//   }
//
//   @override
//   void dispose() {
//     _interstitialAd?.dispose();
//     super.dispose();
//   }
//
//   /// Loads an Interstitial ad.
//   void _loadAd() {
//     _interstitialAd = InterstitialAd(
//       adUnitId: widget.adUnitId,
//       request: AdRequest(),
//       listener: AdListener(
//         // Called when an ad is successfully received.
//         onAdLoaded: (ad) {
//           if (!mounted) {
//             ad.dispose();
//             return;
//           }
//           _interstitialAd?.show();
//         },
//         // Called when an ad request failed.
//         onAdFailedToLoad: (ad, error) {
//           debugPrint('InterstitialAd failed to load: $error');
//           ad.dispose();
//         },
//         // Called when the user interacts with the ad.
//         onAdOpened: (ad) {},
//         // Called when the ad is closed.
//         onAdClosed: (ad) {
//           ad.dispose();
//         },
//       ),
//     );
//
//     // Start loading.
//     _interstitialAd?.load();
//   }
// }

import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyInterstitialAdWidget extends StatefulWidget {
  /// The AdMob ad unit to show.
  final String adUnitId;

  MyInterstitialAdWidget({
    Key? key,
    required this.adUnitId, // Now it's required to provide an ad unit ID
  }) : super(key: key);

  @override
  State<MyInterstitialAdWidget> createState() => _MyInterstitialAdWidgetState();
}

class _MyInterstitialAdWidgetState extends State<MyInterstitialAdWidget> {
  /// The interstitial ad to show. This is `null` until the ad is actually loaded.
  InterstitialAd? _interstitialAd;

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(); // Interstitial ads don't have a widget representation.
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    super.dispose();
  }

  /// Loads an interstitial ad.
  void _loadAd() {
    InterstitialAd.load(
      adUnitId: widget.adUnitId, // Use the provided ad unit ID
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          _interstitialAd = ad;
          _interstitialAd?.show();
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (error) {
          debugPrint('InterstitialAd failed to load: $error');
        },
      ),
    );
  }
}

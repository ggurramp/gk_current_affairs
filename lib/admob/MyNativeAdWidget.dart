import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
class MyNativeAdWidget extends StatefulWidget {
  /// The AdMob ad unit to show.
  final String adUnitId;

  MyNativeAdWidget({
    Key? key,
    required this.adUnitId, // Now it's required to provide an ad unit ID
  }) : super(key: key);

  @override
  State<MyNativeAdWidget> createState() => _MyNativeAdWidgetState();
}

class _MyNativeAdWidgetState extends State<MyNativeAdWidget> {
  /// The native ad to show. This is `null` until the ad is actually loaded.
  NativeAd? _nativeAd;

  @override
  Widget build(BuildContext context) {
    // Return a Container to hold the native ad, or any other placeholder widget.
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100, // Adjust the height according to your UI design
      child: AdWidget(ad: _nativeAd!),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _nativeAd?.dispose();
    super.dispose();
  }

  /// Loads a native ad.
  void _loadAd() {
    _nativeAd = NativeAd(
      adUnitId: widget.adUnitId, // Use the provided ad unit ID
      request: AdRequest(),
      factoryId: 'adFactoryExample',
      listener: NativeAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) {
          setState(() {
            _nativeAd = ad as NativeAd;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          debugPrint('NativeAd failed to load: $error');
        },
      ),
    )..load();
  }
}

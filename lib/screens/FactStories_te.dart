import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fact Stories',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FactStoriesTe(),
    );
  }
}

class FactStoriesTe extends StatefulWidget {
  @override
  _FactStoriesTeState createState() => _FactStoriesTeState();
}

class _FactStoriesTeState extends State<FactStoriesTe> {
  List<FactStory> storiesTe = [];
  int currentIndex = 0;
  double initialDrag = 0.0;
  bool isLoading = true;
  PageController _pageController = PageController();

  AdManagerBannerAd? _bannerAd;
  bool _isLoaded = false;

  final adUnitId = 'ca-app-pub-8650911541008756/4254521923'; // Replace with your ad unit ID

  // Function to save data locally
  _saveDataLocally(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Function to retrieve data locally
  Future<String> _getDataLocally(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? ""; // Default value if the key doesn't exist
  }

  _fetchStoriesFromFirestore() async {
    final CollectionReference storiesTeRef = FirebaseFirestore.instance.collection('stories_te');

    // Order by 'timestamp' in descending order so the latest comes first
    final QuerySnapshot snapshot = await storiesTeRef.orderBy('timestamp', descending: true).get();

    final fetchedStories = snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return FactStory(
        title: data['title'] ?? '',
        content: data['content'] ?? '',
        timestamp: data['timestamp'] ?? Timestamp.now(),
        imageUrl: data['imageUrl'] ?? '',
      );
    }).toList();

    setState(() {
      storiesTe = fetchedStories;
      isLoading = false;
    });

    _loadFavorites(); // Load favorites after the storiesTe are loaded.
  }

  List<FactStory> get favoritedStories => storiesTe.where((story) => story.isFavorite).toList();

  @override
  void initState() {
    super.initState();
    _fetchStoriesFromFirestore();
    loadAd();

    // Add this to handle notifications
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Notification received while app is in foreground");
      // Handle the notification here
      _handleNotification(message.data['screen']);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("Notification clicked from terminated state");
      // Handle the notification here
      _handleNotification(message.data['screen']);
    });
  }

  // Add this function to handle notification click
  void _handleNotification(String screen) {
    // Navigate to the appropriate screen based on the 'screen' parameter
    if (screen == 'details') {
      // Navigate to the details screen
      Navigator.pushNamed(context, '/details');
    } else {
      // Navigate to the default screen or handle other cases
      Navigator.pushNamed(context, '/');
    }
  }

  _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final storedFavorites = prefs.getStringList('favoritedStories') ?? [];

    for (String storyJson in storedFavorites) {
      final storyMap = json.decode(storyJson);
      final story = storiesTe.firstWhere((s) => s.title == storyMap['title']);
      if (story != null) {
        story.isFavorite = storyMap['isFavorite'];
      }
    }

    setState(() {});
  }

  _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritedStories = storiesTe.where((s) => s.isFavorite).toList();
    final storyStrings =
    favoritedStories.map((s) => json.encode({'title': s.title, 'isFavorite': s.isFavorite})).toList();
    prefs.setStringList('favoritedStories', storyStrings);
  }

  void _toggleFavorite(int index) {
    setState(() {
      storiesTe[index].isFavorite = !storiesTe[index].isFavorite;
      _saveFavorites();
    });
  }

  void _onSwipeUp() {
    if (currentIndex < storiesTe.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  void _onSwipeDown() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  void _showFavoritesList() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: favoritedStories.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(favoritedStories[index].title),
              onTap: () {
                int storyIndex = storiesTe.indexOf(favoritedStories[index]);
                if (storyIndex != -1) {
                  _pageController.animateToPage(
                    storyIndex,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
                Navigator.of(context).pop(); // Close the modal bottom sheet
              },
            );
          },
        );
      },
    );
  }

  void loadAd() {
    _bannerAd = AdManagerBannerAd(
      adUnitId: adUnitId,
      request: AdManagerAdRequest(),
      sizes: [AdSize.fullBanner],
      listener: AdManagerBannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('AdManagerBannerAd failed to load: $error');
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoaded) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Fact Stories'),
          actions: [
            GestureDetector(
              onTap: _showFavoritesList,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    SizedBox(width: 4),
                    Text('${favoritedStories.length}', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: storiesTe.length,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Center(
                child: FactStoryWidget(
                  story: storiesTe[index],
                  onFavoriteToggled: () => _toggleFavorite(index),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back_ios),
              label: 'Previous',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward_ios),
              label: 'Next',
            ),
          ],
          onTap: (index) {
            if (index == 0 && currentIndex > 0) {
              setState(() {
                currentIndex--;
              });
              _pageController.animateToPage(
                currentIndex,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else if (index == 1 && currentIndex < storiesTe.length - 1) {
              setState(() {
                currentIndex++;
              });
              _pageController.animateToPage(
                currentIndex,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        bottomSheet: MyBannerAdWidget(), // Include the banner ad widget.
      );
    } else {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
  }
}

class MyBannerAdWidget extends StatefulWidget {
  final AdSize adSize;
  final String adUnitId;

  MyBannerAdWidget({
    Key? key,
    this.adSize = AdSize.banner,
    this.adUnitId = 'ca-app-pub-8650911541008756/4254521923', // Replace with your ad unit ID
  }) : super(key: key);

  @override
  State<MyBannerAdWidget> createState() => _MyBannerAdWidgetState();
}
class _MyBannerAdWidgetState extends State<MyBannerAdWidget> {
  BannerAd? _bannerAd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.adSize.width.toDouble(),
      height: widget.adSize.height.toDouble(),
      child: _bannerAd == null
          ? SizedBox() // Nothing to render yet.
          : AdWidget(ad: _bannerAd!),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  void _loadAd() {
    final bannerAd = BannerAd(
      size: widget.adSize,
      adUnitId: widget.adUnitId,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed to load: $error');
          ad.dispose();
        },
      ),
    );

    bannerAd.load();
  }
}

class FactStoryWidget extends StatelessWidget {
  final FactStory story;
  final VoidCallback onFavoriteToggled;

  const FactStoryWidget({Key? key, required this.story, required this.onFavoriteToggled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      story.title,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    CachedNetworkImage(
                      imageUrl: story.imageUrl ?? '', // Use an empty string if imageUrl is null
                      placeholder: (context, url) => SizedBox(
                        width: 20.0,
                        height: 20.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 20.0 * 0.33, // Adjust the width for each color segment
                              color: Colors.blue,
                            ),
                            Container(
                              width: 20.0 * 0.33,
                              color: Colors.green,
                            ),
                            Container(
                              width: 20.0 * 0.34,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      height: MediaQuery.of(context).size.width * 0.6,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(story.isFavorite ? Icons.favorite : Icons.favorite_border),
                color: Colors.red,
                onPressed: onFavoriteToggled,
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(story.content, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class FactStory {
  final String title;
  final String content;
  final Timestamp timestamp;
  final String? imageUrl; // Make imageUrl nullable
  bool isFavorite;

  FactStory({
    required this.title,
    required this.content,
    required this.timestamp,
    this.imageUrl, // Update to accept null
    this.isFavorite = false,
  });
}

class GradientTemplate {
  static Gradient multi({
    required Alignment begin,
    required Alignment end,
    required List<Color> colors,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
    );
  }
}

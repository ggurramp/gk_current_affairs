import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FactStories(),
    );
  }
}

class FactStories extends StatefulWidget {
  @override
  _FactStoriesState createState() => _FactStoriesState();
}

class _FactStoriesState extends State<FactStories> {
  List<FactStory> stories = [];
  int currentIndex = 0;
  double initialDrag = 0.0;
  bool isLoading = true;
  PageController _pageController = PageController();

  AdManagerBannerAd? _bannerAd;
  bool _isLoaded = false;

  final adUnitId = 'ca-app-pub-8650911541008756/4254521923';

  _fetchStoriesFromFirestore() async {
    final CollectionReference storiesRef =
    FirebaseFirestore.instance.collection('stories');
    final QuerySnapshot snapshot =
    await storiesRef.orderBy('timestamp', descending: true).get();

    final fetchedStories = snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return FactStory(
        id: doc.id, // Add this line to include the document ID
        title: data['title'] ?? '',
        content: data['content'] ?? '',
        imageUrl: data['imageUrl'] ?? '',
        timestamp: data['timestamp'] ?? Timestamp.now(),
      );
    }).toList();

    setState(() {
      stories = fetchedStories;
      isLoading = false;
    });

    _loadFavorites();
  }


  List<FactStory> get favoritedStories =>
      stories.where((story) => story.isFavorite).toList();

  @override
  void initState() {
    super.initState();
    _fetchStoriesFromFirestore();
    loadAd();
    // Setup FCM
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle FCM message when the app is in the foreground
      print("FCM Message received: ${message.notification?.title}");
      _handleFCMMessage(message);
    });
  }

  _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final storedFavorites = prefs.getStringList('favoritedStories') ?? [];

    for (String storyJson in storedFavorites) {
      final storyMap = json.decode(storyJson);
      final story = stories.firstWhere((s) => s.title == storyMap['title']);
      if (story != null) {
        story.isFavorite = storyMap['isFavorite'];
        story.content = storyMap['content'];
      }
    }

    setState(() {});
  }

  _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritedStories =
    stories.where((s) => s.isFavorite).toList();
    final storyStrings = favoritedStories.map((s) => json.encode({
      'title': s.title,
      'isFavorite': s.isFavorite,
      'content': s.content,
    })).toList();
    prefs.setStringList('favoritedStories', storyStrings);
  }

  void _handleFCMMessage(RemoteMessage message) {
    // Extract storyId from the FCM message data
    final storyId = message.data['storyId'];
    if (storyId != null) {
      // Find the index of the story with the given storyId
      final storyIndex = stories.indexWhere((story) => story.id == storyId);
      if (storyIndex != -1) {
        // Scroll to the respective page
        _pageController.animateToPage(
          storyIndex,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  void _toggleFavorite(int index) {
    setState(() {
      stories[index].isFavorite = !stories[index].isFavorite;
      _saveFavorites();
    });
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
                int storyIndex = stories.indexOf(favoritedStories[index]);
                if (storyIndex != -1) {
                  Navigator.of(context).pop();
                  _pageController.animateToPage(
                    storyIndex,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            );
          },
        );
      },
    );
  }

  void loadAd() {
    _bannerAd = AdManagerBannerAd(
      adUnitId: 'ca-app-pub-8650911541008756/4254521923',
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
          title: Text(
            'Fact Stories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
          elevation: 4,
          actions: [
            GestureDetector(
              onTap: _showFavoritesList,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    SizedBox(width: 4),
                    Text('${favoritedStories.length}',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: stories.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Center(
                      child: FactStoryWidget(
                        story: stories[index],
                        onFavoriteToggled: () => _toggleFavorite(index),
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MyBannerAdWidget(), // Include the banner ad widget.
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _showFavoritesList,
          child: Icon(Icons.favorite),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      if (isLoading) {
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      } else if (stories.isEmpty) {
        return Scaffold(
          body: Center(child: Text('No stories available.')),
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Fact Stories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            elevation: 4,
            actions: [
              GestureDetector(
                onTap: _showFavoritesList,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.white),
                      SizedBox(width: 4),
                      Text('${favoritedStories.length}',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: Container(
            child: PageView.builder(
              controller: _pageController,
              itemCount: stories.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Center(
                    child: FactStoryWidget(
                      story: stories[index],
                      onFavoriteToggled: () => _toggleFavorite(index),
                    ),
                  ),
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _showFavoritesList,
            child: Icon(Icons.favorite),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

class FactStoryWidget extends StatelessWidget {
  final FactStory story;
  final VoidCallback onFavoriteToggled;

  const FactStoryWidget({Key? key, required this.story, required this.onFavoriteToggled})
      : super(key: key);

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
                      imageUrl: story.imageUrl,
                      placeholder: (context, url) => SizedBox(
                        width: 20.0,
                        height: 20.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 20.0 * 0.33,
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
  String id; // Add this field

  String title;
  String content;
  String imageUrl;
  Timestamp timestamp;

  bool isFavorite;

  FactStory({
    required this.id,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.timestamp,
    this.isFavorite = false,
  });
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
      adUnitId: 'ca-app-pub-8650911541008756/4254521923',
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

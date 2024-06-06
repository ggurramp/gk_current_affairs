import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../path_to_my_banner_ad_widget.dart';
import 'HomePage.dart';
import 'QuizScreen.dart';

void main() {
  runApp(CurrentAffairsApp_hi());
}

class CurrentAffairsApp_hi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrentAffairsScreen_hi(),
    );
  }
}

class CurrentAffairsScreen_hi extends StatefulWidget {
  @override
  _CurrentAffairsScreen_hiState createState() => _CurrentAffairsScreen_hiState();
}

class _CurrentAffairsScreen_hiState extends State<CurrentAffairsScreen_hi> {
  List<String?> titles = [];
  List<String> newsArticles = [];
  List<String?> imageUrls = [];
  int currentPageIndex = 0;
  Set<int> favoriteArticles = {};
  List<String> _formattedTimestamp = [];
  SharedPreferences? prefs;
  ScrollController _scrollController = ScrollController();
  int currentIndex = 0;
  BannerAd? _bannerAd;

  List<String> getArticlesForSelectedDate(String selectedDate) {
    return newsArticles.where((article) {
      final index = newsArticles.indexOf(article);
      return _formattedTimestamp[index] == selectedDate;
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
    fetchCurrentAffairsData();
    _loadFavorites();
    // Initialize AdMob
    MobileAds.instance.initialize();

    // Load the banner ad
    _loadBannerAd();
  }

  @override
  void dispose() {
    // Dispose of the banner ad when the screen is disposed
    _bannerAd?.dispose();
    super.dispose();
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-8650911541008756/4254521923', // Replace with your actual banner ad unit ID
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {});
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );

    // Load the ad
    _bannerAd?.load();
  }

  void _initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  void _showPreviousDates() async {
    final List<String> timestamps = await fetchUniqueTimestamps();

    final selectedTimestamp = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Previous Dates'),
          content: SingleChildScrollView(
            child: Column(
              children: timestamps
                  .map((timestamp) => ListTile(
                title: Text(timestamp),
                onTap: () {
                  Navigator.pop(context, timestamp);
                },
              ))
                  .toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, null);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );

    if (selectedTimestamp != null) {
      final articlesForSelectedDate = getArticlesForSelectedDate(selectedTimestamp);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DateDetailPage(
            articles: articlesForSelectedDate,
            selectedDate: selectedTimestamp,
          ),
        ),
      );
    } else {
      print('No timestamp selected.');
    }
  }

  void _saveFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Filter out invalid indices
    List<int> validIndices = favoriteArticles.where((index) => index >= 0 && index < newsArticles.length).toList();
    await prefs.setStringList('favoriteArticles_hi', validIndices.map((index) => newsArticles[index]).toList());
  }

  void _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> storedFavorites = prefs.getStringList('favoriteArticles_hi') ?? [];

    // Assuming your newsArticles_hi are loaded and ready at this point
    // Convert the List<String> back to Set<int> based on indices
    setState(() {
      favoriteArticles = storedFavorites.map((article) => newsArticles.indexOf(article)).toSet();
    });
  }

  Future<List<Map<String, dynamic>>> fetchCurrent_affairs_hiFromFirestoreByCategory([String? category]) async {
    final firestore = FirebaseFirestore.instance;

    try {
      Query query = firestore.collection('current_affairs_hi').orderBy('timestamp', descending: true);
      if (category != null) {
        query = query.where('category', isEqualTo: category);
      }

      final querySnapshot = await query.get();
      return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error fetching current_affairs_hi: $e');
      return [];
    }
  }

  Future<List<String>> fetchCategoriesFromFirestore() async {
    final firestore = FirebaseFirestore.instance;

    final querySnapshot = await firestore.collection('current_affairs_hi').get();

    Set<String> uniqueCategories = {};

    for (var doc in querySnapshot.docs) {
      final data = doc.data() as Map<String, dynamic>;
      if (data.containsKey('category')) {
        String category = data['category'];
        uniqueCategories.add(category[0].toUpperCase() + category.substring(1).toLowerCase());
      }
    }

    return uniqueCategories.toList();
  }

  Future<List<String>> fetchUniqueTimestamps() async {
    final firestore = FirebaseFirestore.instance;
    final querySnapshot = await firestore
        .collection('current_affairs_hi')
        .orderBy('timestamp', descending: true)
        .get(GetOptions(source: Source.serverAndCache));

    final timestamps = querySnapshot.docs.map((doc) {
      final timestamp = doc['timestamp'] as Timestamp?;
      if (timestamp != null) {
        return DateFormat('dd-MM-yyyy').format(timestamp.toDate());
      } else {
        return '';
      }
    }).toSet().toList();

    return timestamps;
  }

  Future<void> fetchCurrentAffairsData() async {
    try {
      final articlesData = await fetchCurrent_affairs_hiFromFirestoreByCategory();
      setState(() {
        _loadFavorites();
        newsArticles = articlesData.map((data) => data['article'] as String).toList();
        _formattedTimestamp = articlesData.map((data) {
          final timestamp = data['timestamp'] as Timestamp?;
          if (timestamp != null) {
            return DateFormat('dd-MM-yyyy').format(timestamp.toDate());
          } else {
            return '';
          }
        }).toList();
        titles = articlesData.map((data) => data['title'] as String? ?? '').toList();
        imageUrls = articlesData.map((data) => data['imageUrl'] as String?).toList();
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  void _showCategoryModal(List<String> categories) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext bc) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: SingleChildScrollView(
            child: Column(
              children: categories.map((category) {
                return ListTile(
                  title: Text(category),
                  onTap: () async {
                    Navigator.pop(context);
                    final standardizedCategoryValue = category.toLowerCase();
                    print('Selected Category: $standardizedCategoryValue');

                    final articlesData = await fetchCurrent_affairs_hiFromFirestoreByCategory(standardizedCategoryValue);
                    print('Selected Category: $standardizedCategoryValue');
                    print('Fetched data for category: $articlesData');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryDetailScreen(
                          article: articlesData.map((data) => data['article'] as String).toList(),
                          timestamp: articlesData.map((data) {
                            final timestamp = data['timestamp'] as Timestamp?;
                            if (timestamp != null) {
                              return DateFormat('dd-MM-yyyy').format(timestamp.toDate());
                            } else {
                              return '';
                            }
                          }).toList(),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              _showPreviousDates();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '[ ${_formattedTimestamp[currentIndex]} ] ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.deepPurple,
                  size: 40,
                ),
              ],
            ),
          ),
          ButtonTheme(
            minWidth: 0,
            child: ElevatedButton(
              onPressed: () async {
                List<String> categories = await fetchCategoriesFromFirestore();
                _showCategoryModal(categories);
              },
              style: ElevatedButton.styleFrom(
                //primary: Colors.green,
              ),
              child: Text(
                "Topic \n Wise",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ArticleSearch(newsArticles),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesScreen_hi(
                    favoriteArticles_hi: favoriteArticles.map((index) => newsArticles[index]).toList(),
                  ),
                ),
              );
            },
          ),
          Text(favoriteArticles.isEmpty ? "" : "${favoriteArticles.length}")
        ],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), // Add border to the container
              borderRadius: BorderRadius.circular(8.0), // Add border radius for rounded corners
              // You can add more styling properties as needed
            ),
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Add margin around each container
            child: ListTile(
              title: Text(titles[index] ?? ''),
              onTap: () {
                // Handle tap, navigate to article details screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailsScreen(
                      title: titles[index] ?? '',
                      content: newsArticles[index] ?? '',
                      imageUrl: imageUrls[index],
                      timestamp: _formattedTimestamp[index] ?? '',
                    ),
                  ),
                );
              },
              trailing: IconButton(
                icon: favoriteArticles.contains(index)
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    if (favoriteArticles.contains(index)) {
                      favoriteArticles.remove(index);
                    } else {
                      favoriteArticles.add(index);
                    }
                    _saveFavorites();
                  });
                },
              ),
            ),
          );
        },
      ),

    );
  }
}

class ArticleDetailsScreen extends StatelessWidget {
  final String title;
  final String content;
  final String? imageUrl;
  final String timestamp;

  ArticleDetailsScreen({
    required this.title,
    required this.content,
    required this.timestamp,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (imageUrl != null)
              Container(
                height: 200,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: imageUrl!,
                  placeholder: (context, url) => SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity * 0.33,
                          color: Colors.blue,
                        ),
                        Container(
                          width: double.infinity * 0.33,
                          color: Colors.green,
                        ),
                        Container(
                          width: double.infinity * 0.34,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Timestamp: $timestamp',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritesScreen_hi extends StatelessWidget {
  final List<String> favoriteArticles_hi;

  FavoritesScreen_hi({required this.favoriteArticles_hi});

  Widget _buildBoldFirstLineText(String article) {
    final int cutOff = article.indexOf(' ', 50) + 1; // Cut off after the first 50 characters or the next space
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(text: article.substring(0, cutOff), style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: article.substring(cutOff)),
        ],
      ),
    );
  }

  Widget _buildBannerAd() {
    // Replace this with your banner ad widget
    // Replace this with your actual MyBannerAdWidget
    return MyBannerAdWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteArticles_hi.length + 1, // Add 1 for the banner ad
        itemBuilder: (context, index) {
          if (index == 0) {
            // Display banner ad at the top
            return _buildBannerAd();
          } else {
            // Display favorite articles
            return ListTile(
              title: _buildBoldFirstLineText(favoriteArticles_hi[index - 1]),
              // Subtract 1 to get the correct index for favorite articles
              // You can add more details or widgets here
            );
          }
        },
      ),
    );
  }
}

class ArticleSearch extends SearchDelegate<String> {
  final List<String> allArticles;

  ArticleSearch(this.allArticles);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> results = allArticles.where((article) => article.toLowerCase().contains(query.toLowerCase())).toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(results[index]),
        onTap: () {
          close(context, results[index]);
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestionList = query.isEmpty
        ? []
        : allArticles.where((article) => article.toLowerCase().contains(query.toLowerCase())).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestionList[index]),
        onTap: () {
          query = suggestionList[index];
          showResults(context);
        },
      ),
    );
  }
}

class DateDetailPage extends StatelessWidget {
  final List<String> articles;
  final String selectedDate;

  DateDetailPage({required this.articles, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedDate),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(articles[index]),
          );
        },
      ),
    );
  }
}

class CategoryDetailScreen extends StatelessWidget {
  final List<String> article;
  final List<String> timestamp;

  CategoryDetailScreen({required this.article, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Detail'),
      ),
      body: ListView.builder(
        itemCount: article.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(article[index]),
            subtitle: Text(timestamp[index]),
          );
        },
      ),
    );
  }
}

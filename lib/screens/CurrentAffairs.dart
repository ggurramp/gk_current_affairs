import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart'; // Import the google_mobile_ads package
import '../path_to_my_banner_ad_widget.dart';
import 'HomePage.dart';
import 'QuizScreen.dart';

// void main() {
//   runApp(CurrentAffairsApp());
// }

// class CurrentAffairsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CurrentAffairsScreen(),
//     );
//   }
// }

class CurrentAffairsScreen extends StatefulWidget {
  final String title;

  CurrentAffairsScreen({required this.title});
  @override
  _CurrentAffairsScreenState createState() => _CurrentAffairsScreenState();
}

class _CurrentAffairsScreenState extends State<CurrentAffairsScreen> {
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

  void _saveFavorites() {
    if (prefs != null) {
      prefs!.setStringList('favoriteArticles', favoriteArticles.map((index) => newsArticles[index]).toList());
    }
  }

  Future<List<Map<String, dynamic>>> fetchCurrent_affairsFromFirestoreByCategory([String? category]) async {
    final firestore = FirebaseFirestore.instance;

    try {
      Query query = firestore.collection('current_affairs').orderBy('timestamp', descending: true);
      if (category != null) {
        query = query.where('category', isEqualTo: category);
      }

      final querySnapshot = await query.get();
      return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error fetching current_affairs: $e');
      return [];
    }
  }


  Future<List<String>> fetchCategoriesFromFirestore() async {
    final firestore = FirebaseFirestore.instance;

    final querySnapshot = await firestore.collection('current_affairs').get();

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
        .collection('current_affairs')
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
      final articlesData = await fetchCurrent_affairsFromFirestoreByCategory();
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
      _loadFavorites(); // Add this line
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

                    final articlesData = await fetchCurrent_affairsFromFirestoreByCategory(standardizedCategoryValue);
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

  void _loadFavorites() {
    if (prefs != null) {
      List<String> storedFavorites = prefs!.getStringList('favoriteArticles') ?? [];

      setState(() {
        favoriteArticles = storedFavorites.map((article) => newsArticles.indexOf(article)).toSet();
      });
    }
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
                primary: Colors.green,
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
                  builder: (context) => FavoritesScreen(
                    favoriteArticles: favoriteArticles
                        .map((index) => newsArticles[index])
                        .toList(),
                  ),
                ),
              );
            },
          ),
          Text(favoriteArticles.isEmpty ? "" : "${favoriteArticles.length}")
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: PageController(),
              itemCount: newsArticles.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (imageUrls[index] != null)
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: CachedNetworkImage(
                                imageUrl: imageUrls[index]!,
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
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyBannerAdWidget(), // Add the banner ad here
                                Text(
                                  titles[index] ?? '',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text(
                                  newsArticles[index] ?? '',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                                MyBannerAdWidget(), // Add the banner ad here
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    GestureDetector(
                                      onTap: () {
                                        //_showPreviousDates();
                                      },

                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            '[ ${_formattedTimestamp[index]} ] ',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.pink,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    IconButton(
                                      icon: favoriteArticles.contains(index)
                                          ? Icon(Icons.favorite, color: Colors.red)
                                          : Icon(Icons.favorite_border),
                                      onPressed: () {
                                        setState(() {
                                          if (index < newsArticles.length) {
                                            if (favoriteArticles.contains(index)) {
                                              favoriteArticles.remove(index);
                                            } else {
                                              favoriteArticles.add(index);
                                            }
                                            _saveFavorites();
                                          }
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // if (_bannerAd != null)
          //   Container(
          //     height: 50.0, // Adjust the height as needed
          //     child: AdWidget(ad: _bannerAd!),
          //   ),
        ],
      ),
    );
  }
}

class ExpandableDropdown extends StatefulWidget {
  final String article;

  ExpandableDropdown({required this.article});

  @override
  _ExpandableDropdownState createState() => _ExpandableDropdownState();
}

class _ExpandableDropdownState extends State<ExpandableDropdown> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text(
            widget.article.length > 120
                ? widget.article.substring(0, 120)
                : widget.article,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            icon: Icon(
              isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: Colors.pink,
              size: 40,
            ),
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ),
        if (isExpanded)
          Padding(
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            child: Text(
              widget.article,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
      ],
    );
  }
}



class FavoritesScreen extends StatelessWidget {
  final List<String> favoriteArticles;

  FavoritesScreen({required this.favoriteArticles});

  Widget _buildBoldFirstLineText(String article) {
    final int cutOff = article.indexOf(' ', 50) + 1;
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
        itemCount: favoriteArticles.length + 1, // Add 1 for the banner ad
        itemBuilder: (context, index) {
          if (index == 0) {
            // Display banner ad at the top
            return _buildBannerAd();
          } else {
            // Display favorite articles
            return ListTile(
              title: _buildBoldFirstLineText(favoriteArticles[index - 1]),
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
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? allArticles
        : allArticles
        .where((article) => article.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: _buildBoldFirstLineText(suggestionList[index]),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = allArticles
        .where((article) => article.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: _buildBoldFirstLineText(suggestionList[index]),
      ),
    );
  }

  Widget _buildBoldFirstLineText(String article) {
    final int cutOff = article.indexOf(' ', 50) + 1; // Cut off after the first 50 characters or the next space
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(text: article.substring(0, cutOff), style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: article.substring(cutOff))
        ],
      ),
    );
  }
}




class CategoryDetailScreen extends StatelessWidget {
  final List<String> article;
  final List<String> timestamp;

  CategoryDetailScreen({
    required this.article,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Articles by Category")),
      body: ListView.builder(
        itemCount: article.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ExpansionTile(
              title: Text(
                article[index],
                maxLines: 1, // Show only one line when collapsed
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              children: [
                MyBannerAdWidget(), // Add the banner ad here
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    article[index],
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    timestamp[index],
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
class DateDetailPage extends StatefulWidget {
  final List<String> articles;
  final String selectedDate;

  DateDetailPage({
    required this.articles,
    required this.selectedDate,

  });

  @override
  _DateDetailPageState createState() => _DateDetailPageState();
}

class _DateDetailPageState extends State<DateDetailPage> {
  late List<bool> expansionStates;

  @override
  void initState() {
    super.initState();
    expansionStates = List<bool>.filled(widget.articles.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News for ${widget.selectedDate}"),
      ),
      body: ListView.builder(
        itemCount: widget.articles.length,
        itemBuilder: (context, index) {
          final article = widget.articles[index];
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    expansionStates[index]
                        ? article
                        : article.split('\n').take(2).join('\n'), // Show first 2 lines only
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    maxLines: expansionStates[index] ? null : 2,
                    overflow: expansionStates[index] ? TextOverflow.visible : TextOverflow.ellipsis,
                  ),
                  if (article.split('\n').length > 2)
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            expansionStates[index] = !expansionStates[index];
                          });
                        },
                        child: Icon(
                          expansionStates[index]
                              ? Icons.arrow_drop_up // Show upwards arrow when expanded
                              : Icons.arrow_drop_down, // Dropdown arrow when collapsed
                          color: Colors.blue,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

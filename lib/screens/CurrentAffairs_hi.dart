import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  List<String> newsArticles = [];
  int currentPageIndex = 0;
  Set<int> favoriteArticles_hi = {}; // Store indices of favorite articles
  List<String> _formattedTimestamp = [];
  ScrollController _scrollController = ScrollController();
  int currentIndex = 0; // Initialize it with your preferred default value
  List<String> getArticlesForSelectedDate(String selectedDate) {
    return newsArticles.where((article) {
      final index = newsArticles.indexOf(article);
      return _formattedTimestamp[index] == selectedDate;
    }).toList();
  }


  @override
  void initState() {
    super.initState();
    fetchCurrentAffairsData();
    _loadFavorites();
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
                  Navigator.pop(context, timestamp); // Return the selected timestamp
                },
              ))
                  .toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, null); // Close the dialog without selecting
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
    await prefs.setStringList('favoriteArticles_hi', favoriteArticles_hi.map((index) => newsArticles[index]).toList());
  }
  Future<List<Map<String, dynamic>>> fetchCurrent_affairs_hiFromFirestoreByCategory([String? category]) async {
    final firestore = FirebaseFirestore.instance;

    try {
      Query query = firestore.collection('current_affairs_hi').orderBy('timestamp', descending: true);
      if (category != null) {
        query = query.where('category', isEqualTo: category);  // Use the category field for querying
      }

      final querySnapshot = await query.get();
      return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      print('Error fetching current_affairs_hi: $e');
      return []; // Return empty list in case of an error
    }
  }
  Future<List<String>> fetchCategoriesFromFirestore() async {
    final firestore = FirebaseFirestore.instance;


    final querySnapshot = await firestore.collection('current_affairs_hi').get();

    // Extract the unique categories using a Set to avoid duplicates
    Set<String> uniqueCategories = {};

    for (var doc in querySnapshot.docs) {
      final data = doc.data() as Map<String, dynamic>;
      if (data.containsKey('category')) {
        String category = data['category'];

        // Capitalize the first letter and make the rest lowercase to ensure uniqueness and consistent formatting
        uniqueCategories.add(category[0].toUpperCase() + category.substring(1).toLowerCase());
      }
    }

    return uniqueCategories.toList();
  }
  Future<List<String>> fetchUniqueTimestamps() async {
    final firestore = FirebaseFirestore.instance;
    final querySnapshot = await firestore
        .collection('current_affairs_hi') // Use the Telugu collection
        .orderBy('timestamp', descending: true) // Order by timestamp in descending order (latest first)
        .get(GetOptions(source: Source.serverAndCache));

    final timestamps = querySnapshot.docs.map((doc) {
      final timestamp = doc['timestamp'] as Timestamp?;
      if (timestamp != null) {
        return DateFormat('dd-MM-yyyy').format(timestamp.toDate()); // Change the date format here
      } else {
        return ''; // Provide a default value or handle null timestamps as needed
      }
    }).toSet().toList(); // Use a Set to ensure uniqueness

    return timestamps;
  }


  Future<void> fetchCurrentAffairsData() async {
    try {
      final firestore = FirebaseFirestore.instance;
      final querySnapshot = await firestore.collection('current_affairs_hi') // Use the Telugu collection
          .orderBy('timestamp', descending: true) // Sort articles by timestamp in descending order
          .get();

      final List<String> articles = querySnapshot.docs
          .map((doc) => doc['article'] as String)
          .toList();

      final List<String> timestamps = querySnapshot.docs.map((doc) {
        final timestamp = doc['timestamp'] as Timestamp?;
        if (timestamp != null) {
          return DateFormat('dd-MM-yyyy').format(timestamp.toDate());
        } else {
          return '';
        }
      }).toList();

      setState(() {
        newsArticles = articles;
        _formattedTimestamp = timestamps;
        _loadFavorites(); // Load favorites AFTER newsArticles has been populated
      });
    } catch (error) {
      print('Error fetching data: $error');
      // Handle the error (e.g., show an error message)
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

                    // Navigate to the CategoryDetailScreen with the selected category data
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

// Modify the CategoryDetailScreen constructor

  void _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> storedFavorites = prefs.getStringList('favoriteArticles_hi') ?? [];

    // Assuming your newsArticles are loaded and ready at this point
    // Convert the List<String> back to Set<int> based on indices
    setState(() {
      favoriteArticles_hi = storedFavorites.map((article) => newsArticles.indexOf(article)).toSet();
    });
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
              mainAxisSize: MainAxisSize.min, // To ensure the Row takes only as much width as necessary
              children: [
                Text(
                  '[ ${_formattedTimestamp[currentIndex]} ] ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    //decoration: TextDecoration.underline,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.deepPurple,
                  size: 40,
                ),// Dropdown icon
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
                primary: Colors.green, // Change the button's background color
              ),
              child: Text(
                "Topic \n Wise",
                style: TextStyle(
                  color: Colors.white, // Change the text color
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
                    favoriteArticles_hi: favoriteArticles_hi.map((index) => newsArticles[index]).toList(),
                  ),
                ),
              );
            },
          ),
          Text(favoriteArticles_hi.isEmpty ? "" : "${favoriteArticles_hi.length}")

        ],
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: newsArticles?.length ?? 0,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0), // Adjust for spacing between the articles
              child: Card( // Using the Card widget
                  elevation: 5, // Adjust for shadow intensity
                  child: Padding( // Padding inside the card for spacing
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // This is the main content
                        ExpandableDropdown(article: newsArticles[index]),
                        SizedBox(height: 0.0), // some spacing
                        // This is the favorite button moved to be below the content
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _showPreviousDates();
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,  // to ensure the Row takes only as much width as necessary
                                children: [

                                  Text(
                                    '[ ${_formattedTimestamp[index]} ] ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      //decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down, color: Colors.deepPurple,size: 40),  // Dropdown icon
                                ],
                              ),
                            ),


                            IconButton(
                              icon: favoriteArticles_hi.contains(index)
                                  ? Icon(Icons.favorite, color: Colors.red)
                                  : Icon(Icons.favorite_border),
                              onPressed: () {
                                setState(() {
                                  if (favoriteArticles_hi.contains(index)) {
                                    favoriteArticles_hi.remove(index);
                                  } else {
                                    favoriteArticles_hi.add(index);
                                  }
                                  _saveFavorites();
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(), // for separation
// for separation
                      ],
                    ),
                  )
              ));
        },
      ),

      // ... [Rest of the code remains the same]
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
      //crossAxisAlignment: CrossAxisAlignment.stretch,
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
  final List<String> favoriteArticles_hi;

  FavoritesScreen({required this.favoriteArticles_hi});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteArticles_hi.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: _buildBoldFirstLineText(favoriteArticles_hi[index]), // Updated here
            // You can add more details or widgets here
          );
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
  List<bool> isExpandedList = List.filled(100, false); // Assuming a maximum of 100 articles

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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpandedList[index] = !isExpandedList[index];
                      });
                    },
                    child: Text(
                      isExpandedList[index]
                          ? article
                          : article.split('\n').take(2).join('\n'), // Show first 2 lines only
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      maxLines: isExpandedList[index] ? null : 2,
                      overflow: isExpandedList[index] ? TextOverflow.visible : TextOverflow.ellipsis,
                    ),
                  ),
                  if (!isExpandedList[index] && article.split('\n').length > 2)
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpandedList[index] = !isExpandedList[index];
                          });
                        },
                        child: Icon(
                          isExpandedList[index] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          color: Colors.blue,
                          size: 24,
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

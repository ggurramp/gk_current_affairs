import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fact Stories',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FactStories_hi(),
    );
  }
}

class FactStories_hi extends StatefulWidget {
  @override
  _FactStories_hiState createState() => _FactStories_hiState();
}

class _FactStories_hiState extends State<FactStories_hi> {
  List<FactStory> stories_hi = [];
  int currentIndex = 0;
  double initialDrag = 0.0;
  bool isLoading = true;

  _fetchStoriesFromFirestore() async {
    final CollectionReference stories_hiRef = FirebaseFirestore.instance.collection('stories_hi');
    final QuerySnapshot snapshot = await stories_hiRef.get();

    final fetchedStories = snapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return FactStory(title: data['title'] ?? '', content: data['content'] ?? '');
    }).toList();

    setState(() {
      stories_hi = fetchedStories;
      isLoading = false;
    });

    _loadFavorites();  // Load favorites after the stories_hi are loaded.
  }


  List<FactStory> get favoritedStories => stories_hi.where((story) => story.isFavorite).toList();

  @override
  void initState() {
    super.initState();
    _fetchStoriesFromFirestore();
  }


  _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final storedFavorites = prefs.getStringList('favoritedStories') ?? [];

    for (String storyJson in storedFavorites) {
      final storyMap = json.decode(storyJson);
      final story = stories_hi.firstWhere((s) => s.title == storyMap['title']);
      if (story != null) {
        story.isFavorite = storyMap['isFavorite'];
      }
    }

    setState(() {});
  }

  _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritedStories = stories_hi.where((s) => s.isFavorite).toList();
    final storyStrings = favoritedStories.map((s) => json.encode({'title': s.title, 'isFavorite': s.isFavorite})).toList();
    prefs.setStringList('favoritedStories', storyStrings);
  }

  void _toggleFavorite(int index) {
    setState(() {
      stories_hi[index].isFavorite = !stories_hi[index].isFavorite;
      _saveFavorites();
    });
  }

  void _navigatePrevious() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  void _navigateNext() {
    if (currentIndex < stories_hi.length - 1) {
      setState(() {
        currentIndex++;
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
              onTap: () {  // Added onTap
                int storyIndex = stories_hi.indexOf(favoritedStories[index]);
                if (storyIndex != -1) {
                  setState(() {
                    currentIndex = storyIndex;
                  });
                }
                Navigator.of(context).pop();  // Close the modal bottom sheet
              },
            );
          },
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    } else if (stories_hi.isEmpty) {
      return Scaffold(
        body: Center(child: Text('No stories_hi available.')),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
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
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  MediaQuery.of(context).padding.top,
            ),
            child: Center(
              child: FactStoryWidget(
                story: stories_hi[currentIndex],
                onFavoriteToggled: () => _toggleFavorite(currentIndex),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 0) _navigatePrevious();
            if (index == 1) _navigateNext();
          },
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
        ),
      );
    }
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
            crossAxisAlignment: CrossAxisAlignment.start,  // Aligns items to the top
            children: [
              Flexible(  // Use Flexible instead of Expanded
                child: Text(
                  story.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
  bool isFavorite;

  FactStory({required this.title, required this.content, this.isFavorite = false});
}

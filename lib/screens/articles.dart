import 'package:flutter/material.dart';





class ArticleList extends StatelessWidget {
  final List<String> articleTitles = [
    "Article 1",
    "Article 2",
    "Article 3",
    // Add more articles as needed
  ];

  final Map<String, String> articleUrls = {
    "Article 1": "https://www.eenadu.net/telugu-news/world/did-not-discuss-katchatheevu-issue-sri-lanka-spokesman/0800/124063987",
    "Article 2": "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600",
    "Article 3": "https://plus.unsplash.com/premium_photo-1676637000058-96549206fe71?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
    // Add more article URLs corresponding to their titles
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article List'),
      ),
      body: ListView.builder(
        itemCount: articleTitles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(articleTitles[index]),
            onTap: () {
              _showArticle(context, articleTitles[index]);
            },
          );
        },
      ),
    );
  }

  void _showArticle(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text("Do you want to read this article?"),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Read'),
              onPressed: () {
                String url = articleUrls[title]!;
                // Open the article URL using appropriate method (e.g., webview)
                // For simplicity, let's just print the URL here
                print("Opening article at $url");
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

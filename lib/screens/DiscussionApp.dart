import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(DiscussionApp());

class DiscussionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discussion Board',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DiscussionScreen(),
    );
  }
}

class DiscussionScreen extends StatefulWidget {
  @override
  _DiscussionScreenState createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen> {
  final List<Query> _queries = [];

  void _addQuery(String text) {
    setState(() {
      _queries.add(Query(text));
    });
  }

  void _addComment(int index, String text) {
    setState(() {
      _queries[index].comments.add(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Discussion Board'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
    ),


      body: ListView.builder(
        itemCount: _queries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_queries[index].text),
            onTap: () async {
              String? comment = await _showCommentDialog();
              if (comment != null && comment.isNotEmpty) {
                _addComment(index, comment);
              }
            },
            subtitle: _queries[index].comments.isEmpty
                ? null
                : Text(_queries[index].comments.join(', ')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          String? query = await _showPostDialog();
          if (query != null && query.isNotEmpty) {
            _addQuery(query);
          }
        },
      ),
    );
  }

  Future<String?> _showPostDialog() {
    TextEditingController controller = TextEditingController();
    return showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Post a Query"),
        content: TextField(controller: controller),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: Text("Post"),
            onPressed: () => Navigator.pop(context, controller.text),
          ),
        ],
      ),
    );
  }

  Future<String?> _showCommentDialog() {
    TextEditingController controller = TextEditingController();
    return showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Add a Comment"),
        content: TextField(controller: controller),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: Text("Add Comment"),
            onPressed: () => Navigator.pop(context, controller.text),
          ),
        ],
      ),
    );
  }
}

class Query {
  final String text;
  final List<String> comments;

  Query(this.text) : comments = [];
}

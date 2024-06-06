import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

// Update the query to retrieve all documents from the 'postquestions' collection
final postquestionsQuery = FirebaseFirestore.instance.collection('postquestions');

class PostQuestionScreen extends StatefulWidget {
  @override
  _PostQuestionScreenState createState() => _PostQuestionScreenState();
}

class _PostQuestionScreenState extends State<PostQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Doubt'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: postquestionsQuery.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          print(snapshot.data);

          final postquestions = snapshot.data!.docs.map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return PostQuestion(
              id: doc.id,
              title: data['title'],
              content: data['content'],
              postanswers: [], // You can add postanswers if needed.
            );
          }).toList();

          return ListView.builder(
            itemCount: postquestions.length,
            itemBuilder: (context, index) {
              final postquestion = postquestions[index];
              return PostQuestionCard(postquestion: postquestion);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _handleAddPostQuestion(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PostQuestionCard extends StatelessWidget {
  final PostQuestion postquestion;

  PostQuestionCard({required this.postquestion});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postquestion.title ?? 'No Title',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(postquestion.content ?? 'No Content'),
            SizedBox(height: 16),
            Text(
              'Post Answers:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              children: postquestion.postanswers.map((postanswer) {
                return PostAnswerCard(postanswer: postanswer);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PostAnswerCard extends StatelessWidget {
  final PostAnswer postanswer;

  PostAnswerCard({required this.postanswer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(postanswer.content ?? 'No Content'),
            SizedBox(height: 8),
            Text('Answered by: ${postanswer.author ?? 'Unknown'}'),
          ],
        ),
      ),
    );
  }
}

class PostQuestion {
  final String? id;
  final String? title;
  final String? content;
  final List<PostAnswer> postanswers;

  PostQuestion({
    this.id,
    this.title,
    this.content,
    required this.postanswers,
  });
}

class PostAnswer {
  final String? id;
  final String? content;
  final String? author;

  PostAnswer({
    this.id,
    this.content,
    this.author,
  });
}

void _handleAddPostQuestion(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage(onLoginSuccess: () {  },)),
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostQuestionForm(currentUser: user),
      ),
    );
  }
}


class PostQuestionForm extends StatefulWidget {
  final User currentUser;

  PostQuestionForm({required this.currentUser});

  @override
  _PostQuestionFormState createState() => _PostQuestionFormState();
}

class _PostQuestionFormState extends State<PostQuestionForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  void _submitPostQuestion() {
    if (_formKey.currentState!.validate()) {
      final title = _titleController.text;
      final content = _contentController.text;
      final userId = widget.currentUser.uid;

      FirebaseFirestore.instance.collection('postquestions').add({
        'title': title,
        'content': content,
        'userId': userId,
        'timestamp': FieldValue.serverTimestamp(),
      }).then((_) {
        Navigator.pop(context);
      }).catchError((error) {
        print("Error submitting post question: $error");
        // Handle the error gracefully, e.g., show an error message to the user.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a Question'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _contentController,
                maxLines: 5,
                decoration: InputDecoration(labelText: 'Content'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter content';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitPostQuestion,
                child: Text('Submit Post Question'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

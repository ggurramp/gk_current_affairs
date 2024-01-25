import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDataDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('your_collection_name').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator(); // Display a loading indicator while data is being fetched.
        }

        final documents = snapshot.data!.docs;

        // Process and display your Firestore data here.
        // You can use ListView.builder, GridView.builder, or any other widget
        // that suits your data display needs.
        return ListView.builder(
          itemCount: documents.length,
          itemBuilder: (context, index) {
            final data = documents[index].data() as Map<String, dynamic>;

            // Extract data fields from 'data' and display them as needed.
            final title = data['title'];
            final content = data['content'];

            return ListTile(
              title: Text(title),
              subtitle: Text(content),
            );
          },
        );
      },
    );
  }
}

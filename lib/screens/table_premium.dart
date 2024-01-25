import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CustomTableField {
  final String fieldName; // Name of the field in Firestore

  CustomTableField({required this.fieldName});
}

class CustomFirestoreTable extends StatelessWidget {
  final String premium_tables;
  final List<CustomTableField> fields;

  const CustomFirestoreTable({
    required this.premium_tables,
    required this.fields,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection(premium_tables).snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        final data = snapshot.requireData.docs;

        return DataTable(
          columns: fields.map((field) => DataColumn(label: Text(field.fieldName))).toList(),
          rows: data.map((doc) {
            Map<String, dynamic> docData = doc.data() as Map<String, dynamic>; // Explicitly cast here
            return DataRow(
              cells: fields.map((field) =>
                  DataCell(Text('${docData.containsKey(field.fieldName) ? docData[field.fieldName] : ""}'))
              ).toList(),
            );
          }).toList(),
        );


      },
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Ensure Firebase is initialized

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Firestore Table')),
      body: CustomFirestoreTable(
        premium_tables: 'yourFirestoreCollectionPath',
        fields: [
          CustomTableField(fieldName: 'name'),
          CustomTableField(fieldName: 'age'),
          // Add other fields of your choice
        ],
      ),
    ),
  ));
}

import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore PDF Upload',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> _uploadPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      String fileName = file.path.split('/').last;

      try {
        List<int> bytes = await file.readAsBytes();
        String base64Data = base64Encode(bytes);

        await firestore.collection('pdfs').add({
          'name': fileName,
          'data': base64Data,
        });

        print('PDF uploaded successfully: $fileName');

        setState(() {});

      } catch (e) {
        print('Error uploading PDF: $e');
      }
    }
  }

  Future<void> _openPDF(String name, String data) async {
    try {
      List<int> bytes = base64Decode(data);
      final tempDir = await getTemporaryDirectory();
      final tempFile = File('${tempDir.path}/$name');
      await tempFile.writeAsBytes(bytes);

      print('File path: ${tempFile.path}');

      // Get file URL using file scheme
      String fileUrl = 'file://${tempFile.path}';

      // Launch file using file URL
      await launch(fileUrl);
    } catch (e) {
      print('Error opening PDF: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore PDF Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _uploadPDF,
              child: Text('Upload PDF'),
            ),
            SizedBox(height: 20),
            Text('Uploaded PDFs:', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Expanded(
              child: StreamBuilder(
                stream: firestore.collection('pdfs').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }

                  if (snapshot.data == null) {
                    return Text('No PDFs found');
                  }

                  return ListView(
                    children: snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                      return ListTile(
                        title: Text(data['name']),
                        onTap: () => _openPDF(data['name'], data['data']),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<List<Map<String, dynamic>>> fetchPDFData() async {
  QuerySnapshot<Map<String, dynamic>> snapshot =
  await FirebaseFirestore.instance.collection('pdfs').get();

  return snapshot.docs.map((doc) => doc.data()).toList();
}
class PdfViewerPage extends StatefulWidget {
  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  List<Map<String, dynamic>> pdfData = [];
  List<File> pdfFiles = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadPDFData();
  }

  Future<void> loadPDFData() async {
    setState(() {
      isLoading = true;
    });

    pdfData = await fetchPDFData();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    for (var data in pdfData) {
      final url = data['url'];
      final filename = basename(url);
      final dir = await getApplicationDocumentsDirectory();
      var file = File('${dir.path}/$filename');

      if (await file.exists()) {
        // File exists locally, load it from local storage
        pdfFiles.add(file);
      } else {
        // File does not exist locally, fetch it from Firebase
        final response = await http.get(Uri.parse(url));
        final bytes = response.bodyBytes;
        await file.writeAsBytes(bytes, flush: true);
        pdfFiles.add(file);

        // Save file path to SharedPreferences
        await prefs.setString(filename, file.path);
      }
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: pdfFiles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pdfData[index]['name']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PdfViewer(pdfFile: pdfFiles[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class PdfViewer extends StatelessWidget {
  final File pdfFile;

  PdfViewer({required this.pdfFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: pdfFile.path,
      ),
    );
  }
}

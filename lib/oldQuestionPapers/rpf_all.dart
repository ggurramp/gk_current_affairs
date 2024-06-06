
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Map<String, dynamic>>> fetchPDFData() async {
  QuerySnapshot<Map<String, dynamic>> snapshot =
  await FirebaseFirestore.instance
      .collection('rpf')
      .orderBy('timestamp', descending: true)
      .get();

  return snapshot.docs.map((doc) => doc.data()).toList();
}

class rpf_all extends StatefulWidget {
  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<rpf_all> {
  List<Map<String, dynamic>> pdfData = [];
  List<File?> pdfFiles = [];
  List<Map<String, dynamic>> filteredData = [];
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
        // File does not exist locally, fetch it from Google Drive
        final directDownloadUrl = '$url?export=download'; // Modified to add export=download parameter
        final response = await http.get(Uri.parse(directDownloadUrl));
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

  void _searchByName(String query) {
    setState(() {
      filteredData = pdfData
          .where((data) =>
          data['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: PdfSearchDelegate(pdfData, _searchByName),
              );
            },
          ),
        ],
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: pdfFiles.length,
        itemBuilder: (context, index) {
          return Container(
            margin:
            EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: Text(pdfData[index]['name']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PdfViewer(pdfFile: pdfFiles[index]!),
                  ),
                );
              },
            ),
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
      appBar: AppBar(),
      body: PDFView(
        filePath: pdfFile.path,
      ),
    );
  }
}

class PdfSearchDelegate extends SearchDelegate<String> {
  final List<Map<String, dynamic>> pdfData;
  final Function(String) searchFunction;

  PdfSearchDelegate(this.pdfData, this.searchFunction);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(); // Implement your search results view here
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? pdfData
        : pdfData
        .where((data) =>
        data['name'].toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestionList[index]['name']),
        onTap: () {
          searchFunction(query);
          close(context, suggestionList[index]['name']);
        },
      ),
    );
  }
}

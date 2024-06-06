// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'dart:io';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
//
// class PdfViewerPage extends StatefulWidget {
//   @override
//   _PdfViewerPageState createState() => _PdfViewerPageState();
// }
//
// class _PdfViewerPageState extends State<PdfViewerPage> {
//   final List<String> pdfAssets = [
//     'assets/ilide.info-reasoning-and-aptitude-in-telugu-medium-pr_025b0ca402b164b8acab845273264902.pdf',
//   // 'assets/pdf/aptitude.pdf',
//     // Add more asset paths as needed
//   ];
//
//   final List<String> pdfNames = [
//     'Reasoning',
//    // 'Aptitude',
//     // Add more names as needed
//   ];
//
//   List<File> pdfFiles = [];
//   bool isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     loadAssets();
//   }
//
//   Future<void> loadAssets() async {
//     setState(() {
//       isLoading = true;
//     });
//
//     for (var assetPath in pdfAssets) {
//       final bytes = await rootBundle.load(assetPath);
//       final filename = basename(assetPath);
//       final dir = await getApplicationDocumentsDirectory();
//       var file = File('${dir.path}/$filename');
//       await file.writeAsBytes(bytes.buffer.asUint8List(), flush: true);
//       pdfFiles.add(file);
//     }
//
//     setState(() {
//       isLoading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         // title: Text(
//         //   "Flutter PDF Viewer",
//         //   style: TextStyle(fontWeight: FontWeight.bold),
//         // ),
//       ),
//       body: isLoading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//         itemCount: pdfFiles.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(pdfNames[index]), // Display custom name
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       PdfViewer(pdfFile: pdfFiles[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class PdfViewer extends StatelessWidget {
//   final File pdfFile;
//
//   PdfViewer({required this.pdfFile});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // title: Text('PDF Viewer'),
//       ),
//       body: PDFView(
//         filePath: pdfFile.path,
//       ),
//     );
//   }
// }

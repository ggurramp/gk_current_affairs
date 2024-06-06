import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';

class PdfUploader extends StatefulWidget {
  @override
  _PdfUploaderState createState() => _PdfUploaderState();
}

class _PdfUploaderState extends State<PdfUploader> {
  final mainReference = FirebaseDatabase.instance.reference().child('Database');

  Future<void> getPdfAndUpload() async {
    var rng = Random();
    String randomName = "";
    for (var i = 0; i < 20; i++) {
      randomName += rng.nextInt(100).toString();
    }
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      String fileName = '${randomName}.pdf';
      Uint8List bytes = await file.readAsBytes();
      savePdf(bytes, fileName);
    }
  }

  Future<void> savePdf(Uint8List asset, String name) async {
    Reference reference = FirebaseStorage.instance.ref().child(name);
    UploadTask uploadTask = reference.putData(asset);
    TaskSnapshot snapshot = await uploadTask;
    String url = await snapshot.ref.getDownloadURL();
    print(url);
    documentFileUpload(url);
  }

  void documentFileUpload(String str) {
    var data = {
      "PDF": str,
    };
    mainReference.child("Documents").child('pdf').set(data).then((_) {
      print("File Uploaded to Database");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Uploader"),
      ),
      body: Center(
        child: Text(
          "Select a PDF file to upload.",
          style: TextStyle(fontSize: 16),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getPdfAndUpload,
        tooltip: 'Select PDF',
        child: Icon(Icons.file_upload),
      ),
    );
  }
}

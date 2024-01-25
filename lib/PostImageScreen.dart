// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class PostImageScreen extends StatefulWidget {
//   @override
//   _PostImageScreenState createState() => _PostImageScreenState();
// }
//
// class _PostImageScreenState extends State<PostImageScreen> {
//   File? _image;
//   final picker = ImagePicker();
//   TextEditingController _descriptionController = TextEditingController();
//
//   Future getImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Post Image'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             _image != null
//                 ? Image.file(
//               _image!,
//               height: 200,
//               width: 200,
//             )
//                 : Container(),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: getImage,
//               child: Text('Select Image'),
//             ),
//             SizedBox(height: 16),
//             TextField(
//               controller: _descriptionController,
//               decoration: InputDecoration(labelText: 'Description'),
//               maxLines: 3,
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle posting logic here
//                 if (_image != null) {
//                   String description = _descriptionController.text;
//                   // Implement your logic to post the image and description
//                   // For example, you can upload the image to a server and store the description.
//                   // You might want to use a package like dio for network requests.
//                 } else {
//                   // Handle case when no image is selected
//                   print('Please select an image');
//                 }
//               },
//               child: Text('Post'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: PostImageScreen(),
//   ));
// }

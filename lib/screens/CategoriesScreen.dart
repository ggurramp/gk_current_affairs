// import 'package:flutter/material.dart';
// import 'QuizScreen.dart';
// class CategoriesScreen extends StatefulWidget {
//   @override
//   _CategoriesScreenState createState() => _CategoriesScreenState();
// }
//
// class _CategoriesScreenState extends State<CategoriesScreen> {
//   late List<String> categories;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchUniqueCategories().then((fetchedCategories) {
//       setState(() {
//         categories = fetchedCategories;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Categories')),
//       body: ListView.builder(
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(categories[index]),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => QuizScreen(category: categories[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

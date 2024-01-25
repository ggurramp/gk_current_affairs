// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'ExplanationPage and QuestionDetailsPage.dart';
//
// class LikedQuestionsPage extends StatefulWidget {
//   final List<int> likedQuestionIndices;
//   final List<String> questions;
//   final List<List<String>> answers;
//   final List<int> correctAnswers;
//   final List<String> explanations;
//   final Function(int) onQuestionUnliked;
//
//   LikedQuestionsPage({
//     required this.likedQuestionIndices,
//     required this.questions,
//     required this.answers,
//     required this.correctAnswers,
//     required this.explanations,
//     required this.onQuestionUnliked,
//   });
//
//   @override
//   _LikedQuestionsPageState createState() => _LikedQuestionsPageState();
// }
//
// class _LikedQuestionsPageState extends State<LikedQuestionsPage> {
//   List<int> likedQuestionIndices = []; // Initialize it as an empty list
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   Future<void> _saveLikedQuestions() async {
//     try {
//       final user = FirebaseAuth.instance.currentUser;
//       if (user != null) {
//         final userId = user.uid;
//
//         for (int questionIndex in widget.likedQuestionIndices) {
//           final querySnapshot = await FirebaseFirestore.instance
//               .collection('users')
//               .doc(userId)
//               .collection('likedQuestions')
//               .where('questionId', isEqualTo: questionIndex)
//               .get();
//
//           // Check if a liked question with the same questionId already exists
//           if (querySnapshot.docs.isEmpty) {
//             // Liked question does not exist, so add it
//             await _firestore.collection('users').doc(userId).collection('likedQuestions').add({
//               'questionId': questionIndex,
//               'timestamp': FieldValue.serverTimestamp(),
//             });
//           }
//         }
//       }
//     } catch (error) {
//       print('Error saving liked questions: $error');
//       // Handle error if necessary
//     }
//   }
//
//   // Load liked questions when the app starts
//   void loadLikedQuestions() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user != null) {
//       final userId = user.uid;
//       final likedQuestionsSnapshot = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('likedQuestions')
//           .get();
//
//       final List<int> loadedLikedQuestionIndices = likedQuestionsSnapshot.docs
//           .map((doc) => doc['questionId'] as int)
//           .toList();
//
//       likedQuestionIndices = loadedLikedQuestionIndices; // Assign directly, no need for setState
//     }
//   }
//   Future<void> _loadLikedQuestionsData() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user != null) {
//       final userId = user.uid;
//       final likedQuestionsSnapshot = await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('likedQuestions')
//           .get();
//
//       final List<int> loadedLikedQuestionIndices = likedQuestionsSnapshot.docs
//           .map((doc) => doc['questionId'] as int)
//           .toList();
//
//       setState(() {
//         likedQuestionIndices = loadedLikedQuestionIndices;
//       });
//     }
//   }
//   void _logout() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user != null) {
//       final userId = user.uid;
//
//       // Delete the liked questions data from Firestore
//       await FirebaseFirestore.instance
//           .collection('users')
//           .doc(userId)
//           .collection('likedQuestions')
//           .get()
//           .then((querySnapshot) {
//         for (QueryDocumentSnapshot doc in querySnapshot.docs) {
//           doc.reference.delete();
//         }
//       });
//     }
//
//     setState(() {
//       widget.likedQuestionIndices.clear(); // Clear the liked questions data from state
//     });
//
//     // Perform the logout
//     await FirebaseAuth.instance.signOut();
//   }
//
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     likedQuestionIndices = widget.likedQuestionIndices; // Initialize it in initState
//     _loadLikedQuestionsData(); // Initialize likedQuestionIndices in initState
//   }
//
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Liked Questions'),
//       ),
//       body: ListView.builder(
//         itemCount: widget.likedQuestionIndices.length,
//         itemBuilder: (context, index) {
//           int questionIndex = widget.likedQuestionIndices[index];
//           return ListTile(
//             title: Text(widget.questions[questionIndex]),
//             trailing: IconButton(
//               icon: Icon(Icons.favorite),
//               color: Colors.red,
//               onPressed: () {
//                 widget.onQuestionUnliked(questionIndex);
//                 setState(() {
//                   widget.likedQuestionIndices.remove(questionIndex);
//                 });
//                 _saveLikedQuestions();
//               },
//             ),
//             onTap: () {
//
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => QuestionDetailsPage(
//                     question: widget.questions[questionIndex],
//                     answers: widget.answers[questionIndex],
//                     correctAnswer: widget.correctAnswers[questionIndex],
//                     explanation: widget.explanations[questionIndex]
//
//                   ),
//                 ),
//               );
//               _saveLikedQuestions();
//             },
//           );
//         },
//       ),
//     );
//   }
// }

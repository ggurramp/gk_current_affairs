// import 'package:flutter/material.dart';
//
// import 'QuizScreen.dart';
//
// class QuizScreenTransition {
//   static PageRouteBuilder<void> nextQuestion(BuildContext context, int currentQuestionIndex) {
//     return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) {
//         return AnimatedSwitcher(
//           duration: Duration(milliseconds: 500),
//           child: QuizScreen(
//             key: ValueKey<int>(currentQuestionIndex + 1),
//             questionId: (currentQuestionIndex + 1).toString(),
//             questionIndex: '',
//           ),
//         );
//       },
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(1.0, 0.0);
//         const end = Offset.zero;
//         const curve = Curves.easeInOut;
//
//         var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//         var offsetAnimation = animation.drive(tween);
//
//         return SlideTransition(position: offsetAnimation, child: child);
//       },
//     );
//   }
//
//   static PageRouteBuilder<void> previousQuestion(BuildContext context, int currentQuestionIndex) {
//     return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) {
//         return AnimatedSwitcher(
//           duration: Duration(milliseconds: 500),
//           child: QuizScreen(
//             key: ValueKey<int>(currentQuestionIndex - 1),
//             questionId: (currentQuestionIndex - 1).toString(),
//             questionIndex: '',
//           ),
//         );
//       },
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(-1.0, 0.0);
//         const end = Offset.zero;
//         const curve = Curves.easeInOut;
//
//         var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//         var offsetAnimation = animation.drive(tween);
//
//         return SlideTransition(position: offsetAnimation, child: child);
//       },
//     );
//   }
// }
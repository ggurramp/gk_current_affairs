// import 'package:flutter/material.dart';
// class ThemeChanger extends InheritedWidget {
//   final GlobalKey<NavigatorState> navigatorKey;
//   final ThemeData themeData;
//
//   ThemeChanger({
//     required this.navigatorKey,
//     required this.themeData,
//     required Widget child,
//   }) : super(child: child);
//
//   static ThemeChanger of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<ThemeChanger>()!;
//   }
//
//   @override
//   bool updateShouldNotify(ThemeChanger oldWidget) {
//     return themeData != oldWidget.themeData;
//   }
// }

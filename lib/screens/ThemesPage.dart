// import 'package:flutter/material.dart';
// import '../main.dart';
//
// class AppThemes {
//   static final lightTheme = ThemeData(
//     // Light theme properties
//     primaryColor: Colors.blue,
//     // ... add other theme properties
//   );
//
//   static final darkTheme = ThemeData.dark().copyWith(
//     // Dark theme properties
//     primaryColor: Colors.black,
//     // ... add other theme properties
//   );
// }
//
// class ThemesPage extends StatefulWidget {
//   @override
//   _ThemesPageState createState() => _ThemesPageState();
// }
// class _ThemesPageState extends State<ThemesPage> {
//   ThemeMode? _selectedThemeMode = ThemeMode.system;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Themes'),
//       ),
//       body: Column(
//         children: [
//           RadioListTile<ThemeMode>(
//             title: Text('System Theme'),
//             value: ThemeMode.system,
//             groupValue: _selectedThemeMode,
//             onChanged: (value) {
//               setState(() {
//                 _selectedThemeMode = value;
//                 MyApp.updateTheme(_selectedThemeMode!); // Update the theme mode
//               });
//             },
//           ),
//           RadioListTile<ThemeMode>(
//             title: Text('Light Theme'),
//             value: ThemeMode.light,
//             groupValue: _selectedThemeMode,
//             onChanged: (value) {
//               setState(() {
//                 _selectedThemeMode = value;
//                 _applyTheme(_selectedThemeMode!); // Use non-nullable ThemeMode
//               });
//             },
//           ),
//           RadioListTile<ThemeMode>(
//             title: Text('Dark Theme'),
//             value: ThemeMode.dark,
//             groupValue: _selectedThemeMode,
//             onChanged: (value) {
//               setState(() {
//                 _selectedThemeMode = value;
//                 _applyTheme(_selectedThemeMode!); // Use non-nullable ThemeMode
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _applyTheme(ThemeMode themeMode) {
//     setState(() {
//       MyApp.updateTheme(themeMode);
//     });
//     //Navigator.pop(context); // Navigate back to the previous screen
//   }
//
// }

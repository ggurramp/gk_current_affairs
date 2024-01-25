// import 'dart:async';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
//
// class DatabaseHelper {
//   static final _dbName = 'myDatabase.db';
//   static final _dbVersion = 1;
//
//   static final table = 'questions';
//
//   // column names
//   static final columnId = 'id';
//   static final columnQuestion = 'question';
//   static final columnAnswer = 'answer';
//   // ... other columns
//
//   // making it a singleton class
//   DatabaseHelper._privateConstructor();
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//
//   // only have a single app-wide reference to the database
//   static Database? _database;
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }
//
//   _initDatabase() async {
//     var documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, _dbName);
//     return await openDatabase(path,
//         version: _dbVersion, onCreate: _onCreate);
//   }
//
//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//           CREATE TABLE $table (
//             $columnId INTEGER PRIMARY KEY,
//             $columnQuestion TEXT NOT NULL,
//             $columnAnswer TEXT NOT NULL,
//             ... // other columns
//           )
//           ''');
//   }
//
//   // Insert data into the database
//   Future<int> insert(Map<String, dynamic> row) async {
//     Database db = await instance.database;
//     return await db.insert(table, row);
//   }
//
//   // Retrieve all the data from the database
//   Future<List<Map<String, dynamic>>> queryAllRows() async {
//     Database db = await instance.database;
//     return await db.query(table);
//   }
//
// // ... update, delete, and other CRUD methods
// }

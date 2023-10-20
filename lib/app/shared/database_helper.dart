import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const dbVersion = 1;
  static const dbName = 'cadastro.db';
  static Database? _database;

  DatabaseHelper() {
    initDatabase().then((value) => _database = value);
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return _database!;
  }

  Future<int> _getDatabaseVersion(Database database) async {
    List<Map<String, dynamic>> versionRows =
        await database.rawQuery('PRAGMA user_version;');
    int version = versionRows[0]['user_version'] as int;
    return version;
  }

  Future<void> _deleteDatabase(String databasePath) async {
    if (await File(databasePath).exists()) {
      await deleteDatabase(databasePath);
      debugPrint('Banco de dados anterior excluído.');
    }
  }

  Future<Database> initDatabase() async {
    var db = await connectBD();
    int currentVersion = await _getDatabaseVersion(db);
    if (currentVersion != dbVersion) {
      await _deleteDatabase(db.path);
      return _openDatabase();
    } else {
      return db;
    }
  }

  Future<Database> _openDatabase() async {
    return openDatabase(join(await getDatabasesPath(), dbName),
        onCreate: _onCreate, version: dbVersion);
  }

  Future<Database> connectBD() async {
    final database = openDatabase(
      join(await getDatabasesPath(), dbName),
    );
    return database;
  }

  static const String constCreateTableRegister = '''  
          CREATE TABLE register(
              id INTEGER PRIMARY KEY,
              visitor_name TEXT,
              visitor_cpf TEXT,
              name TEXT,
              cpf TEXT,
              phone TEXT,
              birthday TEXT,
              cep TEXT,
              neighborhood TEXT,
              address TEXT,
              number TEXT
          )''';

  static const String constCreateTableDependent = '''  
          CREATE TABLE dependent(
              id INTEGER PRIMARY KEY,
              cpf TEXT,
              name TEXT,
              birthday TEXT,
              register_id INTEGER,
              FOREIGN KEY (register_id) REFERENCES register (id)
          )''';



  Future _onCreate(Database db, int version) async {
    await db.execute(constCreateTableRegister);

    await db.execute(constCreateTableDependent);



  }
}

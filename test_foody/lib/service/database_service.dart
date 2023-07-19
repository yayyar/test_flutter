import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  DatabaseService._instance();
  static final DatabaseService instance = DatabaseService._instance();
  factory DatabaseService() => instance;

  final String _databaseName = "foody.db";
  final String _idColumn = "id";
  final String _nameColumn = "name";
  final String _tableName = "foodtb";
  final int _databaseVersion = 1;

  Database? _database;

  Future<Database> get database async =>
      _database ??= await _initializeDatabase();

  Future<Database> _initializeDatabase() async {
    var databasePath = await getDatabasesPath();
    var path = join(databasePath, _databaseName);
    var createDatabase = await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
    return createDatabase;
  }

  Future<void> _onCreate(Database db, int version) async {
    String createTableSql =
        "CREATE TABLE $_tableName($_idColumn INT PRIMARY KEY AUTOINCREMENT, $_nameColumn TEXT)";
    await db.execute(createTableSql);
  }

  // insert
  Future<int> insertData(String name) async {
    var databaseClient = await database;
    int insertResult =
        await databaseClient.insert(_tableName, {_nameColumn: name});
    log('insertData => $insertResult');
    return insertResult;
  }

  //select
  Future<List<Map<String, dynamic>>> selectData() async {
    var databaseClient = await database;
    String selectSql = "SELECT * FROM $_tableName";
    var data = databaseClient.rawQuery(selectSql);
    return data;
  }
}

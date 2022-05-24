/// DATABASE
/// 1. CREATE -> INSERT
/// 2. READ -> SELECT
/// 3. UPDATE -> UPDATE
/// 4. DELETE -> DELETE
import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  // singletone
  DatabaseService._privateConstructor();

  static final DatabaseService _instance =
      DatabaseService._privateConstructor();
  /*
  Use the factory keyword when implementing a constructor
  that doesn't always create a new instance of its class.
  a factory constructor might return an instance of a subtype.
   */
  factory DatabaseService() {
    return _instance;
  }

  // database name
  final String _databaseName = "myDatabase.db";

  // table name
  final String _tableName = "user";

  // database version
  final int _databaseVersion = 1;

  // column 1
  final String ID_COLUMN = "id";
  final String NAME_COLUMN = "name";

  static Database? _database;

  Future<Database> get database async {
    return _database ??= await _initializeDatabase();
  }

  // initialize database
  Future<Database> _initializeDatabase() async {
    // get database path
    var databasePath =
        await getDatabasesPath(); // data/com.example.test/myDatabase.db

    // join database path
    String path = join(databasePath, _databaseName);

    // open database connection and create database
    var createdDatabase = await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
    return createdDatabase;
  }

  Future<void> _onCreate(Database db, int version) async {
    // create table tableNAME_COLUMN
    String createUserTable =
        "CREATE TABLE $_tableName($ID_COLUMN INTEGER PRIMARY KEY AUTOINCREMENT, $NAME_COLUMN TEXT)";
    await db.execute(createUserTable);
  }

  // insert
  Future<int> insertData(String name) async {
    var databaseClient = await database;
    int insertResult =
        await databaseClient.insert(_tableName, {NAME_COLUMN: name});
    log('insertData => $insertResult');
    return insertResult;
  }

  //select
  Future<List<Map<String, dynamic>>> selectData() async {
    var databaseClient = await database;
    String selectSql = "SELECT * FROM $_tableName";
    var data = databaseClient.rawQuery(
        selectSql); // [{"id": 1, "name": "Hla Hla"}, {"id": 2, "name": "MG MG"}]
    return data;
  }

  // update
  Future<List<Map<String, dynamic>>> updateData(int id, String name) async {
    var databaseClient = await database;
    String sql =
        "UPDATE $_tableName SET $NAME_COLUMN = '$name' WHERE $ID_COLUMN = $id";
    var result = await databaseClient.rawQuery(sql);
    return result;
  }

  //delete
  Future<List<Map<String, dynamic>>> deleteData(int id) async {
    // DELETE FROM tableName WHERE id = 1;
    var databaseClient = await database;
    String sql = "DELETE FROM $_tableName WHERE $ID_COLUMN = $id";
    var result = await databaseClient.rawQuery(sql);
    return result;
  }

  //close database connection
  Future closeDatabase() async {
    var databaseClient = await database;
    return databaseClient.close();
  }
}

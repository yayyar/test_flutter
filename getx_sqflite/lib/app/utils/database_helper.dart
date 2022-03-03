import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = "todo.db";
  static final _databaseVersion = 1;
  static final _table = "todo";
  static final _columnId = 'id';
  static final _columnTitle = 'title';

  // named constructor
  DatabaseHelper._privateConstructor();

  // create instance
  static final DatabaseHelper _instance = DatabaseHelper._privateConstructor();

  /*
  // Dart Singletone
  Use the factory keyword when implementing a constructor
  that doesn't always create a new instance of it's class.
  a factory constructor might return an instance of a subtype.
   */
  factory DatabaseHelper() => _instance;

  // declare Database
  static Database? _database;

  Future<Database> get database async =>
      _database ??= await _initiateDatabase();

  // initiate Database
  Future<Database> _initiateDatabase() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, _databaseName);

    // create Database
    var createdDatabase = await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
    return createdDatabase;
  }

  // create database tables
  Future<void> _onCreate(Database db, int version) async {}
}

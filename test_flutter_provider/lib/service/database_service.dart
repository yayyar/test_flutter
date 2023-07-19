import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  DatabaseService._insance();
  static final DatabaseService _DatabaseService = DatabaseService._insance();
  factory DatabaseService() => _DatabaseService;

  final String _databaseName = "myFood.db";
  final int _databaseVersion = 1;

  final String _tableName = "myFoodTable";

  final String _id = "id";
  final String _name = "name";

  Database? _database;

  Future<Database> get database async =>
      _database ??= await _initializeDatabase();

  Future<Database> _initializeDatabase() async {
    var databasePath = await getDatabasesPath();
    var path = join(databasePath, _databaseName);
    var createdDatabase =
        openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
    return createdDatabase;
  }

  Future<void> _onCreate(Database db, int version) async {
    String createFoodTableSql =
        "CREATE TABLE $_tableName($_id INTEGER PRIMARY KEY AUTOINCREMENT, $_name TEXT)";
    await db.execute(createFoodTableSql);
  }

  Future<int> insertData(Map<String, dynamic> data) async {
    var db = await database;
    int insertResult = await db.insert(_tableName, data);
    return insertResult;
  }

  Future<List<Map<String, dynamic>>> selectAllData() async {
    var db = await database;
    String selectAllSql = "SELECT * FROM $_tableName";
    var result = await db.rawQuery(selectAllSql);
    return result;
  }
}

import 'package:database_sqlite/model/ToDoItem.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper.internal();
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  /*
  Use the factory keyword when implementing a constructor
  that doesn't always create a new instance of its class.
  a factory constructor might return an instance of a subtype.
   */
  factory DatabaseHelper() => _instance;

  // table and column name
  final String _databaseName = 'toDoDb.db';
  final String _tableName = "toDoTable";
  final String _id = "id";
  final String _itemName = "itemName";
  final String _dateCreated = "dateCreated";

  static Database? _db;

  //initiate database
  initDb() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, _databaseName);
    var _onCreateDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return _onCreateDb;
  }

  //create table
  void _onCreate(Database db, int version) async {
    // CREATE TABLE table_name(id INTEGER PRIMARY KEY, itemName TEXT, dateCreated TEXT);
    String sql =
        "CREATE TABLE $_tableName($_id INTEGER PRIMARY KEY, $_itemName TEXT, $_dateCreated TEXT)";
    await db.execute(sql);
  }

  //get created database
  Future<Database> get getDb async {
    return _db ??= await initDb();
  }

  //CRUD Create|Retrieve|Update|Delete

  //insert
  Future<int> saveItem(ToDoItem toDoItem) async {
    var dbClient = await getDb;
    print('Before insert=> ${toDoItem.toMap()}');
    int res = await dbClient.insert(_tableName, toDoItem.toMap());
    return res;
  }

  //select
  Future<List> getAllItems() async {
    var dbClient = await getDb;
    String sql = "SELECT * FROM $_tableName ORDER BY $_itemName ASC";
    var res = await dbClient.rawQuery(sql);
    return res.toList();
  }

  //Select var parameter
  Future<ToDoItem> getItem(int id) async {
    var dbClient = await getDb;
    String sql = "SELECT * FROM $_tableName WHERE $_id = $id";
    var result = await dbClient.rawQuery(sql);
    return ToDoItem.fromMap(result.first);
  }

  //Delete
  // use whereArgs for more secure and to prevent sql injection
  Future<int> deleteItem(int? id) async {
    var dbClient = await getDb;
    var result =
        dbClient.delete(_tableName, where: "$_id = ? ", whereArgs: [id]);
    return result;
  }

  //Updated
  Future<int> updateItem(ToDoItem toDoItem) async {
    var dbClient = await getDb;
    var result = await dbClient.update(_tableName, toDoItem.toMap(),
        where: "$_id = ?", whereArgs: [toDoItem.id]);
    return result;
  }

  //close db
  Future close() async {
    var dbClient = await getDb;
    return dbClient.close();
  }
}

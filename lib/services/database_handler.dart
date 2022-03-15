import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:unki/model/user.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'ex.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, email TEXT, pass TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertUser(List<User> users) async {
    int result = 0;
    final Database db = await initializeDB();
    for(var user in users){
      result = await db.insert('users', user.toMap());
    }
    return result;
  }

  Future<List<User>> retrieveUsers() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('users');
    return queryResult.map((e) => User.fromMap(e)).toList();
  }

  Future<void> deleteUser(int id) async {
    final db = await initializeDB();
    await db.delete(
      'users',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
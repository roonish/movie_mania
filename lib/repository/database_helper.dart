//for daatabase
import 'package:mymovies/model/sql_model.dart';
import 'package:sqflite/sqflite.dart';
//for getApplicationDocumentsDirectory
import 'package:path_provider/path_provider.dart';
//for directory
import 'dart:io';
//for join
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  Future<Database> get database async => _database ?? await _initDatabase();

//MAKING Database
  Future<Database> _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'movie.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

//Making table
  Future _onCreate(Database db, int version) async {
    await db.execute('''  
    CREATE TABLE movielist (id INTEGER PRIMARY KEY,
     name TEXT)
      ''');
  }

//Create data
  Future<int> add(SqlModel model) async {
    Database db = await instance.database;
    return await db.insert('movielist', model.toMap());
  }

//Retrieve data
  Future<List<SqlModel>> read() async {
    Database db = await instance.database;
    var list = await db.query('movielist', orderBy: 'name');
    List<SqlModel> movieLIst =
        list.isNotEmpty ? list.map((e) => SqlModel.fromMap(e)).toList() : [];
    return movieLIst;
  }

  //Delete data
  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete('movielist', where: 'id=?', whereArgs: [id]);
  }
}

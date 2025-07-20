import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vilists/model/note.dart';
import 'dart:io';
import 'dart:async';

class DatabaseLocalServer {
  static DatabaseLocalServer helper = DatabaseLocalServer._createInstance();
  DatabaseLocalServer._createInstance();

  static Database _database;

  String nameTable = "usuario_table";
  String colId = "id";
  String colname = "name";
  String colemail = "email";
  String coluser = "user";
  String colPassword = "password";

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "notes.db";

    Database notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);

    return notesDatabase;
  }

  _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $nameTable ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colname TEXT, $colemail TEXT, $coluser TEXT, $colPassword TEXT)");
  }

  // INSERT
  Future<int> insertNote(Note note) async {
    Database db = await this.database;
    int result = await db.insert(nameTable, note.toMap());
    return result;
  }

  // QUERY: retorna tudo o que tem no banco.
  Future<List<dynamic>> getNoteList() async {
    Database db = await this.database;
    var noteMapList = await db.rawQuery("SELECT * FROM $nameTable");

    List<Note> noteList = [];
    List<int> idList = [];

    for (int i = 0; i < noteMapList.length; i++) {
      Note note = Note.fromMap(noteMapList[i]);
      note.dataLocation = 1;
      noteList.add(note);
      idList.add(noteMapList[i]["id"]);
    }
    return [noteList, idList];
  }

  // UPDATE
  Future<int> updateNote(int noteId, Note note) async {
    Database db = await this.database;
    var result = await db.update(
      nameTable,
      note.toMap(),
      where: "$colId = ?",
      whereArgs: [noteId],
    );
    return result;
  }

  // DELETE
  Future<int> deleteNote(int noteId) async {
    Database db = await this.database;
    int result =
        await db.rawDelete("DELETE FROM $nameTable WHERE $colId=$noteId");
    return result;
  }
}

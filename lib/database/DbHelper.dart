

import 'dart:async';
import 'dart:io';

import 'package:firstflutterapp/model/Grade.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {


  //create instance
  DbHelper._privateConstructor();

  DbHelper instance = DbHelper._privateConstructor();

  Database _database;

 Future<Database> get database=>_database??=initializeDatabase();


  initializeDatabase() async{
    Directory  directory=await getApplicationDocumentsDirectory();

    String path=join(directory.path,"gradedatabase");

    openDatabase(path,version: 1,onCreate: _onCreate);
  }



  FutureOr<void> _onCreate(Database db,int version) async{
    String query='create table gradetable (id integer primary key ,semester TEXT,grade TEXT)';

    await db.execute(query,

    )



  }

  insertGrade(Grade g) async{
    Database db =await instance.database;
    db.insert('gradetable', g.toJson());


  }

}
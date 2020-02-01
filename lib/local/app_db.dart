import 'package:db_hw/local/dao/category_dao.dart';
import 'package:db_hw/local/dao/user_dao.dart';
import 'package:db_hw/local/model/user_table.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/model/author_table.dart';
import 'package:db_hw/local/model/book_table.dart';
import 'package:db_hw/local/model/category_table.dart';
import 'package:db_hw/local/dao/book_dao.dart';
import 'package:db_hw/local/dao/author_dao.dart';

part 'app_db.g.dart';


@UseMoor(tables: [Books, Categorys,Authors,Users], daos: [BookDao, CategoryDao,AuthorDao,UserDao])
class AppDb extends _$AppDb {
  AppDb() : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true
  ));
  @override
  int get schemaVersion => 1;

}
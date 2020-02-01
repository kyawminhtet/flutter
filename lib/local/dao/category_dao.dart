import 'package:db_hw/local/model/category_table.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/app_db.dart';
part 'category_dao.g.dart';

@UseDao(
    tables: [Categorys]
)
class CategoryDao extends DatabaseAccessor<AppDb> with _$CategoryDaoMixin {
  final AppDb db;
  CategoryDao(this.db) : super(db);

  Stream<List<Category>> watchCategories() => select(categorys).watch();
  Future insertCategory(Insertable<Category> category) => into(categorys).insert(category);
}
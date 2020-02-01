import 'package:db_hw/local/model/author_table.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/app_db.dart';
part 'author_dao.g.dart';

@UseDao(
    tables: [Authors]
)
class AuthorDao extends DatabaseAccessor<AppDb> with _$AuthorDaoMixin {
  final AppDb db;
  AuthorDao(this.db) : super(db);

  Stream<List<Author>> watchAuthor() => select(authors).watch();
  Future insertAuthor(Insertable<Author> author) => into(authors).insert(author);
}
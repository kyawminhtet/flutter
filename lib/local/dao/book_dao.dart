import 'package:db_hw/local/model/book_table.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/app_db.dart';
part 'book_dao.g.dart';

@UseDao(
    tables: [Books]
)
class BookDao extends DatabaseAccessor<AppDb> with _$BookDaoMixin {
  final AppDb db;
  BookDao(this.db) : super(db);

  Stream<List<Book>> watchBooks() => select(books).watch();
  Future insertBook(Insertable<Book> book) => into(books).insert(book);
}
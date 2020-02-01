import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/app_db.dart';


class BookWithAuthor {
  final Book book;
  final Author author;

  BookWithAuthor({
    @required this.book,
    @required this.author
  });
}
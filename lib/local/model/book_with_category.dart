import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/app_db.dart';


class BookWithCategory {
  final Book book;
  final Category category;

  BookWithCategory({
    @required this.book,
    @required this.category
  });
}
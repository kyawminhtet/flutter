import 'package:db_hw/local/model/user_table.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:db_hw/local/app_db.dart';
part 'user_dao.g.dart';

@UseDao(
    tables: [Users]
)
class UserDao extends DatabaseAccessor<AppDb> with _$UserDaoMixin {
  final AppDb db;
  UserDao(this.db) : super(db);

  Stream<List<User>> watchCourses() => select(users).watch();
  Future insertCourse(Insertable<User> user) => into(users).insert(user);
}
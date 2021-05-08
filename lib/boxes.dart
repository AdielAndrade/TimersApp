import 'package:hive/hive.dart';
import 'package:timers_app/model/user_model.dart';

class Boxes{
  static Box<User> getUsers() => Hive.box<User>('users');
}
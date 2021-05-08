import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String nome;

  @HiveField(1)
  String email;

  @HiveField(2)
  String instituicao;

  @HiveField(3)
  int pontosT;

  @HiveField(4)
  int pontosI;

  @HiveField(5)
  int pontosM;

  @HiveField(6)
  int pontosE;

  @HiveField(7)
  int pontosR;

  @HiveField(8)
  int pontosS;

  @HiveField(9)
  bool tutorial;

  @HiveField(10)
  String id;

  
}

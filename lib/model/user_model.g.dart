// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User()
      ..nome = fields[0] as String
      ..email = fields[1] as String
      ..instituicao = fields[2] as String
      ..pontosT = fields[3] as int
      ..pontosI = fields[4] as int
      ..pontosM = fields[5] as int
      ..pontosE = fields[6] as int
      ..pontosR = fields[7] as int
      ..pontosS = fields[8] as int
      ..tutorial = fields[9] as bool
      ..id = fields[10] as String;
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.nome)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.instituicao)
      ..writeByte(3)
      ..write(obj.pontosT)
      ..writeByte(4)
      ..write(obj.pontosI)
      ..writeByte(5)
      ..write(obj.pontosM)
      ..writeByte(6)
      ..write(obj.pontosE)
      ..writeByte(7)
      ..write(obj.pontosR)
      ..writeByte(8)
      ..write(obj.pontosS)
      ..writeByte(9)
      ..write(obj.tutorial)
      ..writeByte(10)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

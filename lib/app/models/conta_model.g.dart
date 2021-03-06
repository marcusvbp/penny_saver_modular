// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conta_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContaAdapter extends TypeAdapter<Conta> {
  @override
  final int typeId = 3;

  @override
  Conta read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Conta(
      name: fields[0] as String,
      initialValue: fields[1] as double,
      color: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Conta obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.initialValue)
      ..writeByte(2)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

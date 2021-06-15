// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transacao_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransacaoAdapter extends TypeAdapter<Transacao> {
  @override
  final int typeId = 1;

  @override
  Transacao read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Transacao(
      observation: fields[0] as String,
      value: fields[1] as double,
      date: fields[2] as DateTime,
      account: fields[3] as Conta?,
      source: fields[4] as Source?,
    );
  }

  @override
  void write(BinaryWriter writer, Transacao obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.observation)
      ..writeByte(1)
      ..write(obj.value)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.account)
      ..writeByte(4)
      ..write(obj.source);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransacaoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

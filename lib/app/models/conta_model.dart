import 'dart:convert';

import 'package:hive/hive.dart';

part 'conta_model.g.dart';

@HiveType(typeId: 3)
class Conta {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double initialValue;
  @HiveField(2)
  final int color;

  Conta({required this.name, this.initialValue = 0, this.color = 0xf1565c0});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'initialValue': initialValue,
      'color': color,
    };
  }

  factory Conta.fromMap(Map<String, dynamic> map) {
    return Conta(
      name: map['name'],
      initialValue: map['initialValue'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Conta.fromJson(String source) => Conta.fromMap(json.decode(source));
}

import 'dart:convert';

class Conta {
  final String name;
  final double initialValue;
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

import 'dart:convert';

import 'package:hive/hive.dart';

part 'source_model.g.dart';

@HiveType(typeId: 2)
class Source {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String? observations;

  Source({
    required this.name,
    this.observations,
  });

  Map<String, dynamic> toMap() {
    return {'name': name, 'observations': observations};
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      name: map['name'],
      observations: map['obervations'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Source.fromJson(String source) => Source.fromMap(json.decode(source));
}

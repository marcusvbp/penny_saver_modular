import 'dart:convert';

import 'meta_model.dart';

class Objetivo {
  final String name;
  final List<Meta> metas;

  Objetivo({required this.name, this.metas = const []});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'metas': metas.map((x) => x.toMap()).toList(),
    };
  }

  factory Objetivo.fromMap(Map<String, dynamic> map) {
    return Objetivo(
      name: map['name'],
      metas: List<Meta>.from(map['metas']?.map((x) => Meta.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Objetivo.fromJson(String source) =>
      Objetivo.fromMap(json.decode(source));
}

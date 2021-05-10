import 'dart:convert';

class Source {
  final String name;
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

import 'dart:convert';

class Meta {
  final String name;
  final double value;
  DateTime? limitDate;

  Meta({
    required this.name,
    required this.value,
    this.limitDate,
  }) {
    this.limitDate = DateTime.now();
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'value': value,
      'limitDate': limitDate?.millisecondsSinceEpoch,
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      name: map['name'],
      value: map['value'],
      limitDate: DateTime.fromMillisecondsSinceEpoch(map['limitDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) => Meta.fromMap(json.decode(source));
}

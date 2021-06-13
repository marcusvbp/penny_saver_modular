import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'source_model.dart';

part 'transacao_model.g.dart';

@HiveType(typeId: 1)
class Transacao {
  @HiveField(0)
  final String observation;
  @HiveField(1)
  final double value;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final Conta? account;
  @HiveField(4)
  final Source? source;

  Transacao({
    this.observation = '',
    required this.value,
    required this.date,
    required this.account,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return {
      'observation': observation,
      'value': value,
      'date': date.millisecondsSinceEpoch,
      'account': account?.toMap(),
      'source': source?.toMap(),
    };
  }

  factory Transacao.fromMap(Map<String, dynamic> map) {
    return Transacao(
      observation: map['observation'],
      value: map['value'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      account: Conta.fromMap(map['account']),
      source: Source.fromMap(map['source']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Transacao.fromJson(String source) =>
      Transacao.fromMap(json.decode(source));
}

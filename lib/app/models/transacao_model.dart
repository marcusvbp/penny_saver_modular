import 'dart:convert';

import 'package:penny_saver/app/models/conta_model.dart';
import 'source_model.dart';

class Transacao {
  final String observation;
  final double value;
  final DateTime date;
  final Conta account;
  final Source source;

  Transacao({
    this.observation = '',
    required this.value,
    required this.date,
    required this.account,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return {
      'observation': observation,
      'value': value,
      'date': date.millisecondsSinceEpoch,
      'account': account.toMap(),
      'source': source.toMap(),
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

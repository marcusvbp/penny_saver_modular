import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:penny_saver/app/transacoes/widgets/card_transaction.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

List<Story> cardStories = [
  Story(
    section: 'Cards',
    name: 'Transação',
    builder: (_, k) {
      final Conta c = Conta(name: 'Banco do Brasil', initialValue: 30.0);
      final Source s = Source(name: 'Salário');
      final Transacao t = Transacao(
        value: 300.03,
        date: DateTime.now(),
        account: c,
        observation: 'Um card isolado de teste',
        source: s,
      );
      return CardTransaction(
        transacao: t,
      );
    },
  ),
];

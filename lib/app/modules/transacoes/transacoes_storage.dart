import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/transacao_model.dart';

class TransacoesStorage {
  final Box box;
  TransacoesStorage(this.box);

  Future<List<Transacao>> getTransacoes() async {
    List<Transacao> list = [];
    try {
      list = await box.get('transacoes');
    } catch (e) {
      print('TransacoesStorage getTransacoes error');
      print(e);
      throw e;
    }
    return list;
  }

  Future<void> saveTransacoes(List<Transacao> transacoes) async {
    try {
      await box.put(transacoes, transacoes);
    } catch (e) {
      print('TransacoesStorage saveTransacoes error');
      print(e);
      throw e;
    }
  }
}

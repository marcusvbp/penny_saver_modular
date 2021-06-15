import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/conta_model.dart';

class ContasStorage {
  final Box box;

  ContasStorage(this.box);

  Future<List<Conta>> getContas() async {
    List<Conta> list = [];
    try {
      list = List<Conta>.from(await box.get('contas', defaultValue: <Conta>[]));
    } catch (e) {
      print('ContasStorage getContas error');
      print(e);
      throw e;
    }
    return list;
  }

  Future<void> saveContas(List<Conta> contas) async {
    try {
      await box.put('contas', contas);
    } catch (e) {
      print('ContasStorage saveContas error');
      print(e);
      throw e;
    }
  }
}

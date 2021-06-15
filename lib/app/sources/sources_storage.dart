import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/source_model.dart';

class SourcesStorage {
  final Box box;

  SourcesStorage(this.box);

  Future<List<Source>> getSources() async {
    List<Source> list = [];
    try {
      list = List<Source>.from(
        await box.get('sources', defaultValue: <Source>[]),
      );
    } catch (e) {
      print('SourcesStorage getSources error');
      print(e);
      throw e;
    }
    return list;
  }

  Future<void> saveSources(List<Source> sources) async {
    try {
      await box.put('sources', sources);
    } catch (e) {
      print('SourcesStorage saveSources error');
      print(e);
      throw e;
    }
  }
}

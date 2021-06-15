import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/source_model.dart';

class SourcesStorage {
  final Box box;

  SourcesStorage(this.box);

  Future<List<Source>> getSources() async {
    List<Source> list = [];

    return list;
  }

  Future<void> saveSources(List<Source> sources) async {}
}

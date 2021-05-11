import 'package:mobx/mobx.dart';
import 'package:penny_saver/app/models/source_model.dart';

part 'add_source_form_controller.g.dart';

class AddSourceFormStore = _AddSourceFormStoreBase with _$AddSourceFormStore;

abstract class _AddSourceFormStoreBase with Store {
  @observable
  String name = '';
  @observable
  String? observations;

  @action
  void setName(String value) => name = value;

  @action
  void setObservations(String value) => observations = value;

  String? validateName(String? value) {
    if (value == null) return 'O Nome não pode ser vazio';
    return null;
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'observations': observations,
      };

  Source toSource() => Source(name: name, observations: observations);
}

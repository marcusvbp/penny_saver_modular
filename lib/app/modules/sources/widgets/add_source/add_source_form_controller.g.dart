// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_source_form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddSourceFormStore on _AddSourceFormStoreBase, Store {
  final _$nameAtom = Atom(name: '_AddSourceFormStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$observationsAtom = Atom(name: '_AddSourceFormStoreBase.observations');

  @override
  String? get observations {
    _$observationsAtom.reportRead();
    return super.observations;
  }

  @override
  set observations(String? value) {
    _$observationsAtom.reportWrite(value, super.observations, () {
      super.observations = value;
    });
  }

  final _$_AddSourceFormStoreBaseActionController =
      ActionController(name: '_AddSourceFormStoreBase');

  @override
  void setName(String value) {
    final _$actionInfo = _$_AddSourceFormStoreBaseActionController.startAction(
        name: '_AddSourceFormStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_AddSourceFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObservations(String value) {
    final _$actionInfo = _$_AddSourceFormStoreBaseActionController.startAction(
        name: '_AddSourceFormStoreBase.setObservations');
    try {
      return super.setObservations(value);
    } finally {
      _$_AddSourceFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
observations: ${observations}
    ''';
  }
}

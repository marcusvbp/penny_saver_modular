// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_conta_controller_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddContaControllerStore on _AddContaControllerStoreBase, Store {
  final _$nameAtom = Atom(name: '_AddContaControllerStoreBase.name');

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

  final _$initialValueAtom =
      Atom(name: '_AddContaControllerStoreBase.initialValue');

  @override
  String get initialValue {
    _$initialValueAtom.reportRead();
    return super.initialValue;
  }

  @override
  set initialValue(String value) {
    _$initialValueAtom.reportWrite(value, super.initialValue, () {
      super.initialValue = value;
    });
  }

  final _$_AddContaControllerStoreBaseActionController =
      ActionController(name: '_AddContaControllerStoreBase');

  @override
  void populateFromConta(Conta conta) {
    final _$actionInfo = _$_AddContaControllerStoreBaseActionController
        .startAction(name: '_AddContaControllerStoreBase.populateFromConta');
    try {
      return super.populateFromConta(conta);
    } finally {
      _$_AddContaControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String nameValue) {
    final _$actionInfo = _$_AddContaControllerStoreBaseActionController
        .startAction(name: '_AddContaControllerStoreBase.setName');
    try {
      return super.setName(nameValue);
    } finally {
      _$_AddContaControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInitialValue(String initialValueValue) {
    final _$actionInfo = _$_AddContaControllerStoreBaseActionController
        .startAction(name: '_AddContaControllerStoreBase.setInitialValue');
    try {
      return super.setInitialValue(initialValueValue);
    } finally {
      _$_AddContaControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
initialValue: ${initialValue}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contas_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContasStore on _ContasStoreBase, Store {
  final _$contasAtom = Atom(name: '_ContasStoreBase.contas');

  @override
  ObservableList<Conta> get contas {
    _$contasAtom.reportRead();
    return super.contas;
  }

  @override
  set contas(ObservableList<Conta> value) {
    _$contasAtom.reportWrite(value, super.contas, () {
      super.contas = value;
    });
  }

  final _$_ContasStoreBaseActionController =
      ActionController(name: '_ContasStoreBase');

  @override
  dynamic addConta(Conta conta) {
    final _$actionInfo = _$_ContasStoreBaseActionController.startAction(
        name: '_ContasStoreBase.addConta');
    try {
      return super.addConta(conta);
    } finally {
      _$_ContasStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeConta(Conta conta) {
    final _$actionInfo = _$_ContasStoreBaseActionController.startAction(
        name: '_ContasStoreBase.removeConta');
    try {
      return super.removeConta(conta);
    } finally {
      _$_ContasStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contas: ${contas}
    ''';
  }
}

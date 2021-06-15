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

  final _$rehydrateAsyncAction = AsyncAction('_ContasStoreBase.rehydrate');

  @override
  Future<void> rehydrate() {
    return _$rehydrateAsyncAction.run(() => super.rehydrate());
  }

  final _$addContaAsyncAction = AsyncAction('_ContasStoreBase.addConta');

  @override
  Future<void> addConta(Conta conta) {
    return _$addContaAsyncAction.run(() => super.addConta(conta));
  }

  final _$removeContaAsyncAction = AsyncAction('_ContasStoreBase.removeConta');

  @override
  Future<void> removeConta(Conta conta) {
    return _$removeContaAsyncAction.run(() => super.removeConta(conta));
  }

  @override
  String toString() {
    return '''
contas: ${contas}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transacoes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TransacoesStore on _TransacoesStoreBase, Store {
  Computed<List<Transacao>>? _$aditionsComputed;

  @override
  List<Transacao> get aditions =>
      (_$aditionsComputed ??= Computed<List<Transacao>>(() => super.aditions,
              name: '_TransacoesStoreBase.aditions'))
          .value;
  Computed<List<Transacao>>? _$subtractionsComputed;

  @override
  List<Transacao> get subtractions => (_$subtractionsComputed ??=
          Computed<List<Transacao>>(() => super.subtractions,
              name: '_TransacoesStoreBase.subtractions'))
      .value;

  final _$transacoesAtom = Atom(name: '_TransacoesStoreBase.transacoes');

  @override
  ObservableList<Transacao> get transacoes {
    _$transacoesAtom.reportRead();
    return super.transacoes;
  }

  @override
  set transacoes(ObservableList<Transacao> value) {
    _$transacoesAtom.reportWrite(value, super.transacoes, () {
      super.transacoes = value;
    });
  }

  final _$rehydrateAsyncAction = AsyncAction('_TransacoesStoreBase.rehydrate');

  @override
  Future<void> rehydrate() {
    return _$rehydrateAsyncAction.run(() => super.rehydrate());
  }

  final _$_TransacoesStoreBaseActionController =
      ActionController(name: '_TransacoesStoreBase');

  @override
  dynamic add(Transacao transacao) {
    final _$actionInfo = _$_TransacoesStoreBaseActionController.startAction(
        name: '_TransacoesStoreBase.add');
    try {
      return super.add(transacao);
    } finally {
      _$_TransacoesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove(Transacao transacao) {
    final _$actionInfo = _$_TransacoesStoreBaseActionController.startAction(
        name: '_TransacoesStoreBase.remove');
    try {
      return super.remove(transacao);
    } finally {
      _$_TransacoesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
transacoes: ${transacoes},
aditions: ${aditions},
subtractions: ${subtractions}
    ''';
  }
}

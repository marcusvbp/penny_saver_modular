// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'souces_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SoucesStoreStore on _SoucesStoreStoreBase, Store {
  final _$sourcesAtom = Atom(name: '_SoucesStoreStoreBase.sources');

  @override
  ObservableList<Source> get sources {
    _$sourcesAtom.reportRead();
    return super.sources;
  }

  @override
  set sources(ObservableList<Source> value) {
    _$sourcesAtom.reportWrite(value, super.sources, () {
      super.sources = value;
    });
  }

  final _$_SoucesStoreStoreBaseActionController =
      ActionController(name: '_SoucesStoreStoreBase');

  @override
  dynamic addConta(Source source) {
    final _$actionInfo = _$_SoucesStoreStoreBaseActionController.startAction(
        name: '_SoucesStoreStoreBase.addConta');
    try {
      return super.addConta(source);
    } finally {
      _$_SoucesStoreStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeConta(Source source) {
    final _$actionInfo = _$_SoucesStoreStoreBaseActionController.startAction(
        name: '_SoucesStoreStoreBase.removeConta');
    try {
      return super.removeConta(source);
    } finally {
      _$_SoucesStoreStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sources: ${sources}
    ''';
  }
}

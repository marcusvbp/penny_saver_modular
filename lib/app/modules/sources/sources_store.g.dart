// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SourcesStore on _SourcesStoreBase, Store {
  final _$sourcesAtom = Atom(name: '_SourcesStoreBase.sources');

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

  final _$_SourcesStoreBaseActionController =
      ActionController(name: '_SourcesStoreBase');

  @override
  dynamic addConta(Source source) {
    final _$actionInfo = _$_SourcesStoreBaseActionController.startAction(
        name: '_SourcesStoreBase.addConta');
    try {
      return super.addConta(source);
    } finally {
      _$_SourcesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeConta(Source source) {
    final _$actionInfo = _$_SourcesStoreBaseActionController.startAction(
        name: '_SourcesStoreBase.removeConta');
    try {
      return super.removeConta(source);
    } finally {
      _$_SourcesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sources: ${sources}
    ''';
  }
}

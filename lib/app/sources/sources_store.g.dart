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

  final _$rehydrateAsyncAction = AsyncAction('_SourcesStoreBase.rehydrate');

  @override
  Future<void> rehydrate() {
    return _$rehydrateAsyncAction.run(() => super.rehydrate());
  }

  final _$addContaAsyncAction = AsyncAction('_SourcesStoreBase.addConta');

  @override
  Future addConta(Source source) {
    return _$addContaAsyncAction.run(() => super.addConta(source));
  }

  final _$removeContaAsyncAction = AsyncAction('_SourcesStoreBase.removeConta');

  @override
  Future removeConta(Source source) {
    return _$removeContaAsyncAction.run(() => super.removeConta(source));
  }

  @override
  String toString() {
    return '''
sources: ${sources}
    ''';
  }
}

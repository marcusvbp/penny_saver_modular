// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_controller_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddControllerStore on _AddControllerStoreBase, Store {
  final _$observationAtom = Atom(name: '_AddControllerStoreBase.observation');

  @override
  String get observation {
    _$observationAtom.reportRead();
    return super.observation;
  }

  @override
  set observation(String value) {
    _$observationAtom.reportWrite(value, super.observation, () {
      super.observation = value;
    });
  }

  final _$valueAtom = Atom(name: '_AddControllerStoreBase.value');

  @override
  String get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(String value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$dateAtom = Atom(name: '_AddControllerStoreBase.date');

  @override
  DateTime get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(DateTime value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$destinationAccountAtom =
      Atom(name: '_AddControllerStoreBase.destinationAccount');

  @override
  Conta get destinationAccount {
    _$destinationAccountAtom.reportRead();
    return super.destinationAccount;
  }

  @override
  set destinationAccount(Conta value) {
    _$destinationAccountAtom.reportWrite(value, super.destinationAccount, () {
      super.destinationAccount = value;
    });
  }

  final _$sourceOriginAtom = Atom(name: '_AddControllerStoreBase.sourceOrigin');

  @override
  Source get sourceOrigin {
    _$sourceOriginAtom.reportRead();
    return super.sourceOrigin;
  }

  @override
  set sourceOrigin(Source value) {
    _$sourceOriginAtom.reportWrite(value, super.sourceOrigin, () {
      super.sourceOrigin = value;
    });
  }

  final _$isEditingAtom = Atom(name: '_AddControllerStoreBase.isEditing');

  @override
  bool get isEditing {
    _$isEditingAtom.reportRead();
    return super.isEditing;
  }

  @override
  set isEditing(bool value) {
    _$isEditingAtom.reportWrite(value, super.isEditing, () {
      super.isEditing = value;
    });
  }

  final _$valueIsNegativeAtom =
      Atom(name: '_AddControllerStoreBase.valueIsNegative');

  @override
  bool get valueIsNegative {
    _$valueIsNegativeAtom.reportRead();
    return super.valueIsNegative;
  }

  @override
  set valueIsNegative(bool value) {
    _$valueIsNegativeAtom.reportWrite(value, super.valueIsNegative, () {
      super.valueIsNegative = value;
    });
  }

  final _$_AddControllerStoreBaseActionController =
      ActionController(name: '_AddControllerStoreBase');

  @override
  void setObservation(String valueString) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.setObservation');
    try {
      return super.setObservation(valueString);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setValue(String valueString) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.setValue');
    try {
      return super.setValue(valueString);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(DateTime dateValue) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.setDate');
    try {
      return super.setDate(dateValue);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConta(Conta contaValue) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.setConta');
    try {
      return super.setConta(contaValue);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSource(Source sourceValue) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.setSource');
    try {
      return super.setSource(sourceValue);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsEditing(bool value) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.setIsEditing');
    try {
      return super.setIsEditing(value);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleValueIsNegative() {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.toggleValueIsNegative');
    try {
      return super.toggleValueIsNegative();
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void populateFromTransation(Transacao transation) {
    final _$actionInfo = _$_AddControllerStoreBaseActionController.startAction(
        name: '_AddControllerStoreBase.populateFromTransation');
    try {
      return super.populateFromTransation(transation);
    } finally {
      _$_AddControllerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
observation: ${observation},
value: ${value},
date: ${date},
destinationAccount: ${destinationAccount},
sourceOrigin: ${sourceOrigin},
isEditing: ${isEditing},
valueIsNegative: ${valueIsNegative}
    ''';
  }
}

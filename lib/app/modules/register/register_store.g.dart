// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterStore on _RegisterBase, Store {
  late final _$getRegisterListAsyncAction =
      AsyncAction('_RegisterBase.getRegisterList', context: context);

  @override
  Future<void> getRegisterList() {
    return _$getRegisterListAsyncAction.run(() => super.getRegisterList());
  }

  late final _$getCompleteRegisterListAsyncAction =
      AsyncAction('_RegisterBase.getCompleteRegisterList', context: context);

  @override
  Future<List<RegisterModel>> getCompleteRegisterList() {
    return _$getCompleteRegisterListAsyncAction
        .run(() => super.getCompleteRegisterList());
  }

  late final _$saveCompleteRegisterModelAsyncAction =
      AsyncAction('_RegisterBase.saveCompleteRegisterModel', context: context);

  @override
  Future<void> saveCompleteRegisterModel(RegisterModel model) {
    return _$saveCompleteRegisterModelAsyncAction
        .run(() => super.saveCompleteRegisterModel(model));
  }

  late final _$testeAsyncAction =
      AsyncAction('_RegisterBase.teste', context: context);

  @override
  Future<void> teste() {
    return _$testeAsyncAction.run(() => super.teste());
  }

  late final _$_RegisterBaseActionController =
      ActionController(name: '_RegisterBase', context: context);

  @override
  void addRegister(List<RegisterModel> model) {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.addRegister');
    try {
      return super.addRegister(model);
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void convertToCsv() {
    final _$actionInfo = _$_RegisterBaseActionController.startAction(
        name: '_RegisterBase.convertToCsv');
    try {
      return super.convertToCsv();
    } finally {
      _$_RegisterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

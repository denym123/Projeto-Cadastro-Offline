// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStoreBase, Store {
  Computed<bool>? _$hasCompletedFieldsComputed;

  @override
  bool get hasCompletedFields => (_$hasCompletedFieldsComputed ??=
          Computed<bool>(() => super.hasCompletedFields,
              name: '_AuthStoreBase.hasCompletedFields'))
      .value;
  Computed<bool>? _$isManagerComputed;

  @override
  bool get isManager =>
      (_$isManagerComputed ??= Computed<bool>(() => super.isManager,
              name: '_AuthStoreBase.isManager'))
          .value;

  late final _$managerOptionAtom =
      Atom(name: '_AuthStoreBase.managerOption', context: context);

  @override
  OptionModel get managerOption {
    _$managerOptionAtom.reportRead();
    return super.managerOption;
  }

  @override
  set managerOption(OptionModel value) {
    _$managerOptionAtom.reportWrite(value, super.managerOption, () {
      super.managerOption = value;
    });
  }

  late final _$visitatorOptionAtom =
      Atom(name: '_AuthStoreBase.visitatorOption', context: context);

  @override
  OptionModel get visitatorOption {
    _$visitatorOptionAtom.reportRead();
    return super.visitatorOption;
  }

  @override
  set visitatorOption(OptionModel value) {
    _$visitatorOptionAtom.reportWrite(value, super.visitatorOption, () {
      super.visitatorOption = value;
    });
  }

  late final _$selectedValueAtom =
      Atom(name: '_AuthStoreBase.selectedValue', context: context);

  @override
  OptionModel? get selectedValue {
    _$selectedValueAtom.reportRead();
    return super.selectedValue;
  }

  @override
  set selectedValue(OptionModel? value) {
    _$selectedValueAtom.reportWrite(value, super.selectedValue, () {
      super.selectedValue = value;
    });
  }

  late final _$userAtom = Atom(name: '_AuthStoreBase.user', context: context);

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$nameAtom = Atom(name: '_AuthStoreBase.name', context: context);

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

  late final _$passwordAtom =
      Atom(name: '_AuthStoreBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase', context: context);

  @override
  void setOptionModel(OptionModel value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setOptionModel');
    try {
      return super.setOptionModel(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(String value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goToNewRequestPage() {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.goToNewRequestPage');
    try {
      return super.goToNewRequestPage();
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
managerOption: ${managerOption},
visitatorOption: ${visitatorOption},
selectedValue: ${selectedValue},
user: ${user},
name: ${name},
password: ${password},
hasCompletedFields: ${hasCompletedFields},
isManager: ${isManager}
    ''';
  }
}

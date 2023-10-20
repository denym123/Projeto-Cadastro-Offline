// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newregister_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewRegisterStore on _NewRegisterStoreBase, Store {
  late final _$titularNameAtom =
      Atom(name: '_NewRegisterStoreBase.titularName', context: context);

  @override
  String get titularName {
    _$titularNameAtom.reportRead();
    return super.titularName;
  }

  @override
  set titularName(String value) {
    _$titularNameAtom.reportWrite(value, super.titularName, () {
      super.titularName = value;
    });
  }

  late final _$titularCpfAtom =
      Atom(name: '_NewRegisterStoreBase.titularCpf', context: context);

  @override
  String get titularCpf {
    _$titularCpfAtom.reportRead();
    return super.titularCpf;
  }

  @override
  set titularCpf(String value) {
    _$titularCpfAtom.reportWrite(value, super.titularCpf, () {
      super.titularCpf = value;
    });
  }

  late final _$phoneAtom =
      Atom(name: '_NewRegisterStoreBase.phone', context: context);

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  late final _$birthdayAtom =
      Atom(name: '_NewRegisterStoreBase.birthday', context: context);

  @override
  String get birthday {
    _$birthdayAtom.reportRead();
    return super.birthday;
  }

  @override
  set birthday(String value) {
    _$birthdayAtom.reportWrite(value, super.birthday, () {
      super.birthday = value;
    });
  }

  late final _$_NewRegisterStoreBaseActionController =
      ActionController(name: '_NewRegisterStoreBase', context: context);

  @override
  void setTitularName(String value) {
    final _$actionInfo = _$_NewRegisterStoreBaseActionController.startAction(
        name: '_NewRegisterStoreBase.setTitularName');
    try {
      return super.setTitularName(value);
    } finally {
      _$_NewRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitularCpf(String value) {
    final _$actionInfo = _$_NewRegisterStoreBaseActionController.startAction(
        name: '_NewRegisterStoreBase.setTitularCpf');
    try {
      return super.setTitularCpf(value);
    } finally {
      _$_NewRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_NewRegisterStoreBaseActionController.startAction(
        name: '_NewRegisterStoreBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_NewRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBirthday(String value) {
    final _$actionInfo = _$_NewRegisterStoreBaseActionController.startAction(
        name: '_NewRegisterStoreBase.setBirthday');
    try {
      return super.setBirthday(value);
    } finally {
      _$_NewRegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titularName: ${titularName},
titularCpf: ${titularCpf},
phone: ${phone},
birthday: ${birthday}
    ''';
  }
}

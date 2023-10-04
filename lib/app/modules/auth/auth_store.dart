import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @observable
  String user = "";

  @observable
  String name = "";

  @observable
  String password = "";

  @observable
  String test = "";

  @action
  void setUser(String value) {
    user = value;
  }

  @action
  void setName(String value) {
    name = value;
  }

  @action
  void setPassword(String value) {
    user = value;
  }

  @action
  void setTest(value) {
    test = value;
  }

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
}

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'newregister_store.g.dart';

class NewRegisterStore = _NewRegisterStoreBase with _$NewRegisterStore;

abstract class _NewRegisterStoreBase with Store {
  ObservableList pageList = ObservableList();

  PageController pageController = PageController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();


  @observable
  String titularName = "";

  @observable
  String titularCpf = "";

  @observable
  String phone = "";

  @observable
  String birthday = '';

  @action
  void setTitularName (String value) {
    titularName = value;
  }

  @action
  void setTitularCpf (String value) {
    titularCpf = value;
  }

  @action
  void setPhone (String value) {
    phone = value;
  }

  @action
  void setBirthday (String value) {
    birthday = value;
  }


}

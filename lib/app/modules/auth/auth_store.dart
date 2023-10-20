import 'package:cadastro_offline/app/app_routes.dart';
import 'package:cadastro_offline/app/modules/auth/model/user_model.dart';
import 'package:cadastro_offline/app/shared/models/option/option_model.dart';
import 'package:cadastro_offline/app/app_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;
abstract class _AuthStoreBase with Store {

  final AppStore _appStore;
  _AuthStoreBase(this._appStore);


  @observable
  OptionModel managerOption = OptionModel(label: "Gestor", id: 1);

  @observable
  OptionModel visitatorOption = OptionModel(label: "Visitador", id: 2);

  @observable
  OptionModel? selectedValue;

  @observable
  String user = "";

  @observable
  String name = "";

  @observable
  String password = "";

  @computed
  bool get hasCompletedFields {
    if(selectedValue != null) {
      if(selectedValue!.id == 1){
        if(name.isNotEmpty && password.isNotEmpty && user.isNotEmpty){
          return true;
        }
      }
     else if(selectedValue!.id == 2){
        if(name.isNotEmpty && user.isNotEmpty){
          return true;
        }
      }
    }
    return false;
  }

  @computed
  bool get isManager{
    if(selectedValue?.id == 1) {
      return true;
    }
    else {
      return false;
    }
  }

  @action
  void setOptionModel(OptionModel value) {
    selectedValue = value;
  }

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
    password = value;
  }

  @action
  void goToNewRequestPage (){
    UserModel userModel = UserModel(
      password: password,
      name: name,
      cpf: user,
      role: selectedValue,
    );

    Modular.get<AppStore>().setUserModel(userModel);
    AppRoutes.goToRegisterPage();

  }

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
}

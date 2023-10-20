
import 'package:cadastro_offline/app/modules/auth/model/user_model.dart';
import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = _AppStoreBase with _$AppStore;

abstract class _AppStoreBase with Store {

  @observable
  UserModel? userModel;

  @action
  void setUserModel(UserModel value) {
    userModel = value;
  }


}
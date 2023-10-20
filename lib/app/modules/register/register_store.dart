import 'package:cadastro_offline/app/app_store.dart';
import 'package:cadastro_offline/app/modules/auth/model/user_model.dart';
import 'package:cadastro_offline/app/modules/register/dao/dependent_DAO.dart';
import 'package:cadastro_offline/app/modules/register/dao/register_DAO.dart';
import 'package:cadastro_offline/app/modules/register/newregister/domain/dependent.dart';
import 'package:cadastro_offline/app/modules/register/newregister/domain/models/dependent_model.dart';
import 'package:cadastro_offline/app/modules/register/newregister/domain/models/register_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterBase with _$RegisterStore;

abstract class _RegisterBase with Store {
  final AppStore _appStore;

  _RegisterBase(this._appStore);

  @action
  Future<void> getRegisterList() async {
    List<RegisterModel> list = await getCompleteRegisterList();
    registerList.clear();
    registerList.addAll(list);
  }

  @action
  void addRegister(List<RegisterModel> model) {
    registerList.clear();
    registerList.addAll(model);
  }

  @action
  Future<List<RegisterModel>> getCompleteRegisterList() async {
    List<RegisterModel> registertest = await RegisterDAO.getList();
    for (var element in registertest) {
      List<DependentModel> list =
          await DependentDAO.getByRegisterId(registerId: element.id!);
      element.dependent = [];
      element.dependent!.addAll(list);
    }
    return registertest;
  }

  @action
  Future<void> saveCompleteRegisterModel(RegisterModel model) async {
    int registerId = await RegisterDAO.save(model);
    if(model.dependent != null && model.dependent!.isNotEmpty) {
      for(Dependent element in model.dependent!) {
        element.registerId = registerId;
        DependentDAO.save((element as DependentModel));
      }
    }

  }

  @action
  void convertToCsv() {}

  @action
  Future<void> teste() async {
    UserModel? user = Modular.get<AppStore>().userModel;

    var list = await getCompleteRegisterList();
    registerList.addAll(list);
  }

  ObservableList<RegisterModel> registerList = ObservableList();
}

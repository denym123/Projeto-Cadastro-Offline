import 'package:cadastro_offline/app/modules/auth/auth_module.dart';
import 'package:cadastro_offline/app/modules/auth/auth_store.dart';
import 'package:cadastro_offline/app/app_store.dart';
import 'package:cadastro_offline/app/modules/register/newregister/newregister_module.dart';
import 'package:cadastro_offline/app/modules/register/newregister/newregister_store.dart';
import 'package:cadastro_offline/app/modules/register/register_module.dart';
import 'package:cadastro_offline/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<AppStore>(AppStore.new);
    i.add<AuthStore>(AuthStore.new);
    i.add<RegisterStore>(RegisterStore.new);
    i.add<NewRegisterStore>(NewRegisterStore.new);
  }

  @override
  void routes(r) {
    r.module('/auth/', module: AuthModule());
    r.module("/register", module: RegisterModule());
    r.module("/new-register", module: NewRegisterModule());
  }
  
}
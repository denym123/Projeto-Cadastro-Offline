import 'package:cadastro_offline/app/modules/auth/auth_module.dart';
import 'package:cadastro_offline/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<AppStore>(AppStore.new);
  }

  @override
  void routes(r) {
    r.module('/auth/', module: AuthModule());
  }
}
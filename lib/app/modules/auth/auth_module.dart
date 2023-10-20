import 'package:cadastro_offline/app/modules/auth/auth_page.dart';
import 'package:cadastro_offline/app/modules/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void binds(i) {
    i.add(AuthStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const AuthPage());
  }
}

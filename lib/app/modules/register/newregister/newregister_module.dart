import 'package:cadastro_offline/app/app_store.dart';
import 'package:cadastro_offline/app/modules/register/newregister/newregister_page.dart';
import 'package:cadastro_offline/app/modules/register/newregister/newregister_store.dart';
import 'package:cadastro_offline/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewRegisterModule extends Module {
  @override
  void bind(i) {
    i.add(NewRegisterStore.new);
    i.add(RegisterStore(AppStore()));
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const NewRegisterPage(),
    );
  }
}

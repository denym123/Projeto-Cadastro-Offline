import 'package:cadastro_offline/app/modules/auth/auth_store.dart';
import 'package:cadastro_offline/app/shared/components/filledbutton_component.dart';
import 'package:cadastro_offline/app/shared/components/filledsmallbutton_component.dart';
import 'package:cadastro_offline/app/shared/components/generictile_component.dart';
import 'package:cadastro_offline/app/shared/components/inputtext_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  var store = Modular.get<AuthStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.add), onPressed: () {}),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("teste"),
      ),
      body: Column(
        children: [
          InputTextComponent(
            label: 'teste 1',
            value: store.test,
            onChanged: store.setTest,
            focusNode: store.focusNode1,
            hasNextFocus: true,
          ),
          InputTextComponent(
            hasNextFocus: true,
            label: 'teste 2',
            value: store.test,
            onChanged: store.setTest,
            focusNode: store.focusNode2,
            onSubmitted: (val) {
              debugPrint(val);
            },
          ),
          InputTextComponent(
            label: 'teste 1',
            value: store.test,
            onChanged: store.setTest,
            focusNode: store.focusNode3,
            hasNextFocus: true,
          ),
          InputTextComponent(
            label: 'teste 2',
            value: store.test,
            onChanged: store.setTest,
            focusNode: store.focusNode4,
            onSubmitted: (val) {
              debugPrint(val);
            },
          ),
          FilledSmallButton(
              icon: Icon(Icons.add),
              label: 'Teste',
              onTap: () {
                debugPrint("teste");
              }),
          FilledButtonComponent(
            label: "Teste",
            onTap: () {
              debugPrint("teste");
            },
          ),
          GenericTileComponent(
            firstText: "Teste",
            secondText: "Teste 2",
            thirdText: "Teste",
            onTap: () {
              debugPrint("teste");
            },
          ),
        ],
      ),
    );
  }
}

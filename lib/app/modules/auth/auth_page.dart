import 'package:cadastro_offline/app/modules/auth/auth_store.dart';
import 'package:cadastro_offline/app/shared/components/filledbutton_component.dart';
import 'package:cadastro_offline/app/shared/components/inputtext_component.dart';
import 'package:cadastro_offline/app/shared/components/radiobutton/radiobutton_componente.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Observer(builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                InputTextComponent(
                  value: store.user,
                  onChanged: store.setUser,
                  focusNode: store.focusNode1,
                  label: "CPF",
                  hasNextFocus: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                InputTextComponent(
                  hasNextFocus: true,
                  value: store.name,
                  onChanged: store.setName,
                  focusNode: store.focusNode2,
                  label: "Nome",
                ),
                const SizedBox(
                  height: 15,
                ),
                Visibility(
                  visible: store.isManager,
                  child: InputTextComponent(
                      hasNextFocus: false,
                      value: store.password,
                      onChanged: store.setPassword,
                      focusNode: store.focusNode3,
                      label: "Senha"),
                ),
                RadioButtonComponent(
                  selectedValue: store.selectedValue,
                  value: store.visitatorOption,
                  onChanged: store.setOptionModel,
                ),
                RadioButtonComponent(
                  selectedValue: store.selectedValue,
                  value: store.managerOption,
                  onChanged: store.setOptionModel,
                ),
                const SizedBox(
                  height: 15,
                ),
                FilledButtonComponent(
                  label: "Entrar",
                  onTap:store.hasCompletedFields ? () {
                    store.goToNewRequestPage();
                  } : null,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

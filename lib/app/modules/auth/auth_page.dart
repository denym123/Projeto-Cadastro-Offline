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
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputTextComponent(
              value: store.user,
              onChanged: store.setUser,
              focusNode: FocusNode(),
              label: "CPF",
              hasNextFocus: true,
            ),
            InputTextComponent(
                hasNextFocus: true,
                value: store.name,
                onChanged: store.setName,
                focusNode: FocusNode(),
                label: "Nome"),
            InputTextComponent(
                hasNextFocus: false,
                value: store.user,
                onChanged: store.setPassword,
                focusNode: FocusNode(),
                label: "Senha"),


          ],
        ),
      ),
    );
  }
}

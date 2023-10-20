import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  Widget build(BuildContext context) {
    Modular.setInitialRoute("/auth/");
    return MaterialApp.router(
      title: 'Cadastro Offline',
      theme: ThemeData(
        primaryColor: const Color(0xff365848),
        inputDecorationTheme:
            const InputDecorationTheme(fillColor: Color(0xffE4E2E2)),
        cardColor: const Color(0xffF2F1F1)
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}

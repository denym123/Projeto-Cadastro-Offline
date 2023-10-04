import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context){
    Modular.setInitialRoute("/auth/");
    return MaterialApp.router(
      title: 'Cadastro Offline',
      theme: ThemeData(primaryColor: Color(0xff365848), inputDecorationTheme: InputDecorationTheme(fillColor: Color(0xffE4E2E2)) ,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
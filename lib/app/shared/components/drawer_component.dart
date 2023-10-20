import 'package:cadastro_offline/app/app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:math' as math;

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var store = Modular.get<AppStore>();

    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            color: Theme.of(context).primaryColor,
            height: 200,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                store.userModel!.name!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text(
                    "Sair",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading: Transform.scale(
                    scaleX: -1,
                    child: Icon(Icons.exit_to_app, color: Theme.of(context).primaryColor,),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

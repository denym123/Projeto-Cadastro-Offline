import 'package:cadastro_offline/app/app_routes.dart';
import 'package:cadastro_offline/app/modules/register/newregister/domain/models/register_model.dart';
import 'package:cadastro_offline/app/modules/register/register_store.dart';
import 'package:cadastro_offline/app/shared/components/drawer_component.dart';
import 'package:cadastro_offline/app/shared/components/filledbutton_component.dart';
import 'package:cadastro_offline/app/shared/components/generictile_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    store.getRegisterList();
    super.initState();
  }

  var store = Modular.get<RegisterStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Todas Entrevistas",
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {AppRoutes.goToNewRegisterPage();},
            )
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Observer(builder: (context) {
          return Column(
            children: [
              FilledButtonComponent(label: "teste", onTap: store.teste),
              Expanded(
                child: ListView.builder(
                  itemCount: store.registerList.length,
                  itemBuilder: (context, index) {
                    RegisterModel item =
                        store.registerList.reversed.toList()[index];
                    return Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        GenericTileComponent(
                            firstText: item.name ?? "",
                            secondText: item.cpf ?? "",
                            thirdText: item.birthday ?? "",
                            onTap: () {}),
                      ],
                    );
                  },
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

import 'package:cadastro_offline/app/modules/register/newregister/newregister_store.dart';
import 'package:cadastro_offline/app/shared/components/filledbutton_component.dart';
import 'package:cadastro_offline/app/shared/components/filledsmallbutton_component.dart';
import 'package:cadastro_offline/app/shared/components/inputtext_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewRegisterPage extends StatefulWidget {
  const NewRegisterPage({super.key});

  @override
  State<NewRegisterPage> createState() => _NewRegisterPageState();
}

class _NewRegisterPageState extends State<NewRegisterPage> {
  var store = Modular.get<NewRegisterStore>();

  @override
  Widget build(BuildContext context) {
    store.pageList.clear();
    store.pageList.add(firstPage(context));
    store.pageList.add(secondPage(context));
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Nova Entrevista",
            ),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: PageView.builder(
        controller: store.pageController,
        itemCount: store.pageList.length,
        itemBuilder: (context, index) {
          return store.pageList[index];
        },
      ),
    );
  }

  Widget firstPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            InputTextComponent(
              value: store.titularName,
              onChanged: (val) {
                store.setTitularName(val);
              },
              focusNode: store.focusNode1,
              label: "Nome do Titular",
              hasNextFocus: true,
            ),
            const SizedBox(
              height: 15,
            ),
            InputTextComponent(
                hasNextFocus: true,
                value: store.titularCpf,
                onChanged: (val) {
                  store.setTitularCpf(val);
                },
                focusNode: store.focusNode2,
                label: "CPF"),
            const SizedBox(
              height: 15,
            ),
            InputTextComponent(
                hasNextFocus: true,
                value: store.phone,
                onChanged: (val) {
                  store.setPhone(val);
                },
                focusNode: store.focusNode3,
                label: "Telefone"),
            const SizedBox(
              height: 15,
            ),
            InputTextComponent(
                value: store.birthday,
                onChanged: (val) {
                  store.setBirthday(val);
                },
                focusNode: store.focusNode4,
                label: "Data de Nascimento"),
            const SizedBox(
              height: 15,
            ),
            FilledButtonComponent(
                label: "Próximo",
                onTap: () {
                  store.pageController.animateToPage(2,
                      curve: Curves.linear,
                      duration: Duration(milliseconds: 350));
                }),
          ],
        ),
      ),
    );
  }

  Widget secondPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledSmallButton(
                    label: "Adicionar",
                    icon: Icon(Icons.add),
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                InputTextComponent(
                                    value: store.birthday,
                                    onChanged: (val) {
                                      store.setBirthday(val);
                                    },
                                    focusNode: store.focusNode4,
                                    label: "Data de Nascimento"),
                                InputTextComponent(
                                    value: store.birthday,
                                    onChanged: (val) {
                                      store.setBirthday(val);
                                    },
                                    focusNode: store.focusNode4,
                                    label: "Data de Nascimento"),
                                InputTextComponent(
                                    value: store.birthday,
                                    onChanged: (val) {
                                      store.setBirthday(val);
                                    },
                                    focusNode: store.focusNode4,
                                    label: "Data de Nascimento"),
                              ],
                            ),
                          );
                        },
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:cadastro_offline/app/modules/auth/model/user.dart';

class UserModel extends User {
  UserModel({name, cpf, password, role})
      : super(name: name, cpf: cpf, password: password, role: role);
}

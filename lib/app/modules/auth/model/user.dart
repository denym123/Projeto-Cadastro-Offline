import 'package:cadastro_offline/app/shared/models/option/option.dart';

class User {
  String? name;
  String? password;
  String? cpf;
  Option? role;

  User(
      {required this.name,
      required this.cpf,
      required this.role,
      this.password});
}

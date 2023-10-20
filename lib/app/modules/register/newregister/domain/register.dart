import 'package:cadastro_offline/app/modules/register/newregister/domain/dependent.dart';

class Register {
  int? id;
  String? visitorName;
  String? visitorCpf;
  String? name;
  String? cpf;
  String? phone;
  String? birthday;
  String? cep;
  String? neighborhood;
  String? address;
  String? number;
  List<Dependent>? dependent;

  Register(
      {required this.id,
      required this.visitorName,
      required this.visitorCpf,
      required this.name,
      required this.cpf,
      required this.phone,
      required this.birthday,
      required this.cep,
      required this.neighborhood,
      required this.address,
      required this.number,
      required this.dependent});
}
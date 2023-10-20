import 'package:cadastro_offline/app/modules/register/newregister/domain/dependent.dart';
import 'package:cadastro_offline/app/modules/register/newregister/domain/models/dependent_model.dart';
import 'package:cadastro_offline/app/modules/register/newregister/domain/register.dart';

class RegisterModel extends Register {
  RegisterModel({
    id,
    visitorName,
    visitorCpf,
    name,
    cpf,
    phone,
    birthday,
    cep,
    neighborhood,
    address,
    number,
    dependent
  }) : super(
      id: id,
      visitorCpf: visitorCpf,
      visitorName: visitorName,
      name: name,
      cpf: cpf,
      phone: phone,
      birthday: birthday,
      cep: cep,
      neighborhood: neighborhood,
      address: address,
      number: number,
      dependent: dependent
  );

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> dependentList = [];
    if(dependent != null && dependent!.isNotEmpty) {
      for(Dependent element in dependent!) {
        dependentList.add((element as DependentModel).toJson());
      }
    }
    return {
      'id': id,
      'visitor_cpf': visitorCpf,
      'visitor_name': visitorName,
      'name': name,
      'cpf': cpf,
      'phone': phone,
      'birthday': birthday,
      'cep': cep,
      'neighborhood': neighborhood,
      'address': address,
      'number': number,
      'dependent': dependentList
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'visitor_cpf': visitorCpf,
      'visitor_name': visitorName,
      'name': name,
      'cpf': cpf,
      'phone': phone,
      'birthday': birthday,
      'cep': cep,
      'neighborhood': neighborhood,
      'address': address,
      'number': number,
    };
  }

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    List<DependentModel> dependentList = [];
    for(var element in json['dependent']) {
      dependentList.add(DependentModel.fromJson(element));
    }

    return RegisterModel(
      number: json['number'],
      address: json['address'],
      neighborhood: json['neighborhood'],
      cep: json['cep'],
      birthday: json['birthday'],
      phone: json['phone'],
      cpf: json['cpf'],
      name: json['name'],
      visitorName: json['visitor_name'],
      visitorCpf: json['visitor_cpf'],
      id: json['id'],
      dependent: dependentList
    );
  }

  factory RegisterModel.fromMap(Map<String, dynamic> json) {
    return RegisterModel(
        number: json['number'],
        address: json['address'],
        neighborhood: json['neighborhood'],
        cep: json['cep'],
        birthday: json['birthday'],
        phone: json['phone'],
        cpf: json['cpf'],
        name: json['name'],
        visitorName: json['visitor_name'],
        visitorCpf: json['visitor_cpf'],
        id: json['id'],
    );
  }

}

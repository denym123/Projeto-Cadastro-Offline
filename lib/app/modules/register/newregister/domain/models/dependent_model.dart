import 'package:cadastro_offline/app/modules/register/newregister/domain/dependent.dart';

class DependentModel extends Dependent {
  DependentModel({id, registerId, cpf, birthday, name})
      : super(
          id: id,
          registerId: registerId,
          cpf: cpf,
          birthday: birthday,
          name: name,
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "register_id": registerId,
      "cpf": cpf,
      "birthday": birthday,
      "name": name,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "cpf": cpf,
      "birthday": birthday,
      "register_id": registerId,
      "name": name,
    };
  }

  factory DependentModel.fromJson(Map<String, dynamic> json) {
    return DependentModel(
      id: json['id'],
      cpf: json['cpf'],
      birthday: json['birthday'],
      name: json['name'],
      registerId: json["register_id"],
    );
  }
}

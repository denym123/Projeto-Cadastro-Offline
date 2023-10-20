import 'package:cadastro_offline/app/modules/register/newregister/domain/models/dependent_model.dart';
import 'package:cadastro_offline/app/shared/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class DependentDAO {
  static const _modelName = 'dependent';

  static Future<int> save(DependentModel model) async {
    var _db = await DatabaseHelper().database;
    return await _db.insert(_modelName, model.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<DependentModel?> getById({int? id}) async {
    var _db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps =
        await _db.query(_modelName, where: "id = ?", whereArgs: [id]);
    return maps.isEmpty ? null : DependentModel.fromJson(maps.first);
  }

  static Future<List<DependentModel>> getListById({int? id}) async {
    List<DependentModel> dependentList = [];

    var _db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps =
        await _db.query(_modelName, where: 'id = ?', whereArgs: [id]);

    for (var element in maps) {
      DependentModel dependentModel = DependentModel.fromJson(element);
      dependentList.add(dependentModel);
    }
    return dependentList;
  }

  static Future<List<DependentModel>> getByRegisterId(
      {required int registerId}) async {
    List<DependentModel> dependentList = [];
    var _db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps = await _db
        .query(_modelName, where: 'register_id = ?', whereArgs: [registerId]);

    for(var element in maps) {
      DependentModel dependentModel = DependentModel.fromJson(element);
      dependentList.add(dependentModel);
    }
    return dependentList;
  }
}

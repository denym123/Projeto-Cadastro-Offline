import 'package:cadastro_offline/app/modules/register/newregister/domain/models/register_model.dart';
import 'package:cadastro_offline/app/shared/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class RegisterDAO {
  static const _modelName = 'register';

  static Future<int> save(RegisterModel model) async {
    var _db = await DatabaseHelper().database;
    return await _db.insert(
      _modelName,
      model.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<dynamic> getById({required int id}) async {
    var _db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps =
        await _db.query(_modelName, where: "id = ?", whereArgs: [id]);
    return maps.isEmpty ? null : RegisterModel.fromMap(maps.first);
  }

  static Future<List<RegisterModel>> getRegisterList({required int id}) async {
    List<RegisterModel> registerList = [];

    var _db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps =
        await _db.query(_modelName, where: "id = ?", whereArgs: [id]);

    for (var elements in maps) {
      registerList.add(RegisterModel.fromMap(elements));
    }

    return registerList;
  }

  static Future<List<RegisterModel>> getList() async {
    var _db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps = await _db.query(_modelName);
    return List.generate(maps.length, (i) =>
        RegisterModel.fromMap(maps[i])
    );
  }
}

//   static Future<InterviewModel?> getById({int? id}) async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps =
//     await _db.query(_modelName, where: "id = ?", whereArgs: [id!]);
//     return maps.isEmpty ? null : InterviewModel.fromDB(maps.first);
//   }
//
//   static Future<List<InterviewModel>> getListByQuestionnaireId({int? questionnaireId}) async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db
//         .query(_modelName, where: "questionnaire_id = ?", whereArgs: [questionnaireId!]);
//     return maps.isEmpty
//         ? []
//         : maps.map((e) => InterviewModel.fromDB(e)).toList();
//   }
//
//   static Future<List<InterviewModel>> getByGroupId({int? groupId}) async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db
//         .query(_modelName, where: "group_id = ?", whereArgs: [groupId!]);
//     return maps.isEmpty
//         ? []
//         : maps.map((e) => InterviewModel.fromDB(e)).toList();
//   }
//
//   static Future<List<InterviewModel>> getListNotSent() async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db
//         .query(_modelName, where: "status = ?", whereArgs: [1]);
//     return maps.isEmpty
//         ? []
//         : maps.map((e) => InterviewModel.fromDB(e)).toList();
//   }
//
//   static Future<List<InterviewModel>> getListNotSentOrFinished(int questionnaireId) async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db
//         .query(_modelName, where: "(status = ? OR status = ?) AND questionnaire_id = ?", whereArgs: [1, 0, questionnaireId]);
//     return maps.isEmpty
//         ? []
//         : maps.map((e) => InterviewModel.fromDB(e)).toList();
//   }
//
//   static Future<List<InterviewModel>> getList() async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db.query(_modelName);
//     return List.generate(maps.length, (i) =>
//         InterviewModel.fromDB(maps[i])
//     );
//   }
//
//   static Future<int?> delete(int id) async {
//     var _db = await DatabaseHelper().database;
//     return await _db.delete(
//       _modelName,
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
//
//   static Future<int?> update(InterviewModel model) async {
//     var _db = await DatabaseHelper().database;
//     return await _db.update(
//       _modelName,
//       model.toDB(),
//       where: 'id = ?',
//       whereArgs: [model.id],
//     );
//   }
//
//   static Future<List<InterviewModel>> getByPersonIdAndStatusIsSending({int? personId}) async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db
//         .query(_modelName, where: "status = ? AND person_id = ?", whereArgs: [2, personId]);
//     return maps.isEmpty
//         ? []
//         : maps.map((e) => InterviewModel.fromDB(e)).toList();
//   }
//
//   static Future<List<InterviewModel>> getListByQuestionnaireIdAndStatusIsSending({int? questionnaireId}) async {
//     var _db = await DatabaseHelper().database;
//     final List<Map<String, dynamic>> maps = await _db
//         .query(_modelName, where: "status = ? AND questionnaire_id = ?", whereArgs: [2, questionnaireId]);
//     return maps.isEmpty
//         ? []
//         : maps.map((e) => InterviewModel.fromDB(e)).toList();
//   }
// }

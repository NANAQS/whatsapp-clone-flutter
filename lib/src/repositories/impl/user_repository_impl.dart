import 'dart:convert';

import 'package:zapzap/src/repositories/user_repository.dart';
import 'package:http/http.dart' as http;
import '../../model/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<UserModel>> getUsers() async {
    var response =
        (await http.get(Uri.parse("https://dummyjson.com/users"))).body;
    var responseMap = jsonDecode(response)["users"];
    var listUser =
        responseMap.map<UserModel>((e) => UserModel.fromMap(e)).toList();
    return listUser;
  }
}

import 'package:flutter/material.dart';
import 'package:zapzap/src/model/user_model.dart';

import '../repositories/impl/user_repository_impl.dart';
import '../services/user_service.dart';

class HomeController {
  final int? index;
  HomeController({this.index});

  void clickOpenContacts(BuildContext context) {
    Navigator.of(context).pushNamed("/contacts");
  }

  void pressContact() {}

  Future<List<UserModel>> getUsers() async {
    return await UserService(UserRepositoryImpl()).getUsers();
  }
}

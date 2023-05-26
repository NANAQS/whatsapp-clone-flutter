import '../../model/user_model.dart';

abstract class UserServiceImpl {
  Future<List<UserModel>> getUsers();
}

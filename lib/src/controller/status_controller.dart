import '../model/user_model.dart';
import '../repositories/impl/user_repository_impl.dart';
import '../services/user_service.dart';

class StatusController {
  Future<List<UserModel>> getUsers() async {
    return await UserService(UserRepositoryImpl()).getUsers();
  }
}

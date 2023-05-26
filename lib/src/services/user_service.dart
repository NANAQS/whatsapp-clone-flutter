import 'package:zapzap/src/model/user_model.dart';
import 'package:zapzap/src/repositories/user_repository.dart';
import 'package:zapzap/src/services/impl/user_service_impl.dart';

class UserService implements UserServiceImpl {
  final UserRepository _repository;

  UserService(this._repository);

  @override
  Future<List<UserModel>> getUsers() {
    return _repository.getUsers();
  }
}

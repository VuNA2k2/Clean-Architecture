import 'package:clean_architecture/domain/entities/user_entity.dart';
import 'package:clean_architecture/domain/repositories/user_repository.dart';

class UserUseCase {
  UserRepository _repository;
  UserUseCase(this._repository);

  Future<UserEntity> getUserById(String id) => _repository.getUserById(id);

  Future<UserEntity> save(UserEntity userEntity) => _repository.save(userEntity);
}
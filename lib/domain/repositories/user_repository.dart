import 'package:clean_architecture/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUserById(String id);
  Future<UserEntity> save(UserEntity userEntity);
}
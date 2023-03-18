import 'package:clean_architecture/data/dto/user_dto/user_input_dto.dart';
import 'package:clean_architecture/data/dto/user_dto/user_output_dto.dart';
import 'package:clean_architecture/data/mappers/user_mapper.dart';
import 'package:clean_architecture/data/remote/api_service.dart';
import 'package:clean_architecture/data/remote/result.dart';
import 'package:clean_architecture/data/remote/user_remote.dart';
import 'package:clean_architecture/domain/entities/user_entity.dart';
import 'package:clean_architecture/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRemote _userRemote;
  UserRepositoryImpl(this._userRemote);
  @override
  Future<UserEntity> getUserById(String id) async {
    UserInputDto userInputDto = await _userRemote.getUserById(id);
    // check null and exception
    return UserMapper.entityFromInputDto(userInputDto);
  }

  @override
  Future<UserEntity> save(UserEntity userEntity) async {
    UserInputDto userInputDto = await _userRemote.save(UserMapper.outputFromEntity(userEntity));
    // check null and exception
    return UserMapper.entityFromInputDto(userInputDto);
  }

}
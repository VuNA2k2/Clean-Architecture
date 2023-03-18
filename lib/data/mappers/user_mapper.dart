
import 'package:clean_architecture/data/dto/user_dto/user_input_dto.dart';
import 'package:clean_architecture/data/dto/user_dto/user_output_dto.dart';
import 'package:clean_architecture/domain/entities/user_entity.dart';

class UserMapper {
  static UserEntity entityFromInputDto(UserInputDto userInputDto) {
    UserEntity userEntity = UserEntity();
    userEntity.id = userInputDto.id;
    userEntity.name = userInputDto.name;
    return userEntity;
  }

  static UserOutputDto outputFromEntity(UserEntity userEntity) {
    UserOutputDto userOutputDto = UserOutputDto();
    userOutputDto.name = userEntity.name;
    return userOutputDto;
  }
}
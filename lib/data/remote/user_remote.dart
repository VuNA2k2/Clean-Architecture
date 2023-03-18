import 'package:clean_architecture/data/dto/user_dto/user_input_dto.dart';
import 'package:clean_architecture/data/dto/user_dto/user_output_dto.dart';
import 'package:clean_architecture/data/remote/api_service.dart';
import 'package:clean_architecture/data/remote/result.dart';

class UserRemote {
  ApiService _apiService;
  UserRemote(this._apiService);
  @override
  Future<UserInputDto> getUserById(String id) async {
    Result result = await _apiService.get(path: "path", param: {
      "id": id,
    },);
    // check null and exception
    return UserInputDto.fromJson(result.data!);
  }

  @override
  Future<UserInputDto> save(UserOutputDto userOutputDto) async {
    Result result = await _apiService.post(path: "path", body: userOutputDto.toJson,);
    // check null and exception
    return UserInputDto.fromJson(result.data!);
  }

}
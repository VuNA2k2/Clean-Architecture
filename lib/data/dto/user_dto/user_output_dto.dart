// data trả ra data store

class UserOutputDto {
  String? name;

  UserOutputDto();

  Map<String, dynamic> get toJson {
    return {
      "name": name,
    };
  }
}
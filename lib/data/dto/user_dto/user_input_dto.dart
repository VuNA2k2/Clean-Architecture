// data nhận từ data store

class UserInputDto {
  String? id;
  String? name;
  // có thể có thêm một vài trường khác không giống như entity
  UserInputDto(this.id, this.name);

  factory UserInputDto.fromJson(Map<String, dynamic> json) {
    return UserInputDto(json["id"], json["name"]);
  }
}
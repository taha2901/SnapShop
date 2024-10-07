import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponseBody {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;

  RegisterResponseBody({this.message, this.userData, this.status, });

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  int? id;
  String? email;
  String? phone;
  String? image;
  String? token;
  String? name;

  UserData(
      {this.name, this.token, this.id, this.email, this.phone, this.image});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
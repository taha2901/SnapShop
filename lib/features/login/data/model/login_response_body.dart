import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';
@JsonSerializable()
class LoginResponseBody {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;

  LoginResponseBody({this.message, this.userData, this.status});

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
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

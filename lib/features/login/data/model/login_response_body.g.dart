// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseBody _$LoginResponseBodyFromJson(Map<String, dynamic> json) =>
    LoginResponseBody(
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$LoginResponseBodyToJson(LoginResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      name: json['name'] as String?,
      token: json['token'] as String?,
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'token': instance.token,
      'name': instance.name,
    };

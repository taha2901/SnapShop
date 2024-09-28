import 'data.dart';

class AddOrRemoveFavouriteResponseModel {
  bool? status;
  String? message;
  Data? data;

  AddOrRemoveFavouriteResponseModel({this.status, this.message, this.data});

  factory AddOrRemoveFavouriteResponseModel.fromJson(Map<String, dynamic> json) {
    return AddOrRemoveFavouriteResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}

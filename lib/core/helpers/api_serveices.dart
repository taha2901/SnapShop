import 'package:dio/dio.dart';

class ApiServeices {
  final Dio dio = Dio();
  Future<Response> POST({
    required String url,
    required body,
    required String token,
    String? contentType,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        headers: {
          'lang': 'en',
          'Authorization': 'Bearer $token',
          'Content-Type': contentType ?? 'application/json',
        },
      ),
    );
    return response;
  }
}

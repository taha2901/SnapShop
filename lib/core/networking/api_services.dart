import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:snap_shop/features/login/data/model/login_request_body.dart';
import '../../features/login/data/model/login_response_body.dart';
import 'api_constants.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl) 
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
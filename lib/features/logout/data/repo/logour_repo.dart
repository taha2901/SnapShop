import 'package:snap_shop/core/networking/api_services.dart';
import 'package:snap_shop/features/logout/data/model/logout_response_body/logout_response_body.dart';

class LogoutRepo {
  final ApiServices apiServices;

  LogoutRepo(this.apiServices);

  Future<LogoutResponseBody> logout(String fcmToken) async {
    final response = await apiServices.logout({'fcm_token': fcmToken});
    return response;
  }
}

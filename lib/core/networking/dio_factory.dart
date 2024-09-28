import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:snap_shop/core/helpers/constants.dart';

import '../helpers/shared_pref_helper.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    String? token = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
    print('Current Token: $token'); // Debug the token
    dio?.options.headers = {
      'lang': 'en',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': '$token',
    };
  }

  // static void setTokenIntoHeaderAfterLogin(String token) {
  //   dio?.options.headers = {
  //     'lang': 'en',
  //     'Authorization': '$token',
  //   };
  // }
  static void setTokenIntoHeaderAfterLogin(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    dio?.options.headers['Authorization'] = '$token';
  }

  // static void addDioInterceptor() {
  //   dio?.interceptors.add(
  //     PrettyDioLogger(
  //       requestBody: true,
  //       requestHeader: true,
  //       responseHeader: true,
  //     ),
  //   );
  // }

  static void addDioInterceptor() {
    dio?.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? token =
            await SharedPrefHelper.getString(SharedPrefKeys.userToken);
        options.headers['Authorization'] =
            '$token'; // Adding token to headers
        print('Token used in request: $token'); // Debugging token
        return handler.next(options);
      },
    ));

    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}

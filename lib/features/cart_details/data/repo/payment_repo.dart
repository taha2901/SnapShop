// import 'package:snap_shop/core/helpers/stripe_services.dart';
// import 'package:snap_shop/core/networking/api_error_handler.dart';
// import 'package:snap_shop/core/networking/api_result.dart';
// import 'package:snap_shop/features/cart_details/data/models/payment_intent_input.dart';
// import 'package:snap_shop/features/cart_details/data/models/payment_intent_response/payment_intent_response.dart';

// class PaymentRepo {
//   final StripeServices _stripeServices;
//   PaymentRepo(this._stripeServices);

//   Future<ApiResult<PaymentIntentResponse>> makePayment(
//       {required PaymentIntentInput paymentIntentInputModel}) async {
//     try {
//       final response = await _stripeServices.makePayment(
//           paymentIntentInputModel: paymentIntentInputModel);
//       print('API Payment Response: $response');
//       return ApiResult.success(response);
//     } catch (error) {
//       print('API Payment Error: $error');
//       return ApiResult.failure(ErrorHandler.handle(error));
//     }
//   }
// }

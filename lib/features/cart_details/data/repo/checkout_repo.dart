import 'package:dartz/dartz.dart';
import 'package:snap_shop/core/helpers/error_payment.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_input.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInput paymentIntentInputModel});
}
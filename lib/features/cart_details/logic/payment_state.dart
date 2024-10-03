import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_response/payment_intent_response.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.paymentLoading() = PaymentLoading;
  const factory PaymentState.paymentSuccess() = PaymentSuccess;
  const factory PaymentState.paymentError({required String errorMessage}) = PaymentError;
}

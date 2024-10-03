import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_input.dart';
import 'package:snap_shop/features/cart_details/data/repo/checkout_repo.dart';
import 'package:snap_shop/features/cart_details/data/repo/payment_repo.dart';
import 'package:snap_shop/features/cart_details/logic/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  // final PaymentRepo _paymentRepo;
  final CheckoutRepo checkoutRepo;
  PaymentCubit(this.checkoutRepo) : super(PaymentState.initial());

  // TextEditingController amountController = TextEditingController();
  // TextEditingController currencyController = TextEditingController();
  // final formKey = GlobalKey<FormState>();

  // void emitPaymentState(
  //     {required PaymentIntentInput paymentIntentInput}) async {
  //   emit(const PaymentState.paymentLoading());
  //   final response = await _paymentRepo.makePayment(
  //     paymentIntentInputModel: paymentIntentInput,
  //   );

  //   response.when(
  //     success: (paymentSucces) async {
  //       print('paymentSucces: ${paymentSucces.toJson()}');
  //       print("API Payment Raw Response: ${response.toString()}");

  //       emit(PaymentState.paymentSuccess(paymentIntent: paymentSucces));
  //     },
  //     failure: (error) {
  //       print('paymentError: ${error.apiErrorModel.message}');
  //       emit(PaymentState.paymentError(errorMessage: error.toString()));
  //     },
  //   );
  // }
  // @override
  // void onChange(Change<PaymentState> change) {
  //   log(change.toString());
  //   super.onChange(change);
  // }

  Future makePayment(
      {required PaymentIntentInput paymentIntentInputModel}) async {
    emit(PaymentState.paymentLoading());

    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (l) => emit(PaymentState.paymentError(errorMessage: (l.errMessage))),
      (r) => emit(
        PaymentState.paymentSuccess(),
      ),
    );
  }
}

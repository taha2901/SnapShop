import 'package:bloc/bloc.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_input.dart';
import 'package:snap_shop/features/cart_details/data/repo/checkout_repo.dart';
import 'package:snap_shop/features/cart_details/logic/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CheckoutRepo checkoutRepo;
  PaymentCubit(this.checkoutRepo) : super(PaymentState.initial());

  Future makePayment(
      {required PaymentIntentInput paymentIntentInputModel}) async {
    emit(PaymentState.paymentLoading());

    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (l) {
        emit(PaymentState.paymentError(errorMessage: (l.errMessage)));
        print('paymentError: ${l.errMessage}');
      },
      (r) {
        print('paymentSucces: ${data.toString()}');
        emit(
          PaymentState.paymentSuccess(),
        );
      },
    );
  }
}

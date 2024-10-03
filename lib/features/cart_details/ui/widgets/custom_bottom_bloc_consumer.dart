import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/widget/custom_button.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_input.dart';
import 'package:snap_shop/features/cart_details/logic/payment_cubit.dart';
import 'package:snap_shop/features/cart_details/logic/payment_state.dart';
import 'package:snap_shop/features/cart_details/ui/thank_you_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  final double total;
  const CustomButtonBlocConsumer({
    super.key, required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const ThankYouView(),
          ));
        }
        if (state is PaymentError) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            PaymentIntentInput paymentIntentInput = PaymentIntentInput(
              amount: total.toString(),
              currency: 'usd',
            );
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInput);
          },
          text: 'Continue',
        );
      },
    );
  }
}

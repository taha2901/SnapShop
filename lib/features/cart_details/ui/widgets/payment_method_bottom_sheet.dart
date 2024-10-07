import 'package:flutter/material.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/custom_bottom_bloc_consumer.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  final double total;
  const PaymentMethodsBottomSheet({super.key, required this.total});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('total: ${widget.total.toStringAsFixed(2)}');
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(16),
          PaymentMethodsListView(),
          verticalSpace(32),
          CustomButtonBlocConsumer(total:  widget.total,)
        ],
      ),
    );
  }
}

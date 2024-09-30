
import 'package:flutter/material.dart';
import 'package:snap_shop/core/widget/cutom_app_bar.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}

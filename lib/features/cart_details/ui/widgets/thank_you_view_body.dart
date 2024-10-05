import 'package:flutter/material.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/custom_check_icon.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  final double total;
  const ThankYouViewBody({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ThankYouCard(
          total: total,
        ),
        Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )),
        Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )),
        const Positioned(
          top: -50,
          left: 0,
          right: 0,
          child: CustomCheckIcon(),
        ),
      ],
    );
  }
}

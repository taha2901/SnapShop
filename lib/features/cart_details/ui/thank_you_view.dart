import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/widget/build_appbar.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  final double? total;
  const ThankYouView({super.key, this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildApBar(),
              verticalSpace(32),
              Transform.translate(
                  offset: const Offset(0, -16),
                  child: ThankYouViewBody(
                    total: total!,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

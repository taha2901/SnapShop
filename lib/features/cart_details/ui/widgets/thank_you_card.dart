import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/card_info_widget.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/payment_info_item.dart';
import 'package:snap_shop/features/cart_details/ui/widgets/total_price_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: TextStyles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: TextStyles.style20,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .04,
            ),
            const PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .01,
            ),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .01,
            ),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(title: 'Total', value: r'$50.97'),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .02,
            ),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  height: MediaQuery.sizeOf(context).height * .07,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: TextStyles.style24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            // ),
          ],
        ),
      ),
    );
  }
}

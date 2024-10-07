import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/features/notification/data/model/notification_data_list.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NotificationListViewItem extends StatelessWidget {
  final NotificationDataList notificationDataList;
  const NotificationListViewItem({
    super.key,
    required this.notificationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: EdgeInsets.all(28.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsManager.grey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            const Icon(Iconsax.notification),
            horizontalSpace(24),
            Expanded(
              child: Text(notificationDataList.message.toString(),
                  maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}

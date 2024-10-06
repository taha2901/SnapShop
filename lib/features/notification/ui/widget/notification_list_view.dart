import 'package:flutter/material.dart';
import 'package:snap_shop/features/notification/logic/notification_cubit.dart';
import 'package:snap_shop/features/notification/ui/widget/notification_list_view_item.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => NotificationListViewItem(
        notificationDataList: NotificationCubit.get(context)
            .notificationDataList!
            .notificationData!
            .notificationDataList![index],
      ),
      itemCount: NotificationCubit.get(context)
              .notificationDataList
              ?.notificationData
              ?.notificationDataList
              ?.length ??
          0,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:snap_shop/features/notification/data/model/notification_data_list.dart';
import 'package:snap_shop/features/notification/ui/widget/notification_list_view_item.dart';

class NotificationListView extends StatelessWidget {
  final List<NotificationDataList> notificationDataList;
  final bool isLoading;
  const NotificationListView({
    super.key,
    required this.notificationDataList, required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NotificationListViewItem(
        notificationDataList: notificationDataList[index],
      ),
      itemCount: notificationDataList.length,
    );
  }
}

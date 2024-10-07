import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/notification/logic/notification_cubit.dart';
import 'package:snap_shop/features/notification/logic/notification_state.dart';
import 'package:snap_shop/features/notification/ui/widget/notification_list_view.dart';
import 'package:snap_shop/features/notification/ui/widget/notification_shimmer_laoding.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationCubit, NotificationState>(
      listener: (context, state) {},
      builder: (context, state) {
        // الحصول على بيانات الـ NotificationCubit
        var notificationDataList = NotificationCubit.get(context).notificationDataList?.notificationData?.notificationDataList;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text('Notification'),
            centerTitle: true,
          ),
          // عرض الحالة بناءً على البيانات والحالة الحالية
          body: (state is NotificationLoading || notificationDataList!.isEmpty ?? true)
              ? const NotificationShimmerLoading()
              : state is NotificationSuccess
                  ? NotificationListView()
                  : Container(),
        );
      },
    );
  }
}

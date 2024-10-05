import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/notification/logic/notification_cubit.dart';
import 'package:snap_shop/features/notification/ui/widget/notifications_details_grid_view_bloc_builder.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  NotificationCubit? _notificationCubit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // حفظ المرجع إلى الـ Cubit
    _notificationCubit = context.read<NotificationCubit>();
  }

  @override
  void dispose() {
    // غلق الـ Cubit هنا بدون الحاجة لاستخدام context
    _notificationCubit?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Notification'),
          centerTitle: true,
        ),
        body: const NotificationBlocBuilder());
  }
}

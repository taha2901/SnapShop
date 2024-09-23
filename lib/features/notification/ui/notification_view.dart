import 'package:flutter/material.dart';
import 'package:snap_shop/features/notification/ui/widget/categories_details_grid_view_bloc_builder.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.transparent,
        title: const Text('Notification'),
        centerTitle: true,
      ),
      body:  const NotificationBlocBuilder()
    );
  }
}

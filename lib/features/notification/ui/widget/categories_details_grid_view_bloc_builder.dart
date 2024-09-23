import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/notification/logic/notification_cubit.dart';
import 'package:snap_shop/features/notification/logic/notification_state.dart';
import 'package:snap_shop/features/notification/ui/widget/notification_list_view.dart';

class NotificationBlocBuilder extends StatelessWidget {
  const NotificationBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
        buildWhen: (previous, current) =>
            current is NotificationLoading ||
            current is NotificationSuccess ||
            current is NotificationError,
        builder: (context, state) {
          return state.maybeWhen(
            notificationLoading: () => setUpLoading(),
            notificationSuccess: (notificationDataList) {
              return setUpSuccess(notificationDataList);
            },
            notificationError: (error) => setupError(error),
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget setupError(ErrorHandler error) {
    return Center(
        child: Scaffold(
            body:
                Center(child: Text('Error: ${error.apiErrorModel.message}'))));
  }

  Widget setUpSuccess(categoriesDataList) {
    return NotificationListView(notificationDataList: categoriesDataList,);
  }

  Widget setUpLoading() {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

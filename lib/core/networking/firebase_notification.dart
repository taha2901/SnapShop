import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:snap_shop/core/routings/routers.dart';
import 'package:snap_shop/snap_shop_app.dart';

class FirebaseNotification {
  // create instance of FCM
  final _fcm = FirebaseMessaging.instance;

  //initialize notification for this app
  Future<void> initNotification() async {
    await _fcm.requestPermission();
    String? token = await _fcm.getToken();
    print('token: $token');
  }

  //handle notification when recieved
  void handleMessage(RemoteMessage? message) {
    print('handleMessage: ${message?.data}');
    if (message == null || message.data.isEmpty) return;
    navigatorKey.currentState?.pushNamed(Routers.fcm, arguments: message);
  }

  //handle notification in case of app is terminated
  Future handleBackgroundNotification() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}

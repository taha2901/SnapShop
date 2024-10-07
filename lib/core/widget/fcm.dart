import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FCMScreen extends StatelessWidget {
  const FCMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استلام البيانات المرسلة مع الرسالة
    final RemoteMessage? message = ModalRoute.of(context)?.settings.arguments as RemoteMessage?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('FCM'),
      ),
      body: Column(
        children: [
          if (message != null) ...[
            Text('Message Data: ${message.data}'),
            Text('Notification Title: ${message.notification?.title}'),
            Text('Notification Body: ${message.notification?.body}'),
          ] else ...[
            Text('No message received.'),
          ],
        ],
      ),
    );
  }
}

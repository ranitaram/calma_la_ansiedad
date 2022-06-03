import 'package:firebase_messaging/firebase_messaging.dart';

abstract class PushNotificationsRepository {
  Future<bool> requestPermission();
  Future<void> subscribeToTopic(String topic);
  Stream<RemoteNotification> get onNotification;
}

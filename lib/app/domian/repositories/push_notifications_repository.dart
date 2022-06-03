import 'package:calmar_la_ansiedad/app/domian/models/app_notfication.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class PushNotificationsRepository {
  Future<bool> requestPermission();
  Future<void> subscribeToTopic(String topic);
  Stream<AppNotiication> get onNotification;
}

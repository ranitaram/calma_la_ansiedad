import 'package:calmar_la_ansiedad/app/domian/models/app_notfication.dart';

abstract class PushNotificationsRepository {
  Future<String?> get deviceToken;
  Future<AppNotiication?> get initialNotification;
  Future<bool> requestPermission();
  Future<void> subscribeToTopic(String topic);
  Stream<AppNotiication> get onNotification;
}

import 'dart:async';
import 'dart:convert';

import 'package:calmar_la_ansiedad/app/domian/models/app_notfication.dart';
import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:calmar_la_ansiedad/app/helpers/platform.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsRepositoryImpl implements PushNotificationsRepository {
  final FirebaseMessaging _messaging;
  StreamController<AppNotiication>? _streamController;

  PushNotificationsRepositoryImpl(this._messaging) {
    _init();
  }

  void _init() {
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      final type = message.data['type'];
      if (notification != null && type != null) {
        dynamic content;
        if (type == AppNotificationsTypes.PROMO) {
          content = jsonDecode(message.data['content']);
        }
        final appNotification = AppNotiication(
            title: notification.title ?? '',
            body: notification.body ?? '',
            type: type,
            content: content);

        if (_streamController != null && _streamController!.hasListener) {
          _streamController!.sink.add(appNotification);
        }
      }
    });
  }

  @override
  Future<bool> requestPermission() async {
    if (isIOS) {
      final settings = await _messaging.requestPermission();
      return settings.authorizationStatus == AuthorizationStatus.authorized;
    }
    return true;
  }

  @override
  Future<void> subscribeToTopic(String topic) {
    return _messaging.subscribeToTopic(topic);
  }

  @override
  Stream<AppNotiication> get onNotification {
    //_streamController = _streamController ?? StreamController.broadcast();
    _streamController ??= StreamController.broadcast();
    return _streamController!.stream;
  }
}

import 'dart:async';

import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:calmar_la_ansiedad/app/helpers/platform.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsRepositoryImpl implements PushNotificationsRepository {
  final FirebaseMessaging _messaging;
  StreamController<RemoteNotification>? _streamController;

  PushNotificationsRepositoryImpl(this._messaging) {
    _init();
  }

  void _init() {
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      print("message.data ${message.data}");
      if (notification != null) {
        print("notification.title: ${notification.title}");
        print("notification.body: ${notification.body}");
        if (_streamController != null && _streamController!.hasListener) {
          _streamController!.sink.add(notification);
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
  Stream<RemoteNotification> get onNotification {
    //_streamController = _streamController ?? StreamController.broadcast();
    _streamController ??= StreamController.broadcast();
    return _streamController!.stream;
  }
}

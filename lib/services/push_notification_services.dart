import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:async';

//Lo hacemos estaticos para no crear instancias de la clase
class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static String? token;

  static final StreamController<String> _messageStream =
      StreamController.broadcast();

  static Stream<String> get messageStream => _messageStream.stream;

  static Future _backgroundHandler(RemoteMessage message) async {
    // print('onBackground Handler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['userid'] ?? 'No data');
  }

  static Future _onMessagedHandler(RemoteMessage message) async {
    // print('onMessage Handler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['userid'] ?? 'No data');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    // print('onMessageOpenApp Handler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['userid'] ?? 'No data');
  }

  static Future initializeApp() async {
    //push notification
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print("Token: $token");

    //Handler
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    //este de abajo es cuando la app esta abierta
    FirebaseMessaging.onMessage.listen(_onMessagedHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);

    //localonotification
  }

  static closeStream() {
    _messageStream.close();
  }
}

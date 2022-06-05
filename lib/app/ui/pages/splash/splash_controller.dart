import 'package:calmar_la_ansiedad/app/domian/models/app_notfication.dart';
import 'package:calmar_la_ansiedad/app/domian/repositories/authentication_repository.dart';
import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:calmar_la_ansiedad/app/ui/routes/routes.dart';
import 'package:flutter/widgets.dart' show ChangeNotifier;
import 'package:get_it/get_it.dart';

class SplashController extends ChangeNotifier {
  SplashController() {}

  String? _routeName;
  String? get routeName => _routeName;

  Object? _pageArguments;
  Object? get pageArguments => _pageArguments;

  final _authenticationRepository = GetIt.I.get<AuthenticationRepository>();
  final _pushNotificationRepository =
      GetIt.I.get<PushNotificationsRepository>();

  Future<void> _init() async {
    final accessToken = await _authenticationRepository.accessToken;
    if (accessToken != null) {}
    final initialNotification =
        await _pushNotificationRepository.initialNotification;

    print("initialNotification != null ${initialNotification != null}");
    if (initialNotification != null) {
      switch (initialNotification.type) {
        case AppNotificationsTypes.PROMO:
          _pageArguments = initialNotification.content['productoId'];
          _routeName = Routes.TRANQUILIDAD;
          break;
        case AppNotificationsTypes.CHAT:
          _pageArguments = initialNotification.content['chatId'];
          _routeName = Routes.CHATS;
          break;
      }
    } else {
      _routeName = accessToken != null ? Routes.HOME : Routes.LOGIN;
    }
    notifyListeners();
  }
}

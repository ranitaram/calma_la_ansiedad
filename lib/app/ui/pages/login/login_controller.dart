import 'package:calmar_la_ansiedad/app/domian/repositories/authentication_repository.dart';
import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:get_it/get_it.dart';

class LoginController {
  final _pushNotificationRepository =
      GetIt.I.get<PushNotificationsRepository>();

  final _authenticationRepository = GetIt.I.get<AuthenticationRepository>();

  String _email = '';

  void onEmailChanged(String text) {
    _email = text;
  }

  Future<bool> submit() async {
    final deviceToken = await _pushNotificationRepository.deviceToken;
    print("deviceToken $deviceToken");
    return true;
  }
}

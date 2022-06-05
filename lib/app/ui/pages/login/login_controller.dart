import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:get_it/get_it.dart';

class LoginController {
  final _pushNotificationRepository =
      GetIt.I.get<PushNotificationsRepository>();
  String _email = '';

  void onEmailChanged(String text) {
    _email = text;
  }

  Future<bool> submit() async {
    final deviceToken = await _pushNotificationRepository.deviceToken;
    return true;
  }
}

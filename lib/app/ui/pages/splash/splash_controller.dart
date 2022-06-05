import 'package:calmar_la_ansiedad/app/domian/repositories/authentication_repository.dart';
import 'package:calmar_la_ansiedad/app/ui/routes/routes.dart';
import 'package:flutter/widgets.dart' show ChangeNotifier;
import 'package:get_it/get_it.dart';

class SplashController extends ChangeNotifier {
  SplashController() {
    _init();
  }

  String? _routeName;
  String? get routeName => _routeName;

  final _authenticationRepository = GetIt.I.get<AuthenticationRepository>();

  Future<void> _init() async {
    final accessToken = await _authenticationRepository.accessToken;
    _routeName = accessToken != null ? Routes.HOME : Routes.LOGIN;
    notifyListeners();
  }
}

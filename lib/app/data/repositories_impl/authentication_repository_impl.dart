import 'package:calmar_la_ansiedad/app/data/providers/local/authentication_client.dart';
import 'package:calmar_la_ansiedad/app/data/providers/remote/authentication_api.dart';

import '../../domian/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationClient _client;
  final AuthenticationApi _authenticationApi;

  AuthenticationRepositoryImpl(this._client, this._authenticationApi);
  @override
  Future<String?> get accessToken => _client.accessToken;

  @override
  Future<bool> logOut() async {
    final isOk = await _authenticationApi.logOut();
    if (isOk) {
      await _client.delete();
      return true;
    }
    return false;
  }

  @override
  Future<bool> login(String email, String? deviceToken) async {
    final accessToken = await _authenticationApi.login(email, deviceToken);
    if (accessToken != null) {
      _client.saveToken(accessToken);
      return true;
    }
    return false;
  }
}

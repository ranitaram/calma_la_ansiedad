abstract class AuthenticationRepository {
  Future<String?> get accessToken;
  Future<bool> login(String email, String? deviceToken);
  Future<bool> logOut();
}

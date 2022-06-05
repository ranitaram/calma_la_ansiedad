import 'package:calmar_la_ansiedad/app/data/providers/local/authentication_client.dart';
import 'package:calmar_la_ansiedad/app/data/providers/remote/authentication_api.dart';
import 'package:calmar_la_ansiedad/app/data/repositories_impl/authentication_repository_impl.dart';
import 'package:calmar_la_ansiedad/app/data/repositories_impl/push_notifications_repository_impl.dart';
import 'package:calmar_la_ansiedad/app/domian/repositories/authentication_repository.dart';
import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

void injectDependencies() {
  final authenticationClient = AuthenticationClient(FlutterSecureStorage());
  final dio = Dio(BaseOptions(baseUrl: 'http://192.168.100.25:8080'));

  GetIt.I.registerLazySingleton<AuthenticationRepository>(() =>
      AuthenticationRepositoryImpl(
          authenticationClient, AuthenticationApi(dio, authenticationClient)));

  GetIt.I.registerLazySingleton<PushNotificationsRepository>(
      () => PushNotificationsRepositoryImpl(FirebaseMessaging.instance));
}

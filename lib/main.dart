import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';

import 'package:calmar_la_ansiedad/app/ui/routes/routes.dart';
import 'package:calmar_la_ansiedad/dependency_injection.dart';
import 'package:calmar_la_ansiedad/routes/routes.dart';
import 'package:calmar_la_ansiedad/services/push_notification_services.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

//Packages

import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'dart:io' show Platform;

//Services
import './services/navigation_service.dart';

//Providers
import './providers/authentication_provider.dart';

//Pages
import './pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  await PushNotificationService.initializeApp();
  injectDependencies();
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () {
        runApp(
          MainApp(),
        );
      },
    ),
  );
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  //final _controller = SplashController();

  final GlobalKey<ScaffoldMessengerState> messangerKey =
      new GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();
    PushNotificationService.messageStream.listen((message) {
      print('MyApp: $message');
      final snackBar = SnackBar(content: Text(message));
      messangerKey.currentState?.showSnackBar(snackBar);
    });
    // _init();
  }

  // Future<void> _init() async {
  //   final pushNotifications = GetIt.I.get<PushNotificationsRepository>();
  //   await pushNotifications.requestPermission();
  //   pushNotifications.subscribeToTopic('promos');
  // }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
          create: (BuildContext _context) {
            return AuthenticationProvider();
          },
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calma la ansiedad',
          theme: ThemeData(
            backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
            scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
            ),
          ),
          navigatorKey: NavigationService.navigatorKey,
          scaffoldMessengerKey: messangerKey,
          initialRoute: Routes.LOGIN,
          routes: routes
          // {
          //   '/login': (BuildContext _context) => LoginPage(),
          //   '/register': (BuildContext _context) => RegisterPage(),
          //   '/home': (BuildContext _context) => HomePage(),
          // },
          ),
    );
  }
}

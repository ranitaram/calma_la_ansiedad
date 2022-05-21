import 'package:flutter/material.dart';
//Services
import 'package:calmar_la_ansiedad/providers/authentication_provider.dart';

//Packages
import 'package:firebase_analytics/firebase_analytics.dart';
//pages
import 'package:calmar_la_ansiedad/pages/home_page.dart';
import 'package:calmar_la_ansiedad/pages/login_page.dart';
import 'package:calmar_la_ansiedad/pages/register_page.dart';
import 'package:calmar_la_ansiedad/pages/splash_page.dart';

//servies
import 'package:calmar_la_ansiedad/services/navigation_services.dart';
import 'package:provider/provider.dart';

void main() => runApp(SplashPage(
    key: UniqueKey(),
    onInitializationComplete: () {
      runApp(MainApp());
    }));

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
            create: (BuildContext _context) {
          return AuthenticationProvider();
        })
      ],
      child: MaterialApp(
        title: 'Calma la ansiedad',
        theme: ThemeData(
            backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
            scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: Color.fromRGBO(30, 29, 37, 1.0))),
        navigatorKey: NavigationServices.navigatorKey,
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/register': (context) => RegisterPage(),
        },
      ),
    );
  }
}

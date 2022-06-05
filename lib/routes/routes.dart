import 'package:calmar_la_ansiedad/app/ui/routes/routes.dart';
import 'package:calmar_la_ansiedad/pages/chats_page.dart';
import 'package:calmar_la_ansiedad/pages/consejos_page.dart';
import 'package:calmar_la_ansiedad/pages/home_page.dart';
import 'package:calmar_la_ansiedad/pages/login_page.dart';
import 'package:calmar_la_ansiedad/pages/register_page.dart';
import 'package:calmar_la_ansiedad/pages/tranquilidad_page.dart';
import 'package:flutter/material.dart';

// final Map<String, Widget Function(BuildContext)> routes = {
//   '/login': (BuildContext _context) => LoginPage(),
//   '/register': (BuildContext _context) => RegisterPage(),
//   '/home': (BuildContext _context) => HomePage(),
//   '/tranquilidad': (BuildContext _context) => TranquilidadPage(),
//   '/consejo': (BuildContext _context) => ConsejosPage()
// };

Map<String, Widget Function(BuildContext)> routes = {
  Routes.HOME: (_) => HomePage(),
  Routes.LOGIN: (_) => LoginPage(),
  Routes.REGISTER: (_) => RegisterPage(),
  Routes.TRANQUILIDAD: (_) => TranquilidadPage(),
  Routes.CONSEJO: (_) => ConsejosPage(),
  Routes.CHATS: (_) => ChatsPage(),
};

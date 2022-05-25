import 'package:calmar_la_ansiedad/pages/consejos_page.dart';
import 'package:calmar_la_ansiedad/pages/home_page.dart';
import 'package:calmar_la_ansiedad/pages/login_page.dart';
import 'package:calmar_la_ansiedad/pages/register_page.dart';
import 'package:calmar_la_ansiedad/pages/tranquilidad_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/login': (BuildContext _context) => LoginPage(),
  '/register': (BuildContext _context) => RegisterPage(),
  '/home': (BuildContext _context) => HomePage(),
  '/tranquilidad': (BuildContext _context) => TranquilidadPage(),
  '/consejo': (BuildContext _context) => ConsejosPage()
};

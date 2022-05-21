import 'package:flutter/material.dart';
//packages
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
//services
import 'package:calmar_la_ansiedad/services/cloud_storage_service.dart';
import 'package:calmar_la_ansiedad/services/database_service.dart';
import 'package:calmar_la_ansiedad/services/navigation_services.dart';
import 'package:calmar_la_ansiedad/services/media_service.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashPage({Key? key, required this.onInitializationComplete})
      : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5))
        .then((_) => _setup().then((_) => widget.onInitializationComplete()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calma la ansiedad',
      theme: ThemeData(
        backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
        scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
      ),
      home: Scaffold(
          body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/logo.png'))),
        ),
      )),
    );
  }

  Future<void> _setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    _registerServices();
  }

  void _registerServices() {
    GetIt.instance.registerSingleton<NavigationServices>(NavigationServices());
    GetIt.instance.registerSingleton<MediaService>(MediaService());
    GetIt.instance.registerSingleton<DatabaseService>(DatabaseService());
    GetIt.instance
        .registerSingleton<CloudStorageService>(CloudStorageService());
  }
}

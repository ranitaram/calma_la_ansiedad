//Packages
//import 'dart:async';

//import 'package:calmar_la_ansiedad/app/domian/models/app_notfication.dart';
//import 'package:calmar_la_ansiedad/app/domian/repositories/push_notifications_repository.dart';
import 'package:calmar_la_ansiedad/pages/tranquilidad_page.dart';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
//import 'package:get_it/get_it.dart';

//Pages
import '../pages/chats_page.dart';
import '../pages/users_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  // final _pushNotificationsRepository =
  //     GetIt.I.get<PushNotificationsRepository>();

  // StreamSubscription? _subscription;

  int _currentPage = 0;
  final List<Widget> _pages = [ChatsPage(), UsersPage(), TranquilidadPage()];

  @override
  void initState() {
    super.initState();
    MobileAds.instance.initialize();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _init();
    // });
  }

  // void _init() async {
  //   _subscription = _pushNotificationsRepository.onNotification
  //       .where((e) => e.type == AppNotificationsTypes.PROMO)
  //       .listen((notification) {
  //     showDialog(
  //         context: context,
  //         builder: (_) => AlertDialog(
  //               title: Text(notification.title),
  //               content: Text(notification.body),
  //             ));
  //   });
  //   final initialNotification =
  //       await _pushNotificationsRepository.initialNotification;
  //   if (initialNotification != null) {
  //     showDialog(
  //         context: context,
  //         builder: (_) => AlertDialog(
  //               title:
  //                   Text("Initial Notification ${initialNotification.title}"),
  //               content: Text(initialNotification.content.toString()),
  //             ));
  //   }
  // }

  @override
  void dispose() {
    // _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 24, 72, 87),
        currentIndex: _currentPage,
        onTap: (_index) {
          setState(() {
            _currentPage = _index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(
              Icons.chat_rounded,
              // size: 14,
            ),
          ),
          BottomNavigationBarItem(
            label: "Users",
            icon: Icon(
              Icons.supervised_user_circle_sharp,
              // size: 14,
            ),
          ),
          BottomNavigationBarItem(
            label: "Tranquilidad",
            icon: Icon(
              Icons.sunny,
              // size: 14,
            ),
          ),
        ],
      ),
    );
  }
}

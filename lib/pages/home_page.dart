import 'package:calmar_la_ansiedad/pages/chats_page.dart';
import 'package:calmar_la_ansiedad/pages/users_page%20copy.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  final List _pages = [ChatsPage(), UsersPage()];
  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  _buildUI() {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (_index) {
            setState(() {
              _currentPage = _index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "chats",
              icon: Icon(Icons.chat_bubble_sharp),
            ),
            BottomNavigationBarItem(
              label: "Usuarios",
              icon: Icon(Icons.chat_bubble_sharp),
            ),
          ]),
    );
  }
}

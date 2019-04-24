import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final int currentIndex;

  MyBottomBar(this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Text'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_module),
          title: Text('More'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
      onTap: (index) => _handleNavigationAction(context, index),
    );
  }

  void _handleNavigationAction(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, 'home');
        break;

      case 1:
        break;

      case 2:
        Navigator.pushReplacementNamed(context, 'user');
        break;
    }
  }
}

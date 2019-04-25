import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final String barItem;
  final Map<String, int> _barItemIndexMap = {
    'home': 0,
    'more': 1,
    'user': 2,
  };

  MyBottomBar(this.barItem);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _barItemIndexMap[barItem],
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
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
        print('More action');
        break;

      case 2:
        Navigator.pushReplacementNamed(context, 'user');
        break;
    }
  }
}

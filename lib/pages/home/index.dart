import 'package:flutter/material.dart';

import 'package:flutter_login_and_user_profile_example/widgets/bottom_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: <Widget>[
          _buildSearchButton(),
          _buildNotificationButton(),
        ],
      ),
      body: Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: MyBottomBar('home'),
    );
  }

  Widget _buildSearchButton() {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: _handleSearchAction,
    );
  }

  Widget _buildNotificationButton() {
    return IconButton(
      icon: Icon(Icons.notifications),
      onPressed: _handleNotificationAction,
    );
  }

  void _handleSearchAction() {
    print('Search action');
  }

  void _handleNotificationAction() {
    print('Notification action');
  }
}

import 'package:flutter/material.dart';

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

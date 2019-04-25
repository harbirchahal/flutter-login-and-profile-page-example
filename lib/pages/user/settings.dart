import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          _buildNotificationsTile(),
          Divider(),
          _buildChangePasswordTile(),
        ],
      ),
    );
  }

  Widget _buildNotificationsTile() {
    return ListTile(
      title: Text('Notifications'),
      trailing: Switch(
        value: _notificationToggle,
        onChanged: _handleNotificationToggleAction,
      ),
    );
  }

  Widget _buildChangePasswordTile() {
    return ListTile(
      title: Text('Change Password'),
      onTap: _handleChangePasswordAction,
    );
  }

  void _handleNotificationToggleAction(bool value) {
    setState(() {
      _notificationToggle = value;
    });
  }

  void _handleChangePasswordAction() {
    print('Change Password action');
  }
}

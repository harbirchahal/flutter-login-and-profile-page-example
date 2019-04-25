import 'package:flutter/material.dart';

import 'package:flutter_login_and_profile_page_example/widgets/bottom_bar.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    _buildProfileDetailsTile(context),
                    Divider(),
                  ],
                ),
                _buildSettingsTile(context),
              ],
            ),
          ),
          RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      bottomNavigationBar: MyBottomBar('user'),
    );
  }

  Widget _buildProfileDetailsTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.chrome_reader_mode),
      title: Text('Profile Details'),
      subtitle: Text('Change your profile details'),
      trailing: Icon(Icons.chevron_right),
      onTap: () => _handleProfileDetailsAction(context),
    );
  }

  Widget _buildSettingsTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.settings_cell),
      title: Text('Settings'),
      subtitle: Text('Manage app settings & password'),
      trailing: Icon(Icons.chevron_right),
      onTap: () => _handleSettingsAction(context),
    );
  }

  void _handleProfileDetailsAction(BuildContext context) {
    Navigator.pushNamed(context, 'user/profile');
  }

  void _handleSettingsAction(BuildContext context) {
    Navigator.pushNamed(context, 'user/settings');
  }
}

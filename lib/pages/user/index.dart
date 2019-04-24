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
                    _buildProfileDetailsTile(),
                    Divider(),
                  ],
                ),
                _buildSettingsTile(),
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
      bottomNavigationBar: MyBottomBar(2),
    );
  }

  Widget _buildProfileDetailsTile() {
    return ListTile(
      leading: Icon(Icons.chrome_reader_mode),
      title: Text('Profile Details'),
      subtitle: Text('Change your profile details'),
      trailing: Icon(Icons.chevron_right),
      onTap: _handleProfileDetailsAction,
    );
  }

  Widget _buildSettingsTile() {
    return ListTile(
      leading: Icon(Icons.settings_cell),
      title: Text('Settings'),
      subtitle: Text('Manage app settings & password'),
      trailing: Icon(Icons.chevron_right),
      onTap: _handleSettingsAction,
    );
  }

  void _handleProfileDetailsAction() {
    print('Profile Details action');
  }

  void _handleSettingsAction() {
    print('Settings action');
  }
}

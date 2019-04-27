import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_login_and_user_profile_example/pages/auth/login.dart';
import 'package:flutter_login_and_user_profile_example/pages/home/index.dart';
import 'package:flutter_login_and_user_profile_example/pages/user/index.dart';
import 'package:flutter_login_and_user_profile_example/pages/user/profile.dart';
import 'package:flutter_login_and_user_profile_example/pages/user/settings.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginPage(),
        'home': (context) => HomePage(),
        'user': (context) => UserPage(),
        'user/profile': (context) => ProfilePage(),
        'user/settings': (context) => SettingsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print('[MyApp] onGenerateRoute: ' + settings.toString());
        return null;
      },
      onUnknownRoute:  (RouteSettings settings) {
        print('[MyApp] onUnknownRoute: ' + settings.toString());
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Page not found'),
              ),
              body: Center(
                child: ListView(
                  children: <Widget>[
                    Text(settings.name),
                    FlatButton(
                      child: Text('Home'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

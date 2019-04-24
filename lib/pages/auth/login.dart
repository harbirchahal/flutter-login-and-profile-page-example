import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(),
              SizedBox(height: 20.0),
              _buildUsernameField(),
              SizedBox(height: 10.0),
              _buildPasswordField(context),
              SizedBox(height: 15.0),
              _buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email',
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextField(
      obscureText: _passwordObscured,
      decoration: InputDecoration(
        hintText: 'Password',
        suffixIcon: IconButton(
          icon:
              Icon(_passwordObscured ? Icons.visibility_off : Icons.visibility),
          color: Colors.grey,
          onPressed: () {
            setState(() {
              _passwordObscured = !_passwordObscured;
            });
          },
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        'Login',
        textAlign: TextAlign.center,
      ),
      onPressed: _handleLoginAction,
    );
  }

  void _handleLoginAction() {
    Navigator.pushReplacementNamed(context, 'home');
  }
}

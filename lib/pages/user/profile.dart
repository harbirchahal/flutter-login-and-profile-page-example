import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {
    'firstname': null,
    'lastname': null,
    'phone': null,
    'email': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Details'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _buildFirstnameField(),
              _buildLastnameField(),
              _buildPhoneField(),
              _buildEmailField(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: _buildSaveDetailsButton(context),
        ),
      ),
    );
  }

  Widget _buildFirstnameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'First Name',
      ),
      onSaved: (value) {
        _formData['firstname'] = value.trim();
      },
    );
  }

  Widget _buildLastnameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Last Name',
      ),
      onSaved: (value) {
        _formData['lastname'] = value.trim();
      },
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Mobile Number',
      ),
      onSaved: (value) {
        _formData['phone'] = value.trim();
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
      ),
      onSaved: (value) {
        _formData['email'] = value.trim();
      },
    );
  }

  Widget _buildSaveDetailsButton(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Text('Save'),
      onPressed: _handleSaveDetailsAction,
    );
  }

  void _handleSaveDetailsAction() {
    _formKey.currentState.save();
    print('Profile Details ${_formData.toString()}');
  }
}

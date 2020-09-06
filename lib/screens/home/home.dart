import 'package:firebase_demo/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Welcome'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: [
            FlatButton.icon(
              onPressed: () {
                _authService.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_demo/services/auth.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sig in'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: RaisedButton(
          child: Text('Sign in anon'),
          onPressed: ()  async {
            print('on press');
            var result = await _auth.signInAnon();
            print('on press');
            if (result == null) {
              print('Error sign in');
            } else {
              print('Sign in success');
              print(result);
            }
          },
        ),
      ),
    );
  }
}

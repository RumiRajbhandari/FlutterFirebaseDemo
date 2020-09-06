import 'package:firebase_demo/models/user_model.dart';
import 'package:firebase_demo/screens/authenticate/authenticate.dart';
import 'package:firebase_demo/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

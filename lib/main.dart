import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/screens/wrapper.dart';
import 'package:firebase_demo/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper( ),
      ),
    );
  }
}

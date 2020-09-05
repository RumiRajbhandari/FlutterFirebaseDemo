import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInAnon() async {
    try {
      var authResult = await _auth.signInAnonymously();
      var user = authResult.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;

    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel _mapToUser(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Future signInAnon() async {
    try {
      var authResult = await _auth.signInAnonymously();
      var user = authResult.user;
      return _mapToUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Stream<UserModel> get user {
    return _auth.authStateChanges().map(_mapToUser);
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

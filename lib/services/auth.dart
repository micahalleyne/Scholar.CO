import 'package:Scholar_co/services/data_service.dart';
import 'package:Scholar_co/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> registerUser(email, password) async {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    DataService(uid: user.uid).saveUser(user);
    return userFromFirebase(user);
  }

  User _userFromFirebaseUser(FirebaseUser user) {
    return User(
      uid: user.uid,
      email: user.email,
    );
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future<User> loginUser(email, password) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return userFromFirebase(user);
  }

  Future<User> currentUser() async {
    return userFromFirebase(await _auth.currentUser());
  }

  User userFromFirebase(user) {
    return User(
      email: user.email,
      uid: user.uid,
    );
  }

  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

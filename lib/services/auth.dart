import 'package:Scholar_co/services/data_service.dart';
import 'package:Scholar_co/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Auth{

  FirebaseAuth _auth = FirebaseAuth.instance;
  DataService service = DataService();

  Future<User> registerUser(email, password) async {
    AuthResult result =
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    service.saveUser(user);
    return userFromFirebase(user);
  }


  Future<User> loginUser(email, password) async {
    AuthResult result =
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return userFromFirebase(user);
  }

  Future<User> currentUser() async {
    return userFromFirebase(await _auth.currentUser());
  }

  User userFromFirebase(user) {
    return User(email: user.email, uid: user.uid,);
  }

}
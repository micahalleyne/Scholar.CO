import 'package:firebase_database/firebase_database.dart';

class DataService {
  final String uid;
  DataService({this.uid});

  final connection = FirebaseDatabase.instance.reference();

  Future<void> saveUser(user) {
    final userRef = connection.child('user').child(user.uid);
    userRef.set({
      'uid': user.uid,
      'email': user.email,
    });
  }

  // saveTeacher
  Future<void> saveTeacher(fname, lname, grade, subject, user) {
    final teacherRef = connection.child('teachers').child(user.uid);
    teacherRef.set({
      'fname': fname,
      'lname': lname,
      'grade': grade,
      'subject': subject,
    });
  }

  // saveProgram

  // saveOrganization
}

import 'package:Scholar_co/programs/program_signup.dart';
import 'package:Scholar_co/teachers/teacher_signup.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf582C9E0),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: MaterialButton(
                    minWidth: 30,
                    padding: EdgeInsets.all(30),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSignup()),
                      );
                    },
                    child: Text(
                      "Teacher Sign Up",
                      style: TextStyle(
                        color: Color(0xf582C9E0),
                        fontSize: 35,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: MaterialButton(
                    minWidth: 30,
                    padding: EdgeInsets.all(30),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PSignup()),
                      );
                    },
                    child: Text(
                      "Program Sign Up",
                      style: TextStyle(
                        color: Color(0xf582C9E0),
                        fontSize: 35,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  child: MaterialButton(
                    minWidth: 30,
                    padding: EdgeInsets.all(30),
                    onPressed: () async {},
                    child: Text(
                      "Student Login",
                      style: TextStyle(
                        color: Color(0xf582C9E0),
                        fontSize: 35,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:Scholar_co/home.dart';
import 'package:Scholar_co/landing.dart';
import 'package:Scholar_co/services/auth.dart';
import 'package:Scholar_co/services/data_service.dart';
import 'package:Scholar_co/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TLogin extends StatefulWidget {
  _TLoginState createState() => _TLoginState();
}

class _TLoginState extends State<TLogin> {
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();
  Auth auth = Auth();
  DataService service = DataService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf582C9E0),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 175,
                  ),
                  Text(
                    'Teacher Sign Up',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    obscureText: false,
                    validator: (val) => val.isEmpty ? 'Enter First Name' : null,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: false,
                    validator: (val) => val.isEmpty ? 'Enter Last Name' : null,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    validator: (val) => val.isEmpty ? 'Enter Grade' : null,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'Grade',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: false,
                    validator: (val) => val.isEmpty ? 'Enter a Subject' : null,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'Subject',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          // User user = await service.saveTeacher(fname, lname, grade, subject);
                          // print(user.fname);
                          // print(user.lname);
                          // print(user.grade);
                          // print(user.subject);
                          await db.collection("user");
                          Navigator.push(
                          context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xf582C9E0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Landing()),
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: Color(0xf582C9E0),
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
      ),
    );
  }
}


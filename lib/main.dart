// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:Scholar_co/notifications/notification.dart';
import 'package:Scholar_co/profile/log_in.dart';
import 'package:Scholar_co/profile/sign_up.dart';
import 'package:flutter/material.dart';


void main() {
  Widget _defaultHome = Not();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: _defaultHome,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color(0xf582C9E0),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Scholar.co',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

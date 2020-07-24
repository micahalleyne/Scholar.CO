// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:Scholar_co/model/user.dart';
import 'package:Scholar_co/notifications/notification.dart';
import 'package:Scholar_co/services/auth.dart';
import 'package:Scholar_co/teacher_login.dart';
import 'package:Scholar_co/teachers/teachers.dart';
import 'package:Scholar_co/profile/log_in.dart';
import 'package:Scholar_co/profile/sign_up.dart';
import 'package:Scholar_co/home.dart';
import 'package:Scholar_co/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: Auth().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
    // title: 'Welcome to Flutter',
    // home: Scaffold(
    //   backgroundColor: Color(0xf582C9E0),
    //   body: Center(
    //     child: Container(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Container(
    //             child: Image(
    //               image: AssetImage('images/logo.png'),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 30.0,
    //           ),
    //           Text(
    //             'Scholar.co',
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 60.0,
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
  }
}

import 'package:Scholar_co/home.dart';
import 'package:Scholar_co/model/user.dart';
import 'package:Scholar_co/profile/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Signup();
    } else {
      return Home();
    }
  }
}
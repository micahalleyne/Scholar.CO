import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  _NotState createState() => _NotState();
}

class _NotState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xf582C9E0),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Scholar.Co',
              style: TextStyle(
                color: Color(0xf51446A0),
              )),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/bell.png'),
                  ),
                  Image(
                    image: AssetImage('images/bell.png'),
                  ),
                  Image(
                    image: AssetImage('images/bell.png'),
                  ),
                  Image(
                    image: AssetImage('images/bell.png'),
                  ),
                  Image(
                    image: AssetImage('images/bell.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: <Widget>[
                  Text('Notification'),
                  Text('Notification'),
                  Text('Notification'),
                  Text('Notification'),
                  Text('Notification'),
                ],
              ),
           ),
         ],
        ),
    );
  }
}

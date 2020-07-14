import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  _NotState createState() => _NotState();
}

class _NotState extends State<Not> {
  String search = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf582C9E0),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  // lsit of teachers
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Notification();
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/bell.png'),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: <Widget>[
              Text(
                'Notification',
                style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ],
    );
            
  }
}

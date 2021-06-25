import 'package:Scholar_co/model/teacher.dart';
import 'package:Scholar_co/review.dart';
import 'package:flutter/material.dart';
import 'package:Scholar_co/services/auth.dart';
import 'package:Scholar_co/profile/sign_up.dart';

class TProfile extends StatefulWidget {
  final Teacher teacher;
  TProfile({Key key, this.teacher}) : super(key: key);
  _TProfileState createState() => _TProfileState();
}

class _TProfileState extends State<TProfile> {
  final Auth _auth = Auth();
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf582C9E0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Scholar.Co',
          style: TextStyle(
            color: Color(0xf51446A0),
          ),
        ),
        actions: <Widget>[
          FlatButton.icon(
              label: Text('Logout'),
              icon: Icon(Icons.block),
              onPressed: () async {
                await _auth.signout();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1518882570151-157128e78fa1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          "${widget.teacher.fname} ${widget.teacher.lname}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.teacher.grade,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.teacher.subject,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(60.0),
                  child: MaterialButton(
                    minWidth: 30,
                    padding: EdgeInsets.all(30),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Review()),
                      );
                    },
                    child: Text(
                      "Review ${widget.teacher.fname}",
                      style: TextStyle(
                        color: Color(0xf582C9E0),
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 3,
                  color: Color(0xff6c757d),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

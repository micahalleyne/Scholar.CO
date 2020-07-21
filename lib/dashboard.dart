import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf582C9E0),
      body: Column(
        children: <Widget>[
          Container(
      padding: EdgeInsets.fromLTRB(32, 32, 32, 32),
      child: Column(
        children: [
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(
              height: 215,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF0FFF95),
                    width: 8,
                  ),
                ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  20,
                  30,
                  20,
                  30,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Color(0xff6c757d),
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Class',
                          style: TextStyle(
                            color: Color(0xff6c757d),
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Age Group',
                          style: TextStyle(
                            color: Color(0xff6c757d),
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
        ],
      ),
    );
  }
}

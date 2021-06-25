import 'package:Scholar_co/model/teacher.dart';
import 'package:Scholar_co/notifications/notification.dart';
import 'package:Scholar_co/teachers/teachers.dart';
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
                Material(
                  color: Color(0xf582C9E0),
                  child: MaterialButton(
                    minWidth: 200,
                    padding: EdgeInsets.fromLTRB(295.0, 5.0, 0, 15.0),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TeachersData()),
                      );
                    },
                    child: Text(
                      "More",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    height: 190,
                    width: 400,
                    padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
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
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Name',
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 18,
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
                                  fontSize: 18,
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
                                  fontSize: 18,
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
                Material(
                  color: Color(0xf582C9E0),
                  child: MaterialButton(
                    minWidth: 200,
                    padding: EdgeInsets.fromLTRB(235.0, 5.0, 0, 15.0),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Not()),
                      );
                    },
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    height: 190,
                    width: 400,
                    padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xF51446A0),
                        width: 8,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        10,
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
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'New Notification',
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'New Notification',
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'New Notification',
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 18,
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

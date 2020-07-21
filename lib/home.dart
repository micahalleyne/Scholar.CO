import 'package:Scholar_co/dashboard.dart';
import 'package:Scholar_co/profile/sign_up.dart';
import 'package:Scholar_co/teachers/teachers.dart';
import 'package:flutter/material.dart';
import 'package:Scholar_co/notifications/notification.dart';
import 'package:Scholar_co/profile/log_in.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final widgetOptions = [
    Dashboard(),
    Teachers(),
    Not(),
  ];
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
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
              color: Color(0xFF6c757d),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF6c757d),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              size: 35,
              color: Color(0xFF6c757d),
            ),
            title: Text(
              'Teachers',
             style: TextStyle(
                fontSize: 15,
                color: Color(0xFF6c757d),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              size: 35,
              color: Color(0xFF6c757d),
              ),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF6c757d),
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xf51446A0),
        onTap: _onItemTapped,
      ),
    );
  }
}

  
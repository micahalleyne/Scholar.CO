import 'package:Scholar_co/teachers/teacher_profile.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:Scholar_co/model/teacher.dart';

class TeachersData extends StatefulWidget {
  _TeachersDataState createState() => _TeachersDataState();
}

class _TeachersDataState extends State<TeachersData> {
  @override
  Widget build(BuildContext context) {
    final dataRef = FirebaseDatabase.instance.reference().child('teachers');
    return StreamBuilder(
        stream: dataRef.onValue,
        builder: (BuildContext context, AsyncSnapshot<Event> snapshot) {
          if (snapshot.hasData) {
            List<Teacher> list = [];
            Map<dynamic, dynamic> map = snapshot.data.snapshot.value;
            map.forEach((k, v) => list.add(Teacher(
                fname: v['fname'],
                lname: v['lname'],
                grade: v['grade'],
                subject: v['subject'],
                uid: v['uid'])));
            return Teachers(teachers: list);
          } else {
            return Container();
          }
        });
  }
}

class Teachers extends StatefulWidget {
  final List<Teacher> teachers;
  Teachers({this.teachers});
  _TeachersState createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
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
                  SizedBox(
                    height: 15,
                  ),
                  // search bar goes here
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextFormField(
                      obscureText: false,
                      validator: (val) => val.isEmpty ? 'Search..' : null,
                      onChanged: (val) {
                        setState(() => search = val.trim());
                      },
                      style: TextStyle(
                        color: Color(0xff6c757d),
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        hintStyle: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 22,
                          fontWeight: FontWeight.w200,
                        ),
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.fromLTRB(24.0, 22.0, 20.0, 22.0),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // lsit of teachers
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.teachers.length,
                      itemBuilder: (context, index) {
                        return SingleTeacher(teacher: widget.teachers[index]);
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

class SingleTeacher extends StatelessWidget {
  final Teacher teacher;
  SingleTeacher({Key key, this.teacher}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TProfile(teacher: teacher)),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
                            'https://images.unsplash.com/photo-1518882570151-157128e78fa1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            teacher.fname,
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
                            teacher.grade,
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
                            teacher.subject,
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
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

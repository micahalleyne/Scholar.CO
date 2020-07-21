import 'package:flutter/material.dart';

class Teachers extends StatefulWidget {
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
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Teacher();
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

class Teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

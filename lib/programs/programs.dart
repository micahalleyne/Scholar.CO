import 'package:Scholar_co/model/program.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ProgramsData extends StatefulWidget {
  _ProgramsDataState createState() => _ProgramsDataState();
}

class _ProgramsDataState extends State<ProgramsData> {
  @override
  Widget build(BuildContext context) {
    final dataRef = FirebaseDatabase.instance.reference().child('programs');
    return StreamBuilder(
        stream: dataRef.onValue,
        builder: (BuildContext context, AsyncSnapshot<Event> snapshot) {
          if (snapshot.hasData) {
            List<Program> list = [];
            Map<dynamic, dynamic> map = snapshot.data.snapshot.value;
            map.forEach((k, v) => list.add(Program(
                pname: v['pname'], agroup: v['agroup'], uid: v['uid'])));
            print(list[0].agroup);
            return Programs(programs: list);
          } else {
            return Container();
          }
        });
  }
}

class Programs extends StatefulWidget {
  final List<Program> programs;
  Programs({this.programs});
  _ProgramsState createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
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
                      itemCount: widget.programs.length,
                      itemBuilder: (context, index) {
                        return SingleProgram(program: widget.programs[index]);
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

class SingleProgram extends StatelessWidget {
  final Program program;
  SingleProgram({Key key, this.program}) : super(key: key);
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
                          'https://images.unsplash.com/photo-1596126429686-378afbccb40f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1535&q=80'),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          program.pname,
                          style: TextStyle(
                            color: Color(0xff6c757d),
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${program.agroup}",
                          style: TextStyle(
                            color: Color(0xff6c757d),
                            fontSize: 25,
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

import 'package:firstflutterapp/semster/Semseter1.dart';
import 'package:firstflutterapp/semster/Semseter2.dart';
import 'package:firstflutterapp/semster/Semseter3.dart';
import 'package:firstflutterapp/semster/Semseter4.dart';
import 'package:firstflutterapp/semster/Semseter5.dart';
import 'package:firstflutterapp/semster/Semseter6.dart';
import 'package:firstflutterapp/semster/Semseter7.dart';
import 'package:firstflutterapp/semster/Semseter8.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SemesterPage extends StatefulWidget {
  const SemesterPage({Key key}) : super(key: key);

  @override
  State<SemesterPage> createState() => _SemesterPageState();
}

class _SemesterPageState extends State<SemesterPage> {


  bool _mode=false;

  var themelight=ThemeData(brightness: Brightness.light,
  primarySwatch: Colors.green,
    backgroundColor: Colors.red,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 22,),
        headline2: TextStyle(fontSize: 18),
        headline3: TextStyle(fontSize: 16),
      )
      ,

  );

  var themeDark=ThemeData(brightness: Brightness.dark,
  primarySwatch: Colors.green
  ,backgroundColor: Colors.black12,


  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   brightness: !_mode?Brightness.light:Brightness.dark,
      //   primarySwatch: Colors.green
      // ),

      theme: _mode?themeDark:themelight,



      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My semester page"),
            // backgroundColor: !_mode?Colors.red:Colors.black12,
            actions: [
              Switch(value: _mode, onChanged: (val){
                setState(() {
                  _mode=!_mode;

                });

              })
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(text: "Semester 1",icon: Icon(Icons.filter_1_rounded),),
                Tab(text: "Semester 2",icon: Icon(Icons.filter_2_rounded),),
                Tab(text: "Semester 3",icon: Icon(Icons.filter_3_rounded),),
                Tab(text: "Semester 4",icon: Icon(Icons.filter_4_rounded),),
                Tab(text: "Semester 5",icon: Icon(Icons.filter_5_rounded),),
                Tab(text: "Semester 6",icon: Icon(Icons.filter_6_rounded),),
                Tab(text: "Semester 7",icon: Icon(Icons.filter_7_rounded),),
                Tab(text: "Semester 8",icon: Icon(Icons.filter_8_rounded),),

              ],
            ),

          ),
          body: TabBarView(
            children: [
              // Center(child: Text("Semester 1"),),
              // Center(child: Text("Semester 2"),),
              // Center(child: Text("Semester 3"),),
              // Center(child: Text("Semester 4"),),
              // Center(child: Text("Semester 5"),),
              // Center(child: Text("Semester 6"),),
              // Center(child: Text("Semester 7"),),
              // Center(child: Text("Semester 8"),),
              Semester1(),
              Semester2(),
              Semester3(),
              Semester4(),
              Semester5(),
              Semester6(),
              Semester7(),
              Semester8(),
            ],
          ),
        ),
      ),
    );
  }
}

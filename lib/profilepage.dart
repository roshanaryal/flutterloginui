import 'package:firstflutterapp/SqfLitePage.dart';
import 'package:firstflutterapp/semester.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'StateChangePage.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _name="";

  @override
  void initState() {
    getValues();
    // precacheImage(NetworkImage("https://picsum.photos/250?image=9"),context);
  } // SharedPreferences _pref= SharedPreferences.getInstance() as SharedPreferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("FLutter app demo"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],

      ),
      drawer: Drawer(

        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network('"https://picsum.photos/250?image=9"',height: 100,),
                    SizedBox(height: 10,),
                    Text("My flutter app",style: TextStyle(fontFamily: 'font1.ttf',fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),)
                  ],
                )

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Semester"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SemesterPage()));
              },
              trailing: Icon(Icons.ten_k_outlined),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
              trailing: Icon(Icons.ten_k_outlined),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
              trailing: Icon(Icons.ten_k_outlined),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
              trailing: Icon(Icons.ten_k_outlined),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child:
        Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ListView(
            //
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //
            //     Cardwidget("Kathmandu\nKathmandu"),
            //     Cardwidget("Lalitpur"),
            //     Cardwidget("Bhaktpur"),
            //     Cardwidget("Kathmandu"),
            //     Cardwidget("Lalitpur"),
            //     Cardwidget("Bhaktpur"),
            //     Cardwidget("Kathmandu"),
            //     Cardwidget("Lalitpur"),
            //     Cardwidget("Bhaktpur"),
            //     Cardwidget("Kathmandu"),
            //     Cardwidget("Lalitpur"),
            //     Cardwidget("Bhaktpur"),
            //   ],
            // ),
            ElevatedButton(child: Text("SetState page"),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StateChangePage()));
            },),

            SizedBox(height: 10,),
            ElevatedButton(child: Text("Semester page"),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SemesterPage()));
            },),
            SizedBox(height: 10,),
            ElevatedButton(child: Text("Sqlite Page"),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SqfLitePage()));
            },),
          ],


        ),
      ),
    );
  }

  Widget Cardwidget(String title){
    return Wrap(
      children: [
        GestureDetector(

          onTap: (){

          },
          child: Card(


            color: Colors.white,
            shadowColor: Colors.grey,
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ) ,
            child: Container(

              padding: EdgeInsets.all(16),
              child: Column(

                children: [
                  Image.network("https://picsum.photos/250?image=9",height: 40,width: 40,),
                  Text(title)
                ],
              ),
            ),
          ),
        ),
      ],

    );

  }

  void getValues() async {
    var _prefs = await SharedPreferences.getInstance();

    setState(() {
      _name=_prefs.getString("username").toString();
    });
  }
}



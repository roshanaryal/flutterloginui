import 'dart:html';

import 'package:flutter/material.dart';

import 'DetailPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {


  void ShowDialog()
  {
    showDialog(context:context,
    barrierDismissible: true,
    builder: (BuildContext context)=>
        AlertDialog(
          title: Text("Exit"),
          content: Text('Are you sure to exit'),
          actions: [
            TextButton(onPressed: (){}, child: Text("Yes")),
            TextButton(onPressed: (){

            }, child: Text("no"))
          ],

        )


    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 30,),
        ElevatedButton(child: Text("Settings"),onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>DetailPage('From settings page')));
        },),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          print("Show dialog");
          ShowDialog();
        }, child: Text("Show  diaog")),

        SizedBox(height: 10,)
        ,

      ],




    );
  }
}

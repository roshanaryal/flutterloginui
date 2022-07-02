import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(child: Text("Settings"),onPressed: (){
        Navigator.pop(context,MaterialPageRoute(builder: (context)=>DetailPage("From settings page")));
      },),

    );
  }
}

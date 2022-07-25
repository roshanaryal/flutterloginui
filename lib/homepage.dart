import 'package:firstflutterapp/animation.dart';
import 'package:firstflutterapp/dashboardpage.dart';
import 'package:firstflutterapp/profilepage.dart';
import 'package:firstflutterapp/settingspage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _screens=[DashBoardPage(),SettingsPage(),ProfilePage()];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(


        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
        ],
        onTap: (index) {

        },
      ),
      body: AnimationPage()
    );
  }
}

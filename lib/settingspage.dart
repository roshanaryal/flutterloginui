import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var _icons = [
    Icons.ac_unit_rounded,
    Icons.access_alarm,
    Icons.face_rounded,
    Icons.wallet_giftcard_outlined,
    Icons.attach_email_rounded,
    Icons.face_sharp,
    Icons.visibility,
    Icons.vibration_outlined
  ];

  void showBottomSheetDialog() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            padding: EdgeInsets.all(16),
            child: Column(
              
              children: 
              [
                Text("Share with",style: TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.facebook),
                        Text("Facebook")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.facebook),
                        Text("Twitter")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.whatsapp),
                        Text("Whatsapp")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.facebook),
                        Text("Linkedin")
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  void shwoCupertinoDialog() {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text("Title"),
              content: Text("content"),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Yes")),
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("No")),
              ],
            ));
  }

  void ShowDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => AlertDialog(
              title: Text("Exit"),
              content: Column(
                children: [
                  Text('Are you sure to exit'),
                  Icon(
                    Icons.admin_panel_settings,
                  )
                ],
              ),
              actions: [
                TextButton(onPressed: () {}, child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("no"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          child: Text("Settings"),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage('From settings page')));
          },
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              print("Show dialog");
              ShowDialog();
            },
            child: Text("Show  diaog")),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              shwoCupertinoDialog();
            },
            child: Text("SHow cupertino  dialog")),

        TextButton(
            onPressed: () {
              showBottomSheetDialog();
            },
            child: Text("Show bottom sheet dialog"))

        // GridView.count(
        //   crossAxisCount: 2,
        //   children: List.generate(_icons.length, (index) {
        //     return Center(
        //       child: Column(
        //         children: [
        //           Text('Count'),
        //           Icon(
        //             _icons[index],
        //           ),
        //         ],
        //       ),
        //     );
        //   }),
        // ),
      ],
    );
  }
}

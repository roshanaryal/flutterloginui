import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String data;
  DetailPage(String s, {this.data});

 

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.data,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

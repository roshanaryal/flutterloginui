import 'package:firstflutterapp/database/DbHelper.dart';
import 'package:flutter/material.dart';

class SqfLitePage extends StatefulWidget {
  const SqfLitePage({Key key}) : super(key: key);

  @override
  State<SqfLitePage> createState() => _SqfLitePageState();
}

class _SqfLitePageState extends State<SqfLitePage> {
  var idController = TextEditingController();
  var semesterController = TextEditingController();
  var gradeController = TextEditingController();


  bool _idError=false;
  bool semesterError=false;
  bool gradeError=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grade recorder"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: idController,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter id to delete update',
                errorText: _idError ? 'Value cannot be empty':null,
              ),
              onChanged: (text) {
                // _firstNo= text as int;
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: semesterController,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Semester',
                errorText: semesterError ? 'Value cannot be empty':null,

              ),
              onChanged: (text) {
                // _firstNo= text as int;
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: gradeController,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Grade',
                errorText: gradeError ? 'Value cannot be empty':null,

              ),
              onChanged: (text) {
                // _firstNo= text as int;
              },
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        addGrade()
                      },
                      child: Text("Add")),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(onPressed: () {
                    if (semesterController.text.isEmpty) {

                      setState(() {
                        semesterError=true;
                      });
                    } else if (gradeController.text.isEmpty) {
                      setState(() {
                        gradeError=true;
                      });

                    } else if (idController.text.isEmpty) {
                      setState(() {
                        _idError=true;
                      });
                    }else{
                      //do action
                      setState(() {
                        semesterError=false;
                        gradeError=false;
                        _idError=false;
                      });
                      String semester=semesterController.text;
                      String grade=gradeController.text;
                      String id=idController.text;
                    }
                  }, child: Text("Update")),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(onPressed: () {
                    if (semesterController.text.isEmpty) {

                      setState(() {
                        semesterError=true;
                      });
                    } else if (gradeController.text.isEmpty) {
                      setState(() {
                        gradeError=true;
                      });

                    } else if (idController.text.isEmpty) {
                      setState(() {
                        _idError=true;
                      });
                    }else{
                      //do action
                      setState(() {
                        semesterError=false;
                        gradeError=false;
                        _idError=false;
                      });
                      String semester=semesterController.text;
                      String grade=gradeController.text;
                      String id=idController.text;
                    }
                  }, child: Text("Read")),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {
              if (semesterController.text.isEmpty) {

                setState(() {
                  semesterError=true;
                });
              } else if (gradeController.text.isEmpty) {
                setState(() {
                  gradeError=true;
                });

              } else if (idController.text.isEmpty) {
                setState(() {
                  _idError=true;
                });
              }else{
                //do action
                setState(() {
                  semesterError=false;
                  gradeError=false;
                  _idError=false;
                });
                String semester=semesterController.text;
                String grade=gradeController.text;
                String id=idController.text;
              }
            }, child: Text("Delete")),
          ],
        ),
      )),
    );
  }

  void addGrade() {
    if (semesterController.text.isEmpty) {

      setState(() {
        semesterError=true;
      });
    } else if (gradeController.text.isEmpty) {
      setState(() {
        gradeError=true;
      });

    } else if (idController.text.isEmpty) {
      setState(() {
        _idError=true;
      });
    }else{
      //do action
      setState(() {
        semesterError=false;
        gradeError=false;
        _idError=false;
      });
      String semester=semesterController.text;
      String grade=gradeController.text;
      String id=idController.text;

    }
  }
}

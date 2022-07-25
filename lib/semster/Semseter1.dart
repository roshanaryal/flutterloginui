import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Semester1 extends StatefulWidget {
  const Semester1({Key key}) : super(key: key);

  @override
  State<Semester1> createState() => _Semester1State();
}

class _Semester1State extends State<Semester1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: Text("Semester overview",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),

              ),
            ),
            // Divider(height: 1,color: Colors.black,),
            // SizedBox(height: 10,),
            Wrap(

              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [

                        Row(
                          children: [
                            Icon(Icons.looks_one),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Semester 1",style: TextStyle(fontSize: 24),),
                              Text("Total credit : 40 hrs\n"+"Total subject : 6",style: TextStyle(fontSize: 16),),
                            ],)
                          ],
                        )
                       ,

                        Row(
                          children: [

                            TextButton(onPressed: (){}, child: Text("SGPA : 3.89")),
                            SizedBox(width: 10,),
                            TextButton(onPressed: (){

                              showDialog(context: context, builder: (BuildContext context )=> AlertDialog(
                                title: Text("Result"),
                                content: Text("Drawing : A+ \n CT : A- \n Workshop : A \n Chemistry : B  "),
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: Text("Ok"))
                                ],
                              ));
                            }, child: Text("View result")),

                          ],),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: Text("Courses",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            ),
            // Divider(height: 1,color: Colors.black,s),

            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                  Subject("Chemistry","A",Colors.red),
                  SizedBox(width: 10,),
                  Subject("Drawing","A-",Colors.purple),
                  SizedBox(width: 10,),
                  Subject("English","A",Colors.amber),
                  SizedBox(width: 10,),
                  Subject("Programming in c","A",Colors.grey),
                  SizedBox(width: 10,),
                  Subject("Mechanical workshop","B+",Colors.cyanAccent),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: Text("Extra activities",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            ),
            Text("1.Activity 1"),
            Text("2.Activity 2"),
            SizedBox(height: 10,),

            SizedBox(height: 10,),

            Text("1.Activity 1"),
            Text("1.Activity 1"),
            Text("1.Activity 1"),
          ],
        ),
      ),
    );
  }

  Widget Subject(String name,String grade,Color color)
  {


    bool v=false;
    Color c=color;
    return GestureDetector(
      onTap: (){

        setState(() {
          v=!v;
          print(v);
        });
        setState(() {
          c=Colors.teal;
        });
        // Fluttertoast.showToast(
        //     msg: "You clicked "+name,
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0
        // );
      },
      child: Card(
        // surfaceTintColor: c,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 24,color: c),),
              // Visibility(v?child: Text("Grade : "+grade,style: TextStyle(fontSize: 16),)),
            ],
          ),
        ),
      ),
    );
  }
}

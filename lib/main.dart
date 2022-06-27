

import 'package:firstflutterapp/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LOginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 16),
            child: Row (

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back,size: 30,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16))
              ),
              padding: EdgeInsets.only(left: 16,right: 16,top: 16),
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  RichText(
                    text: TextSpan(
                        text: "Welcome to",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                        children: const <TextSpan>[
                          TextSpan(
                              text: " Flutter App",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0))
                        ]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                      child: Text(
                        "Enter your registered email or phone number to login",
                        style: TextStyle(color: Colors.black,
                          fontSize: 16

                        ),

                      )),

                  SizedBox(height: 20,),
                  Container(
                      child: Text(
                        "Email or phone number ",
                        style: TextStyle(fontWeight:FontWeight.bold,fontSize:16.0,color: Colors.black),
                      )),
                  SizedBox(height: 5,),
                  TextField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                          ,labelText: "Email or phone"
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                      child: Text(
                        "Password",
                        style: TextStyle(fontWeight:FontWeight.bold,fontSize:16.0,color: Colors.black),
                      )),
                  SizedBox(height: 5,),
                  TextField(
                    obscureText: true,

                    decoration: InputDecoration(

                        border: OutlineInputBorder()
                        ,labelText: "Password"
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Text("Forgot Password?") ,
                    )

                  ],
                  ),
                  SizedBox(height: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(onPressed: null,child: Text("Submit",style: TextStyle(color: Colors.white),

                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)
                      ),
                      )
                    ],
                  ),


                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have a account ?"
                            ,style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Text(
                          "Sign Up"
                          ,style: TextStyle(fontSize: 16,color: Colors.red),
                        ),
                      ),

                    ],
                  )



                ],
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

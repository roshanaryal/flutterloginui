import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

import 'forgotpassword.dart';
import 'homepage.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {

  var _formKey=GlobalKey<FormFieldState>();
  bool _ShowPassword=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          
          children: [
            Lottie.asset('assets/computeranim.json',height: 200,),



            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome to our flutter app",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Email or phone"),
                    validator: (String value) {
                      if (value = null) {
                        Fluttertoast.showToast(
                            msg: "Name cannot be empty",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        return "Name cannot be empty";
                      }
                      if (value.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Name cannot be empty",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );                    }
                      if (value.split(" ").length >= 1) {
                        return null;
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(_ShowPassword?Icons.visibility:Icons.visibility_off),
                          onPressed: (){
                            setState(() {
                              _ShowPassword=!_ShowPassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(), labelText: "password"),
                    obscureText: _ShowPassword,
                    validator: (String value) {
                      if (value = null) {
                        Fluttertoast.showToast(
                            msg: "Password cannot be empty",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                      String v = value;
                      if (v.length < 8) {
                        Fluttertoast.showToast(
                            msg: "Password must be 8 or more character",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        return "Password must be 8 or more character";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context)=>const ForgotPasswordPage() )

                          );
                        },
                        child: Text(
                          "Forgot password ?",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // if(_formKey.currentState.validate()){



                          Fluttertoast.showToast(
                              msg: "Great",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                          // }

                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(1),
                            backgroundColor: MaterialStateProperty.all(Colors.red)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  )
                ],
              ),
            )


          ],

        ),
      ),
    );
  }
}

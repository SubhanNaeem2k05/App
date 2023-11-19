import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screen/Login_Screen.dart';
import 'package:flutter_project/Screen/Signup_Screen.dart';

import '../widgets/customized_button.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Icon(
                Icons.lock,
                size: 50,
              ),
              SizedBox(height: 70,),
              Text('Welcome back you\'ve have missed!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              CustomizedButton(
                buttonColor: Colors.white,
                buttonText: "Sign In",
                textColor: Colors.black,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen()));
                },
              ),
              SizedBox(height: 20,),
              CustomizedButton(
                buttonColor: Colors.white,
                buttonText: "Sign up",
                textColor: Colors.black,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup_Screen()));
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}

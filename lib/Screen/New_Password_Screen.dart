import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screen/Home_Page_Screen.dart';

import '../widgets/customized_button.dart';

class New_Password_Screen extends StatelessWidget {
  const New_Password_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.lock,
                size: 50,
              ),
            ),
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.center,
              child: Text('New Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60,
                width: 355,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.lock),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "New Password",

                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60,
                width: 355,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.lock),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Confirm Password",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            CustomizedButton(
              buttonColor: Colors.black,
              buttonText: "Submit",
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Home_Page_Screen()));
              },
            ),

          ],
        ),
      ),
    );
  }
}

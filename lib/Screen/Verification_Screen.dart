import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/Screen/New_Password_Screen.dart';

import '../widgets/customized_button.dart';
import 'Login_Screen.dart';

class Verification_Screen extends StatelessWidget {
  const Verification_Screen({super.key});

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
              child: Text('Enter Verification Code',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
            ),

            Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 44,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),


                    SizedBox(
                      height: 68,
                      width: 44,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 68,
                      width: 44,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 44,
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headlineSmall,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.black,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),


                  ],
                )
            ),

            // SizedBox(height: 50,),
            // Align(
            //   alignment: Alignment.center,
            //   child: Text('If you don\'t recevice the code!',
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold
            //     ),),
            // ),


            Padding(
              padding: EdgeInsets.fromLTRB(60, 20, 70, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'If you don\'t recevice the code!',
                    style: TextStyle(
                      color: Color(0xff1E232C),
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the sign-up screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_Screen()), // Replace SignUpScreen with the actual screen name for sign-up
                      );
                    },
                    child: Text(
                        " Resend",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),


            const SizedBox(height: 30,),
            CustomizedButton(
              buttonColor: Colors.black,
              buttonText: "Verify",
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const New_Password_Screen()));
              },
            ),





          ],
        ),

      ),





    );


  }
}

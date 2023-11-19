import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screen/Forgot_Password_Screen.dart';
import 'package:flutter_project/Screen/Signup_Screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/customized_button.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [

                //  Container(
                //   // height: 50,
                //   // width: 50,
                //   child: IconButton(
                //     icon: Icon(Icons.arrow_back_ios_sharp),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //   ),
                // ),

              Positioned(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 150,),
                      const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.lock,
                          size: 50,
                        ),
                      ),
                      SizedBox(height: 50,),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Welcome back you\'ve have missed!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          height: 60,
                          width: 355,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: IconButton(
                                icon: const Icon(Icons.mail),
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
                              hintText: "Email",

                            ),
                          ),
                        ),

                      ),

                      const SizedBox(height: 20,),
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
                              hintText: "Password",

                            ),
                          ),
                        ),

                      ),
                       Padding(
                        padding:EdgeInsets.only(top: 10,right: 25),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // Navigate to the sign-up screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Forgot_Password_Screen()), // Replace SignUpScreen with the actual screen name for sign-up
                              );
                            },
                            child: Text("Forgot Password?", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,

                            ),),

                          ),
                        ),
                      ),
                      const SizedBox(height: 40,),
                      CustomizedButton(
                        buttonColor: Colors.black,
                        buttonText: "Sign In",
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Screen()));
                        },
                      ),
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Or continue with',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {},
                                )),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                  icon: const Icon(
                                    FontAwesomeIcons.google,
                                    // color: Colors.blue,
                                  ),
                                  onPressed: () {
                                  }
                              ),
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    FontAwesomeIcons.apple,
                                    // color: Colors.blue,
                                  ),
                                  onPressed: () {},
                                ))
                          ],
                        ),
                      ),
                      // const Padding(
                      //   padding: EdgeInsets.fromLTRB(90, 20, 8, 8.0),
                      //   child: Row(
                      //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       Text("Don't have an account?",
                      //           style: TextStyle(
                      //             color: Color(0xff1E232C),
                      //             fontSize: 15,
                      //           )),
                      //
                      //       Text(" Sign up",
                      //           style: TextStyle(
                      //             color: Colors.black,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 15,
                      //           )),
                      //     ],
                      //   ),
                      // )




                      Padding(
                        padding: EdgeInsets.fromLTRB(70, 20, 75, 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Don't have an account?",
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
                                  MaterialPageRoute(builder: (context) => Signup_Screen()), // Replace SignUpScreen with the actual screen name for sign-up
                                );
                              },
                              child: Text(
                                " Sign up",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),



              ),
          ],
          ),
        ),
      ),
    );








  }
}

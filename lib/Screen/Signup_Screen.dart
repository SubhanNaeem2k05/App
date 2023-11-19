import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/customized_button.dart';
import 'Login_Screen.dart';

class Signup_Screen extends StatelessWidget {
  const Signup_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: EdgeInsets.only(top: 50.0, left: 10.0),
              //   child: Container(
              //     height: 10,
              //     width: 30,
              //     child: IconButton(
              //       icon: const Icon(Icons.arrow_back_ios_sharp),
              //       onPressed: () {
              //         Navigator.pop(context);
              //       },
              //     ),
              //   ),
              // ),
              SizedBox(height: 80),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
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
                      child: Text('let\'s create an account for you!',
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

                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 60,
                        width: 355,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon: const Icon(Icons.face),
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
                            hintText: "Username",

                          ),
                        ),
                      ),

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

                    SizedBox(height: 10,),
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
                    const SizedBox(height: 30,),
                    CustomizedButton(
                      buttonColor: Colors.black,
                      buttonText: "Sign Up",
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

                    Padding(
                      padding: EdgeInsets.fromLTRB(70, 20, 70, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Already have an account?",
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
                              " LogIn",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    )


                  ],

                ),

              )
            ],
          ),
        ),
      )

    //   body: Container(
    //     height: MediaQuery.of(context).size.height,
    //     width: double.infinity,
    //     child: SingleChildScrollView(
    //       physics: BouncingScrollPhysics(),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(top: 10.0),
    //             child: Container(
    //                 height: 10,
    //                 width: 50,
    //               child: IconButton(
    //                   icon: const Icon(Icons.arrow_back_ios_sharp),
    //                   onPressed: () {
    //                     Navigator.pop(context);
    //                   }),
    //             ),
    //           ),
    //           SingleChildScrollView(
    //             physics: BouncingScrollPhysics(),
    //               child: Column(
    //                 children: [
    //                   const SizedBox(height: 40,),
    //                   const Align(
    //                     alignment: Alignment.center,
    //                     child: Icon(
    //                       Icons.lock,
    //                       size: 50,
    //                     ),
    //                   ),
    //                   SizedBox(height: 40,),
    //                   Align(
    //                     alignment: Alignment.center,
    //                     child: Text('let\'s create an account for you!',
    //                       style: TextStyle(
    //                           color: Colors.black,
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.bold
    //                       ),),
    //                   ),
    //                   SizedBox(height: 10,),
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //                     child: Container(
    //                       height: 60,
    //                       width: 355,
    //                       child: TextField(
    //                         decoration: InputDecoration(
    //                           prefixIcon: IconButton(
    //                             icon: const Icon(Icons.mail),
    //                             onPressed: () {},
    //                           ),
    //                           enabledBorder:  OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           focusedBorder: OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           fillColor: Colors.white,
    //                           filled: true,
    //                           hintText: "Email",
    //
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //
    //
    //                   const SizedBox(height: 10,),
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //                     child: Container(
    //                       height: 60,
    //                       width: 355,
    //                       child: TextField(
    //                         decoration: InputDecoration(
    //                           prefixIcon: IconButton(
    //                             icon: const Icon(Icons.face),
    //                             onPressed: () {},
    //                           ),
    //                           enabledBorder:  OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           focusedBorder: OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           fillColor: Colors.white,
    //                           filled: true,
    //                           hintText: "Username",
    //
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //
    //                   const SizedBox(height: 10,),
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //                     child: Container(
    //                       height: 60,
    //                       width: 355,
    //                       child: TextField(
    //                         decoration: InputDecoration(
    //                           prefixIcon: IconButton(
    //                             icon: const Icon(Icons.lock),
    //                             onPressed: () {},
    //                           ),
    //                           suffixIcon: IconButton(
    //                             icon: const Icon(Icons.remove_red_eye),
    //                             onPressed: () {},
    //                           ),
    //                           enabledBorder:  OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           focusedBorder: OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           fillColor: Colors.white,
    //                           filled: true,
    //                           hintText: "Password",
    //
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //
    //                   const SizedBox(height: 10,),
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //                     child: Container(
    //                       height: 60,
    //                       width: 355,
    //                       child: TextField(
    //                         decoration: InputDecoration(
    //                           prefixIcon: IconButton(
    //                             icon: const Icon(Icons.lock),
    //                             onPressed: () {},
    //                           ),
    //                           suffixIcon: IconButton(
    //                             icon: const Icon(Icons.remove_red_eye),
    //                             onPressed: () {},
    //                           ),
    //                           enabledBorder:  OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           focusedBorder: OutlineInputBorder(
    //                             borderSide: const BorderSide(color: Colors.black),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           fillColor: Colors.white,
    //                           filled: true,
    //                           hintText: "Confirm Password",
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //
    //                   const SizedBox(height: 20,),
    //                   CustomizedButton(
    //                     buttonColor: Colors.black,
    //                     buttonText: "Sign Up",
    //                     textColor: Colors.white,
    //                     onPressed: (){
    //                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Screen()));
    //                     },
    //                   ),
    //
    //                   const SizedBox(height: 10,),
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //                     child: Row(
    //                       children: [
    //                         Expanded(
    //                           child: Divider(
    //                             thickness: 0.5,
    //                             color: Colors.grey[400],
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //                           child: Text(
    //                             'Or continue with',
    //                             style: TextStyle(color: Colors.grey[700]),
    //                           ),
    //                         ),
    //                         Expanded(
    //                           child: Divider(
    //                             thickness: 0.5,
    //                             color: Colors.grey[400],
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                       children: [
    //                         Container(
    //                             height: 50,
    //                             width: 50,
    //                             decoration: BoxDecoration(
    //                               border: Border.all(color: Colors.black, width: 1),
    //                               borderRadius: BorderRadius.circular(10),
    //                             ),
    //                             child: IconButton(
    //                               icon: const Icon(
    //                                 FontAwesomeIcons.facebookF,
    //                                 color: Colors.blue,
    //                               ),
    //                               onPressed: () {},
    //                             )),
    //                         Container(
    //                           height: 50,
    //                           width: 50,
    //                           decoration: BoxDecoration(
    //                             border: Border.all(color: Colors.black, width: 1),
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                           child: IconButton(
    //                               icon: const Icon(
    //                                 FontAwesomeIcons.google,
    //                                 // color: Colors.blue,
    //                               ),
    //                               onPressed: () {
    //                               }
    //                           ),
    //                         ),
    //                         Container(
    //                             height: 50,
    //                             width: 50,
    //                             decoration: BoxDecoration(
    //                               border: Border.all(color: Colors.black, width: 1),
    //                               borderRadius: BorderRadius.circular(10),
    //                             ),
    //                             child: IconButton(
    //                               icon: const Icon(
    //                                 FontAwesomeIcons.apple,
    //                                 // color: Colors.blue,
    //                               ),
    //                               onPressed: () {},
    //                             ))
    //                       ],
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: EdgeInsets.fromLTRB(85, 20, 75, 8.0),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                       children: [
    //                         Text(
    //                           "Already have an account?",
    //                           style: TextStyle(
    //                             color: Color(0xff1E232C),
    //                             fontSize: 15,
    //                           ),
    //                         ),
    //                         GestureDetector(
    //                           onTap: () {
    //                             // Navigate to the sign-up screen
    //                             Navigator.push(
    //                               context,
    //                               MaterialPageRoute(builder: (context) => Signup_Screen()), // Replace SignUpScreen with the actual screen name for sign-up
    //                             );
    //                           },
    //                           child: Text(
    //                             " Log In",
    //                             style: TextStyle(
    //                               color: Colors.black,
    //                               fontWeight: FontWeight.bold,
    //                               fontSize: 15,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   )
    //
    //                 ],
    //               ),
    //
    //             ),
    //         ],
    //
    //
    //
    //       ),
    //     ),
    //   ),
    //
    );
  }
}

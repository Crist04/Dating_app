// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

import 'package:partner_up/signup/oone.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 6, 12),
        body: Stack(
          children: <Widget>[
            Positioned(
                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.width *
                    0.50, //TRY TO CHANGE THIS **0.30** value to achieve your goal
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/logo.png'),
                          radius: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "PartnerUP",
                          style: GoogleFonts.caveat(
                              fontSize: 40, color: Color(0xffff878d),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: SignInWithGoogle(
                            buttonColor: Color(0xffff878d),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: SignInWithFacebook(
                            buttonColor: Color(0xffff878d),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: SignInWithFacebook(
                            buttonColor: Color(0xffff878d),
                            title: "Sign in with Phone No.",
                            
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  SignupScreen()),
                              );
                            },
                          ),
                        ),
                      ]),
                ))
          ],
        ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partner_up/home/home.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
          'images/logo.png'), //IF YOU WANT TO ADD LOGO THEN USE THIS
      title: Text(
        "PartnerUp",
        style: GoogleFonts.caveat(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Color(0xffff878d),
        ),
      ),
      backgroundColor: Colors.black,
      showLoader: true,
      loadingText: Text("Loading..." ,style: GoogleFonts.caveat(
        fontWeight: FontWeight.bold,
        fontSize: 48,
        color: Color(0xffff878d),
      ),),
      navigator:const HomeScreen(),
      durationInSeconds: 5,
    );
  }
}
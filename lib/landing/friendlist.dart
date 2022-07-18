import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendList extends StatelessWidget {
  const FriendList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend List',style: GoogleFonts.caveat(fontSize: 30),),
      ),
    );
  }
}
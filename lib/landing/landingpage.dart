// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:partner_up/landing/settingUI.dart';
import 'package:partner_up/landing/userprofile.dart';

class MyCustomUI extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<MyCustomUI> {
  int _currentIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyPlugin()),
                              );
            },
          ),
          centerTitle: true,
          elevation: 20,
          shadowColor: Colors.black.withOpacity(.4),
          backgroundColor: Colors.black,
          title: Text(
            'PartnerUP',
            textScaleFactor: 1.12,
            style: GoogleFonts.caveat(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              color: Colors.black.withOpacity(.7),
              tooltip: 'Account',
              enableFeedback: true,
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              onPressed: () {
                HapticFeedback.lightImpact();
                Navigator.push(context,
                     MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xffff878d),
            
            unselectedLabelStyle:
                TextStyle(color: Color(0xffff878d)),
            unselectedLabelColor: Color(0xffff878d),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Color(0xffff878d),
            tabs: [
              Tab(
                child: Text(
                  'NewsFeed',
                  style: GoogleFonts.caveat(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
                ),
              ),
              Tab(
                child: Text(
                  'Activity',
                  style: GoogleFonts.caveat(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
                ),
              ),
              Tab(
                child: Text(
                  'Groups',
                  style: GoogleFonts.caveat(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            mainCardWidget(context),
            mainCardWidget(context),
            mainCardWidget(context),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.black,
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Color(0xffff878d),
            textAlign: TextAlign.center,
            
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            activeColor: Color(0xffff878d),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'Messages',
            ),
            activeColor: Color(0xffff878d),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications_active),
            title: Text('Notifications'),
            activeColor: Color(0xffff878d),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      ),
    );
  }
  
}

Widget mainCardWidget(BuildContext context) {
  return Stack(
    //physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
    children: [
      Column(
        children: [
          cardWithInfoPage('assets/images/file_name.png', 'Example', context),
          cardWithInfoPage('assets/images/file_name.png', 'Example', context),
          cardWithInfoPage('assets/images/file_name.png', 'Example', context),
          cardWithInfoPage('assets/images/file_name.png', 'Example', context),
          cardWithInfoPage('assets/images/file_name.png', 'Example', context),
          cardWithInfoPage('assets/images/file_name.png', 'Example', context),
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.width / 7,
      ),
    ],
  );
}

Widget cardWithInfoPage(String image, String name, BuildContext context) {
  return cardWidget(
    context,
    infoPage(name, context),
    name,
    image,
  );
}

Widget cardWidget(
    BuildContext context, Widget route, String name, String image) {
  double _w = MediaQuery.of(context).size.width;
  double _f = MediaQuery.of(context).textScaleFactor;
  return InkWell(
    enableFeedback: true,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () {
      HapticFeedback.lightImpact();
      Navigator.push(context, MaterialPageRoute(builder: (context) => route));
    },
    child: Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.04), blurRadius: 30),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
      height: _w / 5,
      padding: EdgeInsets.all(_w / 25),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: _w / 2.0,
              // color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: _f * 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.8),
                    ),
                  ),
                  Text(
                    'Tap to know more',
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: _f * 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: _w / 5.5,
              width: _w / 3.3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0),
                color: Colors.black.withOpacity(.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1), blurRadius: 30),
                ],
                // image: DecorationImage(
                //     image: AssetImage(image), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  'Add image here',
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget infoPage(String name, BuildContext context) {
  double _f = MediaQuery.of(context).textScaleFactor;
  return Scaffold(
    backgroundColor: Color(0xffF8F9FB),
    appBar: AppBar(
      leading: IconButton(
        tooltip: 'Back',
        icon: Icon(
          CupertinoIcons.chevron_back,
          color: Colors.black.withOpacity(.7),
        ),
        onPressed: () {
          HapticFeedback.lightImpact();
          Navigator.maybePop(context);
        },
      ),
      shadowColor: Color(0xffF0F0F0).withOpacity(.4),
      elevation: 20,
      backgroundColor: Colors.white,
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: _f * 22,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          color: Colors.black.withOpacity(.7),
          tooltip: 'Settings',
          enableFeedback: true,
          icon: Icon(CupertinoIcons.gear_alt_fill),
          onPressed: () {
            HapticFeedback.lightImpact();
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => SettingsPage()));
          },
        ),
      ],
    ),
    
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/views/screens/CreatePollScreen.dart';
import 'package:protibimbo/views/screens/EventScreen.dart';
import 'package:protibimbo/views/screens/ExplorePeopleScreen.dart';
import 'package:protibimbo/views/screens/FAQScreen.dart';
import 'package:protibimbo/views/screens/GroupScreen.dart';
import 'package:protibimbo/views/screens/NotificationScreen.dart';
import 'package:protibimbo/views/screens/HomeScreen.dart';
import 'package:protibimbo/views/screens/MyPostScreen.dart';
import 'package:protibimbo/views/screens/PlaylistScreen.dart';
import 'package:protibimbo/views/screens/PrivacyAndPolicyScreen.dart';
import 'package:protibimbo/views/screens/SupportScreen.dart';
import 'package:protibimbo/views/screens/TermsAndConditionScreen.dart';
import 'package:protibimbo/views/screens/ViewPollScreen.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  _CustomNavigationDrawerState createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final double _screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      // backgroundColor:  Color(0xffFFFFFF),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 44.0,
                  backgroundColor: Colors.indigo,
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: const Color(0xFF778899),
                    backgroundImage: NetworkImage(
                        "http://tineye.com/images/widgets/mona.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudeshna Paul',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        )),
                      ),
                      // SizedBox(
                      //   height: 1,
                      // ),
                      Text(
                        'Photograper',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey[600],
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
                    title: Text(
                      'Home',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/explore_icon.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Explore',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ExplorePeopleScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/myPost_icon.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'My Post',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyPostScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/playList_icon.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Play List',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlaylistScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/event_icon.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Event',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EventScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.poll_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Poll',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ViewPollScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/termsAndCondition_icon.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Terms & Condition',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TermsAndConditionScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/privacyPolicy_icon.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Privacy Policy',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PrivacyAndPolicyScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/faq.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'FAQ',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => FAQScreen()));
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/support.png',
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Support',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SupportScreen()));
                    },
                  ),
                  // ListTile(
                  //   leading: Icon(
                  //     Icons.group_outlined,
                  //     size: 30,
                  //     color: Colors.grey[800],
                  //   ),
                  //   title: Text(
                  //     'Group',
                  //     style: GoogleFonts.poppins(
                  //         textStyle: TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 20,
                  //       color: Colors.grey[800],
                  //     )),
                  //   ),
                  //   onTap: () {
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //         builder: (context) => GroupScreen()));
                  //   },
                  // ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.grey[800],
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

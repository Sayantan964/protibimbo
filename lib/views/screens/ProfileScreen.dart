import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/views/screens/FriendListScreen.dart';
import 'package:protibimbo/views/screens/ProfileAboutScreen.dart';
import 'package:protibimbo/views/screens/UpdateProfileScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
      ),
      body: Container(
        height: _screenHeight,
        width: _screenWidth,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        child: Container(
                          height: 200,
                          width: _screenWidth,
                          child: Image.asset(
                            "assets/images/profilecoverphoto.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => UpdateProfileScreen()));
                        },
                      ),
                      Container(
                        height: 160,
                        width: _screenWidth,
                        color: Colors.transparent,
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Sudeshna Paul',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 99,
                    child: Stack(
                      children: [
                        InkWell(
                          child: CircleAvatar(
                            radius: 102.0,
                            backgroundColor: Color(0xffFF3F80),
                            child: CircleAvatar(
                              radius: 100.0,
                              backgroundColor: const Color(0xFF778899),
                              backgroundImage:
                                  AssetImage('assets/images/profilepic.png'),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UpdateProfileScreen()));
                          },
                        ),
                        Positioned(
                          right: 20,
                          top: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(Icons.edit),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'I climb every mountain and swim every ocean . Just will be with you and fix what I broken.... ♫',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: _screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 5),
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        height: 75,
                        width: _screenWidth * 0.32,
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/images/editProfile.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Edit Profile',
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateProfileScreen()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 75,
                        width: _screenWidth * 0.32,
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/images/friendList.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Friends',
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FriendListScreen()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 75,
                        width: _screenWidth * 0.32,
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                "assets/images/profileAbout.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'About',
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileAboutScreen()));
                      },
                    ),
                    // Container(
                    //   height: 75,
                    //   width: _screenWidth * 0.22,
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         height: 35,
                    //         width: 35,
                    //         child: Image.asset(
                    //           "assets/images/profileBlock.png",
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //       Text(
                    //         'Block',
                    //         style: GoogleFonts.poppins(
                    //             color: Colors.grey[800],
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w600),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Gallery',
                        style: GoogleFonts.poppins(
                            color: Colors.grey[800],
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Tagged',
                        style: GoogleFonts.poppins(
                            color: Colors.grey[600],
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery4.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery4.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery4.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery4.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            child: Image.asset(
                              "assets/images/gallery3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

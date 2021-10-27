import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/views/screens/UpdateProfileScreen.dart';

class ProfileAboutScreen extends StatefulWidget {
  const ProfileAboutScreen({Key? key}) : super(key: key);

  @override
  _ProfileAboutScreenState createState() => _ProfileAboutScreenState();
}

class _ProfileAboutScreenState extends State<ProfileAboutScreen> {
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
              buildColumn(
                  titleText: 'Work',
                  subtitleText: 'Working at Bhishnu Solutions',
                  imageAsset: 'assets/images/profileWork.png'),
              buildColumn(
                  titleText: 'Education',
                  subtitleText: 'Completed MSC from Kolkata Univercity',
                  imageAsset: 'assets/images/profileEducation.png'),
              buildColumn(
                  titleText: 'City',
                  subtitleText: 'Kolkata, West Bengal',
                  imageAsset: 'assets/images/profileCity.png'),
              buildColumn(
                  titleText: 'Relation',
                  subtitleText: 'Single',
                  imageAsset: 'assets/images/profileRelation.png'),
              buildColumn(
                  titleText: 'Hobbies',
                  subtitleText: 'Painting, Fishing',
                  imageAsset: 'assets/images/profileHobbies.png'),
              buildColumn(
                  titleText: 'Date of birth',
                  subtitleText: '15th August 1992',
                  imageAsset: 'assets/images/profileCalendar.png'),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildColumn(
      {required String titleText,
      required String subtitleText,
      required String imageAsset}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 10, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imageAsset,
                height: 25,
                width: 25,
                color: Colors.black87,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                titleText,
                style: GoogleFonts.poppins(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Text(subtitleText,
              softWrap: true,
              style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}

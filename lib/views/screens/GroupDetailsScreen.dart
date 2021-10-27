import 'package:better_player/better_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/views/screens/PendingPostScreen.dart';
import 'package:protibimbo/views/screens/UploadPostScreen.dart';

class GroupDetailsScreen extends StatefulWidget {
  const GroupDetailsScreen({Key? key}) : super(key: key);

  @override
  _GroupDetailsScreenState createState() => _GroupDetailsScreenState();
}

class _GroupDetailsScreenState extends State<GroupDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  List<String> postList = [
    'https://media.istockphoto.com/videos/chicago-aerial-view-of-downtown-video-id914376526?b=1&k=20&m=914376526&h=LQv9Cm4edpZmv6NqjdBajcyXSy9rYkt7cvXXDLUT0pg='
  ];

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color(0xffF3F3F3),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text(
            'Group Details',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Container(
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
                      SizedBox(
                        height: 0,
                      ),
                      InkWell(
                        child: Container(
                          height: 200,
                          width: _screenWidth,
                          child: Image.asset(
                            "assets/images/groupdetails.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => UpdateProfileScreen()));
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
                            'Hello Hoogly',
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
                                  AssetImage('assets/images/groupdetails.png'),
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => UpdateProfileScreen()));
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
                    Container(
                      height: 75,
                      width: _screenWidth * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Icon(
                              Icons.group_outlined,
                              size: 40,
                              color: Colors.deepPurple,
                            ),
                          ),
                          Text(
                            '1.5k',
                            style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: _screenWidth * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Icon(
                              Icons.done_sharp,
                              size: 40,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            'Join',
                            style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: _screenWidth * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Icon(
                              Icons.person_add,
                              size: 40,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            'Invite',
                            style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: _screenWidth * 0.22,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: Icon(
                              Icons.list,
                              size: 40,
                              color: Colors.grey,
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 45,
                  width: _screenWidth - 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PendingPostScreen()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff2E4ADD)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Manage Post',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: CircleAvatar(
                      radius: 32.0,
                      backgroundColor: Color(0xffFF3F80),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: const Color(0xFF778899),
                        backgroundImage:
                            AssetImage('assets/images/groupdetails.png'),
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => ProfileScreen()));
                    },
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    // padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UploadPostScreen()));
                      },
                      child: Text(
                        'Write something here',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  const CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: Color(0xffFF3F80),
                                    child: CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Color(0xFF778899),
                                      backgroundImage: AssetImage(
                                          'assets/images/profilepic.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Sunaina Malhotra',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                      width: double.infinity,
                      child: Text(
                        'like readable English. Many desktop publishing packages and web page editors',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        softWrap: true,
                      ),
                    ),
                    Container(
                      height: 220,
                      color: Colors.transparent,
                      width: double.infinity,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          // reverse: true,
                          autoPlay: false,
                        ),
                        items: postList.map((item) {
                          return BetterPlayer.network(
                            item,
                            betterPlayerConfiguration:
                                BetterPlayerConfiguration(
                                    autoPlay: false, autoDispose: false),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      width: _screenWidth,
                      child: Row(
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.thumb_up_outlined,
                              // color: Colors.black,
                            ),
                            onTap: () => print('like pressed'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: Icon(
                              Icons.thumb_down_outlined,
                              // color: Colors.black,
                            ),
                            onTap: () => print('delete pressed'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: Icon(
                              Icons.mode_comment_outlined,
                              // color: Colors.black,
                            ),
                            onTap: () => print('comment pressed'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: Icon(
                              Icons.share_outlined,
                              // color: Colors.black,
                            ),
                            onTap: () => print('share pressed'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            child: Icon(
                              Icons.add_box_outlined,
                              // color: Colors.black,
                            ),
                            onTap: () => print('add pressed'),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text('August 14'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

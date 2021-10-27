import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PostModel.dart';
import 'package:protibimbo/views/screens/CreatePollScreen.dart';
import 'package:protibimbo/views/screens/CustomNavigationDrawer.dart';
import 'package:protibimbo/views/screens/ExplorePeopleScreen.dart';
import 'package:protibimbo/views/screens/ChatScreen.dart';
import 'package:protibimbo/views/screens/GroupScreen.dart';
import 'package:protibimbo/views/screens/NotificationScreen.dart';
import 'package:protibimbo/views/screens/ProfileAboutScreen.dart';
import 'package:protibimbo/views/screens/ProfileScreen.dart';
import 'package:protibimbo/views/screens/UploadPostScreen.dart';

import 'CustomPostWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(
        backgroundColor: Color(0xffF3F3F3),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/images/navigation_drawer_icon.png",
                height: 30,
                width: 50,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text(
            'PROTIBIMBO',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color(0xff3E50B4),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.home,
              color: Color(0xff3E50B4),
            ),
            iconSize: 40,
          ),
        ],
      ),
      drawer: CustomNavigationDrawer(),
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        width: _screenWidth,
        height: _screenHeight,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 5),
                  InkWell(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 30,
                          // color: Colors.white,
                          width: _screenWidth * 0.19,
                          child: Text(
                            'Requests  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.green,
                            child: Text(
                              '8',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ExplorePeopleScreen()));
                    },
                  ),
                  InkWell(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 30,
                          // color: Colors.white,
                          width: _screenWidth * 0.25,
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Color(0xff21328C),
                            child: Text(
                              '15',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                    },
                  ),
                  InkWell(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 30,
                          // color: Colors.white,
                          width: _screenWidth * 0.21,
                          child: Text(
                            'Messages',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Color(0xffD06212),
                            child: Text(
                              '5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChatScreen()));
                    },
                  ),
                  InkWell(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          height: 30,
                          // color: Colors.white,
                          width: _screenWidth * 0.16,
                          child: Text(
                            'Groups',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Color(0xffCD2394),
                            child: Text(
                              '2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GroupScreen()));
                    },
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 5, 0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: CircleAvatar(
                        radius: 32.0,
                        backgroundColor: Color(0xffFF3F80),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: const Color(0xFF778899),
                          backgroundImage:
                              AssetImage('assets/images/profile_image.png'),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                      },
                    ),
                    Container(
                      height: 50,
                      width: 280,
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
              ),
              SizedBox(
                height: 40,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CustomPostWidget(
                    post: PostModel(
                        creatorProfilePic: 'https://i.pravatar.cc/150?img=20',
                        creatorName: 'Hannah',
                        postDescription: 'Working on Protibimbo app',
                        postMedia: [
                          PostMedia(
                              mediaType: 'image',
                              sourceURL:
                                  'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          PostMedia(
                              mediaType: 'image',
                              sourceURL:
                                  'https://media.istockphoto.com/photos/mid-adult-farmer-inspects-his-land-picture-id1264517059?b=1&k=20&m=1264517059&s=170667a&w=0&h=NkisxyFTmLROW8d7FU72NQxG7CYmniIZlDjKGKz1DZQ='),
                          PostMedia(
                              mediaType: 'video',
                              sourceURL:
                                  'https://media.istockphoto.com/videos/chicago-aerial-view-of-downtown-video-id914376526?b=1&k=20&m=914376526&h=LQv9Cm4edpZmv6NqjdBajcyXSy9rYkt7cvXXDLUT0pg='),
                        ],
                        postDate: '14 August',
                        shareLink:
                            'https://media.istockphoto.com/photos/working-from-home-a-young-woman-using-a-digital-tablet-to-readwatch-picture-id1279395367?b=1&k=20&m=1279395367&s=170667a&w=0&h=PC6FvOuM2MRuaShlyg1wyI8Zj_w-j5uaKQTvf8zCCgg='),
                  );
                },
              ),
              // CustomPostWidget(
              //   post: PostModel(
              //       creatorProfilePic: 'https://i.pravatar.cc/150?img=20',
              //       creatorName: 'Hannah',
              //       postDescription: 'will be visiting Taj Mahal next week',
              //       postMedia: [
              //         PostMedia(
              //             mediaType: 'image',
              //             sourceURL:
              //                 'https://media.istockphoto.com/photos/working-from-home-a-young-woman-using-a-digital-tablet-to-readwatch-picture-id1279395367?b=1&k=20&m=1279395367&s=170667a&w=0&h=PC6FvOuM2MRuaShlyg1wyI8Zj_w-j5uaKQTvf8zCCgg='),
              //         PostMedia(
              //             mediaType: 'image',
              //             sourceURL:
              //                 'https://media.istockphoto.com/photos/mid-adult-farmer-inspects-his-land-picture-id1264517059?b=1&k=20&m=1264517059&s=170667a&w=0&h=NkisxyFTmLROW8d7FU72NQxG7CYmniIZlDjKGKz1DZQ='),
              //         PostMedia(
              //             mediaType: 'video',
              //             sourceURL:
              //                 'https://media.istockphoto.com/videos/chicago-aerial-view-of-downtown-video-id914376526?b=1&k=20&m=914376526&h=LQv9Cm4edpZmv6NqjdBajcyXSy9rYkt7cvXXDLUT0pg='),
              //       ],
              //       postDate: '14 August',
              //       shareLink:
              //           'https://media.istockphoto.com/photos/working-from-home-a-young-woman-using-a-digital-tablet-to-readwatch-picture-id1279395367?b=1&k=20&m=1279395367&s=170667a&w=0&h=PC6FvOuM2MRuaShlyg1wyI8Zj_w-j5uaKQTvf8zCCgg='),
              // ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

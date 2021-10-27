import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PendingPostScreen extends StatefulWidget {
  const PendingPostScreen({Key? key}) : super(key: key);

  @override
  _PendingPostScreenState createState() => _PendingPostScreenState();
}

class _PendingPostScreenState extends State<PendingPostScreen> {
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
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            ' Pending Post',
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
        // margin: EdgeInsets.only(left: 12, right: 12),
        width: _screenWidth,
        height: _screenHeight,
        child: Column(
          children: [
            SizedBox(
              height: 20,
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
                          betterPlayerConfiguration: BetterPlayerConfiguration(
                              autoPlay: false, autoDispose: false),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 45,
                          width: 180,
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Approve',
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
                      Center(
                        child: SizedBox(
                          height: 45,
                          width: 180,
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Reject',
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

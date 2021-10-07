import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PlaylistModel.dart';
import 'package:protibimbo/views/screens/CustomPlaylistWidget.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({
    Key? key,
  }) : super(key: key);

  // final PostModel post;

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            ' Playlist',
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
        height: _screenHeight,
        width: _screenWidth,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              CustomPlaylistWidget(
                playlist: PostModel(
                    creatorProfilePic:
                        'https://st2.depositphotos.com/1008939/10092/i/950/depositphotos_100920976-stock-photo-businessman-taking-a-selfie.jpg',
                    creatorName: 'Martin',
                    postDescription: 'Working on Protibimbo app',
                    postMedia: [
                      PostMedia(
                          mediaType: 'video',
                          sourceURL:
                              'https://vod-progressive.akamaized.net/exp=1633467313~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F21%2F12%2F300109863%2F1146033844.mp4~hmac=76e0285bd6d56b53f8029e03f63117690b78a48785d301e5bf9a62fd8f69cdbf/vimeo-prod-skyfire-std-us/01/21/12/300109863/1146033844.mp4?filename=Pexels+Videos+1583096.mp4'),
                    ],
                    postDate: '19th september',
                    shareLink:
                        'https://media.istockphoto.com/photos/working-from-home-a-young-woman-using-a-digital-tablet-to-readwatch-picture-id1279395367?b=1&k=20&m=1279395367&s=170667a&w=0&h=PC6FvOuM2MRuaShlyg1wyI8Zj_w-j5uaKQTvf8zCCgg='),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: _screenWidth,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 140,
                      child: Image.asset(
                        "assets/images/playlist1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Some description of the post will be displayed in this area..',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: _screenWidth,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 140,
                      child: Image.asset(
                        "assets/images/playlist2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Some description of the post will be displayed in this area..',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: _screenWidth,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 140,
                      child: Image.asset(
                        "assets/images/playlist3.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Some description of the post will be displayed in this area..',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: _screenWidth,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 140,
                      child: Image.asset(
                        "assets/images/playlist4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Some description of the post will be displayed in this area..',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: _screenWidth,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 140,
                      child: Image.asset(
                        "assets/images/playlist5.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Some description of the post will be displayed in this area..',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
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

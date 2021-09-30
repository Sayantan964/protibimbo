import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PostModel.dart';
import 'CustomPostWidget.dart';

class MyPostScreen extends StatefulWidget {
  const MyPostScreen({Key? key}) : super(key: key);

  @override
  _MyPostScreenState createState() => _MyPostScreenState();
}

class _MyPostScreenState extends State<MyPostScreen> {
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
            ' My Post',
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
        width: _screenWidth,
        height: _screenHeight,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}

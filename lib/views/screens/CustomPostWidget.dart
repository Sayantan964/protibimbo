// import 'dart:ui';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PostModel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomPostWidget extends StatefulWidget {
  const CustomPostWidget({Key? key, required this.post}) : super(key: key);
  final PostModel post;
  @override
  _CustomPostWidgetState createState() => _CustomPostWidgetState();
}

class _CustomPostWidgetState extends State<CustomPostWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Color(0xffFF3F80),
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: const Color(0xFF778899),
                            backgroundImage:
                                NetworkImage(widget.post.creatorProfilePic),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.post.creatorName,
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
              widget.post.postDescription ?? '',
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
              items: widget.post.postMedia.map((item) {
                if (item.mediaType == "image") {
                  return Image.network(
                    item.sourceURL,
                    fit: BoxFit.fill,
                  );
                }
                return BetterPlayer.network(
                  item.sourceURL,
                  betterPlayerConfiguration: BetterPlayerConfiguration(
                      autoPlay: false, autoDispose: false),
                );
              }).toList(),
            ),
          ),

          /// single image or multiple image
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
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
                  child: Text(widget.post.postDate),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

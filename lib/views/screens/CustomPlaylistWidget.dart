// import 'dart:ui';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PlaylistModel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomPlaylistWidget extends StatefulWidget {
  const CustomPlaylistWidget({Key? key, required this.playlist})
      : super(key: key);
  final PostModel playlist;
  @override
  _CustomPlaylistWidgetState createState() => _CustomPlaylistWidgetState();
}

class _CustomPlaylistWidgetState extends State<CustomPlaylistWidget> {
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
                                NetworkImage(widget.playlist.creatorProfilePic),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.playlist.creatorName,
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
              widget.playlist.postDescription ?? '',
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
              items: widget.playlist.postMedia.map((item) {
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
                    Icons.thumb_up_alt_outlined,
                    // color: Colors.black,
                  ),
                  onTap: () => print('like pressed'),
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
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Icon(
                    Icons.delete_outline,
                    // color: Colors.black,
                  ),
                  onTap: () => print('delete pressed'),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(widget.playlist.postDate),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

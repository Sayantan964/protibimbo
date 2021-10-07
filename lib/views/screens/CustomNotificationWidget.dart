import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/NotificationModel.dart';

class CustomNotificationWidget extends StatefulWidget {
  const CustomNotificationWidget({Key? key, required this.explore})
      : super(key: key);
  final NotificationModel explore;
  @override
  _CustomNotificationWidgetState createState() =>
      _CustomNotificationWidgetState();
}

class _CustomNotificationWidgetState extends State<CustomNotificationWidget> {
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
    return Container(
      height: 75,
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5, right: 10),
            // padding: EdgeInsets.only(top: 10),
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.indigo,
              child: CircleAvatar(
                radius: 28.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 200,
              height: 70,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: '${widget.explore.peopleName}',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '  ${widget.explore.postDescription}',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '${widget.explore.subPostDescription}',
                    softWrap: true,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // IconButton(
          //     onPressed: null,
          //     icon: Icon(
          //       Icons.person_add,
          //       color: Colors.grey[700],
          //       size: 25,
          //     ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/NotificationModel.dart';
import 'package:protibimbo/views/screens/CustomNotificationWidget.dart';
import 'package:protibimbo/views/screens/CustomPostWidget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
            ' Notification',
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
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            // SizedBox(
            //   height: 15,
            // ),
            // Container(
            //   height: 50,
            //   width: 350,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   child: ListTile(
            //     leading: IconButton(
            //       onPressed: null,
            //       icon: Icon(Icons.search),
            //       iconSize: 25,
            //     ),
            //     title: TextField(
            //       textAlign: TextAlign.start,
            //       decoration: InputDecoration.collapsed(
            //         hintText: '|   Search by name / E-mail',
            //         hintStyle: GoogleFonts.poppins(
            //           textStyle: TextStyle(
            //             fontSize: 14,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Expanded(
              child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return CustomNotificationWidget(
                      explore: NotificationModel(
                        peopleProfilePic: 'https://i.pravatar.cc/150?img=20',
                        peopleName: 'Monalisa Roy',
                        postDescription: 'liked your post',
                        subPostDescription:
                            'some text for sub description will be here, currently using this as sample.',
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

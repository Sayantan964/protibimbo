import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:protibimbo/views/screens/MessageScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'Chat',
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
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                border: Border.all(width: 0.25, color: Colors.grey),
              ),
              width: _screenWidth,
              height: 70,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage: AssetImage('assets/images/message.png'),
                ),
                title: Text(
                  'Sharmik Thwick',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MessageScreen()));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
            'Support',
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
        margin: EdgeInsets.only(left: 12, right: 12, top: 150),
        width: _screenWidth,
        height: _screenHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/mail.png',
                    height: 175,
                    width: 170,
                  ),
                  Text(
                    'Mail',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/call.png',
                    height: 175,
                    width: 170,
                  ),
                  Text(
                    'Call',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
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

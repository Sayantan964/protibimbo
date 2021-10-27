import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class PrivacyAndPolicyScreen extends StatefulWidget {
  const PrivacyAndPolicyScreen({Key? key}) : super(key: key);

  @override
  _PrivacyAndPolicyScreenState createState() => _PrivacyAndPolicyScreenState();
}

class _PrivacyAndPolicyScreenState extends State<PrivacyAndPolicyScreen> {
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
            'Privacy & Policy',
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
        margin: EdgeInsets.only(left: 12, right: 12),
        width: _screenWidth,
        height: _screenHeight,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Dummy Test',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1.like readable English. Many desktop publishing \n'
                '2.packages and web page editors. like readable \n'
                '3.English Many desktop publishing packages and web \n'
                '4.page editorsThere are many variations of passages\n'
                '5.Lorem Ipsum available, but the There are many variations \n'
                '6.passages of Lorem Ipsum available, but the There are  \n'
                '7.many variations of passages of Lorem Ipsum available, but the re  \n',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dummy Test',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1.like readable English. Many desktop publishing \n'
                '2.packages and web page editors. like readable \n'
                '3.English Many desktop publishing packages and web \n'
                '4.page editorsThere are many variations of passages\n'
                '5.Lorem Ipsum available, but the There are many variations \n'
                '6.passages of Lorem Ipsum available, but the There are  \n'
                '7.many variations of passages of Lorem Ipsum available, but the re  \n',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateFAQScreen extends StatefulWidget {
  const CreateFAQScreen({Key? key}) : super(key: key);

  @override
  _CreateFAQScreenState createState() => _CreateFAQScreenState();
}

class _CreateFAQScreenState extends State<CreateFAQScreen> {
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
            'Create FAQ',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter question for FAQ',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 15,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Text(
                'Write something here..',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 13,
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter answer for FAQ',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 15,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Text(
                'Write something here..',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 13,
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 75,
            ),
            Center(
              child: SizedBox(
                height: 45,
                width: 220,
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Submit FAQ',
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
      ),
    );
  }
}

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:protibimbo/views/screens/CreateFAQScreen.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
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
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'FAQ',
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
        margin: EdgeInsets.only(left: 12, right: 12, top: 20),
        width: _screenWidth,
        height: _screenHeight,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateFAQScreen()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff255AC4)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Create FAQ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 23,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 55,
                  ),
                  ExpansionTile(
                    // backgroundColor: Colors.white,
                    title: Text(
                      'Dummy Test',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // trailing: Icon(Icons.add_circle_outline),

                    children: [
                      Container(
                        width: _screenWidth - 30,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          '1.like readable English. Many desktop publishing \n'
                          '2.packages and web page editors. like readable \n'
                          '3.English Many desktop publishing packages and web \n'
                          '4.page editorsThere are many variations of passages\n'
                          '5.Lorem Ipsum available, but the There are many variations \n'
                          '6.passages of Lorem Ipsum available, but the There are  \n'
                          '7.many variations of passages of Lorem Ipsum available, but the re  \n',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 55,
                  ),
                  ExpansionTile(
                    // backgroundColor: Colors.white,
                    title: Text(
                      'Dummy Test',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // trailing: SizedBox(),

                    children: [
                      Container(
                        width: _screenWidth - 30,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          '1.like readable English. Many desktop publishing \n'
                          '2.packages and web page editors. like readable \n'
                          '3.English Many desktop publishing packages and web \n'
                          '4.page editorsThere are many variations of passages\n'
                          '5.Lorem Ipsum available, but the There are many variations \n'
                          '6.passages of Lorem Ipsum available, but the There are  \n'
                          '7.many variations of passages of Lorem Ipsum available, but the re  \n',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 55,
                  ),
                  ExpansionTile(
                    // backgroundColor: Colors.white,
                    title: Text(
                      'Dummy Test',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // trailing: Icon(Icons.add_circle_outline),

                    children: [
                      Container(
                        width: _screenWidth - 30,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          '1.like readable English. Many desktop publishing \n'
                          '2.packages and web page editors. like readable \n'
                          '3.English Many desktop publishing packages and web \n'
                          '4.page editorsThere are many variations of passages\n'
                          '5.Lorem Ipsum available, but the There are many variations \n'
                          '6.passages of Lorem Ipsum available, but the There are  \n'
                          '7.many variations of passages of Lorem Ipsum available, but the re  \n',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 55,
                  ),
                  ExpansionTile(
                    // backgroundColor: Colors.white,
                    title: Text(
                      'Dummy Test',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // trailing: SizedBox(),

                    children: [
                      Container(
                        width: _screenWidth - 30,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          '1.like readable English. Many desktop publishing \n'
                          '2.packages and web page editors. like readable \n'
                          '3.English Many desktop publishing packages and web \n'
                          '4.page editorsThere are many variations of passages\n'
                          '5.Lorem Ipsum available, but the There are many variations \n'
                          '6.passages of Lorem Ipsum available, but the There are  \n'
                          '7.many variations of passages of Lorem Ipsum available, but the re  \n',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

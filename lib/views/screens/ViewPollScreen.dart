import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ViewPollScreen extends StatefulWidget {
  const ViewPollScreen({Key? key}) : super(key: key);

  @override
  _ViewPollScreenState createState() => _ViewPollScreenState();
}

class _ViewPollScreenState extends State<ViewPollScreen> {
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
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            ' View Poll',
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
        margin: EdgeInsets.all(10.0),
        width: _screenWidth,
        height: _screenHeight,
        child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.transparent,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Where do you spend most of the time in social media ?',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 155,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xff74CD55),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Scrolling feed',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                '59 %',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 75,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xff2474EB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Watching Stories',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                '41 %',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
        // Container(
        //   color: Colors.grey,
        //   height: 150,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Text(
        //         'Where do you spend most of the time in social media ?',
        //         textAlign: TextAlign.center,
        //         softWrap: true,
        //         style: GoogleFonts.poppins(
        //           textStyle: TextStyle(
        //             fontSize: 20,
        //             fontWeight: FontWeight.w600,
        //             color: Colors.black,
        //           ),
        //         ),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           Container(
        //             width: 150,
        //             height: 80,
        //             color: Colors.purpleAccent,
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               children: [
        //                 Text(
        //                   'Scrolling feed',
        //                   textAlign: TextAlign.center,
        //                   style: GoogleFonts.poppins(
        //                     textStyle: TextStyle(
        //                       fontSize: 18,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ),
        //                 Text(
        //                   '59 %',
        //                   textAlign: TextAlign.center,
        //                   style: GoogleFonts.poppins(
        //                     textStyle: TextStyle(
        //                       fontSize: 18,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Container(
        //             height: 80,
        //             width: 150,
        //             color: Colors.orange,
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               children: [
        //                 Text(
        //                   'Watching Stories',
        //                   textAlign: TextAlign.center,
        //                   style: GoogleFonts.poppins(
        //                     textStyle: TextStyle(
        //                       fontSize: 18,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ),
        //                 Text(
        //                   '41 %',
        //                   textAlign: TextAlign.center,
        //                   style: GoogleFonts.poppins(
        //                     textStyle: TextStyle(
        //                       fontSize: 18,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

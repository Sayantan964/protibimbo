import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:protibimbo/views/screens/CreateGroupScreen.dart';
import 'package:protibimbo/views/screens/GroupDetailsScreen.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
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
            'Group',
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
        width: _screenWidth,
        height: _screenHeight,
        margin: EdgeInsets.only(left: 12, right: 12),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  // padding: EdgeInsets.only(top: 5),
                  height: 55,
                  width: _screenWidth - 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search),
                      iconSize: 40,
                    ),
                    title: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration.collapsed(
                        hintText: '|   Search group',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: _screenWidth - 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateGroupScreen()));
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
                      child: ListTile(
                        leading: Icon(
                          Icons.group_outlined,
                          color: Colors.white,
                          size: 33,
                        ),
                        title: Text(
                          'Create Group',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                          // textAlign: TextAlign.center,
                        ),
                        trailing: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          size: 33,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Recommended Group',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 240,
                width: _screenWidth,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 240,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/images/groupsquare.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: 230,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // (0xff3E50B4),
                                // backgroundBlendMode: BlendMode.darken,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Naihati Coffee House',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '87k Member',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GroupDetailsScreen()));
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Your Groups',
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
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.only(top: 10),
                      height: 110,
                      width: _screenWidth,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.white,
                            height: 90,
                            width: 100,
                            child: Image.asset(
                              "assets/images/groupsquaresmall.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Bally Puja Mandab',
                                softWrap: true,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                '1.5k Member',
                                softWrap: true,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GroupDetailsScreen()));
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

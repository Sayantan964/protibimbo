import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  _UpdateProfileScreenState createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
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
        title: Text(
          'Update Account',
          style: GoogleFonts.poppins(
              color: Colors.grey[800],
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: _screenHeight,
        width: _screenWidth,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                width: double.infinity,
                child: Text(
                  'Upload Profile Picture',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 18, bottom: 5),
                    height: 240,
                    width: _screenWidth,
                    child: Image.asset(
                      "assets/images/gallery3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: _screenWidth - 50,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/camera.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Text(
                  'Upload cover picture',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 18, bottom: 5),
                    height: 240,
                    width: _screenWidth,
                    child: Image.asset(
                      "assets/images/gallery8.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: _screenWidth - 50,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/camera.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 5, 10, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/info.png',
                          height: 25,
                          width: 25,
                          // color: Colors.black87,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'About',
                          style: GoogleFonts.poppins(
                              color: Colors.grey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                              hintText:
                                  'I climb every mountain and swim every ocean .Just will be with you and fix what I broken.... ♫',
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              buildColumn(
                  titleText: 'Work',
                  imageAsset: 'assets/images/profileWork.png'),
              buildColumn(
                  titleText: 'Education',
                  imageAsset: 'assets/images/profileEducation.png'),
              buildColumn(
                  titleText: 'City',
                  imageAsset: 'assets/images/profileCity.png'),
              buildColumn(
                  titleText: 'Relation',
                  imageAsset: 'assets/images/profileRelation.png'),
              buildColumn(
                  titleText: 'Hobbies',
                  imageAsset: 'assets/images/profileHobbies.png'),
              buildColumn(
                  titleText: 'Date of birth',
                  imageAsset: 'assets/images/profileCalendar.png'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[800]),
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
                          'Update',
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
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildColumn({required String titleText, required String imageAsset}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 10, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imageAsset,
                height: 25,
                width: 25,
                // color: Colors.black87,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                titleText,
                style: GoogleFonts.poppins(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Type someting here',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

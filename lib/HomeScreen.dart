// ignore: file_names
import 'package:flutter/material.dart';
import 'package:protibimbo/CustomNavigationDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/images/navigation_drawer_icon.png",
                height: 30,
                width: 50,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Requests  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.green,
                      child: Text('8',style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  ],
                ),
              ),
              onTap: null,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Notifications  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.indigo,
                      child: Text('6',style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  ],
                ),
              ),
              onTap: null,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Messages  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.deepOrange,
                      child: Text('8',style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  ],
                ),
              ),
              onTap: null,
            ),
            SizedBox(width: 5,)
          ],
        ),
        backgroundColor: Color(0xffF3F3F3),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: CustomNavigationDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: _screenWidth,
        height: _screenHeight,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Your Feed               ',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          Image.asset('assets/images/your_feed_icon.png'),
                        ],
                      ),
                    ),
                    onTap: null,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                        child: Image.asset('assets/images/friends_icon.png'),
                    ),
                    onTap: null,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                      child: Image.asset('assets/images/group_icon.png'),
                    ),
                    onTap: null,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:Border.all(color: Colors.grey,width: .5),color: Color(0xffFFFFFF),),
                      child: Image.asset('assets/images/search_icon.png'),
                    ),
                    onTap: null,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 32.0,
                    backgroundColor: Color(0xffFF3F80),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: const Color(0xFF778899),
                      backgroundImage:
                      AssetImage('assets/images/profile_image.png'),
                    ),
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
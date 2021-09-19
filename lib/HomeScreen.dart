import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xffF3F3F3),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: Drawer(
        backgroundColor: Color(0xffFFFFFF),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child:Row(
                  children: [
                    CircleAvatar(
                      radius: 44.0,
                      backgroundColor: Colors.indigo,
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundColor: const Color(0xFF778899),
                        backgroundImage:
                        NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                   Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Sudeshna Paul',
                         style: TextStyle(color: Colors.black,
                             fontSize: 20,
                             fontWeight: FontWeight.bold),
                         ),
                         SizedBox(
                           height: 10,
                         ),
                         Text('Photograper',
                           style: TextStyle(color: Colors.grey,
                             fontSize: 18,
                           ),
                         ),
                       ],
                     ),
                   ),
                  ],
                ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined,
                  color: Colors.black
              ),
              title: Text('Home'),
              onTap: null,
            ),
            ListTile(
              leading: Image.asset('assets/images/explore_icon.png',
              height: 20,
              width: 25,
                color: Colors.black,
              ),
              title: Text('Explore'),
              onTap: null,
            ),
            ListTile(
              leading: Image.asset('assets/images/myPost_icon.png',
                height: 20,
                width: 25,
                color: Colors.black,
              ),
              title: Text('My Post'),
              onTap: null,
            ),
            ListTile(
              leading: Image.asset('assets/images/playList_icon.png',
                height: 20,
                width: 25,
                color: Colors.black,
              ),
              title: Text('Play List'),
              onTap: null,
            ),
            ListTile(
              leading: Image.asset('assets/images/event_icon.png',
                height: 20,
                width: 25,
                color: Colors.black,
              ),
              title: Text('Event'),
              onTap: null,
            ),
            ListTile(
              leading: Image.asset('assets/images/termsAndCondition_icon.png',
                height: 20,
                width: 25,
                color: Colors.black,
              ),
              title: Text('Terms & Condition'),
              onTap: null,
            ),
            ListTile(
              leading: Image.asset('assets/images/privacyPolicy_icon.png',
                height: 20,
                width: 25,
                color: Colors.black,
              ),
              title: Text('Privacy Policy'),
              onTap: null,
            ),
          ],
        ),
      ),
    );
    }
}
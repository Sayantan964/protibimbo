import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  CustomNavigationDrawerState createState() => new CustomNavigationDrawerState();
}

class CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
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
    );
  }

}
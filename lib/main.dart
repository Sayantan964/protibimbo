import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PostModel.dart';
import 'package:protibimbo/views/screens/CustomPostWidget.dart';
import 'package:protibimbo/views/screens/FriendProfileScreen.dart';
import 'package:protibimbo/views/screens/FriendRequestPeofileScreen.dart';
import 'package:protibimbo/views/screens/HomeScreen.dart';
import 'package:protibimbo/views/screens/LoginScreen.dart';
import 'package:protibimbo/views/screens/OnboardingScreen.dart';
import 'package:protibimbo/views/screens/RegistrationScreen.dart';
import 'package:protibimbo/views/screens/Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protibimbo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
          bodyText2: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
        ),
        // primarySwatch: Colors.transparent,
      ),
      home: FriendProfileScreen(),
    );
  }
}

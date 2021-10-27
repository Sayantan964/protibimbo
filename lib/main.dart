import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protibimbo/models/PostModel.dart';
import 'package:protibimbo/views/screens/CreateEventScreen.dart';
import 'package:protibimbo/views/screens/CreateFAQScreen.dart';
import 'package:protibimbo/views/screens/CreateGroupScreen.dart';
import 'package:protibimbo/views/screens/CustomPostWidget.dart';
import 'package:protibimbo/views/screens/EventDetailScreen.dart';
import 'package:protibimbo/views/screens/EventScreen.dart';
import 'package:protibimbo/views/screens/FAQScreen.dart';
import 'package:protibimbo/views/screens/FriendListScreen.dart';
import 'package:protibimbo/views/screens/FriendProfileScreen.dart';
import 'package:protibimbo/views/screens/FriendRequestPeofileScreen.dart';
import 'package:protibimbo/views/screens/GroupDetailsScreen.dart';
import 'package:protibimbo/views/screens/GroupScreen.dart';
import 'package:protibimbo/views/screens/HomeScreen.dart';
import 'package:protibimbo/views/screens/LoginScreen.dart';
import 'package:protibimbo/views/screens/ChatScreen.dart';
import 'package:protibimbo/views/screens/MessageScreen.dart';
import 'package:protibimbo/views/screens/OnboardingScreen.dart';
import 'package:protibimbo/views/screens/PendingPostScreen.dart';
import 'package:protibimbo/views/screens/PrivacyAndPolicyScreen.dart';
import 'package:protibimbo/views/screens/ProfileScreen.dart';
import 'package:protibimbo/views/screens/RegistrationScreen.dart';
import 'package:protibimbo/views/screens/Splashscreen.dart';
import 'package:protibimbo/views/screens/SupportScreen.dart';
import 'package:protibimbo/views/screens/TermsAndConditionScreen.dart';
import 'package:protibimbo/views/screens/UpdateProfileScreen.dart';
import 'package:protibimbo/views/screens/ViewPollScreen.dart';

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
      home: SplashScreen(),
    );
  }
}

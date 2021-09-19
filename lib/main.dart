import 'package:flutter/material.dart';
import 'package:protibimbo/HomeScreen.dart';
import 'package:protibimbo/LoginScreen.dart';
import 'package:protibimbo/OnboardingScreen.dart';
import 'package:protibimbo/RegistrationScreen.dart';
import 'package:protibimbo/Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

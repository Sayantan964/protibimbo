import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({Key? key}) : super(key: key);

  final pageDecoration = PageDecoration(
    titleTextStyle:
        PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.white),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('Assets/images/onboarding_1.png'),
        title: "Best way to - Connect",
        body:
            "But I must explain to you how all this is mistaken idea of denouncing pleasure and praising pain was born",
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          'Done',
          style: TextStyle(color: Colors.white),
        ),
        onDone: () {},
      ),
    );
  }
}

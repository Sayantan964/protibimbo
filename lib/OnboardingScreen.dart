import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:protibimbo/LoginScreen.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({Key? key}) : super(key: key);

  final pageDecoration = PageDecoration(
    titleTextStyle:
        PageDecoration().titleTextStyle.copyWith(color: Colors.white),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.white),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/images/onboarding_1.png'),
        title: "Best way to - Connect",
        body:
            "But I must explain to you how all this is mistaken idea of denouncing pleasure and praising pain was born",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset('assets/images/onboarding_2.png'),
        title: "Best way to - Connect",
        body:
            "But I must explain to you how all this is mistaken idea of denouncing pleasure and praising pain was born",
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset('assets/images/onboarding_3.png'),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboarding_background_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: IntroductionScreen(
          showNextButton: false,
          globalBackgroundColor: Color(0xff3E50B4),
          pages: getPages(),
          done: Text(
            'Done',
            style: TextStyle(color: Colors.white),
          ),
          onDone: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ),
    );
  }
}

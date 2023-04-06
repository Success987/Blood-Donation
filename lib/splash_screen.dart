import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_app/Login_Screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.red,
      splash: Center(
        child: Image.asset('images/1.png'),
      ),
      duration: 3000,
      splashIconSize: 700.0,
      splashTransition: SplashTransition.scaleTransition,
      nextScreen: LoginScreen(),
    );
  }
}

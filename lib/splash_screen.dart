import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:first_app/FirstPage.dart';
import 'package:first_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget 
{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen
    (
      splash:
          Column
          (
            children: 
            [
              Center
              (
                child: LottieBuilder.asset
                (
                  "assets/Lottie/Animation1.json",
                  height: MediaQuery.of(context).size.height * 0.4, 
                ),
              ),
              SizedBox(height: 10),
              Text
              (
                "Welcom To My App",
                  style:TextStyle
                  (
                    fontSize: 8.w, 
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
              )
            ],
          )
     ,nextScreen: Profile(),
     splashIconSize: 360,
     backgroundColor: Color.fromARGB(255, 91, 174, 241),
     duration: 4000,
    );
  }
}

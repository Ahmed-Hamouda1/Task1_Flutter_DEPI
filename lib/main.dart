import 'package:first_app/FirstPage.dart';
import 'package:first_app/profile.dart';
import 'package:first_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(MyApp());

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    return ResponsiveSizer
    ( 
      builder: (context, orientation, screenType)
      {
        return 
        MaterialApp
        (
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      }
    );
  }
  

}


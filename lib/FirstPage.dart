import 'package:first_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          Navigator.push
          (
            context,MaterialPageRoute(builder: (context){return Profile();})
          );
        },
        child: Column
        (
          children: 
          [
            Text("Previce"),
            FaIcon(FontAwesomeIcons.arrowLeft)
          ],
        ),
      ),
      appBar: AppBar
      (
        leading: Icon(Icons.menu),
        title: Text("Home Page"),
        actions: 
        [
          
          Icon(Icons.minimize),
          Icon(Icons.close),
        ],
      ),
        body:SizedBox
        (
          height: 100.h,
          width: 100.w,
          // height: double.infinity,
          // width: double.infinity,
          child: const Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              Text("ho esra"),
              Text("hello ahmed"),
              Text("ho esra"),
              Text("hello ahmed"),
              
            ],
          ),
        ),
    );
  }
}
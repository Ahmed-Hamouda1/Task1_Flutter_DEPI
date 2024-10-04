import 'package:first_app/FirstPage.dart';
import 'package:first_app/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';



class Profile extends StatelessWidget 
{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          Navigator.push
          (
            context,MaterialPageRoute(builder: (context){return third();})
          );
        },
        child: Column
        (
          children: 
          [
            Text("Next"),
            FaIcon(FontAwesomeIcons.arrowRight)
          ],
        ),
      ),
      body: Column
      (
        children: 
        [
          Stack
          (
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: 
            [
              //ClipRRect(borderRadius: BorderRadius.circular(10),child: ,),
              Cover(),
              Positioned
              (
                top: 140,
                child: ProfileImage()
              )
            ],
          ),
          SizedBox(height: 90),
          Text("Ahmed Hamouda",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          Text("Software Engineer  || Flutter developer",style: TextStyle(fontSize: 15),),
          Row
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              IconButton(onPressed: (){}, icon: Icon(Icons.facebook,color: Colors.blue,size: 30,)),
              IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.instagram,color: Color.fromARGB(255, 197, 58, 221),size: 30,),),
              IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue,size: 30,)),
              IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,size: 30,))
            ]
          ),
          SizedBox(height: 10,),
        
          Card
          (
            child: ListTile
            (
              title: Text("Mobile ",style: TextStyle(color: Colors.blue),),
              subtitle: Text("01158202830"),
              leading:FaIcon(FontAwesomeIcons.phone,color: Colors.blue,),
            ),
          ),
          SizedBox(height: 15,),
          Card
          (
            child: ListTile
            (
              title: Text("Email ",style: TextStyle(color: Colors.blue),),
              subtitle: Text("ahmedhamooda221@gmail.com"),
              leading:FaIcon(FontAwesomeIcons.envelope,color: Colors.blue,),
            ),
          ),
          SizedBox(height: 15,),
          Card
          (
            child: ListTile
            (
              title: Text("Faculty of : ",style: TextStyle(color: Colors.blue),),
              subtitle: Text("Computer scince"),
              leading:FaIcon(FontAwesomeIcons.book,color: Colors.blue,),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Cover() => Container
(
  child:Image.asset("assets/images/Palestine.png",fit: BoxFit.cover,height: 200,width: double.infinity,),
);

Widget ProfileImage() => CircleAvatar
(
  radius: 70,
  backgroundImage:AssetImage("assets/images/ahmed.jpg") ,

);

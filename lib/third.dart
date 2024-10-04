import 'package:flutter/material.dart';

class third extends StatelessWidget
{
  const third({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 3,
      child: Scaffold
      (
        appBar: AppBar
        (
          backgroundColor: Colors.green,
          title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
          actions: 
          [
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color:Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
          ],
          bottom: const TabBar
          (
            labelColor: Colors.black,    
            unselectedLabelColor: Colors.white70,
            tabs: 
            [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ]
          ),
        ),
      
      ),
    );
  }
}
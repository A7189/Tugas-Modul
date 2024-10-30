import 'package:flutter/material.dart';
import 'package:flutter_application_1/image_widget.dart';
import 'package:flutter_application_1/input_widget.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

@override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  var _selectedIndex = 0;

  onTapBar(index){
    setState(() {
       _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        leading: IconButton(
          onPressed: (){},
           icon: Icon(
            Icons.home
            ),),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            actions: [
              Icon(Icons.more_vert),
              Icon(Icons.logout),
            ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             ImageWidget(),
             InputWidget()
          ],
        ),
      ), 
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.deepPurpleAccent
    ,unselectedItemColor: Colors.grey
      ,currentIndex:_selectedIndex
      ,onTap: (value) => {       
      },
       items: [

      BottomNavigationBarItem(icon: Icon(Icons.home),
         label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user),
        label: "User",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.menu),
        label: "Menu"
        )
      ]),
    );
  }
}
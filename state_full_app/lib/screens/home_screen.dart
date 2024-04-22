import 'package:flutter/material.dart';
import 'package:state_full_app/screens/draft_screen.dart';
import 'package:state_full_app/screens/profile_screen.dart';
import 'package:state_full_app/screens/setting_screen.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State{
  @override
  int index =  0;
  List<Widget> screens = [SettingState(),DraftState(),ProfileState()];
  void bottomTap(int i){
    setState(() {
      index = i;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.orange,
       ),
       body: screens[index] ,
       bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        backgroundColor: Colors.orange,
        onTap: (int i)=> bottomTap(i),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.drafts) , label: "Draft"),
          BottomNavigationBarItem(icon: Icon(Icons.person) , label: "Profile"),
        ],
        ),
    );
  }
  
}

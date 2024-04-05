import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyScaffold extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My_App"),
        centerTitle: false,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
              onPressed: ()=> show("Settings"), icon: Icon(Icons.settings)),
          IconButton(
              onPressed: ()=> show("My Home"), icon: Icon(Icons.home)),
          IconButton(
              onPressed: ()=> show("Wifi"), icon: Icon(Icons.wifi)),
        ],
      ),
      drawer: Container(
        padding: EdgeInsets.only(top: 18 , left: 25),
        margin: EdgeInsets.only(top: 14),
        color: Colors.grey.shade100,
        width: MediaQuery.of(context).size.width * 0.8,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Container(height: 70, width: 70, decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: Colors.white,
                    width: 2
                  )
                ),),
                accountName: Text("Test"), accountEmail: Text("Test@gmail.com")),
            ListTile(
              title: Text("Email"),
              trailing: Text("1"),
              leading: Icon(Icons.email),
            ),
            Container(height: 1, width: double.maxFinite, color: Colors.black,),
            ListTile(
              title: Text("Email"),
              trailing: Text("1"),
              leading: Icon(Icons.email),
            ),
            ListTile(
              title: Text("Close"),
              leading: Icon(Icons.cancel),
              onTap: ()=> close(context),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        onPressed: ()=> add(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        backgroundColor: Colors.orange,
        onTap: (int i)=> bottomTap(i),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.drafts) , label: "Draft"),
          BottomNavigationBarItem(icon: Icon(Icons.person) , label: "Profile"),
        ],
      ),
      body: Container(

        color: Colors.blue.shade100,
        child: Row(
          children: [
            Container(height: screenHeight * 0.15, width: screenWidth * 0.21, color: Colors.black12,margin: EdgeInsets.all(screenWidth * 0.02),),
            Spacer(),
            Container(height: screenHeight * 0.15, width: screenWidth * 0.21, color: Colors.yellow,margin: EdgeInsets.all(screenWidth * 0.02),),
            Spacer(),
            Container(height: screenHeight * 0.15, width: screenWidth * 0.21, color: Colors.blue,margin: EdgeInsets.all(screenWidth * 0.02),),
            Spacer(),
            Container(height: screenHeight * 0.15, width: screenWidth * 0.21, color: Colors.green,margin: EdgeInsets.all(screenWidth * 0.02),),
          ],
        ),
      )
    );
  }

  void bottomTap(int i){
    if(i == 0){
      show("Settings");
    }else if(i == 1){
      show("Draft");
    }else{
      show("Profile");
    }
  }

  void add(){
    print("Add");
  }

  void close(BuildContext context){
    Navigator.pop(context);
  }

  void home(){

  }

  void show(String s){
    print(s);
    Fluttertoast.showToast(
        msg: "$s",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void setting(){
    print("Settings Clicked!!!");
    Fluttertoast.showToast(
        msg: "Waiting",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Database.dart';

import 'User.dart';

class HomeScreen extends StatefulWidget{
  HomeState createState() => HomeState();
}

class HomeState extends State{
  List<User> users = [];
  int i = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(onPressed: ()=> getData(), child: Text("Get Data")),
            users.length > 0 ? ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: users.length + 1,
              itemBuilder: (BuildContext context , int index){

                if(index == 2){
                 return  Container(
                margin: EdgeInsets.all(12),
                color: Colors.blue.shade300,
                height: 110,
                child : Text("Custom Text"));
                }else {
                  User current = users[index-1];
                  return Card(
                      elevation: 18,
                      shadowColor: Colors.blue,
                      child: Container(
                        margin: EdgeInsets.all(12),
                        color: Colors.blue.shade300,
                        height: 110,
                        child: Row(
                          children: [
                            SizedBox(width: 18,),
                            Icon(current.icon, size: 55,),
                            SizedBox(width: 22,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(current.name, style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),),
                                SizedBox(height: 10,),
                                Text(current.phone,
                                  style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                            Spacer(),
                            current.isOnline ? Container(
                              height: 10, width: 10, color: Colors.green,) :
                            Container(
                              height: 10, width: 10, color: Colors.red,),
                            SizedBox(width: 22,),
                            IconButton(onPressed: () => deleteUser(index),
                                icon: Icon(Icons.delete))
                          ],
                        ),
                      ));
                }
              },

            ) : Text("Getting Data")
          ],
        )
      )
    );
  }

  deleteUser(int index){
    setState(() {
      users.removeAt(index);
    });
  }

  getData(){
    setState(() {
      users = Database.generateData();
    });

  }

}

//Area / portion for our listview
//Create Backend Model
//Create Frontend Model
//Generate Data (hardCOded , Offline Db , Online Db ,  Firebase)
//ListView Builder

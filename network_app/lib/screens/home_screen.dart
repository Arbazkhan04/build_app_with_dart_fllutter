

import 'package:flutter/material.dart';
import 'package:network_app/Modals/prayer.dart';
import 'package:network_app/network/getPayerData.dart';

class HomeScreen extends StatefulWidget{
  @override
  homeState createState() => homeState();  
}

class homeState extends State{
 List<Prayer> monthData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backend'),
        backgroundColor: Colors.orange,
      ),
     body: Container(
        child: ListView(
          children: [
            ElevatedButton(onPressed: ()=> testData(), child: Text("Get Server data"))
          ],
        ),
      ),
    );
  }

   void testData() async {
    Map<String , dynamic> serverData = await Network.getPrayerJson();
    monthData = Prayer.parseData(serverData);
  }

  // Future<int> rand() async{
  //   return 10;
  // }
}
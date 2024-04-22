

import 'package:flutter/material.dart';
import 'package:image_app/utlis/constant.dart';

class HomeScreen extends StatefulWidget{  
   homeState createState()=> homeState();
}

class homeState extends State{
  @override
  String currImage = Constant.IMG_ONE;
  bool curr = false;
  changeImage(){
    setState(() {
     curr ? currImage=Constant.IMG_ONE:currImage=Constant.IMG_TWO;
    });
     curr=!curr;
  }
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              InkWell(
                child: Image.asset(currImage,width: width/2, height: width/3, fit: BoxFit.cover),
                onTap: ()=> changeImage(),
              )
            ],
            ),
        ),
        ),
    );
  }
  
}
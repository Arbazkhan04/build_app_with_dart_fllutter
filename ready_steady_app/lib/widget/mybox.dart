import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{
  String name;
  double price;
  Color boxColor;
  MyBox(this.name, this.price , this.boxColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35 , right: 25),
      padding: EdgeInsets.only(left: 20 , right: 20),
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person , size: 44,),
          SizedBox(height: 30,),
          Text(name ,style: TextStyle(color: Colors.black , fontSize: 20),),
          SizedBox(height: 20,),
          Text("$price" ,style: TextStyle(color: Colors.grey , fontSize: 17),)
        ],
      ),
    );
  }
  
}